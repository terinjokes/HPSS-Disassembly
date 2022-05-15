; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0bb", ROMX[$4000], BANK[$bb]

    cp e                                          ; $4000: $bb
    and b                                         ; $4001: $a0
    inc de                                        ; $4002: $13
    or c                                          ; $4003: $b1
    inc c                                         ; $4004: $0c
    jr nz, @+$01                                  ; $4005: $20 $ff

    nop                                           ; $4007: $00
    ld [bc], a                                    ; $4008: $02
    ld e, b                                       ; $4009: $58
    xor a                                         ; $400a: $af
    ld d, a                                       ; $400b: $57
    ld a, [c]                                     ; $400c: $f2
    rrca                                          ; $400d: $0f
    ei                                            ; $400e: $fb
    nop                                           ; $400f: $00

Jump_0bb_4010:
    rlca                                          ; $4010: $07
    or [hl]                                       ; $4011: $b6
    ld c, e                                       ; $4012: $4b
    ld a, [$d507]                                 ; $4013: $fa $07 $d5
    dec bc                                        ; $4016: $0b
    ld a, e                                       ; $4017: $7b
    nop                                           ; $4018: $00
    add a                                         ; $4019: $87
    rst $30                                       ; $401a: $f7
    dec bc                                        ; $401b: $0b
    ld l, d                                       ; $401c: $6a
    push de                                       ; $401d: $d5
    and [hl]                                      ; $401e: $a6
    ret nz                                        ; $401f: $c0

    ld l, a                                       ; $4020: $6f
    nop                                           ; $4021: $00
    ret nz                                        ; $4022: $c0

    cp l                                          ; $4023: $bd
    jp nz, $e07f                                  ; $4024: $c2 $7f $e0

    dec h                                         ; $4027: $25
    ld a, [$0098]                                 ; $4028: $fa $98 $00
    rst $38                                       ; $402b: $ff
    ld c, a                                       ; $402c: $4f
    rst $38                                       ; $402d: $ff
    xor d                                         ; $402e: $aa
    ld d, l                                       ; $402f: $55
    or h                                          ; $4030: $b4
    ld b, e                                       ; $4031: $43
    cp $00                                        ; $4032: $fe $00
    ld bc, $03fd                                  ; $4034: $01 $fd $03
    sub $09                                       ; $4037: $d6 $09
    db $fd                                        ; $4039: $fd
    inc bc                                        ; $403a: $03
    cp c                                          ; $403b: $b9
    nop                                           ; $403c: $00
    ld b, a                                       ; $403d: $47
    dec d                                         ; $403e: $15
    db $eb                                        ; $403f: $eb
    ld d, l                                       ; $4040: $55
    ld a, [$e0b5]                                 ; $4041: $fa $b5 $e0
    rlc b                                         ; $4044: $cb $00
    db $f4                                        ; $4046: $f4
    or a                                          ; $4047: $b7
    ld hl, sp-$2b                                 ; $4048: $f8 $d5
    cp $ae                                        ; $404a: $fe $ae
    rst $38                                       ; $404c: $ff
    add e                                         ; $404d: $83
    nop                                           ; $404e: $00
    rst $38                                       ; $404f: $ff
    ld c, b                                       ; $4050: $48
    rst $38                                       ; $4051: $ff
    ld d, [hl]                                    ; $4052: $56
    xor a                                         ; $4053: $af
    cp e                                          ; $4054: $bb
    ld b, a                                       ; $4055: $47
    or $00                                        ; $4056: $f6 $00
    rrca                                          ; $4058: $0f
    xor h                                         ; $4059: $ac
    ld e, a                                       ; $405a: $5f
    ld h, l                                       ; $405b: $65
    sbc [hl]                                      ; $405c: $9e
    xor l                                         ; $405d: $ad
    cp $d9                                        ; $405e: $fe $d9
    nop                                           ; $4060: $00
    cp $31                                        ; $4061: $fe $31
    cp $aa                                        ; $4063: $fe $aa
    rst $38                                       ; $4065: $ff
    ld d, l                                       ; $4066: $55
    rst $38                                       ; $4067: $ff
    cp l                                          ; $4068: $bd
    nop                                           ; $4069: $00
    jp $01c6                                      ; $406a: $c3 $c6 $01


    sbc l                                         ; $406d: $9d
    inc bc                                        ; $406e: $03
    ld h, $09                                     ; $406f: $26 $09
    ld e, l                                       ; $4071: $5d
    db $10                                        ; $4072: $10
    inc bc                                        ; $4073: $03
    halt                                          ; $4074: $76
    add hl, bc                                    ; $4075: $09
    stop                                          ; $4076: $10 $00
    cp $ae                                        ; $4078: $fe $ae
    ldh a, [$d9]                                  ; $407a: $f0 $d9
    nop                                           ; $407c: $00
    ldh [$b2], a                                  ; $407d: $e0 $b2
    ldh [$d5], a                                  ; $407f: $e0 $d5
    ldh [$b3], a                                  ; $4081: $e0 $b3
    ldh [$db], a                                  ; $4083: $e0 $db
    nop                                           ; $4085: $00
    ldh [rIE], a                                  ; $4086: $e0 $ff
    nop                                           ; $4088: $00
    or a                                          ; $4089: $b7
    ld b, b                                       ; $408a: $40
    ld a, [$ab05]                                 ; $408b: $fa $05 $ab
    nop                                           ; $408e: $00
    ld e, a                                       ; $408f: $5f
    cp $ff                                        ; $4090: $fe $ff
    add b                                         ; $4092: $80
    rst $38                                       ; $4093: $ff
    rlca                                          ; $4094: $07
    ld hl, sp+$41                                 ; $4095: $f8 $41
    nop                                           ; $4097: $00
    add b                                         ; $4098: $80
    db $eb                                        ; $4099: $eb
    rla                                           ; $409a: $17
    ld d, a                                       ; $409b: $57
    xor a                                         ; $409c: $af
    sbc [hl]                                      ; $409d: $9e
    ld a, a                                       ; $409e: $7f
    ld hl, sp-$78                                 ; $409f: $f8 $88
    sub a                                         ; $40a1: $97
    nop                                           ; $40a2: $00
    ld c, h                                       ; $40a3: $4c
    rst $30                                       ; $40a4: $f7
    nop                                           ; $40a5: $00
    ld d, b                                       ; $40a6: $50
    nop                                           ; $40a7: $00
    ld bc, $4cff                                  ; $40a8: $01 $ff $4c
    nop                                           ; $40ab: $00
    add e                                         ; $40ac: $83
    ld de, $c180                                  ; $40ad: $11 $80 $c1
    nop                                           ; $40b0: $00
    dec b                                         ; $40b1: $05
    nop                                           ; $40b2: $00
    and e                                         ; $40b3: $a3
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    ld d, [hl]                                    ; $40b6: $56
    xor c                                         ; $40b7: $a9
    xor d                                         ; $40b8: $aa
    push af                                       ; $40b9: $f5
    db $e3                                        ; $40ba: $e3
    rst $38                                       ; $40bb: $ff
    cp a                                          ; $40bc: $bf
    nop                                           ; $40bd: $00
    rst $38                                       ; $40be: $ff
    ld b, $ff                                     ; $40bf: $06 $ff
    sub b                                         ; $40c1: $90
    ld a, a                                       ; $40c2: $7f
    ld c, b                                       ; $40c3: $48
    rst $38                                       ; $40c4: $ff
    ld b, c                                       ; $40c5: $41
    nop                                           ; $40c6: $00
    rst $38                                       ; $40c7: $ff
    ret nc                                        ; $40c8: $d0

    rst $28                                       ; $40c9: $ef
    add b                                         ; $40ca: $80
    rst $38                                       ; $40cb: $ff
    inc b                                         ; $40cc: $04
    rst $38                                       ; $40cd: $ff
    ld c, b                                       ; $40ce: $48
    nop                                           ; $40cf: $00
    add a                                         ; $40d0: $87
    ld [hl-], a                                   ; $40d1: $32
    adc a                                         ; $40d2: $8f
    ld a, d                                       ; $40d3: $7a
    add a                                         ; $40d4: $87
    ld [hl-], a                                   ; $40d5: $32
    rst $08                                       ; $40d6: $cf
    ld h, [hl]                                    ; $40d7: $66
    jr nz, @+$01                                  ; $40d8: $20 $ff

    inc e                                         ; $40da: $1c
    call $8500                                    ; $40db: $cd $00 $85
    cp $09                                        ; $40de: $fe $09
    or $20                                        ; $40e0: $f6 $20
    nop                                           ; $40e2: $00
    rst $38                                       ; $40e3: $ff
    add c                                         ; $40e4: $81
    ld a, a                                       ; $40e5: $7f
    inc b                                         ; $40e6: $04
    rst $38                                       ; $40e7: $ff
    sub b                                         ; $40e8: $90
    rrca                                          ; $40e9: $0f
    ld b, e                                       ; $40ea: $43
    nop                                           ; $40eb: $00
    ld bc, $010e                                  ; $40ec: $01 $0e $01
    db $fc                                        ; $40ef: $fc
    inc bc                                        ; $40f0: $03
    cp d                                          ; $40f1: $ba
    ld b, l                                       ; $40f2: $45
    ld d, l                                       ; $40f3: $55
    ld [$2aaf], sp                                ; $40f4: $08 $af $2a
    rst $38                                       ; $40f7: $ff
    rst $38                                       ; $40f8: $ff
    jp hl                                         ; $40f9: $e9


    nop                                           ; $40fa: $00
    rrca                                          ; $40fb: $0f
    ldh a, [$91]                                  ; $40fc: $f0 $91
    nop                                           ; $40fe: $00
    ldh [rWX], a                                  ; $40ff: $e0 $4b
    db $f4                                        ; $4101: $f4
    xor $f1                                       ; $4102: $ee $f1
    ld b, a                                       ; $4104: $47
    ld hl, sp-$32                                 ; $4105: $f8 $ce
    ld [$8af9], sp                                ; $4107: $08 $f9 $8a
    rst $38                                       ; $410a: $ff
    daa                                           ; $410b: $27
    ei                                            ; $410c: $fb
    nop                                           ; $410d: $00
    ld e, b                                       ; $410e: $58
    rrca                                          ; $410f: $0f
    sbc a                                         ; $4110: $9f
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    or l                                          ; $4113: $b5
    ld a, [bc]                                    ; $4114: $0a
    ld l, d                                       ; $4115: $6a
    sub a                                         ; $4116: $97
    rla                                           ; $4117: $17
    rst $38                                       ; $4118: $ff
    inc a                                         ; $4119: $3c
    nop                                           ; $411a: $00
    rst $38                                       ; $411b: $ff
    ld bc, $40fe                                  ; $411c: $01 $fe $40
    cp a                                          ; $411f: $bf
    nop                                           ; $4120: $00
    rst $38                                       ; $4121: $ff
    jp nz, $fd00                                  ; $4122: $c2 $00 $fd

    ld b, b                                       ; $4125: $40
    rst $38                                       ; $4126: $ff
    call z, $92f3                                 ; $4127: $cc $f3 $92
    pop hl                                        ; $412a: $e1
    rrca                                          ; $412b: $0f
    ld a, [bc]                                    ; $412c: $0a
    pop af                                        ; $412d: $f1
    add hl, de                                    ; $412e: $19
    rst $38                                       ; $412f: $ff
    rlca                                          ; $4130: $07
    dec e                                         ; $4131: $1d
    ld bc, $0679                                  ; $4132: $01 $79 $06
    db $10                                        ; $4135: $10
    ld [hl+], a                                   ; $4136: $22
    ld d, b                                       ; $4137: $50
    db $fd                                        ; $4138: $fd
    daa                                           ; $4139: $27
    add hl, bc                                    ; $413a: $09
    ld b, h                                       ; $413b: $44
    jr nz, jr_0bb_413e                            ; $413c: $20 $00

jr_0bb_413e:
    sub b                                         ; $413e: $90
    rst $38                                       ; $413f: $ff
    ld [bc], a                                    ; $4140: $02
    db $fd                                        ; $4141: $fd
    nop                                           ; $4142: $00
    add hl, bc                                    ; $4143: $09
    ldh a, [$27]                                  ; $4144: $f0 $27
    ret nz                                        ; $4146: $c0

    ld l, $c1                                     ; $4147: $2e $c1
    add hl, de                                    ; $4149: $19
    rst $20                                       ; $414a: $e7
    nop                                           ; $414b: $00
    rla                                           ; $414c: $17
    rst $38                                       ; $414d: $ff
    inc c                                         ; $414e: $0c
    rst $38                                       ; $414f: $ff
    ld de, $22fe                                  ; $4150: $11 $fe $22
    rst $18                                       ; $4153: $df
    ld bc, $ff81                                  ; $4154: $01 $81 $ff
    call nz, Call_0bb_50ff                        ; $4157: $c4 $ff $50
    rst $28                                       ; $415a: $ef
    ret nz                                        ; $415b: $c0

    ld c, e                                       ; $415c: $4b
    ld de, $a240                                  ; $415d: $11 $40 $a2
    inc e                                         ; $4160: $1c
    ld bc, $f58b                                  ; $4161: $01 $8b $f5
    ld a, c                                       ; $4164: $79
    rst $38                                       ; $4165: $ff
    rrca                                          ; $4166: $0f
    rst $38                                       ; $4167: $ff
    db $10                                        ; $4168: $10
    ld b, b                                       ; $4169: $40
    cp a                                          ; $416a: $bf
    ld b, b                                       ; $416b: $40
    inc l                                         ; $416c: $2c
    nop                                           ; $416d: $00
    sub l                                         ; $416e: $95
    ldh [$9b], a                                  ; $416f: $e0 $9b
    ldh [$28], a                                  ; $4171: $e0 $28
    sub c                                         ; $4173: $91
    cp $0e                                        ; $4174: $fe $0e
    ld [$6b20], sp                                ; $4176: $08 $20 $6b
    ld de, $0ff4                                  ; $4179: $11 $f4 $0f
    db $e4                                        ; $417c: $e4
    ld [bc], a                                    ; $417d: $02
    rra                                           ; $417e: $1f
    ld e, b                                       ; $417f: $58
    xor a                                         ; $4180: $af
    xor c                                         ; $4181: $a9
    cp $f0                                        ; $4182: $fe $f0
    ld a, c                                       ; $4184: $79
    ld bc, $0082                                  ; $4185: $01 $82 $00
    ld a, a                                       ; $4188: $7f
    nop                                           ; $4189: $00
    rst $38                                       ; $418a: $ff
    inc c                                         ; $418b: $0c
    ld [de], a                                    ; $418c: $12
    dec e                                         ; $418d: $1d
    inc bc                                        ; $418e: $03
    add hl, de                                    ; $418f: $19
    nop                                           ; $4190: $00
    dec b                                         ; $4191: $05
    dec b                                         ; $4192: $05
    ld a, [hl-]                                   ; $4193: $3a
    nop                                           ; $4194: $00
    dec a                                         ; $4195: $3d
    jr z, jr_0bb_41d6                             ; $4196: $28 $3e

    inc [hl]                                      ; $4198: $34
    ld [$3f3f], sp                                ; $4199: $08 $3f $3f
    ccf                                           ; $419c: $3f
    nop                                           ; $419d: $00
    ld bc, $5010                                  ; $419e: $01 $10 $50
    xor a                                         ; $41a1: $af
    nop                                           ; $41a2: $00
    inc c                                         ; $41a3: $0c
    ld d, l                                       ; $41a4: $55
    nop                                           ; $41a5: $00
    xor d                                         ; $41a6: $aa
    ld e, a                                       ; $41a7: $5f
    or [hl]                                       ; $41a8: $b6
    ld [$1011], sp                                ; $41a9: $08 $11 $10
    ld d, l                                       ; $41ac: $55
    xor d                                         ; $41ad: $aa
    inc b                                         ; $41ae: $04
    nop                                           ; $41af: $00
    ld [hl], l                                    ; $41b0: $75
    nop                                           ; $41b1: $00
    ld a, [$10a0]                                 ; $41b2: $fa $a0 $10
    jr nc, jr_0bb_41cb                            ; $41b5: $30 $14

    db $eb                                        ; $41b7: $eb
    inc b                                         ; $41b8: $04
    nop                                           ; $41b9: $00
    ld e, d                                       ; $41ba: $5a
    nop                                           ; $41bb: $00
    cp l                                          ; $41bc: $bd
    ld [$00d6], a                                 ; $41bd: $ea $d6 $00
    ld h, b                                       ; $41c0: $60
    sub b                                         ; $41c1: $90
    nop                                           ; $41c2: $00
    add sp, $18                                   ; $41c3: $e8 $18
    ret z                                         ; $41c5: $c8

    jr z, jr_0bb_41f0                             ; $41c6: $28 $28

    call nc, $ac00                                ; $41c8: $d4 $00 $ac

jr_0bb_41cb:
    nop                                           ; $41cb: $00
    inc b                                         ; $41cc: $04
    ld e, h                                       ; $41cd: $5c
    inc [hl]                                      ; $41ce: $34
    db $fc                                        ; $41cf: $fc
    db $fc                                        ; $41d0: $fc
    db $fc                                        ; $41d1: $fc
    rst $30                                       ; $41d2: $f7
    nop                                           ; $41d3: $00
    add b                                         ; $41d4: $80
    ld [bc], a                                    ; $41d5: $02

jr_0bb_41d6:
    ld e, b                                       ; $41d6: $58
    ld a, [hl+]                                   ; $41d7: $2a
    push de                                       ; $41d8: $d5
    push bc                                       ; $41d9: $c5
    nop                                           ; $41da: $00
    dec hl                                        ; $41db: $2b
    nop                                           ; $41dc: $00
    ld e, l                                       ; $41dd: $5d
    nop                                           ; $41de: $00
    ld [bc], a                                    ; $41df: $02
    rst $38                                       ; $41e0: $ff
    nop                                           ; $41e1: $00
    cp a                                          ; $41e2: $bf
    nop                                           ; $41e3: $00
    db $ed                                        ; $41e4: $ed
    db $10                                        ; $41e5: $10
    ei                                            ; $41e6: $fb
    ld d, c                                       ; $41e7: $51
    inc b                                         ; $41e8: $04
    jr nz, @+$2a                                  ; $41e9: $20 $28

    ei                                            ; $41eb: $fb

jr_0bb_41ec:
    ld [bc], a                                    ; $41ec: $02
    jr nz, jr_0bb_41ec                            ; $41ed: $20 $fd

    nop                                           ; $41ef: $00

jr_0bb_41f0:
    cp $02                                        ; $41f0: $fe $02
    ld h, d                                       ; $41f2: $62
    ld de, $00ff                                  ; $41f3: $11 $ff $00
    ld a, a                                       ; $41f6: $7f
    inc l                                         ; $41f7: $2c
    nop                                           ; $41f8: $00
    rst $18                                       ; $41f9: $df
    nop                                           ; $41fa: $00
    rst $28                                       ; $41fb: $ef
    ld h, $10                                     ; $41fc: $26 $10
    ld a, [hl]                                    ; $41fe: $7e
    db $fd                                        ; $41ff: $fd
    ld [hl+], a                                   ; $4200: $22
    db $10                                        ; $4201: $10
    ld [bc], a                                    ; $4202: $02
    jr @+$0e                                      ; $4203: $18 $0c

    ld [$3a30], sp                                ; $4205: $08 $30 $3a
    dec l                                         ; $4208: $2d
    ld bc, $0054                                  ; $4209: $01 $54 $00
    ei                                            ; $420c: $fb
    add b                                         ; $420d: $80
    ld [hl], b                                    ; $420e: $70
    nop                                           ; $420f: $00
    xor $00                                       ; $4210: $ee $00
    call c, $b900                                 ; $4212: $dc $00 $b9
    nop                                           ; $4215: $00
    ld [hl], c                                    ; $4216: $71
    cpl                                           ; $4217: $2f
    nop                                           ; $4218: $00
    db $e3                                        ; $4219: $e3
    ld a, h                                       ; $421a: $7c
    nop                                           ; $421b: $00
    cp a                                          ; $421c: $bf
    ld a, $00                                     ; $421d: $3e $00
    rst $10                                       ; $421f: $d7
    nop                                           ; $4220: $00
    ld d, [hl]                                    ; $4221: $56
    ld [hl-], a                                   ; $4222: $32
    ld l, b                                       ; $4223: $68
    jr z, jr_0bb_4236                             ; $4224: $28 $10

    rst $30                                       ; $4226: $f7
    nop                                           ; $4227: $00
    or $04                                        ; $4228: $f6 $04
    db $10                                        ; $422a: $10
    cp a                                          ; $422b: $bf
    nop                                           ; $422c: $00
    rra                                           ; $422d: $1f
    nop                                           ; $422e: $00
    ld b, c                                       ; $422f: $41
    ccf                                           ; $4230: $3f
    ld [hl], h                                    ; $4231: $74
    ld b, d                                       ; $4232: $42
    dec [hl]                                      ; $4233: $35
    rst $38                                       ; $4234: $ff
    ld a, [hl-]                                   ; $4235: $3a

jr_0bb_4236:
    rst $38                                       ; $4236: $ff
    inc [hl]                                      ; $4237: $34
    inc b                                         ; $4238: $04
    nop                                           ; $4239: $00
    nop                                           ; $423a: $00
    dec a                                         ; $423b: $3d
    rst $38                                       ; $423c: $ff
    ccf                                           ; $423d: $3f
    rst $38                                       ; $423e: $ff
    dec c                                         ; $423f: $0d
    rst $38                                       ; $4240: $ff
    ld a, [bc]                                    ; $4241: $0a
    db $fd                                        ; $4242: $fd
    ld b, e                                       ; $4243: $43
    ld d, l                                       ; $4244: $55
    xor c                                         ; $4245: $a9
    ld bc, $807f                                  ; $4246: $01 $7f $80
    push de                                       ; $4249: $d5
    ld a, [hl+]                                   ; $424a: $2a
    ld [$3a00], sp                                ; $424b: $08 $00 $3a
    ld [bc], a                                    ; $424e: $02
    ret                                           ; $424f: $c9


    inc b                                         ; $4250: $04
    db $10                                        ; $4251: $10
    and d                                         ; $4252: $a2
    ld [bc], a                                    ; $4253: $02
    ld d, l                                       ; $4254: $55
    xor d                                         ; $4255: $aa
    db $10                                        ; $4256: $10
    ld c, b                                       ; $4257: $48
    cp $01                                        ; $4258: $fe $01
    db $10                                        ; $425a: $10
    jr z, jr_0bb_4261                             ; $425b: $28 $04

    cp $ff                                        ; $425d: $fe $ff
    ld e, h                                       ; $425f: $5c
    rst $38                                       ; $4260: $ff

jr_0bb_4261:
    inc l                                         ; $4261: $2c

jr_0bb_4262:
    inc b                                         ; $4262: $04
    jr nz, jr_0bb_4261                            ; $4263: $20 $fc

    rst $38                                       ; $4265: $ff
    nop                                           ; $4266: $00
    ld d, b                                       ; $4267: $50
    rst $38                                       ; $4268: $ff
    ret nc                                        ; $4269: $d0

    ccf                                           ; $426a: $3f
    dec bc                                        ; $426b: $0b
    db $fd                                        ; $426c: $fd
    rlca                                          ; $426d: $07
    db $fd                                        ; $426e: $fd
    inc b                                         ; $426f: $04
    dec b                                         ; $4270: $05
    rst $38                                       ; $4271: $ff
    ld [bc], a                                    ; $4272: $02
    rst $38                                       ; $4273: $ff
    inc bc                                        ; $4274: $03
    ld a, [de]                                    ; $4275: $1a
    ld [bc], a                                    ; $4276: $02
    rlca                                          ; $4277: $07
    rst $38                                       ; $4278: $ff
    nop                                           ; $4279: $00
    dec b                                         ; $427a: $05
    cp $d0                                        ; $427b: $fe $d0
    ccf                                           ; $427d: $3f
    jr nz, @+$81                                  ; $427e: $20 $7f

    and b                                         ; $4280: $a0
    ld a, a                                       ; $4281: $7f

jr_0bb_4282:
    ld bc, $7f40                                  ; $4282: $01 $40 $7f
    ret nz                                        ; $4285: $c0

    ld a, a                                       ; $4286: $7f
    ld h, b                                       ; $4287: $60
    ld a, a                                       ; $4288: $7f
    jr nz, jr_0bb_428f                            ; $4289: $20 $04

    nop                                           ; $428b: $00
    ld e, d                                       ; $428c: $5a
    ld b, $14                                     ; $428d: $06 $14

jr_0bb_428f:
    nop                                           ; $428f: $00
    ld [bc], a                                    ; $4290: $02
    ld d, [hl]                                    ; $4291: $56
    ld [bc], a                                    ; $4292: $02
    rst $30                                       ; $4293: $f7
    ld a, [hl+]                                   ; $4294: $2a
    call nc, Call_000_006e                        ; $4295: $d4 $6e $00

jr_0bb_4298:
    xor d                                         ; $4298: $aa
    nop                                           ; $4299: $00
    ld d, l                                       ; $429a: $55
    xor d                                         ; $429b: $aa
    rst $38                                       ; $429c: $ff
    ld a, a                                       ; $429d: $7f
    rst $38                                       ; $429e: $ff
    ld [hl], b                                    ; $429f: $70
    rst $38                                       ; $42a0: $ff
    ld l, a                                       ; $42a1: $6f
    inc h                                         ; $42a2: $24
    rst $38                                       ; $42a3: $ff
    ld [hl], h                                    ; $42a4: $74
    ld [hl], b                                    ; $42a5: $70
    ld bc, $00ff                                  ; $42a6: $01 $ff $00
    db $10                                        ; $42a9: $10
    ld [$ffff], sp                                ; $42aa: $08 $ff $ff
    ld [bc], a                                    ; $42ad: $02
    xor b                                         ; $42ae: $a8
    ld d, a                                       ; $42af: $57
    push de                                       ; $42b0: $d5
    ld [$f7a8], a                                 ; $42b1: $ea $a8 $f7
    db $10                                        ; $42b4: $10
    jr jr_0bb_4262                                ; $42b5: $18 $ab

    adc b                                         ; $42b7: $88
    ld l, d                                       ; $42b8: $6a
    nop                                           ; $42b9: $00
    ld c, $ff                                     ; $42ba: $0e $ff
    ld d, [hl]                                    ; $42bc: $56
    inc b                                         ; $42bd: $04
    nop                                           ; $42be: $00
    and b                                         ; $42bf: $a0
    ld a, a                                       ; $42c0: $7f
    ld h, b                                       ; $42c1: $60
    ld sp, $c0ff                                  ; $42c2: $31 $ff $c0
    xor h                                         ; $42c5: $ac
    ld [bc], a                                    ; $42c6: $02
    ld b, b                                       ; $42c7: $40
    adc b                                         ; $42c8: $88
    ld l, d                                       ; $42c9: $6a
    rst $38                                       ; $42ca: $ff
    ld [hl], c                                    ; $42cb: $71
    ld b, b                                       ; $42cc: $40
    ld c, b                                       ; $42cd: $48
    inc b                                         ; $42ce: $04
    rst $10                                       ; $42cf: $d7
    push de                                       ; $42d0: $d5
    ld [$b768], a                                 ; $42d1: $ea $68 $b7
    ld d, b                                       ; $42d4: $50
    jr c, jr_0bb_4298                             ; $42d5: $38 $c1

    ld a, a                                       ; $42d7: $7f
    ld [$dea7], sp                                ; $42d8: $08 $a7 $de
    ld c, d                                       ; $42db: $4a
    cp h                                          ; $42dc: $bc
    ld h, b                                       ; $42dd: $60
    nop                                           ; $42de: $00
    ld [$5db6], sp                                ; $42df: $08 $b6 $5d
    add b                                         ; $42e2: $80
    ld d, b                                       ; $42e3: $50
    nop                                           ; $42e4: $00
    rst $08                                       ; $42e5: $cf
    ld a, a                                       ; $42e6: $7f
    sbc a                                         ; $42e7: $9f
    ld e, [hl]                                    ; $42e8: $5e
    ccf                                           ; $42e9: $3f
    xor [hl]                                      ; $42ea: $ae
    ld [hl], a                                    ; $42eb: $77
    db $e4                                        ; $42ec: $e4
    ld d, b                                       ; $42ed: $50
    jr @+$54                                      ; $42ee: $18 $52

    jr c, jr_0bb_4282                             ; $42f0: $38 $90

    ld e, b                                       ; $42f2: $58
    ld a, c                                       ; $42f3: $79
    cp $90                                        ; $42f4: $fe $90
    ld c, b                                       ; $42f6: $48
    db $fd                                        ; $42f7: $fd
    cp $29                                        ; $42f8: $fe $29
    ld d, e                                       ; $42fa: $53
    rrca                                          ; $42fb: $0f
    xor a                                         ; $42fc: $af
    dec bc                                        ; $42fd: $0b
    ld bc, $08e0                                  ; $42fe: $01 $e0 $08
    cp $05                                        ; $4301: $fe $05
    ld [$0003], sp                                ; $4303: $08 $03 $00
    ld [bc], a                                    ; $4306: $02
    rst $38                                       ; $4307: $ff
    ld a, a                                       ; $4308: $7f
    ld hl, sp-$32                                 ; $4309: $f8 $ce
    pop af                                        ; $430b: $f1
    ld l, h                                       ; $430c: $6c
    add e                                         ; $430d: $83
    nop                                           ; $430e: $00
    cp [hl]                                       ; $430f: $be
    ld bc, $0ff0                                  ; $4310: $01 $f0 $0f
    xor l                                         ; $4313: $ad
    inc bc                                        ; $4314: $03
    ld a, [$0007]                                 ; $4315: $fa $07 $00
    or e                                          ; $4318: $b3
    ld c, [hl]                                    ; $4319: $4e
    ld d, l                                       ; $431a: $55
    ld a, [$7f8c]                                 ; $431b: $fa $8c $7f
    rrca                                          ; $431e: $0f
    cp $00                                        ; $431f: $fe $00
    ld l, l                                       ; $4321: $6d
    di                                            ; $4322: $f3
    and h                                         ; $4323: $a4
    ret nz                                        ; $4324: $c0

    cp a                                          ; $4325: $bf
    ld c, $8f                                     ; $4326: $0e $8f
    rlca                                          ; $4328: $07
    jr nz, jr_0bb_432b                            ; $4329: $20 $00

jr_0bb_432b:
    nop                                           ; $432b: $00
    or h                                          ; $432c: $b4
    ld [$ff56], sp                                ; $432d: $08 $56 $ff
    adc [hl]                                      ; $4330: $8e
    rst $38                                       ; $4331: $ff
    sub $03                                       ; $4332: $d6 $03
    ld a, a                                       ; $4334: $7f
    ld a, [hl]                                    ; $4335: $7e
    ccf                                           ; $4336: $3f
    and a                                         ; $4337: $a7
    rra                                           ; $4338: $1f
    ccf                                           ; $4339: $3f
    ld b, b                                       ; $433a: $40
    db $10                                        ; $433b: $10
    di                                            ; $433c: $f3
    ld e, e                                       ; $433d: $5b
    nop                                           ; $433e: $00
    rrca                                          ; $433f: $0f
    rst $38                                       ; $4340: $ff
    ld c, $f9                                     ; $4341: $0e $f9
    ld b, $fc                                     ; $4343: $06 $fc
    inc bc                                        ; $4345: $03
    cp $40                                        ; $4346: $fe $40
    ld bc, $036c                                  ; $4348: $01 $6c $03
    ld bc, $6bff                                  ; $434b: $01 $ff $6b
    rst $38                                       ; $434e: $ff
    db $fd                                        ; $434f: $fd
    cp $00                                        ; $4350: $fe $00
    db $f4                                        ; $4352: $f4
    ld hl, sp-$4e                                 ; $4353: $f8 $b2
    ld c, h                                       ; $4355: $4c
    ld c, a                                       ; $4356: $4f
    nop                                           ; $4357: $00
    ld bc, $0000                                  ; $4358: $01 $00 $00
    xor a                                         ; $435b: $af
    rlca                                          ; $435c: $07
    ld c, l                                       ; $435d: $4d
    inc hl                                        ; $435e: $23
    sub l                                         ; $435f: $95
    jp c, $cf68                                   ; $4360: $da $68 $cf

    nop                                           ; $4363: $00
    adc l                                         ; $4364: $8d
    ld l, d                                       ; $4365: $6a
    ld a, b                                       ; $4366: $78
    rrca                                          ; $4367: $0f
    dec d                                         ; $4368: $15
    ld c, $8c                                     ; $4369: $0e $8c
    rlca                                          ; $436b: $07
    inc c                                         ; $436c: $0c
    ld h, l                                       ; $436d: $65
    add [hl]                                      ; $436e: $86
    or e                                          ; $436f: $b3
    jp Jump_000_1850                              ; $4370: $c3 $50 $18


    inc b                                         ; $4373: $04
    jr c, jr_0bb_43e0                             ; $4374: $38 $6a

    rst $38                                       ; $4376: $ff
    nop                                           ; $4377: $00
    ld [hl], h                                    ; $4378: $74
    cp $6f                                        ; $4379: $fe $6f
    db $fc                                        ; $437b: $fc
    halt                                          ; $437c: $76
    db $fc                                        ; $437d: $fc
    ld l, a                                       ; $437e: $6f
    db $fc                                        ; $437f: $fc

Jump_0bb_4380:
    nop                                           ; $4380: $00
    ld [hl], h                                    ; $4381: $74
    cp $6d                                        ; $4382: $fe $6d
    cp $73                                        ; $4384: $fe $73
    cp $95                                        ; $4386: $fe $95
    ld a, b                                       ; $4388: $78
    nop                                           ; $4389: $00
    adc d                                         ; $438a: $8a
    ld [hl], c                                    ; $438b: $71
    ld d, l                                       ; $438c: $55
    db $e3                                        ; $438d: $e3
    push bc                                       ; $438e: $c5
    ld l, [hl]                                    ; $438f: $6e
    ld c, d                                       ; $4390: $4a
    db $ec                                        ; $4391: $ec
    nop                                           ; $4392: $00
    ccf                                           ; $4393: $3f
    add sp, $3d                                   ; $4394: $e8 $3d
    add sp, $2a                                   ; $4396: $e8 $2a
    jp hl                                         ; $4398: $e9


    ld e, [hl]                                    ; $4399: $5e
    rst $28                                       ; $439a: $ef
    nop                                           ; $439b: $00
    xor [hl]                                      ; $439c: $ae
    rst $18                                       ; $439d: $df
    sbc $3f                                       ; $439e: $de $3f
    ld a, l                                       ; $43a0: $7d
    inc sp                                        ; $43a1: $33
    or [hl]                                       ; $43a2: $b6
    ld c, a                                       ; $43a3: $4f
    inc bc                                        ; $43a4: $03
    ld e, [hl]                                    ; $43a5: $5e
    cp a                                          ; $43a6: $bf
    cp d                                          ; $43a7: $ba
    ld l, a                                       ; $43a8: $6f
    ld a, a                                       ; $43a9: $7f
    rst $10                                       ; $43aa: $d7
    ret nz                                        ; $43ab: $c0

    ld b, b                                       ; $43ac: $40
    ld [bc], a                                    ; $43ad: $02
    stop                                          ; $43ae: $10 $00
    ld l, c                                       ; $43b0: $69
    ldh a, [$af]                                  ; $43b1: $f0 $af
    ret nz                                        ; $43b3: $c0

    ld e, [hl]                                    ; $43b4: $5e
    add c                                         ; $43b5: $81
    xor c                                         ; $43b6: $a9
    rlca                                          ; $43b7: $07
    nop                                           ; $43b8: $00
    rst $10                                       ; $43b9: $d7
    rrca                                          ; $43ba: $0f
    ld l, h                                       ; $43bb: $6c
    rra                                           ; $43bc: $1f
    ld a, d                                       ; $43bd: $7a
    rra                                           ; $43be: $1f
    ld l, b                                       ; $43bf: $68
    rra                                           ; $43c0: $1f
    nop                                           ; $43c1: $00
    add d                                         ; $43c2: $82
    ld bc, $00fc                                  ; $43c3: $01 $fc $00
    rlca                                          ; $43c6: $07
    ld hl, sp-$0e                                 ; $43c7: $f8 $f2
    db $fc                                        ; $43c9: $fc
    nop                                           ; $43ca: $00
    dec c                                         ; $43cb: $0d
    cp $a6                                        ; $43cc: $fe $a6
    ld e, a                                       ; $43ce: $5f
    ld [de], a                                    ; $43cf: $12
    rst $28                                       ; $43d0: $ef
    xor e                                         ; $43d1: $ab
    ld d, a                                       ; $43d2: $57
    nop                                           ; $43d3: $00
    sub $ff                                       ; $43d4: $d6 $ff
    cp [hl]                                       ; $43d6: $be
    ld a, a                                       ; $43d7: $7f
    scf                                           ; $43d8: $37
    rrca                                          ; $43d9: $0f
    or $71                                        ; $43da: $f6 $71
    ld bc, $387a                                  ; $43dc: $01 $7a $38
    rst $00                                       ; $43df: $c7

jr_0bb_43e0:
    nop                                           ; $43e0: $00
    rst $38                                       ; $43e1: $ff
    ld a, a                                       ; $43e2: $7f
    ld a, [hl]                                    ; $43e3: $7e
    xor l                                         ; $43e4: $ad
    ld [hl+], a                                   ; $43e5: $22
    nop                                           ; $43e6: $00
    ldh a, [rIE]                                  ; $43e7: $f0 $ff
    ld l, b                                       ; $43e9: $68
    rra                                           ; $43ea: $1f
    ret nc                                        ; $43eb: $d0

    ccf                                           ; $43ec: $3f
    ldh [rIE], a                                  ; $43ed: $e0 $ff
    db $10                                        ; $43ef: $10
    add b                                         ; $43f0: $80
    rst $18                                       ; $43f1: $df
    inc b                                         ; $43f2: $04
    db $e4                                        ; $43f3: $e4
    ld bc, $ff05                                  ; $43f4: $01 $05 $ff
    rrca                                          ; $43f7: $0f
    cp $40                                        ; $43f8: $fe $40
    ld [bc], a                                    ; $43fa: $02
    ld d, b                                       ; $43fb: $50
    db $10                                        ; $43fc: $10
    rlca                                          ; $43fd: $07
    db $fc                                        ; $43fe: $fc
    adc e                                         ; $43ff: $8b
    ld a, [hl]                                    ; $4400: $7e
    reti                                          ; $4401: $d9


    jr nc, jr_0bb_4404                            ; $4402: $30 $00

jr_0bb_4404:
    ld c, b                                       ; $4404: $48
    scf                                           ; $4405: $37
    push af                                       ; $4406: $f5
    dec de                                        ; $4407: $1b
    db $db                                        ; $4408: $db
    cpl                                           ; $4409: $2f
    cp c                                          ; $440a: $b9
    ld b, a                                       ; $440b: $47
    nop                                           ; $440c: $00
    ld d, h                                       ; $440d: $54
    dec hl                                        ; $440e: $2b
    adc d                                         ; $440f: $8a
    ld [hl], l                                    ; $4410: $75
    ld d, h                                       ; $4411: $54
    nop                                           ; $4412: $00
    db $eb                                        ; $4413: $eb
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    ld [hl], a                                    ; $4416: $77
    add b                                         ; $4417: $80
    cp l                                          ; $4418: $bd
    ld b, e                                       ; $4419: $43
    ld [hl], $c3                                  ; $441a: $36 $c3
    ld c, [hl]                                    ; $441c: $4e
    and e                                         ; $441d: $a3
    nop                                           ; $441e: $00
    sbc [hl]                                      ; $441f: $9e
    db $e3                                        ; $4420: $e3
    dec h                                         ; $4421: $25
    db $d3                                        ; $4422: $d3
    rst $18                                       ; $4423: $df
    ccf                                           ; $4424: $3f
    db $fd                                        ; $4425: $fd
    inc bc                                        ; $4426: $03
    ld [bc], a                                    ; $4427: $02
    ld b, e                                       ; $4428: $43
    cp a                                          ; $4429: $bf
    cp $ff                                        ; $442a: $fe $ff
    ld a, [bc]                                    ; $442c: $0a
    db $eb                                        ; $442d: $eb
    adc $09                                       ; $442e: $ce $09
    cp $a0                                        ; $4430: $fe $a0
    rst $38                                       ; $4432: $ff
    inc d                                         ; $4433: $14
    jr c, @-$46                                   ; $4434: $38 $b8

    inc b                                         ; $4436: $04
    cp b                                          ; $4437: $b8
    rst $08                                       ; $4438: $cf
    ret c                                         ; $4439: $d8

    adc a                                         ; $443a: $8f
    call nc, $8f18                                ; $443b: $d4 $18 $8f
    sub h                                         ; $443e: $94
    adc a                                         ; $443f: $8f
    ld b, $09                                     ; $4440: $06 $09
    inc de                                        ; $4442: $13
    dec a                                         ; $4443: $3d
    inc bc                                        ; $4444: $03
    rst $38                                       ; $4445: $ff
    inc hl                                        ; $4446: $23
    nop                                           ; $4447: $00
    ld b, b                                       ; $4448: $40
    call nc, $aa20                                ; $4449: $d4 $20 $aa
    ldh a, [rHDMA5]                               ; $444c: $f0 $55
    ld a, [$007f]                                 ; $444e: $fa $7f $00
    rst $38                                       ; $4451: $ff
    ld b, d                                       ; $4452: $42
    db $fd                                        ; $4453: $fd
    ld e, l                                       ; $4454: $5d
    db $e3                                        ; $4455: $e3
    cp d                                          ; $4456: $ba
    sub $1b                                       ; $4457: $d6 $1b
    nop                                           ; $4459: $00
    pop hl                                        ; $445a: $e1
    xor e                                         ; $445b: $ab
    ld [hl], a                                    ; $445c: $77
    or a                                          ; $445d: $b7
    rra                                           ; $445e: $1f
    cp $3f                                        ; $445f: $fe $3f
    db $fc                                        ; $4461: $fc
    nop                                           ; $4462: $00
    rst $38                                       ; $4463: $ff
    ld a, [$1dff]                                 ; $4464: $fa $ff $1d
    ccf                                           ; $4467: $3f
    db $f4                                        ; $4468: $f4
    dec bc                                        ; $4469: $0b
    sub $00                                       ; $446a: $d6 $00
    rst $38                                       ; $446c: $ff
    ld l, [hl]                                    ; $446d: $6e
    rst $38                                       ; $446e: $ff
    ld d, [hl]                                    ; $446f: $56
    ccf                                           ; $4470: $3f
    xor [hl]                                      ; $4471: $ae
    rra                                           ; $4472: $1f

Jump_0bb_4473:
    sub $01                                       ; $4473: $d6 $01
    rrca                                          ; $4475: $0f
    ld l, d                                       ; $4476: $6a
    add a                                         ; $4477: $87
    ld h, l                                       ; $4478: $65
    jp $e390                                      ; $4479: $c3 $90 $e3


    ld c, a                                       ; $447c: $4f
    ld e, l                                       ; $447d: $5d
    dec b                                         ; $447e: $05
    add b                                         ; $447f: $80
    rst $38                                       ; $4480: $ff
    ld l, e                                       ; $4481: $6b
    cp $72                                        ; $4482: $fe $72
    ld d, h                                       ; $4484: $54
    ld bc, $0471                                  ; $4485: $01 $71 $04
    jr nc, jr_0bb_448a                            ; $4488: $30 $00

jr_0bb_448a:
    add hl, sp                                    ; $448a: $39
    ld [$e92e], a                                 ; $448b: $ea $2e $e9
    reti                                          ; $448e: $d9


    ld l, d                                       ; $448f: $6a
    ld b, a                                       ; $4490: $47
    ld hl, sp+$00                                 ; $4491: $f8 $00
    pop af                                        ; $4493: $f1
    ld e, d                                       ; $4494: $5a
    ld l, [hl]                                    ; $4495: $6e
    pop de                                        ; $4496: $d1
    reti                                          ; $4497: $d9


    ld d, [hl]                                    ; $4498: $56
    ld e, a                                       ; $4499: $5f
    ret nc                                        ; $449a: $d0

    nop                                           ; $449b: $00
    ld a, d                                       ; $449c: $7a
    xor a                                         ; $449d: $af
    rst $30                                       ; $449e: $f7
    ld e, a                                       ; $449f: $5f
    ld a, [$f6af]                                 ; $44a0: $fa $af $f6
    ld e, a                                       ; $44a3: $5f
    ld bc, $bfee                                  ; $44a4: $01 $ee $bf
    sbc $7f                                       ; $44a7: $de $7f
    or [hl]                                       ; $44a9: $b6
    ld a, a                                       ; $44aa: $7f
    ld c, [hl]                                    ; $44ab: $4e
    or d                                          ; $44ac: $b2
    ld [bc], a                                    ; $44ad: $02
    inc e                                         ; $44ae: $1c
    rlca                                          ; $44af: $07
    cp $04                                        ; $44b0: $fe $04
    ret nz                                        ; $44b2: $c0

    ld [bc], a                                    ; $44b3: $02
    and h                                         ; $44b4: $a4
    ld a, [bc]                                    ; $44b5: $0a
    and [hl]                                      ; $44b6: $a6
    ld a, [bc]                                    ; $44b7: $0a
    ld a, [$001f]                                 ; $44b8: $fa $1f $00
    xor b                                         ; $44bb: $a8
    rra                                           ; $44bc: $1f
    xor d                                         ; $44bd: $aa
    rra                                           ; $44be: $1f
    call nc, Call_0bb_4a0f                        ; $44bf: $d4 $0f $4a
    add a                                         ; $44c2: $87
    nop                                           ; $44c3: $00
    ld h, l                                       ; $44c4: $65
    add e                                         ; $44c5: $83
    or d                                          ; $44c6: $b2
    pop bc                                        ; $44c7: $c1
    db $dd                                        ; $44c8: $dd
    ldh [$15], a                                  ; $44c9: $e0 $15
    db $eb                                        ; $44cb: $eb
    inc c                                         ; $44cc: $0c
    xor b                                         ; $44cd: $a8
    ld d, a                                       ; $44ce: $57
    dec d                                         ; $44cf: $15
    ld [$1804], a                                 ; $44d0: $ea $04 $18
    and b                                         ; $44d3: $a0
    ld [bc], a                                    ; $44d4: $02
    ld [hl], a                                    ; $44d5: $77
    ld d, h                                       ; $44d6: $54
    nop                                           ; $44d7: $00
    cp $a0                                        ; $44d8: $fe $a0
    rst $38                                       ; $44da: $ff
    ld d, l                                       ; $44db: $55
    ld a, [$fd3a]                                 ; $44dc: $fa $3a $fd
    ld d, a                                       ; $44df: $57
    add b                                         ; $44e0: $80
    and b                                         ; $44e1: $a0
    ld [hl+], a                                   ; $44e2: $22
    nop                                           ; $44e3: $00
    rst $18                                       ; $44e4: $df
    add b                                         ; $44e5: $80
    rst $38                                       ; $44e6: $ff
    ld b, b                                       ; $44e7: $40
    rst $38                                       ; $44e8: $ff
    ret nz                                        ; $44e9: $c0

    ld b, b                                       ; $44ea: $40
    ld a, a                                       ; $44eb: $7f
    and d                                         ; $44ec: $a2
    ld a, [hl+]                                   ; $44ed: $2a
    dec bc                                        ; $44ee: $0b
    db $fc                                        ; $44ef: $fc
    dec bc                                        ; $44f0: $0b
    db $fc                                        ; $44f1: $fc
    rla                                           ; $44f2: $17
    ld hl, sp+$30                                 ; $44f3: $f8 $30
    ld a, [bc]                                    ; $44f5: $0a
    db $fd                                        ; $44f6: $fd
    ld d, h                                       ; $44f7: $54
    ld [$09e2], sp                                ; $44f8: $08 $e2 $09
    inc h                                         ; $44fb: $24
    ei                                            ; $44fc: $fb
    jp nc, Jump_000_007d                          ; $44fd: $d2 $7d $00

    dec l                                         ; $4500: $2d
    cp $5b                                        ; $4501: $fe $5b
    rst $20                                       ; $4503: $e7
    sub [hl]                                      ; $4504: $96
    pop hl                                        ; $4505: $e1
    db $fd                                        ; $4506: $fd
    ret nz                                        ; $4507: $c0

    ld b, b                                       ; $4508: $40
    xor [hl]                                      ; $4509: $ae
    ld a, c                                       ; $450a: $79
    ld [bc], a                                    ; $450b: $02
    adc a                                         ; $450c: $8f
    ldh a, [$60]                                  ; $450d: $f0 $60
    rst $38                                       ; $450f: $ff
    ld d, a                                       ; $4510: $57
    cp a                                          ; $4511: $bf
    nop                                           ; $4512: $00
    ld a, [hl+]                                   ; $4513: $2a
    push de                                       ; $4514: $d5
    cp $ff                                        ; $4515: $fe $ff
    pop de                                        ; $4517: $d1
    cpl                                           ; $4518: $2f
    rst $10                                       ; $4519: $d7
    nop                                           ; $451a: $00
    nop                                           ; $451b: $00
    ld sp, hl                                     ; $451c: $f9
    nop                                           ; $451d: $00
    rst $00                                       ; $451e: $c7
    ccf                                           ; $451f: $3f
    ld a, a                                       ; $4520: $7f
    rst $38                                       ; $4521: $ff
    xor $ff                                       ; $4522: $ee $ff
    nop                                           ; $4524: $00
    scf                                           ; $4525: $37
    cp $5c                                        ; $4526: $fe $5c
    cp $a9                                        ; $4528: $fe $a9
    db $fc                                        ; $452a: $fc
    ld [hl], a                                    ; $452b: $77
    db $fc                                        ; $452c: $fc
    nop                                           ; $452d: $00
    call c, $343d                                 ; $452e: $dc $3d $34
    adc a                                         ; $4531: $8f
    add sp, $1f                                   ; $4532: $e8 $1f
    ld d, b                                       ; $4534: $50
    ccf                                           ; $4535: $3f
    inc d                                         ; $4536: $14
    ldh [$3f], a                                  ; $4537: $e0 $3f
    and b                                         ; $4539: $a0
    ld b, d                                       ; $453a: $42
    inc bc                                        ; $453b: $03
    ld b, b                                       ; $453c: $40
    and h                                         ; $453d: $a4
    dec b                                         ; $453e: $05
    inc e                                         ; $453f: $1c
    rst $38                                       ; $4540: $ff
    ld bc, $f021                                  ; $4541: $01 $21 $f0
    ld a, [hl+]                                   ; $4544: $2a
    rst $30                                       ; $4545: $f7
    ld hl, $3eeb                                  ; $4546: $21 $eb $3e
    add hl, sp                                    ; $4549: $39
    ld h, $00                                     ; $454a: $26 $00
    db $f4                                        ; $454c: $f4
    rst $18                                       ; $454d: $df
    db $10                                        ; $454e: $10
    ld a, [$ffdf]                                 ; $454f: $fa $df $ff
    db $ed                                        ; $4552: $ed
    cp $10                                        ; $4553: $fe $10
    ld a, [hl]                                    ; $4555: $7e
    rst $38                                       ; $4556: $ff
    ld [hl], e                                    ; $4557: $73
    inc a                                         ; $4558: $3c
    ld [bc], a                                    ; $4559: $02
    ld [hl], b                                    ; $455a: $70
    rst $38                                       ; $455b: $ff
    ld h, c                                       ; $455c: $61
    rst $38                                       ; $455d: $ff
    nop                                           ; $455e: $00
    cp e                                          ; $455f: $bb
    rst $38                                       ; $4560: $ff
    and a                                         ; $4561: $a7
    ld e, a                                       ; $4562: $5f
    jp nc, $692f                                  ; $4563: $d2 $2f $69

    rla                                           ; $4566: $17
    nop                                           ; $4567: $00
    jr nc, @-$6f                                  ; $4568: $30 $8f

    sbc b                                         ; $456a: $98
    rst $00                                       ; $456b: $c7
    sub l                                         ; $456c: $95
    db $eb                                        ; $456d: $eb
    jp z, Jump_000_00f1                           ; $456e: $ca $f1 $00

    or l                                          ; $4571: $b5
    add sp, -$35                                  ; $4572: $e8 $cb
    db $f4                                        ; $4574: $f4
    and h                                         ; $4575: $a4
    ei                                            ; $4576: $fb
    ld a, l                                       ; $4577: $7d
    cp $03                                        ; $4578: $fe $03
    sub $eb                                       ; $457a: $d6 $eb
    and d                                         ; $457c: $a2
    pop bc                                        ; $457d: $c1
    ld d, l                                       ; $457e: $55
    add b                                         ; $457f: $80
    sbc [hl]                                      ; $4580: $9e
    ld [$08a0], sp                                ; $4581: $08 $a0 $08
    nop                                           ; $4584: $00
    ld b, [hl]                                    ; $4585: $46
    rst $38                                       ; $4586: $ff
    ld c, d                                       ; $4587: $4a
    rst $38                                       ; $4588: $ff
    or [hl]                                       ; $4589: $b6
    ld a, e                                       ; $458a: $7b
    ld a, $f3                                     ; $458b: $3e $f3
    call nz, Call_000_12ce                        ; $458d: $c4 $ce $12
    cp [hl]                                       ; $4590: $be
    ld bc, $fe02                                  ; $4591: $01 $02 $fe
    inc bc                                        ; $4594: $03
    or [hl]                                       ; $4595: $b6
    inc bc                                        ; $4596: $03
    nop                                           ; $4597: $00
    rst $38                                       ; $4598: $ff
    nop                                           ; $4599: $00
    adc a                                         ; $459a: $8f
    sbc a                                         ; $459b: $9f
    push af                                       ; $459c: $f5
    ld h, e                                       ; $459d: $63
    ld b, h                                       ; $459e: $44
    jr c, @-$0c                                   ; $459f: $38 $f2

    ld a, l                                       ; $45a1: $7d
    db $10                                        ; $45a2: $10
    db $ed                                        ; $45a3: $ed
    rst $38                                       ; $45a4: $ff
    halt                                          ; $45a5: $76
    jr c, jr_0bb_45b9                             ; $45a6: $38 $11

    ld a, d                                       ; $45a8: $7a
    push de                                       ; $45a9: $d5
    db $dd                                        ; $45aa: $dd
    db $d3                                        ; $45ab: $d3
    nop                                           ; $45ac: $00
    rst $18                                       ; $45ad: $df
    ld b, d                                       ; $45ae: $42
    adc d                                         ; $45af: $8a
    rlca                                          ; $45b0: $07
    ld d, e                                       ; $45b1: $53
    adc [hl]                                      ; $45b2: $8e
    sbc h                                         ; $45b3: $9c
    rst $20                                       ; $45b4: $e7
    ld b, $57                                     ; $45b5: $06 $57
    cp $e3                                        ; $45b7: $fe $e3

jr_0bb_45b9:
    db $fd                                        ; $45b9: $fd
    sub $80                                       ; $45ba: $d6 $80
    ld h, d                                       ; $45bc: $62
    cp a                                          ; $45bd: $bf
    ld l, $07                                     ; $45be: $2e $07
    add b                                         ; $45c0: $80
    ld [$1500], a                                 ; $45c1: $ea $00 $15
    ld hl, sp+$13                                 ; $45c4: $f8 $13
    ld hl, sp+$66                                 ; $45c6: $f8 $66
    ld hl, sp+$71                                 ; $45c8: $f8 $71

jr_0bb_45ca:
    jr nz, jr_0bb_45ca                            ; $45ca: $20 $fe

    ld a, b                                       ; $45cc: $78
    inc a                                         ; $45cd: $3c
    nop                                           ; $45ce: $00
    db $eb                                        ; $45cf: $eb
    rst $38                                       ; $45d0: $ff
    ld [hl], b                                    ; $45d1: $70
    rst $18                                       ; $45d2: $df
    ld e, d                                       ; $45d3: $5a
    nop                                           ; $45d4: $00
    rst $18                                       ; $45d5: $df
    sbc b                                         ; $45d6: $98
    rst $18                                       ; $45d7: $df
    ld a, l                                       ; $45d8: $7d
    ld a, [de]                                    ; $45d9: $1a
    sub $0f                                       ; $45da: $d6 $0f
    db $ed                                        ; $45dc: $ed
    nop                                           ; $45dd: $00
    inc bc                                        ; $45de: $03
    dec [hl]                                      ; $45df: $35
    ret nz                                        ; $45e0: $c0

    sbc d                                         ; $45e1: $9a
    ldh [$c5], a                                  ; $45e2: $e0 $c5
    ld hl, sp+$33                                 ; $45e4: $f8 $33
    db $10                                        ; $45e6: $10
    db $fc                                        ; $45e7: $fc
    sbc l                                         ; $45e8: $9d
    ld a, [hl]                                    ; $45e9: $7e
    db $10                                        ; $45ea: $10
    dec de                                        ; $45eb: $1b
    adc $ff                                       ; $45ec: $ce $ff
    or [hl]                                       ; $45ee: $b6
    ld a, a                                       ; $45ef: $7f
    nop                                           ; $45f0: $00
    ld a, [hl]                                    ; $45f1: $7e
    rra                                           ; $45f2: $1f
    or [hl]                                       ; $45f3: $b6
    rrca                                          ; $45f4: $0f
    jp c, $bd07                                   ; $45f5: $da $07 $bd

    ret nz                                        ; $45f8: $c0

    nop                                           ; $45f9: $00
    xor [hl]                                      ; $45fa: $ae
    ret nc                                        ; $45fb: $d0

    cp l                                          ; $45fc: $bd
    ret nc                                        ; $45fd: $d0

    ld a, d                                       ; $45fe: $7a
    ret nc                                        ; $45ff: $d0

    ld l, [hl]                                    ; $4600: $6e
    ldh a, [rP1]                                  ; $4601: $f0 $00
    ld h, a                                       ; $4603: $67
    ld hl, sp+$57                                 ; $4604: $f8 $57
    ld hl, sp+$51                                 ; $4606: $f8 $51
    cp $fc                                        ; $4608: $fe $fc
    ld b, b                                       ; $460a: $40
    nop                                           ; $460b: $00
    jp c, $af60                                   ; $460c: $da $60 $af

    ld [hl], b                                    ; $460f: $70
    and $38                                       ; $4610: $e6 $38
    ld a, l                                       ; $4612: $7d
    ld e, $00                                     ; $4613: $1e $00
    ld e, e                                       ; $4615: $5b
    rlca                                          ; $4616: $07
    xor e                                         ; $4617: $ab
    nop                                           ; $4618: $00
    sub l                                         ; $4619: $95
    nop                                           ; $461a: $00
    or a                                          ; $461b: $b7
    dec c                                         ; $461c: $0d
    nop                                           ; $461d: $00
    ld e, l                                       ; $461e: $5d
    rlca                                          ; $461f: $07
    ld a, d                                       ; $4620: $7a
    rlca                                          ; $4621: $07
    jp nc, $aa07                                  ; $4622: $d2 $07 $aa

    rlca                                          ; $4625: $07
    nop                                           ; $4626: $00
    or d                                          ; $4627: $b2
    rst $00                                       ; $4628: $c7
    halt                                          ; $4629: $76
    rst $38                                       ; $462a: $ff
    ld l, a                                       ; $462b: $6f
    rra                                           ; $462c: $1f
    ld l, e                                       ; $462d: $6b
    rst $38                                       ; $462e: $ff
    nop                                           ; $462f: $00
    ld [hl], l                                    ; $4630: $75
    rst $38                                       ; $4631: $ff
    ld l, [hl]                                    ; $4632: $6e
    db $fd                                        ; $4633: $fd
    halt                                          ; $4634: $76
    db $fc                                        ; $4635: $fc
    ld l, e                                       ; $4636: $6b
    cp $40                                        ; $4637: $fe $40
    ld [hl], c                                    ; $4639: $71
    ldh a, [$03]                                  ; $463a: $f0 $03
    ld [hl], e                                    ; $463c: $73
    rst $38                                       ; $463d: $ff
    ret                                           ; $463e: $c9


    rst $30                                       ; $463f: $f7
    ld h, l                                       ; $4640: $65
    ei                                            ; $4641: $fb
    ld b, b                                       ; $4642: $40
    or b                                          ; $4643: $b0
    add [hl]                                      ; $4644: $86
    inc b                                         ; $4645: $04
    ld l, $7f                                     ; $4646: $2e $7f
    jp $f13f                                      ; $4648: $c3 $3f $f1


    rst $08                                       ; $464b: $cf
    nop                                           ; $464c: $00
    db $e3                                        ; $464d: $e3
    rra                                           ; $464e: $1f
    ld a, [hl+]                                   ; $464f: $2a
    push de                                       ; $4650: $d5
    push de                                       ; $4651: $d5
    xor d                                         ; $4652: $aa
    ld [c], a                                     ; $4653: $e2
    db $dd                                        ; $4654: $dd
    ld b, b                                       ; $4655: $40
    add sp, $26                                   ; $4656: $e8 $26
    nop                                           ; $4658: $00
    cp $ff                                        ; $4659: $fe $ff
    ret c                                         ; $465b: $d8

    rst $38                                       ; $465c: $ff
    and b                                         ; $465d: $a0
    rst $38                                       ; $465e: $ff
    ld bc, $77aa                                  ; $465f: $01 $aa $77
    ld a, [hl-]                                   ; $4662: $3a
    rst $20                                       ; $4663: $e7
    or [hl]                                       ; $4664: $b6
    ld l, a                                       ; $4665: $6f
    inc l                                         ; $4666: $2c
    ld h, h                                       ; $4667: $64
    ld [bc], a                                    ; $4668: $02
    ld e, c                                       ; $4669: $59
    or b                                          ; $466a: $b0
    ld a, [$6a10]                                 ; $466b: $fa $10 $6a
    ld l, b                                       ; $466e: $68
    inc b                                         ; $466f: $04
    db $10                                        ; $4670: $10
    ld a, [de]                                    ; $4671: $1a
    ld [hl], d                                    ; $4672: $72
    rst $38                                       ; $4673: $ff
    jr nc, jr_0bb_4679                            ; $4674: $30 $03

    nop                                           ; $4676: $00
    rst $38                                       ; $4677: $ff
    push af                                       ; $4678: $f5

jr_0bb_4679:
    ld hl, sp-$07                                 ; $4679: $f8 $f9
    cp $5d                                        ; $467b: $fe $5d
    cp $4e                                        ; $467d: $fe $4e
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    xor a                                         ; $4681: $af
    sbc e                                         ; $4682: $9b
    jp hl                                         ; $4683: $e9


    sbc a                                         ; $4684: $9f
    or l                                          ; $4685: $b5
    sbc d                                         ; $4686: $9a
    ret c                                         ; $4687: $d8

    nop                                           ; $4688: $00
    scf                                           ; $4689: $37
    or $ff                                        ; $468a: $f6 $ff
    ld a, a                                       ; $468c: $7f
    rra                                           ; $468d: $1f
    xor e                                         ; $468e: $ab
    ld bc, $0ffe                                  ; $468f: $01 $fe $0f
    ld e, a                                       ; $4692: $5f
    xor $b7                                       ; $4693: $ee $b7
    sbc $88                                       ; $4695: $de $88
    ld bc, $0966                                  ; $4697: $01 $66 $09
    ld l, h                                       ; $469a: $6c
    inc a                                         ; $469b: $3c
    xor e                                         ; $469c: $ab
    rrca                                          ; $469d: $0f
    dec b                                         ; $469e: $05
    rla                                           ; $469f: $17
    ld hl, sp+$12                                 ; $46a0: $f8 $12
    db $fc                                        ; $46a2: $fc
    add hl, bc                                    ; $46a3: $09
    ld [hl+], a                                   ; $46a4: $22
    ld [bc], a                                    ; $46a5: $02
    inc bc                                        ; $46a6: $03
    ld [c], a                                     ; $46a7: $e2
    inc b                                         ; $46a8: $04
    add b                                         ; $46a9: $80
    ld h, $0a                                     ; $46aa: $26 $0a
    ld a, [$a88f]                                 ; $46ac: $fa $8f $a8
    rra                                           ; $46af: $1f
    jp z, $103f                                   ; $46b0: $ca $3f $10

    add b                                         ; $46b3: $80
    adc [hl]                                      ; $46b4: $8e
    ld [bc], a                                    ; $46b5: $02
    ld [hl], b                                    ; $46b6: $70
    sbc a                                         ; $46b7: $9f
    jp c, $b01f                                   ; $46b8: $da $1f $b0

    rra                                           ; $46bb: $1f
    ld b, $10                                     ; $46bc: $06 $10
    rst $38                                       ; $46be: $ff
    xor e                                         ; $46bf: $ab
    ld d, a                                       ; $46c0: $57
    inc h                                         ; $46c1: $24
    ld c, d                                       ; $46c2: $4a
    db $ed                                        ; $46c3: $ed
    inc bc                                        ; $46c4: $03
    ld [hl], a                                    ; $46c5: $77
    add c                                         ; $46c6: $81
    nop                                           ; $46c7: $00
    or d                                          ; $46c8: $b2
    pop bc                                        ; $46c9: $c1
    sbc e                                         ; $46ca: $9b
    ldh [$5d], a                                  ; $46cb: $e0 $5d
    ldh [rWX], a                                  ; $46cd: $e0 $4b
    ldh a, [$0e]                                  ; $46cf: $f0 $0e
    ld l, l                                       ; $46d1: $6d
    ldh a, [$2f]                                  ; $46d2: $f0 $2f
    ldh a, [$96]                                  ; $46d4: $f0 $96
    ld a, [de]                                    ; $46d6: $1a
    ld [bc], a                                    ; $46d7: $02
    ld [$0a26], sp                                ; $46d8: $08 $26 $0a
    ret nz                                        ; $46db: $c0

    ld b, b                                       ; $46dc: $40

jr_0bb_46dd:
    ld a, a                                       ; $46dd: $7f
    sub b                                         ; $46de: $90
    dec a                                         ; $46df: $3d
    pop bc                                        ; $46e0: $c1
    ld a, $80                                     ; $46e1: $3e $80
    ld b, e                                       ; $46e3: $43
    ld d, l                                       ; $46e4: $55
    rst $18                                       ; $46e5: $df
    sub b                                         ; $46e6: $90
    inc c                                         ; $46e7: $0c
    ld e, [hl]                                    ; $46e8: $5e
    ld c, a                                       ; $46e9: $4f
    or b                                          ; $46ea: $b0
    inc e                                         ; $46eb: $1c
    ld e, $ef                                     ; $46ec: $1e $ef
    db $10                                        ; $46ee: $10
    rst $10                                       ; $46ef: $d7
    jr c, jr_0bb_46f3                             ; $46f0: $38 $01

    adc e                                         ; $46f2: $8b

jr_0bb_46f3:
    ld c, h                                       ; $46f3: $4c
    sbc d                                         ; $46f4: $9a
    ld e, l                                       ; $46f5: $5d
    adc d                                         ; $46f6: $8a
    ld e, h                                       ; $46f7: $5c
    rst $18                                       ; $46f8: $df
    ld a, [de]                                    ; $46f9: $1a
    ld b, $a1                                     ; $46fa: $06 $a1
    inc b                                         ; $46fc: $04
    ld [$20ef], sp                                ; $46fd: $08 $ef $20
    ld b, $6f                                     ; $4700: $06 $6f
    add b                                         ; $4702: $80
    cpl                                           ; $4703: $2f
    ret nz                                        ; $4704: $c0

    ldh [rKEY1], a                                ; $4705: $e0 $4d
    ld [$01f6], sp                                ; $4707: $08 $f6 $01
    db $f4                                        ; $470a: $f4
    ld [bc], a                                    ; $470b: $02
    ldh [$2d], a                                  ; $470c: $e0 $2d
    cp a                                          ; $470e: $bf
    ld b, b                                       ; $470f: $40
    rra                                           ; $4710: $1f
    inc b                                         ; $4711: $04
    ldh [$2e], a                                  ; $4712: $e0 $2e
    ld [hl], c                                    ; $4714: $71
    inc l                                         ; $4715: $2c
    ld [hl], d                                    ; $4716: $72
    ld e, h                                       ; $4717: $5c
    ld l, $8f                                     ; $4718: $2e $8f
    ld [hl], b                                    ; $471a: $70
    ld b, $06                                     ; $471b: $06 $06
    adc c                                         ; $471d: $89
    ld a, [bc]                                    ; $471e: $0a
    ld a, h                                       ; $471f: $7c
    dec b                                         ; $4720: $05
    ld [hl], c                                    ; $4721: $71
    dec de                                        ; $4722: $1b
    ld c, l                                       ; $4723: $4d
    rlca                                          ; $4724: $07
    rra                                           ; $4725: $1f
    ld bc, $2fe0                                  ; $4726: $01 $e0 $2f
    jr nc, jr_0bb_4742                            ; $4729: $30 $17

    ld hl, sp-$55                                 ; $472b: $f8 $ab
    db $fc                                        ; $472d: $fc
    jr nz, jr_0bb_477e                            ; $472e: $20 $4e

jr_0bb_4730:
    db $10                                        ; $4730: $10
    db $f4                                        ; $4731: $f4
    inc bc                                        ; $4732: $03
    db $f4                                        ; $4733: $f4
    jr nz, jr_0bb_478c                            ; $4734: $20 $56

    rra                                           ; $4736: $1f
    ldh [$0c], a                                  ; $4737: $e0 $0c
    inc de                                        ; $4739: $13
    jp nz, $669a                                  ; $473a: $c2 $9a $66

    dec c                                         ; $473d: $0d
    ld d, c                                       ; $473e: $51
    cp $01                                        ; $473f: $fe $01
    db $fc                                        ; $4741: $fc

jr_0bb_4742:
    ld [bc], a                                    ; $4742: $02
    sub b                                         ; $4743: $90
    ld c, b                                       ; $4744: $48
    cpl                                           ; $4745: $2f
    jr nz, @-$3e                                  ; $4746: $20 $c0

    cpl                                           ; $4748: $2f
    ld h, b                                       ; $4749: $60
    ld b, [hl]                                    ; $474a: $46
    rst $18                                       ; $474b: $df
    jr nz, jr_0bb_46dd                            ; $474c: $20 $8f

    ld d, b                                       ; $474e: $50
    ld [$b748], sp                                ; $474f: $08 $48 $b7
    call c, Call_000_1f5e                         ; $4752: $dc $5e $1f
    ldh [$ec], a                                  ; $4755: $e0 $ec
    ld l, $ef                                     ; $4757: $2e $ef
    db $10                                        ; $4759: $10
    rst $00                                       ; $475a: $c7
    ld b, $28                                     ; $475b: $06 $28
    jp $c124                                      ; $475d: $c3 $24 $c1


    ld a, [hl+]                                   ; $4760: $2a
    sbc b                                         ; $4761: $98
    ld b, $b6                                     ; $4762: $06 $b6
    nop                                           ; $4764: $00
    db $f4                                        ; $4765: $f4
    ld b, b                                       ; $4766: $40
    ld bc, $0002                                  ; $4767: $01 $02 $00
    inc bc                                        ; $476a: $03
    db $f4                                        ; $476b: $f4
    inc bc                                        ; $476c: $03
    or $01                                        ; $476d: $f6 $01
    cp [hl]                                       ; $476f: $be
    nop                                           ; $4770: $00
    ld a, a                                       ; $4771: $7f
    ld b, c                                       ; $4772: $41
    ld a, $3f                                     ; $4773: $3e $3f
    ret nz                                        ; $4775: $c0

    db $10                                        ; $4776: $10
    rst $28                                       ; $4777: $ef
    jr nz, jr_0bb_477a                            ; $4778: $20 $00

jr_0bb_477a:
    rst $18                                       ; $477a: $df
    ld b, b                                       ; $477b: $40
    xor a                                         ; $477c: $af
    ld b, b                                       ; $477d: $40

jr_0bb_477e:
    or a                                          ; $477e: $b7
    ld d, b                                       ; $477f: $50
    cp b                                          ; $4780: $b8
    add a                                         ; $4781: $87
    nop                                           ; $4782: $00
    jr jr_0bb_4730                                ; $4783: $18 $ab

    db $fc                                        ; $4785: $fc
    db $f4                                        ; $4786: $f4
    ld a, e                                       ; $4787: $7b
    ld c, b                                       ; $4788: $48
    or h                                          ; $4789: $b4
    jr nc, jr_0bb_478c                            ; $478a: $30 $00

jr_0bb_478c:
    rl e                                          ; $478c: $cb $13
    rst $20                                       ; $478e: $e7
    rla                                           ; $478f: $17
    rst $28                                       ; $4790: $ef
    ld e, a                                       ; $4791: $5f
    rst $28                                       ; $4792: $ef
    sbc d                                         ; $4793: $9a
    nop                                           ; $4794: $00
    ld e, l                                       ; $4795: $5d
    xor d                                         ; $4796: $aa
    ld a, l                                       ; $4797: $7d
    ld d, h                                       ; $4798: $54
    cp e                                          ; $4799: $bb
    xor b                                         ; $479a: $a8
    rst $10                                       ; $479b: $d7
    ld d, b                                       ; $479c: $50
    ld bc, $a9ef                                  ; $479d: $01 $ef $a9
    rst $30                                       ; $47a0: $f7
    call z, $eff3                                 ; $47a1: $cc $f3 $ef
    ldh a, [$74]                                  ; $47a4: $f0 $74
    nop                                           ; $47a6: $00
    add b                                         ; $47a7: $80
    ld [bc], a                                    ; $47a8: $02
    db $10                                        ; $47a9: $10
    ld l, a                                       ; $47aa: $6f
    ret nz                                        ; $47ab: $c0

    xor a                                         ; $47ac: $af
    ret nz                                        ; $47ad: $c0

    ld l, a                                       ; $47ae: $6f
    add b                                         ; $47af: $80
    rst $28                                       ; $47b0: $ef
    and h                                         ; $47b1: $a4
    call nz, $f500                                ; $47b2: $c4 $00 $f5
    ld b, [hl]                                    ; $47b5: $46
    nop                                           ; $47b6: $00
    rst $30                                       ; $47b7: $f7
    nop                                           ; $47b8: $00
    ld d, h                                       ; $47b9: $54
    jr nz, jr_0bb_47bd                            ; $47ba: $20 $01

    inc l                                         ; $47bc: $2c

jr_0bb_47bd:
    nop                                           ; $47bd: $00
    ld a, [c]                                     ; $47be: $f2
    xor h                                         ; $47bf: $ac
    ld a, [c]                                     ; $47c0: $f2
    xor d                                         ; $47c1: $aa
    pop af                                        ; $47c2: $f1
    ld de, $b0ea                                  ; $47c3: $11 $ea $b0
    ld bc, $514b                                  ; $47c6: $01 $4b $51
    xor a                                         ; $47c9: $af
    dec d                                         ; $47ca: $15
    rst $28                                       ; $47cb: $ef
    ld [$f6f7], sp                                ; $47cc: $08 $f7 $f6
    inc c                                         ; $47cf: $0c
    nop                                           ; $47d0: $00
    adc e                                         ; $47d1: $8b
    db $fd                                        ; $47d2: $fd
    halt                                          ; $47d3: $76
    ld sp, hl                                     ; $47d4: $f9
    adc a                                         ; $47d5: $8f
    ld [hl], b                                    ; $47d6: $70
    ldh a, [$8f]                                  ; $47d7: $f0 $8f
    nop                                           ; $47d9: $00
    ld b, c                                       ; $47da: $41
    and e                                         ; $47db: $a3
    add b                                         ; $47dc: $80
    ld a, a                                       ; $47dd: $7f
    or e                                          ; $47de: $b3
    db $fc                                        ; $47df: $fc
    xor e                                         ; $47e0: $ab
    db $fc                                        ; $47e1: $fc
    nop                                           ; $47e2: $00

jr_0bb_47e3:
    or h                                          ; $47e3: $b4
    ei                                            ; $47e4: $fb
    xor b                                         ; $47e5: $a8
    ldh a, [rNR10]                                ; $47e6: $f0 $10
    rst $20                                       ; $47e8: $e7
    and b                                         ; $47e9: $a0
    ld c, a                                       ; $47ea: $4f
    cp [hl]                                       ; $47eb: $be
    ld [hl], d                                    ; $47ec: $72
    nop                                           ; $47ed: $00
    xor a                                         ; $47ee: $af
    ld e, b                                       ; $47ef: $58
    add hl, bc                                    ; $47f0: $09
    ld e, d                                       ; $47f1: $5a
    add hl, bc                                    ; $47f2: $09
    ld c, [hl]                                    ; $47f3: $4e
    nop                                           ; $47f4: $00
    ld [bc], a                                    ; $47f5: $02
    db $10                                        ; $47f6: $10
    sub [hl]                                      ; $47f7: $96
    ld [$28f4], sp                                ; $47f8: $08 $f4 $28
    inc bc                                        ; $47fb: $03
    rst $30                                       ; $47fc: $f7
    inc b                                         ; $47fd: $04
    ld [$a600], sp                                ; $47fe: $08 $00 $a6
    ld [$f418], sp                                ; $4801: $08 $18 $f4
    stop                                          ; $4804: $10 $00
    db $eb                                        ; $4806: $eb
    ld e, $e1                                     ; $4807: $1e $e1
    pop af                                        ; $4809: $f1
    xor $20                                       ; $480a: $ee $20
    pop de                                        ; $480c: $d1
    pop bc                                        ; $480d: $c1
    nop                                           ; $480e: $00
    cpl                                           ; $480f: $2f
    ld b, c                                       ; $4810: $41
    xor a                                         ; $4811: $af
    ld b, c                                       ; $4812: $41
    xor a                                         ; $4813: $af
    ccf                                           ; $4814: $3f
    ld b, b                                       ; $4815: $40
    ld e, a                                       ; $4816: $5f
    nop                                           ; $4817: $00
    ldh [$2f], a                                  ; $4818: $e0 $2f
    ldh a, [rNR21]                                ; $481a: $f0 $16
    ld sp, hl                                     ; $481c: $f9
    adc d                                         ; $481d: $8a
    ld a, h                                       ; $481e: $7c
    ld c, d                                       ; $481f: $4a
    nop                                           ; $4820: $00
    cp l                                          ; $4821: $bd
    ld c, d                                       ; $4822: $4a
    cp l                                          ; $4823: $bd
    ld [hl], h                                    ; $4824: $74
    cp e                                          ; $4825: $bb
    ld hl, sp+$05                                 ; $4826: $f8 $05
    adc b                                         ; $4828: $88
    nop                                           ; $4829: $00
    ld [hl], l                                    ; $482a: $75
    ld [$0885], sp                                ; $482b: $08 $85 $08
    ld [hl], l                                    ; $482e: $75
    ld [$18f5], sp                                ; $482f: $08 $f5 $18
    ld b, $e5                                     ; $4832: $06 $e5
    dec e                                         ; $4834: $1d
    di                                            ; $4835: $f3
    ld l, $f1                                     ; $4836: $2e $f1
    and b                                         ; $4838: $a0
    jr z, jr_0bb_47e3                             ; $4839: $28 $a8

    ld [$c4ef], sp                                ; $483b: $08 $ef $c4
    xor h                                         ; $483e: $ac
    nop                                           ; $483f: $00
    xor $30                                       ; $4840: $ee $30

jr_0bb_4842:
    ld bc, $00f5                                  ; $4842: $01 $f5 $00
    xor d                                         ; $4845: $aa
    nop                                           ; $4846: $00
    inc bc                                        ; $4847: $03
    jr z, jr_0bb_484a                             ; $4848: $28 $00

jr_0bb_484a:
    ld [hl], b                                    ; $484a: $70
    jr z, jr_0bb_4842                             ; $484b: $28 $f5

    ccf                                           ; $484d: $3f
    ret nz                                        ; $484e: $c0

    ld b, b                                       ; $484f: $40
    cp a                                          ; $4850: $bf
    add b                                         ; $4851: $80

jr_0bb_4852:
    nop                                           ; $4852: $00
    ld b, b                                       ; $4853: $40
    nop                                           ; $4854: $00
    cp a                                          ; $4855: $bf
    sbc a                                         ; $4856: $9f

jr_0bb_4857:
    ld a, a                                       ; $4857: $7f
    ret nz                                        ; $4858: $c0

    ccf                                           ; $4859: $3f
    rrca                                          ; $485a: $0f
    nop                                           ; $485b: $00
    db $10                                        ; $485c: $10
    rla                                           ; $485d: $17
    ld hl, sp-$35                                 ; $485e: $f8 $cb
    inc a                                         ; $4860: $3c
    dec h                                         ; $4861: $25
    sbc $1e                                       ; $4862: $de $1e
    nop                                           ; $4864: $00
    ld l, a                                       ; $4865: $6f
    add hl, hl                                    ; $4866: $29
    or $de                                        ; $4867: $f6 $de
    pop hl                                        ; $4869: $e1
    jr c, @-$29                                   ; $486a: $38 $d5

    ret nz                                        ; $486c: $c0

    nop                                           ; $486d: $00
    dec l                                         ; $486e: $2d
    ret nz                                        ; $486f: $c0

    cpl                                           ; $4870: $2f
    pop bc                                        ; $4871: $c1
    ccf                                           ; $4872: $3f

jr_0bb_4873:
    add hl, hl                                    ; $4873: $29
    sbc a                                         ; $4874: $9f
    or l                                          ; $4875: $b5
    ld bc, $2b6f                                  ; $4876: $01 $6f $2b
    rst $30                                       ; $4879: $f7
    dec [hl]                                      ; $487a: $35
    db $eb                                        ; $487b: $eb
    ld [hl+], a                                   ; $487c: $22
    push de                                       ; $487d: $d5
    or $09                                        ; $487e: $f6 $09
    sub b                                         ; $4880: $90
    ld [bc], a                                    ; $4881: $02
    jr c, jr_0bb_4873                             ; $4882: $38 $ef

    ld b, b                                       ; $4884: $40
    jp c, $ee0f                                   ; $4885: $da $0f $ee

    nop                                           ; $4888: $00
    call nc, RST_08                               ; $4889: $d4 $08 $00
    xor c                                         ; $488c: $a9
    jr jr_0bb_48d0                                ; $488d: $18 $41

    jr nz, jr_0bb_4852                            ; $488f: $20 $c1

    ld [hl+], a                                   ; $4891: $22
    push bc                                       ; $4892: $c5
    ld h, $50                                     ; $4893: $26 $50
    cp a                                          ; $4895: $bf
    cp $07                                        ; $4896: $fe $07
    ld a, a                                       ; $4898: $7f
    sbc [hl]                                      ; $4899: $9e
    ld hl, $03fd                                  ; $489a: $21 $fd $03
    add $39                                       ; $489d: $c6 $39
    and b                                         ; $489f: $a0
    ld a, [hl+]                                   ; $48a0: $2a
    ld a, [bc]                                    ; $48a1: $0a
    rst $30                                       ; $48a2: $f7
    inc h                                         ; $48a3: $24
    ld [bc], a                                    ; $48a4: $02
    dec b                                         ; $48a5: $05
    ld hl, sp+$02                                 ; $48a6: $f8 $02
    inc c                                         ; $48a8: $0c
    ld d, l                                       ; $48a9: $55
    jr nc, jr_0bb_492a                            ; $48aa: $30 $7e

    ei                                            ; $48ac: $fb
    ldh a, [rSB]                                  ; $48ad: $f0 $01
    jr nc, @+$0a                                  ; $48af: $30 $08

    ret nc                                        ; $48b1: $d0

jr_0bb_48b2:
    inc c                                         ; $48b2: $0c
    and c                                         ; $48b3: $a1
    nop                                           ; $48b4: $00
    ld [bc], a                                    ; $48b5: $02
    ld b, b                                       ; $48b6: $40

jr_0bb_48b7:
    ld de, $2381                                  ; $48b7: $11 $81 $23
    ld bc, $30b7                                  ; $48ba: $01 $b7 $30
    jr c, @+$01                                   ; $48bd: $38 $ff

    inc b                                         ; $48bf: $04
    nop                                           ; $48c0: $00
    ld a, e                                       ; $48c1: $7b
    add h                                         ; $48c2: $84
    ld [hl], c                                    ; $48c3: $71
    adc [hl]                                      ; $48c4: $8e
    jr nc, @+$1a                                  ; $48c5: $30 $18

    db $eb                                        ; $48c7: $eb
    stop                                          ; $48c8: $10 $00
    push bc                                       ; $48ca: $c5
    jr z, jr_0bb_4857                             ; $48cb: $28 $8a

    ld e, h                                       ; $48cd: $5c
    sbc e                                         ; $48ce: $9b
    ld a, [hl]                                    ; $48cf: $7e

jr_0bb_48d0:
    xor d                                         ; $48d0: $aa
    ld a, a                                       ; $48d1: $7f
    add b                                         ; $48d2: $80
    ld h, b                                       ; $48d3: $60
    jr jr_0bb_48b2                                ; $48d4: $18 $dc

    nop                                           ; $48d6: $00
    cp b                                          ; $48d7: $b8
    ld bc, $2050                                  ; $48d8: $01 $50 $20
    and b                                         ; $48db: $a0
    db $10                                        ; $48dc: $10
    inc bc                                        ; $48dd: $03
    jr nz, jr_0bb_48b7                            ; $48de: $20 $d7

    ld h, b                                       ; $48e0: $60

jr_0bb_48e1:
    jr z, jr_0bb_4901                             ; $48e1: $28 $1e

    pop hl                                        ; $48e3: $e1
    inc c                                         ; $48e4: $0c
    ld [de], a                                    ; $48e5: $12
    ld [$f916], sp                                ; $48e6: $08 $16 $f9
    dec d                                         ; $48e9: $15
    ld hl, sp+$60                                 ; $48ea: $f8 $60
    jr jr_0bb_48f9                                ; $48ec: $18 $0b

    ldh a, [rTIMA]                                ; $48ee: $f0 $05
    ld bc, $0278                                  ; $48f0: $01 $78 $02
    db $fc                                        ; $48f3: $fc
    db $fd                                        ; $48f4: $fd
    cp $02                                        ; $48f5: $fe $02
    db $fd                                        ; $48f7: $fd
    ld h, b                                       ; $48f8: $60

jr_0bb_48f9:
    jr z, jr_0bb_48fb                             ; $48f9: $28 $00

jr_0bb_48fb:
    and b                                         ; $48fb: $a0
    nop                                           ; $48fc: $00
    ld h, b                                       ; $48fd: $60
    ld de, $0380                                  ; $48fe: $11 $80 $03

jr_0bb_4901:
    nop                                           ; $4901: $00
    and l                                         ; $4902: $a5
    add b                                         ; $4903: $80
    sub b                                         ; $4904: $90
    jr jr_0bb_4986                                ; $4905: $18 $7f

    add b                                         ; $4907: $80
    ld a, $41                                     ; $4908: $3e $41
    ld e, a                                       ; $490a: $5f
    ldh [$30], a                                  ; $490b: $e0 $30
    db $10                                        ; $490d: $10
    rst $28                                       ; $490e: $ef
    jr nz, jr_0bb_48e1                            ; $490f: $20 $d0

    jr nc, jr_0bb_4943                            ; $4911: $30 $30

    nop                                           ; $4913: $00
    jp nz, Jump_000_3f3c                          ; $4914: $c2 $3c $3f

    nop                                           ; $4917: $00
    sbc $50                                       ; $4918: $de $50
    rst $28                                       ; $491a: $ef
    adc l                                         ; $491b: $8d
    ld l, $15                                     ; $491c: $2e $15
    ld e, $2a                                     ; $491e: $1e $2a
    nop                                           ; $4920: $00
    dec e                                         ; $4921: $1d
    or $09                                        ; $4922: $f6 $09
    cp $01                                        ; $4924: $fe $01
    rlca                                          ; $4926: $07
    ld hl, sp+$03                                 ; $4927: $f8 $03
    nop                                           ; $4929: $00

jr_0bb_492a:
    inc c                                         ; $492a: $0c
    ld e, a                                       ; $492b: $5f
    ld h, b                                       ; $492c: $60
    add e                                         ; $492d: $83
    ld c, h                                       ; $492e: $4c
    ld bc, $01be                                  ; $492f: $01 $be $01
    nop                                           ; $4932: $00
    ld a, [hl]                                    ; $4933: $7e
    ld [bc], a                                    ; $4934: $02
    ld a, l                                       ; $4935: $7d
    ld [bc], a                                    ; $4936: $02
    db $fd                                        ; $4937: $fd
    ld d, $ed                                     ; $4938: $16 $ed
    xor e                                         ; $493a: $ab
    nop                                           ; $493b: $00
    ld d, h                                       ; $493c: $54
    rst $10                                       ; $493d: $d7
    jr c, jr_0bb_49bf                             ; $493e: $38 $7f

    add b                                         ; $4940: $80
    add e                                         ; $4941: $83
    ld a, h                                       ; $4942: $7c

jr_0bb_4943:
    ld bc, $fe40                                  ; $4943: $01 $40 $fe
    push de                                       ; $4946: $d5
    nop                                           ; $4947: $00
    cp a                                          ; $4948: $bf
    add d                                         ; $4949: $82
    rst $00                                       ; $494a: $c7
    ld b, l                                       ; $494b: $45
    cp $aa                                        ; $494c: $fe $aa
    ld h, b                                       ; $494e: $60
    ld a, h                                       ; $494f: $7c
    ld [hl], b                                    ; $4950: $70
    ld h, d                                       ; $4951: $62
    nop                                           ; $4952: $00
    ld bc, $00fb                                  ; $4953: $01 $fb $00
    ld a, [$fa01]                                 ; $4956: $fa $01 $fa
    jr nc, jr_0bb_495b                            ; $4959: $30 $00

jr_0bb_495b:
    db $f4                                        ; $495b: $f4
    ld a, [c]                                     ; $495c: $f2
    ld bc, $01a6                                  ; $495d: $01 $a6 $01
    ld [bc], a                                    ; $4960: $02
    add c                                         ; $4961: $81
    ccf                                           ; $4962: $3f
    inc bc                                        ; $4963: $03
    nop                                           ; $4964: $00
    ld e, $3e                                     ; $4965: $1e $3e
    dec e                                         ; $4967: $1d
    ld d, h                                       ; $4968: $54
    ld [$e558], a                                 ; $4969: $ea $58 $e5
    ld e, c                                       ; $496c: $59
    nop                                           ; $496d: $00
    rst $20                                       ; $496e: $e7
    ld e, d                                       ; $496f: $5a
    rst $20                                       ; $4970: $e7
    ld e, l                                       ; $4971: $5d
    db $e3                                        ; $4972: $e3
    ldh [$15], a                                  ; $4973: $e0 $15
    jr nz, jr_0bb_4977                            ; $4975: $20 $00

jr_0bb_4977:
    call nc, $1720                                ; $4977: $d4 $20 $17
    inc hl                                        ; $497a: $23
    rst $18                                       ; $497b: $df
    xor d                                         ; $497c: $aa
    rst $18                                       ; $497d: $df
    or c                                          ; $497e: $b1
    nop                                           ; $497f: $00
    xor $aa                                       ; $4980: $ee $aa
    db $f4                                        ; $4982: $f4
    or h                                          ; $4983: $b4
    ld sp, hl                                     ; $4984: $f9
    db $db                                        ; $4985: $db

jr_0bb_4986:
    ccf                                           ; $4986: $3f
    ld l, d                                       ; $4987: $6a
    nop                                           ; $4988: $00
    sbc a                                         ; $4989: $9f
    or a                                          ; $498a: $b7
    ret z                                         ; $498b: $c8

jr_0bb_498c:
    ld a, b                                       ; $498c: $78
    add a                                         ; $498d: $87
    ldh a, [$08]                                  ; $498e: $f0 $08
    jr nz, jr_0bb_4993                            ; $4990: $20 $01

    rst $18                                       ; $4992: $df

jr_0bb_4993:
    db $10                                        ; $4993: $10
    add hl, hl                                    ; $4994: $29
    jr z, jr_0bb_498c                             ; $4995: $28 $f5

    ld e, a                                       ; $4997: $5f
    add b                                         ; $4998: $80
    ld d, d                                       ; $4999: $52
    dec bc                                        ; $499a: $0b
    db $10                                        ; $499b: $10
    ld e, a                                       ; $499c: $5f
    add b                                         ; $499d: $80
    ld l, a                                       ; $499e: $6f
    and b                                         ; $499f: $a0
    ld de, $c0af                                  ; $49a0: $11 $af $c0
    ld a, [$a000]                                 ; $49a3: $fa $00 $a0
    ld [bc], a                                    ; $49a6: $02
    nop                                           ; $49a7: $00
    ld bc, $3b10                                  ; $49a8: $01 $10 $3b
    jr nz, @-$67                                  ; $49ab: $20 $97

    rla                                           ; $49ad: $17
    rrca                                          ; $49ae: $0f
    ld [$3700], sp                                ; $49af: $08 $00 $37
    rlca                                          ; $49b2: $07
    cp b                                          ; $49b3: $b8
    add e                                         ; $49b4: $83
    ld e, [hl]                                    ; $49b5: $5e
    db $dd                                        ; $49b6: $dd
    ld a, $23                                     ; $49b7: $3e $23
    nop                                           ; $49b9: $00
    call c, Call_000_031c                         ; $49ba: $dc $1c $03
    inc d                                         ; $49bd: $14
    ei                                            ; $49be: $fb

jr_0bb_49bf:
    add sp, -$09                                  ; $49bf: $e8 $f7
    stop                                          ; $49c1: $10 $00
    rst $28                                       ; $49c3: $ef
    pop hl                                        ; $49c4: $e1
    rra                                           ; $49c5: $1f
    ld [bc], a                                    ; $49c6: $02
    cp a                                          ; $49c7: $bf
    dec b                                         ; $49c8: $05
    cp [hl]                                       ; $49c9: $be
    cp d                                          ; $49ca: $ba
    nop                                           ; $49cb: $00
    ld a, l                                       ; $49cc: $7d
    ld b, h                                       ; $49cd: $44
    cp e                                          ; $49ce: $bb
    db $fd                                        ; $49cf: $fd
    inc bc                                        ; $49d0: $03
    and c                                         ; $49d1: $a1
    rst $08                                       ; $49d2: $cf
    and c                                         ; $49d3: $a1
    nop                                           ; $49d4: $00
    rst $08                                       ; $49d5: $cf
    ld b, c                                       ; $49d6: $41
    xor a                                         ; $49d7: $af
    pop bc                                        ; $49d8: $c1
    cpl                                           ; $49d9: $2f
    pop bc                                        ; $49da: $c1
    cpl                                           ; $49db: $2f
    ld l, $06                                     ; $49dc: $2e $06
    rst $18                                       ; $49de: $df
    ld de, $5fee                                  ; $49df: $11 $ee $5f
    add b                                         ; $49e2: $80
    ld [bc], a                                    ; $49e3: $02
    jr jr_0bb_498c                                ; $49e4: $18 $a6

    add hl, bc                                    ; $49e6: $09
    xor a                                         ; $49e7: $af
    ld h, $40                                     ; $49e8: $26 $40
    cpl                                           ; $49ea: $2f
    sbc [hl]                                      ; $49eb: $9e
    inc hl                                        ; $49ec: $23
    ld a, [$a001]                                 ; $49ed: $fa $01 $a0
    ld [$0360], sp                                ; $49f0: $08 $60 $03
    ld [bc], a                                    ; $49f3: $02
    nop                                           ; $49f4: $00
    dec b                                         ; $49f5: $05
    or e                                          ; $49f6: $b3
    ld [bc], a                                    ; $49f7: $02
    dec e                                         ; $49f8: $1d
    dec h                                         ; $49f9: $25
    ld a, [de]                                    ; $49fa: $1a
    ld a, [de]                                    ; $49fb: $1a
    push hl                                       ; $49fc: $e5
    nop                                           ; $49fd: $00
    ld sp, $596a                                  ; $49fe: $31 $6a $59
    rst $20                                       ; $4a01: $e7
    or h                                          ; $4a02: $b4
    bit 1, e                                      ; $4a03: $cb $4b
    or h                                          ; $4a05: $b4
    nop                                           ; $4a06: $00
    ret nz                                        ; $4a07: $c0

    xor a                                         ; $4a08: $af
    add c                                         ; $4a09: $81
    ld e, a                                       ; $4a0a: $5f
    ld [bc], a                                    ; $4a0b: $02
    cp a                                          ; $4a0c: $bf
    dec a                                         ; $4a0d: $3d
    ld a, [hl]                                    ; $4a0e: $7e

Call_0bb_4a0f:
    nop                                           ; $4a0f: $00
    ld [bc], a                                    ; $4a10: $02
    db $fd                                        ; $4a11: $fd
    db $fd                                        ; $4a12: $fd
    ld [bc], a                                    ; $4a13: $02
    ld [bc], a                                    ; $4a14: $02
    db $fd                                        ; $4a15: $fd
    db $fc                                        ; $4a16: $fc
    ld bc, $bf00                                  ; $4a17: $01 $00 $bf
    ret nz                                        ; $4a1a: $c0

    ld c, a                                       ; $4a1b: $4f
    sub b                                         ; $4a1c: $90
    adc b                                         ; $4a1d: $88
    scf                                           ; $4a1e: $37
    jr nc, jr_0bb_4a89                            ; $4a1f: $30 $68

    nop                                           ; $4a21: $00
    xor b                                         ; $4a22: $a8
    ld [hl], l                                    ; $4a23: $75
    inc l                                         ; $4a24: $2c
    ld a, [c]                                     ; $4a25: $f2
    ld a, [hl+]                                   ; $4a26: $2a
    push af                                       ; $4a27: $f5
    ld d, c                                       ; $4a28: $51

jr_0bb_4a29:
    ld [$9eb7], a                                 ; $4a29: $ea $b7 $9e
    jr jr_0bb_4a8d                                ; $4a2c: $18 $5f

    ld e, h                                       ; $4a2e: $5c
    dec bc                                        ; $4a2f: $0b
    xor $00                                       ; $4a30: $ee $00
    ld l, a                                       ; $4a32: $6f
    ld b, b                                       ; $4a33: $40
    ld [bc], a                                    ; $4a34: $02
    call c, $9402                                 ; $4a35: $dc $02 $94
    ld [de], a                                    ; $4a38: $12
    add b                                         ; $4a39: $80
    inc [hl]                                      ; $4a3a: $34
    inc bc                                        ; $4a3b: $03

jr_0bb_4a3c:
    ld [bc], a                                    ; $4a3c: $02
    or $03                                        ; $4a3d: $f6 $03
    ldh [$df], a                                  ; $4a3f: $e0 $df
    ld b, b                                       ; $4a41: $40
    and c                                         ; $4a42: $a1
    nop                                           ; $4a43: $00
    xor d                                         ; $4a44: $aa
    ld l, a                                       ; $4a45: $6f
    ld e, a                                       ; $4a46: $5f
    cp a                                          ; $4a47: $bf
    jr nz, jr_0bb_4a29                            ; $4a48: $20 $df

    rra                                           ; $4a4a: $1f
    ldh [rP1], a                                  ; $4a4b: $e0 $00
    jr jr_0bb_4a83                                ; $4a4d: $18 $34

    jr nc, jr_0bb_4a3c                            ; $4a4f: $30 $eb

    adc e                                         ; $4a51: $8b
    ld c, h                                       ; $4a52: $4c
    ld e, d                                       ; $4a53: $5a
    sbc l                                         ; $4a54: $9d
    nop                                           ; $4a55: $00
    xor d                                         ; $4a56: $aa
    call c, $9d5a                                 ; $4a57: $dc $5a $9d
    xor e                                         ; $4a5a: $ab
    ld a, l                                       ; $4a5b: $7d
    ld d, a                                       ; $4a5c: $57
    cp e                                          ; $4a5d: $bb
    nop                                           ; $4a5e: $00
    xor a                                         ; $4a5f: $af
    rst $10                                       ; $4a60: $d7
    ld e, e                                       ; $4a61: $5b
    rst $20                                       ; $4a62: $e7

jr_0bb_4a63:
    call nz, Call_000_3839                        ; $4a63: $c4 $39 $38
    jp Jump_0bb_5000                              ; $4a66: $c3 $00 $50


    ld l, e                                       ; $4a69: $6b
    jr z, jr_0bb_4a63                             ; $4a6a: $28 $f7

    call nc, $e4fb                                ; $4a6c: $d4 $fb $e4
    ei                                            ; $4a6f: $fb
    scf                                           ; $4a70: $37
    or $f9                                        ; $4a71: $f6 $f9
    jr nc, jr_0bb_4ab0                            ; $4a73: $30 $3b

    adc [hl]                                      ; $4a75: $8e
    ld a, [de]                                    ; $4a76: $1a
    rst $28                                       ; $4a77: $ef
    inc [hl]                                      ; $4a78: $34
    inc b                                         ; $4a79: $04
    inc l                                         ; $4a7a: $2c
    dec de                                        ; $4a7b: $1b
    adc h                                         ; $4a7c: $8c
    ld a, [bc]                                    ; $4a7d: $0a
    add b                                         ; $4a7e: $80
    ld a, [hl-]                                   ; $4a7f: $3a
    dec bc                                        ; $4a80: $0b
    ld a, $c1                                     ; $4a81: $3e $c1

jr_0bb_4a83:
    ld l, a                                       ; $4a83: $6f
    or b                                          ; $4a84: $b0
    sub h                                         ; $4a85: $94
    ld a, d                                       ; $4a86: $7a
    xor h                                         ; $4a87: $ac
    nop                                           ; $4a88: $00

jr_0bb_4a89:
    ld a, [$fab4]                                 ; $4a89: $fa $b4 $fa
    xor h                                         ; $4a8c: $ac

jr_0bb_4a8d:
    ei                                            ; $4a8d: $fb
    or l                                          ; $4a8e: $b5
    ei                                            ; $4a8f: $fb

jr_0bb_4a90:
    xor [hl]                                      ; $4a90: $ae
    nop                                           ; $4a91: $00
    pop af                                        ; $4a92: $f1
    xor b                                         ; $4a93: $a8
    di                                            ; $4a94: $f3
    db $10                                        ; $4a95: $10
    db $eb                                        ; $4a96: $eb
    or b                                          ; $4a97: $b0
    ld c, e                                       ; $4a98: $4b
    ld c, d                                       ; $4a99: $4a
    nop                                           ; $4a9a: $00
    sub a                                         ; $4a9b: $97
    dec e                                         ; $4a9c: $1d
    db $e3                                        ; $4a9d: $e3
    ld h, d                                       ; $4a9e: $62
    db $dd                                        ; $4a9f: $dd
    ld b, c                                       ; $4aa0: $41
    and d                                         ; $4aa1: $a2
    add b                                         ; $4aa2: $80
    db $10                                        ; $4aa3: $10
    ld a, a                                       ; $4aa4: $7f
    dec d                                         ; $4aa5: $15
    ei                                            ; $4aa6: $fb
    or $01                                        ; $4aa7: $f6 $01
    ld a, [$f329]                                 ; $4aa9: $fa $29 $f3
    pop de                                        ; $4aac: $d1
    ld bc, $21e3                                  ; $4aad: $01 $e3 $21

jr_0bb_4ab0:
    rst $18                                       ; $4ab0: $df
    db $ed                                        ; $4ab1: $ed
    rra                                           ; $4ab2: $1f
    dec [hl]                                      ; $4ab3: $35
    rst $08                                       ; $4ab4: $cf
    ld [hl], h                                    ; $4ab5: $74
    dec bc                                        ; $4ab6: $0b
    add b                                         ; $4ab7: $80
    sub h                                         ; $4ab8: $94
    ld c, d                                       ; $4ab9: $4a
    ld a, b                                       ; $4aba: $78
    rlca                                          ; $4abb: $07
    ld l, a                                       ; $4abc: $6f
    rst $18                                       ; $4abd: $df
    jr nc, @-$0f                                  ; $4abe: $30 $ef

    rra                                           ; $4ac0: $1f
    ld b, b                                       ; $4ac1: $40
    ldh a, [rNR10]                                ; $4ac2: $f0 $10
    dec hl                                        ; $4ac4: $2b
    ld l, $f1                                     ; $4ac5: $2e $f1
    ret c                                         ; $4ac7: $d8

    push hl                                       ; $4ac8: $e5
    jr z, jr_0bb_4a90                             ; $4ac9: $28 $c5

    ld [hl], $c8                                  ; $4acb: $36 $c8
    dec [hl]                                      ; $4acd: $35
    db $10                                        ; $4ace: $10
    dec hl                                        ; $4acf: $2b
    ld h, [hl]                                    ; $4ad0: $66
    nop                                           ; $4ad1: $00
    ld [bc], a                                    ; $4ad2: $02
    xor b                                         ; $4ad3: $a8
    inc b                                         ; $4ad4: $04
    nop                                           ; $4ad5: $00
    inc sp                                        ; $4ad6: $33
    xor h                                         ; $4ad7: $ac
    add b                                         ; $4ad8: $80
    nop                                           ; $4ad9: $00
    ld h, e                                       ; $4ada: $63
    ld [$1915], sp                                ; $4adb: $08 $15 $19
    rst $30                                       ; $4ade: $f7
    jp z, $2537                                   ; $4adf: $ca $37 $25

    db $10                                        ; $4ae2: $10
    jp c, Jump_0bb_6d1e                           ; $4ae3: $da $1e $6d

    nop                                           ; $4ae6: $00
    dec de                                        ; $4ae7: $1b
    and b                                         ; $4ae8: $a0
    call $af40                                    ; $4ae9: $cd $40 $af
    sbc b                                         ; $4aec: $98
    nop                                           ; $4aed: $00
    ld c, e                                       ; $4aee: $4b
    xor a                                         ; $4aef: $af
    ld b, b                                       ; $4af0: $40
    nop                                           ; $4af1: $00
    ld e, e                                       ; $4af2: $5b
    rst $28                                       ; $4af3: $ef
    ld c, a                                       ; $4af4: $4f
    ret nz                                        ; $4af5: $c0

    ccf                                           ; $4af6: $3f
    add b                                         ; $4af7: $80
    add h                                         ; $4af8: $84
    db $10                                        ; $4af9: $10
    ld d, b                                       ; $4afa: $50
    ei                                            ; $4afb: $fb
    inc b                                         ; $4afc: $04
    ld [hl], c                                    ; $4afd: $71
    adc d                                         ; $4afe: $8a
    ld d, b                                       ; $4aff: $50
    ld e, l                                       ; $4b00: $5d
    add b                                         ; $4b01: $80
    ld a, a                                       ; $4b02: $7f
    xor b                                         ; $4b03: $a8
    ldh [rNR31], a                                ; $4b04: $e0 $1b
    rst $28                                       ; $4b06: $ef
    ld b, [hl]                                    ; $4b07: $46
    dec h                                         ; $4b08: $25
    ld e, a                                       ; $4b09: $5f
    and a                                         ; $4b0a: $a7
    rlca                                          ; $4b0b: $07
    db $fd                                        ; $4b0c: $fd
    ld [bc], a                                    ; $4b0d: $02
    ld a, d                                       ; $4b0e: $7a
    ld [bc], a                                    ; $4b0f: $02
    rlca                                          ; $4b10: $07
    or c                                          ; $4b11: $b1
    add hl, bc                                    ; $4b12: $09
    db $d3                                        ; $4b13: $d3
    dec bc                                        ; $4b14: $0b
    jp hl                                         ; $4b15: $e9


    and $03                                       ; $4b16: $e6 $03
    ei                                            ; $4b18: $fb
    jp Jump_000_0ff3                              ; $4b19: $c3 $f3 $0f


    cp c                                          ; $4b1c: $b9
    rlca                                          ; $4b1d: $07
    ld [hl], b                                    ; $4b1e: $70
    adc a                                         ; $4b1f: $8f
    ld h, b                                       ; $4b20: $60
    sbc a                                         ; $4b21: $9f
    add b                                         ; $4b22: $80
    inc e                                         ; $4b23: $1c
    add sp, $14                                   ; $4b24: $e8 $14
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    ld a, l                                       ; $4b28: $7d
    add b                                         ; $4b29: $80
    dec sp                                        ; $4b2a: $3b
    ret nz                                        ; $4b2b: $c0

    rla                                           ; $4b2c: $17
    ldh [$2f], a                                  ; $4b2d: $e0 $2f
    ld b, b                                       ; $4b2f: $40
    ret nz                                        ; $4b30: $c0

    jr nc, jr_0bb_4b3b                            ; $4b31: $30 $08

    ld hl, sp+$07                                 ; $4b33: $f8 $07
    ld [hl], c                                    ; $4b35: $71
    add hl, bc                                    ; $4b36: $09
    and b                                         ; $4b37: $a0
    rla                                           ; $4b38: $17
    inc b                                         ; $4b39: $04
    push de                                       ; $4b3a: $d5

jr_0bb_4b3b:
    rrca                                          ; $4b3b: $0f
    db $ed                                        ; $4b3c: $ed
    rlca                                          ; $4b3d: $07
    push af                                       ; $4b3e: $f5
    jr nc, jr_0bb_4b61                            ; $4b3f: $30 $20

    ld a, a                                       ; $4b41: $7f
    add b                                         ; $4b42: $80
    nop                                           ; $4b43: $00
    cp a                                          ; $4b44: $bf
    ret nz                                        ; $4b45: $c0

    ld e, a                                       ; $4b46: $5f
    ldh [$98], a                                  ; $4b47: $e0 $98
    rst $20                                       ; $4b49: $e7
    ld d, b                                       ; $4b4a: $50
    add sp, $45                                   ; $4b4b: $e8 $45
    and b                                         ; $4b4d: $a0
    ret nz                                        ; $4b4e: $c0

    dec d                                         ; $4b4f: $15
    cp $00                                        ; $4b50: $fe $00
    db $fd                                        ; $4b52: $fd
    sub [hl]                                      ; $4b53: $96
    dec b                                         ; $4b54: $05
    scf                                           ; $4b55: $37
    sub h                                         ; $4b56: $94
    inc b                                         ; $4b57: $04
    add b                                         ; $4b58: $80
    ld h, b                                       ; $4b59: $60
    ld [$0ff0], sp                                ; $4b5a: $08 $f0 $0f
    ld h, b                                       ; $4b5d: $60

jr_0bb_4b5e:
    db $10                                        ; $4b5e: $10
    and b                                         ; $4b5f: $a0
    rrca                                          ; $4b60: $0f

jr_0bb_4b61:
    ret nc                                        ; $4b61: $d0

jr_0bb_4b62:
    ld [bc], a                                    ; $4b62: $02
    rrca                                          ; $4b63: $0f
    add sp, $07                                   ; $4b64: $e8 $07
    rst $30                                       ; $4b66: $f7
    inc bc                                        ; $4b67: $03
    ld a, [$0060]                                 ; $4b68: $fa $60 $00
    ccf                                           ; $4b6b: $3f
    nop                                           ; $4b6c: $00
    ret nz                                        ; $4b6d: $c0

    rra                                           ; $4b6e: $1f
    jr nz, jr_0bb_4b9a                            ; $4b6f: $20 $29

    or $28                                        ; $4b71: $f6 $28
    pop af                                        ; $4b73: $f1
    add hl, hl                                    ; $4b74: $29
    ld a, [bc]                                    ; $4b75: $0a
    rst $30                                       ; $4b76: $f7
    pop de                                        ; $4b77: $d1
    rst $28                                       ; $4b78: $ef
    ld hl, $4030                                  ; $4b79: $21 $30 $40
    ld [hl], a                                    ; $4b7c: $77
    ret c                                         ; $4b7d: $d8

    inc bc                                        ; $4b7e: $03
    ld e, a                                       ; $4b7f: $5f
    nop                                           ; $4b80: $00
    add b                                         ; $4b81: $80
    ret nz                                        ; $4b82: $c0

    cpl                                           ; $4b83: $2f
    ldh [rNR22], a                                ; $4b84: $e0 $17
    ld [hl], b                                    ; $4b86: $70
    dec bc                                        ; $4b87: $0b
    xor e                                         ; $4b88: $ab
    inc b                                         ; $4b89: $04
    rla                                           ; $4b8a: $17
    call nc, $eb03                                ; $4b8b: $d4 $03 $eb
    inc b                                         ; $4b8e: $04
    jr nc, jr_0bb_4b99                            ; $4b8f: $30 $08

    or c                                          ; $4b91: $b1
    ret z                                         ; $4b92: $c8

    nop                                           ; $4b93: $00
    ld d, d                                       ; $4b94: $52
    jp hl                                         ; $4b95: $e9


    add hl, hl                                    ; $4b96: $29
    ld a, [c]                                     ; $4b97: $f2
    db $f4                                        ; $4b98: $f4

jr_0bb_4b99:
    ei                                            ; $4b99: $fb

jr_0bb_4b9a:
    ld [$00f7], sp                                ; $4b9a: $08 $f7 $00
    ld a, [$ed07]                                 ; $4b9d: $fa $07 $ed

jr_0bb_4ba0:
    di                                            ; $4ba0: $f3
    ld e, $e1                                     ; $4ba1: $1e $e1
    nop                                           ; $4ba3: $00
    add b                                         ; $4ba4: $80
    nop                                           ; $4ba5: $00
    ld bc, $3e7e                                  ; $4ba6: $01 $7e $3e
    db $fc                                        ; $4ba9: $fc
    add l                                         ; $4baa: $85
    ld a, b                                       ; $4bab: $78
    ld a, e                                       ; $4bac: $7b
    add b                                         ; $4bad: $80
    nop                                           ; $4bae: $00
    ld d, a                                       ; $4baf: $57
    ldh [$6f], a                                  ; $4bb0: $e0 $6f

jr_0bb_4bb2:
    ret nz                                        ; $4bb2: $c0

    rst $18                                       ; $4bb3: $df
    add b                                         ; $4bb4: $80
    xor b                                         ; $4bb5: $a8
    ld e, a                                       ; $4bb6: $5f
    nop                                           ; $4bb7: $00
    dec d                                         ; $4bb8: $15
    rrca                                          ; $4bb9: $0f
    xor c                                         ; $4bba: $a9
    halt                                          ; $4bbb: $76
    rst $30                                       ; $4bbc: $f7
    ld a, b                                       ; $4bbd: $78
    adc l                                         ; $4bbe: $8d
    ld [hl], d                                    ; $4bbf: $72
    nop                                           ; $4bc0: $00
    cp c                                          ; $4bc1: $b9
    inc b                                         ; $4bc2: $04
    adc b                                         ; $4bc3: $88
    ld [hl], l                                    ; $4bc4: $75
    jr jr_0bb_4b5e                                ; $4bc5: $18 $97

    ld d, b                                       ; $4bc7: $50
    xor c                                         ; $4bc8: $a9
    nop                                           ; $4bc9: $00
    sbc b                                         ; $4bca: $98
    dec [hl]                                      ; $4bcb: $35
    sub l                                         ; $4bcc: $95
    ld a, [hl-]                                   ; $4bcd: $3a
    sub a                                         ; $4bce: $97
    ld a, b                                       ; $4bcf: $78
    rst $10                                       ; $4bd0: $d7
    ld a, b                                       ; $4bd1: $78
    nop                                           ; $4bd2: $00
    sub a                                         ; $4bd3: $97
    jr c, jr_0bb_4b62                             ; $4bd4: $38 $8c

    ld [hl], d                                    ; $4bd6: $72
    sbc b                                         ; $4bd7: $98
    dec h                                         ; $4bd8: $25
    jp nz, Jump_000_003f                          ; $4bd9: $c2 $3f $00

    dec b                                         ; $4bdc: $05
    ld a, [hl]                                    ; $4bdd: $7e

jr_0bb_4bde:
    adc e                                         ; $4bde: $8b
    ld a, h                                       ; $4bdf: $7c
    push af                                       ; $4be0: $f5
    ld a, b                                       ; $4be1: $78
    adc c                                         ; $4be2: $89
    ld [hl], h                                    ; $4be3: $74
    nop                                           ; $4be4: $00
    cp c                                          ; $4be5: $b9
    inc b                                         ; $4be6: $04
    jr z, jr_0bb_4bde                             ; $4be7: $28 $f5

    jr jr_0bb_4ba0                                ; $4be9: $18 $b5

    pop hl                                        ; $4beb: $e1
    ld e, $04                                     ; $4bec: $1e $04
    add c                                         ; $4bee: $81
    ld b, e                                       ; $4bef: $43
    add e                                         ; $4bf0: $83
    ld a, $85                                     ; $4bf1: $3e $85
    inc d                                         ; $4bf3: $14
    nop                                           ; $4bf4: $00
    or l                                          ; $4bf5: $b5
    ld a, [hl-]                                   ; $4bf6: $3a
    ld [$f20c], sp                                ; $4bf7: $08 $0c $f2
    cp h                                          ; $4bfa: $bc
    ld [bc], a                                    ; $4bfb: $02
    sbc d                                         ; $4bfc: $9a
    ld [bc], a                                    ; $4bfd: $02
    ld [bc], a                                    ; $4bfe: $02
    db $ec                                        ; $4bff: $ec
    ld [bc], a                                    ; $4c00: $02
    ld [$08d4], sp                                ; $4c01: $08 $d4 $08
    xor b                                         ; $4c04: $a8
    add hl, de                                    ; $4c05: $19
    ld b, b                                       ; $4c06: $40
    inc e                                         ; $4c07: $1c
    inc c                                         ; $4c08: $0c
    dec sp                                        ; $4c09: $3b
    halt                                          ; $4c0a: $76
    nop                                           ; $4c0b: $00
    ld a, l                                       ; $4c0c: $7d
    ld a, c                                       ; $4c0d: $79

jr_0bb_4c0e:
    ld a, [hl]                                    ; $4c0e: $7e
    db $fd                                        ; $4c0f: $fd
    cp $fb                                        ; $4c10: $fe $fb
    db $fc                                        ; $4c12: $fc
    ld b, $64                                     ; $4c13: $06 $64
    ld sp, hl                                     ; $4c15: $f9
    ld b, b                                       ; $4c16: $40
    inc c                                         ; $4c17: $0c
    ld a, [de]                                    ; $4c18: $1a
    dec bc                                        ; $4c19: $0b
    rla                                           ; $4c1a: $17
    ldh [rLCDC], a                                ; $4c1b: $e0 $40
    ld c, h                                       ; $4c1d: $4c
    or $01                                        ; $4c1e: $f6 $01
    jr nz, jr_0bb_4c0e                            ; $4c20: $20 $ec

    ld [bc], a                                    ; $4c22: $02
    ld b, b                                       ; $4c23: $40
    inc a                                         ; $4c24: $3c
    jr nc, jr_0bb_4bb2                            ; $4c25: $30 $8b

    db $10                                        ; $4c27: $10
    dec bc                                        ; $4c28: $0b
    stop                                          ; $4c29: $10 $00
    ld l, e                                       ; $4c2b: $6b
    ld a, [de]                                    ; $4c2c: $1a
    scf                                           ; $4c2d: $37
    dec d                                         ; $4c2e: $15
    cp e                                          ; $4c2f: $bb
    xor [hl]                                      ; $4c30: $ae
    ld [hl], c                                    ; $4c31: $71
    ld e, e                                       ; $4c32: $5b
    ld [$71a4], sp                                ; $4c33: $08 $a4 $71
    adc [hl]                                      ; $4c36: $8e
    ld e, a                                       ; $4c37: $5f
    sub h                                         ; $4c38: $94
    ld b, $17                                     ; $4c39: $06 $17
    ldh [$2b], a                                  ; $4c3b: $e0 $2b
    nop                                           ; $4c3d: $00
    ldh a, [$d5]                                  ; $4c3e: $f0 $d5
    add sp, $2a                                   ; $4c40: $e8 $2a

jr_0bb_4c42:
    call c, $3edb                                 ; $4c42: $dc $db $3e
    xor d                                         ; $4c45: $aa
    ld h, b                                       ; $4c46: $60
    ld a, a                                       ; $4c47: $7f
    ld h, b                                       ; $4c48: $60
    ld [$4c40], sp                                ; $4c49: $08 $40 $4c
    ld [$05b5], sp                                ; $4c4c: $08 $b5 $05
    ld a, e                                       ; $4c4f: $7b
    ld b, $40                                     ; $4c50: $06 $40
    ld a, l                                       ; $4c52: $7d
    inc a                                         ; $4c53: $3c
    inc de                                        ; $4c54: $13
    ld a, [hl-]                                   ; $4c55: $3a
    ld a, $c1                                     ; $4c56: $3e $c1
    dec d                                         ; $4c58: $15
    ld hl, sp+$5f                                 ; $4c59: $f8 $5f
    ld bc, $ef80                                  ; $4c5b: $01 $80 $ef
    ret nz                                        ; $4c5e: $c0

    scf                                           ; $4c5f: $37
    ret nz                                        ; $4c60: $c0

jr_0bb_4c61:
    swap b                                        ; $4c61: $cb $30
    ld b, b                                       ; $4c63: $40
    inc l                                         ; $4c64: $2c
    jr jr_0bb_4c61                                ; $4c65: $18 $fa

    ld bc, $30f5                                  ; $4c67: $01 $f5 $30
    nop                                           ; $4c6a: $00
    ld b, b                                       ; $4c6b: $40
    inc a                                         ; $4c6c: $3c
    add h                                         ; $4c6d: $84
    ld a, [hl-]                                   ; $4c6e: $3a
    inc b                                         ; $4c6f: $04
    nop                                           ; $4c70: $00
    inc bc                                        ; $4c71: $03
    dec b                                         ; $4c72: $05
    ld e, e                                       ; $4c73: $5b
    ld b, d                                       ; $4c74: $42
    xor l                                         ; $4c75: $ad
    and c                                         ; $4c76: $a1
    ld d, [hl]                                    ; $4c77: $56
    ld d, a                                       ; $4c78: $57
    ld [bc], a                                    ; $4c79: $02
    xor a                                         ; $4c7a: $af
    jr c, @-$37                                   ; $4c7b: $38 $c7

    daa                                           ; $4c7d: $27
    ret nc                                        ; $4c7e: $d0

    ld e, a                                       ; $4c7f: $5f
    sbc d                                         ; $4c80: $9a
    dec b                                         ; $4c81: $05
    ld [hl], a                                    ; $4c82: $77
    nop                                           ; $4c83: $00
    add b                                         ; $4c84: $80
    xor e                                         ; $4c85: $ab
    ld d, b                                       ; $4c86: $50
    ld d, l                                       ; $4c87: $55
    ldh [$ea], a                                  ; $4c88: $e0 $ea
    db $f4                                        ; $4c8a: $f4
    rra                                           ; $4c8b: $1f
    inc e                                         ; $4c8c: $1c
    xor $f0                                       ; $4c8d: $ee $f0
    rrca                                          ; $4c8f: $0f
    jr nc, jr_0bb_4cf1                            ; $4c90: $30 $5f

    db $10                                        ; $4c92: $10
    ld c, b                                       ; $4c93: $48
    sbc [hl]                                      ; $4c94: $9e
    ld c, $f8                                     ; $4c95: $0e $f8
    dec b                                         ; $4c97: $05
    call $3fbd                                    ; $4c98: $cd $bd $3f
    ld a, b                                       ; $4c9b: $78
    add hl, bc                                    ; $4c9c: $09
    cpl                                           ; $4c9d: $2f
    ldh a, [rP1]                                  ; $4c9e: $f0 $00
    ld a, [hl+]                                   ; $4ca0: $2a
    add sp, $2d                                   ; $4ca1: $e8 $2d
    rst $30                                       ; $4ca3: $f7
    ld a, [hl-]                                   ; $4ca4: $3a
    rlca                                          ; $4ca5: $07
    di                                            ; $4ca6: $f3
    inc b                                         ; $4ca7: $04
    ld [$0efc], sp                                ; $4ca8: $08 $fc $0e
    add d                                         ; $4cab: $82
    ld c, $20                                     ; $4cac: $0e $20
    ccf                                           ; $4cae: $3f
    inc c                                         ; $4caf: $0c
    inc de                                        ; $4cb0: $13
    db $ec                                        ; $4cb1: $ec
    dec c                                         ; $4cb2: $0d
    db $fc                                        ; $4cb3: $fc
    ld c, [hl]                                    ; $4cb4: $4e
    ld [$403f], sp                                ; $4cb5: $08 $3f $40
    ld d, b                                       ; $4cb8: $50
    rst $28                                       ; $4cb9: $ef
    xor d                                         ; $4cba: $aa
    rrca                                          ; $4cbb: $0f
    rst $00                                       ; $4cbc: $c7
    jr c, jr_0bb_4c42                             ; $4cbd: $38 $83

    nop                                           ; $4cbf: $00
    ld b, h                                       ; $4cc0: $44
    dec b                                         ; $4cc1: $05
    cp [hl]                                       ; $4cc2: $be
    ld [bc], a                                    ; $4cc3: $02
    cp a                                          ; $4cc4: $bf
    ld bc, $80bf                                  ; $4cc5: $01 $bf $80
    ld c, a                                       ; $4cc8: $4f
    ld e, a                                       ; $4cc9: $5f
    ld c, [hl]                                    ; $4cca: $4e
    ld e, b                                       ; $4ccb: $58
    xor a                                         ; $4ccc: $af
    ret nz                                        ; $4ccd: $c0

    ld d, b                                       ; $4cce: $50
    ld [$0f88], sp                                ; $4ccf: $08 $88 $0f
    sub h                                         ; $4cd2: $94
    inc b                                         ; $4cd3: $04
    ld [bc], a                                    ; $4cd4: $02
    db $10                                        ; $4cd5: $10
    add b                                         ; $4cd6: $80
    ld l, d                                       ; $4cd7: $6a
    rrca                                          ; $4cd8: $0f
    rrca                                          ; $4cd9: $0f
    jr nc, jr_0bb_4ce3                            ; $4cda: $30 $07

    ld hl, sp+$02                                 ; $4cdc: $f8 $02
    db $fd                                        ; $4cde: $fd
    ld a, [bc]                                    ; $4cdf: $0a
    add h                                         ; $4ce0: $84
    ld [bc], a                                    ; $4ce1: $02
    nop                                           ; $4ce2: $00

jr_0bb_4ce3:
    ld d, $f9                                     ; $4ce3: $16 $f9
    ldh [$1f], a                                  ; $4ce5: $e0 $1f
    or c                                          ; $4ce7: $b1
    ld b, $37                                     ; $4ce8: $06 $37
    ld d, b                                       ; $4cea: $50
    nop                                           ; $4ceb: $00
    cp b                                          ; $4cec: $b8
    jr z, @+$21                                   ; $4ced: $28 $1f

    ld [hl], l                                    ; $4cef: $75
    ld l, a                                       ; $4cf0: $6f

jr_0bb_4cf1:
    jr z, jr_0bb_4d6a                             ; $4cf1: $28 $77

    ld a, a                                       ; $4cf3: $7f
    ld b, b                                       ; $4cf4: $40
    ld b, b                                       ; $4cf5: $40
    ld c, $02                                     ; $4cf6: $0e $02
    ldh [$1f], a                                  ; $4cf8: $e0 $1f
    ldh [$5f], a                                  ; $4cfa: $e0 $5f
    ldh [$a7], a                                  ; $4cfc: $e0 $a7
    ld bc, $4bd8                                  ; $4cfe: $01 $d8 $4b
    adc h                                         ; $4d01: $8c
    add l                                         ; $4d02: $85
    ld a, $3a                                     ; $4d03: $3e $3a
    ld a, a                                       ; $4d05: $7f
    sub b                                         ; $4d06: $90
    jr jr_0bb_4d69                                ; $4d07: $18 $60

    or $d2                                        ; $4d09: $f6 $d2
    inc b                                         ; $4d0b: $04
    ld b, b                                       ; $4d0c: $40
    jr z, @-$0e                                   ; $4d0d: $28 $f0

    rrca                                          ; $4d0f: $0f
    ldh [rNR11], a                                ; $4d10: $e0 $11
    jr nz, jr_0bb_4d14                            ; $4d12: $20 $00

jr_0bb_4d14:
    rst $18                                       ; $4d14: $df
    ld de, $2923                                  ; $4d15: $11 $23 $29
    di                                            ; $4d18: $f3
    rla                                           ; $4d19: $17
    ld a, [$0015]                                 ; $4d1a: $fa $15 $00
    ld a, [$0bf0]                                 ; $4d1d: $fa $f0 $0b
    ld [hl], b                                    ; $4d20: $70
    adc e                                         ; $4d21: $8b
    or b                                          ; $4d22: $b0
    srl d                                         ; $4d23: $cb $3a
    nop                                           ; $4d25: $00
    rst $00                                       ; $4d26: $c7
    db $dd                                        ; $4d27: $dd
    and e                                         ; $4d28: $a3
    adc d                                         ; $4d29: $8a
    ld [hl], l                                    ; $4d2a: $75
    dec b                                         ; $4d2b: $05
    xor d                                         ; $4d2c: $aa
    ld [bc], a                                    ; $4d2d: $02
    nop                                           ; $4d2e: $00
    and l                                         ; $4d2f: $a5
    ld d, $f9                                     ; $4d30: $16 $f9
    inc d                                         ; $4d32: $14
    ld a, [$fa14]                                 ; $4d33: $fa $14 $fa
    inc l                                         ; $4d36: $2c
    nop                                           ; $4d37: $00
    ld a, [c]                                     ; $4d38: $f2
    call nc, Call_000_25eb                        ; $4d39: $d4 $eb $25
    jp Jump_000_1dc2                              ; $4d3c: $c3 $c2 $1d


    sub l                                         ; $4d3f: $95
    ld e, a                                       ; $4d40: $5f
    ld a, $84                                     ; $4d41: $3e $84
    rlca                                          ; $4d43: $07
    add b                                         ; $4d44: $80
    ld [bc], a                                    ; $4d45: $02
    nop                                           ; $4d46: $00
    xor d                                         ; $4d47: $aa
    ld [bc], a                                    ; $4d48: $02
    adc d                                         ; $4d49: $8a
    inc e                                         ; $4d4a: $1c
    cp h                                          ; $4d4b: $bc
    ld l, $24                                     ; $4d4c: $2e $24
    dec c                                         ; $4d4e: $0d
    add [hl]                                      ; $4d4f: $86
    sub h                                         ; $4d50: $94
    ld [$eb10], sp                                ; $4d51: $08 $10 $eb
    ldh a, [$eb]                                  ; $4d54: $f0 $eb
    inc b                                         ; $4d56: $04
    nop                                           ; $4d57: $00
    or h                                          ; $4d58: $b4
    ld bc, $000b                                  ; $4d59: $01 $0b $00
    rst $30                                       ; $4d5c: $f7
    inc d                                         ; $4d5d: $14
    db $eb                                        ; $4d5e: $eb
    inc de                                        ; $4d5f: $13
    add sp, $50                                   ; $4d60: $e8 $50
    ldh [$50], a                                  ; $4d62: $e0 $50
    nop                                           ; $4d64: $00
    rst $28                                       ; $4d65: $ef
    ld d, c                                       ; $4d66: $51
    xor $52                                       ; $4d67: $ee $52

jr_0bb_4d69:
    db $ed                                        ; $4d69: $ed

jr_0bb_4d6a:
    ld e, h                                       ; $4d6a: $5c
    ld [$00ac], a                                 ; $4d6b: $ea $ac $00
    jp nc, $8a74                                  ; $4d6e: $d2 $74 $8a

    xor h                                         ; $4d71: $ac
    ld [hl], d                                    ; $4d72: $72
    ld b, b                                       ; $4d73: $40
    xor a                                         ; $4d74: $af
    ldh [rP1], a                                  ; $4d75: $e0 $00
    rla                                           ; $4d77: $17
    rla                                           ; $4d78: $17
    rst $28                                       ; $4d79: $ef
    ld [$1717], sp                                ; $4d7a: $08 $17 $17

jr_0bb_4d7d:
    ld hl, sp+$14                                 ; $4d7d: $f8 $14
    adc e                                         ; $4d7f: $8b
    ld [$1703], a                                 ; $4d80: $ea $03 $17
    ei                                            ; $4d83: $fb
    xor a                                         ; $4d84: $af
    ld e, b                                       ; $4d85: $58
    rla                                           ; $4d86: $17
    xor a                                         ; $4d87: $af
    add h                                         ; $4d88: $84
    inc c                                         ; $4d89: $0c
    jp c, Jump_0bb_7a04                           ; $4d8a: $da $04 $7a

    rst $18                                       ; $4d8d: $df
    jr nc, @+$13                                  ; $4d8e: $30 $11

    jr jr_0bb_4d9f                                ; $4d90: $18 $0d

    inc h                                         ; $4d92: $24
    dec b                                         ; $4d93: $05
    ld [c], a                                     ; $4d94: $e2
    nop                                           ; $4d95: $00
    ei                                            ; $4d96: $fb
    ld h, [hl]                                    ; $4d97: $66
    ld de, $0502                                  ; $4d98: $11 $02 $05
    db $fc                                        ; $4d9b: $fc
    ld bc, $0206                                  ; $4d9c: $01 $06 $02

jr_0bb_4d9f:
    rst $38                                       ; $4d9f: $ff
    cp $0d                                        ; $4da0: $fe $0d
    cp $40                                        ; $4da2: $fe $40
    inc bc                                        ; $4da4: $03
    nop                                           ; $4da5: $00
    ld a, a                                       ; $4da6: $7f
    add b                                         ; $4da7: $80

jr_0bb_4da8:
    jr nz, @+$61                                  ; $4da8: $20 $5f

    ld b, b                                       ; $4daa: $40
    and b                                         ; $4dab: $a0
    and b                                         ; $4dac: $a0
    ld d, a                                       ; $4dad: $57
    ld [bc], a                                    ; $4dae: $02
    db $10                                        ; $4daf: $10
    db $eb                                        ; $4db0: $eb
    jr jr_0bb_4da8                                ; $4db1: $18 $f5

    sub l                                         ; $4db3: $95
    ei                                            ; $4db4: $fb
    add [hl]                                      ; $4db5: $86
    add hl, bc                                    ; $4db6: $09

jr_0bb_4db7:
    ld a, b                                       ; $4db7: $78
    nop                                           ; $4db8: $00
    add l                                         ; $4db9: $85
    jr nc, jr_0bb_4e07                            ; $4dba: $30 $4b

    ld d, b                                       ; $4dbc: $50
    rst $20                                       ; $4dbd: $e7
    jr z, jr_0bb_4db7                             ; $4dbe: $28 $f7

    dec d                                         ; $4dc0: $15
    ld [bc], a                                    ; $4dc1: $02
    ei                                            ; $4dc2: $fb
    ld a, [$2ffd]                                 ; $4dc3: $fa $fd $2f
    ld b, b                                       ; $4dc6: $40
    cpl                                           ; $4dc7: $2f
    xor d                                         ; $4dc8: $aa
    rlca                                          ; $4dc9: $07
    xor a                                         ; $4dca: $af
    and b                                         ; $4dcb: $a0
    cp d                                          ; $4dcc: $ba
    ld [bc], a                                    ; $4dcd: $02
    rst $18                                       ; $4dce: $df
    ld d, b                                       ; $4dcf: $50
    ld [$6e00], sp                                ; $4dd0: $08 $00 $6e
    pop af                                        ; $4dd3: $f1
    sbc l                                         ; $4dd4: $9d
    ld h, d                                       ; $4dd5: $62
    jr nz, jr_0bb_4e53                            ; $4dd6: $20 $7b

    ld b, $80                                     ; $4dd8: $06 $80
    dec sp                                        ; $4dda: $3b
    pop bc                                        ; $4ddb: $c1
    cp [hl]                                       ; $4ddc: $be
    add b                                         ; $4ddd: $80
    ld b, e                                       ; $4dde: $43
    ld d, l                                       ; $4ddf: $55
    ld bc, $bedf                                  ; $4de0: $01 $df $be
    ld a, a                                       ; $4de3: $7f
    ld b, c                                       ; $4de4: $41
    cp [hl]                                       ; $4de5: $be
    ld a, [hl]                                    ; $4de6: $7e
    add c                                         ; $4de7: $81
    add b                                         ; $4de8: $80
    dec bc                                        ; $4de9: $0b
    inc bc                                        ; $4dea: $03
    ld a, h                                       ; $4deb: $7c
    rst $38                                       ; $4dec: $ff
    rst $38                                       ; $4ded: $ff
    ld a, [hl]                                    ; $4dee: $7e
    ld a, [hl]                                    ; $4def: $7e
    cp h                                          ; $4df0: $bc
    ldh a, [$0a]                                  ; $4df1: $f0 $0a
    add b                                         ; $4df3: $80
    dec de                                        ; $4df4: $1b
    ld [bc], a                                    ; $4df5: $02
    rla                                           ; $4df6: $17
    ld hl, sp-$57                                 ; $4df7: $f8 $a9
    halt                                          ; $4df9: $76
    ld d, c                                       ; $4dfa: $51
    jr z, jr_0bb_4d7d                             ; $4dfb: $28 $80

    dec sp                                        ; $4dfd: $3b
    dec b                                         ; $4dfe: $05
    nop                                           ; $4dff: $00
    cp [hl]                                       ; $4e00: $be
    ld a, [de]                                    ; $4e01: $1a
    db $fd                                        ; $4e02: $fd
    ld d, [hl]                                    ; $4e03: $56

jr_0bb_4e04:
    ei                                            ; $4e04: $fb
    adc d                                         ; $4e05: $8a
    ld [hl], a                                    ; $4e06: $77

jr_0bb_4e07:
    ld d, c                                       ; $4e07: $51
    ld [$baae], sp                                ; $4e08: $08 $ae $ba
    push bc                                       ; $4e0b: $c5
    ld d, h                                       ; $4e0c: $54
    add b                                         ; $4e0d: $80
    inc bc                                        ; $4e0e: $03
    or [hl]                                       ; $4e0f: $b6
    ld a, a                                       ; $4e10: $7f
    push de                                       ; $4e11: $d5
    ld bc, $b67e                                  ; $4e12: $01 $7e $b6
    ld a, h                                       ; $4e15: $7c
    push de                                       ; $4e16: $d5
    jr c, jr_0bb_4e04                             ; $4e17: $38 $eb

    db $10                                        ; $4e19: $10
    add b                                         ; $4e1a: $80
    dec de                                        ; $4e1b: $1b
    nop                                           ; $4e1c: $00
    jr nc, @-$13                                  ; $4e1d: $30 $eb

    ret c                                         ; $4e1f: $d8

    ld h, l                                       ; $4e20: $65
    ld h, h                                       ; $4e21: $64
    ld [de], a                                    ; $4e22: $12
    and d                                         ; $4e23: $a2
    dec c                                         ; $4e24: $0d
    jr nz, @-$2d                                  ; $4e25: $20 $d1

    ld c, $80                                     ; $4e27: $0e $80
    dec de                                        ; $4e29: $1b
    inc d                                         ; $4e2a: $14
    ld a, [$fa0c]                                 ; $4e2b: $fa $0c $fa
    ld a, [bc]                                    ; $4e2e: $0a
    nop                                           ; $4e2f: $00
    db $fd                                        ; $4e30: $fd
    dec bc                                        ; $4e31: $0b
    ld a, h                                       ; $4e32: $7c
    halt                                          ; $4e33: $76
    ld sp, hl                                     ; $4e34: $f9
    adc c                                         ; $4e35: $89
    halt                                          ; $4e36: $76
    pop af                                        ; $4e37: $f1
    nop                                           ; $4e38: $00
    adc a                                         ; $4e39: $8f
    ld hl, $14df                                  ; $4e3a: $21 $df $14
    ei                                            ; $4e3d: $fb
    rla                                           ; $4e3e: $17
    ld hl, sp-$12                                 ; $4e3f: $f8 $ee
    ld [bc], a                                    ; $4e41: $02
    db $f4                                        ; $4e42: $f4

jr_0bb_4e43:
    dec e                                         ; $4e43: $1d
    add sp, -$15                                  ; $4e44: $e8 $eb
    db $10                                        ; $4e46: $10
    rst $30                                       ; $4e47: $f7
    or $07                                        ; $4e48: $f6 $07
    ld e, a                                       ; $4e4a: $5f
    db $10                                        ; $4e4b: $10
    add b                                         ; $4e4c: $80
    pop bc                                        ; $4e4d: $c1
    ld l, $80                                     ; $4e4e: $2e $80
    ld e, e                                       ; $4e50: $5b
    ld d, [hl]                                    ; $4e51: $56
    ld sp, hl                                     ; $4e52: $f9

jr_0bb_4e53:
    or a                                          ; $4e53: $b7
    ld a, b                                       ; $4e54: $78
    ld [bc], a                                    ; $4e55: $02
    ld d, l                                       ; $4e56: $55
    cp d                                          ; $4e57: $ba
    db $ec                                        ; $4e58: $ec
    db $d3                                        ; $4e59: $d3
    jr jr_0bb_4e43                                ; $4e5a: $18 $e7

    add b                                         ; $4e5c: $80
    dec de                                        ; $4e5d: $1b
    dec b                                         ; $4e5e: $05
    ld bc, $fbfa                                  ; $4e5f: $01 $fa $fb
    inc b                                         ; $4e62: $04
    ld [hl], $e8                                  ; $4e63: $36 $e8
    adc l                                         ; $4e65: $8d
    ld [hl], b                                    ; $4e66: $70
    add b                                         ; $4e67: $80
    dec hl                                        ; $4e68: $2b
    sub d                                         ; $4e69: $92
    ld a, $3a                                     ; $4e6a: $3e $3a
    push af                                       ; $4e6c: $f5
    ld bc, $096a                                  ; $4e6d: $01 $6a $09
    rst $38                                       ; $4e70: $ff
    nop                                           ; $4e71: $00
    ld [c], a                                     ; $4e72: $e2
    ld bc, $8021                                  ; $4e73: $01 $21 $80
    sub d                                         ; $4e76: $92
    dec b                                         ; $4e77: $05
    ccf                                           ; $4e78: $3f
    ld h, b                                       ; $4e79: $60
    rst $18                                       ; $4e7a: $df
    rst $38                                       ; $4e7b: $ff
    ldh [rNR10], a                                ; $4e7c: $e0 $10
    rst $20                                       ; $4e7e: $e7
    nop                                           ; $4e7f: $00
    rst $38                                       ; $4e80: $ff
    nop                                           ; $4e81: $00
    rst $30                                       ; $4e82: $f7
    ld [$9d6a], sp                                ; $4e83: $08 $6a $9d
    and [hl]                                      ; $4e86: $a6
    push bc                                       ; $4e87: $c5
    nop                                           ; $4e88: $00
    ld c, [hl]                                    ; $4e89: $4e
    xor l                                         ; $4e8a: $ad
    push bc                                       ; $4e8b: $c5
    ld l, $4d                                     ; $4e8c: $2e $4d
    xor [hl]                                      ; $4e8e: $ae
    push de                                       ; $4e8f: $d5
    cp [hl]                                       ; $4e90: $be
    db $fd                                        ; $4e91: $fd
    adc $56                                       ; $4e92: $ce $56
    ld b, b                                       ; $4e94: $40
    ld b, $8c                                     ; $4e95: $06 $8c
    ld c, d                                       ; $4e97: $4a
    db $e4                                        ; $4e98: $e4
    dec c                                         ; $4e99: $0d
    ld a, $1a                                     ; $4e9a: $3e $1a
    sub b                                         ; $4e9c: $90
    dec c                                         ; $4e9d: $0d
    rst $30                                       ; $4e9e: $f7
    sub b                                         ; $4e9f: $90
    dec b                                         ; $4ea0: $05
    nop                                           ; $4ea1: $00
    rst $30                                       ; $4ea2: $f7
    inc bc                                        ; $4ea3: $03
    jp c, Jump_000_2a3f                           ; $4ea4: $da $3f $2a

    rst $18                                       ; $4ea7: $df
    ld d, c                                       ; $4ea8: $51
    ld l, [hl]                                    ; $4ea9: $6e
    nop                                           ; $4eaa: $00
    ld a, [hl+]                                   ; $4eab: $2a
    db $f4                                        ; $4eac: $f4
    ld d, h                                       ; $4ead: $54
    ld a, [$fb64]                                 ; $4eae: $fa $64 $fb
    ld d, l                                       ; $4eb1: $55
    ei                                            ; $4eb2: $fb
    nop                                           ; $4eb3: $00
    ld l, [hl]                                    ; $4eb4: $6e
    pop af                                        ; $4eb5: $f1
    ldh [rNR22], a                                ; $4eb6: $e0 $17
    and b                                         ; $4eb8: $a0
    ld d, a                                       ; $4eb9: $57
    inc d                                         ; $4eba: $14
    xor a                                         ; $4ebb: $af
    nop                                           ; $4ebc: $00
    dec bc                                        ; $4ebd: $0b
    sub a                                         ; $4ebe: $97
    inc d                                         ; $4ebf: $14

jr_0bb_4ec0:
    ei                                            ; $4ec0: $fb
    ld l, a                                       ; $4ec1: $6f
    ldh a, [$5c]                                  ; $4ec2: $f0 $5c
    ld [c], a                                     ; $4ec4: $e2
    nop                                           ; $4ec5: $00
    jr c, @-$39                                   ; $4ec6: $38 $c5

    ccf                                           ; $4ec8: $3f
    ldh [rNR41], a                                ; $4ec9: $e0 $20
    rst $18                                       ; $4ecb: $df
    ld b, c                                       ; $4ecc: $41
    and e                                         ; $4ecd: $a3
    nop                                           ; $4ece: $00
    add b                                         ; $4ecf: $80
    ld a, a                                       ; $4ed0: $7f
    ld b, e                                       ; $4ed1: $43
    and a                                         ; $4ed2: $a7
    and d                                         ; $4ed3: $a2
    ld d, a                                       ; $4ed4: $57
    dec d                                         ; $4ed5: $15
    ld l, $3e                                     ; $4ed6: $2e $3e
    dec hl                                        ; $4ed8: $2b
    db $f4                                        ; $4ed9: $f4
    ld c, d                                       ; $4eda: $4a
    jr z, @-$66                                   ; $4edb: $28 $98

    dec l                                         ; $4edd: $2d
    ld a, [hl+]                                   ; $4ede: $2a
    ld [hl], $70                                  ; $4edf: $36 $70
    dec b                                         ; $4ee1: $05
    jr c, @+$10                                   ; $4ee2: $38 $0e

    jr nz, jr_0bb_4ef6                            ; $4ee4: $20 $10

    rst $10                                       ; $4ee6: $d7
    jr nz, jr_0bb_4ec0                            ; $4ee7: $20 $d7

    ldh [rSB], a                                  ; $4ee9: $e0 $01
    rst $30                                       ; $4eeb: $f7
    rrca                                          ; $4eec: $0f
    ld a, b                                       ; $4eed: $78
    ld [hl], l                                    ; $4eee: $75
    nop                                           ; $4eef: $00
    ld a, [$7488]                                 ; $4ef0: $fa $88 $74
    ld [hl], b                                    ; $4ef3: $70
    adc e                                         ; $4ef4: $8b
    and h                                         ; $4ef5: $a4

jr_0bb_4ef6:
    jp c, Jump_000_00a4                           ; $4ef6: $da $a4 $00

    jp c, $bd42                                   ; $4ef9: $da $42 $bd

    add l                                         ; $4efc: $85
    ld a, [hl]                                    ; $4efd: $7e
    dec bc                                        ; $4efe: $0b
    ld a, h                                       ; $4eff: $7c
    ld [hl], a                                    ; $4f00: $77
    ld bc, $8ff8                                  ; $4f01: $01 $f8 $8f
    ld [hl], b                                    ; $4f04: $70
    ld [hl], b                                    ; $4f05: $70
    adc a                                         ; $4f06: $8f
    ld [bc], a                                    ; $4f07: $02
    rst $38                                       ; $4f08: $ff
    jp z, $0019                                   ; $4f09: $ca $19 $00

    db $fc                                        ; $4f0c: $fc
    ld bc, $bb05                                  ; $4f0d: $01 $05 $bb
    ld [bc], a                                    ; $4f10: $02
    cp l                                          ; $4f11: $bd
    add c                                         ; $4f12: $81
    ld e, [hl]                                    ; $4f13: $5e
    ld a, [hl]                                    ; $4f14: $7e
    xor a                                         ; $4f15: $af
    rlca                                          ; $4f16: $07
    dec b                                         ; $4f17: $05
    jr nc, jr_0bb_4f68                            ; $4f18: $30 $4e

    jr z, @+$1d                                   ; $4f1a: $28 $1b

    sbc h                                         ; $4f1c: $9c
    nop                                           ; $4f1d: $00
    add $0d                                       ; $4f1e: $c6 $0d
    jp z, Jump_000_3105                           ; $4f20: $ca $05 $31

    nop                                           ; $4f23: $00
    jp z, Jump_0bb_6611                           ; $4f24: $ca $11 $66

    dec l                                         ; $4f27: $2d
    or $d6                                        ; $4f28: $f6 $d6
    db $ed                                        ; $4f2a: $ed
    db $fc                                        ; $4f2b: $fc
    nop                                           ; $4f2c: $00
    ld [bc], a                                    ; $4f2d: $02
    ld b, $f9                                     ; $4f2e: $06 $f9
    inc bc                                        ; $4f30: $03
    inc b                                         ; $4f31: $04
    dec b                                         ; $4f32: $05
    ld a, [hl]                                    ; $4f33: $7e
    ret nz                                        ; $4f34: $c0

    ld b, b                                       ; $4f35: $40
    ld hl, $0ed0                                  ; $4f36: $21 $d0 $0e
    dec b                                         ; $4f39: $05
    ld a, [hl]                                    ; $4f3a: $7e
    ld a, e                                       ; $4f3b: $7b
    db $fc                                        ; $4f3c: $fc
    dec b                                         ; $4f3d: $05
    ld hl, sp+$02                                 ; $4f3e: $f8 $02
    ld sp, hl                                     ; $4f40: $f9
    ld b, $3f                                     ; $4f41: $06 $3f
    rst $38                                       ; $4f43: $ff
    and b                                         ; $4f44: $a0
    rst $18                                       ; $4f45: $df
    inc c                                         ; $4f46: $0c
    ld [bc], a                                    ; $4f47: $02
    rla                                           ; $4f48: $17
    jr nz, jr_0bb_4f5b                            ; $4f49: $20 $10

    xor e                                         ; $4f4b: $ab
    ld hl, sp+$03                                 ; $4f4c: $f8 $03
    cp e                                          ; $4f4e: $bb
    ld b, $fd                                     ; $4f4f: $06 $fd
    and l                                         ; $4f51: $a5
    ld a, [hl]                                    ; $4f52: $7e
    ldh [$e6], a                                  ; $4f53: $e0 $e6
    nop                                           ; $4f55: $00
    add $06                                       ; $4f56: $c6 $06
    add b                                         ; $4f58: $80
    ld a, $e7                                     ; $4f59: $3e $e7

jr_0bb_4f5b:
    rrca                                          ; $4f5b: $0f
    ld c, a                                       ; $4f5c: $4f
    cp a                                          ; $4f5d: $bf
    ld e, a                                       ; $4f5e: $5f
    ld bc, $2f3f                                  ; $4f5f: $01 $3f $2f
    rst $18                                       ; $4f62: $df
    db $10                                        ; $4f63: $10
    rst $28                                       ; $4f64: $ef
    rrca                                          ; $4f65: $0f
    ldh a, [rNR41]                                ; $4f66: $f0 $20

jr_0bb_4f68:
    dec bc                                        ; $4f68: $0b
    nop                                           ; $4f69: $00
    ld l, d                                       ; $4f6a: $6a
    db $dd                                        ; $4f6b: $dd
    sub h                                         ; $4f6c: $94
    db $eb                                        ; $4f6d: $eb
    ret c                                         ; $4f6e: $d8

    rst $20                                       ; $4f6f: $e7
    or b                                          ; $4f70: $b0
    ret c                                         ; $4f71: $d8

    ld de, $9f68                                  ; $4f72: $11 $68 $9f
    push af                                       ; $4f75: $f5
    jr nz, jr_0bb_4f8b                            ; $4f76: $20 $13

    ld a, b                                       ; $4f78: $78
    add a                                         ; $4f79: $87
    ld b, b                                       ; $4f7a: $40
    call c, Call_000_0206                         ; $4f7b: $dc $06 $02
    ld d, e                                       ; $4f7e: $53
    rst $28                                       ; $4f7f: $ef
    xor b                                         ; $4f80: $a8
    rst $10                                       ; $4f81: $d7
    ld c, a                                       ; $4f82: $4f
    adc b                                         ; $4f83: $88
    jr nz, @+$0d                                  ; $4f84: $20 $0b

    ld l, a                                       ; $4f86: $6f
    xor $56                                       ; $4f87: $ee $56
    dec b                                         ; $4f89: $05
    sub d                                         ; $4f8a: $92

jr_0bb_4f8b:
    ld a, [bc]                                    ; $4f8b: $0a
    ret nz                                        ; $4f8c: $c0

    dec e                                         ; $4f8d: $1d
    rst $18                                       ; $4f8e: $df
    ld b, h                                       ; $4f8f: $44
    ld c, $12                                     ; $4f90: $0e $12
    rlca                                          ; $4f92: $07
    jr nc, jr_0bb_4fd0                            ; $4f93: $30 $3b

    ld e, a                                       ; $4f95: $5f
    ld bc, $30e0                                  ; $4f96: $01 $e0 $30
    rst $08                                       ; $4f99: $cf
    ld h, b                                       ; $4f9a: $60
    sub c                                         ; $4f9b: $91
    and b                                         ; $4f9c: $a0
    ld e, a                                       ; $4f9d: $5f
    jr nc, jr_0bb_4fcb                            ; $4f9e: $30 $2b

    ld [$8b70], sp                                ; $4fa0: $08 $70 $8b
    ldh a, [$0b]                                  ; $4fa3: $f0 $0b
    jr nc, @+$4d                                  ; $4fa5: $30 $4b

    ld [bc], a                                    ; $4fa7: $02
    cp a                                          ; $4fa8: $bf
    add c                                         ; $4fa9: $81
    ld bc, $df5f                                  ; $4faa: $01 $5f $df
    ccf                                           ; $4fad: $3f
    ld h, b                                       ; $4fae: $60
    rra                                           ; $4faf: $1f
    rra                                           ; $4fb0: $1f
    ldh [$b0], a                                  ; $4fb1: $e0 $b0

jr_0bb_4fb3:
    ld a, [de]                                    ; $4fb3: $1a
    inc c                                         ; $4fb4: $0c
    add b                                         ; $4fb5: $80
    ld a, a                                       ; $4fb6: $7f
    ld a, a                                       ; $4fb7: $7f
    add b                                         ; $4fb8: $80
    and h                                         ; $4fb9: $a4
    db $10                                        ; $4fba: $10
    or b                                          ; $4fbb: $b0
    ld [hl+], a                                   ; $4fbc: $22
    ld d, l                                       ; $4fbd: $55
    cp [hl]                                       ; $4fbe: $be
    nop                                           ; $4fbf: $00
    db $ed                                        ; $4fc0: $ed
    ld e, $75                                     ; $4fc1: $1e $75
    adc [hl]                                      ; $4fc3: $8e
    ld a, [hl-]                                   ; $4fc4: $3a
    ld b, l                                       ; $4fc5: $45
    ld d, h                                       ; $4fc6: $54
    db $e3                                        ; $4fc7: $e3
    add b                                         ; $4fc8: $80
    or b                                          ; $4fc9: $b0
    ld a, [de]                                    ; $4fca: $1a

jr_0bb_4fcb:
    ret nz                                        ; $4fcb: $c0

    rrca                                          ; $4fcc: $0f
    ld a, e                                       ; $4fcd: $7b
    ld a, [bc]                                    ; $4fce: $0a
    ld d, b                                       ; $4fcf: $50

jr_0bb_4fd0:
    rst $38                                       ; $4fd0: $ff
    ld bc, $0040                                  ; $4fd1: $01 $40 $00
    ld [bc], a                                    ; $4fd4: $02
    nop                                           ; $4fd5: $00
    add c                                         ; $4fd6: $81
    ld a, [hl]                                    ; $4fd7: $7e
    adc b                                         ; $4fd8: $88
    ld [hl], a                                    ; $4fd9: $77
    rlca                                          ; $4fda: $07
    ld b, h                                       ; $4fdb: $44
    dec hl                                        ; $4fdc: $2b
    jr nz, @+$05                                  ; $4fdd: $20 $03

    nop                                           ; $4fdf: $00
    ld bc, $1628                                  ; $4fe0: $01 $28 $16
    db $10                                        ; $4fe3: $10
    dec de                                        ; $4fe4: $1b
    db $10                                        ; $4fe5: $10
    add b                                         ; $4fe6: $80
    dec bc                                        ; $4fe7: $0b
    db $10                                        ; $4fe8: $10
    ld a, $c1                                     ; $4fe9: $3e $c1
    ld a, h                                       ; $4feb: $7c
    add e                                         ; $4fec: $83
    db $10                                        ; $4fed: $10
    rst $28                                       ; $4fee: $ef
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    jr nc, jr_0bb_4fb3                            ; $4ff1: $30 $c0

    ret nz                                        ; $4ff3: $c0

    ld [hl], b                                    ; $4ff4: $70
    ld [hl], b                                    ; $4ff5: $70
    ldh a, [$f0]                                  ; $4ff6: $f0 $f0
    ld a, b                                       ; $4ff8: $78
    ld b, b                                       ; $4ff9: $40
    ld a, b                                       ; $4ffa: $78
    jr nz, jr_0bb_5015                            ; $4ffb: $20 $18

    add b                                         ; $4ffd: $80
    ld h, b                                       ; $4ffe: $60
    nop                                           ; $4fff: $00

Jump_0bb_5000:
    add b                                         ; $5000: $80
    ld [bc], a                                    ; $5001: $02
    dec h                                         ; $5002: $25
    ld de, $5827                                  ; $5003: $11 $27 $58
    rst $38                                       ; $5006: $ff
    jr nc, jr_0bb_5029                            ; $5007: $30 $20

    ld b, e                                       ; $5009: $43
    inc l                                         ; $500a: $2c
    nop                                           ; $500b: $00
    ld b, d                                       ; $500c: $42
    nop                                           ; $500d: $00
    jr nz, jr_0bb_5054                            ; $500e: $20 $44

    xor e                                         ; $5010: $ab
    db $10                                        ; $5011: $10
    jr z, @+$01                                   ; $5012: $28 $ff

    nop                                           ; $5014: $00

jr_0bb_5015:
    ccf                                           ; $5015: $3f
    ret nz                                        ; $5016: $c0

    rra                                           ; $5017: $1f
    db $10                                        ; $5018: $10
    jr nz, @+$41                                  ; $5019: $20 $3f

    ld b, b                                       ; $501b: $40
    jr nz, jr_0bb_5046                            ; $501c: $20 $28

    ldh a, [$0a]                                  ; $501e: $f0 $0a
    ldh [rP1], a                                  ; $5020: $e0 $00
    inc [hl]                                      ; $5022: $34
    pop bc                                        ; $5023: $c1
    ld b, d                                       ; $5024: $42
    ld [hl], c                                    ; $5025: $71
    ld [$1860], sp                                ; $5026: $08 $60 $18

jr_0bb_5029:
    jr @+$71                                      ; $5029: $18 $6f

    nop                                           ; $502b: $00
    ld b, b                                       ; $502c: $40
    nop                                           ; $502d: $00
    add hl, bc                                    ; $502e: $09
    ret nc                                        ; $502f: $d0

    ld hl, $06f9                                  ; $5030: $21 $f9 $06
    ld [hl], b                                    ; $5033: $70
    jr jr_0bb_50ae                                ; $5034: $18 $78

    add b                                         ; $5036: $80
    rrca                                          ; $5037: $0f
    nop                                           ; $5038: $00
    db $10                                        ; $5039: $10
    ld bc, $ae11                                  ; $503a: $01 $11 $ae
    ld d, b                                       ; $503d: $50
    jr z, jr_0bb_5044                             ; $503e: $28 $04

    ld c, b                                       ; $5040: $48
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    ld [bc], a                                    ; $5043: $02

jr_0bb_5044:
    add b                                         ; $5044: $80
    nop                                           ; $5045: $00

jr_0bb_5046:
    add b                                         ; $5046: $80
    ld [hl], c                                    ; $5047: $71
    di                                            ; $5048: $f3
    inc c                                         ; $5049: $0c
    sub b                                         ; $504a: $90
    jr z, jr_0bb_5090                             ; $504b: $28 $43

    nop                                           ; $504d: $00
    inc b                                         ; $504e: $04
    inc bc                                        ; $504f: $03
    ld [bc], a                                    ; $5050: $02
    inc bc                                        ; $5051: $03
    ld a, h                                       ; $5052: $7c
    ld a, a                                       ; $5053: $7f

jr_0bb_5054:
    add b                                         ; $5054: $80
    db $fd                                        ; $5055: $fd
    ld bc, $d8fe                                  ; $5056: $01 $fe $d8
    ldh [$c0], a                                  ; $5059: $e0 $c0
    add b                                         ; $505b: $80
    ei                                            ; $505c: $fb
    ret nz                                        ; $505d: $c0

    and e                                         ; $505e: $a3

jr_0bb_505f:
    jr z, jr_0bb_5061                             ; $505f: $28 $00

jr_0bb_5061:
    rra                                           ; $5061: $1f
    rrca                                          ; $5062: $0f
    ld bc, $7000                                  ; $5063: $01 $00 $70
    nop                                           ; $5066: $00
    ldh a, [$7a]                                  ; $5067: $f0 $7a
    add b                                         ; $5069: $80
    or e                                          ; $506a: $b3
    jr z, jr_0bb_505f                             ; $506b: $28 $f2

    dec c                                         ; $506d: $0d
    ld [c], a                                     ; $506e: $e2
    dec e                                         ; $506f: $1d
    ret nz                                        ; $5070: $c0

    ccf                                           ; $5071: $3f
    and $00                                       ; $5072: $e6 $00
    add hl, de                                    ; $5074: $19

jr_0bb_5075:
    ldh [$1f], a                                  ; $5075: $e0 $1f
    add c                                         ; $5077: $81
    ld a, [hl]                                    ; $5078: $7e
    pop bc                                        ; $5079: $c1
    ld a, $e0                                     ; $507a: $3e $e0
    ld b, c                                       ; $507c: $41
    rra                                           ; $507d: $1f
    ldh a, [$28]                                  ; $507e: $f0 $28
    cp $fc                                        ; $5080: $fe $fc
    ld [$03f0], sp                                ; $5082: $08 $f0 $03
    jp c, $8008                                   ; $5085: $da $08 $80

    ld bc, $f401                                  ; $5088: $01 $01 $f4
    pop hl                                        ; $508b: $e1
    ldh [$80], a                                  ; $508c: $e0 $80
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00

jr_0bb_5090:
    inc a                                         ; $5090: $3c
    jr z, jr_0bb_50cf                             ; $5091: $28 $3c

    jp $2010                                      ; $5093: $c3 $10 $20


    xor a                                         ; $5096: $af
    ld b, l                                       ; $5097: $45
    ld [$f200], sp                                ; $5098: $08 $00 $f2
    ld h, d                                       ; $509b: $62
    ld h, c                                       ; $509c: $61
    adc a                                         ; $509d: $8f
    jr nz, jr_0bb_50c0                            ; $509e: $20 $20

    inc h                                         ; $50a0: $24
    ld de, $207f                                  ; $50a1: $11 $7f $20
    rra                                           ; $50a4: $1f
    ret nz                                        ; $50a5: $c0

    db $10                                        ; $50a6: $10
    ld c, b                                       ; $50a7: $48
    add b                                         ; $50a8: $80
    inc de                                        ; $50a9: $13
    ld hl, $ffff                                  ; $50aa: $21 $ff $ff
    db $fd                                        ; $50ad: $fd

jr_0bb_50ae:
    cp $fc                                        ; $50ae: $fe $fc
    ld hl, sp-$01                                 ; $50b0: $f8 $ff
    ld b, b                                       ; $50b2: $40
    db $fd                                        ; $50b3: $fd
    inc hl                                        ; $50b4: $23
    add hl, hl                                    ; $50b5: $29
    rst $18                                       ; $50b6: $df
    ccf                                           ; $50b7: $3f
    dec c                                         ; $50b8: $0d
    inc bc                                        ; $50b9: $03
    ld sp, $2000                                  ; $50ba: $31 $00 $20
    rst $38                                       ; $50bd: $ff
    or a                                          ; $50be: $b7
    inc sp                                        ; $50bf: $33

jr_0bb_50c0:
    add hl, hl                                    ; $50c0: $29
    jp $503c                                      ; $50c1: $c3 $3c $50


    xor a                                         ; $50c4: $af
    adc b                                         ; $50c5: $88
    jr jr_0bb_50df                                ; $50c6: $18 $17

    nop                                           ; $50c8: $00
    ld b, $50                                     ; $50c9: $06 $50
    ld c, c                                       ; $50cb: $49
    ld l, c                                       ; $50cc: $69
    add hl, bc                                    ; $50cd: $09
    db $fc                                        ; $50ce: $fc

jr_0bb_50cf:
    inc bc                                        ; $50cf: $03
    ret nz                                        ; $50d0: $c0

    ld a, [de]                                    ; $50d1: $1a
    inc l                                         ; $50d2: $2c
    db $ec                                        ; $50d3: $ec
    inc de                                        ; $50d4: $13
    jr nc, jr_0bb_50f0                            ; $50d5: $30 $19

    ld [hl], $01                                  ; $50d7: $36 $01
    add $70                                       ; $50d9: $c6 $70
    ld bc, $2064                                  ; $50db: $01 $64 $20
    ld h, h                                       ; $50de: $64

jr_0bb_50df:
    sbc e                                         ; $50df: $9b
    db $10                                        ; $50e0: $10
    jr z, jr_0bb_5122                             ; $50e1: $28 $3f

    ret nz                                        ; $50e3: $c0

    inc c                                         ; $50e4: $0c
    inc sp                                        ; $50e5: $33
    nop                                           ; $50e6: $00
    jr jr_0bb_5075                                ; $50e7: $18 $8c

    adc h                                         ; $50e9: $8c
    ld [hl], e                                    ; $50ea: $73
    jr nz, jr_0bb_5115                            ; $50eb: $20 $28

    add b                                         ; $50ed: $80
    add hl, sp                                    ; $50ee: $39
    ld a, [bc]                                    ; $50ef: $0a

jr_0bb_50f0:
    ldh a, [$3d]                                  ; $50f0: $f0 $3d
    nop                                           ; $50f2: $00
    ret nz                                        ; $50f3: $c0

    ld e, c                                       ; $50f4: $59
    and b                                         ; $50f5: $a0
    ld a, [bc]                                    ; $50f6: $0a
    ldh a, [$38]                                  ; $50f7: $f0 $38
    ret nz                                        ; $50f9: $c0

    sbc e                                         ; $50fa: $9b
    ld bc, $8d60                                  ; $50fb: $01 $60 $8d
    ld [hl], b                                    ; $50fe: $70

Call_0bb_50ff:
    rrca                                          ; $50ff: $0f
    ldh a, [rIE]                                  ; $5100: $f0 $ff
    ei                                            ; $5102: $fb
    ld [bc], a                                    ; $5103: $02
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    ld sp, hl                                     ; $5106: $f9
    rst $38                                       ; $5107: $ff
    ldh a, [rIE]                                  ; $5108: $f0 $ff
    reti                                          ; $510a: $d9


    rst $38                                       ; $510b: $ff
    sub d                                         ; $510c: $92
    rst $38                                       ; $510d: $ff
    ld b, b                                       ; $510e: $40
    ret nc                                        ; $510f: $d0

    or c                                          ; $5110: $b1
    jr nc, jr_0bb_5192                            ; $5111: $30 $7f

    ld a, a                                       ; $5113: $7f
    cp a                                          ; $5114: $bf

jr_0bb_5115:
    ccf                                           ; $5115: $3f
    rst $38                                       ; $5116: $ff
    cp a                                          ; $5117: $bf
    nop                                           ; $5118: $00
    ld a, a                                       ; $5119: $7f
    rst $18                                       ; $511a: $df
    ccf                                           ; $511b: $3f
    rra                                           ; $511c: $1f
    db $fc                                        ; $511d: $fc
    rra                                           ; $511e: $1f
    db $fd                                        ; $511f: $fd
    rra                                           ; $5120: $1f
    ld b, b                                       ; $5121: $40

jr_0bb_5122:
    ld hl, sp+$06                                 ; $5122: $f8 $06
    nop                                           ; $5124: $00
    ld sp, hl                                     ; $5125: $f9
    rra                                           ; $5126: $1f
    ldh a, [$1f]                                  ; $5127: $f0 $1f
    ldh [$3f], a                                  ; $5129: $e0 $3f
    push hl                                       ; $512b: $e5
    jr z, jr_0bb_512f                             ; $512c: $28 $01

    nop                                           ; $512e: $00

jr_0bb_512f:
    ld hl, $0802                                  ; $512f: $21 $02 $08
    db $fd                                        ; $5132: $fd
    db $fc                                        ; $5133: $fc
    db $dd                                        ; $5134: $dd
    jr z, @+$01                                   ; $5135: $28 $ff

    ld l, $18                                     ; $5137: $2e $18
    nop                                           ; $5139: $00
    ld e, a                                       ; $513a: $5f
    cp a                                          ; $513b: $bf
    inc b                                         ; $513c: $04
    ld a, e                                       ; $513d: $7b
    ld b, h                                       ; $513e: $44
    dec sp                                        ; $513f: $3b
    ld b, c                                       ; $5140: $41
    ld a, $04                                     ; $5141: $3e $04
    jr nc, jr_0bb_5154                            ; $5143: $30 $0f

    nop                                           ; $5145: $00
    inc e                                         ; $5146: $1c
    ld bc, $1001                                  ; $5147: $01 $01 $10
    add e                                         ; $514a: $83
    ld a, h                                       ; $514b: $7c
    nop                                           ; $514c: $00
    jr @-$17                                      ; $514d: $18 $e7

    jr nz, @-$1f                                  ; $514f: $20 $df

    ld b, $f9                                     ; $5151: $06 $f9
    nop                                           ; $5153: $00

jr_0bb_5154:
    rst $38                                       ; $5154: $ff
    inc bc                                        ; $5155: $03
    ld de, $13ee                                  ; $5156: $11 $ee $13
    db $ec                                        ; $5159: $ec
    ld bc, $3bfe                                  ; $515a: $01 $fe $3b
    add hl, bc                                    ; $515d: $09
    jr c, jr_0bb_5168                             ; $515e: $38 $08

    ld b, b                                       ; $5160: $40
    ld a, [$003c]                                 ; $5161: $fa $3c $00
    ld hl, sp-$01                                 ; $5164: $f8 $ff
    ld hl, sp-$09                                 ; $5166: $f8 $f7

jr_0bb_5168:
    ld a, a                                       ; $5168: $7f
    rst $38                                       ; $5169: $ff
    add b                                         ; $516a: $80
    ld l, d                                       ; $516b: $6a
    ld [$7f9f], sp                                ; $516c: $08 $9f $7f
    ld e, a                                       ; $516f: $5f
    ccf                                           ; $5170: $3f
    rst $38                                       ; $5171: $ff
    rrca                                          ; $5172: $0f
    sbc a                                         ; $5173: $9f
    nop                                           ; $5174: $00
    ccf                                           ; $5175: $3f
    xor a                                         ; $5176: $af
    rla                                           ; $5177: $17
    ld b, c                                       ; $5178: $41
    cp [hl]                                       ; $5179: $be
    ld b, d                                       ; $517a: $42
    cp l                                          ; $517b: $bd
    ld h, b                                       ; $517c: $60
    ld b, e                                       ; $517d: $43
    sbc a                                         ; $517e: $9f
    jr nc, jr_0bb_5189                            ; $517f: $30 $08

    add hl, de                                    ; $5181: $19
    and $03                                       ; $5182: $e6 $03
    db $fc                                        ; $5184: $fc
    jr nc, jr_0bb_5197                            ; $5185: $30 $10

    ld h, e                                       ; $5187: $63
    ld a, [de]                                    ; $5188: $1a

jr_0bb_5189:
    ld b, h                                       ; $5189: $44
    sbc a                                         ; $518a: $9f
    ld h, e                                       ; $518b: $63
    nop                                           ; $518c: $00
    sbc a                                         ; $518d: $9f
    rst $38                                       ; $518e: $ff
    rrca                                          ; $518f: $0f
    ld [hl], b                                    ; $5190: $70
    ld [bc], a                                    ; $5191: $02

jr_0bb_5192:
    rst $28                                       ; $5192: $ef
    rst $38                                       ; $5193: $ff
    ld de, $ffe7                                  ; $5194: $11 $e7 $ff

jr_0bb_5197:
    rst $00                                       ; $5197: $c7
    inc b                                         ; $5198: $04
    nop                                           ; $5199: $00
    jp $87ff                                      ; $519a: $c3 $ff $87


    inc b                                         ; $519d: $04
    nop                                           ; $519e: $00
    and h                                         ; $519f: $a4
    add c                                         ; $51a0: $81
    ld a, [hl-]                                   ; $51a1: $3a
    db $fd                                        ; $51a2: $fd
    ld b, [hl]                                    ; $51a3: $46
    ld bc, $fdf8                                  ; $51a4: $01 $f8 $fd
    sbc c                                         ; $51a7: $99
    nop                                           ; $51a8: $00
    db $fc                                        ; $51a9: $fc
    ei                                            ; $51aa: $fb
    add b                                         ; $51ab: $80
    ld d, c                                       ; $51ac: $51
    ld bc, $f2fe                                  ; $51ad: $01 $fe $f2
    db $fd                                        ; $51b0: $fd
    ld sp, hl                                     ; $51b1: $f9
    cp $f3                                        ; $51b2: $fe $f3
    db $fc                                        ; $51b4: $fc
    nop                                           ; $51b5: $00
    ld c, a                                       ; $51b6: $4f
    ccf                                           ; $51b7: $3f
    sbc a                                         ; $51b8: $9f
    ccf                                           ; $51b9: $3f
    ld a, a                                       ; $51ba: $7f
    ccf                                           ; $51bb: $3f
    rst $28                                       ; $51bc: $ef
    rra                                           ; $51bd: $1f
    nop                                           ; $51be: $00
    ccf                                           ; $51bf: $3f
    rra                                           ; $51c0: $1f
    rst $28                                       ; $51c1: $ef
    rra                                           ; $51c2: $1f
    or a                                          ; $51c3: $b7
    ld c, $57                                     ; $51c4: $0e $57
    ld c, $90                                     ; $51c6: $0e $90
    add b                                         ; $51c8: $80
    ld a, [bc]                                    ; $51c9: $0a
    add sp, $17                                   ; $51ca: $e8 $17
    xor d                                         ; $51cc: $aa
    ld [bc], a                                    ; $51cd: $02
    ld h, a                                       ; $51ce: $67
    sub b                                         ; $51cf: $90
    sub h                                         ; $51d0: $94
    ldh a, [$90]                                  ; $51d1: $f0 $90
    ld bc, $ff00                                  ; $51d3: $01 $00 $ff
    adc a                                         ; $51d6: $8f
    ld d, h                                       ; $51d7: $54
    nop                                           ; $51d8: $00
    add [hl]                                      ; $51d9: $86
    cp $8f                                        ; $51da: $fe $8f
    cp $01                                        ; $51dc: $fe $01
    rlca                                          ; $51de: $07
    db $fd                                        ; $51df: $fd
    ld b, $fd                                     ; $51e0: $06 $fd
    ld [bc], a                                    ; $51e2: $02
    db $fc                                        ; $51e3: $fc
    inc bc                                        ; $51e4: $03
    jp z, $8008                                   ; $51e5: $ca $08 $80

    sub b                                         ; $51e8: $90
    jr jr_0bb_525a                                ; $51e9: $18 $6f

    rra                                           ; $51eb: $1f
    adc a                                         ; $51ec: $8f
    ld a, $a7                                     ; $51ed: $3e $a7
    ld e, $fc                                     ; $51ef: $1e $fc
    nop                                           ; $51f1: $00
    rst $38                                       ; $51f2: $ff
    db $fc                                        ; $51f3: $fc
    ei                                            ; $51f4: $fb
    ld sp, hl                                     ; $51f5: $f9
    cp $f1                                        ; $51f6: $fe $f1
    cp $f0                                        ; $51f8: $fe $f0
    nop                                           ; $51fa: $00
    ld a, a                                       ; $51fb: $7f
    ld sp, hl                                     ; $51fc: $f9
    ld a, [hl]                                    ; $51fd: $7e
    di                                            ; $51fe: $f3
    inc a                                         ; $51ff: $3c
    and $79                                       ; $5200: $e6 $79
    ld c, a                                       ; $5202: $4f
    nop                                           ; $5203: $00
    cp a                                          ; $5204: $bf
    xor a                                         ; $5205: $af
    rra                                           ; $5206: $1f
    rst $10                                       ; $5207: $d7
    rrca                                          ; $5208: $0f
    sub e                                         ; $5209: $93
    rrca                                          ; $520a: $0f
    or a                                          ; $520b: $b7
    ld bc, $d70f                                  ; $520c: $01 $0f $d7
    rrca                                          ; $520f: $0f
    reti                                          ; $5210: $d9


    rlca                                          ; $5211: $07
    db $eb                                        ; $5212: $eb
    rlca                                          ; $5213: $07
    add $08                                       ; $5214: $c6 $08
    nop                                           ; $5216: $00
    ldh a, [rIE]                                  ; $5217: $f0 $ff
    pop hl                                        ; $5219: $e1
    cp $e3                                        ; $521a: $fe $e3
    call c, $bec1                                 ; $521c: $dc $c1 $be
    ld [$fcc3], sp                                ; $521f: $08 $c3 $fc
    push bc                                       ; $5222: $c5
    cp d                                          ; $5223: $ba
    call z, $cf08                                 ; $5224: $cc $08 $cf
    scf                                           ; $5227: $37
    rlca                                          ; $5228: $07
    nop                                           ; $5229: $00
    ld a, e                                       ; $522a: $7b
    ld b, e                                       ; $522b: $43
    ccf                                           ; $522c: $3f
    sub c                                         ; $522d: $91
    rrca                                          ; $522e: $0f
    dec hl                                        ; $522f: $2b
    rlca                                          ; $5230: $07
    add hl, sp                                    ; $5231: $39
    nop                                           ; $5232: $00
    add a                                         ; $5233: $87
    ld b, h                                       ; $5234: $44
    add e                                         ; $5235: $83
    db $e4                                        ; $5236: $e4
    inc bc                                        ; $5237: $03
    call z, Call_000_1403                         ; $5238: $cc $03 $14
    nop                                           ; $523b: $00
    jp $8162                                      ; $523c: $c3 $62 $81


    db $f4                                        ; $523f: $f4
    inc bc                                        ; $5240: $03
    ld h, h                                       ; $5241: $64
    add e                                         ; $5242: $83
    ld l, $4a                                     ; $5243: $2e $4a
    pop bc                                        ; $5245: $c1
    ldh a, [rNR23]                                ; $5246: $f0 $18
    ccf                                           ; $5248: $3f
    rst $18                                       ; $5249: $df
    ld a, [c]                                     ; $524a: $f2
    nop                                           ; $524b: $00
    xor a                                         ; $524c: $af
    ld c, h                                       ; $524d: $4c
    nop                                           ; $524e: $00
    rla                                           ; $524f: $17
    nop                                           ; $5250: $00
    ld c, b                                       ; $5251: $48
    or a                                          ; $5252: $b7
    ld bc, $42fe                                  ; $5253: $01 $fe $42
    cp l                                          ; $5256: $bd
    db $10                                        ; $5257: $10
    rst $28                                       ; $5258: $ef
    nop                                           ; $5259: $00

jr_0bb_525a:
    ld de, $00ee                                  ; $525a: $11 $ee $00
    rst $38                                       ; $525d: $ff
    inc c                                         ; $525e: $0c
    di                                            ; $525f: $f3
    nop                                           ; $5260: $00
    rst $38                                       ; $5261: $ff
    nop                                           ; $5262: $00
    db $fc                                        ; $5263: $fc
    rst $38                                       ; $5264: $ff
    ld sp, hl                                     ; $5265: $f9
    or $f0                                        ; $5266: $f6 $f0
    rst $28                                       ; $5268: $ef
    ldh [rIE], a                                  ; $5269: $e0 $ff
    nop                                           ; $526b: $00
    di                                            ; $526c: $f3
    db $fc                                        ; $526d: $fc
    pop hl                                        ; $526e: $e1
    sbc $c8                                       ; $526f: $de $c8
    rst $30                                       ; $5271: $f7
    pop hl                                        ; $5272: $e1
    cp [hl]                                       ; $5273: $be
    nop                                           ; $5274: $00
    rst $10                                       ; $5275: $d7
    rrca                                          ; $5276: $0f
    sbc a                                         ; $5277: $9f
    rrca                                          ; $5278: $0f
    rst $08                                       ; $5279: $cf
    rra                                           ; $527a: $1f
    sub a                                         ; $527b: $97
    rrca                                          ; $527c: $0f
    nop                                           ; $527d: $00
    rlc a                                         ; $527e: $cb $07
    dec de                                        ; $5280: $1b
    add l                                         ; $5281: $85
    ld c, l                                       ; $5282: $4d
    add e                                         ; $5283: $83
    dec sp                                        ; $5284: $3b
    add a                                         ; $5285: $87
    adc l                                         ; $5286: $8d
    nop                                           ; $5287: $00
    ld d, c                                       ; $5288: $51
    add c                                         ; $5289: $81
    ld a, [$80c5]                                 ; $528a: $fa $c5 $80
    ld c, e                                       ; $528d: $4b
    ld a, d                                       ; $528e: $7a
    ld [bc], a                                    ; $528f: $02
    ld d, a                                       ; $5290: $57
    ld b, $19                                     ; $5291: $06 $19
    ret nc                                        ; $5293: $d0

    sub l                                         ; $5294: $95
    db $10                                        ; $5295: $10
    sbc c                                         ; $5296: $99
    ld [$9df0], sp                                ; $5297: $08 $f0 $9d
    ld de, $f77e                                  ; $529a: $11 $7e $f7
    ld a, [hl]                                    ; $529d: $7e
    di                                            ; $529e: $f3
    nop                                           ; $529f: $00
    ccf                                           ; $52a0: $3f
    db $e3                                        ; $52a1: $e3
    ld a, $cd                                     ; $52a2: $3e $cd
    ld [hl-], a                                   ; $52a4: $32
    call nc, $ff23                                ; $52a5: $d4 $23 $ff
    ld d, b                                       ; $52a8: $50
    rlca                                          ; $52a9: $07
    ld b, h                                       ; $52aa: $44
    ld bc, $069f                                  ; $52ab: $01 $9f $06
    nop                                           ; $52ae: $00
    adc a                                         ; $52af: $8f
    rst $38                                       ; $52b0: $ff
    inc bc                                        ; $52b1: $03
    rst $38                                       ; $52b2: $ff
    ld [hl], h                                    ; $52b3: $74
    ld bc, $0004                                  ; $52b4: $01 $04 $00
    ld [hl], $09                                  ; $52b7: $36 $09
    ld [hl-], a                                   ; $52b9: $32
    jr @-$02                                      ; $52ba: $18 $fc

    inc [hl]                                      ; $52bc: $34
    ld [$46f9], sp                                ; $52bd: $08 $f9 $46
    nop                                           ; $52c0: $00
    pop af                                        ; $52c1: $f1
    adc [hl]                                      ; $52c2: $8e
    ldh [$9f], a                                  ; $52c3: $e0 $9f
    di                                            ; $52c5: $f3
    inc c                                         ; $52c6: $0c
    ldh a, [$8f]                                  ; $52c7: $f0 $8f
    ld [bc], a                                    ; $52c9: $02
    ldh [$9f], a                                  ; $52ca: $e0 $9f
    ldh [$1f], a                                  ; $52cc: $e0 $1f
    ldh a, [rVBK]                                 ; $52ce: $f0 $4f
    ldh [rNR44], a                                ; $52d0: $e0 $23
    rst $18                                       ; $52d2: $df
    xor b                                         ; $52d3: $a8
    ld [bc], a                                    ; $52d4: $02
    nop                                           ; $52d5: $00
    rst $08                                       ; $52d6: $cf
    ld [bc], a                                    ; $52d7: $02
    db $10                                        ; $52d8: $10
    ld a, [hl]                                    ; $52d9: $7e
    db $ed                                        ; $52da: $ed
    ld de, $ff16                                  ; $52db: $11 $16 $ff
    ld [hl], a                                    ; $52de: $77
    nop                                           ; $52df: $00
    rst $38                                       ; $52e0: $ff
    ld h, a                                       ; $52e1: $67
    rst $38                                       ; $52e2: $ff
    inc sp                                        ; $52e3: $33
    rst $38                                       ; $52e4: $ff
    ld [de], a                                    ; $52e5: $12
    rst $38                                       ; $52e6: $ff
    add c                                         ; $52e7: $81
    ld a, [bc]                                    ; $52e8: $0a
    rst $38                                       ; $52e9: $ff

jr_0bb_52ea:
    ldh [rIE], a                                  ; $52ea: $e0 $ff
    pop bc                                        ; $52ec: $c1

jr_0bb_52ed:
    ld c, d                                       ; $52ed: $4a
    nop                                           ; $52ee: $00

jr_0bb_52ef:
    ret nz                                        ; $52ef: $c0

    ld d, b                                       ; $52f0: $50
    nop                                           ; $52f1: $00
    add l                                         ; $52f2: $85
    adc b                                         ; $52f3: $88
    inc bc                                        ; $52f4: $03
    inc b                                         ; $52f5: $04
    rst $30                                       ; $52f6: $f7
    rst $38                                       ; $52f7: $ff
    di                                            ; $52f8: $f3
    ld [bc], a                                    ; $52f9: $02
    nop                                           ; $52fa: $00
    db $eb                                        ; $52fb: $eb
    rst $38                                       ; $52fc: $ff
    pop hl                                        ; $52fd: $e1
    ld c, $ff                                     ; $52fe: $0e $ff
    pop af                                        ; $5300: $f1
    rst $38                                       ; $5301: $ff
    ld [c], a                                     ; $5302: $e2
    ld d, $00                                     ; $5303: $16 $00
    ld e, h                                       ; $5305: $5c
    ld a, [bc]                                    ; $5306: $0a
    adc d                                         ; $5307: $8a
    jr jr_0bb_52ea                                ; $5308: $18 $e0

    add b                                         ; $530a: $80
    dec hl                                        ; $530b: $2b
    add hl, bc                                    ; $530c: $09
    rst $30                                       ; $530d: $f7
    ld hl, sp-$07                                 ; $530e: $f8 $f9
    cp $f2                                        ; $5310: $fe $f2
    ld a, l                                       ; $5312: $7d
    pop af                                        ; $5313: $f1
    nop                                           ; $5314: $00
    cp $f3                                        ; $5315: $fe $f3
    inc l                                         ; $5317: $2c
    rst $20                                       ; $5318: $e7
    ld a, b                                       ; $5319: $78
    call nz, $c17b                                ; $531a: $c4 $7b $c1
    nop                                           ; $531d: $00
    ld a, $9f                                     ; $531e: $3e $9f
    inc c                                         ; $5320: $0c
    scf                                           ; $5321: $37
    inc c                                         ; $5322: $0c
    rst $20                                       ; $5323: $e7
    inc e                                         ; $5324: $1c
    or a                                          ; $5325: $b7
    nop                                           ; $5326: $00
    ld [$045b], sp                                ; $5327: $08 $5b $04
    sub c                                         ; $532a: $91
    ld c, $db                                     ; $532b: $0e $db
    inc b                                         ; $532d: $04
    add hl, bc                                    ; $532e: $09
    ld l, e                                       ; $532f: $6b
    add [hl]                                      ; $5330: $86
    ld c, e                                       ; $5331: $4b
    ld [de], a                                    ; $5332: $12
    add l                                         ; $5333: $85

jr_0bb_5334:
    add hl, de                                    ; $5334: $19
    rra                                           ; $5335: $1f
    ld d, l                                       ; $5336: $55
    ld [bc], a                                    ; $5337: $02
    ld e, $69                                     ; $5338: $1e $69
    ld [bc], a                                    ; $533a: $02
    ld l, a                                       ; $533b: $6f
    ld a, [de]                                    ; $533c: $1a
    ld b, b                                       ; $533d: $40
    db $fc                                        ; $533e: $fc
    inc b                                         ; $533f: $04
    db $10                                        ; $5340: $10
    ld hl, sp-$08                                 ; $5341: $f8 $f8
    rlca                                          ; $5343: $07
    pop af                                        ; $5344: $f1
    ld c, $fa                                     ; $5345: $0e $fa
    nop                                           ; $5347: $00
    add l                                         ; $5348: $85
    pop af                                        ; $5349: $f1
    ld c, $e3                                     ; $534a: $0e $e3
    inc e                                         ; $534c: $1c
    rst $00                                       ; $534d: $c7
    jr c, jr_0bb_5334                             ; $534e: $38 $e4

    nop                                           ; $5350: $00
    dec de                                        ; $5351: $1b
    add c                                         ; $5352: $81
    ld a, [hl]                                    ; $5353: $7e
    sub a                                         ; $5354: $97
    ld c, $57                                     ; $5355: $0e $57
    inc c                                         ; $5357: $0c
    rst $00                                       ; $5358: $c7
    nop                                           ; $5359: $00
    jr jr_0bb_52ef                                ; $535a: $18 $93

    inc c                                         ; $535c: $0c
    ld c, e                                       ; $535d: $4b
    inc b                                         ; $535e: $04
    add hl, de                                    ; $535f: $19
    add [hl]                                      ; $5360: $86
    ld c, l                                       ; $5361: $4d
    nop                                           ; $5362: $00
    add d                                         ; $5363: $82
    jr z, jr_0bb_52ed                             ; $5364: $28 $87

    ld a, [c]                                     ; $5366: $f2
    dec a                                         ; $5367: $3d
    pop hl                                        ; $5368: $e1
    ld a, $c0                                     ; $5369: $3e $c0
    nop                                           ; $536b: $00
    ccf                                           ; $536c: $3f
    pop hl                                        ; $536d: $e1
    ld e, $f3                                     ; $536e: $1e $f3
    inc c                                         ; $5370: $0c
    and $19                                       ; $5371: $e6 $19
    jp nz, Jump_000_3d02                          ; $5373: $c2 $02 $3d

    ret z                                         ; $5376: $c8

    scf                                           ; $5377: $37
    ld b, a                                       ; $5378: $47
    adc a                                         ; $5379: $8f
    db $d3                                        ; $537a: $d3
    xor h                                         ; $537b: $ac
    ld bc, $00d3                                  ; $537c: $01 $d3 $00
    ld c, $8b                                     ; $537f: $0e $8b
    ld b, $e9                                     ; $5381: $06 $e9
    ld b, $49                                     ; $5383: $06 $49
    add [hl]                                      ; $5385: $86
    db $fc                                        ; $5386: $fc
    nop                                           ; $5387: $00
    inc bc                                        ; $5388: $03
    add h                                         ; $5389: $84
    ld a, e                                       ; $538a: $7b
    ld bc, $88fe                                  ; $538b: $01 $fe $88
    rst $30                                       ; $538e: $f7
    add c                                         ; $538f: $81
    nop                                           ; $5390: $00
    ld a, [hl]                                    ; $5391: $7e
    ld [bc], a                                    ; $5392: $02
    db $fd                                        ; $5393: $fd
    add b                                         ; $5394: $80
    ld a, a                                       ; $5395: $7f
    ld bc, $04fe                                  ; $5396: $01 $fe $04
    nop                                           ; $5399: $00
    ei                                            ; $539a: $fb
    ld c, l                                       ; $539b: $4d
    add d                                         ; $539c: $82
    ld [$5587], sp                                ; $539d: $08 $87 $55
    add d                                         ; $53a0: $82
    db $e4                                        ; $53a1: $e4
    nop                                           ; $53a2: $00
    inc bc                                        ; $53a3: $03
    call c, Call_000_2403                         ; $53a4: $dc $03 $24
    jp $8368                                      ; $53a7: $c3 $68 $83


    db $f4                                        ; $53aa: $f4
    nop                                           ; $53ab: $00
    inc bc                                        ; $53ac: $03
    ld sp, hl                                     ; $53ad: $f9
    cp $fd                                        ; $53ae: $fe $fd
    ld a, [$77f8]                                 ; $53b0: $fa $f8 $77
    ld a, c                                       ; $53b3: $79
    add b                                         ; $53b4: $80
    ld a, [c]                                     ; $53b5: $f2
    ld bc, $6df2                                  ; $53b6: $01 $f2 $6d
    ld [hl], d                                    ; $53b9: $72
    db $fd                                        ; $53ba: $fd
    add sp, $57                                   ; $53bb: $e8 $57
    cpl                                           ; $53bd: $2f
    nop                                           ; $53be: $00
    rla                                           ; $53bf: $17
    sub a                                         ; $53c0: $97
    rrca                                          ; $53c1: $0f
    cp a                                          ; $53c2: $bf
    rrca                                          ; $53c3: $0f
    ld d, a                                       ; $53c4: $57
    dec bc                                        ; $53c5: $0b
    sub e                                         ; $53c6: $93
    ld bc, $e90f                                  ; $53c7: $01 $0f $e9
    rlca                                          ; $53ca: $07
    ld c, b                                       ; $53cb: $48
    add a                                         ; $53cc: $87
    ld sp, hl                                     ; $53cd: $f9
    ld b, $30                                     ; $53ce: $06 $30
    ld [bc], a                                    ; $53d0: $02
    xor [hl]                                      ; $53d1: $ae
    add [hl]                                      ; $53d2: $86
    ld a, [bc]                                    ; $53d3: $0a
    add a                                         ; $53d4: $87
    ld c, b                                       ; $53d5: $48
    ld de, $4e03                                  ; $53d6: $11 $03 $4e
    ld bc, $2d01                                  ; $53d9: $01 $01 $2d
    jr nz, jr_0bb_53e7                            ; $53dc: $20 $09

    rst $18                                       ; $53de: $df
    nop                                           ; $53df: $00
    rst $38                                       ; $53e0: $ff
    adc a                                         ; $53e1: $8f
    call z, $c1b3                                 ; $53e2: $cc $b3 $c1
    cp $e0                                        ; $53e5: $fe $e0

jr_0bb_53e7:
    sbc a                                         ; $53e7: $9f
    ld [bc], a                                    ; $53e8: $02
    ret c                                         ; $53e9: $d8

    and a                                         ; $53ea: $a7
    sub c                                         ; $53eb: $91
    ld l, [hl]                                    ; $53ec: $6e
    add b                                         ; $53ed: $80
    rst $38                                       ; $53ee: $ff
    ld h, h                                       ; $53ef: $64
    ld [$004d], sp                                ; $53f0: $08 $4d $00
    add e                                         ; $53f3: $83
    push hl                                       ; $53f4: $e5
    inc bc                                        ; $53f5: $03
    call Call_000_1502                            ; $53f6: $cd $02 $15
    jp Jump_0bb_4473                              ; $53f9: $c3 $73 $44


    add b                                         ; $53fc: $80
    nop                                           ; $53fd: $00
    ld a, [bc]                                    ; $53fe: $0a
    ld c, b                                       ; $53ff: $48
    add a                                         ; $5400: $87

Jump_0bb_5401:
    ld hl, sp+$02                                 ; $5401: $f8 $02
    nop                                           ; $5403: $00
    ldh a, [$8f]                                  ; $5404: $f0 $8f
    add b                                         ; $5406: $80
    ld d, h                                       ; $5407: $54
    inc c                                         ; $5408: $0c
    call nz, $e03b                                ; $5409: $c4 $3b $e0
    rra                                           ; $540c: $1f

jr_0bb_540d:
    add hl, bc                                    ; $540d: $09
    or $23                                        ; $540e: $f6 $23
    nop                                           ; $5410: $00
    db $dd                                        ; $5411: $dd
    ld [hl], b                                    ; $5412: $70
    adc a                                         ; $5413: $8f
    inc b                                         ; $5414: $04
    db $e3                                        ; $5415: $e3
    ld e, d                                       ; $5416: $5a
    and c                                         ; $5417: $a1
    ld [hl], d                                    ; $5418: $72
    ld bc, $7d81                                  ; $5419: $01 $81 $7d
    add b                                         ; $541c: $80
    ld a, [hl+]                                   ; $541d: $2a
    pop bc                                        ; $541e: $c1
    ld d, d                                       ; $541f: $52
    add c                                         ; $5420: $81
    ld b, b                                       ; $5421: $40
    ld de, $7300                                  ; $5422: $11 $00 $73
    ld a, a                                       ; $5425: $7f
    db $e3                                        ; $5426: $e3
    ld a, a                                       ; $5427: $7f
    and c                                         ; $5428: $a1
    ccf                                           ; $5429: $3f
    pop af                                        ; $542a: $f1
    ld a, $10                                     ; $542b: $3e $10
    pop hl                                        ; $542d: $e1
    ld a, $c1                                     ; $542e: $3e $c1
    ld e, [hl]                                    ; $5430: $5e
    ld bc, $ffe0                                  ; $5431: $01 $e0 $ff
    ldh a, [$bf]                                  ; $5434: $f0 $bf
    nop                                           ; $5436: $00
    ldh [$9f], a                                  ; $5437: $e0 $9f
    ldh a, [$1f]                                  ; $5439: $f0 $1f
    ldh a, [$6f]                                  ; $543b: $f0 $6f
    sub b                                         ; $543d: $90
    and a                                         ; $543e: $a7
    nop                                           ; $543f: $00
    jr @-$35                                      ; $5440: $18 $c9

    ld [hl-], a                                   ; $5442: $32
    ret z                                         ; $5443: $c8

    inc sp                                        ; $5444: $33
    ld [c], a                                     ; $5445: $e2
    add hl, de                                    ; $5446: $19
    push bc                                       ; $5447: $c5
    nop                                           ; $5448: $00
    ld a, [hl-]                                   ; $5449: $3a
    add h                                         ; $544a: $84
    ld a, e                                       ; $544b: $7b
    jp z, $0d31                                   ; $544c: $ca $31 $0d

    ldh a, [rTAC]                                 ; $544f: $f0 $07
    ld b, h                                       ; $5451: $44
    ld hl, sp+$12                                 ; $5452: $f8 $12
    inc bc                                        ; $5454: $03
    rlca                                          ; $5455: $07
    ld a, a                                       ; $5456: $7f
    add c                                         ; $5457: $81
    call z, Call_0bb_7f09                         ; $5458: $cc $09 $7f
    add e                                         ; $545b: $83
    jr c, jr_0bb_54dd                             ; $545c: $38 $7f

    add b                                         ; $545e: $80
    and b                                         ; $545f: $a0
    inc bc                                        ; $5460: $03
    db $f4                                        ; $5461: $f4
    add hl, bc                                    ; $5462: $09
    call z, $b009                                 ; $5463: $cc $09 $b0
    rst $38                                       ; $5466: $ff
    jr nz, jr_0bb_5493                            ; $5467: $20 $2a

    rst $38                                       ; $5469: $ff
    jr nc, jr_0bb_540d                            ; $546a: $30 $a1

    inc d                                         ; $546c: $14
    ccf                                           ; $546d: $3f
    and h                                         ; $546e: $a4
    dec b                                         ; $546f: $05
    ld a, $02                                     ; $5470: $3e $02
    nop                                           ; $5472: $00
    ld [hl], h                                    ; $5473: $74
    inc sp                                        ; $5474: $33
    rst $38                                       ; $5475: $ff
    ld h, $a3                                     ; $5476: $26 $a3
    dec b                                         ; $5478: $05
    cp [hl]                                       ; $5479: $be
    ld c, b                                       ; $547a: $48
    ld bc, $d0ff                                  ; $547b: $01 $ff $d0
    ld [$0b46], sp                                ; $547e: $08 $46 $0b
    ld bc, $ff8f                                  ; $5481: $01 $8f $ff
    dec bc                                        ; $5484: $0b
    rst $38                                       ; $5485: $ff
    add e                                         ; $5486: $83
    rst $38                                       ; $5487: $ff
    ld c, $c0                                     ; $5488: $0e $c0
    ld de, $c288                                  ; $548a: $11 $88 $c2
    add hl, bc                                    ; $548d: $09
    pop af                                        ; $548e: $f1
    rst $38                                       ; $548f: $ff
    ld h, c                                       ; $5490: $61
    ld [bc], a                                    ; $5491: $02
    nop                                           ; $5492: $00

jr_0bb_5493:
    ld [hl], e                                    ; $5493: $73
    rst $38                                       ; $5494: $ff
    ld b, c                                       ; $5495: $41
    add b                                         ; $5496: $80
    add b                                         ; $5497: $80
    ld de, $fffe                                  ; $5498: $11 $fe $ff
    cp b                                          ; $549b: $b8
    rst $38                                       ; $549c: $ff
    sbc [hl]                                      ; $549d: $9e
    rst $38                                       ; $549e: $ff
    cp a                                          ; $549f: $bf
    xor e                                         ; $54a0: $ab
    add h                                         ; $54a1: $84
    inc bc                                        ; $54a2: $03
    ld a, [bc]                                    ; $54a3: $0a
    push hl                                       ; $54a4: $e5
    dec b                                         ; $54a5: $05
    ld bc, $25ce                                  ; $54a6: $01 $ce $25
    add c                                         ; $54a9: $81
    pop bc                                        ; $54aa: $c1
    inc h                                         ; $54ab: $24
    jp $a303                                      ; $54ac: $c3 $03 $a3


    or $01                                        ; $54af: $f6 $01
    ld [hl], e                                    ; $54b1: $73
    or h                                          ; $54b2: $b4
    inc b                                         ; $54b3: $04
    nop                                           ; $54b4: $00
    rst $38                                       ; $54b5: $ff
    inc hl                                        ; $54b6: $23
    ld c, $02                                     ; $54b7: $0e $02
    jr jr_0bb_54d3                                ; $54b9: $18 $18

    db $e4                                        ; $54bb: $e4
    db $ed                                        ; $54bc: $ed
    inc c                                         ; $54bd: $0c
    ld de, $be0e                                  ; $54be: $11 $0e $be
    nop                                           ; $54c1: $00
    rst $38                                       ; $54c2: $ff
    ld h, b                                       ; $54c3: $60
    ld e, $02                                     ; $54c4: $1e $02
    ld h, b                                       ; $54c6: $60
    rst $38                                       ; $54c7: $ff
    ld b, b                                       ; $54c8: $40
    ld b, b                                       ; $54c9: $40
    ld [$0000], sp                                ; $54ca: $08 $00 $00
    add sp, $17                                   ; $54cd: $e8 $17
    adc c                                         ; $54cf: $89
    halt                                          ; $54d0: $76
    ld [bc], a                                    ; $54d1: $02
    nop                                           ; $54d2: $00

jr_0bb_54d3:
    db $fd                                        ; $54d3: $fd
    sbc b                                         ; $54d4: $98
    ld h, a                                       ; $54d5: $67
    pop bc                                        ; $54d6: $c1
    ld a, $c4                                     ; $54d7: $3e $c4
    dec sp                                        ; $54d9: $3b
    inc b                                         ; $54da: $04
    nop                                           ; $54db: $00
    ei                                            ; $54dc: $fb

jr_0bb_54dd:
    add b                                         ; $54dd: $80
    ld a, a                                       ; $54de: $7f
    ld d, b                                       ; $54df: $50
    add a                                         ; $54e0: $87
    db $ed                                        ; $54e1: $ed
    ld [bc], a                                    ; $54e2: $02
    rlc b                                         ; $54e3: $cb $00
    inc b                                         ; $54e5: $04
    ld d, l                                       ; $54e6: $55
    add d                                         ; $54e7: $82
    add $01                                       ; $54e8: $c6 $01
    call c, $6d03                                 ; $54ea: $dc $03 $6d
    dec d                                         ; $54ed: $15
    add d                                         ; $54ee: $82
    ld a, [hl]                                    ; $54ef: $7e
    add c                                         ; $54f0: $81
    add h                                         ; $54f1: $84
    nop                                           ; $54f2: $00
    inc a                                         ; $54f3: $3c
    or $01                                        ; $54f4: $f6 $01
    ld a, $06                                     ; $54f6: $3e $06
    nop                                           ; $54f8: $00
    ld bc, $ff1c                                  ; $54f9: $01 $1c $ff
    ld [$0cff], sp                                ; $54fc: $08 $ff $0c
    rst $38                                       ; $54ff: $ff

Call_0bb_5500:
    ld a, b                                       ; $5500: $78
    sbc h                                         ; $5501: $9c
    inc b                                         ; $5502: $04
    ld b, $7c                                     ; $5503: $06 $7c
    rst $38                                       ; $5505: $ff
    ld [hl], b                                    ; $5506: $70
    rst $38                                       ; $5507: $ff
    jr c, jr_0bb_5584                             ; $5508: $38 $7a

    ld [bc], a                                    ; $550a: $02
    ld a, [de]                                    ; $550b: $1a
    nop                                           ; $550c: $00
    ret z                                         ; $550d: $c8

    nop                                           ; $550e: $00
    scf                                           ; $550f: $37
    add c                                         ; $5510: $81
    ld a, [hl]                                    ; $5511: $7e
    jp nz, $903d                                  ; $5512: $c2 $3d $90

    ld l, a                                       ; $5515: $6f
    pop de                                        ; $5516: $d1
    nop                                           ; $5517: $00
    ld l, $e0                                     ; $5518: $2e $e0
    rra                                           ; $551a: $1f
    call z, $8013                                 ; $551b: $cc $13 $80
    ld a, a                                       ; $551e: $7f
    ld hl, sp+$00                                 ; $551f: $f8 $00
    rlca                                          ; $5521: $07
    ldh a, [$0e]                                  ; $5522: $f0 $0e
    ld b, b                                       ; $5524: $40
    cp h                                          ; $5525: $bc
    nop                                           ; $5526: $00
    ret nz                                        ; $5527: $c0

    nop                                           ; $5528: $00
    inc h                                         ; $5529: $24
    nop                                           ; $552a: $00
    ret nz                                        ; $552b: $c0

    ld bc, $e000                                  ; $552c: $01 $00 $e0
    ldh [$99], a                                  ; $552f: $e0 $99
    inc b                                         ; $5531: $04
    ldh a, [$7f]                                  ; $5532: $f0 $7f
    nop                                           ; $5534: $00
    db $fc                                        ; $5535: $fc
    ld a, a                                       ; $5536: $7f
    ld hl, sp-$41                                 ; $5537: $f8 $bf
    ld a, d                                       ; $5539: $7a
    ccf                                           ; $553a: $3f
    ldh a, [$7f]                                  ; $553b: $f0 $7f
    nop                                           ; $553d: $00
    ld hl, sp+$3f                                 ; $553e: $f8 $3f
    add sp, $55                                   ; $5540: $e8 $55
    and d                                         ; $5542: $a2
    sub $21                                       ; $5543: $d6 $21
    ld a, d                                       ; $5545: $7a
    nop                                           ; $5546: $00
    add c                                         ; $5547: $81
    ld [hl], e                                    ; $5548: $73
    add b                                         ; $5549: $80
    ld h, $c1                                     ; $554a: $26 $c1
    ld h, d                                       ; $554c: $62
    add c                                         ; $554d: $81
    rst $10                                       ; $554e: $d7
    sub e                                         ; $554f: $93
    and c                                         ; $5550: $a1
    ld b, $02                                     ; $5551: $06 $02
    db $fd                                        ; $5553: $fd
    ld l, h                                       ; $5554: $6c
    dec bc                                        ; $5555: $0b
    inc b                                         ; $5556: $04
    ei                                            ; $5557: $fb
    db $fc                                        ; $5558: $fc
    add hl, bc                                    ; $5559: $09
    sub [hl]                                      ; $555a: $96
    inc c                                         ; $555b: $0c
    ld [de], a                                    ; $555c: $12
    db $ec                                        ; $555d: $ec
    inc bc                                        ; $555e: $03
    inc c                                         ; $555f: $0c
    sbc h                                         ; $5560: $9c
    inc bc                                        ; $5561: $03
    db $fc                                        ; $5562: $fc
    inc bc                                        ; $5563: $03
    and b                                         ; $5564: $a0
    dec hl                                        ; $5565: $2b
    ld b, b                                       ; $5566: $40
    nop                                           ; $5567: $00
    cp a                                          ; $5568: $bf
    ld [bc], a                                    ; $5569: $02
    db $fd                                        ; $556a: $fd
    ld b, b                                       ; $556b: $40
    cp a                                          ; $556c: $bf
    ld b, h                                       ; $556d: $44
    cp e                                          ; $556e: $bb
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    rst $38                                       ; $5571: $ff
    pop de                                        ; $5572: $d1
    ld l, $93                                     ; $5573: $2e $93
    ld l, h                                       ; $5575: $6c
    add c                                         ; $5576: $81
    ld a, [hl]                                    ; $5577: $7e
    inc d                                         ; $5578: $14
    nop                                           ; $5579: $00
    db $e3                                        ; $557a: $e3
    ld e, h                                       ; $557b: $5c
    and e                                         ; $557c: $a3
    ld h, [hl]                                    ; $557d: $66
    add c                                         ; $557e: $81
    ld [hl], b                                    ; $557f: $70
    add e                                         ; $5580: $83
    ld [hl+], a                                   ; $5581: $22
    nop                                           ; $5582: $00
    pop bc                                        ; $5583: $c1

jr_0bb_5584:
    ld l, d                                       ; $5584: $6a
    add c                                         ; $5585: $81
    and d                                         ; $5586: $a2
    ld bc, $8176                                  ; $5587: $01 $76 $81
    rst $38                                       ; $558a: $ff
    nop                                           ; $558b: $00
    rrca                                          ; $558c: $0f
    ld a, a                                       ; $558d: $7f
    add a                                         ; $558e: $87
    rst $38                                       ; $558f: $ff
    inc bc                                        ; $5590: $03
    ld a, a                                       ; $5591: $7f
    adc a                                         ; $5592: $8f
    ccf                                           ; $5593: $3f
    nop                                           ; $5594: $00
    rst $00                                       ; $5595: $c7
    ccf                                           ; $5596: $3f
    jp $817f                                      ; $5597: $c3 $7f $81


    dec sp                                        ; $559a: $3b
    rst $00                                       ; $559b: $c7
    rst $38                                       ; $559c: $ff
    nop                                           ; $559d: $00

jr_0bb_559e:
    add $ff                                       ; $559e: $c6 $ff
    add $fd                                       ; $55a0: $c6 $fd
    adc [hl]                                      ; $55a2: $8e
    db $fd                                        ; $55a3: $fd
    ld e, $fd                                     ; $55a4: $1e $fd
    nop                                           ; $55a6: $00
    adc [hl]                                      ; $55a7: $8e
    cp $c5                                        ; $55a8: $fe $c5
    cp $85                                        ; $55aa: $fe $85
    db $fc                                        ; $55ac: $fc
    inc bc                                        ; $55ad: $03
    ld c, h                                       ; $55ae: $4c
    nop                                           ; $55af: $00
    or e                                          ; $55b0: $b3
    ld b, c                                       ; $55b1: $41
    cp [hl]                                       ; $55b2: $be
    ld [bc], a                                    ; $55b3: $02
    db $fd                                        ; $55b4: $fd
    jr jr_0bb_559e                                ; $55b5: $18 $e7

    stop                                          ; $55b7: $10 $00
    rst $28                                       ; $55b9: $ef
    ld [bc], a                                    ; $55ba: $02
    db $fd                                        ; $55bb: $fd

jr_0bb_55bc:
    ld [bc], a                                    ; $55bc: $02
    db $fd                                        ; $55bd: $fd
    nop                                           ; $55be: $00
    rst $38                                       ; $55bf: $ff
    ld e, h                                       ; $55c0: $5c
    ld [hl+], a                                   ; $55c1: $22
    add e                                         ; $55c2: $83
    db $ec                                        ; $55c3: $ec
    nop                                           ; $55c4: $00
    ld [bc], a                                    ; $55c5: $02
    dec b                                         ; $55c6: $05
    jp nz, Jump_0bb_5c64                          ; $55c7: $c2 $64 $5c

    ld [bc], a                                    ; $55ca: $02
    ld l, h                                       ; $55cb: $6c
    ld [de], a                                    ; $55cc: $12
    add e                                         ; $55cd: $83
    ld a, $c1                                     ; $55ce: $3e $c1
    ld d, h                                       ; $55d0: $54

jr_0bb_55d1:
    ld [$fb04], sp                                ; $55d1: $08 $04 $fb
    ld a, [$1908]                                 ; $55d4: $fa $08 $19
    ld b, b                                       ; $55d7: $40
    and $10                                       ; $55d8: $e6 $10
    dec c                                         ; $55da: $0d
    add l                                         ; $55db: $85

jr_0bb_55dc:
    nop                                           ; $55dc: $00
    db $d3                                        ; $55dd: $d3
    nop                                           ; $55de: $00
    ld [hl], $c1                                  ; $55df: $36 $c1
    inc d                                         ; $55e1: $14
    ld a, d                                       ; $55e2: $7a
    add c                                         ; $55e3: $81
    ld a, [hl+]                                   ; $55e4: $2a
    and b                                         ; $55e5: $a0
    jr nz, jr_0bb_5606                            ; $55e6: $20 $1e

    db $f4                                        ; $55e8: $f4
    ld bc, $e01f                                  ; $55e9: $01 $1f $e0
    nop                                           ; $55ec: $00
    ld e, $e1                                     ; $55ed: $1e $e1
    inc c                                         ; $55ef: $0c
    di                                            ; $55f0: $f3
    ld c, $f1                                     ; $55f1: $0e $f1
    jr jr_0bb_55dc                                ; $55f3: $18 $e7

    nop                                           ; $55f5: $00
    ld [$4ff7], sp                                ; $55f6: $08 $f7 $4f
    sub b                                         ; $55f9: $90
    ld b, a                                       ; $55fa: $47
    sbc b                                         ; $55fb: $98
    inc de                                        ; $55fc: $13
    call z, Call_000_2f00                         ; $55fd: $cc $00 $2f
    ret nc                                        ; $5600: $d0

    daa                                           ; $5601: $27
    ret c                                         ; $5602: $d8

    ld d, e                                       ; $5603: $53
    adc h                                         ; $5604: $8c
    ld l, e                                       ; $5605: $6b

jr_0bb_5606:
    add h                                         ; $5606: $84
    nop                                           ; $5607: $00
    jr c, jr_0bb_55d1                             ; $5608: $38 $c7

    ld c, a                                       ; $560a: $4f
    or b                                          ; $560b: $b0
    ld e, a                                       ; $560c: $5f
    and b                                         ; $560d: $a0
    rrca                                          ; $560e: $0f
    ldh a, [rSB]                                  ; $560f: $f0 $01
    add b                                         ; $5611: $80
    ld a, a                                       ; $5612: $7f
    nop                                           ; $5613: $00
    ld c, h                                       ; $5614: $4c
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    inc c                                         ; $5617: $0c
    ld bc, $0000                                  ; $5618: $01 $00 $00
    cp [hl]                                       ; $561b: $be
    ld b, c                                       ; $561c: $41
    rst $18                                       ; $561d: $df
    jr nz, jr_0bb_55bc                            ; $561e: $20 $9c

    ld h, d                                       ; $5620: $62
    ld [$20f6], sp                                ; $5621: $08 $f6 $20
    nop                                           ; $5624: $00
    inc e                                         ; $5625: $1c
    ld [hl], d                                    ; $5626: $72
    rra                                           ; $5627: $1f
    ccf                                           ; $5628: $3f
    ret nz                                        ; $5629: $c0

    ccf                                           ; $562a: $3f
    ld b, b                                       ; $562b: $40
    dec d                                         ; $562c: $15
    ld bc, $042a                                  ; $562d: $01 $2a $04
    dec de                                        ; $5630: $1b
    nop                                           ; $5631: $00
    ld a, a                                       ; $5632: $7f
    nop                                           ; $5633: $00
    ld a, [hl+]                                   ; $5634: $2a
    add h                                         ; $5635: $84
    rrca                                          ; $5636: $0f
    nop                                           ; $5637: $00
    pop hl                                        ; $5638: $e1
    ld e, $50                                     ; $5639: $1e $50

jr_0bb_563b:
    xor a                                         ; $563b: $af
    add sp, $17                                   ; $563c: $e8 $17
    ld b, b                                       ; $563e: $40
    cp c                                          ; $563f: $b9
    ld [$e000], sp                                ; $5640: $08 $00 $e0
    nop                                           ; $5643: $00
    and b                                         ; $5644: $a0
    adc a                                         ; $5645: $8f
    rra                                           ; $5646: $1f
    ld hl, sp+$07                                 ; $5647: $f8 $07
    sub b                                         ; $5649: $90
    db $10                                        ; $564a: $10
    rrca                                          ; $564b: $0f
    nop                                           ; $564c: $00
    ld [bc], a                                    ; $564d: $02
    sbc a                                         ; $564e: $9f
    ld c, a                                       ; $564f: $4f
    ld d, h                                       ; $5650: $54
    xor e                                         ; $5651: $ab
    jr jr_0bb_563b                                ; $5652: $18 $e7

    add b                                         ; $5654: $80
    ld h, d                                       ; $5655: $62
    ld l, $fd                                     ; $5656: $2e $fd
    ld [bc], a                                    ; $5658: $02
    add hl, de                                    ; $5659: $19
    and [hl]                                      ; $565a: $a6
    nop                                           ; $565b: $00
    ccf                                           ; $565c: $3f
    nop                                           ; $565d: $00
    db $10                                        ; $565e: $10
    jr c, jr_0bb_5661                             ; $565f: $38 $00

jr_0bb_5661:
    db $10                                        ; $5661: $10
    cp a                                          ; $5662: $bf
    cpl                                           ; $5663: $2f
    or b                                          ; $5664: $b0
    ld c, a                                       ; $5665: $4f
    ld b, b                                       ; $5666: $40
    cp [hl]                                       ; $5667: $be
    jr nz, jr_0bb_566a                            ; $5668: $20 $00

jr_0bb_566a:
    ret z                                         ; $566a: $c8

    ret nc                                        ; $566b: $d0

    cpl                                           ; $566c: $2f
    rst $28                                       ; $566d: $ef
    db $10                                        ; $566e: $10
    ld c, d                                       ; $566f: $4a
    add l                                         ; $5670: $85
    ld [$8610], sp                                ; $5671: $08 $10 $86
    inc b                                         ; $5674: $04
    inc bc                                        ; $5675: $03
    ld b, d                                       ; $5676: $42
    jr z, jr_0bb_568f                             ; $5677: $28 $16

    pop hl                                        ; $5679: $e1
    ld a, e                                       ; $567a: $7b
    add c                                         ; $567b: $81
    nop                                           ; $567c: $00
    or d                                          ; $567d: $b2
    ld b, c                                       ; $567e: $41
    dec d                                         ; $567f: $15
    ldh [$71], a                                  ; $5680: $e0 $71
    add b                                         ; $5682: $80
    scf                                           ; $5683: $37
    ret nz                                        ; $5684: $c0

    nop                                           ; $5685: $00
    dec de                                        ; $5686: $1b
    ldh [$1f], a                                  ; $5687: $e0 $1f
    ldh [$0c], a                                  ; $5689: $e0 $0c
    di                                            ; $568b: $f3
    ld b, c                                       ; $568c: $41
    cp [hl]                                       ; $568d: $be
    nop                                           ; $568e: $00

jr_0bb_568f:
    jr nz, jr_0bb_56f0                            ; $568f: $20 $5f

jr_0bb_5691:
    nop                                           ; $5691: $00
    jr @+$03                                      ; $5692: $18 $01

    ld bc, $0303                                  ; $5694: $01 $03 $03
    add c                                         ; $5697: $81
    inc b                                         ; $5698: $04
    ld [$de21], sp                                ; $5699: $08 $21 $de
    and c                                         ; $569c: $a1
    ld e, $10                                     ; $569d: $1e $10
    xor a                                         ; $569f: $af
    db $10                                        ; $56a0: $10
    ld [$c281], sp                                ; $56a1: $08 $81 $c2
    ld c, $01                                     ; $56a4: $0e $01
    ld bc, $8778                                  ; $56a6: $01 $78 $87
    ldh a, [rIF]                                  ; $56a9: $f0 $0f
    ld d, b                                       ; $56ab: $50
    ld [$2010], sp                                ; $56ac: $08 $10 $20
    jr nz, jr_0bb_5691                            ; $56af: $20 $e0

    ld bc, $0c10                                  ; $56b1: $01 $10 $0c
    di                                            ; $56b4: $f3
    ld b, b                                       ; $56b5: $40
    ccf                                           ; $56b6: $3f
    inc c                                         ; $56b7: $0c
    ld b, c                                       ; $56b8: $41
    ld a, $10                                     ; $56b9: $3e $10
    cpl                                           ; $56bb: $2f
    ret nz                                        ; $56bc: $c0

    ld [$0824], sp                                ; $56bd: $08 $24 $08
    ld a, $c1                                     ; $56c0: $3e $c1
    ld [bc], a                                    ; $56c2: $02
    ld a, [hl]                                    ; $56c3: $7e
    add c                                         ; $56c4: $81
    xor b                                         ; $56c5: $a8
    ld d, a                                       ; $56c6: $57
    ld h, b                                       ; $56c7: $60
    sbc a                                         ; $56c8: $9f
    and b                                         ; $56c9: $a0
    dec l                                         ; $56ca: $2d
    add c                                         ; $56cb: $81
    ld bc, $017e                                  ; $56cc: $01 $7e $01
    cp $40                                        ; $56cf: $fe $40
    ccf                                           ; $56d1: $3f
    jr nz, jr_0bb_56ec                            ; $56d2: $20 $18

    ld c, [hl]                                    ; $56d4: $4e
    jr jr_0bb_56f7                                ; $56d5: $18 $20

    ld bc, $5e01                                  ; $56d7: $01 $01 $5e
    add hl, bc                                    ; $56da: $09
    ld b, b                                       ; $56db: $40
    cp a                                          ; $56dc: $bf
    add [hl]                                      ; $56dd: $86
    ld a, c                                       ; $56de: $79
    add b                                         ; $56df: $80
    jr jr_0bb_5761                                ; $56e0: $18 $7f

    sbc c                                         ; $56e2: $99
    ld h, [hl]                                    ; $56e3: $66
    jr nz, @+$10                                  ; $56e4: $20 $0e

    ld [hl], $05                                  ; $56e6: $36 $05
    ld [hl], e                                    ; $56e8: $73
    ld b, c                                       ; $56e9: $41
    ld a, $a0                                     ; $56ea: $3e $a0

jr_0bb_56ec:
    or d                                          ; $56ec: $b2
    nop                                           ; $56ed: $00
    inc c                                         ; $56ee: $0c
    ld b, b                                       ; $56ef: $40

jr_0bb_56f0:
    jr z, jr_0bb_574e                             ; $56f0: $28 $5c

    and e                                         ; $56f2: $a3
    add sp, $17                                   ; $56f3: $e8 $17
    ld b, d                                       ; $56f5: $42
    inc b                                         ; $56f6: $04

jr_0bb_56f7:
    cp l                                          ; $56f7: $bd
    nop                                           ; $56f8: $00
    ld h, h                                       ; $56f9: $64
    add b                                         ; $56fa: $80
    add b                                         ; $56fb: $80
    ld h, d                                       ; $56fc: $62
    ld [$728d], sp                                ; $56fd: $08 $8d $72
    ld bc, $7e81                                  ; $5700: $01 $81 $7e
    nop                                           ; $5703: $00
    rst $38                                       ; $5704: $ff
    ld h, b                                       ; $5705: $60

jr_0bb_5706:
    jr jr_0bb_571b                                ; $5706: $18 $13

    ld b, b                                       ; $5708: $40
    jr nz, jr_0bb_573c                            ; $5709: $20 $31

    ld a, b                                       ; $570b: $78
    add a                                         ; $570c: $87
    ret nc                                        ; $570d: $d0

    jr z, jr_0bb_5740                             ; $570e: $28 $30

    ld a, [de]                                    ; $5710: $1a
    add b                                         ; $5711: $80
    ld a, a                                       ; $5712: $7f
    adc h                                         ; $5713: $8c
    ld b, b                                       ; $5714: $40
    nop                                           ; $5715: $00
    ld [$1f20], sp                                ; $5716: $08 $20 $1f
    jr jr_0bb_571f                                ; $5719: $18 $04

jr_0bb_571b:
    add b                                         ; $571b: $80
    jr c, jr_0bb_5706                             ; $571c: $38 $e8

    rla                                           ; $571e: $17

jr_0bb_571f:
    ld h, c                                       ; $571f: $61
    inc b                                         ; $5720: $04
    sbc [hl]                                      ; $5721: $9e
    nop                                           ; $5722: $00
    ld h, [hl]                                    ; $5723: $66
    sub b                                         ; $5724: $90
    sub b                                         ; $5725: $90
    jr nz, jr_0bb_5736                            ; $5726: $20 $0e

    ld [bc], a                                    ; $5728: $02
    db $fd                                        ; $5729: $fd
    and b                                         ; $572a: $a0
    ldh a, [rP1]                                  ; $572b: $f0 $00
    add a                                         ; $572d: $87
    ldh a, [$38]                                  ; $572e: $f0 $38
    jr nz, @+$61                                  ; $5730: $20 $5f

    db $10                                        ; $5732: $10
    ld l, a                                       ; $5733: $6f
    inc c                                         ; $5734: $0c
    db $10                                        ; $5735: $10

jr_0bb_5736:
    jr nc, jr_0bb_5738                            ; $5736: $30 $00

jr_0bb_5738:
    ld [$2f90], sp                                ; $5738: $08 $90 $2f
    add b                                         ; $573b: $80

jr_0bb_573c:
    ld a, a                                       ; $573c: $7f
    ld h, [hl]                                    ; $573d: $66
    jr jr_0bb_5740                                ; $573e: $18 $00

jr_0bb_5740:
    rst $38                                       ; $5740: $ff
    and $62                                       ; $5741: $e6 $62
    ld h, d                                       ; $5743: $62
    dec [hl]                                      ; $5744: $35
    ld sp, $00cc                                  ; $5745: $31 $cc $00
    jr c, jr_0bb_577c                             ; $5748: $38 $32

    call Call_000_0dc4                            ; $574a: $cd $c4 $0d
    nop                                           ; $574d: $00

jr_0bb_574e:
    add hl, de                                    ; $574e: $19
    or b                                          ; $574f: $b0
    jr z, @-$5f                                   ; $5750: $28 $9f

    ld h, b                                       ; $5752: $60
    ld a, $00                                     ; $5753: $3e $00
    pop bc                                        ; $5755: $c1
    ld [$00f7], sp                                ; $5756: $08 $f7 $00
    jr jr_0bb_57bb                                ; $5759: $18 $60

    ld h, b                                       ; $575b: $60
    jr c, jr_0bb_575e                             ; $575c: $38 $00

jr_0bb_575e:
    jr c, jr_0bb_57d8                             ; $575e: $38 $78

    ld a, b                                       ; $5760: $78

jr_0bb_5761:
    jr c, jr_0bb_579b                             ; $5761: $38 $38

    ld e, $e0                                     ; $5763: $1e $e0
    ld h, c                                       ; $5765: $61
    ld bc, $af80                                  ; $5766: $01 $80 $af
    cpl                                           ; $5769: $2f
    ld h, [hl]                                    ; $576a: $66
    ld h, [hl]                                    ; $576b: $66
    inc sp                                        ; $576c: $33
    inc sp                                        ; $576d: $33
    jr nc, jr_0bb_5788                            ; $576e: $30 $18

    nop                                           ; $5770: $00
    ldh [$1f], a                                  ; $5771: $e0 $1f
    dec e                                         ; $5773: $1d
    nop                                           ; $5774: $00
    rst $30                                       ; $5775: $f7
    rst $30                                       ; $5776: $f7
    add $c6                                       ; $5777: $c6 $c6
    nop                                           ; $5779: $00
    ld c, b                                       ; $577a: $48
    ld b, b                                       ; $577b: $40

jr_0bb_577c:
    or e                                          ; $577c: $b3
    nop                                           ; $577d: $00
    ld c, h                                       ; $577e: $4c
    or e                                          ; $577f: $b3
    nop                                           ; $5780: $00
    rst $38                                       ; $5781: $ff
    nop                                           ; $5782: $00
    scf                                           ; $5783: $37
    ret nz                                        ; $5784: $c0

    add sp, $00                                   ; $5785: $e8 $00
    db $fd                                        ; $5787: $fd

jr_0bb_5788:
    cp l                                          ; $5788: $bd
    xor [hl]                                      ; $5789: $ae
    xor [hl]                                      ; $578a: $ae
    nop                                           ; $578b: $00
    ld c, c                                       ; $578c: $49
    add hl, bc                                    ; $578d: $09
    scf                                           ; $578e: $37
    nop                                           ; $578f: $00
    call z, $0033                                 ; $5790: $cc $33 $00
    rst $38                                       ; $5793: $ff
    nop                                           ; $5794: $00
    xor l                                         ; $5795: $ad
    nop                                           ; $5796: $00
    ld b, d                                       ; $5797: $42
    nop                                           ; $5798: $00
    ld sp, hl                                     ; $5799: $f9
    ld sp, hl                                     ; $579a: $f9

jr_0bb_579b:
    ld [hl], l                                    ; $579b: $75
    ld [hl], l                                    ; $579c: $75
    ld [bc], a                                    ; $579d: $02
    sub c                                         ; $579e: $91
    add b                                         ; $579f: $80
    db $ec                                        ; $57a0: $ec
    nop                                           ; $57a1: $00
    sub e                                         ; $57a2: $93
    ld l, h                                       ; $57a3: $6c
    cp $0f                                        ; $57a4: $fe $0f
    call c, Call_000_2345                         ; $57a6: $dc $45 $23
    or $03                                        ; $57a9: $f6 $03
    nop                                           ; $57ab: $00
    adc c                                         ; $57ac: $89
    halt                                          ; $57ad: $76
    sub $0f                                       ; $57ae: $d6 $0f
    scf                                           ; $57b0: $37
    ldh a, [rTAC]                                 ; $57b1: $f0 $07
    ld [bc], a                                    ; $57b3: $02
    ld b, d                                       ; $57b4: $42
    cp l                                          ; $57b5: $bd
    ld b, $f9                                     ; $57b6: $06 $f9
    and b                                         ; $57b8: $a0
    ld e, a                                       ; $57b9: $5f
    ld e, d                                       ; $57ba: $5a

jr_0bb_57bb:
    dec bc                                        ; $57bb: $0b
    rst $38                                       ; $57bc: $ff
    jr nz, jr_0bb_57bf                            ; $57bd: $20 $00

jr_0bb_57bf:
    cp $f0                                        ; $57bf: $fe $f0
    rlca                                          ; $57c1: $07
    dec b                                         ; $57c2: $05
    ld a, [$0ef1]                                 ; $57c3: $fa $f1 $0e
    inc hl                                        ; $57c6: $23
    nop                                           ; $57c7: $00
    call c, Call_000_00ff                         ; $57c8: $dc $ff $00
    cp a                                          ; $57cb: $bf
    ld b, b                                       ; $57cc: $40
    rst $38                                       ; $57cd: $ff
    nop                                           ; $57ce: $00
    rlca                                          ; $57cf: $07
    add b                                         ; $57d0: $80
    pop af                                        ; $57d1: $f1
    ld bc, $748b                                  ; $57d2: $01 $8b $74
    ld a, a                                       ; $57d5: $7f
    add b                                         ; $57d6: $80
    ret nc                                        ; $57d7: $d0

jr_0bb_57d8:
    cpl                                           ; $57d8: $2f
    rst $38                                       ; $57d9: $ff
    jr nc, jr_0bb_57dc                            ; $57da: $30 $00

jr_0bb_57dc:
    cpl                                           ; $57dc: $2f
    sbc $07                                       ; $57dd: $de $07
    jr nz, jr_0bb_57e9                            ; $57df: $20 $08

    inc a                                         ; $57e1: $3c
    jp Jump_000_2ed1                              ; $57e2: $c3 $d1 $2e


    dec b                                         ; $57e5: $05
    cp a                                          ; $57e6: $bf
    ld b, b                                       ; $57e7: $40
    rra                                           ; $57e8: $1f

jr_0bb_57e9:
    ldh [$fe], a                                  ; $57e9: $e0 $fe
    ret z                                         ; $57eb: $c8

    inc bc                                        ; $57ec: $03
    add a                                         ; $57ed: $87
    ld de, $0202                                  ; $57ee: $11 $02 $02
    ld d, b                                       ; $57f1: $50
    xor a                                         ; $57f2: $af
    db $e3                                        ; $57f3: $e3
    inc e                                         ; $57f4: $1c
    inc d                                         ; $57f5: $14
    db $eb                                        ; $57f6: $eb
    call nc, $c90b                                ; $57f7: $d4 $0b $c9
    jr nz, jr_0bb_57fc                            ; $57fa: $20 $00

jr_0bb_57fc:
    db $fd                                        ; $57fc: $fd
    ld hl, $1802                                  ; $57fd: $21 $02 $18
    rst $20                                       ; $5800: $e7
    jp nc, $ff2d                                  ; $5801: $d2 $2d $ff

    ld b, h                                       ; $5804: $44
    nop                                           ; $5805: $00
    ld [hl-], a                                   ; $5806: $32
    ld [$007f], sp                                ; $5807: $08 $7f $00
    ld [hl], c                                    ; $580a: $71
    ld sp, $0b02                                  ; $580b: $31 $02 $0b
    db $f4                                        ; $580e: $f4
    dec c                                         ; $580f: $0d
    rst $38                                       ; $5810: $ff
    nop                                           ; $5811: $00
    sub b                                         ; $5812: $90
    ld l, a                                       ; $5813: $6f
    cp d                                          ; $5814: $ba
    inc bc                                        ; $5815: $03
    ld d, e                                       ; $5816: $53
    ld [bc], a                                    ; $5817: $02
    ldh a, [$09]                                  ; $5818: $f0 $09
    ld [bc], a                                    ; $581a: $02
    ld b, c                                       ; $581b: $41
    ld a, a                                       ; $581c: $7f
    ld l, c                                       ; $581d: $69
    ld [bc], a                                    ; $581e: $02
    ei                                            ; $581f: $fb
    nop                                           ; $5820: $00
    inc b                                         ; $5821: $04
    nop                                           ; $5822: $00
    ld h, e                                       ; $5823: $63
    inc hl                                        ; $5824: $23
    ld [bc], a                                    ; $5825: $02
    inc d                                         ; $5826: $14
    db $e4                                        ; $5827: $e4
    nop                                           ; $5828: $00
    dec bc                                        ; $5829: $0b
    ld c, e                                       ; $582a: $4b
    rlca                                          ; $582b: $07
    inc bc                                        ; $582c: $03
    ld e, l                                       ; $582d: $5d
    ld [bc], a                                    ; $582e: $02
    halt                                          ; $582f: $76
    nop                                           ; $5830: $00
    inc d                                         ; $5831: $14
    add b                                         ; $5832: $80
    nop                                           ; $5833: $00
    ld e, c                                       ; $5834: $59
    add e                                         ; $5835: $83
    ld [bc], a                                    ; $5836: $02
    ldh a, [$79]                                  ; $5837: $f0 $79
    ld [bc], a                                    ; $5839: $02
    ld b, c                                       ; $583a: $41
    nop                                           ; $583b: $00
    ld d, h                                       ; $583c: $54
    ld c, $2a                                     ; $583d: $0e $2a
    nop                                           ; $583f: $00
    ld bc, $0024                                  ; $5840: $01 $24 $00
    ret nz                                        ; $5843: $c0

    add d                                         ; $5844: $82
    nop                                           ; $5845: $00
    jr jr_0bb_5848                                ; $5846: $18 $00

jr_0bb_5848:
    ld b, h                                       ; $5848: $44
    jp nz, $0038                                  ; $5849: $c2 $38 $00

    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    xor $34                                       ; $584e: $ee $34
    nop                                           ; $5850: $00
    inc bc                                        ; $5851: $03
    nop                                           ; $5852: $00
    ld b, l                                       ; $5853: $45
    ld a, [$0094]                                 ; $5854: $fa $94 $00
    ld hl, sp+$00                                 ; $5857: $f8 $00
    ld sp, $02ad                                  ; $5859: $31 $ad $02
    add hl, sp                                    ; $585c: $39
    or c                                          ; $585d: $b1
    ld [bc], a                                    ; $585e: $02
    nop                                           ; $585f: $00
    rlca                                          ; $5860: $07
    nop                                           ; $5861: $00
    rra                                           ; $5862: $1f
    nop                                           ; $5863: $00
    jp hl                                         ; $5864: $e9


    nop                                           ; $5865: $00
    ld a, $00                                     ; $5866: $3e $00
    ld b, [hl]                                    ; $5868: $46
    add c                                         ; $5869: $81
    cp a                                          ; $586a: $bf
    ld bc, $0080                                  ; $586b: $01 $80 $00
    ld e, [hl]                                    ; $586e: $5e
    ld h, b                                       ; $586f: $60
    ld a, [bc]                                    ; $5870: $0a
    sbc e                                         ; $5871: $9b
    rlca                                          ; $5872: $07
    dec b                                         ; $5873: $05
    push de                                       ; $5874: $d5
    rst $08                                       ; $5875: $cf
    inc bc                                        ; $5876: $03
    ld h, c                                       ; $5877: $61
    add hl, bc                                    ; $5878: $09
    ld b, [hl]                                    ; $5879: $46
    ld [hl+], a                                   ; $587a: $22
    db $10                                        ; $587b: $10
    ret c                                         ; $587c: $d8

    ld b, b                                       ; $587d: $40
    nop                                           ; $587e: $00
    ld [hl], b                                    ; $587f: $70
    db $dd                                        ; $5880: $dd
    ld [bc], a                                    ; $5881: $02
    ld d, b                                       ; $5882: $50
    ld l, [hl]                                    ; $5883: $6e
    sub e                                         ; $5884: $93
    ld [bc], a                                    ; $5885: $02
    ld b, e                                       ; $5886: $43
    push hl                                       ; $5887: $e5
    ld [bc], a                                    ; $5888: $02
    ld l, b                                       ; $5889: $68
    nop                                           ; $588a: $00
    ld [bc], a                                    ; $588b: $02
    ld [bc], a                                    ; $588c: $02
    inc b                                         ; $588d: $04
    ld [$0108], sp                                ; $588e: $08 $08 $01
    ld bc, $f4c0                                  ; $5891: $01 $c0 $f4
    inc bc                                        ; $5894: $03
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    ld d, c                                       ; $5897: $51
    jr nc, jr_0bb_5902                            ; $5898: $30 $68

    nop                                           ; $589a: $00
    inc c                                         ; $589b: $0c
    db $fc                                        ; $589c: $fc
    ld bc, $bfbf                                  ; $589d: $01 $bf $bf
    inc b                                         ; $58a0: $04
    jp nz, Jump_000_0401                          ; $58a1: $c2 $01 $04

    db $dd                                        ; $58a4: $dd
    db $dd                                        ; $58a5: $dd
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    cp c                                          ; $58a8: $b9
    add hl, bc                                    ; $58a9: $09
    inc de                                        ; $58aa: $13
    db $ec                                        ; $58ab: $ec
    db $ec                                        ; $58ac: $ec
    dec b                                         ; $58ad: $05
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    ld a, d                                       ; $58b0: $7a
    ld a, d                                       ; $58b1: $7a
    nop                                           ; $58b2: $00
    rla                                           ; $58b3: $17
    inc bc                                        ; $58b4: $03
    ld bc, $041d                                  ; $58b5: $01 $1d $04
    nop                                           ; $58b8: $00
    ld c, $0e                                     ; $58b9: $0e $0e
    nop                                           ; $58bb: $00
    nop                                           ; $58bc: $00
    cpl                                           ; $58bd: $2f
    cpl                                           ; $58be: $2f
    nop                                           ; $58bf: $00
    nop                                           ; $58c0: $00
    ld [hl+], a                                   ; $58c1: $22
    dec sp                                        ; $58c2: $3b
    dec sp                                        ; $58c3: $3b
    jr jr_0bb_58dd                                ; $58c4: $18 $17

    ld hl, sp-$01                                 ; $58c6: $f8 $ff
    db $e4                                        ; $58c8: $e4
    or l                                          ; $58c9: $b5
    rlca                                          ; $58ca: $07
    ld [hl], b                                    ; $58cb: $70
    sub b                                         ; $58cc: $90
    ld [hl+], a                                   ; $58cd: $22
    dec b                                         ; $58ce: $05
    ld h, b                                       ; $58cf: $60
    ld a, [c]                                     ; $58d0: $f2
    scf                                           ; $58d1: $37
    inc bc                                        ; $58d2: $03
    dec c                                         ; $58d3: $0d
    nop                                           ; $58d4: $00
    add b                                         ; $58d5: $80
    add b                                         ; $58d6: $80
    inc h                                         ; $58d7: $24
    inc sp                                        ; $58d8: $33
    inc sp                                        ; $58d9: $33
    ld b, b                                       ; $58da: $40
    dec bc                                        ; $58db: $0b
    sbc b                                         ; $58dc: $98

jr_0bb_58dd:
    sbc b                                         ; $58dd: $98
    ld b, [hl]                                    ; $58de: $46
    dec bc                                        ; $58df: $0b
    inc [hl]                                      ; $58e0: $34
    inc [hl]                                      ; $58e1: $34
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    nop                                           ; $58e4: $00
    ld h, l                                       ; $58e5: $65
    ld h, l                                       ; $58e6: $65
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    push bc                                       ; $58e9: $c5
    push bc                                       ; $58ea: $c5
    ld de, $0000                                  ; $58eb: $11 $00 $00
    inc a                                         ; $58ee: $3c
    and $1a                                       ; $58ef: $e6 $1a
    ld d, $e0                                     ; $58f1: $16 $e0
    ldh [$60], a                                  ; $58f3: $e0 $60
    dec bc                                        ; $58f5: $0b
    ld [bc], a                                    ; $58f6: $02
    dec sp                                        ; $58f7: $3b
    dec sp                                        ; $58f8: $3b
    ld [bc], a                                    ; $58f9: $02
    nop                                           ; $58fa: $00
    ldh a, [$30]                                  ; $58fb: $f0 $30
    ld [hl-], a                                   ; $58fd: $32
    nop                                           ; $58fe: $00
    dec c                                         ; $58ff: $0d
    add b                                         ; $5900: $80
    ld [hl], b                                    ; $5901: $70

jr_0bb_5902:
    inc c                                         ; $5902: $0c
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    db $d3                                        ; $5905: $d3
    db $d3                                        ; $5906: $d3
    ldh [$e0], a                                  ; $5907: $e0 $e0
    db $fd                                        ; $5909: $fd
    sub b                                         ; $590a: $90
    dec [hl]                                      ; $590b: $35
    ld bc, $9d9d                                  ; $590c: $01 $9d $9d
    ld h, a                                       ; $590f: $67
    rlca                                          ; $5910: $07
    ld a, a                                       ; $5911: $7f
    xor $ee                                       ; $5912: $ee $ee
    add e                                         ; $5914: $83
    nop                                           ; $5915: $00
    add e                                         ; $5916: $83
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    ld l, a                                       ; $5919: $6f

jr_0bb_591a:
    ld l, a                                       ; $591a: $6f
    nop                                           ; $591b: $00
    nop                                           ; $591c: $00
    ld l, h                                       ; $591d: $6c
    nop                                           ; $591e: $00
    ld l, h                                       ; $591f: $6c
    rst $38                                       ; $5920: $ff
    rst $38                                       ; $5921: $ff
    and b                                         ; $5922: $a0
    and b                                         ; $5923: $a0
    rst $38                                       ; $5924: $ff
    rst $38                                       ; $5925: $ff
    pop hl                                        ; $5926: $e1
    inc b                                         ; $5927: $04
    pop hl                                        ; $5928: $e1
    rst $38                                       ; $5929: $ff
    rst $38                                       ; $592a: $ff
    ld b, b                                       ; $592b: $40
    ld b, b                                       ; $592c: $40

jr_0bb_592d:
    ld a, b                                       ; $592d: $78
    db $10                                        ; $592e: $10
    rst $38                                       ; $592f: $ff
    ld b, c                                       ; $5930: $41
    ld b, b                                       ; $5931: $40
    ld b, c                                       ; $5932: $41
    rst $00                                       ; $5933: $c7
    ld b, $fe                                     ; $5934: $06 $fe
    ld a, a                                       ; $5936: $7f
    ld a, a                                       ; $5937: $7f
    ld [bc], a                                    ; $5938: $02
    ld [bc], a                                    ; $5939: $02
    jr c, jr_0bb_593c                             ; $593a: $38 $00

jr_0bb_593c:
    jr c, jr_0bb_591a                             ; $593c: $38 $dc

    call c, $ffff                                 ; $593e: $dc $ff $ff
    add d                                         ; $5941: $82
    add d                                         ; $5942: $82
    rst $20                                       ; $5943: $e7
    jr nc, jr_0bb_592d                            ; $5944: $30 $e7

    cp $b1                                        ; $5946: $fe $b1
    ld bc, $4830                                  ; $5948: $01 $30 $48
    dec a                                         ; $594b: $3d
    dec a                                         ; $594c: $3d
    db $e3                                        ; $594d: $e3
    db $e3                                        ; $594e: $e3
    pop hl                                        ; $594f: $e1
    jr nc, jr_0bb_599a                            ; $5950: $30 $48

    add d                                         ; $5952: $82
    ld [$1860], sp                                ; $5953: $08 $60 $18
    rst $28                                       ; $5956: $ef
    rst $28                                       ; $5957: $ef
    ld a, [hl]                                    ; $5958: $7e
    ld a, [hl]                                    ; $5959: $7e
    inc [hl]                                      ; $595a: $34
    ld [$4090], sp                                ; $595b: $08 $90 $40
    ld [$0000], sp                                ; $595e: $08 $00 $00
    ld b, b                                       ; $5961: $40
    jr @+$01                                      ; $5962: $18 $ff

    rst $38                                       ; $5964: $ff
    di                                            ; $5965: $f3
    di                                            ; $5966: $f3
    sub b                                         ; $5967: $90
    ld h, b                                       ; $5968: $60
    ld [$ffff], sp                                ; $5969: $08 $ff $ff
    ld h, b                                       ; $596c: $60
    jr z, @+$01                                   ; $596d: $28 $ff

    rst $38                                       ; $596f: $ff
    db $fc                                        ; $5970: $fc
    db $fc                                        ; $5971: $fc
    ld c, $ff                                     ; $5972: $0e $ff
    rst $38                                       ; $5974: $ff
    ld a, l                                       ; $5975: $7d
    ld a, l                                       ; $5976: $7d
    sub b                                         ; $5977: $90
    ld [$0830], sp                                ; $5978: $08 $30 $08
    ld [hl], d                                    ; $597b: $72
    ld [$4261], sp                                ; $597c: $08 $61 $42
    ld h, c                                       ; $597f: $61
    jr nz, jr_0bb_59ba                            ; $5980: $20 $38

    rst $08                                       ; $5982: $cf
    rst $08                                       ; $5983: $cf
    ld [hl], a                                    ; $5984: $77
    ld [hl], a                                    ; $5985: $77
    add [hl]                                      ; $5986: $86
    ld [$40b9], sp                                ; $5987: $08 $b9 $40
    cp c                                          ; $598a: $b9
    jr nz, jr_0bb_59a5                            ; $598b: $20 $18

    ld b, [hl]                                    ; $598d: $46
    ld b, [hl]                                    ; $598e: $46
    rst $00                                       ; $598f: $c7
    rst $00                                       ; $5990: $c7
    rst $38                                       ; $5991: $ff
    rst $38                                       ; $5992: $ff
    ld [$c6c6], sp                                ; $5993: $08 $c6 $c6
    ld sp, hl                                     ; $5996: $f9
    ld sp, hl                                     ; $5997: $f9
    jr nc, jr_0bb_59b2                            ; $5998: $30 $18

jr_0bb_599a:
    ld c, a                                       ; $599a: $4f
    ld c, a                                       ; $599b: $4f
    ldh a, [rLY]                                  ; $599c: $f0 $44
    ldh a, [$31]                                  ; $599e: $f0 $31
    ld b, $3f                                     ; $59a0: $06 $3f

jr_0bb_59a2:
    db $fd                                        ; $59a2: $fd
    db $fd                                        ; $59a3: $fd
    ld b, b                                       ; $59a4: $40

jr_0bb_59a5:
    jr @-$2b                                      ; $59a5: $18 $d3

    db $d3                                        ; $59a7: $d3
    ld [$ffff], sp                                ; $59a8: $08 $ff $ff
    ret nc                                        ; $59ab: $d0

    ret nc                                        ; $59ac: $d0

    ld b, b                                       ; $59ad: $40
    ld c, b                                       ; $59ae: $48
    rrca                                          ; $59af: $0f
    rrca                                          ; $59b0: $0f
    rst $38                                       ; $59b1: $ff

jr_0bb_59b2:
    ld [de], a                                    ; $59b2: $12
    rst $38                                       ; $59b3: $ff
    sbc a                                         ; $59b4: $9f
    sbc a                                         ; $59b5: $9f
    ld b, b                                       ; $59b6: $40
    jr z, jr_0bb_59a2                             ; $59b7: $28 $e9

    jp hl                                         ; $59b9: $e9


jr_0bb_59ba:
    sbc [hl]                                      ; $59ba: $9e
    rrca                                          ; $59bb: $0f
    db $fd                                        ; $59bc: $fd
    nop                                           ; $59bd: $00
    rst $38                                       ; $59be: $ff
    db $fc                                        ; $59bf: $fc
    ei                                            ; $59c0: $fb
    sbc e                                         ; $59c1: $9b
    db $fc                                        ; $59c2: $fc
    ld l, d                                       ; $59c3: $6a
    sub h                                         ; $59c4: $94
    or [hl]                                       ; $59c5: $b6
    jr nc, jr_0bb_59d0                            ; $59c6: $30 $08

    inc e                                         ; $59c8: $1c
    ld [hl], b                                    ; $59c9: $70
    ld c, $b1                                     ; $59ca: $0e $b1
    rla                                           ; $59cc: $17
    ld l, a                                       ; $59cd: $6f
    rst $18                                       ; $59ce: $df
    sbc a                                         ; $59cf: $9f

jr_0bb_59d0:
    ld h, a                                       ; $59d0: $67
    nop                                           ; $59d1: $00
    rst $30                                       ; $59d2: $f7
    rrca                                          ; $59d3: $0f
    ld d, a                                       ; $59d4: $57
    ld c, $fd                                     ; $59d5: $0e $fd
    ei                                            ; $59d7: $fb
    ld sp, hl                                     ; $59d8: $f9
    rst $38                                       ; $59d9: $ff
    nop                                           ; $59da: $00
    ei                                            ; $59db: $fb
    push af                                       ; $59dc: $f5
    push af                                       ; $59dd: $f5
    db $eb                                        ; $59de: $eb
    db $ed                                        ; $59df: $ed
    db $d3                                        ; $59e0: $d3
    push bc                                       ; $59e1: $c5
    di                                            ; $59e2: $f3
    ld [$a1d2], sp                                ; $59e3: $08 $d2 $a1
    daa                                           ; $59e6: $27
    ret nz                                        ; $59e7: $c0

jr_0bb_59e8:
    add hl, hl                                    ; $59e8: $29
    rrca                                          ; $59e9: $0f
    sbc $ef                                       ; $59ea: $de $ef
    adc $00                                       ; $59ec: $ce $00
    db $fd                                        ; $59ee: $fd
    or l                                          ; $59ef: $b5
    jp z, $845b                                   ; $59f0: $ca $5b $84

    xor $00                                       ; $59f3: $ee $00
    ld h, h                                       ; $59f5: $64
    add b                                         ; $59f6: $80
    jr nc, jr_0bb_5a21                            ; $59f7: $30 $28

    ld a, a                                       ; $59f9: $7f
    ld l, a                                       ; $59fa: $6f
    rst $18                                       ; $59fb: $df
    rla                                           ; $59fc: $17
    rst $28                                       ; $59fd: $ef
    rst $38                                       ; $59fe: $ff
    inc bc                                        ; $59ff: $03
    ld b, b                                       ; $5a00: $40
    ei                                            ; $5a01: $fb
    ld d, b                                       ; $5a02: $50
    scf                                           ; $5a03: $37
    ei                                            ; $5a04: $fb
    rst $38                                       ; $5a05: $ff
    di                                            ; $5a06: $f3
    rst $28                                       ; $5a07: $ef
    db $eb                                        ; $5a08: $eb
    rst $10                                       ; $5a09: $d7
    jr nz, jr_0bb_59e8                            ; $5a0a: $20 $dc

    db $e3                                        ; $5a0c: $e3
    ld e, a                                       ; $5a0d: $5f
    ccf                                           ; $5a0e: $3f
    cp a                                          ; $5a0f: $bf
    rst $18                                       ; $5a10: $df
    ld e, a                                       ; $5a11: $5f
    cp a                                          ; $5a12: $bf
    xor a                                         ; $5a13: $af
    jr nz, jr_0bb_5a35                            ; $5a14: $20 $1f

    rst $38                                       ; $5a16: $ff
    ld hl, $ef0f                                  ; $5a17: $21 $0f $ef
    push af                                       ; $5a1a: $f5
    db $eb                                        ; $5a1b: $eb
    push hl                                       ; $5a1c: $e5
    ld a, [$fa00]                                 ; $5a1d: $fa $00 $fa
    pop bc                                        ; $5a20: $c1

jr_0bb_5a21:
    db $d3                                        ; $5a21: $d3
    and b                                         ; $5a22: $a0
    push hl                                       ; $5a23: $e5
    add b                                         ; $5a24: $80
    rst $38                                       ; $5a25: $ff
    ret nc                                        ; $5a26: $d0

    jr z, @+$01                                   ; $5a27: $28 $ff

    add b                                         ; $5a29: $80
    ld l, h                                       ; $5a2a: $6c
    ld b, $e0                                     ; $5a2b: $06 $e0
    ld [$fb08], sp                                ; $5a2d: $08 $08 $fb
    call nz, $00f8                                ; $5a30: $c4 $f8 $00
    daa                                           ; $5a33: $27
    xor d                                         ; $5a34: $aa

jr_0bb_5a35:
    dec b                                         ; $5a35: $05
    ld a, l                                       ; $5a36: $7d
    ld [bc], a                                    ; $5a37: $02
    rst $38                                       ; $5a38: $ff
    nop                                           ; $5a39: $00
    rst $10                                       ; $5a3a: $d7
    inc b                                         ; $5a3b: $04
    jr z, jr_0bb_5a88                             ; $5a3c: $28 $4a

    or l                                          ; $5a3e: $b5
    ld b, e                                       ; $5a3f: $43
    cp h                                          ; $5a40: $bc
    and a                                         ; $5a41: $a7
    ld c, $f6                                     ; $5a42: $0e $f6
    nop                                           ; $5a44: $00
    ld b, e                                       ; $5a45: $43
    sbc e                                         ; $5a46: $9b
    dec bc                                        ; $5a47: $0b
    dec b                                         ; $5a48: $05
    db $ed                                        ; $5a49: $ed
    ld [de], a                                    ; $5a4a: $12
    ret z                                         ; $5a4b: $c8

    scf                                           ; $5a4c: $37
    add [hl]                                      ; $5a4d: $86
    inc bc                                        ; $5a4e: $03
    rrca                                          ; $5a4f: $0f
    rlca                                          ; $5a50: $07
    ld b, b                                       ; $5a51: $40
    ld d, [hl]                                    ; $5a52: $56
    add hl, de                                    ; $5a53: $19
    dec b                                         ; $5a54: $05
    rst $38                                       ; $5a55: $ff
    nop                                           ; $5a56: $00
    add hl, hl                                    ; $5a57: $29
    sub $13                                       ; $5a58: $d6 $13
    db $ec                                        ; $5a5a: $ec
    add b                                         ; $5a5b: $80
    push bc                                       ; $5a5c: $c5
    ld e, $7f                                     ; $5a5d: $1e $7f
    rst $38                                       ; $5a5f: $ff
    cp a                                          ; $5a60: $bf
    ld a, a                                       ; $5a61: $7f
    ccf                                           ; $5a62: $3f
    rst $38                                       ; $5a63: $ff
    sbc a                                         ; $5a64: $9f
    nop                                           ; $5a65: $00
    ld a, a                                       ; $5a66: $7f
    rst $08                                       ; $5a67: $cf
    ccf                                           ; $5a68: $3f
    sbc a                                         ; $5a69: $9f
    ld a, a                                       ; $5a6a: $7f
    cp a                                          ; $5a6b: $bf
    ld a, a                                       ; $5a6c: $7f
    rst $18                                       ; $5a6d: $df
    nop                                           ; $5a6e: $00
    dec sp                                        ; $5a6f: $3b
    rst $28                                       ; $5a70: $ef
    rst $10                                       ; $5a71: $d7
    jp nc, Jump_000_3def                          ; $5a72: $d2 $ef $3d

    jp nz, Jump_000_22e7                          ; $5a75: $c2 $e7 $22

    nop                                           ; $5a78: $00
    xor a                                         ; $5a79: $af
    db $e4                                        ; $5a7a: $e4
    ld b, $e7                                     ; $5a7b: $06 $e7
    jr @+$04                                      ; $5a7d: $18 $02

    ld [$ff01], sp                                ; $5a7f: $08 $01 $ff
    inc b                                         ; $5a82: $04
    rst $28                                       ; $5a83: $ef
    rst $28                                       ; $5a84: $ef
    or $d6                                        ; $5a85: $f6 $d6

jr_0bb_5a87:
    ld l, c                                       ; $5a87: $69

jr_0bb_5a88:
    inc d                                         ; $5a88: $14
    jr jr_0bb_5a87                                ; $5a89: $18 $fc

    inc bc                                        ; $5a8b: $03
    inc b                                         ; $5a8c: $04
    sub a                                         ; $5a8d: $97
    ld h, b                                       ; $5a8e: $60
    ld [hl], e                                    ; $5a8f: $73
    add b                                         ; $5a90: $80
    db $eb                                        ; $5a91: $eb
    nop                                           ; $5a92: $00
    rlca                                          ; $5a93: $07
    rst $30                                       ; $5a94: $f7
    ld [$d900], sp                                ; $5a95: $08 $00 $d9
    ld h, $12                                     ; $5a98: $26 $12
    db $ed                                        ; $5a9a: $ed
    nop                                           ; $5a9b: $00
    rst $38                                       ; $5a9c: $ff
    ld c, l                                       ; $5a9d: $4d
    inc bc                                        ; $5a9e: $03
    nop                                           ; $5a9f: $00
    push hl                                       ; $5aa0: $e5
    ld [bc], a                                    ; $5aa1: $02
    ld h, [hl]                                    ; $5aa2: $66
    add c                                         ; $5aa3: $81
    rst $30                                       ; $5aa4: $f7
    nop                                           ; $5aa5: $00
    inc a                                         ; $5aa6: $3c
    ret nz                                        ; $5aa7: $c0

    nop                                           ; $5aa8: $00
    cpl                                           ; $5aa9: $2f
    ret nc                                        ; $5aaa: $d0

    rrca                                          ; $5aab: $0f
    ldh a, [rSB]                                  ; $5aac: $f0 $01
    cp $bf                                        ; $5aae: $fe $bf
    ld b, b                                       ; $5ab0: $40
    nop                                           ; $5ab1: $00
    di                                            ; $5ab2: $f3
    nop                                           ; $5ab3: $00
    ld a, a                                       ; $5ab4: $7f
    add b                                         ; $5ab5: $80
    db $fd                                        ; $5ab6: $fd
    ld [bc], a                                    ; $5ab7: $02
    call $0c32                                    ; $5ab8: $cd $32 $0c
    db $e3                                        ; $5abb: $e3

jr_0bb_5abc:
    inc e                                         ; $5abc: $1c
    ret nz                                        ; $5abd: $c0

    ccf                                           ; $5abe: $3f
    add hl, hl                                    ; $5abf: $29
    rra                                           ; $5ac0: $1f
    ld b, $48                                     ; $5ac1: $06 $48
    ld e, b                                       ; $5ac3: $58
    and a                                         ; $5ac4: $a7
    jr nz, @+$22                                  ; $5ac5: $20 $20

    rst $18                                       ; $5ac7: $df
    rst $30                                       ; $5ac8: $f7
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    ldh [$e0], a                                  ; $5acb: $e0 $e0
    ld h, b                                       ; $5acd: $60
    ld h, b                                       ; $5ace: $60
    sub $04                                       ; $5acf: $d6 $04
    ld [$20dd], sp                                ; $5ad1: $08 $dd $20
    rst $18                                       ; $5ad4: $df
    adc b                                         ; $5ad5: $88
    rlca                                          ; $5ad6: $07
    adc a                                         ; $5ad7: $8f
    sbc d                                         ; $5ad8: $9a
    rla                                           ; $5ad9: $17
    rst $28                                       ; $5ada: $ef
    jr nz, jr_0bb_5abc                            ; $5adb: $20 $df

    ld bc, $8fef                                  ; $5add: $01 $ef $8f
    rst $38                                       ; $5ae0: $ff
    xor a                                         ; $5ae1: $af
    rst $18                                       ; $5ae2: $df
    or a                                          ; $5ae3: $b7
    rst $08                                       ; $5ae4: $cf
    ld d, b                                       ; $5ae5: $50
    ld hl, $ef00                                  ; $5ae6: $21 $00 $ef
    rst $28                                       ; $5ae9: $ef
    rst $30                                       ; $5aea: $f7
    rst $00                                       ; $5aeb: $c7
    rst $38                                       ; $5aec: $ff
    rst $10                                       ; $5aed: $d7
    rst $28                                       ; $5aee: $ef
    db $db                                        ; $5aef: $db
    nop                                           ; $5af0: $00
    rst $20                                       ; $5af1: $e7
    db $fd                                        ; $5af2: $fd
    cp $ff                                        ; $5af3: $fe $ff
    cp $fc                                        ; $5af5: $fe $fc
    ei                                            ; $5af7: $fb
    ld hl, sp+$00                                 ; $5af8: $f8 $00
    rst $38                                       ; $5afa: $ff
    db $fd                                        ; $5afb: $fd
    cp $f2                                        ; $5afc: $fe $f2
    ld a, l                                       ; $5afe: $7d
    ld sp, hl                                     ; $5aff: $f9
    ld a, [hl]                                    ; $5b00: $7e
    di                                            ; $5b01: $f3
    ld bc, $7f3c                                  ; $5b02: $01 $3c $7f
    add b                                         ; $5b05: $80
    ld a, a                                       ; $5b06: $7f
    add c                                         ; $5b07: $81
    ccf                                           ; $5b08: $3f
    pop bc                                        ; $5b09: $c1
    or $05                                        ; $5b0a: $f6 $05
    ld e, b                                       ; $5b0c: $58
    ret nz                                        ; $5b0d: $c0

    cp $0f                                        ; $5b0e: $fe $0f
    ccf                                           ; $5b10: $3f
    ld h, b                                       ; $5b11: $60
    ld bc, $1182                                  ; $5b12: $01 $82 $11
    cp $ff                                        ; $5b15: $fe $ff
    db $fc                                        ; $5b17: $fc
    ld [bc], a                                    ; $5b18: $02
    rrca                                          ; $5b19: $0f
    cp $c3                                        ; $5b1a: $fe $c3
    ld a, $59                                     ; $5b1c: $3e $59
    add [hl]                                      ; $5b1e: $86
    ldh [rTAC], a                                 ; $5b1f: $e0 $07
    rlca                                          ; $5b21: $07
    nop                                           ; $5b22: $00
    rst $38                                       ; $5b23: $ff
    ld b, $fe                                     ; $5b24: $06 $fe
    inc bc                                        ; $5b26: $03
    cp $03                                        ; $5b27: $fe $03
    db $fd                                        ; $5b29: $fd
    ld b, $0d                                     ; $5b2a: $06 $0d
    db $fd                                        ; $5b2c: $fd
    ld [bc], a                                    ; $5b2d: $02
    db $fc                                        ; $5b2e: $fc
    inc bc                                        ; $5b2f: $03
    and b                                         ; $5b30: $a0
    add hl, hl                                    ; $5b31: $29
    inc hl                                        ; $5b32: $23
    db $10                                        ; $5b33: $10
    ei                                            ; $5b34: $fb
    db $ed                                        ; $5b35: $ed
    ld bc, $1182                                  ; $5b36: $01 $82 $11
    jr nc, jr_0bb_5b4a                            ; $5b39: $30 $0f

    rst $38                                       ; $5b3b: $ff
    jp $593f                                      ; $5b3c: $c3 $3f $59


    add b                                         ; $5b3f: $80

jr_0bb_5b40:
    jr jr_0bb_5b40                                ; $5b40: $18 $fe

    add b                                         ; $5b42: $80
    push af                                       ; $5b43: $f5
    rrca                                          ; $5b44: $0f
    db $fc                                        ; $5b45: $fc
    rst $18                                       ; $5b46: $df
    cp $df                                        ; $5b47: $fe $df
    db $fc                                        ; $5b49: $fc

jr_0bb_5b4a:
    rst $08                                       ; $5b4a: $cf
    ld d, e                                       ; $5b4b: $53
    nop                                           ; $5b4c: $00
    adc a                                         ; $5b4d: $8f
    rst $20                                       ; $5b4e: $e7
    adc a                                         ; $5b4f: $8f
    rra                                           ; $5b50: $1f
    rst $08                                       ; $5b51: $cf
    dec sp                                        ; $5b52: $3b
    rst $00                                       ; $5b53: $c7
    ld c, a                                       ; $5b54: $4f
    ld [bc], a                                    ; $5b55: $02
    add a                                         ; $5b56: $87
    cp e                                          ; $5b57: $bb
    ld b, a                                       ; $5b58: $47
    ld l, l                                       ; $5b59: $6d
    add e                                         ; $5b5a: $83
    push de                                       ; $5b5b: $d5
    ld b, b                                       ; $5b5c: $40
    ld c, b                                       ; $5b5d: $48
    rst $28                                       ; $5b5e: $ef
    nop                                           ; $5b5f: $00
    rst $38                                       ; $5b60: $ff
    rst $28                                       ; $5b61: $ef
    cp $c7                                        ; $5b62: $fe $c7
    xor c                                         ; $5b64: $a9
    rst $00                                       ; $5b65: $c7
    di                                            ; $5b66: $f3
    rst $00                                       ; $5b67: $c7
    nop                                           ; $5b68: $00
    adc a                                         ; $5b69: $8f
    ld h, a                                       ; $5b6a: $67
    dec e                                         ; $5b6b: $1d
    db $e3                                        ; $5b6c: $e3
    and a                                         ; $5b6d: $a7
    jp $a35d                                      ; $5b6e: $c3 $5d $a3


    ld [hl], b                                    ; $5b71: $70
    ld [hl], $24                                  ; $5b72: $36 $24
    rlca                                          ; $5b74: $07
    add h                                         ; $5b75: $84
    ld [bc], a                                    ; $5b76: $02
    and c                                         ; $5b77: $a1
    ld bc, $e7ff                                  ; $5b78: $01 $ff $e7
    rst $38                                       ; $5b7b: $ff
    jp $ff02                                      ; $5b7c: $c3 $02 $ff


    pop bc                                        ; $5b7f: $c1
    cp $81                                        ; $5b80: $fe $81
    db $fc                                        ; $5b82: $fc
    jp $3870                                      ; $5b83: $c3 $70 $38


    sbc a                                         ; $5b86: $9f
    ld b, $7f                                     ; $5b87: $06 $7f
    rlca                                          ; $5b89: $07
    rst $38                                       ; $5b8a: $ff
    ld b, e                                       ; $5b8b: $43
    sbc a                                         ; $5b8c: $9f
    ret nc                                        ; $5b8d: $d0

    jr z, jr_0bb_5b92                             ; $5b8e: $28 $02

    nop                                           ; $5b90: $00
    rst $00                                       ; $5b91: $c7

jr_0bb_5b92:
    ldh [rSC], a                                  ; $5b92: $e0 $02

jr_0bb_5b94:
    nop                                           ; $5b94: $00
    ldh a, [$28]                                  ; $5b95: $f0 $28
    sub a                                         ; $5b97: $97
    jr nc, jr_0bb_5b94                            ; $5b98: $30 $fa

    ld bc, $8166                                  ; $5b9a: $01 $66 $81
    ld a, [bc]                                    ; $5b9d: $0a
    nop                                           ; $5b9e: $00
    pop hl                                        ; $5b9f: $e1
    or c                                          ; $5ba0: $b1
    ld b, b                                       ; $5ba1: $40
    ld a, d                                       ; $5ba2: $7a
    add c                                         ; $5ba3: $81
    ld [hl-], a                                   ; $5ba4: $32
    pop bc                                        ; $5ba5: $c1
    rla                                           ; $5ba6: $17
    nop                                           ; $5ba7: $00
    ldh [$bc], a                                  ; $5ba8: $e0 $bc
    ld b, e                                       ; $5baa: $43
    sbc a                                         ; $5bab: $9f
    inc c                                         ; $5bac: $0c
    scf                                           ; $5bad: $37
    inc c                                         ; $5bae: $0c
    db $e3                                        ; $5baf: $e3
    nop                                           ; $5bb0: $00
    inc e                                         ; $5bb1: $1c
    or e                                          ; $5bb2: $b3
    inc c                                         ; $5bb3: $0c
    ld e, e                                       ; $5bb4: $5b
    inc b                                         ; $5bb5: $04
    sub c                                         ; $5bb6: $91
    ld c, $d9                                     ; $5bb7: $0e $d9
    nop                                           ; $5bb9: $00
    ld b, $08                                     ; $5bba: $06 $08
    add a                                         ; $5bbc: $87
    or $69                                        ; $5bbd: $f6 $69
    pop hl                                        ; $5bbf: $e1
    ld a, [hl]                                    ; $5bc0: $7e
    db $e3                                        ; $5bc1: $e3
    inc b                                         ; $5bc2: $04
    ld e, h                                       ; $5bc3: $5c
    ret                                           ; $5bc4: $c9


    ld [hl], $c0                                  ; $5bc5: $36 $c0
    ccf                                           ; $5bc7: $3f
    inc b                                         ; $5bc8: $04
    ld c, $82                                     ; $5bc9: $0e $82
    ld a, l                                       ; $5bcb: $7d
    nop                                           ; $5bcc: $00
    inc h                                         ; $5bcd: $24
    jp $01ce                                      ; $5bce: $c3 $ce $01


    rst $20                                       ; $5bd1: $e7
    nop                                           ; $5bd2: $00
    halt                                          ; $5bd3: $76
    add c                                         ; $5bd4: $81
    nop                                           ; $5bd5: $00
    ld [hl+], a                                   ; $5bd6: $22
    pop bc                                        ; $5bd7: $c1
    ld [hl], a                                    ; $5bd8: $77
    add b                                         ; $5bd9: $80
    ld l, d                                       ; $5bda: $6a
    add c                                         ; $5bdb: $81
    ld d, d                                       ; $5bdc: $52
    and c                                         ; $5bdd: $a1
    nop                                           ; $5bde: $00
    ld hl, sp+$07                                 ; $5bdf: $f8 $07
    pop af                                        ; $5be1: $f1
    ld c, $7a                                     ; $5be2: $0e $7a
    add l                                         ; $5be4: $85
    ld [hl], c                                    ; $5be5: $71
    adc [hl]                                      ; $5be6: $8e
    nop                                           ; $5be7: $00
    db $e3                                        ; $5be8: $e3
    inc e                                         ; $5be9: $1c
    ld h, a                                       ; $5bea: $67
    sbc b                                         ; $5beb: $98
    ld h, h                                       ; $5bec: $64
    sbc e                                         ; $5bed: $9b
    and c                                         ; $5bee: $a1
    ld e, [hl]                                    ; $5bef: $5e
    nop                                           ; $5bf0: $00
    or $e9                                        ; $5bf1: $f6 $e9
    pop hl                                        ; $5bf3: $e1
    cp $e3                                        ; $5bf4: $fe $e3
    call c, $f6c9                                 ; $5bf6: $dc $c9 $f6
    ld bc, $ffc0                                  ; $5bf9: $01 $c0 $ff
    add [hl]                                      ; $5bfc: $86
    ld sp, hl                                     ; $5bfd: $f9
    ret nz                                        ; $5bfe: $c0

    rst $38                                       ; $5bff: $ff
    add d                                         ; $5c00: $82
    ret c                                         ; $5c01: $d8

    ld [bc], a                                    ; $5c02: $02
    ld d, b                                       ; $5c03: $50
    ld a, a                                       ; $5c04: $7f
    db $f4                                        ; $5c05: $f4
    ld bc, $023f                                  ; $5c06: $01 $3f $02
    nop                                           ; $5c09: $00
    rra                                           ; $5c0a: $1f
    rst $38                                       ; $5c0b: $ff
    rra                                           ; $5c0c: $1f
    db $fd                                        ; $5c0d: $fd
    add b                                         ; $5c0e: $80
    jp hl                                         ; $5c0f: $e9


    ld [bc], a                                    ; $5c10: $02
    sbc [hl]                                      ; $5c11: $9e
    cp $9f                                        ; $5c12: $fe $9f
    db $fc                                        ; $5c14: $fc
    rrca                                          ; $5c15: $0f
    db $fc                                        ; $5c16: $fc
    adc a                                         ; $5c17: $8f
    nop                                           ; $5c18: $00
    db $fc                                        ; $5c19: $fc
    dec de                                        ; $5c1a: $1b
    ld sp, hl                                     ; $5c1b: $f9
    ld b, $f1                                     ; $5c1c: $06 $f1
    ld c, $f0                                     ; $5c1e: $0e $f0
    rrca                                          ; $5c20: $0f
    nop                                           ; $5c21: $00
    rst $20                                       ; $5c22: $e7
    inc bc                                        ; $5c23: $03
    ld c, l                                       ; $5c24: $4d
    add e                                         ; $5c25: $83
    cp b                                          ; $5c26: $b8
    ld b, a                                       ; $5c27: $47
    ld l, h                                       ; $5c28: $6c
    add e                                         ; $5c29: $83
    nop                                           ; $5c2a: $00
    sub $01                                       ; $5c2b: $d6 $01
    db $e4                                        ; $5c2d: $e4
    inc bc                                        ; $5c2e: $03
    ld [hl], $c1                                  ; $5c2f: $36 $c1
    ld b, d                                       ; $5c31: $42
    and c                                         ; $5c32: $a1
    add b                                         ; $5c33: $80
    ld d, b                                       ; $5c34: $50
    ld sp, $7ffe                                  ; $5c35: $31 $fe $7f
    db $fc                                        ; $5c38: $fc
    rst $38                                       ; $5c39: $ff
    db $fc                                        ; $5c3a: $fc
    ld a, a                                       ; $5c3b: $7f
    ld hl, sp+$00                                 ; $5c3c: $f8 $00
    cp $cf                                        ; $5c3e: $fe $cf
    rst $38                                       ; $5c40: $ff
    rst $08                                       ; $5c41: $cf
    cp $c7                                        ; $5c42: $fe $c7
    cp $e7                                        ; $5c44: $fe $e7
    nop                                           ; $5c46: $00
    cp $8d                                        ; $5c47: $fe $8d
    db $fc                                        ; $5c49: $fc
    add e                                         ; $5c4a: $83
    ld hl, sp+$07                                 ; $5c4b: $f8 $07
    ld hl, sp+$47                                 ; $5c4d: $f8 $47
    db $10                                        ; $5c4f: $10
    di                                            ; $5c50: $f3
    ld bc, $7226                                  ; $5c51: $01 $26 $72
    ld b, $36                                     ; $5c54: $06 $36
    pop bc                                        ; $5c56: $c1
    ld l, e                                       ; $5c57: $6b
    add b                                         ; $5c58: $80
    rlca                                          ; $5c59: $07
    ld a, [c]                                     ; $5c5a: $f2
    ld bc, $609b                                  ; $5c5b: $01 $9b $60
    ld hl, $032c                                  ; $5c5e: $21 $2c $03
    adc $0a                                       ; $5c61: $ce $0a
    ld h, h                                       ; $5c63: $64

Jump_0bb_5c64:
    nop                                           ; $5c64: $00
    ld c, e                                       ; $5c65: $4b
    cp a                                          ; $5c66: $bf
    ld h, h                                       ; $5c67: $64
    ld [$7fbf], sp                                ; $5c68: $08 $bf $7f
    sbc d                                         ; $5c6b: $9a
    ld [bc], a                                    ; $5c6c: $02
    ldh [$74], a                                  ; $5c6d: $e0 $74
    inc b                                         ; $5c6f: $04
    inc b                                         ; $5c70: $04
    ld [$0680], sp                                ; $5c71: $08 $80 $06
    ld [$f7e0], sp                                ; $5c74: $08 $e0 $f7
    ld a, b                                       ; $5c77: $78
    ld sp, hl                                     ; $5c78: $f9
    cp $f2                                        ; $5c79: $fe $f2
    dec a                                         ; $5c7b: $3d
    nop                                           ; $5c7c: $00
    pop af                                        ; $5c7d: $f1
    ld a, $f3                                     ; $5c7e: $3e $f3
    ld l, h                                       ; $5c80: $6c
    rst $20                                       ; $5c81: $e7
    jr @-$3a                                      ; $5c82: $18 $c4

    dec sp                                        ; $5c84: $3b

jr_0bb_5c85:
    nop                                           ; $5c85: $00
    pop bc                                        ; $5c86: $c1
    ld a, $f8                                     ; $5c87: $3e $f8
    ld b, a                                       ; $5c89: $47
    pop af                                        ; $5c8a: $f1
    ld c, $e0                                     ; $5c8b: $0e $e0
    rra                                           ; $5c8d: $1f
    nop                                           ; $5c8e: $00
    pop hl                                        ; $5c8f: $e1
    ld e, $cb                                     ; $5c90: $1e $cb
    inc [hl]                                      ; $5c92: $34
    ld [c], a                                     ; $5c93: $e2
    dec e                                         ; $5c94: $1d
    ret nz                                        ; $5c95: $c0

    ccf                                           ; $5c96: $3f
    nop                                           ; $5c97: $00
    ld [bc], a                                    ; $5c98: $02
    db $fd                                        ; $5c99: $fd
    add c                                         ; $5c9a: $81
    rrca                                          ; $5c9b: $0f
    ld h, e                                       ; $5c9c: $63
    adc a                                         ; $5c9d: $8f
    ret c                                         ; $5c9e: $d8

    rlca                                          ; $5c9f: $07
    db $10                                        ; $5ca0: $10
    db $e4                                        ; $5ca1: $e4
    inc bc                                        ; $5ca2: $03
    call $0256                                    ; $5ca3: $cd $56 $02
    or h                                          ; $5ca6: $b4
    ld b, e                                       ; $5ca7: $43
    ld h, d                                       ; $5ca8: $62
    add c                                         ; $5ca9: $81
    add b                                         ; $5caa: $80
    ld c, b                                       ; $5cab: $48
    ld bc, $ffc7                                  ; $5cac: $01 $c7 $ff
    add e                                         ; $5caf: $83
    rst $38                                       ; $5cb0: $ff
    and e                                         ; $5cb1: $a3
    rst $38                                       ; $5cb2: $ff
    pop bc                                        ; $5cb3: $c1
    inc bc                                        ; $5cb4: $03
    rst $38                                       ; $5cb5: $ff
    add c                                         ; $5cb6: $81
    ld a, a                                       ; $5cb7: $7f
    add e                                         ; $5cb8: $83
    rst $38                                       ; $5cb9: $ff
    dec b                                         ; $5cba: $05
    jp c, $c209                                   ; $5cbb: $da $09 $c2

    inc b                                         ; $5cbe: $04
    and b                                         ; $5cbf: $a0
    ld b, $08                                     ; $5cc0: $06 $08
    db $fd                                        ; $5cc2: $fd
    and $09                                       ; $5cc3: $e6 $09
    ret z                                         ; $5cc5: $c8

    scf                                           ; $5cc6: $37
    adc c                                         ; $5cc7: $89
    halt                                          ; $5cc8: $76
    ld [bc], a                                    ; $5cc9: $02
    nop                                           ; $5cca: $00
    db $fd                                        ; $5ccb: $fd
    sbc b                                         ; $5ccc: $98
    ld h, a                                       ; $5ccd: $67
    add c                                         ; $5cce: $81
    ld a, [hl]                                    ; $5ccf: $7e
    inc b                                         ; $5cd0: $04
    ei                                            ; $5cd1: $fb
    inc b                                         ; $5cd2: $04
    ld bc, $80fb                                  ; $5cd3: $01 $fb $80
    ld a, a                                       ; $5cd6: $7f
    ld b, b                                       ; $5cd7: $40
    cp a                                          ; $5cd8: $bf
    add hl, bc                                    ; $5cd9: $09
    or $ea                                        ; $5cda: $f6 $ea
    ld a, [bc]                                    ; $5cdc: $0a
    ld [$fd02], sp                                ; $5cdd: $08 $02 $fd
    ld [bc], a                                    ; $5ce0: $02
    db $fd                                        ; $5ce1: $fd
    ld b, $08                                     ; $5ce2: $06 $08
    ld d, b                                       ; $5ce4: $50
    add a                                         ; $5ce5: $87
    db $ec                                        ; $5ce6: $ec
    nop                                           ; $5ce7: $00
    inc bc                                        ; $5ce8: $03
    ret z                                         ; $5ce9: $c8

    rlca                                          ; $5cea: $07
    ld d, h                                       ; $5ceb: $54
    add e                                         ; $5cec: $83
    add $01                                       ; $5ced: $c6 $01
    call c, $0300                                 ; $5cef: $dc $00 $03
    ld l, h                                       ; $5cf2: $6c
    add e                                         ; $5cf3: $83
    ld a, [hl]                                    ; $5cf4: $7e
    add c                                         ; $5cf5: $81
    inc [hl]                                      ; $5cf6: $34
    jp Jump_000_00e4                              ; $5cf7: $c3 $e4 $00


    inc bc                                        ; $5cfa: $03
    ld h, d                                       ; $5cfb: $62
    add c                                         ; $5cfc: $81
    ld [hl], a                                    ; $5cfd: $77
    add b                                         ; $5cfe: $80
    ld a, [hl+]                                   ; $5cff: $2a
    pop bc                                        ; $5d00: $c1
    ld h, d                                       ; $5d01: $62
    jr nz, jr_0bb_5c85                            ; $5d02: $20 $81

    rst $10                                       ; $5d04: $d7
    cp $07                                        ; $5d05: $fe $07
    db $10                                        ; $5d07: $10
    add hl, de                                    ; $5d08: $19
    ld a, c                                       ; $5d09: $79
    dec bc                                        ; $5d0a: $0b
    ld d, h                                       ; $5d0b: $54
    nop                                           ; $5d0c: $00
    ld bc, $ff60                                  ; $5d0d: $01 $60 $ff
    inc bc                                        ; $5d10: $03
    nop                                           ; $5d11: $00
    ld a, a                                       ; $5d12: $7f
    ld [bc], a                                    ; $5d13: $02

jr_0bb_5d14:
    jr jr_0bb_5d14                                ; $5d14: $18 $fe

    ld a, a                                       ; $5d16: $7f
    jr @-$02                                      ; $5d17: $18 $fc

    ld a, [hl]                                    ; $5d19: $7e
    ld sp, hl                                     ; $5d1a: $f9
    db $10                                        ; $5d1b: $10
    ld [$2001], sp                                ; $5d1c: $08 $01 $20
    rrca                                          ; $5d1f: $0f
    rst $38                                       ; $5d20: $ff
    rlca                                          ; $5d21: $07
    jr nz, jr_0bb_5d63                            ; $5d22: $20 $3f

    jp Jump_0bb_4010                              ; $5d24: $c3 $10 $40


    ldh [rIE], a                                  ; $5d27: $e0 $ff
    ldh [$f0], a                                  ; $5d29: $e0 $f0
    rst $28                                       ; $5d2b: $ef
    and b                                         ; $5d2c: $a0
    jr nc, jr_0bb_5d37                            ; $5d2d: $30 $08

    cp $02                                        ; $5d2f: $fe $02
    jr jr_0bb_5d72                                ; $5d31: $18 $3f

    sbc [hl]                                      ; $5d33: $9e
    ld a, a                                       ; $5d34: $7f
    ld a, $ff                                     ; $5d35: $3e $ff

jr_0bb_5d37:
    add d                                         ; $5d37: $82
    jr nc, jr_0bb_5d7a                            ; $5d38: $30 $40

    rst $38                                       ; $5d3a: $ff
    rst $38                                       ; $5d3b: $ff
    db $fc                                        ; $5d3c: $fc
    cp $f1                                        ; $5d3d: $fe $f1
    jr nz, jr_0bb_5d81                            ; $5d3f: $20 $40

    rra                                           ; $5d41: $1f
    ld a, b                                       ; $5d42: $78
    adc [hl]                                      ; $5d43: $8e
    jr nz, jr_0bb_5d66                            ; $5d44: $20 $20

    ld h, b                                       ; $5d46: $60
    jr nz, jr_0bb_5dab                            ; $5d47: $20 $62

    db $10                                        ; $5d49: $10
    ld h, b                                       ; $5d4a: $60
    ld b, b                                       ; $5d4b: $40
    rlca                                          ; $5d4c: $07
    rst $38                                       ; $5d4d: $ff
    inc bc                                        ; $5d4e: $03
    jr nz, jr_0bb_5d70                            ; $5d4f: $20 $1f

    pop hl                                        ; $5d51: $e1
    ld [hl], b                                    ; $5d52: $70
    ld b, b                                       ; $5d53: $40
    add b                                         ; $5d54: $80
    rst $38                                       ; $5d55: $ff
    add b                                         ; $5d56: $80
    ret nz                                        ; $5d57: $c0

    cp a                                          ; $5d58: $bf
    add b                                         ; $5d59: $80
    ld b, b                                       ; $5d5a: $40
    ld c, b                                       ; $5d5b: $48
    xor $1f                                       ; $5d5c: $ee $1f
    ld l, [hl]                                    ; $5d5e: $6e
    sbc a                                         ; $5d5f: $9f
    ld a, h                                       ; $5d60: $7c
    ei                                            ; $5d61: $fb
    ld a, l                                       ; $5d62: $7d

jr_0bb_5d63:
    ld [hl+], a                                   ; $5d63: $22
    ei                                            ; $5d64: $fb
    ld a, l                                       ; $5d65: $7d

jr_0bb_5d66:
    ld b, d                                       ; $5d66: $42

jr_0bb_5d67:
    jr c, @+$01                                   ; $5d67: $38 $ff

    db $fd                                        ; $5d69: $fd
    db $e3                                        ; $5d6a: $e3
    ld [bc], a                                    ; $5d6b: $02
    jr jr_0bb_5d67                                ; $5d6c: $18 $f9

    nop                                           ; $5d6e: $00
    rst $00                                       ; $5d6f: $c7

jr_0bb_5d70:
    di                                            ; $5d70: $f3
    rst $08                                       ; $5d71: $cf

jr_0bb_5d72:
    rst $20                                       ; $5d72: $e7
    sbc a                                         ; $5d73: $9f
    rst $08                                       ; $5d74: $cf
    ccf                                           ; $5d75: $3f
    rst $30                                       ; $5d76: $f7
    ld h, e                                       ; $5d77: $63
    rst $28                                       ; $5d78: $ef
    ld [bc], a                                    ; $5d79: $02

jr_0bb_5d7a:
    ld [$089c], sp                                ; $5d7a: $08 $9c $08
    pop af                                        ; $5d7d: $f1
    xor $f7                                       ; $5d7e: $ee $f7
    cp d                                          ; $5d80: $ba

jr_0bb_5d81:
    nop                                           ; $5d81: $00
    sbc h                                         ; $5d82: $9c
    jr nz, @-$6e                                  ; $5d83: $20 $90

    sbc [hl]                                      ; $5d85: $9e
    nop                                           ; $5d86: $00
    sbc $3f                                       ; $5d87: $de $3f
    ld b, d                                       ; $5d89: $42
    ld [$e3fc], sp                                ; $5d8a: $08 $fc $e3
    ld sp, hl                                     ; $5d8d: $f9
    rst $20                                       ; $5d8e: $e7
    nop                                           ; $5d8f: $00
    ei                                            ; $5d90: $fb
    rst $00                                       ; $5d91: $c7
    rst $30                                       ; $5d92: $f7
    ret z                                         ; $5d93: $c8

    push af                                       ; $5d94: $f5
    adc [hl]                                      ; $5d95: $8e
    rst $30                                       ; $5d96: $f7
    adc a                                         ; $5d97: $8f
    ret z                                         ; $5d98: $c8

    ld [bc], a                                    ; $5d99: $02
    ld [$20bc], sp                                ; $5d9a: $08 $bc $20
    ld a, a                                       ; $5d9d: $7f
    cp $1e                                        ; $5d9e: $fe $1e
    db $10                                        ; $5da0: $10
    xor $1f                                       ; $5da1: $ee $1f
    ld a, [hl]                                    ; $5da3: $7e
    ld h, e                                       ; $5da4: $63
    db $fd                                        ; $5da5: $fd
    ld [bc], a                                    ; $5da6: $02
    nop                                           ; $5da7: $00
    ld h, b                                       ; $5da8: $60
    ld b, b                                       ; $5da9: $40
    ld a, [hl]                                    ; $5daa: $7e

jr_0bb_5dab:
    pop af                                        ; $5dab: $f1
    cp $02                                        ; $5dac: $fe $02
    db $10                                        ; $5dae: $10
    jr c, jr_0bb_5db9                             ; $5daf: $38 $08

    adc h                                         ; $5db1: $8c
    ld h, d                                       ; $5db2: $62
    ld [$bfdf], sp                                ; $5db3: $08 $df $bf
    rst $18                                       ; $5db6: $df
    db $10                                        ; $5db7: $10

jr_0bb_5db8:
    add hl, bc                                    ; $5db8: $09

jr_0bb_5db9:
    di                                            ; $5db9: $f3
    jr jr_0bb_5db8                                ; $5dba: $18 $fc

    rst $38                                       ; $5dbc: $ff
    ld a, [hl+]                                   ; $5dbd: $2a
    db $fc                                        ; $5dbe: $fc
    adc $58                                       ; $5dbf: $ce $58
    nop                                           ; $5dc1: $00
    sbc $fa                                       ; $5dc2: $de $fa
    nop                                           ; $5dc4: $00
    cp [hl]                                       ; $5dc5: $be
    ld [bc], a                                    ; $5dc6: $02
    nop                                           ; $5dc7: $00
    ld a, $34                                     ; $5dc8: $3e $34
    rst $38                                       ; $5dca: $ff
    ld a, [hl]                                    ; $5dcb: $7e
    ccf                                           ; $5dcc: $3f
    ld bc, $4952                                  ; $5dcd: $01 $52 $49
    ld b, h                                       ; $5dd0: $44
    ld e, a                                       ; $5dd1: $5f
    ld d, c                                       ; $5dd2: $51
    stop                                          ; $5dd3: $10 $00
    ld b, h                                       ; $5dd5: $44
    ld b, $6f                                     ; $5dd6: $06 $6f
    ld d, c                                       ; $5dd8: $51
    jr jr_0bb_5ddb                                ; $5dd9: $18 $00

jr_0bb_5ddb:
    ld b, b                                       ; $5ddb: $40
    ld a, a                                       ; $5ddc: $7f
    ld d, c                                       ; $5ddd: $51

jr_0bb_5dde:
    ld d, b                                       ; $5dde: $50
    nop                                           ; $5ddf: $00
    ld c, h                                       ; $5de0: $4c
    ld b, c                                       ; $5de1: $41
    adc a                                         ; $5de2: $8f
    ld h, c                                       ; $5de3: $61
    add b                                         ; $5de4: $80
    nop                                           ; $5de5: $00
    add [hl]                                      ; $5de6: $86
    add hl, bc                                    ; $5de7: $09
    ld [bc], a                                    ; $5de8: $02
    nop                                           ; $5de9: $00
    ld hl, sp+$7f                                 ; $5dea: $f8 $7f
    jr nz, jr_0bb_5dde                            ; $5dec: $20 $f0

    ld a, b                                       ; $5dee: $78
    sbc b                                         ; $5def: $98
    ld de, $7f9f                                  ; $5df0: $11 $9f $7f
    cp a                                          ; $5df3: $bf
    ld a, l                                       ; $5df4: $7d
    ld a, $02                                     ; $5df5: $3e $02
    ld sp, hl                                     ; $5df7: $f9
    db $fc                                        ; $5df8: $fc
    inc bc                                        ; $5df9: $03
    db $fd                                        ; $5dfa: $fd
    inc bc                                        ; $5dfb: $03
    ld bc, $3968                                  ; $5dfc: $01 $68 $39
    sbc [hl]                                      ; $5dff: $9e
    ld b, $ff                                     ; $5e00: $06 $ff
    adc [hl]                                      ; $5e02: $8e
    rst $38                                       ; $5e03: $ff
    ret nz                                        ; $5e04: $c0

    ldh [$a8], a                                  ; $5e05: $e0 $a8
    ld de, $08c4                                  ; $5e07: $11 $c4 $08

jr_0bb_5e0a:
    adc $b0                                       ; $5e0a: $ce $b0
    adc d                                         ; $5e0c: $8a
    ld de, $987e                                  ; $5e0d: $11 $7e $98
    ld de, $10e6                                  ; $5e10: $11 $e6 $10
    rst $08                                       ; $5e13: $cf
    rst $38                                       ; $5e14: $ff
    and $ff                                       ; $5e15: $e6 $ff
    inc hl                                        ; $5e17: $23
    ldh a, [$f8]                                  ; $5e18: $f0 $f8
    jr nz, jr_0bb_5e5c                            ; $5e1a: $20 $40

    sbc $3f                                       ; $5e1c: $de $3f
    ld e, $20                                     ; $5e1e: $1e $20
    jr nz, jr_0bb_5e0a                            ; $5e20: $20 $e8

    ld de, $6490                                  ; $5e22: $11 $90 $64
    ld [$7cf8], sp                                ; $5e25: $08 $f8 $7c
    ld hl, sp+$11                                 ; $5e28: $f8 $11
    rst $08                                       ; $5e2a: $cf
    ccf                                           ; $5e2b: $3f
    rst $18                                       ; $5e2c: $df
    ld a, $02                                     ; $5e2d: $3e $02
    sbc a                                         ; $5e2f: $9f
    ld a, h                                       ; $5e30: $7c
    cp $01                                        ; $5e31: $fe $01
    cp $01                                        ; $5e33: $fe $01
    ld hl, sp+$21                                 ; $5e35: $f8 $21
    db $fc                                        ; $5e37: $fc
    dec e                                         ; $5e38: $1d
    cp $f9                                        ; $5e39: $fe $f9
    ld a, [hl]                                    ; $5e3b: $7e
    ld [bc], a                                    ; $5e3c: $02
    nop                                           ; $5e3d: $00
    ld [bc], a                                    ; $5e3e: $02
    ld bc, $1208                                  ; $5e3f: $01 $08 $12
    ld a, [hl]                                    ; $5e42: $7e
    ld e, b                                       ; $5e43: $58
    jr nz, @+$6a                                  ; $5e44: $20 $68

    cp $60                                        ; $5e46: $fe $60
    jr nz, jr_0bb_5e8a                            ; $5e48: $20 $40

    ld e, d                                       ; $5e4a: $5a
    inc bc                                        ; $5e4b: $03
    ld [$8030], a                                 ; $5e4c: $ea $30 $80
    nop                                           ; $5e4f: $00
    add h                                         ; $5e50: $84
    jr nc, jr_0bb_5e53                            ; $5e51: $30 $00

jr_0bb_5e53:
    ld [hl], h                                    ; $5e53: $74
    inc b                                         ; $5e54: $04
    nop                                           ; $5e55: $00
    ld a, [c]                                     ; $5e56: $f2
    ld [$009b], sp                                ; $5e57: $08 $9b $00
    ld [bc], a                                    ; $5e5a: $02
    nop                                           ; $5e5b: $00

jr_0bb_5e5c:
    ld bc, $06b8                                  ; $5e5c: $01 $b8 $06
    rra                                           ; $5e5f: $1f
    nop                                           ; $5e60: $00
    db $e4                                        ; $5e61: $e4
    inc bc                                        ; $5e62: $03
    rrca                                          ; $5e63: $0f
    ld l, a                                       ; $5e64: $6f
    ld [bc], a                                    ; $5e65: $02
    db $10                                        ; $5e66: $10
    adc c                                         ; $5e67: $89
    nop                                           ; $5e68: $00
    sbc b                                         ; $5e69: $98
    stop                                          ; $5e6a: $10 $00
    pop bc                                        ; $5e6c: $c1
    nop                                           ; $5e6d: $00
    db $dd                                        ; $5e6e: $dd
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    inc c                                         ; $5e71: $0c
    di                                            ; $5e72: $f3
    or b                                          ; $5e73: $b0
    rrca                                          ; $5e74: $0f
    ld b, b                                       ; $5e75: $40
    nop                                           ; $5e76: $00
    adc h                                         ; $5e77: $8c
    nop                                           ; $5e78: $00
    db $10                                        ; $5e79: $10
    ld [c], a                                     ; $5e7a: $e2
    nop                                           ; $5e7b: $00
    rra                                           ; $5e7c: $1f
    dec sp                                        ; $5e7d: $3b
    nop                                           ; $5e7e: $00
    db $fd                                        ; $5e7f: $fd
    nop                                           ; $5e80: $00
    add b                                         ; $5e81: $80
    ccf                                           ; $5e82: $3f
    db $10                                        ; $5e83: $10
    ld bc, $44fc                                  ; $5e84: $01 $fc $44
    ld d, $01                                     ; $5e87: $16 $01
    ld h, c                                       ; $5e89: $61

jr_0bb_5e8a:
    nop                                           ; $5e8a: $00
    ld a, a                                       ; $5e8b: $7f
    nop                                           ; $5e8c: $00
    ld [de], a                                    ; $5e8d: $12
    add c                                         ; $5e8e: $81
    nop                                           ; $5e8f: $00
    ld sp, hl                                     ; $5e90: $f9
    adc l                                         ; $5e91: $8d
    ld a, [bc]                                    ; $5e92: $0a
    rst $38                                       ; $5e93: $ff
    jr jr_0bb_5ede                                ; $5e94: $18 $48

    nop                                           ; $5e96: $00
    adc [hl]                                      ; $5e97: $8e
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    jr nc, jr_0bb_5e9c                            ; $5e9a: $30 $00

jr_0bb_5e9c:
    cpl                                           ; $5e9c: $2f
    ret nc                                        ; $5e9d: $d0

    add b                                         ; $5e9e: $80
    nop                                           ; $5e9f: $00
    sub b                                         ; $5ea0: $90
    ld [bc], a                                    ; $5ea1: $02
    rrca                                          ; $5ea2: $0f
    inc bc                                        ; $5ea3: $03
    ldh a, [$80]                                  ; $5ea4: $f0 $80
    nop                                           ; $5ea6: $00
    inc h                                         ; $5ea7: $24
    or e                                          ; $5ea8: $b3
    ld [bc], a                                    ; $5ea9: $02
    ld l, h                                       ; $5eaa: $6c
    add c                                         ; $5eab: $81
    ld a, [de]                                    ; $5eac: $1a
    ld bc, $0070                                  ; $5ead: $01 $70 $00
    ld b, $f8                                     ; $5eb0: $06 $f8
    call z, Call_000_2633                         ; $5eb2: $cc $33 $26
    add hl, de                                    ; $5eb5: $19
    ld d, e                                       ; $5eb6: $53
    ret nz                                        ; $5eb7: $c0

    rst $00                                       ; $5eb8: $c7
    ld [bc], a                                    ; $5eb9: $02
    or b                                          ; $5eba: $b0
    ld e, [hl]                                    ; $5ebb: $5e
    ld bc, $2050                                  ; $5ebc: $01 $50 $20
    ld a, [de]                                    ; $5ebf: $1a
    ld a, [hl-]                                   ; $5ec0: $3a
    add $0a                                       ; $5ec1: $c6 $0a
    ld sp, hl                                     ; $5ec3: $f9
    ld b, c                                       ; $5ec4: $41
    nop                                           ; $5ec5: $00
    ld bc, $1058                                  ; $5ec6: $01 $58 $10
    ld [hl], b                                    ; $5ec9: $70
    jr nz, @+$34                                  ; $5eca: $20 $32

    add $12                                       ; $5ecc: $c6 $12
    rst $38                                       ; $5ece: $ff
    nop                                           ; $5ecf: $00
    ld b, b                                       ; $5ed0: $40
    ld hl, sp-$1e                                 ; $5ed1: $f8 $e2
    ld b, b                                       ; $5ed3: $40
    ld hl, sp-$80                                 ; $5ed4: $f8 $80
    ld hl, sp-$80                                 ; $5ed6: $f8 $80
    cp b                                          ; $5ed8: $b8
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    ld bc, $322e                                  ; $5edb: $01 $2e $32

jr_0bb_5ede:
    ld [bc], a                                    ; $5ede: $02
    nop                                           ; $5edf: $00
    nop                                           ; $5ee0: $00
    ld b, l                                       ; $5ee1: $45
    nop                                           ; $5ee2: $00
    jr nz, jr_0bb_5ee5                            ; $5ee3: $20 $00

jr_0bb_5ee5:
    rrca                                          ; $5ee5: $0f
    nop                                           ; $5ee6: $00
    dec hl                                        ; $5ee7: $2b
    inc b                                         ; $5ee8: $04
    inc b                                         ; $5ee9: $04
    dec d                                         ; $5eea: $15
    ld l, $78                                     ; $5eeb: $2e $78
    rlca                                          ; $5eed: $07
    jr nc, jr_0bb_5efa                            ; $5eee: $30 $0a

    adc l                                         ; $5ef0: $8d
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    add hl, sp                                    ; $5ef3: $39
    nop                                           ; $5ef4: $00
    pop af                                        ; $5ef5: $f1
    ld [$f805], sp                                ; $5ef6: $08 $05 $f8
    ld [hl], h                                    ; $5ef9: $74

jr_0bb_5efa:
    cp b                                          ; $5efa: $b8
    db $10                                        ; $5efb: $10
    inc c                                         ; $5efc: $0c
    ldh a, [$f8]                                  ; $5efd: $f0 $f8
    cp e                                          ; $5eff: $bb
    inc de                                        ; $5f00: $13
    jr nz, jr_0bb_5f21                            ; $5f01: $20 $1e

    adc $01                                       ; $5f03: $ce $01
    ld bc, $6798                                  ; $5f05: $01 $98 $67
    rst $20                                       ; $5f08: $e7
    jr jr_0bb_5f63                                ; $5f09: $18 $58

    nop                                           ; $5f0b: $00
    db $e3                                        ; $5f0c: $e3
    rlc e                                         ; $5f0d: $cb $03
    nop                                           ; $5f0f: $00
    inc c                                         ; $5f10: $0c
    nop                                           ; $5f11: $00
    sbc h                                         ; $5f12: $9c
    ld a, a                                       ; $5f13: $7f
    scf                                           ; $5f14: $37
    rst $08                                       ; $5f15: $cf
    ld a, [c]                                     ; $5f16: $f2
    rst $38                                       ; $5f17: $ff
    inc b                                         ; $5f18: $04
    ld [$bff7], sp                                ; $5f19: $08 $f7 $bf
    ld b, b                                       ; $5f1c: $40
    ldh a, [$72]                                  ; $5f1d: $f0 $72
    ld [de], a                                    ; $5f1f: $12
    ld a, [de]                                    ; $5f20: $1a

jr_0bb_5f21:
    db $fd                                        ; $5f21: $fd
    nop                                           ; $5f22: $00
    or a                                          ; $5f23: $b7
    ld hl, sp+$7d                                 ; $5f24: $f8 $7d
    rst $18                                       ; $5f26: $df
    ld bc, $effe                                  ; $5f27: $01 $fe $ef
    db $10                                        ; $5f2a: $10
    ld b, b                                       ; $5f2b: $40
    dec a                                         ; $5f2c: $3d
    db $eb                                        ; $5f2d: $eb
    inc bc                                        ; $5f2e: $03
    ld a, b                                       ; $5f2f: $78
    nop                                           ; $5f30: $00
    ccf                                           ; $5f31: $3f
    db $fc                                        ; $5f32: $fc
    ld [hl], c                                    ; $5f33: $71
    cp $05                                        ; $5f34: $fe $05
    xor h                                         ; $5f36: $ac
    rst $18                                       ; $5f37: $df
    sbc l                                         ; $5f38: $9d
    ld h, d                                       ; $5f39: $62
    ld b, a                                       ; $5f3a: $47
    ld e, h                                       ; $5f3b: $5c
    ld [bc], a                                    ; $5f3c: $02
    nop                                           ; $5f3d: $00
    jr c, jr_0bb_5f49                             ; $5f3e: $38 $09

    nop                                           ; $5f40: $00
    rst $38                                       ; $5f41: $ff
    add hl, sp                                    ; $5f42: $39
    rst $38                                       ; $5f43: $ff
    rst $20                                       ; $5f44: $e7
    rst $18                                       ; $5f45: $df
    or a                                          ; $5f46: $b7
    ld c, b                                       ; $5f47: $48
    db $fc                                        ; $5f48: $fc

jr_0bb_5f49:
    and b                                         ; $5f49: $a0
    add hl, bc                                    ; $5f4a: $09
    inc b                                         ; $5f4b: $04
    add hl, bc                                    ; $5f4c: $09
    ld a, b                                       ; $5f4d: $78
    ld bc, $c837                                  ; $5f4e: $01 $37 $c8
    pop hl                                        ; $5f51: $e1
    sbc [hl]                                      ; $5f52: $9e
    ld a, a                                       ; $5f53: $7f
    ld b, h                                       ; $5f54: $44
    ldh a, [$0e]                                  ; $5f55: $f0 $0e
    ld [$0000], sp                                ; $5f57: $08 $00 $00
    cp b                                          ; $5f5a: $b8
    sbc h                                         ; $5f5b: $9c
    ld bc, $0041                                  ; $5f5c: $01 $41 $00
    dec d                                         ; $5f5f: $15
    dec de                                        ; $5f60: $1b
    ldh [$fe], a                                  ; $5f61: $e0 $fe

jr_0bb_5f63:
    ret c                                         ; $5f63: $d8

    ld hl, $b4f5                                  ; $5f64: $21 $f5 $b4
    ld bc, $6820                                  ; $5f67: $01 $20 $68
    ld bc, $1a41                                  ; $5f6a: $01 $41 $1a
    and [hl]                                      ; $5f6d: $a6
    db $10                                        ; $5f6e: $10
    ld de, $1202                                  ; $5f6f: $11 $02 $12
    inc c                                         ; $5f72: $0c
    cp a                                          ; $5f73: $bf
    and h                                         ; $5f74: $a4
    ld [de], a                                    ; $5f75: $12
    add e                                         ; $5f76: $83
    ld b, h                                       ; $5f77: $44
    inc e                                         ; $5f78: $1c
    and b                                         ; $5f79: $a0
    nop                                           ; $5f7a: $00
    ld h, h                                       ; $5f7b: $64
    nop                                           ; $5f7c: $00
    db $ec                                        ; $5f7d: $ec
    ld b, b                                       ; $5f7e: $40
    inc d                                         ; $5f7f: $14
    ld sp, $3e24                                  ; $5f80: $31 $24 $3e
    ldh a, [$f8]                                  ; $5f83: $f0 $f8
    sub d                                         ; $5f85: $92
    inc bc                                        ; $5f86: $03
    jr nz, jr_0bb_5fcd                            ; $5f87: $20 $44

    ld h, h                                       ; $5f89: $64
    dec bc                                        ; $5f8a: $0b
    db $10                                        ; $5f8b: $10
    db $10                                        ; $5f8c: $10
    jr nz, jr_0bb_5fb7                            ; $5f8d: $20 $28

    ld sp, hl                                     ; $5f8f: $f9
    inc d                                         ; $5f90: $14
    add $f3                                       ; $5f91: $c6 $f3
    rst $08                                       ; $5f93: $cf
    nop                                           ; $5f94: $00
    ld e, h                                       ; $5f95: $5c
    dec a                                         ; $5f96: $3d
    ld h, b                                       ; $5f97: $60
    ld c, h                                       ; $5f98: $4c
    ldh a, [$f9]                                  ; $5f99: $f0 $f9
    ld de, $f3e6                                  ; $5f9b: $11 $e6 $f3
    rst $08                                       ; $5f9e: $cf
    and b                                         ; $5f9f: $a0
    inc c                                         ; $5fa0: $0c
    ld bc, $0400                                  ; $5fa1: $01 $00 $04
    ld e, d                                       ; $5fa4: $5a
    ld [bc], a                                    ; $5fa5: $02

jr_0bb_5fa6:
    ld d, c                                       ; $5fa6: $51
    ld bc, $00a0                                  ; $5fa7: $01 $a0 $00
    dec e                                         ; $5faa: $1d
    inc [hl]                                      ; $5fab: $34
    inc bc                                        ; $5fac: $03
    dec a                                         ; $5fad: $3d
    nop                                           ; $5fae: $00
    dec h                                         ; $5faf: $25
    jr nz, jr_0bb_5fb4                            ; $5fb0: $20 $02

    nop                                           ; $5fb2: $00

jr_0bb_5fb3:
    add hl, de                                    ; $5fb3: $19

jr_0bb_5fb4:
    ld h, $ed                                     ; $5fb4: $26 $ed
    ld [de], a                                    ; $5fb6: $12

jr_0bb_5fb7:
    rlca                                          ; $5fb7: $07
    jr c, jr_0bb_5fb3                             ; $5fb8: $38 $f9

    ld b, $00                                     ; $5fba: $06 $00
    or c                                          ; $5fbc: $b1
    nop                                           ; $5fbd: $00
    ld a, $00                                     ; $5fbe: $3e $00
    db $fc                                        ; $5fc0: $fc
    nop                                           ; $5fc1: $00
    sbc d                                         ; $5fc2: $9a
    ld h, h                                       ; $5fc3: $64
    nop                                           ; $5fc4: $00
    and $1c                                       ; $5fc5: $e6 $1c
    ld a, d                                       ; $5fc7: $7a
    inc b                                         ; $5fc8: $04
    ld [c], a                                     ; $5fc9: $e2
    inc e                                         ; $5fca: $1c
    adc h                                         ; $5fcb: $8c
    ld [hl], b                                    ; $5fcc: $70

jr_0bb_5fcd:
    ld b, b                                       ; $5fcd: $40
    ld e, e                                       ; $5fce: $5b
    inc b                                         ; $5fcf: $04
    ld bc, $007f                                  ; $5fd0: $01 $7f $00
    db $e4                                        ; $5fd3: $e4
    dec de                                        ; $5fd4: $1b
    ld a, a                                       ; $5fd5: $7f
    nop                                           ; $5fd6: $00
    ld bc, $7c83                                  ; $5fd7: $01 $83 $7c
    ld [c], a                                     ; $5fda: $e2
    dec e                                         ; $5fdb: $1d
    ld sp, $9e0e                                  ; $5fdc: $31 $0e $9e
    ld b, d                                       ; $5fdf: $42
    ld bc, $f100                                  ; $5fe0: $01 $00 $f1
    nop                                           ; $5fe3: $00
    jr c, jr_0bb_5fa6                             ; $5fe4: $38 $c0

    rst $38                                       ; $5fe6: $ff
    nop                                           ; $5fe7: $00
    jp nz, $003d                                  ; $5fe8: $c2 $3d $00

    add hl, de                                    ; $5feb: $19
    and $fd                                       ; $5fec: $e6 $fd
    ld [bc], a                                    ; $5fee: $02
    adc [hl]                                      ; $5fef: $8e
    nop                                           ; $5ff0: $00
    call c, RST_00                                ; $5ff1: $dc $00 $00
    ld b, $01                                     ; $5ff4: $06 $01
    db $dd                                        ; $5ff6: $dd
    ld [bc], a                                    ; $5ff7: $02
    ld hl, sp+$07                                 ; $5ff8: $f8 $07
    ccf                                           ; $5ffa: $3f

jr_0bb_5ffb:
    ret nz                                        ; $5ffb: $c0

    nop                                           ; $5ffc: $00
    pop hl                                        ; $5ffd: $e1
    ld e, $de                                     ; $5ffe: $1e $de
    ld hl, $0023                                  ; $6000: $21 $23 $00
    scf                                           ; $6003: $37
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    ld [hl], e                                    ; $6006: $73
    add b                                         ; $6007: $80
    rst $38                                       ; $6008: $ff
    nop                                           ; $6009: $00
    ld c, $f1                                     ; $600a: $0e $f1
    and c                                         ; $600c: $a1
    ld e, [hl]                                    ; $600d: $5e
    nop                                           ; $600e: $00
    cp $00                                        ; $600f: $fe $00
    rst $18                                       ; $6011: $df
    jr nz, jr_0bb_5ffb                            ; $6012: $20 $e7

    nop                                           ; $6014: $00
    sbc c                                         ; $6015: $99
    ld b, $15                                     ; $6016: $06 $15
    inc sp                                        ; $6018: $33
    nop                                           ; $6019: $00

jr_0bb_601a:
    cp $d6                                        ; $601a: $fe $d6
    jr nz, jr_0bb_601a                            ; $601c: $20 $fc

    sbc [hl]                                      ; $601e: $9e
    ld [bc], a                                    ; $601f: $02
    rst $00                                       ; $6020: $c7
    inc d                                         ; $6021: $14
    dec b                                         ; $6022: $05
    nop                                           ; $6023: $00
    jr nc, jr_0bb_6035                            ; $6024: $30 $0f

    rrca                                          ; $6026: $0f
    stop                                          ; $6027: $10 $00
    rlca                                          ; $6029: $07
    dec bc                                        ; $602a: $0b
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    rlca                                          ; $602e: $07
    cp a                                          ; $602f: $bf
    nop                                           ; $6030: $00
    ld hl, sp+$07                                 ; $6031: $f8 $07
    sbc l                                         ; $6033: $9d
    ld h, d                                       ; $6034: $62

jr_0bb_6035:
    nop                                           ; $6035: $00
    ld a, a                                       ; $6036: $7f
    add b                                         ; $6037: $80
    ret nz                                        ; $6038: $c0

    ccf                                           ; $6039: $3f
    ccf                                           ; $603a: $3f
    ret nz                                        ; $603b: $c0

    sbc a                                         ; $603c: $9f
    ld h, b                                       ; $603d: $60
    nop                                           ; $603e: $00
    ld [$f2f7], sp                                ; $603f: $08 $f7 $f2
    nop                                           ; $6042: $00
    pop hl                                        ; $6043: $e1
    ld e, $ff                                     ; $6044: $1e $ff
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    adc $30                                       ; $6048: $ce $30
    ld sp, hl                                     ; $604a: $f9
    ld b, $96                                     ; $604b: $06 $96
    ld l, b                                       ; $604d: $68
    rst $38                                       ; $604e: $ff
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    ld h, b                                       ; $6051: $60
    sbc a                                         ; $6052: $9f
    inc hl                                        ; $6053: $23
    nop                                           ; $6054: $00
    ld l, $10                                     ; $6055: $2e $10
    add hl, hl                                    ; $6057: $29
    ld d, $00                                     ; $6058: $16 $00
    inc sp                                        ; $605a: $33
    inc c                                         ; $605b: $0c
    xor a                                         ; $605c: $af
    db $10                                        ; $605d: $10
    jr nz, jr_0bb_607e                            ; $605e: $20 $1e

    ld d, $09                                     ; $6060: $16 $09
    nop                                           ; $6062: $00
    ret nc                                        ; $6063: $d0

    rrca                                          ; $6064: $0f
    cp b                                          ; $6065: $b8
    nop                                           ; $6066: $00
    inc c                                         ; $6067: $0c
    or b                                          ; $6068: $b0
    ld b, $80                                     ; $6069: $06 $80
    ld b, b                                       ; $606b: $40
    adc h                                         ; $606c: $8c
    and h                                         ; $606d: $a4
    nop                                           ; $606e: $00
    inc bc                                        ; $606f: $03
    call nc, Call_000_3cc8                        ; $6070: $d4 $c8 $3c
    ld [hl], b                                    ; $6073: $70
    adc a                                         ; $6074: $8f
    call nz, $0bd4                                ; $6075: $c4 $d4 $0b
    ld [hl-], a                                   ; $6078: $32
    add hl, de                                    ; $6079: $19
    and b                                         ; $607a: $a0
    nop                                           ; $607b: $00
    sub b                                         ; $607c: $90
    cp b                                          ; $607d: $b8

jr_0bb_607e:
    ld [bc], a                                    ; $607e: $02
    rst $28                                       ; $607f: $ef
    sbc a                                         ; $6080: $9f
    ld [bc], a                                    ; $6081: $02
    rst $28                                       ; $6082: $ef
    sbc a                                         ; $6083: $9f
    rst $38                                       ; $6084: $ff
    add a                                         ; $6085: $87
    rst $38                                       ; $6086: $ff
    ret nz                                        ; $6087: $c0

    ld c, [hl]                                    ; $6088: $4e
    dec b                                         ; $6089: $05
    ldh a, [rTMA]                                 ; $608a: $f0 $06
    ld sp, hl                                     ; $608c: $f9
    adc $e7                                       ; $608d: $ce $e7
    sbc a                                         ; $608f: $9f
    xor $02                                       ; $6090: $ee $02
    nop                                           ; $6092: $00
    ret nz                                        ; $6093: $c0

    dec bc                                        ; $6094: $0b
    cp [hl]                                       ; $6095: $be
    ldh [$92], a                                  ; $6096: $e0 $92
    inc h                                         ; $6098: $24
    and [hl]                                      ; $6099: $a6
    inc e                                         ; $609a: $1c
    xor h                                         ; $609b: $ac
    inc c                                         ; $609c: $0c
    rst $38                                       ; $609d: $ff
    rst $00                                       ; $609e: $c7
    rst $38                                       ; $609f: $ff
    pop hl                                        ; $60a0: $e1
    pop af                                        ; $60a1: $f1
    ld h, c                                       ; $60a2: $61
    cp $a6                                        ; $60a3: $fe $a6
    inc e                                         ; $60a5: $1c
    inc b                                         ; $60a6: $04
    jr z, @-$30                                   ; $60a7: $28 $ce

    ccf                                           ; $60a9: $3f
    ld a, [hl]                                    ; $60aa: $7e
    ld sp, hl                                     ; $60ab: $f9
    cp b                                          ; $60ac: $b8
    dec de                                        ; $60ad: $1b
    or c                                          ; $60ae: $b1
    ld d, h                                       ; $60af: $54
    dec l                                         ; $60b0: $2d
    ld a, l                                       ; $60b1: $7d
    xor b                                         ; $60b2: $a8

jr_0bb_60b3:
    inc d                                         ; $60b3: $14
    inc l                                         ; $60b4: $2c
    nop                                           ; $60b5: $00
    inc bc                                        ; $60b6: $03
    sbc a                                         ; $60b7: $9f
    pop hl                                        ; $60b8: $e1
    cp d                                          ; $60b9: $ba
    inc c                                         ; $60ba: $0c
    ccf                                           ; $60bb: $3f
    rst $30                                       ; $60bc: $f7
    rst $08                                       ; $60bd: $cf
    ld b, d                                       ; $60be: $42
    jr c, jr_0bb_60b3                             ; $60bf: $38 $f2

    inc c                                         ; $60c1: $0c
    ld b, $1d                                     ; $60c2: $06 $1d
    ld b, h                                       ; $60c4: $44
    jr c, jr_0bb_60c7                             ; $60c5: $38 $00

jr_0bb_60c7:
    ld a, $78                                     ; $60c7: $3e $78
    ld a, [de]                                    ; $60c9: $1a
    nop                                           ; $60ca: $00
    ld b, $01                                     ; $60cb: $06 $01
    ld [bc], a                                    ; $60cd: $02
    nop                                           ; $60ce: $00
    inc l                                         ; $60cf: $2c
    inc bc                                        ; $60d0: $03
    ld b, b                                       ; $60d1: $40
    ld [bc], a                                    ; $60d2: $02
    db $10                                        ; $60d3: $10
    dec bc                                        ; $60d4: $0b
    inc b                                         ; $60d5: $04
    inc e                                         ; $60d6: $1c
    adc d                                         ; $60d7: $8a
    ld [bc], a                                    ; $60d8: $02
    adc c                                         ; $60d9: $89
    nop                                           ; $60da: $00
    ld b, $ff                                     ; $60db: $06 $ff
    ld b, c                                       ; $60dd: $41
    ld a, b                                       ; $60de: $78
    sbc c                                         ; $60df: $99
    dec b                                         ; $60e0: $05
    ldh a, [rIF]                                  ; $60e1: $f0 $0f
    add hl, bc                                    ; $60e3: $09
    ld b, $02                                     ; $60e4: $06 $02
    add [hl]                                      ; $60e6: $86
    ld bc, $b400                                  ; $60e7: $01 $00 $b4
    nop                                           ; $60ea: $00
    ld a, e                                       ; $60eb: $7b
    add h                                         ; $60ec: $84
    ld bc, $cdfe                                  ; $60ed: $01 $fe $cd
    cp $04                                        ; $60f0: $fe $04
    db $10                                        ; $60f2: $10
    rst $38                                       ; $60f3: $ff
    adc $30                                       ; $60f4: $ce $30
    ld a, d                                       ; $60f6: $7a
    dec sp                                        ; $60f7: $3b
    ld d, $14                                     ; $60f8: $16 $14
    rrca                                          ; $60fa: $0f
    nop                                           ; $60fb: $00
    inc hl                                        ; $60fc: $23
    rra                                           ; $60fd: $1f
    ld l, l                                       ; $60fe: $6d
    inc de                                        ; $60ff: $13
    jr jr_0bb_6109                                ; $6100: $18 $07

    daa                                           ; $6102: $27
    jr jr_0bb_6145                                ; $6103: $18 $40

    inc a                                         ; $6105: $3c
    ld c, e                                       ; $6106: $4b
    ld d, $04                                     ; $6107: $16 $04

jr_0bb_6109:
    rst $38                                       ; $6109: $ff
    rst $18                                       ; $610a: $df
    rst $38                                       ; $610b: $ff
    ldh a, [rIE]                                  ; $610c: $f0 $ff
    rrca                                          ; $610e: $0f
    inc b                                         ; $610f: $04
    rst $38                                       ; $6110: $ff
    ld a, [$b105]                                 ; $6111: $fa $05 $b1
    ld [bc], a                                    ; $6114: $02
    ld d, b                                       ; $6115: $50
    ld e, [hl]                                    ; $6116: $5e
    sub d                                         ; $6117: $92
    inc hl                                        ; $6118: $23
    sub e                                         ; $6119: $93
    ld e, e                                       ; $611a: $5b
    nop                                           ; $611b: $00
    ld a, $ff                                     ; $611c: $3e $ff
    ld b, a                                       ; $611e: $47
    rst $38                                       ; $611f: $ff
    di                                            ; $6120: $f3
    rrca                                          ; $6121: $0f
    add b                                         ; $6122: $80
    ld a, a                                       ; $6123: $7f
    nop                                           ; $6124: $00
    cp $01                                        ; $6125: $fe $01
    inc e                                         ; $6127: $1c
    inc bc                                        ; $6128: $03
    ld b, e                                       ; $6129: $43
    nop                                           ; $612a: $00
    inc e                                         ; $612b: $1c
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    dec e                                         ; $612e: $1d
    cp $b1                                        ; $612f: $fe $b1
    cp $c3                                        ; $6131: $fe $c3
    db $fc                                        ; $6133: $fc
    ei                                            ; $6134: $fb
    db $fc                                        ; $6135: $fc

jr_0bb_6136:
    ld h, b                                       ; $6136: $60
    nop                                           ; $6137: $00
    ld [hl], h                                    ; $6138: $74
    nop                                           ; $6139: $00
    ld l, $0c                                     ; $613a: $2e $0c
    ld d, e                                       ; $613c: $53
    adc [hl]                                      ; $613d: $8e
    dec d                                         ; $613e: $15
    rrca                                          ; $613f: $0f
    ld b, [hl]                                    ; $6140: $46
    nop                                           ; $6141: $00
    rrca                                          ; $6142: $0f
    ld b, e                                       ; $6143: $43
    adc a                                         ; $6144: $8f

jr_0bb_6145:
    adc b                                         ; $6145: $88
    rlca                                          ; $6146: $07
    rrca                                          ; $6147: $0f
    add b                                         ; $6148: $80
    ld [$1280], sp                                ; $6149: $08 $80 $12
    dec c                                         ; $614c: $0d
    ld [hl], l                                    ; $614d: $75
    sbc h                                         ; $614e: $9c
    db $ed                                        ; $614f: $ed
    ld a, c                                       ; $6150: $79
    rst $38                                       ; $6151: $ff
    rst $30                                       ; $6152: $f7
    rst $38                                       ; $6153: $ff
    jr jr_0bb_61b6                                ; $6154: $18 $60

    sub a                                         ; $6156: $97
    rst $38                                       ; $6157: $ff
    inc c                                         ; $6158: $0c
    inc bc                                        ; $6159: $03
    inc [hl]                                      ; $615a: $34
    dec b                                         ; $615b: $05
    add b                                         ; $615c: $80
    or b                                          ; $615d: $b0
    ret nz                                        ; $615e: $c0

    nop                                           ; $615f: $00
    ret c                                         ; $6160: $d8

    ldh [$2d], a                                  ; $6161: $e0 $2d
    ld h, b                                       ; $6163: $60
    jr z, jr_0bb_6136                             ; $6164: $28 $d0

    ld a, $00                                     ; $6166: $3e $00
    ld [hl], a                                    ; $6168: $77
    add sp, -$33                                  ; $6169: $e8 $cd
    ld b, $50                                     ; $616b: $06 $50
    add hl, bc                                    ; $616d: $09
    ld d, d                                       ; $616e: $52
    ld bc, $9ccf                                  ; $616f: $01 $cf $9c
    ld b, $10                                     ; $6172: $06 $10
    dec e                                         ; $6174: $1d
    ld d, b                                       ; $6175: $50
    add hl, bc                                    ; $6176: $09
    ld [hl], b                                    ; $6177: $70
    cp a                                          ; $6178: $bf
    and d                                         ; $6179: $a2
    dec b                                         ; $617a: $05
    db $10                                        ; $617b: $10
    dec h                                         ; $617c: $25
    or [hl]                                       ; $617d: $b6
    dec d                                         ; $617e: $15
    ld hl, sp-$02                                 ; $617f: $f8 $fe
    pop af                                        ; $6181: $f1
    ld hl, sp+$3c                                 ; $6182: $f8 $3c
    rst $00                                       ; $6184: $c7
    db $e3                                        ; $6185: $e3
    ret c                                         ; $6186: $d8

    ld d, $bc                                     ; $6187: $16 $bc
    dec c                                         ; $6189: $0d
    inc l                                         ; $618a: $2c
    dec l                                         ; $618b: $2d
    db $10                                        ; $618c: $10
    dec h                                         ; $618d: $25
    rst $38                                       ; $618e: $ff
    ld a, a                                       ; $618f: $7f
    ld a, [de]                                    ; $6190: $1a
    pop af                                        ; $6191: $f1
    ld a, a                                       ; $6192: $7f
    ldh a, [rNR10]                                ; $6193: $f0 $10
    dec l                                         ; $6195: $2d
    ld a, [$f305]                                 ; $6196: $fa $05 $f3
    ld e, [hl]                                    ; $6199: $5e
    ld b, $e7                                     ; $619a: $06 $e7
    rra                                           ; $619c: $1f
    di                                            ; $619d: $f3
    rra                                           ; $619e: $1f
    rrca                                          ; $619f: $0f
    ld [$4e17], sp                                ; $61a0: $08 $17 $4e
    dec c                                         ; $61a3: $0d
    ld d, b                                       ; $61a4: $50
    ld e, l                                       ; $61a5: $5d
    ld [bc], a                                    ; $61a6: $02
    ld c, $70                                     ; $61a7: $0e $70
    dec a                                         ; $61a9: $3d
    and b                                         ; $61aa: $a0
    cp [hl]                                       ; $61ab: $be
    dec hl                                        ; $61ac: $2b
    ld [bc], a                                    ; $61ad: $02
    inc c                                         ; $61ae: $0c
    dec h                                         ; $61af: $25
    ld [bc], a                                    ; $61b0: $02
    nop                                           ; $61b1: $00
    ld l, a                                       ; $61b2: $6f
    nop                                           ; $61b3: $00
    adc c                                         ; $61b4: $89
    nop                                           ; $61b5: $00

jr_0bb_61b6:
    ld b, $7a                                     ; $61b6: $06 $7a
    ld bc, $112e                                  ; $61b8: $01 $2e $11
    ld sp, $640e                                  ; $61bb: $31 $0e $64
    nop                                           ; $61be: $00
    add hl, bc                                    ; $61bf: $09
    sbc a                                         ; $61c0: $9f
    jr nz, @+$01                                  ; $61c1: $20 $ff

    nop                                           ; $61c3: $00
    sub a                                         ; $61c4: $97
    ld [$1022], sp                                ; $61c5: $08 $22 $10
    db $dd                                        ; $61c8: $dd
    ld a, [hl]                                    ; $61c9: $7e
    add c                                         ; $61ca: $81
    sbc $00                                       ; $61cb: $de $00
    ldh a, [rSVBK]                                ; $61cd: $f0 $70
    adc a                                         ; $61cf: $8f
    rst $28                                       ; $61d0: $ef
    nop                                           ; $61d1: $00
    db $10                                        ; $61d2: $10
    scf                                           ; $61d3: $37
    nop                                           ; $61d4: $00
    cp $01                                        ; $61d5: $fe $01
    call nz, $873b                                ; $61d7: $c4 $3b $87
    nop                                           ; $61da: $00
    ld a, b                                       ; $61db: $78
    ccf                                           ; $61dc: $3f
    ret nz                                        ; $61dd: $c0

    ret nz                                        ; $61de: $c0

    ccf                                           ; $61df: $3f
    rra                                           ; $61e0: $1f
    ldh [$cc], a                                  ; $61e1: $e0 $cc
    nop                                           ; $61e3: $00
    inc sp                                        ; $61e4: $33
    rst $38                                       ; $61e5: $ff
    nop                                           ; $61e6: $00
    inc bc                                        ; $61e7: $03
    db $fc                                        ; $61e8: $fc
    ld a, h                                       ; $61e9: $7c
    add e                                         ; $61ea: $83
    cp a                                          ; $61eb: $bf
    nop                                           ; $61ec: $00
    ld b, b                                       ; $61ed: $40
    rlca                                          ; $61ee: $07
    ld hl, sp-$03                                 ; $61ef: $f8 $fd
    ld [bc], a                                    ; $61f1: $02
    rst $18                                       ; $61f2: $df
    jr nz, jr_0bb_6231                            ; $61f3: $20 $3c

    nop                                           ; $61f5: $00
    jp Jump_000_001c                              ; $61f6: $c3 $1c $00


    ldh a, [rP1]                                  ; $61f9: $f0 $00
    inc a                                         ; $61fb: $3c
    ret nz                                        ; $61fc: $c0

    ret nz                                        ; $61fd: $c0

    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    inc de                                        ; $6200: $13
    inc bc                                        ; $6201: $03
    ld b, [hl]                                    ; $6202: $46
    rlca                                          ; $6203: $07
    ld b, h                                       ; $6204: $44
    rlca                                          ; $6205: $07
    inc d                                         ; $6206: $14
    ld [hl], d                                    ; $6207: $72
    rla                                           ; $6208: $17
    ldh [$5c], a                                  ; $6209: $e0 $5c
    ld [c], a                                     ; $620b: $e2
    inc b                                         ; $620c: $04
    pop hl                                        ; $620d: $e1
    ld l, h                                       ; $620e: $6c
    nop                                           ; $620f: $00
    call nz, $0424                                ; $6210: $c4 $24 $04
    inc bc                                        ; $6213: $03
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    ret z                                         ; $6216: $c8

    ret nz                                        ; $6217: $c0

    ld h, d                                       ; $6218: $62
    ldh [rNR44], a                                ; $6219: $e0 $23
    ldh [rOCPD], a                                ; $621b: $e0 $6b
    ld d, b                                       ; $621d: $50
    add sp, $00                                   ; $621e: $e8 $00
    dec bc                                        ; $6220: $0b
    sbc l                                         ; $6221: $9d
    sub $07                                       ; $6222: $d6 $07
    ret nc                                        ; $6224: $d0

    cpl                                           ; $6225: $2f
    db $e3                                        ; $6226: $e3
    inc e                                         ; $6227: $1c
    ld bc, $e01f                                  ; $6228: $01 $1f $e0
    db $fd                                        ; $622b: $fd

jr_0bb_622c:
    ld [bc], a                                    ; $622c: $02
    rlc b                                         ; $622d: $cb $00
    xor $e4                                       ; $622f: $ee $e4

jr_0bb_6231:
    rlca                                          ; $6231: $07
    nop                                           ; $6232: $00
    db $e4                                        ; $6233: $e4
    dec de                                        ; $6234: $1b
    ld a, l                                       ; $6235: $7d
    add d                                         ; $6236: $82
    daa                                           ; $6237: $27
    ret c                                         ; $6238: $d8

    ldh a, [rIF]                                  ; $6239: $f0 $0f
    nop                                           ; $623b: $00
    adc a                                         ; $623c: $8f
    ld [hl], b                                    ; $623d: $70
    ldh [rP1], a                                  ; $623e: $e0 $00
    add hl, de                                    ; $6240: $19
    nop                                           ; $6241: $00
    or $00                                        ; $6242: $f6 $00
    nop                                           ; $6244: $00
    ld e, a                                       ; $6245: $5f
    and b                                         ; $6246: $a0
    ldh a, [rIF]                                  ; $6247: $f0 $0f
    db $fd                                        ; $6249: $fd
    ld [bc], a                                    ; $624a: $02
    jr nz, jr_0bb_622c                            ; $624b: $20 $df

    ld bc, $07f8                                  ; $624d: $01 $f8 $07
    ld [bc], a                                    ; $6250: $02
    nop                                           ; $6251: $00
    db $eb                                        ; $6252: $eb
    nop                                           ; $6253: $00
    ld a, [hl]                                    ; $6254: $7e
    ld d, d                                       ; $6255: $52
    inc bc                                        ; $6256: $03
    ld bc, $c03b                                  ; $6257: $01 $3b $c0
    db $ec                                        ; $625a: $ec
    stop                                          ; $625b: $10 $00
    and a                                         ; $625d: $a7
    rlca                                          ; $625e: $07
    ld h, l                                       ; $625f: $65
    inc b                                         ; $6260: $04
    rst $38                                       ; $6261: $ff
    jr z, jr_0bb_6270                             ; $6262: $28 $0c

    xor b                                         ; $6264: $a8
    ld c, $e8                                     ; $6265: $0e $e8
    dec de                                        ; $6267: $1b
    ld h, b                                       ; $6268: $60
    db $fd                                        ; $6269: $fd
    ld h, b                                       ; $626a: $60
    db $fd                                        ; $626b: $fd
    and b                                         ; $626c: $a0
    db $fd                                        ; $626d: $fd
    and b                                         ; $626e: $a0
    db $fd                                        ; $626f: $fd

jr_0bb_6270:
    ldh [$fd], a                                  ; $6270: $e0 $fd
    adc d                                         ; $6272: $8a
    ldh a, [rNR33]                                ; $6273: $f0 $1d
    ld [bc], a                                    ; $6275: $02
    nop                                           ; $6276: $00
    ld a, [bc]                                    ; $6277: $0a
    sub e                                         ; $6278: $93
    daa                                           ; $6279: $27
    inc b                                         ; $627a: $04
    sub [hl]                                      ; $627b: $96
    ld de, $00bc                                  ; $627c: $11 $bc $00
    inc bc                                        ; $627f: $03
    inc sp                                        ; $6280: $33
    rrca                                          ; $6281: $0f
    inc l                                         ; $6282: $2c
    rra                                           ; $6283: $1f
    rrca                                          ; $6284: $0f
    nop                                           ; $6285: $00
    sub [hl]                                      ; $6286: $96
    ld b, h                                       ; $6287: $44
    ld bc, $0d68                                  ; $6288: $01 $68 $0d
    ld b, [hl]                                    ; $628b: $46
    nop                                           ; $628c: $00
    ret nz                                        ; $628d: $c0

jr_0bb_628e:
    ld a, [bc]                                    ; $628e: $0a
    rlca                                          ; $628f: $07
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    ld [$ff30], sp                                ; $6292: $08 $30 $ff
    rrca                                          ; $6295: $0f
    ldh a, [$30]                                  ; $6296: $f0 $30
    dec c                                         ; $6298: $0d
    dec sp                                        ; $6299: $3b
    nop                                           ; $629a: $00
    ld a, c                                       ; $629b: $79
    nop                                           ; $629c: $00
    add [hl]                                      ; $629d: $86
    ld b, $ff                                     ; $629e: $06 $ff
    ld sp, hl                                     ; $62a0: $f9
    rst $38                                       ; $62a1: $ff
    rra                                           ; $62a2: $1f
    rst $38                                       ; $62a3: $ff
    ldh [rSTAT], a                                ; $62a4: $e0 $41
    rra                                           ; $62a6: $1f
    dec de                                        ; $62a7: $1b
    dec bc                                        ; $62a8: $0b
    add b                                         ; $62a9: $80
    nop                                           ; $62aa: $00
    ld b, b                                       ; $62ab: $40
    cp a                                          ; $62ac: $bf
    ld e, $d0                                     ; $62ad: $1e $d0
    ld [bc], a                                    ; $62af: $02
    ld [$f28d], sp                                ; $62b0: $08 $8d $f2
    ld [hl], d                                    ; $62b3: $72
    add b                                         ; $62b4: $80
    jr nc, jr_0bb_62c4                            ; $62b5: $30 $0d

    ld b, $00                                     ; $62b7: $06 $00
    inc h                                         ; $62b9: $24
    inc b                                         ; $62ba: $04
    scf                                           ; $62bb: $37
    ld h, $27                                     ; $62bc: $26 $27
    ld b, h                                       ; $62be: $44
    ld h, a                                       ; $62bf: $67
    ld [bc], a                                    ; $62c0: $02
    ld [$7746], sp                                ; $62c1: $08 $46 $77

jr_0bb_62c4:
    nop                                           ; $62c4: $00
    ld h, h                                       ; $62c5: $64
    ld [hl], a                                    ; $62c6: $77
    ld h, $37                                     ; $62c7: $26 $37
    ld hl, $20ec                                  ; $62c9: $21 $ec $20
    db $e4                                        ; $62cc: $e4
    nop                                           ; $62cd: $00
    ld h, d                                       ; $62ce: $62
    and $62                                       ; $62cf: $e6 $62
    and $22                                       ; $62d1: $e6 $22
    and $22                                       ; $62d3: $e6 $22
    xor $00                                       ; $62d5: $ee $00
    ld h, $ee                                     ; $62d7: $26 $ee
    ld h, h                                       ; $62d9: $64
    db $ec                                        ; $62da: $ec
    ret nz                                        ; $62db: $c0

    ccf                                           ; $62dc: $3f
    ld bc, $14ff                                  ; $62dd: $01 $ff $14
    ld e, [hl]                                    ; $62e0: $5e
    rst $38                                       ; $62e1: $ff
    add hl, bc                                    ; $62e2: $09
    ld [hl-], a                                   ; $62e3: $32
    inc bc                                        ; $62e4: $03
    adc [hl]                                      ; $62e5: $8e
    cp h                                          ; $62e6: $bc
    dec b                                         ; $62e7: $05
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    ld e, $e1                                     ; $62eb: $1e $e1
    ldh [rIE], a                                  ; $62ed: $e0 $ff
    ld e, $ff                                     ; $62ef: $1e $ff
    ret                                           ; $62f1: $c9


    rst $38                                       ; $62f2: $ff
    inc b                                         ; $62f3: $04
    ld [hl], $f9                                  ; $62f4: $36 $f9
    ldh [$1f], a                                  ; $62f6: $e0 $1f
    db $10                                        ; $62f8: $10
    and h                                         ; $62f9: $a4
    ld c, $ff                                     ; $62fa: $0e $ff
    ld [hl], b                                    ; $62fc: $70
    jr nz, jr_0bb_628e                            ; $62fd: $20 $8f

    add e                                         ; $62ff: $83
    add e                                         ; $6300: $83
    ld [bc], a                                    ; $6301: $02
    ld c, c                                       ; $6302: $49
    cp $03                                        ; $6303: $fe $03
    db $fc                                        ; $6305: $fc
    cp [hl]                                       ; $6306: $be
    add b                                         ; $6307: $80
    xor $0d                                       ; $6308: $ee $0d
    db $fc                                        ; $630a: $fc
    ld b, b                                       ; $630b: $40
    cp $98                                        ; $630c: $fe $98
    ldh [$e1], a                                  ; $630e: $e0 $e1
    cp $07                                        ; $6310: $fe $07
    jr z, @-$3e                                   ; $6312: $28 $c0

    add b                                         ; $6314: $80
    nop                                           ; $6315: $00
    ld d, [hl]                                    ; $6316: $56
    sub d                                         ; $6317: $92
    dec e                                         ; $6318: $1d
    ret nc                                        ; $6319: $d0

    ld h, $58                                     ; $631a: $26 $58
    dec e                                         ; $631c: $1d
    xor d                                         ; $631d: $aa
    xor $0e                                       ; $631e: $ee $0e
    nop                                           ; $6320: $00
    call nz, $0800                                ; $6321: $c4 $00 $08
    rla                                           ; $6324: $17
    ld b, $02                                     ; $6325: $06 $02
    ld l, l                                       ; $6327: $6d
    rlca                                          ; $6328: $07
    rra                                           ; $6329: $1f
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    add d                                         ; $632c: $82
    dec b                                         ; $632d: $05
    jr nc, jr_0bb_6330                            ; $632e: $30 $00

jr_0bb_6330:
    ld b, b                                       ; $6330: $40
    jr c, jr_0bb_6333                             ; $6331: $38 $00

jr_0bb_6333:
    nop                                           ; $6333: $00
    ldh [rNR32], a                                ; $6334: $e0 $1c
    nop                                           ; $6336: $00
    or a                                          ; $6337: $b7
    ld [$0758], sp                                ; $6338: $08 $58 $07
    ld b, [hl]                                    ; $633b: $46
    jr c, jr_0bb_633e                             ; $633c: $38 $00

jr_0bb_633e:
    xor h                                         ; $633e: $ac
    ld [hl], l                                    ; $633f: $75
    cpl                                           ; $6340: $2f
    adc e                                         ; $6341: $8b
    rlca                                          ; $6342: $07
    ld b, [hl]                                    ; $6343: $46
    inc bc                                        ; $6344: $03
    nop                                           ; $6345: $00
    and e                                         ; $6346: $a3
    nop                                           ; $6347: $00
    ld bc, $e01f                                  ; $6348: $01 $1f $e0
    inc de                                        ; $634b: $13
    inc c                                         ; $634c: $0c
    inc b                                         ; $634d: $04
    inc bc                                        ; $634e: $03
    inc bc                                        ; $634f: $03
    ld a, [hl-]                                   ; $6350: $3a
    ld b, $20                                     ; $6351: $06 $20
    inc e                                         ; $6353: $1c
    db $e3                                        ; $6354: $e3
    sub [hl]                                      ; $6355: $96
    dec bc                                        ; $6356: $0b
    rst $38                                       ; $6357: $ff
    nop                                           ; $6358: $00
    jr nz, @-$1f                                  ; $6359: $20 $df

    rra                                           ; $635b: $1f
    nop                                           ; $635c: $00
    ldh [$58], a                                  ; $635d: $e0 $58
    and a                                         ; $635f: $a7
    rst $38                                       ; $6360: $ff
    nop                                           ; $6361: $00
    ld l, b                                       ; $6362: $68
    sub a                                         ; $6363: $97
    ld h, $00                                     ; $6364: $26 $00
    scf                                           ; $6366: $37

jr_0bb_6367:
    ld h, $37                                     ; $6367: $26 $37
    sub h                                         ; $6369: $94
    rla                                           ; $636a: $17
    ld b, $07                                     ; $636b: $06 $07
    and $01                                       ; $636d: $e6 $01
    rlca                                          ; $636f: $07
    halt                                          ; $6370: $76
    rlca                                          ; $6371: $07
    add $07                                       ; $6372: $c6 $07
    ld b, $07                                     ; $6374: $06 $07
    jr nc, jr_0bb_6367                            ; $6376: $30 $ef

    nop                                           ; $6378: $00
    ld h, h                                       ; $6379: $64
    db $ec                                        ; $637a: $ec
    inc h                                         ; $637b: $24
    db $ec                                        ; $637c: $ec
    ld l, c                                       ; $637d: $69
    add sp, $60                                   ; $637e: $e8 $60
    ldh [rP1], a                                  ; $6380: $e0 $00
    ld h, d                                       ; $6382: $62
    ldh [$67], a                                  ; $6383: $e0 $67
    ldh [$60], a                                  ; $6385: $e0 $60
    ldh [$6c], a                                  ; $6387: $e0 $6c
    ldh [rP1], a                                  ; $6389: $e0 $00
    ldh a, [rP1]                                  ; $638b: $f0 $00
    sbc a                                         ; $638d: $9f
    ld h, b                                       ; $638e: $60
    ld hl, sp+$07                                 ; $638f: $f8 $07
    dec e                                         ; $6391: $1d
    cp $00                                        ; $6392: $fe $00
    and b                                         ; $6394: $a0
    ld a, a                                       ; $6395: $7f
    sbc [hl]                                      ; $6396: $9e
    ld h, b                                       ; $6397: $60
    ld bc, $5cfe                                  ; $6398: $01 $fe $5c
    add e                                         ; $639b: $83
    nop                                           ; $639c: $00
    rrca                                          ; $639d: $0f
    nop                                           ; $639e: $00
    ei                                            ; $639f: $fb
    inc b                                         ; $63a0: $04
    ld b, b                                       ; $63a1: $40
    cp a                                          ; $63a2: $bf
    adc a                                         ; $63a3: $8f
    ld [hl], b                                    ; $63a4: $70
    nop                                           ; $63a5: $00
    ld b, b                                       ; $63a6: $40
    add b                                         ; $63a7: $80
    db $10                                        ; $63a8: $10
    ld h, b                                       ; $63a9: $60
    ldh a, [rP1]                                  ; $63aa: $f0 $00
    rlca                                          ; $63ac: $07
    ld hl, sp+$58                                 ; $63ad: $f8 $58
    cp d                                          ; $63af: $ba
    cp d                                          ; $63b0: $ba
    ld [bc], a                                    ; $63b1: $02
    ld [hl], b                                    ; $63b2: $70
    inc l                                         ; $63b3: $2c
    ld de, $0f9a                                  ; $63b4: $11 $9a $0f
    ld hl, sp+$00                                 ; $63b7: $f8 $00
    inc [hl]                                      ; $63b9: $34
    inc b                                         ; $63ba: $04
    nop                                           ; $63bb: $00
    inc bc                                        ; $63bc: $03
    ldh a, [$5c]                                  ; $63bd: $f0 $5c
    ld [bc], a                                    ; $63bf: $02
    inc c                                         ; $63c0: $0c
    inc d                                         ; $63c1: $14
    rrca                                          ; $63c2: $0f
    rra                                           ; $63c3: $1f
    inc c                                         ; $63c4: $0c
    nop                                           ; $63c5: $00
    ld h, b                                       ; $63c6: $60
    db $10                                        ; $63c7: $10
    ldh [$4c], a                                  ; $63c8: $e0 $4c
    ld [bc], a                                    ; $63ca: $02
    or b                                          ; $63cb: $b0
    rrca                                          ; $63cc: $0f
    ld b, b                                       ; $63cd: $40
    nop                                           ; $63ce: $00
    cpl                                           ; $63cf: $2f
    jr nz, @-$7e                                  ; $63d0: $20 $80

    or [hl]                                       ; $63d2: $b6
    rrca                                          ; $63d3: $0f
    ld b, $f0                                     ; $63d4: $06 $f0
    ld b, $d8                                     ; $63d6: $06 $d8
    dec bc                                        ; $63d8: $0b
    call c, $cc08                                 ; $63d9: $dc $08 $cc
    rrca                                          ; $63dc: $0f
    nop                                           ; $63dd: $00
    ld h, l                                       ; $63de: $65
    rra                                           ; $63df: $1f
    ccf                                           ; $63e0: $3f
    rrca                                          ; $63e1: $0f
    ret c                                         ; $63e2: $d8

    rlca                                          ; $63e3: $07
    dec h                                         ; $63e4: $25
    dec de                                        ; $63e5: $1b
    db $10                                        ; $63e6: $10
    ret nc                                        ; $63e7: $d0

    rlca                                          ; $63e8: $07
    daa                                           ; $63e9: $27
    halt                                          ; $63ea: $76
    ld d, $fa                                     ; $63eb: $16 $fa
    rst $38                                       ; $63ed: $ff
    dec a                                         ; $63ee: $3d
    rst $38                                       ; $63ef: $ff
    nop                                           ; $63f0: $00
    rst $08                                       ; $63f1: $cf
    ei                                            ; $63f2: $fb
    ld [c], a                                     ; $63f3: $e2
    rst $38                                       ; $63f4: $ff
    ld c, [hl]                                    ; $63f5: $4e
    pop af                                        ; $63f6: $f1
    ld a, [de]                                    ; $63f7: $1a
    db $e4                                        ; $63f8: $e4
    inc b                                         ; $63f9: $04
    db $fc                                        ; $63fa: $fc
    nop                                           ; $63fb: $00
    ret nc                                        ; $63fc: $d0

    nop                                           ; $63fd: $00
    rra                                           ; $63fe: $1f
    cp a                                          ; $63ff: $bf
    inc bc                                        ; $6400: $03
    sbc a                                         ; $6401: $9f
    db $e3                                        ; $6402: $e3
    inc b                                         ; $6403: $04
    db $e3                                        ; $6404: $e3
    inc e                                         ; $6405: $1c
    inc b                                         ; $6406: $04
    ei                                            ; $6407: $fb
    ei                                            ; $6408: $fb
    and b                                         ; $6409: $a0
    dec d                                         ; $640a: $15
    inc d                                         ; $640b: $14
    rst $38                                       ; $640c: $ff
    nop                                           ; $640d: $00
    rst $30                                       ; $640e: $f7
    rrca                                          ; $640f: $0f
    rst $18                                       ; $6410: $df
    rst $38                                       ; $6411: $ff
    cp e                                          ; $6412: $bb
    ld a, a                                       ; $6413: $7f
    nop                                           ; $6414: $00
    rst $38                                       ; $6415: $ff
    ld b, h                                       ; $6416: $44
    rst $30                                       ; $6417: $f7
    ld a, [hl-]                                   ; $6418: $3a
    rlca                                          ; $6419: $07
    ld l, b                                       ; $641a: $68
    nop                                           ; $641b: $00
    rlca                                          ; $641c: $07
    ld [bc], a                                    ; $641d: $02
    nop                                           ; $641e: $00
    dec b                                         ; $641f: $05
    ld [bc], a                                    ; $6420: $02
    db $10                                        ; $6421: $10
    dec b                                         ; $6422: $05
    ld [bc], a                                    ; $6423: $02
    rlca                                          ; $6424: $07
    inc b                                         ; $6425: $04

jr_0bb_6426:
    jr nz, jr_0bb_6426                            ; $6426: $20 $fe

    ld a, a                                       ; $6428: $7f
    adc h                                         ; $6429: $8c
    ld [hl], e                                    ; $642a: $73
    nop                                           ; $642b: $00
    rst $28                                       ; $642c: $ef
    ld a, a                                       ; $642d: $7f
    sbc l                                         ; $642e: $9d
    ld h, d                                       ; $642f: $62
    rst $38                                       ; $6430: $ff
    ld a, a                                       ; $6431: $7f
    sub $29                                       ; $6432: $d6 $29
    nop                                           ; $6434: $00
    rst $20                                       ; $6435: $e7
    ld a, a                                       ; $6436: $7f
    push hl                                       ; $6437: $e5
    ld a, [de]                                    ; $6438: $1a
    rst $00                                       ; $6439: $c7
    rst $38                                       ; $643a: $ff
    or h                                          ; $643b: $b4
    ld c, e                                       ; $643c: $4b
    nop                                           ; $643d: $00
    ei                                            ; $643e: $fb
    rst $38                                       ; $643f: $ff
    inc a                                         ; $6440: $3c
    jp $fff7                                      ; $6441: $c3 $f7 $ff


    inc [hl]                                      ; $6444: $34
    rlc b                                         ; $6445: $cb $00
    ld a, a                                       ; $6447: $7f
    rst $38                                       ; $6448: $ff
    adc [hl]                                      ; $6449: $8e
    ld [hl], c                                    ; $644a: $71
    dec sp                                        ; $644b: $3b
    rst $38                                       ; $644c: $ff
    rst $00                                       ; $644d: $c7
    jr c, jr_0bb_6450                             ; $644e: $38 $00

jr_0bb_6450:
    rst $18                                       ; $6450: $df
    rst $38                                       ; $6451: $ff
    di                                            ; $6452: $f3
    inc c                                         ; $6453: $0c

jr_0bb_6454:
    rst $30                                       ; $6454: $f7
    rst $38                                       ; $6455: $ff
    pop de                                        ; $6456: $d1
    ld l, $00                                     ; $6457: $2e $00
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff

jr_0bb_645b:
    ld e, l                                       ; $645b: $5d
    and d                                         ; $645c: $a2
    or a                                          ; $645d: $b7
    cp $ad                                        ; $645e: $fe $ad
    ld d, d                                       ; $6460: $52
    nop                                           ; $6461: $00
    ld a, a                                       ; $6462: $7f
    cp $93                                        ; $6463: $fe $93
    ld l, h                                       ; $6465: $6c
    rst $38                                       ; $6466: $ff
    cp $d1                                        ; $6467: $fe $d1
    ld l, $02                                     ; $6469: $2e $02
    ld a, a                                       ; $646b: $7f
    cp $2f                                        ; $646c: $fe $2f
    ret nc                                        ; $646e: $d0

    and b                                         ; $646f: $a0
    ld b, b                                       ; $6470: $40
    ld [bc], a                                    ; $6471: $02
    jr jr_0bb_6454                                ; $6472: $18 $e0

    add b                                         ; $6474: $80
    inc b                                         ; $6475: $04
    jr nz, @+$62                                  ; $6476: $20 $60

    rra                                           ; $6478: $1f
    inc de                                        ; $6479: $13
    rst $38                                       ; $647a: $ff
    ld hl, sp-$01                                 ; $647b: $f8 $ff
    rlca                                          ; $647d: $07
    nop                                           ; $647e: $00
    ld hl, sp-$50                                 ; $647f: $f8 $b0
    rrca                                          ; $6481: $0f
    db $fd                                        ; $6482: $fd
    ld a, a                                       ; $6483: $7f
    ld b, [hl]                                    ; $6484: $46
    cp c                                          ; $6485: $b9
    ld sp, hl                                     ; $6486: $f9
    add b                                         ; $6487: $80
    ld a, h                                       ; $6488: $7c
    ld b, $83                                     ; $6489: $06 $83
    db $fc                                        ; $648b: $fc
    ld a, h                                       ; $648c: $7c
    rst $38                                       ; $648d: $ff
    adc e                                         ; $648e: $8b
    ld a, a                                       ; $648f: $7f
    ld a, l                                       ; $6490: $7d
    nop                                           ; $6491: $00
    add e                                         ; $6492: $83
    sbc $e1                                       ; $6493: $de $e1
    ld h, c                                       ; $6495: $61
    sbc [hl]                                      ; $6496: $9e
    sbc [hl]                                      ; $6497: $9e
    nop                                           ; $6498: $00
    rst $08                                       ; $6499: $cf
    ld [bc], a                                    ; $649a: $02
    jr nc, jr_0bb_645b                            ; $649b: $30 $be

    ld b, c                                       ; $649d: $41
    ld h, b                                       ; $649e: $60
    sbc a                                         ; $649f: $9f
    sbc [hl]                                      ; $64a0: $9e
    rst $30                                       ; $64a1: $f7
    rlca                                          ; $64a2: $07
    add e                                         ; $64a3: $83
    nop                                           ; $64a4: $00
    db $fc                                        ; $64a5: $fc
    cp h                                          ; $64a6: $bc
    ld b, e                                       ; $64a7: $43
    ld [bc], a                                    ; $64a8: $02
    ld bc, $7e81                                  ; $64a9: $01 $81 $7e
    ld b, c                                       ; $64ac: $41
    nop                                           ; $64ad: $00
    xor b                                         ; $64ae: $a8
    ld l, h                                       ; $64af: $6c
    ldh a, [$cc]                                  ; $64b0: $f0 $cc
    ldh a, [$a1]                                  ; $64b2: $f0 $a1
    xor $e8                                       ; $64b4: $ee $e8
    dec bc                                        ; $64b6: $0b
    ldh a, [rSB]                                  ; $64b7: $f0 $01
    db $f4                                        ; $64b9: $f4
    ld bc, $0246                                  ; $64ba: $01 $46 $02
    ld h, b                                       ; $64bd: $60
    call nc, Call_000_0407                        ; $64be: $d4 $07 $04
    ld c, $71                                     ; $64c1: $0e $71
    ld h, b                                       ; $64c3: $60
    jr z, jr_0bb_64ea                             ; $64c4: $28 $24

    jr nc, @+$2e                                  ; $64c6: $30 $2c

    rst $30                                       ; $64c8: $f7
    rra                                           ; $64c9: $1f
    jr jr_0bb_64cc                                ; $64ca: $18 $00

jr_0bb_64cc:
    or a                                          ; $64cc: $b7
    ld h, b                                       ; $64cd: $60
    rlca                                          ; $64ce: $07
    nop                                           ; $64cf: $00
    rst $08                                       ; $64d0: $cf
    nop                                           ; $64d1: $00
    dec de                                        ; $64d2: $1b
    inc b                                         ; $64d3: $04
    or b                                          ; $64d4: $b0
    ld [bc], a                                    ; $64d5: $02
    ld d, a                                       ; $64d6: $57
    ld [$1040], sp                                ; $64d7: $08 $40 $10
    or $07                                        ; $64da: $f6 $07
    rst $20                                       ; $64dc: $e7
    nop                                           ; $64dd: $00
    ccf                                           ; $64de: $3f
    nop                                           ; $64df: $00
    add $39                                       ; $64e0: $c6 $39
    nop                                           ; $64e2: $00
    ccf                                           ; $64e3: $3f
    add b                                         ; $64e4: $80

jr_0bb_64e5:
    inc hl                                        ; $64e5: $23
    inc e                                         ; $64e6: $1c
    ret nz                                        ; $64e7: $c0

    ccf                                           ; $64e8: $3f
    dec e                                         ; $64e9: $1d

jr_0bb_64ea:
    ldh [rLCDC], a                                ; $64ea: $e0 $40
    ld a, c                                       ; $64ec: $79
    ld [bc], a                                    ; $64ed: $02
    ld [bc], a                                    ; $64ee: $02
    ei                                            ; $64ef: $fb
    inc b                                         ; $64f0: $04
    ldh a, [rIF]                                  ; $64f1: $f0 $0f
    jr nc, @-$3e                                  ; $64f3: $30 $c0

    nop                                           ; $64f5: $00
    ld hl, sp+$00                                 ; $64f6: $f8 $00
    ccf                                           ; $64f8: $3f
    ret nz                                        ; $64f9: $c0

    nop                                           ; $64fa: $00
    rst $38                                       ; $64fb: $ff
    db $e4                                        ; $64fc: $e4
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    cp [hl]                                       ; $64ff: $be
    nop                                           ; $6500: $00
    db $ec                                        ; $6501: $ec
    db $10                                        ; $6502: $10
    add $38                                       ; $6503: $c6 $38
    ld hl, sp+$00                                 ; $6505: $f8 $00
    nop                                           ; $6507: $00
    ld a, h                                       ; $6508: $7c
    nop                                           ; $6509: $00
    add d                                         ; $650a: $82
    ld a, h                                       ; $650b: $7c
    xor $10                                       ; $650c: $ee $10
    rlca                                          ; $650e: $07
    ld [bc], a                                    ; $650f: $02
    nop                                           ; $6510: $00
    ld b, $03                                     ; $6511: $06 $03
    ld b, $03                                     ; $6513: $06 $03
    ld d, l                                       ; $6515: $55
    inc bc                                        ; $6516: $03
    ld d, [hl]                                    ; $6517: $56
    ld bc, $d747                                  ; $6518: $01 $47 $d7
    ld l, $01                                     ; $651b: $2e $01
    db $d3                                        ; $651d: $d3
    rrca                                          ; $651e: $0f
    ld a, a                                       ; $651f: $7f
    sub c                                         ; $6520: $91
    rlca                                          ; $6521: $07
    sub d                                         ; $6522: $92
    rrca                                          ; $6523: $0f
    sub [hl]                                      ; $6524: $96
    rlca                                          ; $6525: $07
    sub c                                         ; $6526: $91
    ldh a, [rTAC]                                 ; $6527: $f0 $07
    ld e, h                                       ; $6529: $5c
    add e                                         ; $652a: $83
    add c                                         ; $652b: $81
    dec c                                         ; $652c: $0d
    ld [bc], a                                    ; $652d: $02
    db $fd                                        ; $652e: $fd
    add sp, $10                                   ; $652f: $e8 $10
    jr nz, jr_0bb_6553                            ; $6531: $20 $20

    ld c, d                                       ; $6533: $4a
    or l                                          ; $6534: $b5
    sub c                                         ; $6535: $91
    dec c                                         ; $6536: $0d
    ld [c], a                                     ; $6537: $e2
    dec e                                         ; $6538: $1d
    nop                                           ; $6539: $00
    rst $38                                       ; $653a: $ff
    ld e, b                                       ; $653b: $58

jr_0bb_653c:
    jr nz, jr_0bb_64e5                            ; $653c: $20 $a7

    cp a                                          ; $653e: $bf
    push hl                                       ; $653f: $e5
    inc bc                                        ; $6540: $03
    ld b, h                                       ; $6541: $44
    cp e                                          ; $6542: $bb
    rst $38                                       ; $6543: $ff
    cp $00                                        ; $6544: $fe $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    cp h                                          ; $6548: $bc
    ld b, e                                       ; $6549: $43
    inc bc                                        ; $654a: $03
    rst $38                                       ; $654b: $ff
    sub h                                         ; $654c: $94
    ld l, e                                       ; $654d: $6b
    ld a, a                                       ; $654e: $7f
    add b                                         ; $654f: $80
    reti                                          ; $6550: $d9


    rlca                                          ; $6551: $07
    cp e                                          ; $6552: $bb

jr_0bb_6553:
    ld b, c                                       ; $6553: $41
    ldh [rLCDC], a                                ; $6554: $e0 $40
    ld h, b                                       ; $6556: $60
    ret nz                                        ; $6557: $c0

    ld l, b                                       ; $6558: $68
    nop                                           ; $6559: $00
    ret nz                                        ; $655a: $c0

    and d                                         ; $655b: $a2
    ret z                                         ; $655c: $c8

    ld l, d                                       ; $655d: $6a
    add b                                         ; $655e: $80
    ld [$0a01], a                                 ; $655f: $ea $01 $0a
    jr jr_0bb_6565                                ; $6562: $18 $01

    adc d                                         ; $6564: $8a

jr_0bb_6565:
    pop af                                        ; $6565: $f1
    rst $00                                       ; $6566: $c7
    ld bc, $07e4                                  ; $6567: $01 $e4 $07
    xor h                                         ; $656a: $ac
    ld d, e                                       ; $656b: $53
    di                                            ; $656c: $f3
    ld [bc], a                                    ; $656d: $02
    inc c                                         ; $656e: $0c
    ld a, a                                       ; $656f: $7f
    nop                                           ; $6570: $00
    ld c, h                                       ; $6571: $4c
    inc sp                                        ; $6572: $33
    ld [hl], a                                    ; $6573: $77
    sub e                                         ; $6574: $93
    dec b                                         ; $6575: $05
    add b                                         ; $6576: $80
    add d                                         ; $6577: $82
    ld l, $07                                     ; $6578: $2e $07
    jr nz, jr_0bb_653c                            ; $657a: $20 $c0

    sbc [hl]                                      ; $657c: $9e
    ld h, b                                       ; $657d: $60
    or b                                          ; $657e: $b0
    or h                                          ; $657f: $b4
    inc b                                         ; $6580: $04
    ei                                            ; $6581: $fb
    ld [$3804], sp                                ; $6582: $08 $04 $38
    nop                                           ; $6585: $00
    dec c                                         ; $6586: $0d
    or b                                          ; $6587: $b0
    nop                                           ; $6588: $00
    ld l, b                                       ; $6589: $68
    rla                                           ; $658a: $17
    ld a, l                                       ; $658b: $7d
    add b                                         ; $658c: $80
    sbc b                                         ; $658d: $98
    rlca                                          ; $658e: $07
    ld b, c                                       ; $658f: $41
    ld a, $77                                     ; $6590: $3e $77
    ld [$0010], sp                                ; $6592: $08 $10 $00
    ld [hl], b                                    ; $6595: $70
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    sbc a                                         ; $6598: $9f
    nop                                           ; $6599: $00
    pop hl                                        ; $659a: $e1
    ld d, $4f                                     ; $659b: $16 $4f
    nop                                           ; $659d: $00
    ld [hl], l                                    ; $659e: $75
    inc e                                         ; $659f: $1c
    ld [$30c2], sp                                ; $65a0: $08 $c2 $30
    and e                                         ; $65a3: $a3
    dec d                                         ; $65a4: $15
    ld e, d                                       ; $65a5: $5a
    rla                                           ; $65a6: $17
    ld [hl+], a                                   ; $65a7: $22
    ld a, [hl+]                                   ; $65a8: $2a
    inc a                                         ; $65a9: $3c
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    inc c                                         ; $65ac: $0c
    inc bc                                        ; $65ad: $03
    sub d                                         ; $65ae: $92
    ld [bc], a                                    ; $65af: $02
    inc a                                         ; $65b0: $3c
    inc bc                                        ; $65b1: $03
    ld b, [hl]                                    ; $65b2: $46
    nop                                           ; $65b3: $00
    db $10                                        ; $65b4: $10
    ld [$1b02], sp                                ; $65b5: $08 $02 $1b
    db $ed                                        ; $65b8: $ed
    rlca                                          ; $65b9: $07
    add e                                         ; $65ba: $83
    ld a, h                                       ; $65bb: $7c
    nop                                           ; $65bc: $00
    rst $28                                       ; $65bd: $ef
    nop                                           ; $65be: $00
    jp nz, $ffff                                  ; $65bf: $c2 $ff $ff

    ccf                                           ; $65c2: $3f
    rlca                                          ; $65c3: $07
    cp b                                          ; $65c4: $b8
    nop                                           ; $65c5: $00
    xor a                                         ; $65c6: $af
    db $10                                        ; $65c7: $10
    ld sp, $0fce                                  ; $65c8: $31 $ce $0f
    add $07                                       ; $65cb: $c6 $07
    inc c                                         ; $65cd: $0c
    di                                            ; $65ce: $f3
    ld [hl], e                                    ; $65cf: $73
    rst $38                                       ; $65d0: $ff
    ld b, b                                       ; $65d1: $40
    adc h                                         ; $65d2: $8c
    and d                                         ; $65d3: $a2
    ld bc, $1fe0                                  ; $65d4: $01 $e0 $1f
    rrca                                          ; $65d7: $0f
    ldh a, [$c0]                                  ; $65d8: $f0 $c0
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    jr jr_0bb_65e2                                ; $65dc: $18 $04

    ld hl, sp+$04                                 ; $65de: $f8 $04
    nop                                           ; $65e0: $00
    db $fc                                        ; $65e1: $fc

jr_0bb_65e2:
    ld a, [$04fc]                                 ; $65e2: $fa $fc $04
    inc d                                         ; $65e5: $14
    ld hl, sp-$7a                                 ; $65e6: $f8 $86
    ld a, b                                       ; $65e8: $78
    ld a, b                                       ; $65e9: $78
    and h                                         ; $65ea: $a4
    rlca                                          ; $65eb: $07
    xor a                                         ; $65ec: $af
    ld b, b                                       ; $65ed: $40
    ld bc, $6090                                  ; $65ee: $01 $90 $60
    xor a                                         ; $65f1: $af
    ld [hl], b                                    ; $65f2: $70
    rrca                                          ; $65f3: $0f
    ld a, a                                       ; $65f4: $7f
    ld h, b                                       ; $65f5: $60
    or b                                          ; $65f6: $b0
    inc de                                        ; $65f7: $13
    nop                                           ; $65f8: $00
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    or $01                                        ; $65fb: $f6 $01
    ld c, $01                                     ; $65fd: $0e $01
    db $fc                                        ; $65ff: $fc
    inc bc                                        ; $6600: $03
    inc c                                         ; $6601: $0c
    ld [bc], a                                    ; $6602: $02
    cp $f8                                        ; $6603: $fe $f8
    cp $7d                                        ; $6605: $fe $7d
    ld [bc], a                                    ; $6607: $02
    call nz, $0e07                                ; $6608: $c4 $07 $0e
    ld [hl], c                                    ; $660b: $71
    nop                                           ; $660c: $00
    ld [hl], b                                    ; $660d: $70
    rrca                                          ; $660e: $0f
    ld c, e                                       ; $660f: $4b
    ccf                                           ; $6610: $3f

Jump_0bb_6611:
    ld a, $ff                                     ; $6611: $3e $ff
    ret nz                                        ; $6613: $c0

    ccf                                           ; $6614: $3f
    inc h                                         ; $6615: $24
    db $ed                                        ; $6616: $ed
    ld [de], a                                    ; $6617: $12
    db $ed                                        ; $6618: $ed
    ld c, $63                                     ; $6619: $0e $63
    sbc h                                         ; $661b: $9c
    ld c, h                                       ; $661c: $4c
    nop                                           ; $661d: $00
    db $fc                                        ; $661e: $fc
    ld l, e                                       ; $661f: $6b
    ld [bc], a                                    ; $6620: $02
    db $fc                                        ; $6621: $fc
    adc c                                         ; $6622: $89
    halt                                          ; $6623: $76
    rst $18                                       ; $6624: $df
    jr nz, jr_0bb_665a                            ; $6625: $20 $33

    db $e4                                        ; $6627: $e4
    rlca                                          ; $6628: $07
    ld a, e                                       ; $6629: $7b
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    ld c, b                                       ; $662c: $48
    ccf                                           ; $662d: $3f
    ld b, a                                       ; $662e: $47
    ccf                                           ; $662f: $3f
    ld e, c                                       ; $6630: $59
    ccf                                           ; $6631: $3f
    jr nz, jr_0bb_663c                            ; $6632: $20 $08

    dec e                                         ; $6634: $1d
    ld [hl], c                                    ; $6635: $71
    inc b                                         ; $6636: $04
    ld e, $f4                                     ; $6637: $1e $f4
    rlca                                          ; $6639: $07
    add h                                         ; $663a: $84
    ld a, b                                       ; $663b: $78

jr_0bb_663c:
    ld l, b                                       ; $663c: $68
    nop                                           ; $663d: $00
    ldh a, [$c2]                                  ; $663e: $f0 $c2
    ret nz                                        ; $6640: $c0

    inc d                                         ; $6641: $14
    ldh [rNR41], a                                ; $6642: $e0 $20
    ld b, b                                       ; $6644: $40
    ld [hl], b                                    ; $6645: $70
    dec hl                                        ; $6646: $2b
    nop                                           ; $6647: $00
    ret c                                         ; $6648: $d8

    xor b                                         ; $6649: $a8
    rla                                           ; $664a: $17
    inc bc                                        ; $664b: $03
    and b                                         ; $664c: $a0
    ld [bc], a                                    ; $664d: $02
    ld bc, $271e                                  ; $664e: $01 $1e $27
    and d                                         ; $6651: $a2
    add hl, de                                    ; $6652: $19
    nop                                           ; $6653: $00
    ld b, c                                       ; $6654: $41
    nop                                           ; $6655: $00
    ld b, h                                       ; $6656: $44
    ld bc, $7885                                  ; $6657: $01 $85 $78

jr_0bb_665a:
    db $10                                        ; $665a: $10
    rlca                                          ; $665b: $07
    inc d                                         ; $665c: $14
    scf                                           ; $665d: $37
    nop                                           ; $665e: $00
    ld b, b                                       ; $665f: $40
    jp c, Jump_000_3802                           ; $6660: $da $02 $38

    ldh [rP1], a                                  ; $6663: $e0 $00
    pop af                                        ; $6665: $f1
    ld c, $00                                     ; $6666: $0e $00
    ld a, a                                       ; $6668: $7f
    nop                                           ; $6669: $00
    rla                                           ; $666a: $17
    ldh [$e0], a                                  ; $666b: $e0 $e0
    rra                                           ; $666d: $1f
    inc a                                         ; $666e: $3c
    ld b, d                                       ; $666f: $42
    ld b, b                                       ; $6670: $40
    ldh [rPCM12], a                               ; $6671: $e0 $76
    inc bc                                        ; $6673: $03
    ld b, $01                                     ; $6674: $06 $01
    rst $38                                       ; $6676: $ff
    nop                                           ; $6677: $00
    inc hl                                        ; $6678: $23
    inc e                                         ; $6679: $1c
    nop                                           ; $667a: $00
    sbc b                                         ; $667b: $98
    rlca                                          ; $667c: $07
    rst $38                                       ; $667d: $ff
    nop                                           ; $667e: $00
    ld h, c                                       ; $667f: $61
    sbc [hl]                                      ; $6680: $9e
    ld hl, sp+$00                                 ; $6681: $f8 $00
    inc b                                         ; $6683: $04
    pop bc                                        ; $6684: $c1
    nop                                           ; $6685: $00
    and $00                                       ; $6686: $e6 $00
    db $10                                        ; $6688: $10
    ld [$1807], sp                                ; $6689: $08 $07 $18
    rst $20                                       ; $668c: $e7
    nop                                           ; $668d: $00
    cp a                                          ; $668e: $bf
    ld b, b                                       ; $668f: $40
    add e                                         ; $6690: $83
    ld a, h                                       ; $6691: $7c
    rlca                                          ; $6692: $07
    nop                                           ; $6693: $00
    xor [hl]                                      ; $6694: $ae
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    ld [hl], c                                    ; $6697: $71
    nop                                           ; $6698: $00
    ld hl, sp+$07                                 ; $6699: $f8 $07
    ld a, $01                                     ; $669b: $3e $01
    push hl                                       ; $669d: $e5
    ld a, [de]                                    ; $669e: $1a
    nop                                           ; $669f: $00
    ld e, [hl]                                    ; $66a0: $5e
    and c                                         ; $66a1: $a1
    ld sp, $c0ce                                  ; $66a2: $31 $ce $c0
    nop                                           ; $66a5: $00
    scf                                           ; $66a6: $37
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    jp $3d00                                      ; $66a9: $c3 $00 $3d


    jp nz, $1fe0                                  ; $66ac: $c2 $e0 $1f

    di                                            ; $66af: $f3
    inc c                                         ; $66b0: $0c
    nop                                           ; $66b1: $00
    rlca                                          ; $66b2: $07

jr_0bb_66b3:
    ld hl, sp-$0d                                 ; $66b3: $f8 $f3
    inc c                                         ; $66b5: $0c
    ld [hl-], a                                   ; $66b6: $32
    nop                                           ; $66b7: $00
    ld e, $00                                     ; $66b8: $1e $00
    nop                                           ; $66ba: $00
    rst $28                                       ; $66bb: $ef
    nop                                           ; $66bc: $00
    db $e3                                        ; $66bd: $e3
    nop                                           ; $66be: $00
    ld e, [hl]                                    ; $66bf: $5e
    and b                                         ; $66c0: $a0
    inc a                                         ; $66c1: $3c
    jp $c715                                      ; $66c2: $c3 $15 $c7


    jr c, jr_0bb_6745                             ; $66c5: $38 $7e

jr_0bb_66c7:
    sub [hl]                                      ; $66c7: $96
    rlca                                          ; $66c8: $07
    call z, $0160                                 ; $66c9: $cc $60 $01
    and b                                         ; $66cc: $a0
    ld c, b                                       ; $66cd: $48
    inc bc                                        ; $66ce: $03
    inc e                                         ; $66cf: $1c
    ret z                                         ; $66d0: $c8

    jr nz, jr_0bb_66b3                            ; $66d1: $20 $e0

    xor l                                         ; $66d3: $ad
    rla                                           ; $66d4: $17
    ld [hl+], a                                   ; $66d5: $22
    inc c                                         ; $66d6: $0c
    or [hl]                                       ; $66d7: $b6
    ccf                                           ; $66d8: $3f
    inc d                                         ; $66d9: $14
    inc bc                                        ; $66da: $03
    jr jr_0bb_66f6                                ; $66db: $18 $19

    nop                                           ; $66dd: $00
    dec b                                         ; $66de: $05
    and [hl]                                      ; $66df: $a6
    db $10                                        ; $66e0: $10
    jp z, $831f                                   ; $66e1: $ca $1f $83

    ld c, h                                       ; $66e4: $4c
    db $f4                                        ; $66e5: $f4
    nop                                           ; $66e6: $00
    dec bc                                        ; $66e7: $0b
    ld bc, $d23f                                  ; $66e8: $01 $3f $d2
    add hl, bc                                    ; $66eb: $09
    inc l                                         ; $66ec: $2c
    inc bc                                        ; $66ed: $03
    ld h, b                                       ; $66ee: $60
    jr nz, jr_0bb_66fd                            ; $66ef: $20 $0c

    ld e, e                                       ; $66f1: $5b
    call nc, $8707                                ; $66f2: $d4 $07 $87
    ld [hl], b                                    ; $66f5: $70

jr_0bb_66f6:
    jr nc, jr_0bb_66c7                            ; $66f6: $30 $cf

    ld b, a                                       ; $66f8: $47
    add b                                         ; $66f9: $80
    ld a, [$3306]                                 ; $66fa: $fa $06 $33

jr_0bb_66fd:
    rst $38                                       ; $66fd: $ff
    add h                                         ; $66fe: $84
    ld a, e                                       ; $66ff: $7b
    rlca                                          ; $6700: $07

jr_0bb_6701:
    db $10                                        ; $6701: $10
    or b                                          ; $6702: $b0
    ld [$1001], sp                                ; $6703: $08 $01 $10
    ldh [$f8], a                                  ; $6706: $e0 $f8
    and [hl]                                      ; $6708: $a6
    inc bc                                        ; $6709: $03
    ld [hl], c                                    ; $670a: $71
    adc [hl]                                      ; $670b: $8e
    ld hl, sp+$06                                 ; $670c: $f8 $06
    rst $38                                       ; $670e: $ff
    ccf                                           ; $670f: $3f
    rst $38                                       ; $6710: $ff
    pop af                                        ; $6711: $f1
    ld c, $e0                                     ; $6712: $0e $e0
    dec c                                         ; $6714: $0d
    and $14                                       ; $6715: $e6 $14
    add b                                         ; $6717: $80
    ld de, $c03f                                  ; $6718: $11 $3f $c0
    ldh [$a8], a                                  ; $671b: $e0 $a8
    rlca                                          ; $671d: $07
    ld c, $ff                                     ; $671e: $0e $ff
    inc bc                                        ; $6720: $03
    cp [hl]                                       ; $6721: $be
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    add hl, bc                                    ; $6724: $09
    ld b, $16                                     ; $6725: $06 $16
    rrca                                          ; $6727: $0f
    rst $08                                       ; $6728: $cf
    ccf                                           ; $6729: $3f
    jr nc, @+$01                                  ; $672a: $30 $ff

    nop                                           ; $672c: $00
    add $f1                                       ; $672d: $c6 $f1
    and c                                         ; $672f: $a1
    ld a, h                                       ; $6730: $7c
    db $fc                                        ; $6731: $fc
    nop                                           ; $6732: $00
    inc e                                         ; $6733: $1c
    ldh [rP1], a                                  ; $6734: $e0 $00
    ld b, [hl]                                    ; $6736: $46
    cp b                                          ; $6737: $b8
    ld a, [c]                                     ; $6738: $f2
    inc c                                         ; $6739: $0c
    cp $e0                                        ; $673a: $fe $e0
    inc c                                         ; $673c: $0c
    ldh a, [rDIV]                                 ; $673d: $f0 $04
    jr c, jr_0bb_6701                             ; $673f: $38 $c0

    ldh [rP1], a                                  ; $6741: $e0 $00
    ld a, a                                       ; $6743: $7f
    or b                                          ; $6744: $b0

jr_0bb_6745:
    ld b, $80                                     ; $6745: $06 $80
    ld a, a                                       ; $6747: $7f
    nop                                           ; $6748: $00
    ld [hl], $7f                                  ; $6749: $36 $7f
    ld b, e                                       ; $674b: $43
    ccf                                           ; $674c: $3f
    ret c                                         ; $674d: $d8

    rlca                                          ; $674e: $07
    inc h                                         ; $674f: $24
    dec de                                        ; $6750: $1b
    ld bc, $03ac                                  ; $6751: $01 $ac $03
    swap h                                        ; $6754: $cb $34
    nop                                           ; $6756: $00
    rst $38                                       ; $6757: $ff
    sbc e                                         ; $6758: $9b
    ld [c], a                                     ; $6759: $e2
    rlca                                          ; $675a: $07
    nop                                           ; $675b: $00
    adc l                                         ; $675c: $8d
    cp $00                                        ; $675d: $fe $00
    rst $18                                       ; $675f: $df
    cp b                                          ; $6760: $b8
    rlca                                          ; $6761: $07
    dec b                                         ; $6762: $05
    or b                                          ; $6763: $b0
    nop                                           ; $6764: $00
    adc l                                         ; $6765: $8d
    ld h, [hl]                                    ; $6766: $66
    ld b, $ff                                     ; $6767: $06 $ff
    ret nz                                        ; $6769: $c0

    rst $38                                       ; $676a: $ff
    sbc [hl]                                      ; $676b: $9e
    rst $38                                       ; $676c: $ff
    nop                                           ; $676d: $00
    pop hl                                        ; $676e: $e1
    ld a, d                                       ; $676f: $7a
    ld [hl], $c9                                  ; $6770: $36 $c9
    ld b, c                                       ; $6772: $41
    ld a, $a6                                     ; $6773: $3e $a6
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    ld de, $cae0                                  ; $6777: $11 $e0 $ca
    ldh a, [rNR32]                                ; $677a: $f0 $1c
    ret nz                                        ; $677c: $c0

    ld [de], a                                    ; $677d: $12
    ld b, b                                       ; $677e: $40
    ld d, [hl]                                    ; $677f: $56
    ret nz                                        ; $6780: $c0

    xor d                                         ; $6781: $aa
    rlca                                          ; $6782: $07
    add b                                         ; $6783: $80
    adc h                                         ; $6784: $8c
    ld b, $88                                     ; $6785: $06 $88
    db $fc                                        ; $6787: $fc
    ld b, c                                       ; $6788: $41
    dec hl                                        ; $6789: $2b
    rrca                                          ; $678a: $0f
    ld b, $c3                                     ; $678b: $06 $c3
    db $fc                                        ; $678d: $fc
    ld b, e                                       ; $678e: $43
    and [hl]                                      ; $678f: $a6
    dec d                                         ; $6790: $15
    ld [bc], a                                    ; $6791: $02
    add hl, sp                                    ; $6792: $39
    nop                                           ; $6793: $00
    ld c, l                                       ; $6794: $4d
    or h                                          ; $6795: $b4
    dec d                                         ; $6796: $15
    ld [de], a                                    ; $6797: $12
    inc e                                         ; $6798: $1c
    nop                                           ; $6799: $00
    ld c, b                                       ; $679a: $48
    nop                                           ; $679b: $00
    pop hl                                        ; $679c: $e1
    nop                                           ; $679d: $00
    ld l, h                                       ; $679e: $6c
    inc bc                                        ; $679f: $03
    ld b, e                                       ; $67a0: $43
    nop                                           ; $67a1: $00
    ld h, b                                       ; $67a2: $60
    inc c                                         ; $67a3: $0c
    xor $07                                       ; $67a4: $ee $07
    jp nz, $e00d                                  ; $67a6: $c2 $0d $e0

    rra                                           ; $67a9: $1f
    adc h                                         ; $67aa: $8c
    inc bc                                        ; $67ab: $03
    add e                                         ; $67ac: $83
    nop                                           ; $67ad: $00
    ld a, h                                       ; $67ae: $7c
    ld b, h                                       ; $67af: $44
    nop                                           ; $67b0: $00
    dec e                                         ; $67b1: $1d
    nop                                           ; $67b2: $00
    add c                                         ; $67b3: $81
    nop                                           ; $67b4: $00
    ld [de], a                                    ; $67b5: $12
    add b                                         ; $67b6: $80
    ld e, b                                       ; $67b7: $58
    ld bc, $c738                                  ; $67b8: $01 $38 $c7
    nop                                           ; $67bb: $00
    rst $38                                       ; $67bc: $ff
    db $fd                                        ; $67bd: $fd
    ld [bc], a                                    ; $67be: $02
    inc b                                         ; $67bf: $04
    ld [$0100], sp                                ; $67c0: $08 $00 $01
    cp $64                                        ; $67c3: $fe $64
    ld h, [hl]                                    ; $67c5: $66
    ld bc, $0063                                  ; $67c6: $01 $63 $00
    sbc d                                         ; $67c9: $9a
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    ld [bc], a                                    ; $67cc: $02
    ldh [$98], a                                  ; $67cd: $e0 $98
    nop                                           ; $67cf: $00
    ld h, d                                       ; $67d0: $62
    nop                                           ; $67d1: $00
    jr z, @-$5e                                   ; $67d2: $28 $a0

    ld a, b                                       ; $67d4: $78
    ld [bc], a                                    ; $67d5: $02
    ld [hl+], a                                   ; $67d6: $22
    or b                                          ; $67d7: $b0
    dec b                                         ; $67d8: $05
    ld b, c                                       ; $67d9: $41
    ld l, $0a                                     ; $67da: $2e $0a
    ld bc, $a83a                                  ; $67dc: $01 $3a $a8
    adc [hl]                                      ; $67df: $8e
    rlca                                          ; $67e0: $07
    ld sp, $06c4                                  ; $67e1: $31 $c4 $06
    inc c                                         ; $67e4: $0c
    sbc h                                         ; $67e5: $9c
    rlca                                          ; $67e6: $07
    ret c                                         ; $67e7: $d8

    daa                                           ; $67e8: $27
    and [hl]                                      ; $67e9: $a6
    xor b                                         ; $67ea: $a8
    ld h, $04                                     ; $67eb: $26 $04
    ld h, $d6                                     ; $67ed: $26 $d6
    ld b, $10                                     ; $67ef: $06 $10
    xor d                                         ; $67f1: $aa
    rla                                           ; $67f2: $17
    dec a                                         ; $67f3: $3d
    ret nz                                        ; $67f4: $c0

    xor h                                         ; $67f5: $ac
    cp d                                          ; $67f6: $ba
    ld d, b                                       ; $67f7: $50
    ld d, c                                       ; $67f8: $51
    jr nc, jr_0bb_6859                            ; $67f9: $30 $5e

    ld d, c                                       ; $67fb: $51
    inc a                                         ; $67fc: $3c
    dec c                                         ; $67fd: $0d
    db $e3                                        ; $67fe: $e3
    ld [hl], $fe                                  ; $67ff: $36 $fe
    or a                                          ; $6801: $b7
    dec b                                         ; $6802: $05
    ld hl, sp-$68                                 ; $6803: $f8 $98
    db $10                                        ; $6805: $10
    ld b, b                                       ; $6806: $40
    ld a, a                                       ; $6807: $7f
    cp a                                          ; $6808: $bf
    ld [bc], a                                    ; $6809: $02
    nop                                           ; $680a: $00
    jr nz, @+$42                                  ; $680b: $20 $40

    ld hl, sp-$01                                 ; $680d: $f8 $ff
    ldh a, [$2b]                                  ; $680f: $f0 $2b
    ld hl, sp-$19                                 ; $6811: $f8 $e7
    jr nc, jr_0bb_6855                            ; $6813: $30 $40

    ccf                                           ; $6815: $3f
    ld b, a                                       ; $6816: $47
    ld b, $0f                                     ; $6817: $06 $0f
    ld b, b                                       ; $6819: $40
    ld b, b                                       ; $681a: $40
    ld a, $00                                     ; $681b: $3e $00
    scf                                           ; $681d: $37
    db $fc                                        ; $681e: $fc
    di                                            ; $681f: $f3
    ld d, b                                       ; $6820: $50
    ld b, b                                       ; $6821: $40
    ld e, $00                                     ; $6822: $1e $00
    rst $30                                       ; $6824: $f7
    jr nz, jr_0bb_686f                            ; $6825: $20 $48

    ld h, d                                       ; $6827: $62
    jr jr_0bb_686a                                ; $6828: $18 $40

    ld b, b                                       ; $682a: $40
    ld l, d                                       ; $682b: $6a
    rst $18                                       ; $682c: $df
    ld [bc], a                                    ; $682d: $02
    nop                                           ; $682e: $00
    add b                                         ; $682f: $80
    ld b, b                                       ; $6830: $40
    ldh a, [$60]                                  ; $6831: $f0 $60
    nop                                           ; $6833: $00
    rst $30                                       ; $6834: $f7
    ld b, b                                       ; $6835: $40
    ld c, b                                       ; $6836: $48
    rst $08                                       ; $6837: $cf
    add hl, sp                                    ; $6838: $39
    ccf                                           ; $6839: $3f
    rra                                           ; $683a: $1f
    pop af                                        ; $683b: $f1
    rrca                                          ; $683c: $0f
    ld b, b                                       ; $683d: $40
    ld c, b                                       ; $683e: $48
    and b                                         ; $683f: $a0
    ld c, b                                       ; $6840: $48
    adc a                                         ; $6841: $8f
    rst $00                                       ; $6842: $c7
    jr nz, jr_0bb_689d                            ; $6843: $20 $58

    ld [$fb07], sp                                ; $6845: $08 $07 $fb
    rlca                                          ; $6848: $07
    dec de                                        ; $6849: $1b
    and b                                         ; $684a: $a0
    ld c, b                                       ; $684b: $48
    ld hl, sp-$04                                 ; $684c: $f8 $fc
    rst $20                                       ; $684e: $e7
    jr nz, @-$0b                                  ; $684f: $20 $f3

    rst $08                                       ; $6851: $cf
    or b                                          ; $6852: $b0
    ld c, b                                       ; $6853: $48
    ld a, a                                       ; $6854: $7f

jr_0bb_6855:
    sbc a                                         ; $6855: $9f
    rst $38                                       ; $6856: $ff
    rst $08                                       ; $6857: $cf
    rst $38                                       ; $6858: $ff

jr_0bb_6859:
    ld e, $f4                                     ; $6859: $1e $f4
    ei                                            ; $685b: $fb
    db $fc                                        ; $685c: $fc
    sbc a                                         ; $685d: $9f
    ld b, $04                                     ; $685e: $06 $04
    jr nc, @-$1a                                  ; $6860: $30 $e4

    ld [$4804], sp                                ; $6862: $08 $04 $48
    di                                            ; $6865: $f3
    add hl, bc                                    ; $6866: $09
    rst $28                                       ; $6867: $ef
    rst $30                                       ; $6868: $f7
    rst $28                                       ; $6869: $ef

jr_0bb_686a:
    rst $30                                       ; $686a: $f7
    ld [de], a                                    ; $686b: $12
    ld b, c                                       ; $686c: $41
    rst $30                                       ; $686d: $f7
    adc a                                         ; $686e: $8f

jr_0bb_686f:
    ld [bc], a                                    ; $686f: $02
    jr jr_0bb_68b2                                ; $6870: $18 $40

    rst $20                                       ; $6872: $e7
    adc [hl]                                      ; $6873: $8e
    nop                                           ; $6874: $00
    sbc a                                         ; $6875: $9f
    ld a, a                                       ; $6876: $7f
    ccf                                           ; $6877: $3f
    rst $38                                       ; $6878: $ff
    ld sp, hl                                     ; $6879: $f9
    rst $20                                       ; $687a: $e7
    ld a, c                                       ; $687b: $79
    di                                            ; $687c: $f3
    xor $20                                       ; $687d: $ee $20
    xor $07                                       ; $687f: $ee $07
    db $dd                                        ; $6881: $dd
    rlca                                          ; $6882: $07
    ld a, [de]                                    ; $6883: $1a
    nop                                           ; $6884: $00
    sbc a                                         ; $6885: $9f
    rst $08                                       ; $6886: $cf
    ld a, [bc]                                    ; $6887: $0a
    ld de, $7f00                                  ; $6888: $11 $00 $7f
    add a                                         ; $688b: $87
    ei                                            ; $688c: $fb
    rst $00                                       ; $688d: $c7
    ei                                            ; $688e: $fb
    rst $00                                       ; $688f: $c7
    rst $38                                       ; $6890: $ff
    ld hl, sp+$00                                 ; $6891: $f8 $00
    db $fd                                        ; $6893: $fd
    ld a, [$f6fd]                                 ; $6894: $fa $fd $f6
    ei                                            ; $6897: $fb
    xor $f7                                       ; $6898: $ee $f7
    xor $03                                       ; $689a: $ee $03
    rst $30                                       ; $689c: $f7

jr_0bb_689d:
    sbc $ef                                       ; $689d: $de $ef
    cp [hl]                                       ; $689f: $be
    rst $38                                       ; $68a0: $ff
    add b                                         ; $68a1: $80
    db $e4                                        ; $68a2: $e4
    ld [$3804], sp                                ; $68a3: $08 $04 $38
    dec c                                         ; $68a6: $0d
    rst $38                                       ; $68a7: $ff
    rrca                                          ; $68a8: $0f
    ei                                            ; $68a9: $fb
    rst $30                                       ; $68aa: $f7
    ld [bc], a                                    ; $68ab: $02
    ld [$18ec], sp                                ; $68ac: $08 $ec $18
    ei                                            ; $68af: $fb
    db $dd                                        ; $68b0: $dd
    ccf                                           ; $68b1: $3f

jr_0bb_68b2:
    ld [bc], a                                    ; $68b2: $02
    ld a, a                                       ; $68b3: $7f
    rst $38                                       ; $68b4: $ff
    rra                                           ; $68b5: $1f
    rst $28                                       ; $68b6: $ef
    rra                                           ; $68b7: $1f
    rst $38                                       ; $68b8: $ff
    ld l, h                                       ; $68b9: $6c
    nop                                           ; $68ba: $00
    cp $00                                        ; $68bb: $fe $00
    pop af                                        ; $68bd: $f1
    db $fc                                        ; $68be: $fc
    di                                            ; $68bf: $f3
    db $fd                                        ; $68c0: $fd
    db $e3                                        ; $68c1: $e3
    ei                                            ; $68c2: $fb
    db $e4                                        ; $68c3: $e4
    ld a, [$4cfe]                                 ; $68c4: $fa $fe $4c
    nop                                           ; $68c7: $00
    ld d, b                                       ; $68c8: $50
    ld [$06b4], sp                                ; $68c9: $08 $b4 $06
    ld l, h                                       ; $68cc: $6c
    add hl, hl                                    ; $68cd: $29
    adc d                                         ; $68ce: $8a
    jr jr_0bb_686f                                ; $68cf: $18 $9e

    jr c, @-$33                                   ; $68d1: $38 $cb

    ld d, $f3                                     ; $68d3: $16 $f3
    ld [hl+], a                                   ; $68d5: $22
    rst $08                                       ; $68d6: $cf
    rst $30                                       ; $68d7: $f7
    ld [bc], a                                    ; $68d8: $02
    nop                                           ; $68d9: $00
    rst $20                                       ; $68da: $e7
    sbc a                                         ; $68db: $9f
    rst $28                                       ; $68dc: $ef
    ld [bc], a                                    ; $68dd: $02
    nop                                           ; $68de: $00
    rst $08                                       ; $68df: $cf
    jp $0152                                      ; $68e0: $c3 $52 $01


    ld c, $08                                     ; $68e3: $0e $08
    rst $38                                       ; $68e5: $ff
    jp $e0ff                                      ; $68e6: $c3 $ff $e0


    push de                                       ; $68e9: $d5
    rlca                                          ; $68ea: $07
    nop                                           ; $68eb: $00
    ld de, $1ee9                                  ; $68ec: $11 $e9 $1e
    jr jr_0bb_690b                                ; $68ef: $18 $1a

    ld [$1190], sp                                ; $68f1: $08 $90 $11
    adc a                                         ; $68f4: $8f
    db $fc                                        ; $68f5: $fc
    jr nc, @-$0e                                  ; $68f6: $30 $f0

    ld hl, sp+$0b                                 ; $68f8: $f8 $0b
    rla                                           ; $68fa: $17
    adc e                                         ; $68fb: $8b
    nop                                           ; $68fc: $00
    add hl, hl                                    ; $68fd: $29

jr_0bb_68fe:
    rst $38                                       ; $68fe: $ff
    rra                                           ; $68ff: $1f
    rrca                                          ; $6900: $0f
    dec b                                         ; $6901: $05
    ld a, [de]                                    ; $6902: $1a
    ld sp, hl                                     ; $6903: $f9
    add d                                         ; $6904: $82
    ld [$0040], sp                                ; $6905: $08 $40 $00
    pop bc                                        ; $6908: $c1
    jr nc, jr_0bb_690e                            ; $6909: $30 $03

jr_0bb_690b:
    sbc c                                         ; $690b: $99
    jr @+$01                                      ; $690c: $18 $ff

jr_0bb_690e:
    rst $30                                       ; $690e: $f7
    ei                                            ; $690f: $fb
    rst $20                                       ; $6910: $e7
    di                                            ; $6911: $f3
    jp z, Jump_0bb_5401                           ; $6912: $ca $01 $54

    rlca                                          ; $6915: $07
    dec sp                                        ; $6916: $3b
    ccf                                           ; $6917: $3f
    rst $00                                       ; $6918: $c7
    ld h, d                                       ; $6919: $62
    ld [$4bf0], sp                                ; $691a: $08 $f0 $4b
    rla                                           ; $691d: $17
    ei                                            ; $691e: $fb
    rst $00                                       ; $691f: $c7
    pop af                                        ; $6920: $f1
    add d                                         ; $6921: $82
    nop                                           ; $6922: $00
    inc b                                         ; $6923: $04
    add hl, bc                                    ; $6924: $09
    inc e                                         ; $6925: $1c
    ld bc, $175c                                  ; $6926: $01 $5c $17
    add b                                         ; $6929: $80
    pop bc                                        ; $692a: $c1
    cp $8f                                        ; $692b: $fe $8f
    inc bc                                        ; $692d: $03
    adc $04                                       ; $692e: $ce $04
    ld [$1920], sp                                ; $6930: $08 $20 $19
    rrca                                          ; $6933: $0f
    rst $00                                       ; $6934: $c7
    ld [bc], a                                    ; $6935: $02
    ld hl, $01cc                                  ; $6936: $21 $cc $01
    ld a, l                                       ; $6939: $7d
    cpl                                           ; $693a: $2f
    rst $08                                       ; $693b: $cf
    ld hl, sp+$42                                 ; $693c: $f8 $42

jr_0bb_693e:
    nop                                           ; $693e: $00
    ld b, b                                       ; $693f: $40
    jr nz, jr_0bb_699e                            ; $6940: $20 $5c

    ld c, c                                       ; $6942: $49
    ld d, b                                       ; $6943: $50
    jr jr_0bb_698c                                ; $6944: $18 $46

    ld bc, $ffe7                                  ; $6946: $01 $e7 $ff
    di                                            ; $6949: $f3
    jp $024c                                      ; $694a: $c3 $4c $02


    jr nz, jr_0bb_6987                            ; $694d: $20 $38

    sbc a                                         ; $694f: $9f
    rst $28                                       ; $6950: $ef
    rra                                           ; $6951: $1f
    adc a                                         ; $6952: $8f
    ld h, b                                       ; $6953: $60
    jr z, jr_0bb_68fe                             ; $6954: $28 $a8

    ld a, [bc]                                    ; $6956: $0a
    rst $18                                       ; $6957: $df
    ld h, d                                       ; $6958: $62
    ld [$2180], sp                                ; $6959: $08 $80 $21
    rst $18                                       ; $695c: $df
    sub [hl]                                      ; $695d: $96
    ld bc, $19c4                                  ; $695e: $01 $c4 $19
    add b                                         ; $6961: $80
    jr jr_0bb_6972                                ; $6962: $18 $0e

    add hl, bc                                    ; $6964: $09
    ld [bc], a                                    ; $6965: $02
    ld bc, $e76d                                  ; $6966: $01 $6d $e7
    ldh [$28], a                                  ; $6969: $e0 $28
    ld e, $11                                     ; $696b: $1e $11
    rst $18                                       ; $696d: $df
    inc e                                         ; $696e: $1c
    ld bc, $20a0                                  ; $696f: $01 $a0 $20

jr_0bb_6972:
    ld a, a                                       ; $6972: $7f
    ld [bc], a                                    ; $6973: $02
    ld d, b                                       ; $6974: $50
    ld [c], a                                     ; $6975: $e2
    scf                                           ; $6976: $37
    ld c, $4f                                     ; $6977: $0e $4f
    ld d, c                                       ; $6979: $51
    db $10                                        ; $697a: $10
    ld e, e                                       ; $697b: $5b
    ld hl, sp-$02                                 ; $697c: $f8 $fe
    ld sp, hl                                     ; $697e: $f9
    ret nc                                        ; $697f: $d0

    ld c, d                                       ; $6980: $4a
    ccf                                           ; $6981: $3f
    scf                                           ; $6982: $37
    rst $08                                       ; $6983: $cf
    ld a, a                                       ; $6984: $7f
    nop                                           ; $6985: $00
    inc de                                        ; $6986: $13

jr_0bb_6987:
    ld b, h                                       ; $6987: $44
    ld b, b                                       ; $6988: $40
    cp $40                                        ; $6989: $fe $40
    ld b, e                                       ; $698b: $43

jr_0bb_698c:
    and [hl]                                      ; $698c: $a6
    nop                                           ; $698d: $00
    call nz, $8201                                ; $698e: $c4 $01 $82
    ld d, b                                       ; $6991: $50
    dec sp                                        ; $6992: $3b
    jp $99e7                                      ; $6993: $c3 $e7 $99


    rst $08                                       ; $6996: $cf
    inc a                                         ; $6997: $3c
    ld h, b                                       ; $6998: $60
    ld b, e                                       ; $6999: $43
    rst $20                                       ; $699a: $e7
    or d                                          ; $699b: $b2
    jr nz, jr_0bb_69a0                            ; $699c: $20 $02

jr_0bb_699e:
    add a                                         ; $699e: $87
    ld [hl], b                                    ; $699f: $70

jr_0bb_69a0:
    ld b, e                                       ; $69a0: $43
    add sp, $01                                   ; $69a1: $e8 $01
    db $fd                                        ; $69a3: $fd
    jp Jump_0bb_4380                              ; $69a4: $c3 $80 $43


    pop bc                                        ; $69a7: $c1
    rrca                                          ; $69a8: $0f
    rst $38                                       ; $69a9: $ff
    add b                                         ; $69aa: $80
    rst $00                                       ; $69ab: $c7
    jr c, jr_0bb_693e                             ; $69ac: $38 $90

    ld b, e                                       ; $69ae: $43
    ld e, b                                       ; $69af: $58
    ld bc, $5340                                  ; $69b0: $01 $40 $53
    sub h                                         ; $69b3: $94
    ld bc, $e731                                  ; $69b4: $01 $31 $e7
    sbc b                                         ; $69b7: $98
    or b                                          ; $69b8: $b0
    dec bc                                        ; $69b9: $0b
    ld h, c                                       ; $69ba: $61
    add hl, hl                                    ; $69bb: $29
    cp $7f                                        ; $69bc: $fe $7f
    cp [hl]                                       ; $69be: $be
    and b                                         ; $69bf: $a0
    ld c, e                                       ; $69c0: $4b
    sub b                                         ; $69c1: $90
    cp d                                          ; $69c2: $ba
    ld bc, $e1fe                                  ; $69c3: $01 $fe $e1
    ret nc                                        ; $69c6: $d0

    ld b, e                                       ; $69c7: $43
    add b                                         ; $69c8: $80
    cp $81                                        ; $69c9: $fe $81
    ret nz                                        ; $69cb: $c0

    ld e, b                                       ; $69cc: $58
    cp a                                          ; $69cd: $bf
    jr nc, jr_0bb_6a18                            ; $69ce: $30 $48

    ld a, [hl]                                    ; $69d0: $7e
    sub l                                         ; $69d1: $95
    add hl, bc                                    ; $69d2: $09
    or b                                          ; $69d3: $b0
    ld b, e                                       ; $69d4: $43
    cp $f1                                        ; $69d5: $fe $f1
    ld hl, sp+$4b                                 ; $69d7: $f8 $4b
    rst $00                                       ; $69d9: $c7
    ld d, b                                       ; $69da: $50
    ld b, b                                       ; $69db: $40

jr_0bb_69dc:
    ld a, a                                       ; $69dc: $7f
    ld a, $b9                                     ; $69dd: $3e $b9
    add hl, bc                                    ; $69df: $09
    pop af                                        ; $69e0: $f1
    ld [bc], a                                    ; $69e1: $02
    jr z, jr_0bb_69f0                             ; $69e2: $28 $0c

    inc b                                         ; $69e4: $04
    or b                                          ; $69e5: $b0
    db $e4                                        ; $69e6: $e4
    ld a, [bc]                                    ; $69e7: $0a
    db $e3                                        ; $69e8: $e3
    and [hl]                                      ; $69e9: $a6
    nop                                           ; $69ea: $00
    inc b                                         ; $69eb: $04
    jr z, jr_0bb_6a11                             ; $69ec: $28 $23

    add hl, sp                                    ; $69ee: $39
    rst $00                                       ; $69ef: $c7

jr_0bb_69f0:
    ld a, a                                       ; $69f0: $7f
    inc [hl]                                      ; $69f1: $34
    db $fd                                        ; $69f2: $fd
    ld a, [hl]                                    ; $69f3: $7e
    ld b, h                                       ; $69f4: $44
    ld d, c                                       ; $69f5: $51
    db $f4                                        ; $69f6: $f4
    nop                                           ; $69f7: $00
    ld e, $02                                     ; $69f8: $1e $02
    ld c, b                                       ; $69fa: $48
    rst $18                                       ; $69fb: $df
    inc a                                         ; $69fc: $3c
    pop af                                        ; $69fd: $f1
    ld [bc], a                                    ; $69fe: $02
    ld e, b                                       ; $69ff: $58
    ld [hl], h                                    ; $6a00: $74
    nop                                           ; $6a01: $00

jr_0bb_6a02:
    and [hl]                                      ; $6a02: $a6
    nop                                           ; $6a03: $00
    ld [bc], a                                    ; $6a04: $02
    jr c, jr_0bb_6a02                             ; $6a05: $38 $fb

    ld b, a                                       ; $6a07: $47
    cp e                                          ; $6a08: $bb
    jp c, $8b22                                   ; $6a09: $da $22 $8b

    ldh [rNR30], a                                ; $6a0c: $e0 $1a
    db $fd                                        ; $6a0e: $fd
    and e                                         ; $6a0f: $a3
    db $dd                                        ; $6a10: $dd

jr_0bb_6a11:
    ld h, d                                       ; $6a11: $62
    ld c, b                                       ; $6a12: $48
    db $e3                                        ; $6a13: $e3
    ld b, h                                       ; $6a14: $44
    add hl, bc                                    ; $6a15: $09
    inc b                                         ; $6a16: $04
    ld c, b                                       ; $6a17: $48

jr_0bb_6a18:
    ld b, $9f                                     ; $6a18: $06 $9f
    ld a, h                                       ; $6a1a: $7c
    cp a                                          ; $6a1b: $bf
    ld a, h                                       ; $6a1c: $7c
    cp a                                          ; $6a1d: $bf
    or d                                          ; $6a1e: $b2
    dec bc                                        ; $6a1f: $0b
    adc h                                         ; $6a20: $8c
    ld bc, $15fc                                  ; $6a21: $01 $fc $15
    di                                            ; $6a24: $f3
    ld sp, hl                                     ; $6a25: $f9
    rst $20                                       ; $6a26: $e7
    ld c, h                                       ; $6a27: $4c
    jr z, jr_0bb_6a68                             ; $6a28: $28 $3e

    adc $10                                       ; $6a2a: $ce $10
    cp $82                                        ; $6a2c: $fe $82
    ld bc, $d28c                                  ; $6a2e: $01 $8c $d2
    ld e, c                                       ; $6a31: $59
    rst $30                                       ; $6a32: $f7
    adc a                                         ; $6a33: $8f
    ld [hl], a                                    ; $6a34: $77
    or d                                          ; $6a35: $b2
    inc hl                                        ; $6a36: $23
    cp d                                          ; $6a37: $ba
    dec de                                        ; $6a38: $1b
    rst $08                                       ; $6a39: $cf
    inc a                                         ; $6a3a: $3c
    jr nz, jr_0bb_69dc                            ; $6a3b: $20 $9f

    db $fc                                        ; $6a3d: $fc
    add $01                                       ; $6a3e: $c6 $01
    ld hl, sp-$01                                 ; $6a40: $f8 $ff
    ldh [$f3], a                                  ; $6a42: $e0 $f3
    db $fc                                        ; $6a44: $fc
    jp Jump_000_0a98                              ; $6a45: $c3 $98 $0a


    ld a, [hl-]                                   ; $6a48: $3a
    jr nc, @+$81                                  ; $6a49: $30 $7f

    cp $3f                                        ; $6a4b: $fe $3f
    sbc $02                                       ; $6a4d: $de $02
    nop                                           ; $6a4f: $00
    ld [hl], b                                    ; $6a50: $70
    ld b, b                                       ; $6a51: $40
    nop                                           ; $6a52: $00
    ld e, $ef                                     ; $6a53: $1e $ef
    dec e                                         ; $6a55: $1d
    rst $28                                       ; $6a56: $ef
    inc e                                         ; $6a57: $1c
    cp $c1                                        ; $6a58: $fe $c1
    xor $00                                       ; $6a5a: $ee $00
    pop de                                        ; $6a5c: $d1
    xor $b1                                       ; $6a5d: $ee $b1
    sbc $71                                       ; $6a5f: $de $71
    cp [hl]                                       ; $6a61: $be
    ld [hl], c                                    ; $6a62: $71
    cp [hl]                                       ; $6a63: $be
    ld bc, $7ef1                                  ; $6a64: $01 $f1 $7e
    pop af                                        ; $6a67: $f1

jr_0bb_6a68:
    rst $38                                       ; $6a68: $ff
    nop                                           ; $6a69: $00
    rst $18                                       ; $6a6a: $df
    cp a                                          ; $6a6b: $bf
    ld [bc], a                                    ; $6a6c: $02
    ld [$ff27], sp                                ; $6a6d: $08 $27 $ff
    add e                                         ; $6a70: $83
    sbc h                                         ; $6a71: $9c
    ld bc, $dfb8                                  ; $6a72: $01 $b8 $df
    ld a, [hl-]                                   ; $6a75: $3a
    inc b                                         ; $6a76: $04
    ld a, h                                       ; $6a77: $7c
    ld sp, $094e                                  ; $6a78: $31 $4e $09
    add sp, -$80                                  ; $6a7b: $e8 $80
    ld bc, $403e                                  ; $6a7d: $01 $3e $40
    ld [$f311], sp                                ; $6a80: $08 $11 $f3
    xor [hl]                                      ; $6a83: $ae
    ld [de], a                                    ; $6a84: $12
    rst $18                                       ; $6a85: $df
    ld hl, $7fd7                                  ; $6a86: $21 $d7 $7f
    jr c, jr_0bb_6a95                             ; $6a89: $38 $0a

    add hl, de                                    ; $6a8b: $19
    jr nc, jr_0bb_6ac6                            ; $6a8c: $30 $38

    ld [$ca19], sp                                ; $6a8e: $08 $19 $ca
    inc a                                         ; $6a91: $3c
    ldh [rNR30], a                                ; $6a92: $e0 $1a
    ld b, b                                       ; $6a94: $40

jr_0bb_6a95:
    inc bc                                        ; $6a95: $03
    ld e, h                                       ; $6a96: $5c
    inc d                                         ; $6a97: $14
    ld l, [hl]                                    ; $6a98: $6e
    rra                                           ; $6a99: $1f
    ld l, d                                       ; $6a9a: $6a
    dec bc                                        ; $6a9b: $0b
    and b                                         ; $6a9c: $a0
    ld c, d                                       ; $6a9d: $4a
    db $fc                                        ; $6a9e: $fc
    ld l, b                                       ; $6a9f: $68

jr_0bb_6aa0:
    add hl, de                                    ; $6aa0: $19
    ld e, [hl]                                    ; $6aa1: $5e
    ld bc, $1112                                  ; $6aa2: $01 $12 $11
    rst $38                                       ; $6aa5: $ff
    jr nc, jr_0bb_6aaf                            ; $6aa6: $30 $07

    inc bc                                        ; $6aa8: $03
    ldh a, [rNR30]                                ; $6aa9: $f0 $1a
    ld d, [hl]                                    ; $6aab: $56
    jr @-$65                                      ; $6aac: $18 $99

    db $fc                                        ; $6aae: $fc

jr_0bb_6aaf:
    jp $f8e1                                      ; $6aaf: $c3 $e1 $f8


    cp b                                          ; $6ab2: $b8
    dec d                                         ; $6ab3: $15
    ld a, [bc]                                    ; $6ab4: $0a
    add hl, de                                    ; $6ab5: $19
    inc c                                         ; $6ab6: $0c
    add hl, de                                    ; $6ab7: $19
    ld a, c                                       ; $6ab8: $79
    dec bc                                        ; $6ab9: $0b
    ld e, h                                       ; $6aba: $5c
    add hl, hl                                    ; $6abb: $29
    rst $38                                       ; $6abc: $ff
    ld bc, $c680                                  ; $6abd: $01 $80 $c6
    ret c                                         ; $6ac0: $d8

    dec d                                         ; $6ac1: $15
    cp [hl]                                       ; $6ac2: $be
    add hl, hl                                    ; $6ac3: $29
    rst $38                                       ; $6ac4: $ff
    add b                                         ; $6ac5: $80

jr_0bb_6ac6:
    ret nz                                        ; $6ac6: $c0

    dec a                                         ; $6ac7: $3d
    ld b, e                                       ; $6ac8: $43
    ld c, $2a                                     ; $6ac9: $0e $2a
    cp $de                                        ; $6acb: $fe $de
    ret nz                                        ; $6acd: $c0

    add hl, bc                                    ; $6ace: $09
    ld h, b                                       ; $6acf: $60
    jr @+$08                                      ; $6ad0: $18 $06

    ld h, b                                       ; $6ad2: $60
    jr @-$30                                      ; $6ad3: $18 $ce

    dec de                                        ; $6ad5: $1b
    ld [$cd3b], sp                                ; $6ad6: $08 $3b $cd
    inc bc                                        ; $6ad9: $03
    cp a                                          ; $6ada: $bf
    rra                                           ; $6adb: $1f
    sbc $3f                                       ; $6adc: $de $3f
    sbc [hl]                                      ; $6ade: $9e
    ld [hl], d                                    ; $6adf: $72
    ld de, $1170                                  ; $6ae0: $11 $70 $11
    ld a, [$7032]                                 ; $6ae3: $fa $32 $70
    add hl, hl                                    ; $6ae6: $29
    ld [hl+], a                                   ; $6ae7: $22
    dec b                                         ; $6ae8: $05
    ld [bc], a                                    ; $6ae9: $02
    adc [hl]                                      ; $6aea: $8e
    rst $30                                       ; $6aeb: $f7
    adc [hl]                                      ; $6aec: $8e
    rst $38                                       ; $6aed: $ff
    inc bc                                        ; $6aee: $03
    ld bc, $3b9e                                  ; $6aef: $01 $9e $3b
    inc a                                         ; $6af2: $3c
    rlca                                          ; $6af3: $07
    rst $38                                       ; $6af4: $ff
    inc e                                         ; $6af5: $1c
    cp $03                                        ; $6af6: $fe $03
    add c                                         ; $6af8: $81
    ld e, b                                       ; $6af9: $58
    ld d, $3c                                     ; $6afa: $16 $3c
    jr z, jr_0bb_6aa0                             ; $6afc: $28 $a2

    jr z, jr_0bb_6b11                             ; $6afe: $28 $11

    rst $28                                       ; $6b00: $ef
    inc e                                         ; $6b01: $1c
    xor $d0                                       ; $6b02: $ee $d0
    ld d, b                                       ; $6b04: $50
    rst $38                                       ; $6b05: $ff
    nop                                           ; $6b06: $00
    ld c, $72                                     ; $6b07: $0e $72
    ld [hl+], a                                   ; $6b09: $22
    db $fc                                        ; $6b0a: $fc
    sub b                                         ; $6b0b: $90
    inc e                                         ; $6b0c: $1c
    ld l, b                                       ; $6b0d: $68
    jr z, @+$47                                   ; $6b0e: $28 $45

    inc l                                         ; $6b10: $2c

jr_0bb_6b11:
    ld e, h                                       ; $6b11: $5c
    add hl, hl                                    ; $6b12: $29
    jr nc, jr_0bb_6b45                            ; $6b13: $30 $30

    cp [hl]                                       ; $6b15: $be
    dec c                                         ; $6b16: $0d
    ld a, b                                       ; $6b17: $78
    cp $3e                                        ; $6b18: $fe $3e
    add hl, sp                                    ; $6b1a: $39
    db $fc                                        ; $6b1b: $fc
    ld h, b                                       ; $6b1c: $60
    jr nz, jr_0bb_6b2b                            ; $6b1d: $20 $0c

    ld c, d                                       ; $6b1f: $4a
    ret nc                                        ; $6b20: $d0

    db $10                                        ; $6b21: $10
    adc [hl]                                      ; $6b22: $8e
    ld a, [bc]                                    ; $6b23: $0a
    jr nc, @+$73                                  ; $6b24: $30 $71

    rst $38                                       ; $6b26: $ff
    ld [hl], l                                    ; $6b27: $75
    sbc b                                         ; $6b28: $98
    jr nc, jr_0bb_6b64                            ; $6b29: $30 $39

jr_0bb_6b2b:
    ld [hl-], a                                   ; $6b2b: $32
    ld e, c                                       ; $6b2c: $59
    nop                                           ; $6b2d: $00
    ld b, a                                       ; $6b2e: $47
    adc $c8                                       ; $6b2f: $ce $c8
    nop                                           ; $6b31: $00
    ld c, $10                                     ; $6b32: $0e $10
    ld b, a                                       ; $6b34: $47
    cp d                                          ; $6b35: $ba
    inc e                                         ; $6b36: $1c
    rlca                                          ; $6b37: $07
    ld bc, $13e0                                  ; $6b38: $01 $e0 $13
    ret nz                                        ; $6b3b: $c0

    ld d, c                                       ; $6b3c: $51
    ldh a, [$5b]                                  ; $6b3d: $f0 $5b
    ld e, $c0                                     ; $6b3f: $1e $c0
    ld c, e                                       ; $6b41: $4b
    db $e3                                        ; $6b42: $e3
    inc d                                         ; $6b43: $14
    inc a                                         ; $6b44: $3c

jr_0bb_6b45:
    sbc a                                         ; $6b45: $9f
    ld a, [hl]                                    ; $6b46: $7e
    nop                                           ; $6b47: $00
    ld d, h                                       ; $6b48: $54
    add hl, de                                    ; $6b49: $19
    nop                                           ; $6b4a: $00
    ld d, h                                       ; $6b4b: $54
    add e                                         ; $6b4c: $83
    rst $38                                       ; $6b4d: $ff
    ld de, $8f01                                  ; $6b4e: $11 $01 $8f
    ld [hl], b                                    ; $6b51: $70
    ldh a, [rRP]                                  ; $6b52: $f0 $56
    ldh [$f1], a                                  ; $6b54: $e0 $f1
    adc $80                                       ; $6b56: $ce $80
    ld c, e                                       ; $6b58: $4b
    add hl, de                                    ; $6b59: $19
    cp $3f                                        ; $6b5a: $fe $3f
    cp $40                                        ; $6b5c: $fe $40
    ld c, h                                       ; $6b5e: $4c
    ld [hl], b                                    ; $6b5f: $70
    rlca                                          ; $6b60: $07
    ld sp, hl                                     ; $6b61: $f9
    and $f0                                       ; $6b62: $e6 $f0

jr_0bb_6b64:
    ld b, e                                       ; $6b64: $43
    add h                                         ; $6b65: $84
    ld e, $00                                     ; $6b66: $1e $00
    xor $1f                                       ; $6b68: $ee $1f
    rst $30                                       ; $6b6a: $f7
    adc [hl]                                      ; $6b6b: $8e
    ldh [$5a], a                                  ; $6b6c: $e0 $5a
    ld a, a                                       ; $6b6e: $7f
    db $fc                                        ; $6b6f: $fc
    ld e, e                                       ; $6b70: $5b
    ld a, a                                       ; $6b71: $7f
    sub [hl]                                      ; $6b72: $96
    ld a, [bc]                                    ; $6b73: $0a
    ld sp, hl                                     ; $6b74: $f9
    ld [bc], a                                    ; $6b75: $02
    ld [$063a], sp                                ; $6b76: $08 $3a $06
    di                                            ; $6b79: $f3
    ld c, $1a                                     ; $6b7a: $0e $1a
    db $10                                        ; $6b7c: $10
    ld h, c                                       ; $6b7d: $61
    jp nz, Jump_000_2244                          ; $6b7e: $c2 $44 $22

    xor h                                         ; $6b81: $ac
    dec bc                                        ; $6b82: $0b
    cp a                                          ; $6b83: $bf
    ld a, [hl]                                    ; $6b84: $7e
    cp a                                          ; $6b85: $bf
    ld a, [hl]                                    ; $6b86: $7e
    sbc [hl]                                      ; $6b87: $9e
    ld bc, $2301                                  ; $6b88: $01 $01 $23
    cp $81                                        ; $6b8b: $fe $81
    ld c, [hl]                                    ; $6b8d: $4e
    inc b                                         ; $6b8e: $04
    jr c, @-$5f                                   ; $6b8f: $38 $9f

    ld a, h                                       ; $6b91: $7c
    ld b, b                                       ; $6b92: $40
    ld d, c                                       ; $6b93: $51
    ret nc                                        ; $6b94: $d0

    ld a, [bc]                                    ; $6b95: $0a
    ldh [$ce], a                                  ; $6b96: $e0 $ce
    dec sp                                        ; $6b98: $3b
    adc d                                         ; $6b99: $8a
    inc de                                        ; $6b9a: $13
    ret nc                                        ; $6b9b: $d0

    dec sp                                        ; $6b9c: $3b
    rst $38                                       ; $6b9d: $ff
    inc e                                         ; $6b9e: $1c
    rst $38                                       ; $6b9f: $ff
    add h                                         ; $6ba0: $84
    rst $00                                       ; $6ba1: $c7
    ld e, b                                       ; $6ba2: $58
    ld hl, sp-$32                                 ; $6ba3: $f8 $ce
    ld e, e                                       ; $6ba5: $5b
    ld a, $80                                     ; $6ba6: $3e $80
    dec bc                                        ; $6ba8: $0b
    add d                                         ; $6ba9: $82
    ld d, e                                       ; $6baa: $53
    ccf                                           ; $6bab: $3f
    ld hl, sp+$7f                                 ; $6bac: $f8 $7f
    ldh a, [rSC]                                  ; $6bae: $f0 $02
    nop                                           ; $6bb0: $00
    ld a, [hl-]                                   ; $6bb1: $3a
    dec b                                         ; $6bb2: $05
    ret z                                         ; $6bb3: $c8

    ld b, $2c                                     ; $6bb4: $06 $2c
    rlca                                          ; $6bb6: $07
    rst $08                                       ; $6bb7: $cf
    ld a, a                                       ; $6bb8: $7f
    db $f4                                        ; $6bb9: $f4
    ld a, e                                       ; $6bba: $7b
    db $fc                                        ; $6bbb: $fc
    and d                                         ; $6bbc: $a2
    nop                                           ; $6bbd: $00
    and [hl]                                      ; $6bbe: $a6
    jr jr_0bb_6c39                                ; $6bbf: $18 $78

    rrca                                          ; $6bc1: $0f
    inc c                                         ; $6bc2: $0c
    ld c, h                                       ; $6bc3: $4c
    jr jr_0bb_6bd2                                ; $6bc4: $18 $0c

    sbc h                                         ; $6bc6: $9c
    dec b                                         ; $6bc7: $05
    rst $18                                       ; $6bc8: $df
    rst $28                                       ; $6bc9: $ef
    db $db                                        ; $6bca: $db
    sub $2d                                       ; $6bcb: $d6 $2d
    xor d                                         ; $6bcd: $aa
    inc bc                                        ; $6bce: $03
    xor $e4                                       ; $6bcf: $ee $e4
    nop                                           ; $6bd1: $00

jr_0bb_6bd2:
    inc b                                         ; $6bd2: $04
    ld [$74ce], sp                                ; $6bd3: $08 $ce $74
    ld [bc], a                                    ; $6bd6: $02
    db $e4                                        ; $6bd7: $e4
    dec bc                                        ; $6bd8: $0b
    ld e, $f3                                     ; $6bd9: $1e $f3
    rst $08                                       ; $6bdb: $cf
    rst $20                                       ; $6bdc: $e7
    ld a, [c]                                     ; $6bdd: $f2
    dec e                                         ; $6bde: $1d
    db $10                                        ; $6bdf: $10
    ld h, $1a                                     ; $6be0: $26 $1a
    jr @+$2c                                      ; $6be2: $18 $2a

    add hl, bc                                    ; $6be4: $09
    cp $00                                        ; $6be5: $fe $00
    rrca                                          ; $6be7: $0f
    or $8f                                        ; $6be8: $f6 $8f
    or $8f                                        ; $6bea: $f6 $8f
    rst $38                                       ; $6bec: $ff
    ldh a, [$fb]                                  ; $6bed: $f0 $fb
    nop                                           ; $6bef: $00
    db $f4                                        ; $6bf0: $f4
    ei                                            ; $6bf1: $fb
    db $ec                                        ; $6bf2: $ec
    rst $30                                       ; $6bf3: $f7
    call c, $dcef                                 ; $6bf4: $dc $ef $dc
    rst $28                                       ; $6bf7: $ef
    inc b                                         ; $6bf8: $04
    cp h                                          ; $6bf9: $bc
    rst $18                                       ; $6bfa: $df
    ld a, h                                       ; $6bfb: $7c
    rst $38                                       ; $6bfc: $ff
    nop                                           ; $6bfd: $00
    ld h, b                                       ; $6bfe: $60
    ld e, b                                       ; $6bff: $58
    cp $1f                                        ; $6c00: $fe $1f
    call nc, $2fc0                                ; $6c02: $d4 $c0 $2f
    and b                                         ; $6c05: $a0
    ld a, [hl+]                                   ; $6c06: $2a
    db $fd                                        ; $6c07: $fd
    ld b, h                                       ; $6c08: $44
    inc b                                         ; $6c09: $04
    ei                                            ; $6c0a: $fb
    ld [bc], a                                    ; $6c0b: $02
    ld [$e3c7], sp                                ; $6c0c: $08 $c7 $e3
    ld hl, sp-$1a                                 ; $6c0f: $f8 $e6
    rla                                           ; $6c11: $17
    jr nz, jr_0bb_6c3d                            ; $6c12: $20 $29

    ld h, b                                       ; $6c14: $60
    dec hl                                        ; $6c15: $2b
    jr nz, jr_0bb_6c21                            ; $6c16: $20 $09

    ld [hl+], a                                   ; $6c18: $22
    ld bc, $fe3c                                  ; $6c19: $01 $3c $fe
    add e                                         ; $6c1c: $83
    ld a, b                                       ; $6c1d: $78
    pop bc                                        ; $6c1e: $c1
    jr nz, jr_0bb_6c39                            ; $6c1f: $20 $18

jr_0bb_6c21:
    jr nz, jr_0bb_6c4e                            ; $6c21: $20 $2b

    or b                                          ; $6c23: $b0
    ld a, [hl+]                                   ; $6c24: $2a
    jp c, $e308                                   ; $6c25: $da $08 $e3

    ld sp, hl                                     ; $6c28: $f9
    rst $00                                       ; $6c29: $c7
    dec e                                         ; $6c2a: $1d
    db $e3                                        ; $6c2b: $e3

Call_0bb_6c2c:
    rra                                           ; $6c2c: $1f
    adc a                                         ; $6c2d: $8f
    cp [hl]                                       ; $6c2e: $be
    rla                                           ; $6c2f: $17
    ld a, h                                       ; $6c30: $7c
    ld c, e                                       ; $6c31: $4b
    jr nz, jr_0bb_6c77                            ; $6c32: $20 $43

    cp $c0                                        ; $6c34: $fe $c0
    dec hl                                        ; $6c36: $2b
    sub d                                         ; $6c37: $92
    cp h                                          ; $6c38: $bc

jr_0bb_6c39:
    ld c, $cf                                     ; $6c39: $0e $cf
    ld a, $58                                     ; $6c3b: $3e $58

jr_0bb_6c3d:
    ld b, [hl]                                    ; $6c3d: $46
    db $fc                                        ; $6c3e: $fc
    rst $38                                       ; $6c3f: $ff
    jp nc, Jump_000_3f04                          ; $6c40: $d2 $04 $3f

    dec c                                         ; $6c43: $0d
    db $fc                                        ; $6c44: $fc
    ld a, a                                       ; $6c45: $7f
    ldh a, [$78]                                  ; $6c46: $f0 $78
    ret nz                                        ; $6c48: $c0

    ld [hl-], a                                   ; $6c49: $32
    xor d                                         ; $6c4a: $aa
    jr jr_0bb_6c5b                                ; $6c4b: $18 $0e

    rst $10                                       ; $6c4d: $d7

jr_0bb_6c4e:
    ld e, $84                                     ; $6c4e: $1e $84
    cp $07                                        ; $6c50: $fe $07
    ld sp, hl                                     ; $6c52: $f9
    rst $20                                       ; $6c53: $e7
    rst $38                                       ; $6c54: $ff
    ret nz                                        ; $6c55: $c0

    or b                                          ; $6c56: $b0
    ld b, e                                       ; $6c57: $43
    rst $28                                       ; $6c58: $ef
    or $38                                        ; $6c59: $f6 $38

jr_0bb_6c5b:
    rst $08                                       ; $6c5b: $cf
    and $fa                                       ; $6c5c: $e6 $fa
    ld bc, $1820                                  ; $6c5e: $01 $20 $18
    db $fd                                        ; $6c61: $fd
    rla                                           ; $6c62: $17
    adc a                                         ; $6c63: $8f
    rst $38                                       ; $6c64: $ff
    add a                                         ; $6c65: $87
    add [hl]                                      ; $6c66: $86
    and b                                         ; $6c67: $a0
    cpl                                           ; $6c68: $2f
    or $8f                                        ; $6c69: $f6 $8f
    and $9f                                       ; $6c6b: $e6 $9f
    ld l, $11                                     ; $6c6d: $2e $11
    db $10                                        ; $6c6f: $10
    dec h                                         ; $6c70: $25
    rst $38                                       ; $6c71: $ff
    ld sp, $8300                                  ; $6c72: $31 $00 $83
    ld [c], a                                     ; $6c75: $e2
    daa                                           ; $6c76: $27

jr_0bb_6c77:
    add c                                         ; $6c77: $81
    rra                                           ; $6c78: $1f
    xor $1f                                       ; $6c79: $ee $1f
    adc [hl]                                      ; $6c7b: $8e
    ld [hl-], a                                   ; $6c7c: $32
    dec [hl]                                      ; $6c7d: $35
    add b                                         ; $6c7e: $80
    sbc c                                         ; $6c7f: $99
    rrca                                          ; $6c80: $0f
    ret nz                                        ; $6c81: $c0

    inc c                                         ; $6c82: $0c
    inc de                                        ; $6c83: $13
    ld [$ff40], sp                                ; $6c84: $08 $40 $ff
    ld bc, $f078                                  ; $6c87: $01 $78 $f0
    push hl                                       ; $6c8a: $e5

jr_0bb_6c8b:
    ld a, [$fce3]                                 ; $6c8b: $fa $e3 $fc
    push hl                                       ; $6c8e: $e5
    jr z, jr_0bb_6c8b                             ; $6c8f: $28 $fa

    ldh a, [rNR31]                                ; $6c91: $f0 $1b
    ld [$208f], sp                                ; $6c93: $08 $8f $20
    db $10                                        ; $6c96: $10
    ld a, a                                       ; $6c97: $7f
    rst $38                                       ; $6c98: $ff
    ld a, a                                       ; $6c99: $7f
    ld d, c                                       ; $6c9a: $51
    ld a, a                                       ; $6c9b: $7f
    add hl, hl                                    ; $6c9c: $29
    db $10                                        ; $6c9d: $10
    rra                                           ; $6c9e: $1f
    cpl                                           ; $6c9f: $2f
    ld e, b                                       ; $6ca0: $58
    cp $fe                                        ; $6ca1: $fe $fe
    ld hl, sp+$40                                 ; $6ca3: $f8 $40
    ld b, b                                       ; $6ca5: $40
    inc b                                         ; $6ca6: $04
    add a                                         ; $6ca7: $87
    cp a                                          ; $6ca8: $bf
    dec de                                        ; $6ca9: $1b
    ld a, a                                       ; $6caa: $7f
    ccf                                           ; $6cab: $3f
    ld d, b                                       ; $6cac: $50
    ld [$fde3], sp                                ; $6cad: $08 $e3 $fd
    nop                                           ; $6cb0: $00
    ret                                           ; $6cb1: $c9


    or $c3                                        ; $6cb2: $f6 $c3
    db $fc                                        ; $6cb4: $fc
    add $f9                                       ; $6cb5: $c6 $f9
    db $eb                                        ; $6cb7: $eb
    push af                                       ; $6cb8: $f5

jr_0bb_6cb9:
    jr nz, jr_0bb_6cb9                            ; $6cb9: $20 $fe

jr_0bb_6cbb:
    rst $18                                       ; $6cbb: $df
    ld h, b                                       ; $6cbc: $60
    jr nz, jr_0bb_6cbb                            ; $6cbd: $20 $fc

    db $fc                                        ; $6cbf: $fc
    db $e3                                        ; $6cc0: $e3
    ldh [$9f], a                                  ; $6cc1: $e0 $9f
    ld d, $00                                     ; $6cc3: $16 $00
    rst $38                                       ; $6cc5: $ff
    nop                                           ; $6cc6: $00
    ld a, [bc]                                    ; $6cc7: $0a
    jr jr_0bb_6ce9                                ; $6cc8: $18 $1f

    ld a, [bc]                                    ; $6cca: $0a
    ld [$1804], sp                                ; $6ccb: $08 $04 $18
    add [hl]                                      ; $6cce: $86
    ld b, b                                       ; $6ccf: $40
    ld a, a                                       ; $6cd0: $7f
    inc c                                         ; $6cd1: $0c
    jr @+$04                                      ; $6cd2: $18 $02

    db $fd                                        ; $6cd4: $fd
    ld bc, $0afe                                  ; $6cd5: $01 $fe $0a
    push af                                       ; $6cd8: $f5
    db $10                                        ; $6cd9: $10
    dec b                                         ; $6cda: $05
    ld a, [$1a03]                                 ; $6cdb: $fa $03 $1a
    db $10                                        ; $6cde: $10
    dec d                                         ; $6cdf: $15
    ld [$55aa], a                                 ; $6ce0: $ea $aa $55
    ld [bc], a                                    ; $6ce3: $02
    ld d, l                                       ; $6ce4: $55
    xor d                                         ; $6ce5: $aa
    xor e                                         ; $6ce6: $ab
    ld d, h                                       ; $6ce7: $54
    ld e, a                                       ; $6ce8: $5f

jr_0bb_6ce9:
    and b                                         ; $6ce9: $a0
    ld a, l                                       ; $6cea: $7d
    ld [$0107], sp                                ; $6ceb: $08 $07 $01
    rst $38                                       ; $6cee: $ff
    ld d, h                                       ; $6cef: $54
    xor e                                         ; $6cf0: $ab
    xor d                                         ; $6cf1: $aa
    ld d, l                                       ; $6cf2: $55
    ld a, a                                       ; $6cf3: $7f
    add b                                         ; $6cf4: $80
    dec [hl]                                      ; $6cf5: $35
    db $10                                        ; $6cf6: $10
    add b                                         ; $6cf7: $80
    ld [hl], a                                    ; $6cf8: $77
    ld [$fcff], sp                                ; $6cf9: $08 $ff $fc
    rst $38                                       ; $6cfc: $ff
    sbc h                                         ; $6cfd: $9c
    ld a, a                                       ; $6cfe: $7f
    db $e4                                        ; $6cff: $e4
    rra                                           ; $6d00: $1f
    ld [$0ff2], sp                                ; $6d01: $08 $f2 $0f
    ld sp, hl                                     ; $6d04: $f9
    rlca                                          ; $6d05: $07
    ret nz                                        ; $6d06: $c0

    ld [$5fbf], sp                                ; $6d07: $08 $bf $5f
    ld a, a                                       ; $6d0a: $7f
    nop                                           ; $6d0b: $00
    adc a                                         ; $6d0c: $8f
    rst $38                                       ; $6d0d: $ff
    rrca                                          ; $6d0e: $0f
    ld l, a                                       ; $6d0f: $6f
    sbc a                                         ; $6d10: $9f
    ccf                                           ; $6d11: $3f
    rst $18                                       ; $6d12: $df
    rst $38                                       ; $6d13: $ff
    nop                                           ; $6d14: $00
    rst $28                                       ; $6d15: $ef
    db $fd                                        ; $6d16: $fd
    ld hl, sp-$05                                 ; $6d17: $f8 $fb
    pop af                                        ; $6d19: $f1
    ei                                            ; $6d1a: $fb
    ldh a, [$f7]                                  ; $6d1b: $f0 $f7
    nop                                           ; $6d1d: $00

Jump_0bb_6d1e:
    ld [c], a                                     ; $6d1e: $e2
    cp $e4                                        ; $6d1f: $fe $e4
    rst $30                                       ; $6d21: $f7

jr_0bb_6d22:
    db $ec                                        ; $6d22: $ec
    db $ec                                        ; $6d23: $ec
    ret c                                         ; $6d24: $d8

    db $ec                                        ; $6d25: $ec
    ld a, b                                       ; $6d26: $78
    ret c                                         ; $6d27: $d8

    cp d                                          ; $6d28: $ba
    ld [$00bc], sp                                ; $6d29: $08 $bc $00
    dec b                                         ; $6d2c: $05
    ld [$1004], sp                                ; $6d2d: $08 $04 $10
    call z, $f8bf                                 ; $6d30: $cc $bf $f8
    ld [bc], a                                    ; $6d33: $02
    add a                                         ; $6d34: $87
    rst $20                                       ; $6d35: $e7
    ret c                                         ; $6d36: $d8

    ld hl, sp-$01                                 ; $6d37: $f8 $ff
    db $e3                                        ; $6d39: $e3
    ld [bc], a                                    ; $6d3a: $02
    db $10                                        ; $6d3b: $10
    db $eb                                        ; $6d3c: $eb
    ld b, b                                       ; $6d3d: $40
    rst $30                                       ; $6d3e: $f7
    adc d                                         ; $6d3f: $8a
    jr jr_0bb_6d22                                ; $6d40: $18 $e0

    rra                                           ; $6d42: $1f
    inc e                                         ; $6d43: $1c
    db $e3                                        ; $6d44: $e3
    db $e3                                        ; $6d45: $e3
    db $fc                                        ; $6d46: $fc
    inc c                                         ; $6d47: $0c
    call c, $c3df                                 ; $6d48: $dc $df $c3
    jp $389a                                      ; $6d4b: $c3 $9a $38


    ld d, $08                                     ; $6d4e: $16 $08
    sbc h                                         ; $6d50: $9c
    db $e3                                        ; $6d51: $e3
    nop                                           ; $6d52: $00
    ld a, [hl+]                                   ; $6d53: $2a
    push de                                       ; $6d54: $d5
    dec d                                         ; $6d55: $15
    ld [$d72f], a                                 ; $6d56: $ea $2f $d7
    ld e, b                                       ; $6d59: $58
    xor a                                         ; $6d5a: $af
    nop                                           ; $6d5b: $00
    dec [hl]                                      ; $6d5c: $35
    jp c, $fc13                                   ; $6d5d: $da $13 $fc

    ld [hl-], a                                   ; $6d60: $32
    db $dd                                        ; $6d61: $dd
    ld [$00ff], sp                                ; $6d62: $08 $ff $00
    cp a                                          ; $6d65: $bf
    ld b, b                                       ; $6d66: $40
    ld e, a                                       ; $6d67: $5f

jr_0bb_6d68:
    and b                                         ; $6d68: $a0
    cp a                                          ; $6d69: $bf
    ret nz                                        ; $6d6a: $c0

    rst $18                                       ; $6d6b: $df
    ld h, b                                       ; $6d6c: $60
    nop                                           ; $6d6d: $00
    rst $28                                       ; $6d6e: $ef
    jr nc, jr_0bb_6d68                            ; $6d6f: $30 $f7

    jr z, jr_0bb_6d22                             ; $6d71: $28 $af

    ld [hl], b                                    ; $6d73: $70
    rst $18                                       ; $6d74: $df
    ld h, b                                       ; $6d75: $60

jr_0bb_6d76:
    add b                                         ; $6d76: $80
    cpl                                           ; $6d77: $2f
    jr c, jr_0bb_6d76                             ; $6d78: $38 $fc

    inc bc                                        ; $6d7a: $03
    db $e3                                        ; $6d7b: $e3
    inc e                                         ; $6d7c: $1c
    rra                                           ; $6d7d: $1f
    rst $20                                       ; $6d7e: $e7
    db $fc                                        ; $6d7f: $fc
    nop                                           ; $6d80: $00
    inc bc                                        ; $6d81: $03
    ld sp, hl                                     ; $6d82: $f9
    ld b, $f6                                     ; $6d83: $06 $f6
    add hl, bc                                    ; $6d85: $09
    rst $20                                       ; $6d86: $e7
    inc e                                         ; $6d87: $1c
    rra                                           ; $6d88: $1f
    nop                                           ; $6d89: $00
    db $e3                                        ; $6d8a: $e3
    rst $38                                       ; $6d8b: $ff
    rra                                           ; $6d8c: $1f
    rst $28                                       ; $6d8d: $ef
    rst $28                                       ; $6d8e: $ef
    rrca                                          ; $6d8f: $0f
    rrca                                          ; $6d90: $0f
    rst $08                                       ; $6d91: $cf
    db $10                                        ; $6d92: $10
    rst $38                                       ; $6d93: $ff
    cp a                                          ; $6d94: $bf
    ld [hl], a                                    ; $6d95: $77
    ld b, [hl]                                    ; $6d96: $46
    ld bc, $1f7f                                  ; $6d97: $01 $7f $1f
    rst $38                                       ; $6d9a: $ff
    ccf                                           ; $6d9b: $3f
    nop                                           ; $6d9c: $00
    rst $18                                       ; $6d9d: $df
    ld a, a                                       ; $6d9e: $7f
    sbc a                                         ; $6d9f: $9f
    ld a, a                                       ; $6da0: $7f
    sbc a                                         ; $6da1: $9f
    db $ed                                        ; $6da2: $ed
    ret c                                         ; $6da3: $d8

    db $ed                                        ; $6da4: $ed
    nop                                           ; $6da5: $00
    ret c                                         ; $6da6: $d8

    call z, $ecf8                                 ; $6da7: $cc $f8 $ec
    ret c                                         ; $6daa: $d8

    adc h                                         ; $6dab: $8c
    ld hl, sp-$3a                                 ; $6dac: $f8 $c6
    nop                                           ; $6dae: $00
    cp h                                          ; $6daf: $bc
    add $bc                                       ; $6db0: $c6 $bc

jr_0bb_6db2:
    jp $dfbe                                      ; $6db2: $c3 $be $df


    cp a                                          ; $6db5: $bf
    rst $28                                       ; $6db6: $ef
    nop                                           ; $6db7: $00
    rra                                           ; $6db8: $1f
    rst $18                                       ; $6db9: $df
    adc a                                         ; $6dba: $8f
    rst $18                                       ; $6dbb: $df
    adc e                                         ; $6dbc: $8b
    db $dd                                        ; $6dbd: $dd
    adc e                                         ; $6dbe: $8b
    rst $30                                       ; $6dbf: $f7
    inc b                                         ; $6dc0: $04
    ld c, l                                       ; $6dc1: $4d
    rst $28                                       ; $6dc2: $ef
    ld b, l                                       ; $6dc3: $45
    ld [hl], a                                    ; $6dc4: $77
    dec h                                         ; $6dc5: $25
    sub h                                         ; $6dc6: $94
    ld [$f7eb], sp                                ; $6dc7: $08 $eb $f7
    ret nz                                        ; $6dca: $c0

    ld b, $18                                     ; $6dcb: $06 $18
    ld a, [bc]                                    ; $6dcd: $0a
    ld [$efd0], sp                                ; $6dce: $08 $d0 $ef
    jp c, $d4e5                                   ; $6dd1: $da $e5 $d4

    db $eb                                        ; $6dd4: $eb
    ld [$e5da], sp                                ; $6dd5: $08 $da $e5
    db $dd                                        ; $6dd8: $dd
    ld [c], a                                     ; $6dd9: $e2
    inc b                                         ; $6dda: $04
    jr @+$72                                      ; $6ddb: $18 $70

    ldh a, [$0e]                                  ; $6ddd: $f0 $0e

jr_0bb_6ddf:
    jr nz, jr_0bb_6ddf                            ; $6ddf: $20 $fe

    ld bc, $313e                                  ; $6de1: $01 $3e $31
    add b                                         ; $6de4: $80
    ld a, a                                       ; $6de5: $7f
    add a                                         ; $6de6: $87
    ld a, a                                       ; $6de7: $7f
    halt                                          ; $6de8: $76
    nop                                           ; $6de9: $00
    adc a                                         ; $6dea: $8f
    rst $08                                       ; $6deb: $cf
    rst $38                                       ; $6dec: $ff
    ld a, $3b                                     ; $6ded: $3e $3b
    dec b                                         ; $6def: $05
    rlca                                          ; $6df0: $07
    rlca                                          ; $6df1: $07
    nop                                           ; $6df2: $00
    ld b, $07                                     ; $6df3: $06 $07
    inc b                                         ; $6df5: $04
    rlca                                          ; $6df6: $07
    inc b                                         ; $6df7: $04
    cp b                                          ; $6df8: $b8
    rst $00                                       ; $6df9: $c7
    ld h, a                                       ; $6dfa: $67
    ld [bc], a                                    ; $6dfb: $02
    sbc c                                         ; $6dfc: $99
    ld e, $ee                                     ; $6dfd: $1e $ee
    ldh a, [rSVBK]                                ; $6dff: $f0 $70
    add b                                         ; $6e01: $80
    ld bc, $3d20                                  ; $6e02: $01 $20 $3d
    nop                                           ; $6e05: $00
    ld a, [hl-]                                   ; $6e06: $3a
    ld [$55d5], a                                 ; $6e07: $ea $d5 $55
    xor d                                         ; $6e0a: $aa
    ld a, [hl-]                                   ; $6e0b: $3a
    push bc                                       ; $6e0c: $c5
    ld e, l                                       ; $6e0d: $5d
    db $10                                        ; $6e0e: $10

jr_0bb_6e0f:
    and d                                         ; $6e0f: $a2
    xor d                                         ; $6e10: $aa
    ld d, l                                       ; $6e11: $55
    inc b                                         ; $6e12: $04
    ld [$ff0f], sp                                ; $6e13: $08 $0f $ff
    adc a                                         ; $6e16: $8f
    ld a, a                                       ; $6e17: $7f
    ccf                                           ; $6e18: $3f
    ld c, a                                       ; $6e19: $4f
    cp a                                          ; $6e1a: $bf
    inc b                                         ; $6e1b: $04
    jr c, jr_0bb_6db2                             ; $6e1c: $38 $94

    ld [$4804], sp                                ; $6e1e: $08 $04 $48
    ld e, [hl]                                    ; $6e21: $5e
    add hl, bc                                    ; $6e22: $09

jr_0bb_6e23:
    ld h, c                                       ; $6e23: $61
    ld bc, $0005                                  ; $6e24: $01 $05 $00
    add b                                         ; $6e27: $80

jr_0bb_6e28:
    ld b, $10                                     ; $6e28: $06 $10

jr_0bb_6e2a:
    cp $c1                                        ; $6e2a: $fe $c1
    cp [hl]                                       ; $6e2c: $be
    ld h, c                                       ; $6e2d: $61
    rst $18                                       ; $6e2e: $df
    jr c, jr_0bb_6e28                             ; $6e2f: $38 $f7

    ld b, b                                       ; $6e31: $40
    rrca                                          ; $6e32: $0f
    ld l, d                                       ; $6e33: $6a
    nop                                           ; $6e34: $00
    push bc                                       ; $6e35: $c5
    cp d                                          ; $6e36: $ba
    ld a, d                                       ; $6e37: $7a
    ldh a, [rIF]                                  ; $6e38: $f0 $0f
    rst $38                                       ; $6e3a: $ff
    nop                                           ; $6e3b: $00
    ccf                                           ; $6e3c: $3f
    inc bc                                        ; $6e3d: $03
    cp a                                          ; $6e3e: $bf
    inc b                                         ; $6e3f: $04
    ld a, l                                       ; $6e40: $7d
    sbc b                                         ; $6e41: $98
    ld sp, hl                                     ; $6e42: $f9
    ldh [rP1], a                                  ; $6e43: $e0 $00
    db $e3                                        ; $6e45: $e3
    ld bc, $0207                                  ; $6e46: $01 $07 $02
    ld a, $1c                                     ; $6e49: $3e $1c
    ld sp, hl                                     ; $6e4b: $f9
    ldh [$92], a                                  ; $6e4c: $e0 $92
    xor [hl]                                      ; $6e4e: $ae
    ld [$fbf5], sp                                ; $6e4f: $08 $f5 $fb
    ld [bc], a                                    ; $6e52: $02
    jr c, jr_0bb_6e2a                             ; $6e53: $38 $d5

    ld [$08ac], a                                 ; $6e55: $ea $ac $08
    ld [$f510], a                                 ; $6e58: $ea $10 $f5
    db $ed                                        ; $6e5b: $ed
    ld a, [c]                                     ; $6e5c: $f2
    inc b                                         ; $6e5d: $04
    ld [$f1ee], sp                                ; $6e5e: $08 $ee $f1
    nop                                           ; $6e61: $00
    rst $38                                       ; $6e62: $ff
    nop                                           ; $6e63: $00
    add c                                         ; $6e64: $81
    ld a, [hl]                                    ; $6e65: $7e
    ld [bc], a                                    ; $6e66: $02
    db $fd                                        ; $6e67: $fd
    add c                                         ; $6e68: $81
    ld a, [hl]                                    ; $6e69: $7e
    ld b, d                                       ; $6e6a: $42
    cp l                                          ; $6e6b: $bd
    jr nz, jr_0bb_6e0f                            ; $6e6c: $20 $a1

    ld e, [hl]                                    ; $6e6e: $5e
    inc b                                         ; $6e6f: $04
    ld [$5ca4], sp                                ; $6e70: $08 $a4 $5c
    ld d, h                                       ; $6e73: $54
    xor h                                         ; $6e74: $ac
    db $ec                                        ; $6e75: $ec
    db $10                                        ; $6e76: $10
    inc d                                         ; $6e77: $14
    db $f4                                        ; $6e78: $f4
    inc c                                         ; $6e79: $0c
    inc b                                         ; $6e7a: $04
    jr jr_0bb_6ed1                                ; $6e7b: $18 $54

    xor h                                         ; $6e7d: $ac
    add c                                         ; $6e7e: $81
    cp $26                                        ; $6e7f: $fe $26
    add b                                         ; $6e81: $80
    rst $38                                       ; $6e82: $ff
    inc b                                         ; $6e83: $04
    jr @-$7c                                      ; $6e84: $18 $82

    db $fd                                        ; $6e86: $fd
    inc b                                         ; $6e87: $04
    ld [$28a8], sp                                ; $6e88: $08 $a8 $28
    ld e, l                                       ; $6e8b: $5d
    inc d                                         ; $6e8c: $14
    and d                                         ; $6e8d: $a2
    xor [hl]                                      ; $6e8e: $ae
    ld d, c                                       ; $6e8f: $51
    inc b                                         ; $6e90: $04
    ld [$010f], sp                                ; $6e91: $08 $0f $01
    db $10                                        ; $6e94: $10
    ld e, $1f                                     ; $6e95: $1e $1f
    call nz, Call_000_2802                        ; $6e97: $c4 $02 $28
    or b                                          ; $6e9a: $b0
    db $10                                        ; $6e9b: $10
    cp a                                          ; $6e9c: $bf
    rst $38                                       ; $6e9d: $ff
    ccf                                           ; $6e9e: $3f
    ld [bc], a                                    ; $6e9f: $02
    jr z, jr_0bb_6e23                             ; $6ea0: $28 $81

    ld a, [hl]                                    ; $6ea2: $7e
    nop                                           ; $6ea3: $00
    ld a, [c]                                     ; $6ea4: $f2
    adc h                                         ; $6ea5: $8c
    rst $38                                       ; $6ea6: $ff
    ld [hl], b                                    ; $6ea7: $70
    rst $08                                       ; $6ea8: $cf
    cp a                                          ; $6ea9: $bf
    ldh [$df], a                                  ; $6eaa: $e0 $df
    nop                                           ; $6eac: $00
    pop af                                        ; $6ead: $f1
    xor $f1                                       ; $6eae: $ee $f1
    xor $f2                                       ; $6eb0: $ee $f2
    db $fc                                        ; $6eb2: $fc
    db $e3                                        ; $6eb3: $e3
    ld bc, $8700                                  ; $6eb4: $01 $00 $87
    inc bc                                        ; $6eb7: $03
    rst $38                                       ; $6eb8: $ff
    dec e                                         ; $6eb9: $1d
    rst $20                                       ; $6eba: $e7
    db $e3                                        ; $6ebb: $e3
    adc a                                         ; $6ebc: $8f
    rlca                                          ; $6ebd: $07
    inc bc                                        ; $6ebe: $03
    ld e, a                                       ; $6ebf: $5f
    rrca                                          ; $6ec0: $0f
    ccf                                           ; $6ec1: $3f
    rrca                                          ; $6ec2: $0f
    ld e, a                                       ; $6ec3: $5f

jr_0bb_6ec4:
    rra                                           ; $6ec4: $1f
    sbc h                                         ; $6ec5: $9c
    ld c, b                                       ; $6ec6: $48
    xor b                                         ; $6ec7: $a8
    stop                                          ; $6ec8: $10 $00
    ld a, [$f9f6]                                 ; $6eca: $fa $f6 $f9
    ei                                            ; $6ecd: $fb

jr_0bb_6ece:
    db $fc                                        ; $6ece: $fc
    ei                                            ; $6ecf: $fb
    db $fc                                        ; $6ed0: $fc

jr_0bb_6ed1:
    db $fd                                        ; $6ed1: $fd
    db $10                                        ; $6ed2: $10
    cp $fd                                        ; $6ed3: $fe $fd
    cp $e5                                        ; $6ed5: $fe $e5
    ld [$bf40], sp                                ; $6ed7: $08 $40 $bf
    and b                                         ; $6eda: $a0
    ld e, a                                       ; $6edb: $5f
    ld [$af50], sp                                ; $6edc: $08 $50 $af
    xor b                                         ; $6edf: $a8
    ld d, a                                       ; $6ee0: $57
    inc b                                         ; $6ee1: $04
    ld [$2bd4], sp                                ; $6ee2: $08 $d4 $2b
    ld l, d                                       ; $6ee5: $6a
    inc b                                         ; $6ee6: $04
    sub l                                         ; $6ee7: $95
    and h                                         ; $6ee8: $a4
    ld e, h                                       ; $6ee9: $5c
    inc b                                         ; $6eea: $04
    db $fc                                        ; $6eeb: $fc
    ld [bc], a                                    ; $6eec: $02
    ld c, b                                       ; $6eed: $48
    add l                                         ; $6eee: $85
    ld a, [$8202]                                 ; $6eef: $fa $02 $82
    db $fd                                        ; $6ef2: $fd
    add l                                         ; $6ef3: $85
    ld a, [$f58a]                                 ; $6ef4: $fa $8a $f5
    inc b                                         ; $6ef7: $04
    ld [$0095], sp                                ; $6ef8: $08 $95 $00
    ld [$f58a], a                                 ; $6efb: $ea $8a $f5
    ld e, l                                       ; $6efe: $5d
    and d                                         ; $6eff: $a2
    cp [hl]                                       ; $6f00: $be
    ld b, c                                       ; $6f01: $41
    ld e, h                                       ; $6f02: $5c
    nop                                           ; $6f03: $00
    and e                                         ; $6f04: $a3
    cp d                                          ; $6f05: $ba
    ld b, l                                       ; $6f06: $45
    ld [hl], h                                    ; $6f07: $74
    adc e                                         ; $6f08: $8b
    cp d                                          ; $6f09: $ba
    ld b, l                                       ; $6f0a: $45
    ld [hl], l                                    ; $6f0b: $75
    nop                                           ; $6f0c: $00
    adc e                                         ; $6f0d: $8b
    db $eb                                        ; $6f0e: $eb
    rla                                           ; $6f0f: $17
    ld a, $3f                                     ; $6f10: $3e $3f
    ld a, $3f                                     ; $6f12: $3e $3f
    ld a, [hl]                                    ; $6f14: $7e
    ld e, $7f                                     ; $6f15: $1e $7f
    ld a, [hl]                                    ; $6f17: $7e
    ld a, a                                       ; $6f18: $7f
    dec l                                         ; $6f19: $2d
    ld de, $093c                                  ; $6f1a: $11 $3c $09
    sbc d                                         ; $6f1d: $9a
    jr nc, jr_0bb_6ec4                            ; $6f1e: $30 $a4

    jr @-$05                                      ; $6f20: $18 $f9

    nop                                           ; $6f22: $00
    or $f9                                        ; $6f23: $f6 $f9
    or $fd                                        ; $6f25: $f6 $fd
    ld a, [$fafd]                                 ; $6f27: $fa $fd $fa
    rst $38                                       ; $6f2a: $ff
    ld b, b                                       ; $6f2b: $40
    ld hl, sp+$04                                 ; $6f2c: $f8 $04
    jr jr_0bb_6f6f                                ; $6f2e: $18 $3f

    rra                                           ; $6f30: $1f
    ld a, a                                       ; $6f31: $7f
    rra                                           ; $6f32: $1f
    ccf                                           ; $6f33: $3f
    ccf                                           ; $6f34: $3f
    ld d, b                                       ; $6f35: $50
    ld a, a                                       ; $6f36: $7f
    ld [bc], a                                    ; $6f37: $02
    db $10                                        ; $6f38: $10
    cp a                                          ; $6f39: $bf
    ld [$b400], sp                                ; $6f3a: $08 $00 $b4
    set 3, d                                      ; $6f3d: $cb $da
    push hl                                       ; $6f3f: $e5
    inc h                                         ; $6f40: $24
    db $ed                                        ; $6f41: $ed
    ld a, [c]                                     ; $6f42: $f2
    sub h                                         ; $6f43: $94

jr_0bb_6f44:
    jr z, jr_0bb_6f44                             ; $6f44: $28 $fe

    rst $38                                       ; $6f46: $ff
    ld a, [hl]                                    ; $6f47: $7e
    jr jr_0bb_6ece                                ; $6f48: $18 $84

    ld a, h                                       ; $6f4a: $7c
    jr nz, jr_0bb_6f91                            ; $6f4b: $20 $44

    cp h                                          ; $6f4d: $bc
    inc b                                         ; $6f4e: $04
    ld [$5ca4], sp                                ; $6f4f: $08 $a4 $5c
    sub l                                         ; $6f52: $95
    ld [$00ab], a                                 ; $6f53: $ea $ab $00
    call nc, $e897                                ; $6f56: $d4 $97 $e8
    xor [hl]                                      ; $6f59: $ae
    pop de                                        ; $6f5a: $d1
    db $dd                                        ; $6f5b: $dd
    and d                                         ; $6f5c: $a2
    cp d                                          ; $6f5d: $ba
    nop                                           ; $6f5e: $00
    push bc                                       ; $6f5f: $c5
    call nc, $b9ab                                ; $6f60: $d4 $ab $b9
    rst $00                                       ; $6f63: $c7
    rst $10                                       ; $6f64: $d7
    cpl                                           ; $6f65: $2f
    xor a                                         ; $6f66: $af
    ld c, $5f                                     ; $6f67: $0e $5f
    ld e, a                                       ; $6f69: $5f
    cp a                                          ; $6f6a: $bf

jr_0bb_6f6b:
    cp a                                          ; $6f6b: $bf
    sub $1a                                       ; $6f6c: $d6 $1a
    and l                                         ; $6f6e: $a5

jr_0bb_6f6f:
    add hl, hl                                    ; $6f6f: $29
    ld b, $40                                     ; $6f70: $06 $40
    db $fd                                        ; $6f72: $fd
    ld b, b                                       ; $6f73: $40
    ld a, [$0872]                                 ; $6f74: $fa $72 $08
    ld hl, sp-$0a                                 ; $6f77: $f8 $f6
    ldh a, [$ee]                                  ; $6f79: $f0 $ee
    ld a, [c]                                     ; $6f7b: $f2
    db $ec                                        ; $6f7c: $ec
    ld [bc], a                                    ; $6f7d: $02
    jp $c7fc                                      ; $6f7e: $c3 $fc $c7


    cp b                                          ; $6f81: $b8
    ld a, a                                       ; $6f82: $7f
    ccf                                           ; $6f83: $3f
    ld [hl], d                                    ; $6f84: $72
    db $10                                        ; $6f85: $10
    rra                                           ; $6f86: $1f
    add b                                         ; $6f87: $80
    ld c, $11                                     ; $6f88: $0e $11
    rlca                                          ; $6f8a: $07
    daa                                           ; $6f8b: $27
    dec de                                        ; $6f8c: $1b
    push af                                       ; $6f8d: $f5
    ei                                            ; $6f8e: $fb
    pop af                                        ; $6f8f: $f1
    rst $38                                       ; $6f90: $ff

jr_0bb_6f91:
    ret c                                         ; $6f91: $d8

    ld [bc], a                                    ; $6f92: $02
    ld [$1808], sp                                ; $6f93: $08 $08 $18
    ld hl, sp-$17                                 ; $6f96: $f8 $e9
    ld de, $4c04                                  ; $6f98: $11 $04 $4c
    call nc, Call_0bb_6c2c                        ; $6f9b: $d4 $2c $6c
    nop                                           ; $6f9e: $00
    sub h                                         ; $6f9f: $94
    or h                                          ; $6fa0: $b4
    call z, $d4ac                                 ; $6fa1: $cc $ac $d4
    call nc, $ccec                                ; $6fa4: $d4 $ec $cc
    ld b, b                                       ; $6fa7: $40
    db $f4                                        ; $6fa8: $f4
    inc b                                         ; $6fa9: $04
    ld [$8bf5], sp                                ; $6faa: $08 $f5 $8b
    xor e                                         ; $6fad: $ab
    rst $10                                       ; $6fae: $d7
    rst $10                                       ; $6faf: $d7
    xor a                                         ; $6fb0: $af
    nop                                           ; $6fb1: $00
    and a                                         ; $6fb2: $a7
    rst $18                                       ; $6fb3: $df
    rst $18                                       ; $6fb4: $df
    xor a                                         ; $6fb5: $af
    xor a                                         ; $6fb6: $af
    rst $18                                       ; $6fb7: $df
    rst $08                                       ; $6fb8: $cf
    cp a                                          ; $6fb9: $bf
    jr nz, jr_0bb_6f6b                            ; $6fba: $20 $af

    rst $18                                       ; $6fbc: $df
    ldh [$60], a                                  ; $6fbd: $e0 $60
    ld a, a                                       ; $6fbf: $7f
    db $fd                                        ; $6fc0: $fd
    rst $38                                       ; $6fc1: $ff
    ld a, [$00ff]                                 ; $6fc2: $fa $ff $00
    ld a, [c]                                     ; $6fc5: $f2
    rst $38                                       ; $6fc6: $ff
    db $f4                                        ; $6fc7: $f4
    rst $28                                       ; $6fc8: $ef
    db $e4                                        ; $6fc9: $e4
    rst $18                                       ; $6fca: $df
    add sp, -$21                                  ; $6fcb: $e8 $df
    nop                                           ; $6fcd: $00
    ret z                                         ; $6fce: $c8

    cp a                                          ; $6fcf: $bf
    ret z                                         ; $6fd0: $c8

    cp a                                          ; $6fd1: $bf
    inc b                                         ; $6fd2: $04
    ld hl, sp+$14                                 ; $6fd3: $f8 $14
    add sp, $00                                   ; $6fd5: $e8 $00
    cpl                                           ; $6fd7: $2f
    ret nc                                        ; $6fd8: $d0

    ld c, c                                       ; $6fd9: $49
    or b                                          ; $6fda: $b0
    add hl, hl                                    ; $6fdb: $29
    ret nc                                        ; $6fdc: $d0

    ld c, [hl]                                    ; $6fdd: $4e
    or b                                          ; $6fde: $b0
    nop                                           ; $6fdf: $00
    ld [de], a                                    ; $6fe0: $12
    db $ec                                        ; $6fe1: $ec
    xor a                                         ; $6fe2: $af
    ld d, b                                       ; $6fe3: $50
    sub e                                         ; $6fe4: $93
    dec c                                         ; $6fe5: $0d
    adc c                                         ; $6fe6: $89
    ld b, $00                                     ; $6fe7: $06 $00
    ld d, l                                       ; $6fe9: $55
    add d                                         ; $6fea: $82
    adc d                                         ; $6feb: $8a
    dec b                                         ; $6fec: $05
    and h                                         ; $6fed: $a4
    inc bc                                        ; $6fee: $03
    ld c, d                                       ; $6fef: $4a
    ld bc, $470c                                  ; $6ff0: $01 $0c $47
    nop                                           ; $6ff3: $00
    adc d                                         ; $6ff4: $8a
    ld bc, $2470                                  ; $6ff5: $01 $70 $24
    ld d, d                                       ; $6ff8: $52
    inc c                                         ; $6ff9: $0c
    cp a                                          ; $6ffa: $bf
    ld a, a                                       ; $6ffb: $7f
    ld bc, $bfbf                                  ; $6ffc: $01 $bf $bf
    ld e, a                                       ; $6fff: $5f
    ld a, [$f8fd]                                 ; $7000: $fa $fd $f8
    rst $38                                       ; $7003: $ff
    rra                                           ; $7004: $1f
    ld bc, $02c0                                  ; $7005: $01 $c0 $02
    jr nc, jr_0bb_7069                            ; $7008: $30 $5f

    ld d, h                                       ; $700a: $54
    rst $38                                       ; $700b: $ff
    db $fd                                        ; $700c: $fd
    cp $d4                                        ; $700d: $fe $d4
    db $ec                                        ; $700f: $ec
    call c, $e440                                 ; $7010: $dc $40 $e4
    sub b                                         ; $7013: $90
    ld [$8c74], sp                                ; $7014: $08 $74 $8c
    ld l, h                                       ; $7017: $6c

jr_0bb_7018:
    sub h                                         ; $7018: $94
    call nc, $302c                                ; $7019: $d4 $2c $30
    and h                                         ; $701c: $a4
    ld e, h                                       ; $701d: $5c
    add h                                         ; $701e: $84
    ld [$0890], sp                                ; $701f: $08 $90 $08
    db $db                                        ; $7022: $db
    and a                                         ; $7023: $a7
    db $eb                                        ; $7024: $eb
    sub a                                         ; $7025: $97
    rrca                                          ; $7026: $0f
    push af                                       ; $7027: $f5
    adc e                                         ; $7028: $8b
    jp c, $c8a5                                   ; $7029: $da $a5 $c8

    add hl, bc                                    ; $702c: $09
    inc b                                         ; $702d: $04
    ld c, b                                       ; $702e: $48
    xor h                                         ; $702f: $ac
    inc e                                         ; $7030: $1c
    ld a, [c]                                     ; $7031: $f2
    dec bc                                        ; $7032: $0b
    ret nz                                        ; $7033: $c0

    inc b                                         ; $7034: $04
    jr nz, jr_0bb_7018                            ; $7035: $20 $e1

    inc l                                         ; $7037: $2c
    db $fc                                        ; $7038: $fc
    rst $38                                       ; $7039: $ff
    pop af                                        ; $703a: $f1
    cp $f7                                        ; $703b: $fe $f7
    rst $38                                       ; $703d: $ff
    ld b, b                                       ; $703e: $40
    rst $28                                       ; $703f: $ef
    inc c                                         ; $7040: $0c
    jr nz, @-$7d                                  ; $7041: $20 $81

    rst $38                                       ; $7043: $ff
    ld a, a                                       ; $7044: $7f
    ld [$d0ff], a                                 ; $7045: $ea $ff $d0
    jr nz, @+$01                                  ; $7048: $20 $ff

    and d                                         ; $704a: $a2
    ld [hl], b                                    ; $704b: $70
    db $10                                        ; $704c: $10
    db $fd                                        ; $704d: $fd
    inc bc                                        ; $704e: $03
    rst $38                                       ; $704f: $ff
    ld hl, sp+$50                                 ; $7050: $f8 $50
    add h                                         ; $7052: $84
    sbc h                                         ; $7053: $9c
    inc b                                         ; $7054: $04
    ld d, h                                       ; $7055: $54
    xor e                                         ; $7056: $ab
    xor a                                         ; $7057: $af
    ld d, b                                       ; $7058: $50
    db $10                                        ; $7059: $10
    dec e                                         ; $705a: $1d
    rst $18                                       ; $705b: $df
    ccf                                           ; $705c: $3f
    nop                                           ; $705d: $00
    db $fd                                        ; $705e: $fd
    inc bc                                        ; $705f: $03
    rrca                                          ; $7060: $0f
    ldh a, [rTAC]                                 ; $7061: $f0 $07
    ld hl, sp-$3d                                 ; $7063: $f8 $c3
    inc a                                         ; $7065: $3c
    add b                                         ; $7066: $80
    jr nz, jr_0bb_70a6                            ; $7067: $20 $3d

jr_0bb_7069:
    ccf                                           ; $7069: $3f
    rst $38                                       ; $706a: $ff
    rst $08                                       ; $706b: $cf
    ccf                                           ; $706c: $3f
    rst $38                                       ; $706d: $ff
    rrca                                          ; $706e: $0f
    ret z                                         ; $706f: $c8

    nop                                           ; $7070: $00
    cp a                                          ; $7071: $bf
    ret nz                                        ; $7072: $c0

    rst $38                                       ; $7073: $ff
    db $e4                                        ; $7074: $e4
    rst $18                                       ; $7075: $df
    ld [c], a                                     ; $7076: $e2
    rst $38                                       ; $7077: $ff
    ld a, [c]                                     ; $7078: $f2
    nop                                           ; $7079: $00
    rst $28                                       ; $707a: $ef
    jp hl                                         ; $707b: $e9


    rst $38                                       ; $707c: $ff
    add sp, -$21                                  ; $707d: $e8 $df
    db $e4                                        ; $707f: $e4
    rst $18                                       ; $7080: $df
    ld d, d                                       ; $7081: $52
    nop                                           ; $7082: $00
    and b                                         ; $7083: $a0
    ld [hl-], a                                   ; $7084: $32
    ret nz                                        ; $7085: $c0

    ld [hl], a                                    ; $7086: $77
    adc b                                         ; $7087: $88
    add [hl]                                      ; $7088: $86
    ld c, c                                       ; $7089: $49
    ld c, c                                       ; $708a: $49
    nop                                           ; $708b: $00
    add b                                         ; $708c: $80
    add hl, sp                                    ; $708d: $39
    ret nz                                        ; $708e: $c0

    xor a                                         ; $708f: $af
    ret nc                                        ; $7090: $d0

    call nc, $0768                                ; $7091: $d4 $68 $07
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    inc hl                                        ; $7096: $23
    nop                                           ; $7097: $00
    ld d, l                                       ; $7098: $55
    add b                                         ; $7099: $80
    add d                                         ; $709a: $82
    nop                                           ; $709b: $00
    dec b                                         ; $709c: $05
    add b                                         ; $709d: $80
    inc b                                         ; $709e: $04
    nop                                           ; $709f: $00
    ld d, l                                       ; $70a0: $55
    nop                                           ; $70a1: $00
    ld [hl+], a                                   ; $70a2: $22
    nop                                           ; $70a3: $00
    ccf                                           ; $70a4: $3f
    rst $18                                       ; $70a5: $df

jr_0bb_70a6:
    cp a                                          ; $70a6: $bf
    nop                                           ; $70a7: $00
    ld e, a                                       ; $70a8: $5f
    rra                                           ; $70a9: $1f
    rst $28                                       ; $70aa: $ef
    sbc a                                         ; $70ab: $9f
    ld l, a                                       ; $70ac: $6f
    rst $18                                       ; $70ad: $df
    cpl                                           ; $70ae: $2f
    rst $18                                       ; $70af: $df
    ld b, $2f                                     ; $70b0: $06 $2f
    ld c, a                                       ; $70b2: $4f
    scf                                           ; $70b3: $37
    rst $28                                       ; $70b4: $ef
    rla                                           ; $70b5: $17
    db $ec                                        ; $70b6: $ec
    ld c, b                                       ; $70b7: $48
    ld hl, sp+$08                                 ; $70b8: $f8 $08
    ei                                            ; $70ba: $fb
    nop                                           ; $70bb: $00
    db $fc                                        ; $70bc: $fc
    or $f9                                        ; $70bd: $f6 $f9
    db $ed                                        ; $70bf: $ed
    ld a, [c]                                     ; $70c0: $f2

jr_0bb_70c1:
    jp c, $b5e5                                   ; $70c1: $da $e5 $b5

    ld bc, $aaca                                  ; $70c4: $01 $ca $aa
    push de                                       ; $70c7: $d5
    ld d, h                                       ; $70c8: $54
    xor e                                         ; $70c9: $ab
    ld l, b                                       ; $70ca: $68
    sub a                                         ; $70cb: $97
    db $f4                                        ; $70cc: $f4
    add hl, bc                                    ; $70cd: $09
    ret nz                                        ; $70ce: $c0

    db $fc                                        ; $70cf: $fc
    add hl, bc                                    ; $70d0: $09
    add [hl]                                      ; $70d1: $86
    ld a, [de]                                    ; $70d2: $1a
    and h                                         ; $70d3: $a4
    ld e, h                                       ; $70d4: $5c
    db $eb                                        ; $70d5: $eb
    sub h                                         ; $70d6: $94
    push de                                       ; $70d7: $d5
    xor d                                         ; $70d8: $aa
    nop                                           ; $70d9: $00
    ld [$f595], a                                 ; $70da: $ea $95 $f5
    adc d                                         ; $70dd: $8a
    cp d                                          ; $70de: $ba
    push bc                                       ; $70df: $c5
    db $fd                                        ; $70e0: $fd
    add d                                         ; $70e1: $82
    nop                                           ; $70e2: $00
    cp d                                          ; $70e3: $ba
    push bc                                       ; $70e4: $c5
    db $dd                                        ; $70e5: $dd
    and d                                         ; $70e6: $a2
    ld a, a                                       ; $70e7: $7f
    rst $38                                       ; $70e8: $ff
    cp a                                          ; $70e9: $bf
    ld a, a                                       ; $70ea: $7f
    nop                                           ; $70eb: $00
    rst $18                                       ; $70ec: $df
    ccf                                           ; $70ed: $3f
    ld l, a                                       ; $70ee: $6f
    sbc a                                         ; $70ef: $9f
    or a                                          ; $70f0: $b7
    ld c, a                                       ; $70f1: $4f
    ld d, a                                       ; $70f2: $57
    xor a                                         ; $70f3: $af
    dec bc                                        ; $70f4: $0b
    xor e                                         ; $70f5: $ab
    ld d, a                                       ; $70f6: $57
    ld e, e                                       ; $70f7: $5b
    and a                                         ; $70f8: $a7
    nop                                           ; $70f9: $00
    add hl, de                                    ; $70fa: $19
    db $fc                                        ; $70fb: $fc
    ld [de], a                                    ; $70fc: $12
    dec b                                         ; $70fd: $05
    inc b                                         ; $70fe: $04
    jr jr_0bb_70c1                                ; $70ff: $18 $c0

    ldh a, [rNR32]                                ; $7101: $f0 $1c

jr_0bb_7103:
    inc b                                         ; $7103: $04
    jr c, jr_0bb_7103                             ; $7104: $38 $fd

    rst $08                                       ; $7106: $cf
    ldh a, [$9f]                                  ; $7107: $f0 $9f
    ld a, [$009f]                                 ; $7109: $fa $9f $00
    db $f4                                        ; $710c: $f4
    sbc a                                         ; $710d: $9f
    ld a, [$d9cf]                                 ; $710e: $fa $cf $d9
    and a                                         ; $7111: $a7

jr_0bb_7112:
    db $ec                                        ; $7112: $ec
    or e                                          ; $7113: $b3
    nop                                           ; $7114: $00
    or $99                                        ; $7115: $f6 $99
    ld b, l                                       ; $7117: $45
    ld a, [$f50a]                                 ; $7118: $fa $0a $f5
    dec hl                                        ; $711b: $2b
    sub $00                                       ; $711c: $d6 $00
    rla                                           ; $711e: $17
    ld [$d52b], a                                 ; $711f: $ea $2b $d5
    rla                                           ; $7122: $17
    add sp, -$75                                  ; $7123: $e8 $8b
    db $f4                                        ; $7125: $f4
    nop                                           ; $7126: $00
    ld hl, $7ffe                                  ; $7127: $21 $fe $7f
    sub b                                         ; $712a: $90
    rst $28                                       ; $712b: $ef
    jr @+$01                                      ; $712c: $18 $ff

    jr jr_0bb_7133                                ; $712e: $18 $03

    sbc $39                                       ; $7130: $de $39
    sbc e                                         ; $7132: $9b

jr_0bb_7133:
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    ld a, h                                       ; $7135: $7c
    ld d, a                                       ; $7136: $57
    inc a                                         ; $7137: $3c
    ld [bc], a                                    ; $7138: $02
    nop                                           ; $7139: $00
    add b                                         ; $713a: $80
    and e                                         ; $713b: $a3
    dec d                                         ; $713c: $15
    cp $01                                        ; $713d: $fe $01
    rst $30                                       ; $713f: $f7
    rrca                                          ; $7140: $0f
    ei                                            ; $7141: $fb
    rlca                                          ; $7142: $07
    push de                                       ; $7143: $d5
    nop                                           ; $7144: $00
    dec hl                                        ; $7145: $2b
    db $ed                                        ; $7146: $ed
    inc de                                        ; $7147: $13
    push de                                       ; $7148: $d5
    dec hl                                        ; $7149: $2b
    xor l                                         ; $714a: $ad
    ld d, e                                       ; $714b: $53
    ld d, l                                       ; $714c: $55
    ld [bc], a                                    ; $714d: $02
    xor e                                         ; $714e: $ab
    xor l                                         ; $714f: $ad
    ld d, e                                       ; $7150: $53
    ld [c], a                                     ; $7151: $e2
    rst $18                                       ; $7152: $df
    pop hl                                        ; $7153: $e1
    ld [bc], a                                    ; $7154: $02
    nop                                           ; $7155: $00
    ldh [rDIV], a                                 ; $7156: $e0 $04
    rst $18                                       ; $7158: $df
    ldh [rIE], a                                  ; $7159: $e0 $ff
    ldh a, [$ef]                                  ; $715b: $f0 $ef
    ld [hl], d                                    ; $715d: $72
    inc bc                                        ; $715e: $03
    cp $69                                        ; $715f: $fe $69
    nop                                           ; $7161: $00
    or h                                          ; $7162: $b4
    scf                                           ; $7163: $37
    ret c                                         ; $7164: $d8

    ld e, $ed                                     ; $7165: $1e $ed
    adc $f3                                       ; $7167: $ce $f3
    ld h, a                                       ; $7169: $67
    nop                                           ; $716a: $00
    ld sp, hl                                     ; $716b: $f9
    dec [hl]                                      ; $716c: $35
    ld hl, sp-$12                                 ; $716d: $f8 $ee
    inc e                                         ; $716f: $1c
    cpl                                           ; $7170: $2f
    rla                                           ; $7171: $17
    ld d, l                                       ; $7172: $55
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    ld [c], a                                     ; $7175: $e2
    nop                                           ; $7176: $00
    or l                                          ; $7177: $b5
    nop                                           ; $7178: $00
    adc d                                         ; $7179: $8a
    nop                                           ; $717a: $00
    push de                                       ; $717b: $d5
    ld bc, $e688                                  ; $717c: $01 $88 $e6
    ld a, b                                       ; $717f: $78
    ld a, a                                       ; $7180: $7f
    jr jr_0bb_7112                                ; $7181: $18 $8f

    rlca                                          ; $7183: $07
    db $f4                                        ; $7184: $f4
    ld [$4f00], sp                                ; $7185: $08 $00 $4f
    scf                                           ; $7188: $37
    xor a                                         ; $7189: $af
    ld d, a                                       ; $718a: $57
    rst $08                                       ; $718b: $cf
    ccf                                           ; $718c: $3f
    sbc a                                         ; $718d: $9f
    ld l, a                                       ; $718e: $6f
    jr jr_0bb_71f0                                ; $718f: $18 $5f

    xor a                                         ; $7191: $af
    rra                                           ; $7192: $1f
    and h                                         ; $7193: $a4
    ld a, [de]                                    ; $7194: $1a
    ld a, h                                       ; $7195: $7c
    inc bc                                        ; $7196: $03
    ei                                            ; $7197: $fb
    db $fc                                        ; $7198: $fc
    ld a, [$fd40]                                 ; $7199: $fa $40 $fd
    adc h                                         ; $719c: $8c
    dec bc                                        ; $719d: $0b
    pop de                                        ; $719e: $d1
    ld l, $aa                                     ; $719f: $2e $aa
    ld d, l                                       ; $71a1: $55
    ld d, c                                       ; $71a2: $51
    xor [hl]                                      ; $71a3: $ae
    ld [$5da2], sp                                ; $71a4: $08 $a2 $5d
    ld b, c                                       ; $71a7: $41
    cp [hl]                                       ; $71a8: $be
    inc b                                         ; $71a9: $04
    ld [$7f80], sp                                ; $71aa: $08 $80 $7f
    xor [hl]                                      ; $71ad: $ae
    ld [hl+], a                                   ; $71ae: $22
    pop de                                        ; $71af: $d1
    sub a                                         ; $71b0: $97
    sbc b                                         ; $71b1: $98
    nop                                           ; $71b2: $00
    add l                                         ; $71b3: $85
    ld a, [$7a83]                                 ; $71b4: $fa $83 $7a
    inc de                                        ; $71b7: $13
    add c                                         ; $71b8: $81
    ld b, b                                       ; $71b9: $40
    cp $76                                        ; $71ba: $fe $76
    ld [$55aa], sp                                ; $71bc: $08 $aa $55
    sub $29                                       ; $71bf: $d6 $29
    xor e                                         ; $71c1: $ab
    ld d, h                                       ; $71c2: $54
    ld bc, $2ad5                                  ; $71c3: $01 $d5 $2a
    ld [$7415], a                                 ; $71c6: $ea $15 $74
    adc e                                         ; $71c9: $8b
    db $fc                                        ; $71ca: $fc
    ld bc, $4020                                  ; $71cb: $01 $20 $40
    ld a, h                                       ; $71ce: $7c
    ld [bc], a                                    ; $71cf: $02
    nop                                           ; $71d0: $00
    cp h                                          ; $71d1: $bc

jr_0bb_71d2:
    ld a, h                                       ; $71d2: $7c
    cp h                                          ; $71d3: $bc
    ld a, h                                       ; $71d4: $7c
    db $fd                                        ; $71d5: $fd
    add [hl]                                      ; $71d6: $86
    nop                                           ; $71d7: $00
    rst $38                                       ; $71d8: $ff
    add c                                         ; $71d9: $81
    rst $30                                       ; $71da: $f7
    adc b                                         ; $71db: $88
    rst $18                                       ; $71dc: $df
    and b                                         ; $71dd: $a0
    push af                                       ; $71de: $f5
    adc d                                         ; $71df: $8a
    nop                                           ; $71e0: $00
    rst $10                                       ; $71e1: $d7
    xor b                                         ; $71e2: $a8
    sub l                                         ; $71e3: $95
    ld [$bac5], a                                 ; $71e4: $ea $c5 $ba
    xor d                                         ; $71e7: $aa
    ld d, l                                       ; $71e8: $55
    ld [hl+], a                                   ; $71e9: $22
    ld [hl], l                                    ; $71ea: $75
    adc d                                         ; $71eb: $8a
    sub [hl]                                      ; $71ec: $96
    dec b                                         ; $71ed: $05
    inc a                                         ; $71ee: $3c
    db $fd                                        ; $71ef: $fd

jr_0bb_71f0:
    dec bc                                        ; $71f0: $0b
    ld [bc], a                                    ; $71f1: $02
    jr nz, jr_0bb_71f6                            ; $71f2: $20 $02

    nop                                           ; $71f4: $00
    ld a, d                                       ; $71f5: $7a

jr_0bb_71f6:
    add l                                         ; $71f6: $85
    db $fd                                        ; $71f7: $fd
    ld [bc], a                                    ; $71f8: $02
    rst $38                                       ; $71f9: $ff
    add b                                         ; $71fa: $80
    cp l                                          ; $71fb: $bd
    ld a, [hl]                                    ; $71fc: $7e
    nop                                           ; $71fd: $00
    rst $38                                       ; $71fe: $ff
    ld bc, $01ff                                  ; $71ff: $01 $ff $01
    rst $28                                       ; $7202: $ef
    ld de, $aa55                                  ; $7203: $11 $55 $aa
    nop                                           ; $7206: $00
    xor d                                         ; $7207: $aa
    ld d, l                                       ; $7208: $55
    ld e, a                                       ; $7209: $5f
    and b                                         ; $720a: $a0
    rst $20                                       ; $720b: $e7
    rra                                           ; $720c: $1f
    cp $61                                        ; $720d: $fe $61

jr_0bb_720f:
    jr nz, jr_0bb_720f                            ; $720f: $20 $fe

    ld b, c                                       ; $7211: $41
    ld [bc], a                                    ; $7212: $02
    ld [$a75f], sp                                ; $7213: $08 $5f $a7
    pop af                                        ; $7216: $f1
    rra                                           ; $7217: $1f
    dec [hl]                                      ; $7218: $35
    rlca                                          ; $7219: $07
    rst $38                                       ; $721a: $ff
    ld hl, $a3df                                  ; $721b: $21 $df $a3
    ld e, l                                       ; $721e: $5d
    ld [bc], a                                    ; $721f: $02
    jr jr_0bb_71d2                                ; $7220: $18 $b0

    dec bc                                        ; $7222: $0b
    ld b, b                                       ; $7223: $40
    inc bc                                        ; $7224: $03
    ld d, b                                       ; $7225: $50
    rst $38                                       ; $7226: $ff
    inc hl                                        ; $7227: $23
    inc b                                         ; $7228: $04
    ei                                            ; $7229: $fb
    ld e, e                                       ; $722a: $5b
    ld a, [bc]                                    ; $722b: $0a
    ccf                                           ; $722c: $3f
    ld bc, $01f2                                  ; $722d: $01 $f2 $01
    nop                                           ; $7230: $00
    ld [hl], e                                    ; $7231: $73
    add b                                         ; $7232: $80
    and [hl]                                      ; $7233: $a6
    ld b, c                                       ; $7234: $41
    ld b, [hl]                                    ; $7235: $46
    and b                                         ; $7236: $a0
    ld a, [hl-]                                   ; $7237: $3a
    call nz, Call_0bb_5500                        ; $7238: $c4 $00 $55
    xor d                                         ; $723b: $aa
    daa                                           ; $723c: $27
    ret nz                                        ; $723d: $c0

    db $e3                                        ; $723e: $e3
    ret nz                                        ; $723f: $c0

    ld hl, sp+$60                                 ; $7240: $f8 $60
    nop                                           ; $7242: $00
    ld e, [hl]                                    ; $7243: $5e
    cp h                                          ; $7244: $bc
    cp a                                          ; $7245: $bf
    ld b, e                                       ; $7246: $43
    ld h, [hl]                                    ; $7247: $66
    ld bc, $004b                                  ; $7248: $01 $4b $00
    nop                                           ; $724b: $00
    and h                                         ; $724c: $a4
    ld bc, $00ca                                  ; $724d: $01 $ca $00
    rst $30                                       ; $7250: $f7
    rst $38                                       ; $7251: $ff
    rra                                           ; $7252: $1f
    rlca                                          ; $7253: $07
    inc bc                                        ; $7254: $03
    rrca                                          ; $7255: $0f
    rlca                                          ; $7256: $07
    rst $28                                       ; $7257: $ef
    sbc a                                         ; $7258: $9f
    rst $38                                       ; $7259: $ff
    ld a, a                                       ; $725a: $7f
    ldh [rTIMA], a                                ; $725b: $e0 $05
    jp nc, $b802                                  ; $725d: $d2 $02 $b8

    adc $0a                                       ; $7260: $ce $0a
    ld hl, sp-$1e                                 ; $7262: $f8 $e2
    db $10                                        ; $7264: $10
    sbc d                                         ; $7265: $9a
    ld a, [de]                                    ; $7266: $1a
    ld [$6a1d], sp                                ; $7267: $08 $1d $6a
    ld [hl], l                                    ; $726a: $75
    ld h, l                                       ; $726b: $65
    ld [$4a7a], sp                                ; $726c: $08 $7a $4a
    ld [hl], l                                    ; $726f: $75
    ld b, l                                       ; $7270: $45
    inc b                                         ; $7271: $04
    nop                                           ; $7272: $00
    ld b, b                                       ; $7273: $40
    cp a                                          ; $7274: $bf
    add b                                         ; $7275: $80
    sub b                                         ; $7276: $90
    ld a, [c]                                     ; $7277: $f2
    ld b, $a0                                     ; $7278: $06 $a0
    ld e, a                                       ; $727a: $5f
    ld [$4008], sp                                ; $727b: $08 $08 $40
    cp a                                          ; $727e: $bf
    nop                                           ; $727f: $00
    rst $38                                       ; $7280: $ff
    ret nz                                        ; $7281: $c0

    or h                                          ; $7282: $b4
    dec c                                         ; $7283: $0d
    inc b                                         ; $7284: $04
    db $10                                        ; $7285: $10
    inc e                                         ; $7286: $1c
    rra                                           ; $7287: $1f
    ld h, h                                       ; $7288: $64
    ld a, a                                       ; $7289: $7f
    add h                                         ; $728a: $84
    rst $38                                       ; $728b: $ff
    ld b, b                                       ; $728c: $40
    inc b                                         ; $728d: $04
    cp b                                          ; $728e: $b8
    dec l                                         ; $728f: $2d
    add b                                         ; $7290: $80
    ldh [$e0], a                                  ; $7291: $e0 $e0
    sbc b                                         ; $7293: $98

jr_0bb_7294:
    ld hl, sp-$7c                                 ; $7294: $f8 $84
    jr nc, jr_0bb_7294                            ; $7296: $30 $fc

    add d                                         ; $7298: $82
    db $f4                                        ; $7299: $f4
    ld [$046a], sp                                ; $729a: $08 $6a $04
    adc d                                         ; $729d: $8a
    ld a, [hl-]                                   ; $729e: $3a
    push bc                                       ; $729f: $c5
    ld d, h                                       ; $72a0: $54
    ld bc, $2aab                                  ; $72a1: $01 $ab $2a
    push de                                       ; $72a4: $d5
    inc d                                         ; $72a5: $14
    db $eb                                        ; $72a6: $eb
    ld e, h                                       ; $72a7: $5c
    cp h                                          ; $72a8: $bc
    ld [bc], a                                    ; $72a9: $02
    jr jr_0bb_72b3                                ; $72aa: $18 $07

    ld e, b                                       ; $72ac: $58
    cp b                                          ; $72ad: $b8
    ld [$48f8], sp                                ; $72ae: $08 $f8 $48
    inc b                                         ; $72b1: $04
    nop                                           ; $72b2: $00

jr_0bb_72b3:
    reti                                          ; $72b3: $d9


    ld e, $c6                                     ; $72b4: $1e $c6
    ccf                                           ; $72b6: $3f
    nop                                           ; $72b7: $00
    push de                                       ; $72b8: $d5
    xor d                                         ; $72b9: $aa
    call nz, $c1bb                                ; $72ba: $c4 $bb $c1
    cp [hl]                                       ; $72bd: $be
    call nz, Call_000_00bb                        ; $72be: $c4 $bb $00
    ret nz                                        ; $72c1: $c0

    cp a                                          ; $72c2: $bf
    ret nz                                        ; $72c3: $c0

    cp a                                          ; $72c4: $bf
    ret nc                                        ; $72c5: $d0

    cp a                                          ; $72c6: $bf
    add h                                         ; $72c7: $84
    rst $38                                       ; $72c8: $ff
    ld [bc], a                                    ; $72c9: $02
    db $fd                                        ; $72ca: $fd
    dec bc                                        ; $72cb: $0b
    cp l                                          ; $72cc: $bd
    ld c, e                                       ; $72cd: $4b
    cp l                                          ; $72ce: $bd
    ld c, e                                       ; $72cf: $4b
    ld b, $18                                     ; $72d0: $06 $18
    cp l                                          ; $72d2: $bd
    db $10                                        ; $72d3: $10
    ld c, e                                       ; $72d4: $4b
    dec a                                         ; $72d5: $3d
    rlc h                                         ; $72d6: $cb $04
    add hl, bc                                    ; $72d8: $09
    xor a                                         ; $72d9: $af
    ld d, d                                       ; $72da: $52
    xor a                                         ; $72db: $af
    ld d, d                                       ; $72dc: $52
    nop                                           ; $72dd: $00
    dec hl                                        ; $72de: $2b
    sub $2b                                       ; $72df: $d6 $2b
    push de                                       ; $72e1: $d5
    ld a, [bc]                                    ; $72e2: $0a
    push af                                       ; $72e3: $f5
    ld a, [bc]                                    ; $72e4: $0a
    push af                                       ; $72e5: $f5
    nop                                           ; $72e6: $00
    ld a, [$fe25]                                 ; $72e7: $fa $25 $fe
    ld hl, $25fa                                  ; $72ea: $21 $fa $25
    ld [$0035], a                                 ; $72ed: $ea $35 $00
    ld [$e835], a                                 ; $72f0: $ea $35 $e8

jr_0bb_72f3:
    scf                                           ; $72f3: $37
    ldh [$df], a                                  ; $72f4: $e0 $df
    xor b                                         ; $72f6: $a8
    ld d, a                                       ; $72f7: $57
    nop                                           ; $72f8: $00
    add e                                         ; $72f9: $83
    ld a, l                                       ; $72fa: $7d
    and e                                         ; $72fb: $a3
    ld e, l                                       ; $72fc: $5d
    add e                                         ; $72fd: $83
    ld a, l                                       ; $72fe: $7d
    inc bc                                        ; $72ff: $03
    db $fd                                        ; $7300: $fd
    ld [c], a                                     ; $7301: $e2
    ld [bc], a                                    ; $7302: $02
    jr z, @+$21                                   ; $7303: $28 $1f

    ld h, h                                       ; $7305: $64
    ld [hl], l                                    ; $7306: $75
    inc d                                         ; $7307: $14
    cp $ff                                        ; $7308: $fe $ff
    ld sp, hl                                     ; $730a: $f9
    ld b, b                                       ; $730b: $40
    rlca                                          ; $730c: $07
    add c                                         ; $730d: $81
    jr c, @+$01                                   ; $730e: $38 $ff

    ld b, $9a                                     ; $7310: $06 $9a
    rlca                                          ; $7312: $07

jr_0bb_7313:
    dec hl                                        ; $7313: $2b
    ld e, $e6                                     ; $7314: $1e $e6
    rra                                           ; $7316: $1f
    cp a                                          ; $7317: $bf
    rst $38                                       ; $7318: $ff
    rra                                           ; $7319: $1f
    nop                                           ; $731a: $00
    rst $38                                       ; $731b: $ff
    dec b                                         ; $731c: $05
    ldh [$2e], a                                  ; $731d: $e0 $2e
    ret nc                                        ; $731f: $d0

    inc de                                        ; $7320: $13
    add sp, $0e                                   ; $7321: $e8 $0e
    ld [$81f0], sp                                ; $7323: $08 $f0 $81
    db $fc                                        ; $7326: $fc
    jp nz, Jump_000_01e0                          ; $7327: $c2 $e0 $01

    rst $38                                       ; $732a: $ff
    db $fc                                        ; $732b: $fc
    ld b, $00                                     ; $732c: $06 $00
    ld bc, $018a                                  ; $732e: $01 $8a $01
    ld d, l                                       ; $7331: $55
    ld [bc], a                                    ; $7332: $02
    xor l                                         ; $7333: $ad
    ld [bc], a                                    ; $7334: $02
    ld e, e                                       ; $7335: $5b
    rra                                           ; $7336: $1f
    dec b                                         ; $7337: $05
    cp a                                          ; $7338: $bf
    inc bc                                        ; $7339: $03
    and [hl]                                      ; $733a: $a6
    rlca                                          ; $733b: $07
    ld [hl-], a                                   ; $733c: $32
    inc b                                         ; $733d: $04
    xor a                                         ; $733e: $af
    ld d, b                                       ; $733f: $50
    ld a, [hl+]                                   ; $7340: $2a
    ld b, c                                       ; $7341: $41
    call nz, Call_000_080a                        ; $7342: $c4 $0a $08
    db $fd                                        ; $7345: $fd
    cp $40                                        ; $7346: $fe $40
    ret nz                                        ; $7348: $c0

    ld [bc], a                                    ; $7349: $02
    jr nc, jr_0bb_7313                            ; $734a: $30 $c7

    ld b, a                                       ; $734c: $47
    ret z                                         ; $734d: $c8

    nop                                           ; $734e: $00
    ld c, [hl]                                    ; $734f: $4e
    pop de                                        ; $7350: $d1
    ld bc, $0502                                  ; $7351: $01 $02 $05
    ld a, [bc]                                    ; $7354: $0a
    ld [bc], a                                    ; $7355: $02
    dec c                                         ; $7356: $0d
    nop                                           ; $7357: $00
    dec b                                         ; $7358: $05
    ld a, [hl-]                                   ; $7359: $3a
    ccf                                           ; $735a: $3f
    ret nz                                        ; $735b: $c0

    push de                                       ; $735c: $d5
    ld a, [hl+]                                   ; $735d: $2a
    ld a, [hl-]                                   ; $735e: $3a
    push bc                                       ; $735f: $c5
    jr nz, jr_0bb_72f3                            ; $7360: $20 $91

    ld l, [hl]                                    ; $7362: $6e
    sbc l                                         ; $7363: $9d
    dec e                                         ; $7364: $1d
    cp h                                          ; $7365: $bc
    ld b, h                                       ; $7366: $44
    db $f4                                        ; $7367: $f4
    inc c                                         ; $7368: $0c
    or h                                          ; $7369: $b4
    nop                                           ; $736a: $00
    ld c, h                                       ; $736b: $4c
    db $ec                                        ; $736c: $ec

jr_0bb_736d:
    inc d                                         ; $736d: $14
    inc [hl]                                      ; $736e: $34
    call z, $81fe                                 ; $736f: $cc $fe $81
    rst $38                                       ; $7372: $ff
    nop                                           ; $7373: $00
    add b                                         ; $7374: $80
    rst $28                                       ; $7375: $ef
    sub b                                         ; $7376: $90
    cp a                                          ; $7377: $bf
    ret nz                                        ; $7378: $c0

    rst $30                                       ; $7379: $f7
    adc b                                         ; $737a: $88

jr_0bb_737b:
    cp e                                          ; $737b: $bb
    nop                                           ; $737c: $00
    call nz, $a9d6                                ; $737d: $c4 $d6 $a9
    or $89                                        ; $7380: $f6 $89
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    add b                                         ; $7386: $80
    add b                                         ; $7387: $80
    ld a, b                                       ; $7388: $78
    ret c                                         ; $7389: $d8

    ld h, $b6                                     ; $738a: $26 $b6
    ld c, c                                       ; $738c: $49
    or $01                                        ; $738d: $f6 $01
    add hl, bc                                    ; $738f: $09
    cp e                                          ; $7390: $bb
    ld b, h                                       ; $7391: $44
    jr jr_0bb_737b                                ; $7392: $18 $e7

    rrca                                          ; $7394: $0f
    ld hl, sp+$02                                 ; $7395: $f8 $02
    ld b, b                                       ; $7397: $40
    nop                                           ; $7398: $00
    ld a, b                                       ; $7399: $78
    rrca                                          ; $739a: $0f
    jr c, jr_0bb_736d                             ; $739b: $38 $d0

    cp a                                          ; $739d: $bf
    sub h                                         ; $739e: $94
    rst $38                                       ; $739f: $ff
    sub l                                         ; $73a0: $95
    adc b                                         ; $73a1: $88
    ld [bc], a                                    ; $73a2: $02
    nop                                           ; $73a3: $00
    cp l                                          ; $73a4: $bd
    rst $38                                       ; $73a5: $ff
    or l                                          ; $73a6: $b5
    or b                                          ; $73a7: $b0
    nop                                           ; $73a8: $00
    db $dd                                        ; $73a9: $dd
    rst $38                                       ; $73aa: $ff
    dec a                                         ; $73ab: $3d
    nop                                           ; $73ac: $00
    srl l                                         ; $73ad: $cb $3d
    bit 1, l                                      ; $73af: $cb $4d
    ei                                            ; $73b1: $fb
    dec c                                         ; $73b2: $0d
    ei                                            ; $73b3: $fb
    ld e, l                                       ; $73b4: $5d
    add b                                         ; $73b5: $80
    ld [bc], a                                    ; $73b6: $02
    db $10                                        ; $73b7: $10
    db $fd                                        ; $73b8: $fd
    ei                                            ; $73b9: $fb
    nop                                           ; $73ba: $00
    rst $38                                       ; $73bb: $ff
    ld [$20f7], sp                                ; $73bc: $08 $f7 $20
    add b                                         ; $73bf: $80
    ld bc, $2803                                  ; $73c0: $01 $03 $28
    rst $38                                       ; $73c3: $ff
    and b                                         ; $73c4: $a0
    rst $38                                       ; $73c5: $ff
    xor b                                         ; $73c6: $a8
    rst $38                                       ; $73c7: $ff
    cp d                                          ; $73c8: $ba
    pop de                                        ; $73c9: $d1
    xor d                                         ; $73ca: $aa
    ld bc, $09b0                                  ; $73cb: $01 $b0 $09
    ld hl, $07e7                                  ; $73ce: $21 $e7 $07
    xor e                                         ; $73d1: $ab
    rst $38                                       ; $73d2: $ff
    add hl, hl                                    ; $73d3: $29
    ld [c], a                                     ; $73d4: $e2
    nop                                           ; $73d5: $00
    ld bc, $fd03                                  ; $73d6: $01 $03 $fd
    add e                                         ; $73d9: $83
    db $fd                                        ; $73da: $fd
    inc hl                                        ; $73db: $23
    db $fd                                        ; $73dc: $fd
    and e                                         ; $73dd: $a3
    ld [bc], a                                    ; $73de: $02
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    or e                                          ; $73e1: $b3
    db $fd                                        ; $73e2: $fd
    ei                                            ; $73e3: $fb
    db $fd                                        ; $73e4: $fd
    db $d3                                        ; $73e5: $d3
    rst $38                                       ; $73e6: $ff
    ld a, a                                       ; $73e7: $7f
    cp a                                          ; $73e8: $bf
    nop                                           ; $73e9: $00
    ccf                                           ; $73ea: $3f
    rst $38                                       ; $73eb: $ff
    scf                                           ; $73ec: $37
    rst $08                                       ; $73ed: $cf
    dec c                                         ; $73ee: $0d
    di                                            ; $73ef: $f3
    ld b, $f9                                     ; $73f0: $06 $f9
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    rst $38                                       ; $73f4: $ff
    ld h, c                                       ; $73f5: $61
    sbc a                                         ; $73f6: $9f
    adc a                                         ; $73f7: $8f
    ld a, a                                       ; $73f8: $7f
    ld [bc], a                                    ; $73f9: $02
    rst $38                                       ; $73fa: $ff
    inc b                                         ; $73fb: $04
    dec e                                         ; $73fc: $1d
    rst $38                                       ; $73fd: $ff
    ld [c], a                                     ; $73fe: $e2
    rst $38                                       ; $73ff: $ff
    dec d                                         ; $7400: $15
    ld b, b                                       ; $7401: $40
    nop                                           ; $7402: $00
    ld bc, $40ff                                  ; $7403: $01 $ff $40
    inc b                                         ; $7406: $04
    ld e, [hl]                                    ; $7407: $5e
    ld b, $37                                     ; $7408: $06 $37
    rst $38                                       ; $740a: $ff
    ld d, l                                       ; $740b: $55
    rst $38                                       ; $740c: $ff
    xor d                                         ; $740d: $aa
    rst $38                                       ; $740e: $ff
    ld bc, $ff45                                  ; $740f: $01 $45 $ff
    ld a, [bc]                                    ; $7412: $0a
    rst $38                                       ; $7413: $ff
    ld b, h                                       ; $7414: $44
    rst $38                                       ; $7415: $ff
    ld e, b                                       ; $7416: $58
    ld e, c                                       ; $7417: $59
    inc bc                                        ; $7418: $03
    xor d                                         ; $7419: $aa
    or [hl]                                       ; $741a: $b6
    dec c                                         ; $741b: $0d
    xor a                                         ; $741c: $af
    inc d                                         ; $741d: $14
    db $10                                        ; $741e: $10
    ld de, $0014                                  ; $741f: $11 $14 $00
    dec d                                         ; $7422: $15
    rrca                                          ; $7423: $0f
    dec [hl]                                      ; $7424: $35
    cp $02                                        ; $7425: $fe $02
    rst $38                                       ; $7427: $ff
    ld e, [hl]                                    ; $7428: $5e
    rst $38                                       ; $7429: $ff
    xor l                                         ; $742a: $ad
    rst $38                                       ; $742b: $ff
    ld c, e                                       ; $742c: $4b
    call nc, $b715                                ; $742d: $d4 $15 $b7
    and b                                         ; $7430: $a0
    jp c, Jump_0bb_7e15                           ; $7431: $da $15 $7e

    or a                                          ; $7434: $b7
    inc h                                         ; $7435: $24
    db $f4                                        ; $7436: $f4
    rst $38                                       ; $7437: $ff
    db $e4                                        ; $7438: $e4
    rst $38                                       ; $7439: $ff
    di                                            ; $743a: $f3
    jr z, @+$01                                   ; $743b: $28 $ff

    db $ec                                        ; $743d: $ec
    ld [hl], d                                    ; $743e: $72
    ld bc, $95f0                                  ; $743f: $01 $f0 $95
    rlca                                          ; $7442: $07
    ld e, l                                       ; $7443: $5d
    ld [c], a                                     ; $7444: $e2
    ld e, c                                       ; $7445: $59
    nop                                           ; $7446: $00
    and $43                                       ; $7447: $e6 $43
    db $fc                                        ; $7449: $fc
    add d                                         ; $744a: $82
    cp l                                          ; $744b: $bd
    ld [hl+], a                                   ; $744c: $22
    dec a                                         ; $744d: $3d
    jr jr_0bb_7450                                ; $744e: $18 $00

jr_0bb_7450:
    rla                                           ; $7450: $17
    adc e                                         ; $7451: $8b
    adc h                                         ; $7452: $8c
    and $e7                                       ; $7453: $e6 $e7
    ld l, d                                       ; $7455: $6a
    sub l                                         ; $7456: $95
    ld b, h                                       ; $7457: $44
    nop                                           ; $7458: $00
    cp e                                          ; $7459: $bb
    ld d, l                                       ; $745a: $55
    xor d                                         ; $745b: $aa
    ld [hl], b                                    ; $745c: $70
    adc a                                         ; $745d: $8f
    add h                                         ; $745e: $84
    ld a, e                                       ; $745f: $7b
    xor [hl]                                      ; $7460: $ae
    nop                                           ; $7461: $00
    ld d, c                                       ; $7462: $51
    ld [hl-], a                                   ; $7463: $32
    call $fc03                                    ; $7464: $cd $03 $fc
    inc d                                         ; $7467: $14
    db $ec                                        ; $7468: $ec
    db $f4                                        ; $7469: $f4
    nop                                           ; $746a: $00
    inc c                                         ; $746b: $0c
    ld c, h                                       ; $746c: $4c
    or h                                          ; $746d: $b4
    xor h                                         ; $746e: $ac
    ld d, h                                       ; $746f: $54
    call c, Call_000_0c24                         ; $7470: $dc $24 $0c
    nop                                           ; $7473: $00
    db $f4                                        ; $7474: $f4
    db $e4                                        ; $7475: $e4
    inc e                                         ; $7476: $1c
    ld d, h                                       ; $7477: $54
    xor h                                         ; $7478: $ac
    ld a, [$a285]                                 ; $7479: $fa $85 $a2
    nop                                           ; $747c: $00
    db $dd                                        ; $747d: $dd
    res 6, h                                      ; $747e: $cb $b4
    rst $10                                       ; $7480: $d7
    xor b                                         ; $7481: $a8
    pop hl                                        ; $7482: $e1
    sbc [hl]                                      ; $7483: $9e
    xor b                                         ; $7484: $a8
    nop                                           ; $7485: $00
    rst $10                                       ; $7486: $d7
    sub l                                         ; $7487: $95
    ld [$bbc4], a                                 ; $7488: $ea $c4 $bb
    jp hl                                         ; $748b: $e9


    ld d, $11                                     ; $748c: $16 $11
    nop                                           ; $748e: $00
    xor $d3                                       ; $748f: $ee $d3
    inc l                                         ; $7491: $2c
    ld h, e                                       ; $7492: $63
    sbc h                                         ; $7493: $9c
    db $e4                                        ; $7494: $e4
    dec de                                        ; $7495: $1b
    sbc d                                         ; $7496: $9a
    nop                                           ; $7497: $00
    ld h, l                                       ; $7498: $65
    ld [$a1f7], sp                                ; $7499: $08 $f7 $a1
    ld e, a                                       ; $749c: $5f
    ld hl, sp+$0f                                 ; $749d: $f8 $0f
    cp b                                          ; $749f: $b8
    nop                                           ; $74a0: $00
    ld c, a                                       ; $74a1: $4f
    ld l, b                                       ; $74a2: $68
    sbc a                                         ; $74a3: $9f
    ld b, a                                       ; $74a4: $47
    or a                                          ; $74a5: $b7
    ret nc                                        ; $74a6: $d0

    jr nc, jr_0bb_750a                            ; $74a7: $30 $61

    dec b                                         ; $74a9: $05
    and c                                         ; $74aa: $a1
    call nz, $8f47                                ; $74ab: $c4 $47 $8f
    adc a                                         ; $74ae: $8f
    add $09                                       ; $74af: $c6 $09
    cp a                                          ; $74b1: $bf
    and $0d                                       ; $74b2: $e6 $0d
    halt                                          ; $74b4: $76
    rst $18                                       ; $74b5: $df
    ret nc                                        ; $74b6: $d0

    ld a, [bc]                                    ; $74b7: $0a
    ld a, [bc]                                    ; $74b8: $0a
    dec b                                         ; $74b9: $05
    inc sp                                        ; $74ba: $33
    dec b                                         ; $74bb: $05
    rst $30                                       ; $74bc: $f7
    ldh a, [rSB]                                  ; $74bd: $f0 $01
    jr z, @+$28                                   ; $74bf: $28 $26

    ld hl, sp-$3f                                 ; $74c1: $f8 $c1
    push af                                       ; $74c3: $f5
    nop                                           ; $74c4: $00
    ld [bc], a                                    ; $74c5: $02
    db $10                                        ; $74c6: $10
    ld l, [hl]                                    ; $74c7: $6e
    pop af                                        ; $74c8: $f1
    cp $c1                                        ; $74c9: $fe $c1
    ld a, a                                       ; $74cb: $7f

jr_0bb_74cc:
    ld h, $04                                     ; $74cc: $26 $04
    db $10                                        ; $74ce: $10
    ld [$fbff], a                                 ; $74cf: $ea $ff $fb
    ld b, h                                       ; $74d2: $44
    ld h, $7f                                     ; $74d3: $26 $7f
    rst $38                                       ; $74d5: $ff
    ld [hl], a                                    ; $74d6: $77
    cp a                                          ; $74d7: $bf
    db $10                                        ; $74d8: $10
    ccf                                           ; $74d9: $3f
    call z, Call_000_06af                         ; $74da: $cc $af $06
    ld [bc], a                                    ; $74dd: $02
    db $fd                                        ; $74de: $fd
    rst $38                                       ; $74df: $ff
    or $ff                                        ; $74e0: $f6 $ff
    nop                                           ; $74e2: $00
    add sp, -$01                                  ; $74e3: $e8 $ff
    pop de                                        ; $74e5: $d1
    cp $17                                        ; $74e6: $fe $17
    db $eb                                        ; $74e8: $eb
    rst $28                                       ; $74e9: $ef
    rra                                           ; $74ea: $1f
    nop                                           ; $74eb: $00
    rst $20                                       ; $74ec: $e7
    ei                                            ; $74ed: $fb
    rst $10                                       ; $74ee: $d7
    ei                                            ; $74ef: $fb
    xor a                                         ; $74f0: $af
    rst $30                                       ; $74f1: $f7
    sbc a                                         ; $74f2: $9f
    rst $28                                       ; $74f3: $ef
    jr nz, @+$41                                  ; $74f4: $20 $3f

    rst $18                                       ; $74f6: $df
    or c                                          ; $74f7: $b1
    ld e, $e0                                     ; $74f8: $1e $e0
    rra                                           ; $74fa: $1f
    jr nc, jr_0bb_74cc                            ; $74fb: $30 $cf

    cp d                                          ; $74fd: $ba
    ld [bc], a                                    ; $74fe: $02
    push bc                                       ; $74ff: $c5
    sbc l                                         ; $7500: $9d
    ld [c], a                                     ; $7501: $e2
    rst $08                                       ; $7502: $cf
    ldh a, [$e0]                                  ; $7503: $f0 $e0
    ret nz                                        ; $7505: $c0

    ld d, $0a                                     ; $7506: $16 $0a
    nop                                           ; $7508: $00
    rst $38                                       ; $7509: $ff

jr_0bb_750a:
    inc c                                         ; $750a: $0c
    rst $38                                       ; $750b: $ff
    add d                                         ; $750c: $82
    ld a, a                                       ; $750d: $7f
    ld d, c                                       ; $750e: $51
    xor a                                         ; $750f: $af
    xor d                                         ; $7510: $aa

jr_0bb_7511:
    add b                                         ; $7511: $80
    add d                                         ; $7512: $82
    rlca                                          ; $7513: $07
    ld l, b                                       ; $7514: $68
    sub a                                         ; $7515: $97
    or h                                          ; $7516: $b4
    sra d                                         ; $7517: $cb $2a
    rst $38                                       ; $7519: $ff
    db $10                                        ; $751a: $10
    add b                                         ; $751b: $80
    jr nc, jr_0bb_751f                            ; $751c: $30 $01

    ld d, b                                       ; $751e: $50

jr_0bb_751f:
    rst $38                                       ; $751f: $ff
    inc hl                                        ; $7520: $23
    rst $38                                       ; $7521: $ff
    dec bc                                        ; $7522: $0b
    rst $38                                       ; $7523: $ff
    ld [$ff00], sp                                ; $7524: $08 $00 $ff
    ld b, e                                       ; $7527: $43
    rst $38                                       ; $7528: $ff
    and e                                         ; $7529: $a3
    rst $38                                       ; $752a: $ff
    adc l                                         ; $752b: $8d
    rst $38                                       ; $752c: $ff
    dec a                                         ; $752d: $3d
    call nc, Call_000_16a6                        ; $752e: $d4 $a6 $16
    dec a                                         ; $7531: $3d
    ld a, [bc]                                    ; $7532: $0a
    db $fc                                        ; $7533: $fc
    or $06                                        ; $7534: $f6 $06
    rst $18                                       ; $7536: $df
    ld l, d                                       ; $7537: $6a
    rlca                                          ; $7538: $07
    db $fc                                        ; $7539: $fc
    rst $38                                       ; $753a: $ff
    nop                                           ; $753b: $00
    di                                            ; $753c: $f3
    db $fc                                        ; $753d: $fc
    adc h                                         ; $753e: $8c
    di                                            ; $753f: $f3
    jr nc, jr_0bb_7511                            ; $7540: $30 $cf

    pop bc                                        ; $7542: $c1
    ccf                                           ; $7543: $3f
    call nc, Call_000_05be                        ; $7544: $d4 $be $05
    sbc d                                         ; $7547: $9a
    ld bc, $2e55                                  ; $7548: $01 $55 $2e
    nop                                           ; $754b: $00

jr_0bb_754c:
    ld d, a                                       ; $754c: $57
    add b                                         ; $754d: $80
    ld [bc], a                                    ; $754e: $02
    ld e, a                                       ; $754f: $5f
    rst $38                                       ; $7550: $ff
    jr nc, jr_0bb_754c                            ; $7551: $30 $f9

    ld sp, hl                                     ; $7553: $f9
    rst $10                                       ; $7554: $d7
    rla                                           ; $7555: $17
    sub $36                                       ; $7556: $d6 $36
    sub b                                         ; $7558: $90
    rst $28                                       ; $7559: $ef
    ld h, [hl]                                    ; $755a: $66
    ld a, c                                       ; $755b: $79
    ld bc, $1f1f                                  ; $755c: $01 $1f $1f
    ret nz                                        ; $755f: $c0

    ret nz                                        ; $7560: $c0

    ldh a, [$f0]                                  ; $7561: $f0 $f0
    db $fc                                        ; $7563: $fc
    dec e                                         ; $7564: $1d
    dec b                                         ; $7565: $05
    ld bc, $ffff                                  ; $7566: $01 $ff $ff
    inc d                                         ; $7569: $14
    db $ec                                        ; $756a: $ec
    sbc h                                         ; $756b: $9c
    ld h, h                                       ; $756c: $64
    inc b                                         ; $756d: $04
    ld b, l                                       ; $756e: $45
    inc b                                         ; $756f: $04
    ld b, b                                       ; $7570: $40
    inc b                                         ; $7571: $04
    ld bc, $c310                                  ; $7572: $01 $10 $c3
    jp $dea1                                      ; $7575: $c3 $a1 $de


    and l                                         ; $7578: $a5
    jp c, $8108                                   ; $7579: $da $08 $81

    rst $38                                       ; $757c: $ff
    cp $fe                                        ; $757d: $fe $fe
    ld a, b                                       ; $757f: $78
    dec bc                                        ; $7580: $0b
    add e                                         ; $7581: $83
    add e                                         ; $7582: $83
    rrca                                          ; $7583: $0f
    nop                                           ; $7584: $00
    rrca                                          ; $7585: $0f
    scf                                           ; $7586: $37
    adc $78                                       ; $7587: $ce $78
    cp b                                          ; $7589: $b8
    jp $0fc3                                      ; $758a: $c3 $c3 $0f


jr_0bb_758d:
    inc a                                         ; $758d: $3c
    rrca                                          ; $758e: $0f
    ccf                                           ; $758f: $3f
    ld e, d                                       ; $7590: $5a
    nop                                           ; $7591: $00
    or $15                                        ; $7592: $f6 $15
    ld [$0620], sp                                ; $7594: $08 $20 $06
    adc b                                         ; $7597: $88
    rst $28                                       ; $7598: $ef
    rst $38                                       ; $7599: $ff
    ld hl, $ff76                                  ; $759a: $21 $76 $ff
    sub l                                         ; $759d: $95
    ld bc, $fff0                                  ; $759e: $01 $f0 $ff
    ld hl, sp-$05                                 ; $75a1: $f8 $fb
    ld e, l                                       ; $75a3: $5d
    jr @-$7e                                      ; $75a4: $18 $80

    sub b                                         ; $75a6: $90
    rrca                                          ; $75a7: $0f
    ld bc, $00ff                                  ; $75a8: $01 $ff $00
    xor d                                         ; $75ab: $aa
    ld d, l                                       ; $75ac: $55
    ld d, h                                       ; $75ad: $54
    xor e                                         ; $75ae: $ab
    inc b                                         ; $75af: $04
    ld hl, $04df                                  ; $75b0: $21 $df $04
    rst $38                                       ; $75b3: $ff
    res 6, [hl]                                   ; $75b4: $cb $b6
    ld [$4373], sp                                ; $75b6: $08 $73 $43
    inc c                                         ; $75b9: $0c
    cp l                                          ; $75ba: $bd
    sub l                                         ; $75bb: $95
    ld a, a                                       ; $75bc: $7f
    dec hl                                        ; $75bd: $2b
    sbc [hl]                                      ; $75be: $9e
    db $10                                        ; $75bf: $10
    or c                                          ; $75c0: $b1
    rrca                                          ; $75c1: $0f
    ret c                                         ; $75c2: $d8

    rst $20                                       ; $75c3: $e7
    dec c                                         ; $75c4: $0d
    call c, $cde3                                 ; $75c5: $dc $e3 $cd
    ld a, [c]                                     ; $75c8: $f2
    db $fc                                        ; $75c9: $fc
    jr jr_0bb_758d                                ; $75ca: $18 $c1

    rrca                                          ; $75cc: $0f
    rra                                           ; $75cd: $1f
    ld b, h                                       ; $75ce: $44
    inc bc                                        ; $75cf: $03
    inc b                                         ; $75d0: $04
    ld bc, $67ff                                  ; $75d1: $01 $ff $67
    sbc a                                         ; $75d4: $9f
    rrca                                          ; $75d5: $0f
    adc b                                         ; $75d6: $88
    daa                                           ; $75d7: $27
    di                                            ; $75d8: $f3
    db $fc                                        ; $75d9: $fc
    nop                                           ; $75da: $00
    call z, Call_000_1af3                         ; $75db: $cc $f3 $1a
    push hl                                       ; $75de: $e5
    adc [hl]                                      ; $75df: $8e
    pop af                                        ; $75e0: $f1
    call c, $00e3                                 ; $75e1: $dc $e3 $00
    push de                                       ; $75e4: $d5
    db $eb                                        ; $75e5: $eb
    jp z, $d1f7                                   ; $75e6: $ca $f7 $d1

    rst $28                                       ; $75e9: $ef
    ld [bc], a                                    ; $75ea: $02
    rst $38                                       ; $75eb: $ff
    ld b, b                                       ; $75ec: $40
    dec b                                         ; $75ed: $05
    call c, $ba10                                 ; $75ee: $dc $10 $ba

jr_0bb_75f1:
    rst $38                                       ; $75f1: $ff
    ld a, l                                       ; $75f2: $7d
    rst $38                                       ; $75f3: $ff
    cp b                                          ; $75f4: $b8
    rst $38                                       ; $75f5: $ff
    ld d, c                                       ; $75f6: $51
    ld d, h                                       ; $75f7: $54
    ld b, [hl]                                    ; $75f8: $46
    db $10                                        ; $75f9: $10
    db $eb                                        ; $75fa: $eb
    ld d, h                                       ; $75fb: $54
    ld [bc], a                                    ; $75fc: $02
    ld a, [bc]                                    ; $75fd: $0a
    rst $38                                       ; $75fe: $ff
    inc d                                         ; $75ff: $14
    add b                                         ; $7600: $80
    inc bc                                        ; $7601: $03
    ld d, l                                       ; $7602: $55
    nop                                           ; $7603: $00
    cp [hl]                                       ; $7604: $be
    rla                                           ; $7605: $17
    xor a                                         ; $7606: $af
    ld hl, sp+$00                                 ; $7607: $f8 $00
    xor d                                         ; $7609: $aa
    ld [hl], h                                    ; $760a: $74
    ld [de], a                                    ; $760b: $12
    ld b, c                                       ; $760c: $41
    adc $47                                       ; $760d: $ce $47
    ld b, b                                       ; $760f: $40
    ld e, a                                       ; $7610: $5f
    cp [hl]                                       ; $7611: $be
    ld [bc], a                                    ; $7612: $02
    ld d, l                                       ; $7613: $55
    rst $38                                       ; $7614: $ff
    ld hl, sp-$08                                 ; $7615: $f8 $f8
    rst $30                                       ; $7617: $f7
    rst $38                                       ; $7618: $ff
    rlca                                          ; $7619: $07
    ldh a, [$fe]                                  ; $761a: $f0 $fe
    ldh a, [$fc]                                  ; $761c: $f0 $fc
    ld hl, sp+$79                                 ; $761e: $f8 $79
    scf                                           ; $7620: $37
    ldh [rSB], a                                  ; $7621: $e0 $01
    ld a, e                                       ; $7623: $7b
    rlca                                          ; $7624: $07
    pop bc                                        ; $7625: $c1
    ld a, [de]                                    ; $7626: $1a
    cpl                                           ; $7627: $2f
    cp [hl]                                       ; $7628: $be
    dec bc                                        ; $7629: $0b
    cp $ff                                        ; $762a: $fe $ff
    push af                                       ; $762c: $f5
    rst $38                                       ; $762d: $ff
    ld [$0316], a                                 ; $762e: $ea $16 $03
    ld d, b                                       ; $7631: $50
    xor b                                         ; $7632: $a8
    inc b                                         ; $7633: $04
    rlca                                          ; $7634: $07
    xor d                                         ; $7635: $aa
    or b                                          ; $7636: $b0
    ld [de], a                                    ; $7637: $12
    ld b, c                                       ; $7638: $41
    rst $38                                       ; $7639: $ff
    add d                                         ; $763a: $82
    rst $38                                       ; $763b: $ff
    ld d, b                                       ; $763c: $50
    ld b, b                                       ; $763d: $40
    dec b                                         ; $763e: $05
    ld d, $a8                                     ; $763f: $16 $a8
    ld [$8100], sp                                ; $7641: $08 $00 $81
    cp $4a                                        ; $7644: $fe $4a
    push af                                       ; $7646: $f5

jr_0bb_7647:
    nop                                           ; $7647: $00
    sub l                                         ; $7648: $95
    ld [$f50a], a                                 ; $7649: $ea $0a $f5

jr_0bb_764c:
    ld d, $e9                                     ; $764c: $16 $e9
    dec l                                         ; $764e: $2d
    db $d3                                        ; $764f: $d3
    inc b                                         ; $7650: $04
    nop                                           ; $7651: $00
    rst $38                                       ; $7652: $ff
    add sp, $17                                   ; $7653: $e8 $17
    nop                                           ; $7655: $00
    ld [hl], d                                    ; $7656: $72
    ld b, h                                       ; $7657: $44
    adc b                                         ; $7658: $88
    rst $30                                       ; $7659: $f7
    jr nc, jr_0bb_75f1                            ; $765a: $30 $95

    ld [$29cc], a                                 ; $765c: $ea $cc $29
    call c, $800f                                 ; $765f: $dc $0f $80
    rst $38                                       ; $7662: $ff
    inc [hl]                                      ; $7663: $34
    sra b                                         ; $7664: $cb $28
    add b                                         ; $7666: $80
    ld a, a                                       ; $7667: $7f
    dec [hl]                                      ; $7668: $35
    add hl, sp                                    ; $7669: $39
    ld [bc], a                                    ; $766a: $02
    ld e, b                                       ; $766b: $58
    rlca                                          ; $766c: $07
    ret nc                                        ; $766d: $d0

    cpl                                           ; $766e: $2f
    ld a, [hl+]                                   ; $766f: $2a
    jr jr_0bb_7647                                ; $7670: $18 $d5

    rst $10                                       ; $7672: $d7
    add sp, -$10                                  ; $7673: $e8 $f0
    add hl, de                                    ; $7675: $19
    ld h, b                                       ; $7676: $60
    ld [$ff0a], sp                                ; $7677: $08 $0a $ff
    sub l                                         ; $767a: $95
    add hl, bc                                    ; $767b: $09
    ld a, a                                       ; $767c: $7f
    ld c, d                                       ; $767d: $4a
    cp a                                          ; $767e: $bf
    sub b                                         ; $767f: $90
    nop                                           ; $7680: $00
    dec b                                         ; $7681: $05
    xor d                                         ; $7682: $aa
    push de                                       ; $7683: $d5
    ld [hl], b                                    ; $7684: $70
    jr jr_0bb_76e9                                ; $7685: $18 $62

    inc d                                         ; $7687: $14
    ld [hl], b                                    ; $7688: $70
    inc bc                                        ; $7689: $03
    ld a, l                                       ; $768a: $7d
    ld c, $0a                                     ; $768b: $0e $0a
    push af                                       ; $768d: $f5
    and b                                         ; $768e: $a0
    db $fc                                        ; $768f: $fc

jr_0bb_7690:
    ld bc, $00a0                                  ; $7690: $01 $a0 $00
    rst $38                                       ; $7693: $ff
    dec b                                         ; $7694: $05
    ld a, [$f40b]                                 ; $7695: $fa $0b $f4
    ld [hl], $c9                                  ; $7698: $36 $c9
    ld e, l                                       ; $769a: $5d
    db $10                                        ; $769b: $10
    and e                                         ; $769c: $a3
    or e                                          ; $769d: $b3
    ld c, a                                       ; $769e: $4f
    sub e                                         ; $769f: $93
    ld c, $2a                                     ; $76a0: $0e $2a
    push de                                       ; $76a2: $d5
    ld b, b                                       ; $76a3: $40
    cp a                                          ; $76a4: $bf
    ldh [$b2], a                                  ; $76a5: $e0 $b2
    jr z, jr_0bb_764c                             ; $76a7: $28 $a3

    ld c, $50                                     ; $76a9: $0e $50
    ld c, b                                       ; $76ab: $48
    and b                                         ; $76ac: $a0
    ld a, [bc]                                    ; $76ad: $0a
    and [hl]                                      ; $76ae: $a6
    dec b                                         ; $76af: $05
    ld b, b                                       ; $76b0: $40
    nop                                           ; $76b1: $00
    ld bc, $7860                                  ; $76b2: $01 $60 $78
    ret z                                         ; $76b5: $c8

    ld l, b                                       ; $76b6: $68
    ret c                                         ; $76b7: $d8

    ld d, b                                       ; $76b8: $50
    ldh a, [rSC]                                  ; $76b9: $f0 $02
    ld h, b                                       ; $76bb: $60
    ldh [rP1], a                                  ; $76bc: $e0 $00
    add b                                         ; $76be: $80
    nop                                           ; $76bf: $00
    add b                                         ; $76c0: $80
    ld bc, $fc08                                  ; $76c1: $01 $08 $fc
    db $10                                        ; $76c4: $10
    rst $38                                       ; $76c5: $ff
    ld hl, sp-$02                                 ; $76c6: $f8 $fe
    inc b                                         ; $76c8: $04
    ld c, b                                       ; $76c9: $48
    rst $30                                       ; $76ca: $f7
    rst $38                                       ; $76cb: $ff
    rst $28                                       ; $76cc: $ef
    rst $38                                       ; $76cd: $ff
    and e                                         ; $76ce: $a3
    ld bc, $0048                                  ; $76cf: $01 $48 $00
    ld c, $00                                     ; $76d2: $0e $00
    db $fd                                        ; $76d4: $fd
    rst $38                                       ; $76d5: $ff
    rst $30                                       ; $76d6: $f7
    inc c                                         ; $76d7: $0c
    jr nz, @+$04                                  ; $76d8: $20 $02

    ld [$fd7a], sp                                ; $76da: $08 $7a $fd
    inc e                                         ; $76dd: $1c
    ld b, b                                       ; $76de: $40
    ld [de], a                                    ; $76df: $12
    ld [$482c], sp                                ; $76e0: $08 $2c $48
    ld [hl+], a                                   ; $76e3: $22
    ld [$20fa], sp                                ; $76e4: $08 $fa $20
    ld h, b                                       ; $76e7: $60
    xor d                                         ; $76e8: $aa

jr_0bb_76e9:
    and d                                         ; $76e9: $a2

jr_0bb_76ea:
    jr nc, jr_0bb_774c                            ; $76ea: $30 $60

    add b                                         ; $76ec: $80
    ld h, b                                       ; $76ed: $60
    nop                                           ; $76ee: $00
    cp a                                          ; $76ef: $bf
    rst $38                                       ; $76f0: $ff
    ld a, a                                       ; $76f1: $7f
    ld d, b                                       ; $76f2: $50
    jr z, jr_0bb_76ea                             ; $76f3: $28 $f5

    pop de                                        ; $76f5: $d1
    ld b, d                                       ; $76f6: $42
    jr c, jr_0bb_7759                             ; $76f7: $38 $60

    db $10                                        ; $76f9: $10
    ld d, l                                       ; $76fa: $55
    ld d, d                                       ; $76fb: $52

jr_0bb_76fc:
    jr jr_0bb_76fc                                ; $76fc: $18 $fe

    rst $38                                       ; $76fe: $ff
    push af                                       ; $76ff: $f5
    db $10                                        ; $7700: $10
    jr nc, @+$03                                  ; $7701: $30 $01

    ld [$55ff], a                                 ; $7703: $ea $ff $55
    rst $38                                       ; $7706: $ff
    xor e                                         ; $7707: $ab
    rst $38                                       ; $7708: $ff
    ld e, a                                       ; $7709: $5f
    jr nz, jr_0bb_773c                            ; $770a: $20 $30

    ld l, d                                       ; $770c: $6a
    xor a                                         ; $770d: $af
    jr nc, jr_0bb_7690                            ; $770e: $30 $80

    ld b, b                                       ; $7710: $40
    jr c, jr_0bb_7715                             ; $7711: $38 $02

    and b                                         ; $7713: $a0
    ld e, b                                       ; $7714: $58

jr_0bb_7715:
    ld e, a                                       ; $7715: $5f
    add b                                         ; $7716: $80
    jr @-$1f                                      ; $7717: $18 $df

    cp b                                          ; $7719: $b8
    ret nz                                        ; $771a: $c0

    jr nc, @-$3f                                  ; $771b: $30 $bf

    jp nc, $d610                                  ; $771d: $d2 $10 $d6

    ld [$28d0], sp                                ; $7720: $08 $d0 $28
    ld a, [$d5ff]                                 ; $7723: $fa $ff $d5
    sbc $54                                       ; $7726: $de $54
    nop                                           ; $7728: $00
    ld h, b                                       ; $7729: $60
    jr jr_0bb_77a9                                ; $772a: $18 $7d

    ld a, e                                       ; $772c: $7b
    nop                                           ; $772d: $00
    sbc h                                         ; $772e: $9c
    ld [$2804], sp                                ; $772f: $08 $04 $28
    sub b                                         ; $7732: $90
    ld [$e7fc], sp                                ; $7733: $08 $fc $e7
    adc [hl]                                      ; $7736: $8e
    nop                                           ; $7737: $00
    inc b                                         ; $7738: $04
    ld [$0802], sp                                ; $7739: $08 $02 $08

jr_0bb_773c:
    db $fc                                        ; $773c: $fc
    ccf                                           ; $773d: $3f
    ld [bc], a                                    ; $773e: $02
    nop                                           ; $773f: $00
    ld [de], a                                    ; $7740: $12
    nop                                           ; $7741: $00
    inc b                                         ; $7742: $04
    jr z, @-$1e                                   ; $7743: $28 $e0

    inc bc                                        ; $7745: $03
    add hl, sp                                    ; $7746: $39
    ld a, [hl-]                                   ; $7747: $3a
    add hl, bc                                    ; $7748: $09
    ld h, [hl]                                    ; $7749: $66
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00

jr_0bb_774c:
    add b                                         ; $774c: $80
    rrca                                          ; $774d: $0f
    add b                                         ; $774e: $80
    rra                                           ; $774f: $1f
    ld [$3f80], sp                                ; $7750: $08 $80 $3f
    add b                                         ; $7753: $80
    ld a, a                                       ; $7754: $7f
    ld [bc], a                                    ; $7755: $02

jr_0bb_7756:
    jr jr_0bb_7756                                ; $7756: $18 $fe

    nop                                           ; $7758: $00

jr_0bb_7759:
    ld bc, $c101                                  ; $7759: $01 $01 $c1
    ld bc, $01f9                                  ; $775c: $01 $f9 $01
    db $fd                                        ; $775f: $fd
    ld bc, $02ff                                  ; $7760: $01 $ff $02
    jr @-$7e                                      ; $7763: $18 $80

    jr nz, jr_0bb_7787                            ; $7765: $20 $20

    rrca                                          ; $7767: $0f
    add b                                         ; $7768: $80
    daa                                           ; $7769: $27
    add b                                         ; $776a: $80
    ld [hl], e                                    ; $776b: $73
    add b                                         ; $776c: $80
    ld a, c                                       ; $776d: $79
    ld [hl+], a                                   ; $776e: $22
    add b                                         ; $776f: $80
    ld a, c                                       ; $7770: $79
    jr nz, jr_0bb_7773                            ; $7771: $20 $00

jr_0bb_7773:
    ld hl, $7101                                  ; $7773: $21 $01 $71
    ld [hl+], a                                   ; $7776: $22
    nop                                           ; $7777: $00
    push af                                       ; $7778: $f5
    ld [bc], a                                    ; $7779: $02
    ld bc, $01ef                                  ; $777a: $01 $ef $01
    rst $18                                       ; $777d: $df
    ld bc, $409f                                  ; $777e: $01 $9f $40

jr_0bb_7781:
    nop                                           ; $7781: $00
    ld h, b                                       ; $7782: $60
    ld [bc], a                                    ; $7783: $02
    add b                                         ; $7784: $80
    ld [hl], b                                    ; $7785: $70
    add b                                         ; $7786: $80

jr_0bb_7787:
    halt                                          ; $7787: $76
    add b                                         ; $7788: $80
    ld l, a                                       ; $7789: $6f
    ld b, [hl]                                    ; $778a: $46
    nop                                           ; $778b: $00
    ld d, $20                                     ; $778c: $16 $20
    add b                                         ; $778e: $80
    ld a, [bc]                                    ; $778f: $0a
    ld b, b                                       ; $7790: $40
    nop                                           ; $7791: $00
    ld bc, $1101                                  ; $7792: $01 $01 $11
    ld bc, $0a19                                  ; $7795: $01 $19 $0a
    ld bc, $0139                                  ; $7798: $01 $39 $01
    dec a                                         ; $779b: $3d
    ld b, $00                                     ; $779c: $06 $00
    sub a                                         ; $779e: $97
    ld h, b                                       ; $779f: $60
    nop                                           ; $77a0: $00
    inc bc                                        ; $77a1: $03
    jr z, @-$7e                                   ; $77a2: $28 $80

    ld sp, $003a                                  ; $77a4: $31 $3a $00
    add hl, sp                                    ; $77a7: $39
    ld h, [hl]                                    ; $77a8: $66

jr_0bb_77a9:
    nop                                           ; $77a9: $00
    rlca                                          ; $77aa: $07
    add b                                         ; $77ab: $80
    inc bc                                        ; $77ac: $03
    add b                                         ; $77ad: $80
    ld h, b                                       ; $77ae: $60
    db $10                                        ; $77af: $10
    pop bc                                        ; $77b0: $c1
    ld bc, $0199                                  ; $77b1: $01 $99 $01
    cp l                                          ; $77b4: $bd
    ld bc, $aa9d                                  ; $77b5: $01 $9d $aa
    ld l, b                                       ; $77b8: $68
    nop                                           ; $77b9: $00
    pop af                                        ; $77ba: $f1
    add b                                         ; $77bb: $80
    ld b, b                                       ; $77bc: $40
    ccf                                           ; $77bd: $3f
    adc d                                         ; $77be: $8a
    nop                                           ; $77bf: $00
    rrca                                          ; $77c0: $0f
    add b                                         ; $77c1: $80
    nop                                           ; $77c2: $00
    db $fd                                        ; $77c3: $fd
    pop af                                        ; $77c4: $f1
    add b                                         ; $77c5: $80
    nop                                           ; $77c6: $00
    ld a, [hl]                                    ; $77c7: $7e
    ld [$001e], sp                                ; $77c8: $08 $1e $00
    jr nz, @+$12                                  ; $77cb: $20 $10

    dec sp                                        ; $77cd: $3b
    add b                                         ; $77ce: $80
    dec a                                         ; $77cf: $3d
    and b                                         ; $77d0: $a0
    nop                                           ; $77d1: $00
    inc d                                         ; $77d2: $14
    rra                                           ; $77d3: $1f
    add b                                         ; $77d4: $80
    ld e, a                                       ; $77d5: $5f
    and h                                         ; $77d6: $a4
    nop                                           ; $77d7: $00
    ld b, a                                       ; $77d8: $47
    and b                                         ; $77d9: $a0
    nop                                           ; $77da: $00
    cp a                                          ; $77db: $bf
    ld bc, $7d16                                  ; $77dc: $01 $16 $7d
    ld bc, $a0fb                                  ; $77df: $01 $fb $a0
    nop                                           ; $77e2: $00
    di                                            ; $77e3: $f3
    xor b                                         ; $77e4: $a8
    ld [$00c0], sp                                ; $77e5: $08 $c0 $00
    ld a, h                                       ; $77e8: $7c
    adc d                                         ; $77e9: $8a
    ld [bc], a                                    ; $77ea: $02
    nop                                           ; $77eb: $00
    ld a, l                                       ; $77ec: $7d
    add b                                         ; $77ed: $80
    ld a, e                                       ; $77ee: $7b
    ret nz                                        ; $77ef: $c0

    jr nc, jr_0bb_77f3                            ; $77f0: $30 $01

    ret nz                                        ; $77f2: $c0

jr_0bb_77f3:
    ld h, b                                       ; $77f3: $60
    inc c                                         ; $77f4: $0c
    ld [$1880], sp                                ; $77f5: $08 $80 $18
    add b                                         ; $77f8: $80
    jr c, @-$7a                                   ; $77f9: $38 $84

    nop                                           ; $77fb: $00
    ld [hl], e                                    ; $77fc: $73
    add b                                         ; $77fd: $80
    ld [hl], a                                    ; $77fe: $77
    jr nz, jr_0bb_7781                            ; $77ff: $20 $80

    ld [hl], a                                    ; $7801: $77
    ldh [rP1], a                                  ; $7802: $e0 $00
    ld sp, $6701                                  ; $7804: $31 $01 $67
    ld bc, $0acf                                  ; $7807: $01 $cf $0a
    ld bc, $01dd                                  ; $780a: $01 $dd $01
    cp c                                          ; $780d: $b9
    ret z                                         ; $780e: $c8

    nop                                           ; $780f: $00
    db $e3                                        ; $7810: $e3
    dec h                                         ; $7811: $25
    ld [de], a                                    ; $7812: $12
    ccf                                           ; $7813: $3f
    sub h                                         ; $7814: $94
    ld [bc], a                                    ; $7815: $02
    jr c, jr_0bb_7894                             ; $7816: $38 $7c

jr_0bb_7818:
    rst $38                                       ; $7818: $ff
    ld [bc], a                                    ; $7819: $02
    jr z, jr_0bb_7818                             ; $781a: $28 $fc

    inc b                                         ; $781c: $04
    db $10                                        ; $781d: $10
    db $fc                                        ; $781e: $fc
    ccf                                           ; $781f: $3f
    ld [hl], b                                    ; $7820: $70
    cp $42                                        ; $7821: $fe $42
    ld bc, $0804                                  ; $7823: $01 $04 $08
    ld [bc], a                                    ; $7826: $02
    jr @-$05                                      ; $7827: $18 $f9

    inc h                                         ; $7829: $24

jr_0bb_782a:
    db $fc                                        ; $782a: $fc
    ld b, d                                       ; $782b: $42
    nop                                           ; $782c: $00
    db $fc                                        ; $782d: $fc
    ld [bc], a                                    ; $782e: $02
    or $0e                                        ; $782f: $f6 $0e
    ld [hl], b                                    ; $7831: $70
    cp $fe                                        ; $7832: $fe $fe
    cp $0e                                        ; $7834: $fe $0e
    add c                                         ; $7836: $81
    add b                                         ; $7837: $80
    ld l, b                                       ; $7838: $68
    rla                                           ; $7839: $17
    cp b                                          ; $783a: $b8
    db $10                                        ; $783b: $10
    ld a, $19                                     ; $783c: $3e $19
    and h                                         ; $783e: $a4
    nop                                           ; $783f: $00
    ld a, a                                       ; $7840: $7f
    ld h, b                                       ; $7841: $60
    ld a, a                                       ; $7842: $7f
    jr c, @+$2b                                   ; $7843: $38 $29

    ld b, d                                       ; $7845: $42
    ld bc, $01f1                                  ; $7846: $01 $f1 $01
    pop bc                                        ; $7849: $c1
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    and h                                         ; $784c: $a4
    cp h                                          ; $784d: $bc
    jr nz, jr_0bb_785f                            ; $784e: $20 $0f

    db $fc                                        ; $7850: $fc
    ld [$0180], sp                                ; $7851: $08 $80 $01
    jr nz, jr_0bb_7856                            ; $7854: $20 $00

jr_0bb_7856:
    cp l                                          ; $7856: $bd
    ld bc, $e915                                  ; $7857: $01 $15 $e9
    ld bc, $dae1                                  ; $785a: $01 $e1 $da
    nop                                           ; $785d: $00
    pop hl                                        ; $785e: $e1

jr_0bb_785f:
    ld l, b                                       ; $785f: $68
    ld bc, $2081                                  ; $7860: $01 $81 $20
    nop                                           ; $7863: $00
    ld de, $800e                                  ; $7864: $11 $0e $80
    dec e                                         ; $7867: $1d
    add b                                         ; $7868: $80
    ld bc, $800d                                  ; $7869: $01 $0d $80
    dec b                                         ; $786c: $05
    jr nz, @+$22                                  ; $786d: $20 $20

    ld b, b                                       ; $786f: $40
    rst $28                                       ; $7870: $ef
    ld [bc], a                                    ; $7871: $02
    db $10                                        ; $7872: $10
    pop de                                        ; $7873: $d1
    ld bc, $0161                                  ; $7874: $01 $61 $01
    add c                                         ; $7877: $81
    ld bc, $7fd1                                  ; $7878: $01 $d1 $7f
    ld bc, $013c                                  ; $787b: $01 $3c $01
    ld a, l                                       ; $787e: $7d
    sbc [hl]                                      ; $787f: $9e
    ld bc, $8013                                  ; $7880: $01 $13 $80
    ld bc, $0802                                  ; $7883: $01 $02 $08
    push de                                       ; $7886: $d5

jr_0bb_7887:
    ld h, b                                       ; $7887: $60
    nop                                           ; $7888: $00
    ld a, [hl-]                                   ; $7889: $3a
    ld [$4481], sp                                ; $788a: $08 $81 $44
    ld de, $4081                                  ; $788d: $11 $81 $40
    db $10                                        ; $7890: $10
    rlca                                          ; $7891: $07
    ld [bc], a                                    ; $7892: $02
    db $10                                        ; $7893: $10

jr_0bb_7894:
    ld a, [hl]                                    ; $7894: $7e

jr_0bb_7895:
    inc bc                                        ; $7895: $03
    ld h, [hl]                                    ; $7896: $66
    ld bc, $000a                                  ; $7897: $01 $0a $00
    jr nz, @+$22                                  ; $789a: $20 $20

    ld e, h                                       ; $789c: $5c
    ld [$2820], sp                                ; $789d: $08 $20 $28
    sbc $09                                       ; $78a0: $de $09
    rra                                           ; $78a2: $1f
    add d                                         ; $78a3: $82
    ld b, d                                       ; $78a4: $42
    ld bc, $8039                                  ; $78a5: $01 $39 $80
    jr nc, jr_0bb_782a                            ; $78a8: $30 $80

    nop                                           ; $78aa: $00
    and b                                         ; $78ab: $a0
    jr nc, jr_0bb_7895                            ; $78ac: $30 $e7

    or c                                          ; $78ae: $b1
    ld h, $10                                     ; $78af: $26 $10
    pop hl                                        ; $78b1: $e1
    and b                                         ; $78b2: $a0
    nop                                           ; $78b3: $00
    ld hl, sp+$09                                 ; $78b4: $f8 $09
    ld a, $80                                     ; $78b6: $3e $80
    inc e                                         ; $78b8: $1c
    ld e, a                                       ; $78b9: $5f
    inc bc                                        ; $78ba: $03
    sub $63                                       ; $78bb: $d6 $63
    inc bc                                        ; $78bd: $03
    ret nz                                        ; $78be: $c0

    db $10                                        ; $78bf: $10
    rra                                           ; $78c0: $1f
    ld [bc], a                                    ; $78c1: $02
    nop                                           ; $78c2: $00
    ccf                                           ; $78c3: $3f
    ld [bc], a                                    ; $78c4: $02
    jr jr_0bb_7887                                ; $78c5: $18 $c0

    nop                                           ; $78c7: $00
    ld l, [hl]                                    ; $78c8: $6e
    cp b                                          ; $78c9: $b8
    jp c, Jump_000_3f01                           ; $78ca: $da $01 $3f

    and h                                         ; $78cd: $a4
    nop                                           ; $78ce: $00
    ld [hl+], a                                   ; $78cf: $22
    db $10                                        ; $78d0: $10
    ldh [rP1], a                                  ; $78d1: $e0 $00
    rst $20                                       ; $78d3: $e7
    ld bc, $a0cd                                  ; $78d4: $01 $cd $a0
    inc a                                         ; $78d7: $3c
    ld bc, $e0d9                                  ; $78d8: $01 $d9 $e0
    ld bc, $0131                                  ; $78db: $01 $31 $01
    ld [hl], c                                    ; $78de: $71
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    nop                                           ; $78e1: $00
    xor a                                         ; $78e2: $af
    jr nc, jr_0bb_7914                            ; $78e3: $30 $2f

    or d                                          ; $78e5: $b2
    xor a                                         ; $78e6: $af
    ld sp, $905f                                  ; $78e7: $31 $5f $90
    nop                                           ; $78ea: $00
    ld d, a                                       ; $78eb: $57
    sbc b                                         ; $78ec: $98
    dec d                                         ; $78ed: $15
    db $db                                        ; $78ee: $db
    cpl                                           ; $78ef: $2f
    rst $08                                       ; $78f0: $cf
    db $10                                        ; $78f1: $10
    ldh [$1f], a                                  ; $78f2: $e0 $1f
    ld [hl], h                                    ; $78f4: $74
    rst $38                                       ; $78f5: $ff
    inc a                                         ; $78f6: $3c
    ld b, d                                       ; $78f7: $42

jr_0bb_78f8:
    ld bc, $2804                                  ; $78f8: $01 $04 $28
    ld b, [hl]                                    ; $78fb: $46
    ld bc, $3140                                  ; $78fc: $01 $40 $31
    ld c, b                                       ; $78ff: $48
    add hl, de                                    ; $7900: $19
    nop                                           ; $7901: $00
    add h                                         ; $7902: $84
    inc bc                                        ; $7903: $03
    ld [bc], a                                    ; $7904: $02
    ld a, c                                       ; $7905: $79
    ld [hl], b                                    ; $7906: $70
    adc e                                         ; $7907: $8b
    ld a, [c]                                     ; $7908: $f2
    add hl, bc                                    ; $7909: $09
    nop                                           ; $790a: $00
    ld a, [c]                                     ; $790b: $f2
    ld c, c                                       ; $790c: $49
    ld sp, hl                                     ; $790d: $f9
    and h                                         ; $790e: $a4
    ld hl, sp+$05                                 ; $790f: $f8 $05
    ld sp, hl                                     ; $7911: $f9
    inc b                                         ; $7912: $04
    db $fd                                        ; $7913: $fd

jr_0bb_7914:
    add b                                         ; $7914: $80
    ld [bc], a                                    ; $7915: $02
    jp nz, $fa08                                  ; $7916: $c2 $08 $fa

    ld bc, $1a86                                  ; $7919: $01 $86 $1a
    add b                                         ; $791c: $80
    ld [de], a                                    ; $791d: $12
    jr nz, @+$0b                                  ; $791e: $20 $09

    pop af                                        ; $7920: $f1
    add [hl]                                      ; $7921: $86
    ld [bc], a                                    ; $7922: $02
    cp $e0                                        ; $7923: $fe $e0
    add hl, de                                    ; $7925: $19
    sbc h                                         ; $7926: $9c
    ld [hl-], a                                   ; $7927: $32
    ldh [$31], a                                  ; $7928: $e0 $31
    nop                                           ; $792a: $00
    add hl, de                                    ; $792b: $19
    ld [hl+], a                                   ; $792c: $22
    ld [$0a00], sp                                ; $792d: $08 $00 $0a
    ld [bc], a                                    ; $7930: $02
    jr c, jr_0bb_7936                             ; $7931: $38 $03

    push bc                                       ; $7933: $c5
    ld b, b                                       ; $7934: $40
    ld [de], a                                    ; $7935: $12

jr_0bb_7936:
    ld a, h                                       ; $7936: $7c
    ld a, [bc]                                    ; $7937: $0a
    add hl, sp                                    ; $7938: $39
    ld bc, $4079                                  ; $7939: $01 $79 $40
    db $10                                        ; $793c: $10
    ld sp, hl                                     ; $793d: $f9
    ldh [rSC], a                                  ; $793e: $e0 $02
    ld e, d                                       ; $7940: $5a
    jr c, @+$24                                   ; $7941: $38 $22

    ld [bc], a                                    ; $7943: $02
    ld a, [hl]                                    ; $7944: $7e

jr_0bb_7945:
    add [hl]                                      ; $7945: $86
    add hl, hl                                    ; $7946: $29
    ret nz                                        ; $7947: $c0

    ld [hl-], a                                   ; $7948: $32
    ld a, l                                       ; $7949: $7d
    ld c, b                                       ; $794a: $48
    ld [bc], a                                    ; $794b: $02
    sbc a                                         ; $794c: $9f
    ccf                                           ; $794d: $3f
    ld bc, $80df                                  ; $794e: $01 $df $80
    db $10                                        ; $7951: $10
    ld a, [hl]                                    ; $7952: $7e
    ld [$3880], sp                                ; $7953: $08 $80 $38
    ld a, h                                       ; $7956: $7c
    jr z, jr_0bb_795f                             ; $7957: $28 $06

    dec bc                                        ; $7959: $0b
    ld h, b                                       ; $795a: $60
    jr c, @+$01                                   ; $795b: $38 $ff

    add b                                         ; $795d: $80
    add hl, bc                                    ; $795e: $09

jr_0bb_795f:
    ld h, h                                       ; $795f: $64
    ld bc, $0320                                  ; $7960: $01 $20 $03
    ld e, h                                       ; $7963: $5c
    ld [$08a0], sp                                ; $7964: $08 $a0 $08
    ld b, d                                       ; $7967: $42
    add hl, de                                    ; $7968: $19
    ld b, b                                       ; $7969: $40
    dec de                                        ; $796a: $1b
    ld h, h                                       ; $796b: $64
    add hl, bc                                    ; $796c: $09
    cp a                                          ; $796d: $bf
    db $e4                                        ; $796e: $e4
    add hl, bc                                    ; $796f: $09
    dec bc                                        ; $7970: $0b
    ld b, b                                       ; $7971: $40
    inc bc                                        ; $7972: $03
    cp [hl]                                       ; $7973: $be
    jr @+$06                                      ; $7974: $18 $04

    jr jr_0bb_78f8                                ; $7976: $18 $80

    ld [$18de], sp                                ; $7978: $08 $de $18
    and $20                                       ; $797b: $e6 $20
    and b                                         ; $797d: $a0
    jr nz, @+$15                                  ; $797e: $20 $13

    ld h, c                                       ; $7980: $61
    ld b, b                                       ; $7981: $40
    jr nz, jr_0bb_7945                            ; $7982: $20 $c1

    ld bc, $05b1                                  ; $7984: $01 $b1 $05
    ld a, [$1000]                                 ; $7987: $fa $00 $10
    ldh [rLCDC], a                                ; $798a: $e0 $40
    adc a                                         ; $798c: $8f
    adc a                                         ; $798d: $8f
    jr nc, jr_0bb_7a0f                            ; $798e: $30 $7f

    ld b, c                                       ; $7990: $41
    ld bc, $6a5f                                  ; $7991: $01 $5f $6a
    ld e, a                                       ; $7994: $5f
    ld h, h                                       ; $7995: $64
    cp a                                          ; $7996: $bf
    jr nz, jr_0bb_79d1                            ; $7997: $20 $38

    ld b, b                                       ; $7999: $40
    ld bc, $7818                                  ; $799a: $01 $18 $78
    rst $38                                       ; $799d: $ff
    inc [hl]                                      ; $799e: $34
    ld b, h                                       ; $799f: $44
    ld sp, $1bc6                                  ; $79a0: $31 $c6 $1b
    cp $ff                                        ; $79a3: $fe $ff
    xor $84                                       ; $79a5: $ee $84
    ld h, d                                       ; $79a7: $62
    inc b                                         ; $79a8: $04
    ld a, h                                       ; $79a9: $7c
    rst $38                                       ; $79aa: $ff
    cp $bf                                        ; $79ab: $fe $bf
    inc c                                         ; $79ad: $0c
    ld b, c                                       ; $79ae: $41
    rra                                           ; $79af: $1f
    add b                                         ; $79b0: $80
    ld a, l                                       ; $79b1: $7d
    ld b, d                                       ; $79b2: $42
    ld [hl], b                                    ; $79b3: $70
    ld b, d                                       ; $79b4: $42
    ld [hl], d                                    ; $79b5: $72
    ld a, [bc]                                    ; $79b6: $0a
    sub b                                         ; $79b7: $90
    ld bc, $132a                                  ; $79b8: $01 $2a $13
    ld [de], a                                    ; $79bb: $12
    ld a, [de]                                    ; $79bc: $1a
    ld bc, $41f0                                  ; $79bd: $01 $f0 $41
    rst $38                                       ; $79c0: $ff
    sub b                                         ; $79c1: $90
    ld a, [bc]                                    ; $79c2: $0a
    ld l, [hl]                                    ; $79c3: $6e
    dec bc                                        ; $79c4: $0b
    jr nz, jr_0bb_79cf                            ; $79c5: $20 $08

    ld [$961b], a                                 ; $79c7: $ea $1b $96
    ld [de], a                                    ; $79ca: $12
    ld d, b                                       ; $79cb: $50
    ld [de], a                                    ; $79cc: $12
    ld [hl-], a                                   ; $79cd: $32
    ld a, [hl+]                                   ; $79ce: $2a

jr_0bb_79cf:
    ld [hl], b                                    ; $79cf: $70
    ld a, [de]                                    ; $79d0: $1a

jr_0bb_79d1:
    ld [$0838], a                                 ; $79d1: $ea $38 $08
    ld l, h                                       ; $79d4: $6c
    ld a, [bc]                                    ; $79d5: $0a
    db $10                                        ; $79d6: $10
    ld a, [hl+]                                   ; $79d7: $2a
    rst $08                                       ; $79d8: $cf
    sub d                                         ; $79d9: $92
    ld [de], a                                    ; $79da: $12
    rst $20                                       ; $79db: $e7
    ld [bc], a                                    ; $79dc: $02
    db $10                                        ; $79dd: $10
    db $e3                                        ; $79de: $e3
    cp $30                                        ; $79df: $fe $30
    ld [hl+], a                                   ; $79e1: $22
    add d                                         ; $79e2: $82
    jr nc, @-$7e                                  ; $79e3: $30 $80

    ld d, b                                       ; $79e5: $50
    db $f4                                        ; $79e6: $f4
    ld [bc], a                                    ; $79e7: $02
    ld [hl], b                                    ; $79e8: $70
    ld [hl+], a                                   ; $79e9: $22
    ld [de], a                                    ; $79ea: $12
    dec bc                                        ; $79eb: $0b
    or d                                          ; $79ec: $b2
    dec bc                                        ; $79ed: $0b
    ld c, $fe                                     ; $79ee: $0e $fe
    db $10                                        ; $79f0: $10
    inc bc                                        ; $79f1: $03
    xor d                                         ; $79f2: $aa
    ld [hl+], a                                   ; $79f3: $22
    ld d, $04                                     ; $79f4: $16 $04
    add hl, de                                    ; $79f6: $19
    inc b                                         ; $79f7: $04
    sub b                                         ; $79f8: $90
    ld [de], a                                    ; $79f9: $12
    inc c                                         ; $79fa: $0c
    inc hl                                        ; $79fb: $23
    ret nc                                        ; $79fc: $d0

    ld [hl+], a                                   ; $79fd: $22
    ld sp, hl                                     ; $79fe: $f9
    cp l                                          ; $79ff: $bd
    db $10                                        ; $7a00: $10
    inc bc                                        ; $7a01: $03
    pop de                                        ; $7a02: $d1
    or d                                          ; $7a03: $b2

Jump_0bb_7a04:
    ld [hl+], a                                   ; $7a04: $22
    jr nc, jr_0bb_7a12                            ; $7a05: $30 $0b

    jr z, @+$0d                                   ; $7a07: $28 $0b

    ld [hl-], a                                   ; $7a09: $32
    add hl, hl                                    ; $7a0a: $29
    inc bc                                        ; $7a0b: $03
    jr nz, @+$12                                  ; $7a0c: $20 $10

    db $fc                                        ; $7a0e: $fc

jr_0bb_7a0f:
    ld [$f40c], sp                                ; $7a0f: $08 $0c $f4

jr_0bb_7a12:
    ld a, [bc]                                    ; $7a12: $0a
    ldh a, [rNR12]                                ; $7a13: $f0 $12
    cp h                                          ; $7a15: $bc
    inc a                                         ; $7a16: $3c
    sla h                                         ; $7a17: $cb $24
    cp h                                          ; $7a19: $bc
    ld b, e                                       ; $7a1a: $43
    ret nz                                        ; $7a1b: $c0

    ld a, a                                       ; $7a1c: $7f
    ld bc, $ff80                                  ; $7a1d: $01 $80 $ff
    inc e                                         ; $7a20: $1c
    ld a, a                                       ; $7a21: $7f
    inc a                                         ; $7a22: $3c
    rst $38                                       ; $7a23: $ff
    inc a                                         ; $7a24: $3c
    inc b                                         ; $7a25: $04
    nop                                           ; $7a26: $00
    ld e, $38                                     ; $7a27: $1e $38
    ld a, a                                       ; $7a29: $7f
    inc [hl]                                      ; $7a2a: $34
    ld [$f310], sp                                ; $7a2b: $08 $10 $f3
    ld h, l                                       ; $7a2e: $65
    jr nc, @+$1a                                  ; $7a2f: $30 $18

    jr nc, @+$50                                  ; $7a31: $30 $4e

    db $fd                                        ; $7a33: $fd
    ld b, b                                       ; $7a34: $40
    ld d, l                                       ; $7a35: $55
    ld b, b                                       ; $7a36: $40
    ld d, [hl]                                    ; $7a37: $56
    rlca                                          ; $7a38: $07
    rlca                                          ; $7a39: $07
    ld [$1b0f], sp                                ; $7a3a: $08 $0f $1b
    inc e                                         ; $7a3d: $1c
    nop                                           ; $7a3e: $00
    inc h                                         ; $7a3f: $24
    dec sp                                        ; $7a40: $3b
    ld d, d                                       ; $7a41: $52
    ld l, a                                       ; $7a42: $6f
    xor h                                         ; $7a43: $ac
    rst $18                                       ; $7a44: $df
    sub e                                         ; $7a45: $93
    db $fc                                        ; $7a46: $fc
    nop                                           ; $7a47: $00

jr_0bb_7a48:
    call nc, $00fb                                ; $7a48: $d4 $fb $00
    nop                                           ; $7a4b: $00
    ret nz                                        ; $7a4c: $c0

    ret nz                                        ; $7a4d: $c0

    jr c, jr_0bb_7a48                             ; $7a4e: $38 $f8

    nop                                           ; $7a50: $00
    sub h                                         ; $7a51: $94
    db $ec                                        ; $7a52: $ec
    ld a, [hl+]                                   ; $7a53: $2a
    or $86                                        ; $7a54: $f6 $86
    ld a, d                                       ; $7a56: $7a
    jp nc, $003e                                  ; $7a57: $d2 $3e $00

    add $3a                                       ; $7a5a: $c6 $3a
    inc b                                         ; $7a5c: $04
    dec b                                         ; $7a5d: $05
    ld c, $0b                                     ; $7a5e: $0e $0b
    rla                                           ; $7a60: $17
    add hl, de                                    ; $7a61: $19
    nop                                           ; $7a62: $00
    dec bc                                        ; $7a63: $0b
    dec c                                         ; $7a64: $0d
    dec h                                         ; $7a65: $25
    daa                                           ; $7a66: $27
    ld [hl], e                                    ; $7a67: $73
    ld d, e                                       ; $7a68: $53
    cp c                                          ; $7a69: $b9
    ret                                           ; $7a6a: $c9


    nop                                           ; $7a6b: $00
    ld e, c                                       ; $7a6c: $59
    ld l, c                                       ; $7a6d: $69
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    jr nz, jr_0bb_7a92                            ; $7a70: $20 $20

    ld [hl], b                                    ; $7a72: $70
    ld d, b                                       ; $7a73: $50
    nop                                           ; $7a74: $00
    add sp, -$68                                  ; $7a75: $e8 $98
    call nc, $aeb4                                ; $7a77: $d4 $b4 $ae
    ld [$d3dd], a                                 ; $7a7a: $ea $dd $d3
    nop                                           ; $7a7d: $00
    ld a, [de]                                    ; $7a7e: $1a
    sub [hl]                                      ; $7a7f: $96
    jr nz, jr_0bb_7a82                            ; $7a80: $20 $00

jr_0bb_7a82:
    ld h, b                                       ; $7a82: $60
    jr nz, @+$52                                  ; $7a83: $20 $50

    ld [hl], b                                    ; $7a85: $70
    nop                                           ; $7a86: $00
    sub [hl]                                      ; $7a87: $96
    ld a, [c]                                     ; $7a88: $f2
    ld l, l                                       ; $7a89: $6d
    ld h, a                                       ; $7a8a: $67
    add hl, de                                    ; $7a8b: $19
    rra                                           ; $7a8c: $1f
    ld d, $16                                     ; $7a8d: $16 $16
    jr nz, @+$0c                                  ; $7a8f: $20 $0a

    ld a, [bc]                                    ; $7a91: $0a

jr_0bb_7a92:
    ret nc                                        ; $7a92: $d0

    ld c, $10                                     ; $7a93: $0e $10
    nop                                           ; $7a95: $00
    jr @+$12                                      ; $7a96: $18 $10

    jr z, jr_0bb_7a9a                             ; $7a98: $28 $00

jr_0bb_7a9a:
    jr c, jr_0bb_7ac0                             ; $7a9a: $38 $24

    inc a                                         ; $7a9c: $3c
    jr jr_0bb_7ab7                                ; $7a9d: $18 $18

    sub [hl]                                      ; $7a9f: $96
    inc d                                         ; $7aa0: $14
    ld bc, $0100                                  ; $7aa1: $01 $00 $01
    inc bc                                        ; $7aa4: $03
    ld [bc], a                                    ; $7aa5: $02
    ld sp, $7931                                  ; $7aa6: $31 $31 $79
    ld c, c                                       ; $7aa9: $49
    add hl, sp                                    ; $7aaa: $39
    nop                                           ; $7aab: $00
    add hl, hl                                    ; $7aac: $29
    dec de                                        ; $7aad: $1b
    rra                                           ; $7aae: $1f
    rlca                                          ; $7aaf: $07
    inc b                                         ; $7ab0: $04
    inc bc                                        ; $7ab1: $03
    ld [bc], a                                    ; $7ab2: $02
    add b                                         ; $7ab3: $80
    nop                                           ; $7ab4: $00
    add b                                         ; $7ab5: $80
    ret nz                                        ; $7ab6: $c0

jr_0bb_7ab7:
    ld b, b                                       ; $7ab7: $40
    ret nz                                        ; $7ab8: $c0

    ld b, b                                       ; $7ab9: $40
    sbc b                                         ; $7aba: $98
    sbc b                                         ; $7abb: $98
    inc a                                         ; $7abc: $3c
    nop                                           ; $7abd: $00
    and h                                         ; $7abe: $a4
    inc e                                         ; $7abf: $1c

jr_0bb_7ac0:
    sub h                                         ; $7ac0: $94
    add sp, -$08                                  ; $7ac1: $e8 $f8
    ldh a, [$90]                                  ; $7ac3: $f0 $90
    inc d                                         ; $7ac5: $14
    nop                                           ; $7ac6: $00
    inc e                                         ; $7ac7: $1c
    rrca                                          ; $7ac8: $0f

jr_0bb_7ac9:
    dec bc                                        ; $7ac9: $0b
    ld a, [de]                                    ; $7aca: $1a
    dec e                                         ; $7acb: $1d
    ld l, $31                                     ; $7acc: $2e $31
    ld e, a                                       ; $7ace: $5f
    nop                                           ; $7acf: $00
    ld h, b                                       ; $7ad0: $60
    inc sp                                        ; $7ad1: $33
    inc a                                         ; $7ad2: $3c
    rrca                                          ; $7ad3: $0f
    ld [$0e09], sp                                ; $7ad4: $08 $09 $0e
    call z, $cc00                                 ; $7ad7: $cc $00 $cc
    inc [hl]                                      ; $7ada: $34
    db $fc                                        ; $7adb: $fc
    ret z                                         ; $7adc: $c8

    jr c, jr_0bb_7ac9                             ; $7add: $38 $ea

    ld d, $f6                                     ; $7adf: $16 $f6
    nop                                           ; $7ae1: $00
    ld c, $e8                                     ; $7ae2: $0e $e8
    jr @-$0e                                      ; $7ae4: $18 $f0

    db $10                                        ; $7ae6: $10
    ld d, b                                       ; $7ae7: $50
    or b                                          ; $7ae8: $b0
    ld sp, $3100                                  ; $7ae9: $31 $00 $31
    dec sp                                        ; $7aec: $3b
    ld a, [hl+]                                   ; $7aed: $2a
    dec a                                         ; $7aee: $3d
    dec h                                         ; $7aef: $25
    ccf                                           ; $7af0: $3f
    inc sp                                        ; $7af1: $33
    rla                                           ; $7af2: $17
    nop                                           ; $7af3: $00
    dec d                                         ; $7af4: $15
    ld e, e                                       ; $7af5: $5b
    ld e, c                                       ; $7af6: $59
    db $fd                                        ; $7af7: $fd
    cp h                                          ; $7af8: $bc
    ld b, a                                       ; $7af9: $47
    ld b, [hl]                                    ; $7afa: $46
    ld c, $00                                     ; $7afb: $0e $00
    ld c, $be                                     ; $7afd: $0e $be
    or [hl]                                       ; $7aff: $b6
    ld a, h                                       ; $7b00: $7c
    ld c, h                                       ; $7b01: $4c
    ld [$ff8a], a                                 ; $7b02: $ea $8a $ff
    nop                                           ; $7b05: $00
    sbc l                                         ; $7b06: $9d
    jp nc, $f812                                  ; $7b07: $d2 $12 $f8

    jr c, @-$02                                   ; $7b0a: $38 $fc

    inc b                                         ; $7b0c: $04
    jr nc, jr_0bb_7b0f                            ; $7b0d: $30 $00

jr_0bb_7b0f:
    jr nc, jr_0bb_7b5d                            ; $7b0f: $30 $4c

    ld a, h                                       ; $7b11: $7c
    sub h                                         ; $7b12: $94
    db $ec                                        ; $7b13: $ec
    db $ed                                        ; $7b14: $ed
    sbc l                                         ; $7b15: $9d
    xor d                                         ; $7b16: $aa
    ld bc, $eddb                                  ; $7b17: $01 $db $ed
    sbc [hl]                                      ; $7b1a: $9e
    xor e                                         ; $7b1b: $ab
    call c, $c9b6                                 ; $7b1c: $dc $b6 $c9
    ld d, b                                       ; $7b1f: $50
    rrca                                          ; $7b20: $0f
    nop                                           ; $7b21: $00
    ld hl, sp-$08                                 ; $7b22: $f8 $f8
    inc [hl]                                      ; $7b24: $34
    call z, Call_000_06fa                         ; $7b25: $cc $fa $06
    call $0033                                    ; $7b28: $cd $33 $00
    ld d, l                                       ; $7b2b: $55
    ei                                            ; $7b2c: $fb
    db $ed                                        ; $7b2d: $ed
    di                                            ; $7b2e: $f3

jr_0bb_7b2f:
    ld [bc], a                                    ; $7b2f: $02
    ld b, $0c                                     ; $7b30: $06 $0c
    inc b                                         ; $7b32: $04
    nop                                           ; $7b33: $00
    jr jr_0bb_7b3e                                ; $7b34: $18 $08

    jr c, @+$1a                                   ; $7b36: $38 $18

    ld sp, $7310                                  ; $7b38: $31 $10 $73
    ld sp, $7708                                  ; $7b3b: $31 $08 $77

jr_0bb_7b3e:
    inc sp                                        ; $7b3e: $33
    inc sp                                        ; $7b3f: $33

Call_0bb_7b40:
    ld [hl], a                                    ; $7b40: $77
    sbc [hl]                                      ; $7b41: $9e
    nop                                           ; $7b42: $00
    jr nc, @+$23                                  ; $7b43: $30 $21

    ld h, a                                       ; $7b45: $67
    nop                                           ; $7b46: $00
    add $4e                                       ; $7b47: $c6 $4e
    call c, $b8cc                                 ; $7b49: $dc $cc $b8
    sbc b                                         ; $7b4c: $98
    ld [hl], b                                    ; $7b4d: $70
    ld sp, $e100                                  ; $7b4e: $31 $00 $e1
    ld h, e                                       ; $7b51: $63
    ld a, c                                       ; $7b52: $79
    ld a, [hl]                                    ; $7b53: $7e
    inc a                                         ; $7b54: $3c
    ccf                                           ; $7b55: $3f
    daa                                           ; $7b56: $27
    ccf                                           ; $7b57: $3f
    nop                                           ; $7b58: $00
    ld b, e                                       ; $7b59: $43
    ld a, a                                       ; $7b5a: $7f
    ld h, l                                       ; $7b5b: $65
    ld a, d                                       ; $7b5c: $7a

jr_0bb_7b5d:
    ld [hl-], a                                   ; $7b5d: $32
    dec a                                         ; $7b5e: $3d
    inc e                                         ; $7b5f: $1c
    rra                                           ; $7b60: $1f
    nop                                           ; $7b61: $00
    rrca                                          ; $7b62: $0f

jr_0bb_7b63:
    rrca                                          ; $7b63: $0f
    ld de, $6dff                                  ; $7b64: $11 $ff $6d
    di                                            ; $7b67: $f3
    ld e, e                                       ; $7b68: $5b
    rst $20                                       ; $7b69: $e7
    nop                                           ; $7b6a: $00
    and [hl]                                      ; $7b6b: $a6
    sbc $1c                                       ; $7b6c: $de $1c
    db $fc                                        ; $7b6e: $fc
    or b                                          ; $7b6f: $b0
    ld [hl], b                                    ; $7b70: $70
    ld b, b                                       ; $7b71: $40
    ret nz                                        ; $7b72: $c0

    nop                                           ; $7b73: $00
    add b                                         ; $7b74: $80
    add b                                         ; $7b75: $80
    dec a                                         ; $7b76: $3d
    dec [hl]                                      ; $7b77: $35
    cpl                                           ; $7b78: $2f
    inc sp                                        ; $7b79: $33
    rla                                           ; $7b7a: $17
    dec de                                        ; $7b7b: $1b
    ld [bc], a                                    ; $7b7c: $02
    dec bc                                        ; $7b7d: $0b
    rrca                                          ; $7b7e: $0f
    rlca                                          ; $7b7f: $07
    rlca                                          ; $7b80: $07
    inc bc                                        ; $7b81: $03
    inc bc                                        ; $7b82: $03
    call nc, $3409                                ; $7b83: $d4 $09 $34
    nop                                           ; $7b86: $00
    cp h                                          ; $7b87: $bc
    add sp, -$18                                  ; $7b88: $e8 $e8
    ldh [$a0], a                                  ; $7b8a: $e0 $a0
    ret nc                                        ; $7b8c: $d0

    jr nc, jr_0bb_7b2f                            ; $7b8d: $30 $a0

    ld b, b                                       ; $7b8f: $40
    ld h, b                                       ; $7b90: $60
    ld e, $08                                     ; $7b91: $1e $08
    add b                                         ; $7b93: $80
    add b                                         ; $7b94: $80
    ld c, $0a                                     ; $7b95: $0e $0a
    dec d                                         ; $7b97: $15
    dec e                                         ; $7b98: $1d
    ld [bc], a                                    ; $7b99: $02
    inc de                                        ; $7b9a: $13
    rra                                           ; $7b9b: $1f
    dec c                                         ; $7b9c: $0d
    dec c                                         ; $7b9d: $0d
    dec b                                         ; $7b9e: $05
    dec b                                         ; $7b9f: $05
    jr nz, jr_0bb_7bba                            ; $7ba0: $20 $18

    db $eb                                        ; $7ba2: $eb
    nop                                           ; $7ba3: $00
    xor [hl]                                      ; $7ba4: $ae
    ld l, c                                       ; $7ba5: $69
    rst $28                                       ; $7ba6: $ef
    ld l, $ee                                     ; $7ba7: $2e $ee
    ret nc                                        ; $7ba9: $d0

    ret nc                                        ; $7baa: $d0

    ld h, b                                       ; $7bab: $60
    jr jr_0bb_7c0e                                ; $7bac: $18 $60

    add b                                         ; $7bae: $80
    add b                                         ; $7baf: $80
    call c, $fc0f                                 ; $7bb0: $dc $0f $fc
    nop                                           ; $7bb3: $00
    ld c, l                                       ; $7bb4: $4d
    dec a                                         ; $7bb5: $3d
    cpl                                           ; $7bb6: $2f
    inc b                                         ; $7bb7: $04
    inc de                                        ; $7bb8: $13
    ld [de], a                                    ; $7bb9: $12

jr_0bb_7bba:
    ld bc, $0001                                  ; $7bba: $01 $01 $00
    ld [bc], a                                    ; $7bbd: $02
    db $10                                        ; $7bbe: $10
    ld [hl], b                                    ; $7bbf: $70
    ret nc                                        ; $7bc0: $d0

    jr nc, jr_0bb_7b63                            ; $7bc1: $30 $a0

    ldh [rDIV], a                                 ; $7bc3: $e0 $04
    add hl, de                                    ; $7bc5: $19
    rst $18                                       ; $7bc6: $df
    rla                                           ; $7bc7: $17
    add b                                         ; $7bc8: $80
    ld b, $05                                     ; $7bc9: $06 $05
    dec b                                         ; $7bcb: $05
    nop                                           ; $7bcc: $00
    rlca                                          ; $7bcd: $07
    ld b, $07                                     ; $7bce: $06 $07
    ld [bc], a                                    ; $7bd0: $02
    inc bc                                        ; $7bd1: $03
    ld [bc], a                                    ; $7bd2: $02
    inc bc                                        ; $7bd3: $03
    inc b                                         ; $7bd4: $04
    jr nz, @+$09                                  ; $7bd5: $20 $07

    inc b                                         ; $7bd7: $04
    ld h, h                                       ; $7bd8: $64
    nop                                           ; $7bd9: $00
    sub b                                         ; $7bda: $90
    ld [hl], b                                    ; $7bdb: $70
    ld h, b                                       ; $7bdc: $60
    ldh [$a0], a                                  ; $7bdd: $e0 $a0
    ld h, b                                       ; $7bdf: $60
    ldh [rNR44], a                                ; $7be0: $e0 $23
    ld bc, $105e                                  ; $7be2: $01 $5e $10
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    rrca                                          ; $7be7: $0f
    ld [$001f], sp                                ; $7be8: $08 $1f $00

jr_0bb_7beb:
    inc de                                        ; $7beb: $13
    rra                                           ; $7bec: $1f
    rla                                           ; $7bed: $17
    dec a                                         ; $7bee: $3d
    dec l                                         ; $7bef: $2d
    add hl, sp                                    ; $7bf0: $39
    add hl, sp                                    ; $7bf1: $39
    jr nc, jr_0bb_7c34                            ; $7bf2: $30 $40

    jr nc, jr_0bb_7c52                            ; $7bf4: $30 $5c

    add hl, bc                                    ; $7bf6: $09
    cp [hl]                                       ; $7bf7: $be
    ld a, [hl+]                                   ; $7bf8: $2a
    ld a, a                                       ; $7bf9: $7f
    ld [hl], l                                    ; $7bfa: $75
    cp a                                          ; $7bfb: $bf
    db $fd                                        ; $7bfc: $fd
    db $10                                        ; $7bfd: $10
    daa                                           ; $7bfe: $27
    rst $20                                       ; $7bff: $e7
    and b                                         ; $7c00: $a0
    ld h, $00                                     ; $7c01: $26 $00
    ldh [$e0], a                                  ; $7c03: $e0 $e0
    ld h, b                                       ; $7c05: $60
    ld h, b                                       ; $7c06: $60
    nop                                           ; $7c07: $00
    db $dd                                        ; $7c08: $dd
    db $e3                                        ; $7c09: $e3
    ld l, e                                       ; $7c0a: $6b
    ld a, a                                       ; $7c0b: $7f
    ld a, $3e                                     ; $7c0c: $3e $3e

jr_0bb_7c0e:
    inc e                                         ; $7c0e: $1c
    inc e                                         ; $7c0f: $1c
    ret nz                                        ; $7c10: $c0

    ld a, b                                       ; $7c11: $78
    add hl, bc                                    ; $7c12: $09
    ld a, h                                       ; $7c13: $7c
    add hl, bc                                    ; $7c14: $09
    push af                                       ; $7c15: $f5
    ei                                            ; $7c16: $fb
    dec e                                         ; $7c17: $1d
    inc de                                        ; $7c18: $13
    dec d                                         ; $7c19: $15
    dec de                                        ; $7c1a: $1b
    nop                                           ; $7c1b: $00
    dec l                                         ; $7c1c: $2d
    inc sp                                        ; $7c1d: $33
    add hl, hl                                    ; $7c1e: $29
    scf                                           ; $7c1f: $37
    dec hl                                        ; $7c20: $2b
    scf                                           ; $7c21: $37
    ld a, [hl-]                                   ; $7c22: $3a
    ld a, $00                                     ; $7c23: $3e $00
    ld c, $0e                                     ; $7c25: $0e $0e
    ld h, [hl]                                    ; $7c27: $66
    xor $66                                       ; $7c28: $ee $66
    rst $28                                       ; $7c2a: $ef
    ld l, $3f                                     ; $7c2b: $2e $3f
    db $10                                        ; $7c2d: $10
    inc c                                         ; $7c2e: $0c
    dec e                                         ; $7c2f: $1d
    inc c                                         ; $7c30: $0c
    ld [hl+], a                                   ; $7c31: $22
    jr nz, jr_0bb_7c9a                            ; $7c32: $20 $66

jr_0bb_7c34:
    ld [c], a                                     ; $7c34: $e2
    call z, Call_000_00c4                         ; $7c35: $cc $c4 $00
    call c, $d8cc                                 ; $7c38: $dc $cc $d8
    ret z                                         ; $7c3b: $c8

    jr c, jr_0bb_7c56                             ; $7c3c: $38 $18

    jr nc, @+$12                                  ; $7c3e: $30 $10

    nop                                           ; $7c40: $00
    jr nc, jr_0bb_7cb3                            ; $7c41: $30 $70

    jr nc, jr_0bb_7cb5                            ; $7c43: $30 $70

    inc bc                                        ; $7c45: $03
    inc bc                                        ; $7c46: $03
    dec b                                         ; $7c47: $05
    ld b, $00                                     ; $7c48: $06 $00
    ld b, $05                                     ; $7c4a: $06 $05
    dec bc                                        ; $7c4c: $0b
    inc c                                         ; $7c4d: $0c
    add hl, bc                                    ; $7c4e: $09
    ld c, $1b                                     ; $7c4f: $0e $1b
    inc e                                         ; $7c51: $1c

jr_0bb_7c52:
    nop                                           ; $7c52: $00
    dec a                                         ; $7c53: $3d

jr_0bb_7c54:
    ld a, $6e                                     ; $7c54: $3e $6e

jr_0bb_7c56:
    ld [hl], c                                    ; $7c56: $71
    add b                                         ; $7c57: $80
    add b                                         ; $7c58: $80
    ld b, b                                       ; $7c59: $40
    ret nz                                        ; $7c5a: $c0

    nop                                           ; $7c5b: $00
    and b                                         ; $7c5c: $a0
    ld h, b                                       ; $7c5d: $60
    ld d, b                                       ; $7c5e: $50
    or b                                          ; $7c5f: $b0
    ret nc                                        ; $7c60: $d0

    jr nc, jr_0bb_7beb                            ; $7c61: $30 $88

    ld a, b                                       ; $7c63: $78
    nop                                           ; $7c64: $00
    ret c                                         ; $7c65: $d8

jr_0bb_7c66:
    jr c, jr_0bb_7c54                             ; $7c66: $38 $ec

    inc e                                         ; $7c68: $1c
    ld e, $1e                                     ; $7c69: $1e $1e
    ld hl, $0033                                  ; $7c6b: $21 $33 $00
    ld e, d                                       ; $7c6e: $5a
    ld b, b                                       ; $7c6f: $40
    cp l                                          ; $7c70: $bd
    ret nz                                        ; $7c71: $c0

    cp [hl]                                       ; $7c72: $be
    add b                                         ; $7c73: $80
    sbc h                                         ; $7c74: $9c
    add b                                         ; $7c75: $80
    inc c                                         ; $7c76: $0c
    xor c                                         ; $7c77: $a9
    pop bc                                        ; $7c78: $c1
    ld d, d                                       ; $7c79: $52
    ld b, d                                       ; $7c7a: $42
    ldh [$09], a                                  ; $7c7b: $e0 $09
    inc h                                         ; $7c7d: $24
    ld [$4040], sp                                ; $7c7e: $08 $40 $40
    inc bc                                        ; $7c81: $03
    ldh a, [$f0]                                  ; $7c82: $f0 $f0
    ld [$d498], sp                                ; $7c84: $08 $98 $d4
    inc b                                         ; $7c87: $04
    ld a, b                                       ; $7c88: $78
    jr z, @-$06                                   ; $7c89: $28 $f8

    add hl, bc                                    ; $7c8b: $09
    nop                                           ; $7c8c: $00
    inc bc                                        ; $7c8d: $03
    inc bc                                        ; $7c8e: $03
    dec c                                         ; $7c8f: $0d
    inc c                                         ; $7c90: $0c
    db $10                                        ; $7c91: $10
    db $10                                        ; $7c92: $10
    jr @+$1a                                      ; $7c93: $18 $18

    nop                                           ; $7c95: $00
    jr c, jr_0bb_7cc0                             ; $7c96: $38 $28

    jr z, @+$3a                                   ; $7c98: $28 $38

jr_0bb_7c9a:
    ld a, b                                       ; $7c9a: $78
    ld e, b                                       ; $7c9b: $58
    ret z                                         ; $7c9c: $c8

    sbc b                                         ; $7c9d: $98
    ld b, b                                       ; $7c9e: $40
    sbc b                                         ; $7c9f: $98
    ld a, c                                       ; $7ca0: $79
    ld bc, $1010                                  ; $7ca1: $01 $10 $10
    jr c, jr_0bb_7cce                             ; $7ca4: $38 $28

    ld a, h                                       ; $7ca6: $7c
    ld b, h                                       ; $7ca7: $44
    nop                                           ; $7ca8: $00
    ld e, [hl]                                    ; $7ca9: $5e
    ld h, d                                       ; $7caa: $62
    cpl                                           ; $7cab: $2f
    ld sp, $1916                                  ; $7cac: $31 $16 $19
    dec bc                                        ; $7caf: $0b
    inc c                                         ; $7cb0: $0c
    jr nz, jr_0bb_7cb8                            ; $7cb1: $20 $05

jr_0bb_7cb3:
    ld b, $40                                     ; $7cb3: $06 $40

jr_0bb_7cb5:
    ld a, [de]                                    ; $7cb5: $1a
    cp b                                          ; $7cb6: $b8
    ret z                                         ; $7cb7: $c8

jr_0bb_7cb8:
    ld e, h                                       ; $7cb8: $5c
    ld h, h                                       ; $7cb9: $64
    xor d                                         ; $7cba: $aa
    nop                                           ; $7cbb: $00
    or [hl]                                       ; $7cbc: $b6
    sbc [hl]                                      ; $7cbd: $9e
    sub d                                         ; $7cbe: $92
    ld d, [hl]                                    ; $7cbf: $56

jr_0bb_7cc0:
    jp c, $0101                                   ; $7cc0: $da $01 $01

    ld b, $10                                     ; $7cc3: $06 $10
    rlca                                          ; $7cc5: $07
    dec bc                                        ; $7cc6: $0b
    inc c                                         ; $7cc7: $0c
    ld [bc], a                                    ; $7cc8: $02
    ld [$1e1d], sp                                ; $7cc9: $08 $1d $1e
    jr z, jr_0bb_7d0d                             ; $7ccc: $28 $3f

jr_0bb_7cce:
    nop                                           ; $7cce: $00
    ld d, d                                       ; $7ccf: $52
    ld a, l                                       ; $7cd0: $7d
    ldh [$e0], a                                  ; $7cd1: $e0 $e0
    ret nc                                        ; $7cd3: $d0

    jr nc, jr_0bb_7c66                            ; $7cd4: $30 $90

jr_0bb_7cd6:
    ld [hl], b                                    ; $7cd6: $70
    nop                                           ; $7cd7: $00
    ld c, b                                       ; $7cd8: $48

jr_0bb_7cd9:
    cp b                                          ; $7cd9: $b8
    sbc b                                         ; $7cda: $98
    ld a, b                                       ; $7cdb: $78
    jr c, jr_0bb_7cd6                             ; $7cdc: $38 $f8

    ld d, h                                       ; $7cde: $54
    db $fc                                        ; $7cdf: $fc
    dec [hl]                                      ; $7ce0: $35
    xor h                                         ; $7ce1: $ac
    db $fc                                        ; $7ce2: $fc
    ret c                                         ; $7ce3: $d8

    jr z, jr_0bb_7d36                             ; $7ce4: $28 $50

    dec bc                                        ; $7ce6: $0b
    inc bc                                        ; $7ce7: $03

jr_0bb_7ce8:
    inc h                                         ; $7ce8: $24
    ld bc, $5a10                                  ; $7ce9: $01 $10 $5a
    ld [bc], a                                    ; $7cec: $02
    nop                                           ; $7ced: $00
    ld e, b                                       ; $7cee: $58
    ld l, b                                       ; $7cef: $68
    ldh a, [$d0]                                  ; $7cf0: $f0 $d0
    ld d, b                                       ; $7cf2: $50
    ldh a, [$e0]                                  ; $7cf3: $f0 $e0
    jr nz, jr_0bb_7cff                            ; $7cf5: $20 $08

    jr nz, jr_0bb_7cd9                            ; $7cf7: $20 $e0

    ldh [$a0], a                                  ; $7cf9: $e0 $a0
    ld [hl], h                                    ; $7cfb: $74
    nop                                           ; $7cfc: $00
    ld c, $17                                     ; $7cfd: $0e $17

jr_0bb_7cff:
    inc e                                         ; $7cff: $1c
    inc b                                         ; $7d00: $04
    dec e                                         ; $7d01: $1d
    ld d, $1a                                     ; $7d02: $16 $1a
    inc de                                        ; $7d04: $13
    rrca                                          ; $7d05: $0f
    ld e, [hl]                                    ; $7d06: $5e
    nop                                           ; $7d07: $00
    dec bc                                        ; $7d08: $0b
    dec bc                                        ; $7d09: $0b
    ld [bc], a                                    ; $7d0a: $02
    add b                                         ; $7d0b: $80
    add b                                         ; $7d0c: $80

jr_0bb_7d0d:
    ld h, b                                       ; $7d0d: $60
    ldh [$f0], a                                  ; $7d0e: $e0 $f0
    ld d, b                                       ; $7d10: $50
    jr nz, jr_0bb_7d13                            ; $7d11: $20 $00

jr_0bb_7d13:
    ret nc                                        ; $7d13: $d0

    ld bc, $70b0                                  ; $7d14: $01 $b0 $70
    ldh a, [$30]                                  ; $7d17: $f0 $30
    ld e, b                                       ; $7d19: $58
    ret z                                         ; $7d1a: $c8

    nop                                           ; $7d1b: $00
    ld h, b                                       ; $7d1c: $60

jr_0bb_7d1d:
    nop                                           ; $7d1d: $00
    ld bc, $090f                                  ; $7d1e: $01 $0f $09
    dec bc                                        ; $7d21: $0b
    dec c                                         ; $7d22: $0d
    dec b                                         ; $7d23: $05
    rlca                                          ; $7d24: $07
    rlca                                          ; $7d25: $07
    ld [$8010], sp                                ; $7d26: $08 $10 $80
    and b                                         ; $7d29: $a0
    ld a, [bc]                                    ; $7d2a: $0a
    ld h, b                                       ; $7d2b: $60
    ld h, b                                       ; $7d2c: $60
    ldh a, [$90]                                  ; $7d2d: $f0 $90
    ret nc                                        ; $7d2f: $d0

    or b                                          ; $7d30: $b0
    and b                                         ; $7d31: $a0
    nop                                           ; $7d32: $00
    ldh [$c0], a                                  ; $7d33: $e0 $c0
    ret nz                                        ; $7d35: $c0

jr_0bb_7d36:
    jr nc, jr_0bb_7ce8                            ; $7d36: $30 $b0

    ld e, l                                       ; $7d38: $5d
    ld h, d                                       ; $7d39: $62
    xor [hl]                                      ; $7d3a: $ae
    nop                                           ; $7d3b: $00
    pop de                                        ; $7d3c: $d1
    sub a                                         ; $7d3d: $97
    add sp, -$55                                  ; $7d3e: $e8 $ab
    db $f4                                        ; $7d40: $f4
    ld [hl], b                                    ; $7d41: $70
    ld a, a                                       ; $7d42: $7f
    rra                                           ; $7d43: $1f
    nop                                           ; $7d44: $00
    rra                                           ; $7d45: $1f
    nop                                           ; $7d46: $00
    ld b, d                                       ; $7d47: $42
    nop                                           ; $7d48: $00
    ld [$0ef6], sp                                ; $7d49: $08 $f6 $0e
    ld sp, hl                                     ; $7d4c: $f9
    nop                                           ; $7d4d: $00
    rlca                                          ; $7d4e: $07
    jp hl                                         ; $7d4f: $e9


    rla                                           ; $7d50: $17
    ld d, c                                       ; $7d51: $51
    xor a                                         ; $7d52: $af
    xor d                                         ; $7d53: $aa
    ld e, [hl]                                    ; $7d54: $5e
    sbc h                                         ; $7d55: $9c
    nop                                           ; $7d56: $00
    db $fc                                        ; $7d57: $fc
    ld [hl], b                                    ; $7d58: $70
    ld [hl], c                                    ; $7d59: $71
    nop                                           ; $7d5a: $00
    inc b                                         ; $7d5b: $04
    dec h                                         ; $7d5c: $25
    ld [hl], $1d                                  ; $7d5d: $36 $1d
    ld bc, $041c                                  ; $7d5f: $01 $1c $04
    inc b                                         ; $7d62: $04
    dec b                                         ; $7d63: $05
    ld b, $02                                     ; $7d64: $06 $02
    ld [bc], a                                    ; $7d66: $02
    jp nz, $8001                                  ; $7d67: $c2 $01 $80

    db $dd                                        ; $7d6a: $dd
    ld [bc], a                                    ; $7d6b: $02
    ld [$f206], a                                 ; $7d6c: $ea $06 $f2
    ld [bc], a                                    ; $7d6f: $02
    ld [$5202], a                                 ; $7d70: $ea $02 $52
    nop                                           ; $7d73: $00
    ld b, $a4                                     ; $7d74: $06 $a4
    inc b                                         ; $7d76: $04
    ld [$f098], sp                                ; $7d77: $08 $98 $f0
    ldh a, [rP1]                                  ; $7d7a: $f0 $00
    nop                                           ; $7d7c: $00
    nop                                           ; $7d7d: $00
    ld [hl], $31                                  ; $7d7e: $36 $31
    ld d, b                                       ; $7d80: $50
    ld b, l                                       ; $7d81: $45
    ld h, b                                       ; $7d82: $60

jr_0bb_7d83:
    ld b, a                                       ; $7d83: $47
    ld [hl], b                                    ; $7d84: $70
    ld bc, $3543                                  ; $7d85: $01 $43 $35
    ld hl, $101e                                  ; $7d88: $21 $1e $10
    rrca                                          ; $7d8b: $0f
    rrca                                          ; $7d8c: $0f
    db $fc                                        ; $7d8d: $fc
    ld [bc], a                                    ; $7d8e: $02
    dec de                                        ; $7d8f: $1b
    ld [hl], b                                    ; $7d90: $70
    jr nc, jr_0bb_7d83                            ; $7d91: $30 $f0

    jp nz, $0019                                  ; $7d93: $c2 $19 $00

    ld a, [de]                                    ; $7d96: $1a
    ld [bc], a                                    ; $7d97: $02
    ld [hl], $12                                  ; $7d98: $36 $12
    inc a                                         ; $7d9a: $3c
    jr jr_0bb_7d1d                                ; $7d9b: $18 $80

    inc e                                         ; $7d9d: $1c
    dec bc                                        ; $7d9e: $0b
    call $ab4b                                    ; $7d9f: $cd $4b $ab
    ld l, l                                       ; $7da2: $6d
    ld l, e                                       ; $7da3: $6b
    xor l                                         ; $7da4: $ad
    ld h, a                                       ; $7da5: $67
    nop                                           ; $7da6: $00
    and l                                         ; $7da7: $a5
    push hl                                       ; $7da8: $e5
    and a                                         ; $7da9: $a7
    and l                                         ; $7daa: $a5
    rst $20                                       ; $7dab: $e7
    and e                                         ; $7dac: $a3
    db $e3                                        ; $7dad: $e3
    ld h, b                                       ; $7dae: $60
    nop                                           ; $7daf: $00
    ld h, b                                       ; $7db0: $60
    call nc, $aeab                                ; $7db1: $d4 $ab $ae
    pop de                                        ; $7db4: $d1
    push hl                                       ; $7db5: $e5
    ld a, [$00d8]                                 ; $7db6: $fa $d8 $00
    rst $38                                       ; $7db9: $ff
    xor [hl]                                      ; $7dba: $ae
    rst $38                                       ; $7dbb: $ff
    ld [hl], l                                    ; $7dbc: $75
    ld a, a                                       ; $7dbd: $7f
    ld a, [de]                                    ; $7dbe: $1a
    rra                                           ; $7dbf: $1f
    rlca                                          ; $7dc0: $07
    nop                                           ; $7dc1: $00
    rlca                                          ; $7dc2: $07
    ld d, $ee                                     ; $7dc3: $16 $ee
    xor a                                         ; $7dc5: $af
    ld e, a                                       ; $7dc6: $5f
    ld e, a                                       ; $7dc7: $5f
    cp a                                          ; $7dc8: $bf
    cp e                                          ; $7dc9: $bb
    nop                                           ; $7dca: $00
    ld a, a                                       ; $7dcb: $7f
    ld d, l                                       ; $7dcc: $55
    rst $38                                       ; $7dcd: $ff
    ld [bc], a                                    ; $7dce: $02
    cp $4c                                        ; $7dcf: $fe $4c
    db $fc                                        ; $7dd1: $fc

jr_0bb_7dd2:
    ldh a, [rP1]                                  ; $7dd2: $f0 $00
    ldh a, [$0b]                                  ; $7dd4: $f0 $0b
    inc c                                         ; $7dd6: $0c
    ld e, $19                                     ; $7dd7: $1e $19
    ld a, [hl+]                                   ; $7dd9: $2a
    dec a                                         ; $7dda: $3d
    inc [hl]                                      ; $7ddb: $34
    ld bc, $2d2f                                  ; $7ddc: $01 $2f $2d
    scf                                           ; $7ddf: $37
    ld de, $0e1f                                  ; $7de0: $11 $1f $0e
    ld c, $9e                                     ; $7de3: $0e $9e
    dec bc                                        ; $7de5: $0b
    pop bc                                        ; $7de6: $c1
    ld a, [de]                                    ; $7de7: $1a
    ld a, [hl+]                                   ; $7de8: $2a
    ld a, [c]                                     ; $7de9: $f2
    add hl, de                                    ; $7dea: $19
    rrca                                          ; $7deb: $0f
    ld a, [bc]                                    ; $7dec: $0a
    ld c, $0b                                     ; $7ded: $0e $0b
    dec b                                         ; $7def: $05
    sbc h                                         ; $7df0: $9c
    ld [hl+], a                                   ; $7df1: $22
    add b                                         ; $7df2: $80
    and d                                         ; $7df3: $a2
    ld [$28f8], sp                                ; $7df4: $08 $f8 $28
    add sp, $28                                   ; $7df7: $e8 $28
    ld d, b                                       ; $7df9: $50
    ret nc                                        ; $7dfa: $d0

    ldh [$f8], a                                  ; $7dfb: $e0 $f8
    ld b, d                                       ; $7dfd: $42
    ld [de], a                                    ; $7dfe: $12
    ret nz                                        ; $7dff: $c0

    ld a, [bc]                                    ; $7e00: $0a
    inc e                                         ; $7e01: $1c
    ld [$18fa], sp                                ; $7e02: $08 $fa $18
    ld h, $18                                     ; $7e05: $26 $18
    nop                                           ; $7e07: $00
    ld a, a                                       ; $7e08: $7f
    ccf                                           ; $7e09: $3f
    nop                                           ; $7e0a: $00
    ld a, a                                       ; $7e0b: $7f
    dec e                                         ; $7e0c: $1d
    ld a, a                                       ; $7e0d: $7f
    ccf                                           ; $7e0e: $3f
    rst $38                                       ; $7e0f: $ff
    ld e, $7f                                     ; $7e10: $1e $7f
    dec a                                         ; $7e12: $3d
    jr nz, @+$01                                  ; $7e13: $20 $ff

Jump_0bb_7e15:
    jr jr_0bb_7e53                                ; $7e15: $18 $3c

    inc b                                         ; $7e17: $04
    nop                                           ; $7e18: $00
    rst $38                                       ; $7e19: $ff
    push af                                       ; $7e1a: $f5
    rst $38                                       ; $7e1b: $ff
    db $eb                                        ; $7e1c: $eb
    ld [bc], a                                    ; $7e1d: $02
    rst $38                                       ; $7e1e: $ff
    ld d, a                                       ; $7e1f: $57
    rst $38                                       ; $7e20: $ff
    xor a                                         ; $7e21: $af
    rst $38                                       ; $7e22: $ff
    ld e, a                                       ; $7e23: $5f
    ld h, b                                       ; $7e24: $60

jr_0bb_7e25:
    inc d                                         ; $7e25: $14
    nop                                           ; $7e26: $00
    ret nz                                        ; $7e27: $c0

    ld [$7600], sp                                ; $7e28: $08 $00 $76
    inc l                                         ; $7e2b: $2c
    ld a, a                                       ; $7e2c: $7f
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    cp a                                          ; $7e2f: $bf
    ld d, b                                       ; $7e30: $50
    ld [bc], a                                    ; $7e31: $02
    ld h, e                                       ; $7e32: $63
    ld bc, $0020                                  ; $7e33: $01 $20 $00
    rst $38                                       ; $7e36: $ff
    ld [bc], a                                    ; $7e37: $02
    ld e, b                                       ; $7e38: $58
    inc bc                                        ; $7e39: $03
    db $fc                                        ; $7e3a: $fc
    rlca                                          ; $7e3b: $07
    db $fd                                        ; $7e3c: $fd
    ld e, $08                                     ; $7e3d: $1e $08
    ei                                            ; $7e3f: $fb
    db $fc                                        ; $7e40: $fc
    rlca                                          ; $7e41: $07
    ldh a, [rNR23]                                ; $7e42: $f0 $18
    jr nz, jr_0bb_7dd2                            ; $7e44: $20 $8c

    ld a, e                                       ; $7e46: $7b
    add [hl]                                      ; $7e47: $86
    inc b                                         ; $7e48: $04
    ei                                            ; $7e49: $fb
    rlca                                          ; $7e4a: $07
    db $fd                                        ; $7e4b: $fd
    inc bc                                        ; $7e4c: $03
    cp $28                                        ; $7e4d: $fe $28
    jr z, jr_0bb_7e6a                             ; $7e4f: $28 $19

    rst $30                                       ; $7e51: $f7
    nop                                           ; $7e52: $00

jr_0bb_7e53:
    dec c                                         ; $7e53: $0d
    or $0f                                        ; $7e54: $f6 $0f
    ld a, [$f907]                                 ; $7e56: $fa $07 $f9
    ld b, $fd                                     ; $7e59: $06 $fd
    ld b, b                                       ; $7e5b: $40
    ld [bc], a                                    ; $7e5c: $02
    ld a, [hl-]                                   ; $7e5d: $3a
    db $10                                        ; $7e5e: $10
    rra                                           ; $7e5f: $1f
    pop af                                        ; $7e60: $f1
    inc b                                         ; $7e61: $04
    ei                                            ; $7e62: $fb
    inc b                                         ; $7e63: $04
    ei                                            ; $7e64: $fb
    ld [$fb84], sp                                ; $7e65: $08 $84 $fb
    rst $18                                       ; $7e68: $df
    ld [hl], c                                    ; $7e69: $71

jr_0bb_7e6a:
    ld c, d                                       ; $7e6a: $4a

jr_0bb_7e6b:
    jr jr_0bb_7e8e                                ; $7e6b: $18 $21

    sbc $21                                       ; $7e6d: $de $21
    ld bc, $71de                                  ; $7e6f: $01 $de $71
    sbc $fb                                       ; $7e72: $de $fb
    adc [hl]                                      ; $7e74: $8e
    rlca                                          ; $7e75: $07
    db $fc                                        ; $7e76: $fc
    ld e, d                                       ; $7e77: $5a
    jr jr_0bb_7e7a                                ; $7e78: $18 $00

jr_0bb_7e7a:
    ret nz                                        ; $7e7a: $c0

    ccf                                           ; $7e7b: $3f
    ret nz                                        ; $7e7c: $c0

    ccf                                           ; $7e7d: $3f
    ldh [$bf], a                                  ; $7e7e: $e0 $bf
    halt                                          ; $7e80: $76
    db $dd                                        ; $7e81: $dd
    jr nz, jr_0bb_7ec2                            ; $7e82: $20 $3e

    db $e3                                        ; $7e84: $e3
    ld l, d                                       ; $7e85: $6a

jr_0bb_7e86:
    jr jr_0bb_7e25                                ; $7e86: $18 $9d

    ld [hl], a                                    ; $7e88: $77
    cp b                                          ; $7e89: $b8
    ld c, a                                       ; $7e8a: $4f
    cp b                                          ; $7e8b: $b8
    ld [bc], a                                    ; $7e8c: $02

jr_0bb_7e8d:
    ld l, a                                       ; $7e8d: $6f

jr_0bb_7e8e:
    ret c                                         ; $7e8e: $d8

    ld [hl], a                                    ; $7e8f: $77
    adc $3b                                       ; $7e90: $ce $3b
    inc b                                         ; $7e92: $04
    ld a, d                                       ; $7e93: $7a
    db $10                                        ; $7e94: $10
    ldh [rP1], a                                  ; $7e95: $e0 $00
    rra                                           ; $7e97: $1f
    jr nc, @-$1f                                  ; $7e98: $30 $df

    jr nc, jr_0bb_7e6b                            ; $7e9a: $30 $cf

    jr nc, jr_0bb_7e8d                            ; $7e9c: $30 $ef

    dec de                                        ; $7e9e: $1b
    nop                                           ; $7e9f: $00
    xor $18                                       ; $7ea0: $ee $18
    rst $20                                       ; $7ea2: $e7
    ld a, [hl]                                    ; $7ea3: $7e
    jp $ff00                                      ; $7ea4: $c3 $00 $ff


    rlca                                          ; $7ea7: $07
    ld bc, $0cf8                                  ; $7ea8: $01 $f8 $0c
    ei                                            ; $7eab: $fb
    inc c                                         ; $7eac: $0c
    rst $30                                       ; $7ead: $f7
    ld [$30f7], sp                                ; $7eae: $08 $f7 $30
    jr z, @+$24                                   ; $7eb1: $28 $22

    ret nz                                        ; $7eb3: $c0

    cp a                                          ; $7eb4: $bf
    ld b, d                                       ; $7eb5: $42
    ld [$bfc0], sp                                ; $7eb6: $08 $c0 $bf
    ld b, b                                       ; $7eb9: $40
    xor b                                         ; $7eba: $a8
    jr nz, jr_0bb_7ee4                            ; $7ebb: $20 $27

    ld bc, $23dc                                  ; $7ebd: $01 $dc $23
    sbc $21                                       ; $7ec0: $de $21

jr_0bb_7ec2:
    rst $18                                       ; $7ec2: $df
    ld hl, sp-$71                                 ; $7ec3: $f8 $8f
    cp b                                          ; $7ec5: $b8
    jr z, jr_0bb_7ec8                             ; $7ec6: $28 $00

jr_0bb_7ec8:
    add d                                         ; $7ec8: $82
    db $fd                                        ; $7ec9: $fd
    add [hl]                                      ; $7eca: $86
    ld a, l                                       ; $7ecb: $7d

jr_0bb_7ecc:
    adc $7b                                       ; $7ecc: $ce $7b
    db $fc                                        ; $7ece: $fc
    add a                                         ; $7ecf: $87
    sbc b                                         ; $7ed0: $98
    ret z                                         ; $7ed1: $c8

    jr z, @+$03                                   ; $7ed2: $28 $01

    cp $02                                        ; $7ed4: $fe $02
    nop                                           ; $7ed6: $00
    call nc, $1c40                                ; $7ed7: $d4 $40 $1c
    db $e3                                        ; $7eda: $e3
    sub l                                         ; $7edb: $95
    inc b                                         ; $7edc: $04
    db $eb                                        ; $7edd: $eb
    dec d                                         ; $7ede: $15
    xor $7f                                       ; $7edf: $ee $7f
    ret nz                                        ; $7ee1: $c0

    add sp, $28                                   ; $7ee2: $e8 $28

jr_0bb_7ee4:
    ret nz                                        ; $7ee4: $c0

    ccf                                           ; $7ee5: $3f
    nop                                           ; $7ee6: $00
    rst $08                                       ; $7ee7: $cf
    jr c, jr_0bb_7ecc                             ; $7ee8: $38 $e2

    cp l                                          ; $7eea: $bd
    ld [hl], d                                    ; $7eeb: $72
    db $dd                                        ; $7eec: $dd
    ld a, $e1                                     ; $7eed: $3e $e1
    add b                                         ; $7eef: $80
    ld a, [$3e18]                                 ; $7ef0: $fa $18 $3e
    db $e3                                        ; $7ef3: $e3
    adc b                                         ; $7ef4: $88
    rst $30                                       ; $7ef5: $f7
    adc b                                         ; $7ef6: $88
    ld [hl], a                                    ; $7ef7: $77
    adc b                                         ; $7ef8: $88
    inc c                                         ; $7ef9: $0c
    ld [hl], a                                    ; $7efa: $77
    cp [hl]                                       ; $7efb: $be
    ld h, e                                       ; $7efc: $63
    add b                                         ; $7efd: $80
    ld a, [bc]                                    ; $7efe: $0a
    ld de, $18ce                                  ; $7eff: $11 $ce $18
    sbc a                                         ; $7f02: $9f
    ld [hl], b                                    ; $7f03: $70
    jr nc, jr_0bb_7e86                            ; $7f04: $30 $80

    ld a, a                                       ; $7f06: $7f
    ld [bc], a                                    ; $7f07: $02
    nop                                           ; $7f08: $00

Call_0bb_7f09:
    inc e                                         ; $7f09: $1c
    ld bc, $c33c                                  ; $7f0a: $01 $3c $c3
    inc [hl]                                      ; $7f0d: $34
    rlc d                                         ; $7f0e: $cb $02
    inc [hl]                                      ; $7f10: $34
    rst $08                                       ; $7f11: $cf
    jr nc, @-$2f                                  ; $7f12: $30 $cf

    rst $38                                       ; $7f14: $ff
    add b                                         ; $7f15: $80
    ld a, [hl+]                                   ; $7f16: $2a
    ld e, c                                       ; $7f17: $59
    db $fc                                        ; $7f18: $fc
    ld [bc], a                                    ; $7f19: $02
    rlca                                          ; $7f1a: $07
    rrca                                          ; $7f1b: $0f
    ld sp, hl                                     ; $7f1c: $f9
    rlca                                          ; $7f1d: $07
    db $fc                                        ; $7f1e: $fc
    inc bc                                        ; $7f1f: $03
    and $20                                       ; $7f20: $e6 $20
    nop                                           ; $7f22: $00
    nop                                           ; $7f23: $00
    rst $38                                       ; $7f24: $ff

jr_0bb_7f25:
    di                                            ; $7f25: $f3
    sbc [hl]                                      ; $7f26: $9e
    ld b, a                                       ; $7f27: $47

jr_0bb_7f28:
    cp l                                          ; $7f28: $bd
    add $bb                                       ; $7f29: $c6 $bb
    call z, Call_0bb_7b40                         ; $7f2b: $cc $40 $7b
    ld d, b                                       ; $7f2e: $50
    add hl, hl                                    ; $7f2f: $29
    ldh a, [$9f]                                  ; $7f30: $f0 $9f
    jr nz, @-$1f                                  ; $7f32: $20 $df

    jr nc, jr_0bb_7f25                            ; $7f34: $30 $ef

    nop                                           ; $7f36: $00
    jr jr_0bb_7f28                                ; $7f37: $18 $ef

    inc b                                         ; $7f39: $04
    rst $38                                       ; $7f3a: $ff
    inc c                                         ; $7f3b: $0c
    ei                                            ; $7f3c: $fb
    ld c, $f3                                     ; $7f3d: $0e $f3
    nop                                           ; $7f3f: $00
    dec sp                                        ; $7f40: $3b
    call z, $6dd6                                 ; $7f41: $cc $d6 $6d
    sbc [hl]                                      ; $7f44: $9e
    di                                            ; $7f45: $f3
    ld a, [de]                                    ; $7f46: $1a
    db $ed                                        ; $7f47: $ed
    adc d                                         ; $7f48: $8a
    ld l, [hl]                                    ; $7f49: $6e
    add hl, sp                                    ; $7f4a: $39
    rst $38                                       ; $7f4b: $ff
    adc h                                         ; $7f4c: $8c
    ld [hl], c                                    ; $7f4d: $71
    ld a, [hl+]                                   ; $7f4e: $2a
    ld bc, $983f                                  ; $7f4f: $01 $3f $98
    jr nz, jr_0bb_7f56                            ; $7f52: $20 $02

    ld b, $fd                                     ; $7f54: $06 $fd

jr_0bb_7f56:
    ld a, [hl]                                    ; $7f56: $7e
    pop bc                                        ; $7f57: $c1
    ld [c], a                                     ; $7f58: $e2
    cp l                                          ; $7f59: $bd
    inc l                                         ; $7f5a: $2c
    add hl, bc                                    ; $7f5b: $09
    sub b                                         ; $7f5c: $90
    add hl, de                                    ; $7f5d: $19
    ld hl, sp+$00                                 ; $7f5e: $f8 $00
    rrca                                          ; $7f60: $0f
    db $fc                                        ; $7f61: $fc
    ld [hl], a                                    ; $7f62: $77
    adc [hl]                                      ; $7f63: $8e
    ld a, e                                       ; $7f64: $7b
    adc [hl]                                      ; $7f65: $8e
    ld a, c                                       ; $7f66: $79
    adc a                                         ; $7f67: $8f
    add b                                         ; $7f68: $80
    ld d, b                                       ; $7f69: $50
    db $10                                        ; $7f6a: $10
    ldh [$3f], a                                  ; $7f6b: $e0 $3f
    add e                                         ; $7f6d: $83
    ld a, [hl]                                    ; $7f6e: $7e
    ret nz                                        ; $7f6f: $c0

    ld a, a                                       ; $7f70: $7f
    ret nz                                        ; $7f71: $c0

    inc b                                         ; $7f72: $04
    cp a                                          ; $7f73: $bf
    ld h, b                                       ; $7f74: $60
    cp a                                          ; $7f75: $bf
    ld h, b                                       ; $7f76: $60
    sbc a                                         ; $7f77: $9f
    or b                                          ; $7f78: $b0
    add hl, bc                                    ; $7f79: $09
    rlca                                          ; $7f7a: $07
    db $fc                                        ; $7f7b: $fc
    nop                                           ; $7f7c: $00
    ld bc, $03fe                                  ; $7f7d: $01 $fe $03
    cp $02                                        ; $7f80: $fe $02
    db $fd                                        ; $7f82: $fd
    ld b, $fd                                     ; $7f83: $06 $fd
    inc hl                                        ; $7f85: $23
    ld b, $fb                                     ; $7f86: $06 $fb
    ld [hl], b                                    ; $7f88: $70
    jr nc, jr_0bb_7faa                            ; $7f89: $30 $1f

    ld b, b                                       ; $7f8b: $40
    cp a                                          ; $7f8c: $bf
    ld [bc], a                                    ; $7f8d: $02
    ld [$287e], sp                                ; $7f8e: $08 $7e $28
    nop                                           ; $7f91: $00
    cp c                                          ; $7f92: $b9
    rst $08                                       ; $7f93: $cf
    inc a                                         ; $7f94: $3c
    rst $00                                       ; $7f95: $c7
    ld a, $d3                                     ; $7f96: $3e $d3
    cpl                                           ; $7f98: $2f
    reti                                          ; $7f99: $d9


    add [hl]                                      ; $7f9a: $86
    ldh [$29], a                                  ; $7f9b: $e0 $29
    rst $08                                       ; $7f9d: $cf
    ld a, b                                       ; $7f9e: $78
    add d                                         ; $7f9f: $82
    db $fd                                        ; $7fa0: $fd
    ld [bc], a                                    ; $7fa1: $02
    ld [$09f0], sp                                ; $7fa2: $08 $f0 $09
    add b                                         ; $7fa5: $80
    nop                                           ; $7fa6: $00
    rst $38                                       ; $7fa7: $ff
    add b                                         ; $7fa8: $80
    ld a, a                                       ; $7fa9: $7f

jr_0bb_7faa:
    add a                                         ; $7faa: $87
    ld a, h                                       ; $7fab: $7c
    add c                                         ; $7fac: $81
    ld a, [hl]                                    ; $7fad: $7e
    add c                                         ; $7fae: $81
    ret nz                                        ; $7faf: $c0

    inc l                                         ; $7fb0: $2c
    ld bc, $2a00                                  ; $7fb1: $01 $00 $2a
    ld a, a                                       ; $7fb4: $7f
    ret nz                                        ; $7fb5: $c0

    db $10                                        ; $7fb6: $10
    rst $28                                       ; $7fb7: $ef
    inc d                                         ; $7fb8: $14
    rst $28                                       ; $7fb9: $ef
    jr nz, jr_0bb_7fd0                            ; $7fba: $20 $14

    db $eb                                        ; $7fbc: $eb
    db $10                                        ; $7fbd: $10
    ld a, [hl+]                                   ; $7fbe: $2a
    ld a, $e1                                     ; $7fbf: $3e $e1
    ld [hl], e                                    ; $7fc1: $73

jr_0bb_7fc2:
    sbc $e1                                       ; $7fc2: $de $e1
    add b                                         ; $7fc4: $80
    ld a, h                                       ; $7fc5: $7c
    ld bc, $ff08                                  ; $7fc6: $01 $08 $ff
    jr jr_0bb_7fc2                                ; $7fc9: $18 $f7

    inc e                                         ; $7fcb: $1c
    rst $20                                       ; $7fcc: $e7
    halt                                          ; $7fcd: $76
    nop                                           ; $7fce: $00
    sbc c                                         ; $7fcf: $99

jr_0bb_7fd0:
    inc l                                         ; $7fd0: $2c
    db $db                                        ; $7fd1: $db
    inc a                                         ; $7fd2: $3c
    rst $20                                       ; $7fd3: $e7
    inc [hl]                                      ; $7fd4: $34
    db $db                                        ; $7fd5: $db
    nop                                           ; $7fd6: $00
    ld [$40ff], sp                                ; $7fd7: $08 $ff $40
    rst $38                                       ; $7fda: $ff
    ld b, b                                       ; $7fdb: $40
    sub d                                         ; $7fdc: $92
    ld bc, $bf40                                  ; $7fdd: $01 $40 $bf
    ld e, a                                       ; $7fe0: $5f
    and [hl]                                      ; $7fe1: $a6
    ld hl, sp+$11                                 ; $7fe2: $f8 $11
    inc b                                         ; $7fe4: $04
    add b                                         ; $7fe5: $80
    db $10                                        ; $7fe6: $10
    rst $38                                       ; $7fe7: $ff
    add b                                         ; $7fe8: $80
    jp nz, $2401                                  ; $7fe9: $c2 $01 $24

    ld bc, $0034                                  ; $7fec: $01 $34 $00
    rst $08                                       ; $7fef: $cf
    inc [hl]                                      ; $7ff0: $34
    set 7, a                                      ; $7ff1: $cb $ff
    ld a, a                                       ; $7ff3: $7f
    or l                                          ; $7ff4: $b5
    dec hl                                        ; $7ff5: $2b
    jr nz, @+$18                                  ; $7ff6: $20 $16

    ld h, b                                       ; $7ff8: $60
    inc b                                         ; $7ff9: $04
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
