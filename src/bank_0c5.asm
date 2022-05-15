; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c5", ROMX[$4000], BANK[$c5]

    db $c5

    ldh a, [$0a]                                  ; $4001: $f0 $0a
    xor l                                         ; $4003: $ad
    inc b                                         ; $4004: $04
    nop                                           ; $4005: $00
    ldh [rIE], a                                  ; $4006: $e0 $ff
    ld h, b                                       ; $4008: $60
    rst $38                                       ; $4009: $ff
    ld b, b                                       ; $400a: $40
    ld d, l                                       ; $400b: $55
    ld h, b                                       ; $400c: $60
    cp $00                                        ; $400d: $fe $00
    ld b, b                                       ; $400f: $40
    ld d, l                                       ; $4010: $55
    db $20, $aa                                   ; $4011: $20 $aa
    ld b, b                                       ; $4013: $40
    ld d, l                                       ; $4014: $55
    ldh [rIE], a                                  ; $4015: $e0 $ff
    nop                                           ; $4017: $00
    rst $00                                       ; $4018: $c7
    ccf                                           ; $4019: $3f
    xor [hl]                                      ; $401a: $ae
    rra                                           ; $401b: $1f
    ld d, a                                       ; $401c: $57
    rlca                                          ; $401d: $07
    xor d                                         ; $401e: $aa
    ld [bc], a                                    ; $401f: $02
    nop                                           ; $4020: $00
    ld b, l                                       ; $4021: $45
    dec d                                         ; $4022: $15
    xor d                                         ; $4023: $aa
    ld a, [bc]                                    ; $4024: $0a
    ld c, l                                       ; $4025: $4d
    ccf                                           ; $4026: $3f
    xor e                                         ; $4027: $ab
    rra                                           ; $4028: $1f
    ld bc, $ffe0                                  ; $4029: $01 $e0 $ff
    and b                                         ; $402c: $a0
    xor d                                         ; $402d: $aa
    ldh [$f5], a                                  ; $402e: $e0 $f5
    and b                                         ; $4030: $a0
    inc e                                         ; $4031: $1c
    nop                                           ; $4032: $00
    add b                                         ; $4033: $80
    inc b                                         ; $4034: $04
    ld [$ffe0], sp                                ; $4035: $08 $e0 $ff
    ei                                            ; $4038: $fb
    ccf                                           ; $4039: $3f
    sub a                                         ; $403a: $97
    ld a, a                                       ; $403b: $7f
    ld de, $5500                                  ; $403c: $11 $00 $55
    adc d                                         ; $403f: $8a
    ld a, [hl+]                                   ; $4040: $2a
    ld de, $aa55                                  ; $4041: $11 $55 $aa
    ld a, [hl+]                                   ; $4044: $2a
    dec d                                         ; $4045: $15
    ld [$7f55], sp                                ; $4046: $08 $55 $7f
    rst $38                                       ; $4049: $ff
    add b                                         ; $404a: $80
    ld [bc], a                                    ; $404b: $02
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    ld d, l                                       ; $404e: $55

jr_0c5_404f:
    add b                                         ; $404f: $80
    ld b, b                                       ; $4050: $40
    xor d                                         ; $4051: $aa
    inc b                                         ; $4052: $04
    jr nz, jr_0c5_404f                            ; $4053: $20 $fa

    srl a                                         ; $4055: $cb $3f
    and l                                         ; $4057: $a5
    ld e, a                                       ; $4058: $5f
    rst $08                                       ; $4059: $cf
    ld [$853f], sp                                ; $405a: $08 $3f $85
    ld a, a                                       ; $405d: $7f
    adc $04                                       ; $405e: $ce $04
    nop                                           ; $4060: $00
    jp z, $873f                                   ; $4061: $ca $3f $87

    jr nz, @+$81                                  ; $4064: $20 $7f

    rst $38                                       ; $4066: $ff
    ld bc, $1f60                                  ; $4067: $01 $60 $1f
    rst $38                                       ; $406a: $ff
    ld a, [hl+]                                   ; $406b: $2a
    xor d                                         ; $406c: $aa
    ld de, $5528                                  ; $406d: $11 $28 $55
    ld [bc], a                                    ; $4070: $02
    jr nc, jr_0c5_4073                            ; $4071: $30 $00

jr_0c5_4073:
    nop                                           ; $4073: $00
    inc [hl]                                      ; $4074: $34
    ld [$c8ff], sp                                ; $4075: $08 $ff $c8
    rst $30                                       ; $4078: $f7
    ld bc, $a389                                  ; $4079: $01 $89 $a3
    ld b, b                                       ; $407c: $40
    ld d, l                                       ; $407d: $55
    ld [$00a2], sp                                ; $407e: $08 $a2 $00
    inc b                                         ; $4081: $04
    stop                                          ; $4082: $10 $00
    add hl, bc                                    ; $4084: $09
    rst $30                                       ; $4085: $f7
    or c                                          ; $4086: $b1
    cp $71                                        ; $4087: $fe $71
    cp $51                                        ; $4089: $fe $51
    ld e, [hl]                                    ; $408b: $5e
    inc b                                         ; $408c: $04
    ld hl, $51aa                                  ; $408d: $21 $aa $51
    ld d, h                                       ; $4090: $54
    and c                                         ; $4091: $a1
    inc b                                         ; $4092: $04
    db $10                                        ; $4093: $10
    db $db                                        ; $4094: $db
    ccf                                           ; $4095: $3f
    jr z, @+$19                                   ; $4096: $28 $17

    ld a, a                                       ; $4098: $7f
    inc b                                         ; $4099: $04
    ld [$08fb], sp                                ; $409a: $08 $fb $08
    nop                                           ; $409d: $00
    cp a                                          ; $409e: $bf
    ld a, a                                       ; $409f: $7f
    rra                                           ; $40a0: $1f
    nop                                           ; $40a1: $00
    ld a, a                                       ; $40a2: $7f
    ld a, [bc]                                    ; $40a3: $0a
    pop af                                        ; $40a4: $f1
    dec c                                         ; $40a5: $0d
    di                                            ; $40a6: $f3
    inc b                                         ; $40a7: $04
    ld d, c                                       ; $40a8: $51
    dec c                                         ; $40a9: $0d
    ld b, $b3                                     ; $40aa: $06 $b3

jr_0c5_40ac:
    inc b                                         ; $40ac: $04
    ld d, c                                       ; $40ad: $51
    ld [$04a2], sp                                ; $40ae: $08 $a2 $04
    ld [$10c0], sp                                ; $40b1: $08 $c0 $10
    ld e, a                                       ; $40b4: $5f
    and h                                         ; $40b5: $a4
    call nz, $5700                                ; $40b6: $c4 $00 $57
    ret nz                                        ; $40b9: $c0

    ld [$aaa0], sp                                ; $40ba: $08 $a0 $aa
    ret nz                                        ; $40bd: $c0

    ld [$2fd7], sp                                ; $40be: $08 $d7 $2f
    ld [bc], a                                    ; $40c1: $02
    xor d                                         ; $40c2: $aa
    rla                                           ; $40c3: $17
    push bc                                       ; $40c4: $c5
    dec [hl]                                      ; $40c5: $35
    xor d                                         ; $40c6: $aa
    ld a, [bc]                                    ; $40c7: $0a
    call nz, $e008                                ; $40c8: $c4 $08 $e0
    ld a, b                                       ; $40cb: $78
    rst $38                                       ; $40cc: $ff
    ld [bc], a                                    ; $40cd: $02
    jr jr_0c5_40ac                                ; $40ce: $18 $dc

    ld [$08c4], sp                                ; $40d0: $08 $c4 $08
    ret nz                                        ; $40d3: $c0

    ld [$7fbb], sp                                ; $40d4: $08 $bb $7f
    sbc a                                         ; $40d7: $9f
    nop                                           ; $40d8: $00
    ld a, a                                       ; $40d9: $7f
    dec sp                                        ; $40da: $3b
    ld a, a                                       ; $40db: $7f
    rst $38                                       ; $40dc: $ff
    ld a, a                                       ; $40dd: $7f
    ccf                                           ; $40de: $3f
    ld a, a                                       ; $40df: $7f
    ld a, [hl+]                                   ; $40e0: $2a
    ld l, b                                       ; $40e1: $68
    xor d                                         ; $40e2: $aa
    ret nz                                        ; $40e3: $c0

    ld [$2004], sp                                ; $40e4: $08 $04 $20
    cp $c8                                        ; $40e7: $fe $c8
    ld [$3fcb], sp                                ; $40e9: $08 $cb $3f
    and b                                         ; $40ec: $a0
    nop                                           ; $40ed: $00
    ld c, d                                       ; $40ee: $4a
    rst $08                                       ; $40ef: $cf
    ccf                                           ; $40f0: $3f
    add h                                         ; $40f1: $84
    ld a, [hl]                                    ; $40f2: $7e
    call nz, $8035                                ; $40f3: $c4 $35 $80
    nop                                           ; $40f6: $00

jr_0c5_40f7:
    ld a, [hl+]                                   ; $40f7: $2a
    ld b, b                                       ; $40f8: $40
    dec d                                         ; $40f9: $15
    add d                                         ; $40fa: $82
    ld a, [hl+]                                   ; $40fb: $2a
    rst $38                                       ; $40fc: $ff
    rst $38                                       ; $40fd: $ff
    xor d                                         ; $40fe: $aa
    ld bc, $f5aa                                  ; $40ff: $01 $aa $f5
    push af                                       ; $4102: $f5
    xor d                                         ; $4103: $aa
    xor d                                         ; $4104: $aa
    ld d, l                                       ; $4105: $55
    ld d, l                                       ; $4106: $55
    inc b                                         ; $4107: $04
    jr jr_0c5_4112                                ; $4108: $18 $08

    rra                                           ; $410a: $1f
    rst $38                                       ; $410b: $ff
    cpl                                           ; $410c: $2f
    cp a                                          ; $410d: $bf
    ret nz                                        ; $410e: $c0

    ld b, b                                       ; $410f: $40
    xor d                                         ; $4110: $aa
    ld b, b                                       ; $4111: $40

jr_0c5_4112:
    ld d, a                                       ; $4112: $57
    and b                                         ; $4113: $a0
    ld h, d                                       ; $4114: $62
    ld [$02f0], sp                                ; $4115: $08 $f0 $02
    jr nc, jr_0c5_40f7                            ; $4118: $30 $dd

    ccf                                           ; $411a: $3f
    ld c, a                                       ; $411b: $4f
    cp a                                          ; $411c: $bf
    rst $18                                       ; $411d: $df
    jr nz, jr_0c5_415f                            ; $411e: $20 $3f

    ld c, l                                       ; $4120: $4d
    inc b                                         ; $4121: $04
    nop                                           ; $4122: $00
    rra                                           ; $4123: $1f
    rst $38                                       ; $4124: $ff
    rst $38                                       ; $4125: $ff
    cp a                                          ; $4126: $bf
    cp a                                          ; $4127: $bf
    and d                                         ; $4128: $a2
    ld a, [hl]                                    ; $4129: $7e
    nop                                           ; $412a: $00
    ld [c], a                                     ; $412b: $e2
    add d                                         ; $412c: $82
    nop                                           ; $412d: $00
    db $e4                                        ; $412e: $e4
    rst $38                                       ; $412f: $ff
    pop hl                                        ; $4130: $e1
    adc b                                         ; $4131: $88
    db $10                                        ; $4132: $10
    ld [c], a                                     ; $4133: $e2
    db $10                                        ; $4134: $10
    db $fd                                        ; $4135: $fd
    cp l                                          ; $4136: $bd
    db $fd                                        ; $4137: $fd
    inc de                                        ; $4138: $13
    add hl, de                                    ; $4139: $19
    ld a, [hl]                                    ; $413a: $7e
    rst $38                                       ; $413b: $ff
    inc d                                         ; $413c: $14
    rst $38                                       ; $413d: $ff
    jr jr_0c5_4188                                ; $413e: $18 $48

    rst $38                                       ; $4140: $ff
    nop                                           ; $4141: $00
    inc a                                         ; $4142: $3c
    add hl, bc                                    ; $4143: $09
    ld b, h                                       ; $4144: $44
    ld bc, $ffa0                                  ; $4145: $01 $a0 $ff
    ld b, b                                       ; $4148: $40
    jp c, Jump_000_0948                           ; $4149: $da $48 $09

    stop                                          ; $414c: $10 $00

jr_0c5_414e:
    jp z, $0160                                   ; $414e: $ca $60 $01

    inc b                                         ; $4151: $04
    ld [$68cb], sp                                ; $4152: $08 $cb $68
    ld bc, $98cf                                  ; $4155: $01 $cf $98
    ld l, h                                       ; $4158: $6c
    ld bc, $ffff                                  ; $4159: $01 $ff $ff
    ld b, e                                       ; $415c: $43
    add hl, bc                                    ; $415d: $09
    inc b                                         ; $415e: $04

jr_0c5_415f:
    jr z, @+$01                                   ; $415f: $28 $ff

    rst $38                                       ; $4161: $ff
    add b                                         ; $4162: $80
    ld b, b                                       ; $4163: $40
    xor e                                         ; $4164: $ab
    or d                                          ; $4165: $b2
    ld b, b                                       ; $4166: $40
    rst $38                                       ; $4167: $ff
    add c                                         ; $4168: $81
    cp $01                                        ; $4169: $fe $01
    push af                                       ; $416b: $f5
    add hl, bc                                    ; $416c: $09
    jr nz, @+$01                                  ; $416d: $20 $ff

    dec bc                                        ; $416f: $0b
    ld [bc], a                                    ; $4170: $02
    nop                                           ; $4171: $00
    cpl                                           ; $4172: $2f
    rst $38                                       ; $4173: $ff
    rrca                                          ; $4174: $0f
    rst $38                                       ; $4175: $ff
    rla                                           ; $4176: $17
    ld bc, $0aff                                  ; $4177: $01 $ff $0a
    rst $38                                       ; $417a: $ff
    ld d, c                                       ; $417b: $51
    ld d, h                                       ; $417c: $54
    pop af                                        ; $417d: $f1
    cp $02                                        ; $417e: $fe $02
    jr z, @+$06                                   ; $4180: $28 $04

    jp hl                                         ; $4182: $e9


    cp $91                                        ; $4183: $fe $91
    cp $bf                                        ; $4185: $fe $bf
    db $ec                                        ; $4187: $ec

jr_0c5_4188:
    nop                                           ; $4188: $00
    ccf                                           ; $4189: $3f
    rst $38                                       ; $418a: $ff
    add b                                         ; $418b: $80
    inc b                                         ; $418c: $04
    jr z, jr_0c5_414e                             ; $418d: $28 $bf

    ld a, a                                       ; $418f: $7f
    inc b                                         ; $4190: $04
    pop de                                        ; $4191: $d1
    add hl, bc                                    ; $4192: $09
    rst $30                                       ; $4193: $f7
    ld c, $00                                     ; $4194: $0e $00
    di                                            ; $4196: $f3
    add hl, bc                                    ; $4197: $09
    rst $30                                       ; $4198: $f7
    dec bc                                        ; $4199: $0b
    rst $30                                       ; $419a: $f7
    ld bc, $23ff                                  ; $419b: $01 $ff $23
    ret nc                                        ; $419e: $d0

    ld a, [hl-]                                   ; $419f: $3a
    nop                                           ; $41a0: $00
    db $f4                                        ; $41a1: $f4
    ld bc, $c0ea                                  ; $41a2: $01 $ea $c0
    ld c, b                                       ; $41a5: $48
    ld d, l                                       ; $41a6: $55
    dec d                                         ; $41a7: $15
    ld a, [bc]                                    ; $41a8: $0a
    xor d                                         ; $41a9: $aa
    add h                                         ; $41aa: $84
    ret nz                                        ; $41ab: $c0

    ld c, b                                       ; $41ac: $48
    ld b, b                                       ; $41ad: $40
    ld d, l                                       ; $41ae: $55
    and d                                         ; $41af: $a2
    xor d                                         ; $41b0: $aa
    ret nz                                        ; $41b1: $c0

    ld c, b                                       ; $41b2: $48
    dec d                                         ; $41b3: $15
    ld d, l                                       ; $41b4: $55
    dec hl                                        ; $41b5: $2b
    ld a, [hl+]                                   ; $41b6: $2a
    xor d                                         ; $41b7: $aa
    ret nz                                        ; $41b8: $c0

    ld h, b                                       ; $41b9: $60
    cp a                                          ; $41ba: $bf
    ret nz                                        ; $41bb: $c0

    ld c, b                                       ; $41bc: $48
    rst $38                                       ; $41bd: $ff
    ldh [rSB], a                                  ; $41be: $e0 $01
    or b                                          ; $41c0: $b0
    ld c, b                                       ; $41c1: $48
    and b                                         ; $41c2: $a0
    inc e                                         ; $41c3: $1c
    ld [bc], a                                    ; $41c4: $02
    xor a                                         ; $41c5: $af
    or b                                          ; $41c6: $b0
    ld c, b                                       ; $41c7: $48
    db $f4                                        ; $41c8: $f4
    rst $38                                       ; $41c9: $ff
    add sp, -$01                                  ; $41ca: $e8 $ff
    ld de, $ff00                                  ; $41cc: $11 $00 $ff
    ld bc, $25ff                                  ; $41cf: $01 $ff $25
    rst $38                                       ; $41d2: $ff
    ld [bc], a                                    ; $41d3: $02
    rst $38                                       ; $41d4: $ff
    sub c                                         ; $41d5: $91

jr_0c5_41d6:
    ld [$04ef], sp                                ; $41d6: $08 $ef $04
    ei                                            ; $41d9: $fb
    cp a                                          ; $41da: $bf
    ld hl, $3f42                                  ; $41db: $21 $42 $3f
    rst $38                                       ; $41de: $ff
    ld c, d                                       ; $41df: $4a
    add b                                         ; $41e0: $80
    xor [hl]                                      ; $41e1: $ae
    ld hl, $fee1                                  ; $41e2: $21 $e1 $fe
    add sp, -$01                                  ; $41e5: $e8 $ff
    ret nc                                        ; $41e7: $d0

    rst $38                                       ; $41e8: $ff
    and c                                         ; $41e9: $a1
    inc b                                         ; $41ea: $04
    cp $04                                        ; $41eb: $fe $04
    ei                                            ; $41ed: $fb
    ld b, b                                       ; $41ee: $40
    cp a                                          ; $41ef: $bf
    ld d, $09                                     ; $41f0: $16 $09
    inc b                                         ; $41f2: $04
    ei                                            ; $41f3: $fb
    inc bc                                        ; $41f4: $03
    jr nz, jr_0c5_41d6                            ; $41f5: $20 $df

    ld [bc], a                                    ; $41f7: $02
    db $fd                                        ; $41f8: $fd
    nop                                           ; $41f9: $00
    rst $38                                       ; $41fa: $ff
    ld c, $08                                     ; $41fb: $0e $08
    inc d                                         ; $41fd: $14
    ld [$0240], sp                                ; $41fe: $08 $40 $02
    ld a, [hl-]                                   ; $4201: $3a
    ld bc, $ff02                                  ; $4202: $01 $02 $ff
    add hl, bc                                    ; $4205: $09
    rst $38                                       ; $4206: $ff
    sub b                                         ; $4207: $90
    ld l, a                                       ; $4208: $6f
    dec b                                         ; $4209: $05
    rrca                                          ; $420a: $0f
    rst $38                                       ; $420b: $ff
    sub a                                         ; $420c: $97
    ld a, a                                       ; $420d: $7f
    rrca                                          ; $420e: $0f
    ld d, [hl]                                    ; $420f: $56
    ld [bc], a                                    ; $4210: $02
    cp a                                          ; $4211: $bf
    jr z, @+$03                                   ; $4212: $28 $01

    ld de, $ff7f                                  ; $4214: $11 $7f $ff
    sbc a                                         ; $4217: $9f
    ld l, a                                       ; $4218: $6f
    ld d, d                                       ; $4219: $52
    cp $ff                                        ; $421a: $fe $ff
    ld sp, hl                                     ; $421c: $f9
    sbc $21                                       ; $421d: $de $21
    nop                                           ; $421f: $00
    ret nz                                        ; $4220: $c0

    rst $38                                       ; $4221: $ff
    adc b                                         ; $4222: $88
    rst $38                                       ; $4223: $ff
    ld [hl+], a                                   ; $4224: $22
    db $fd                                        ; $4225: $fd
    sub b                                         ; $4226: $90
    rst $38                                       ; $4227: $ff
    jr c, jr_0c5_423b                             ; $4228: $38 $11

    xor $4c                                       ; $422a: $ee $4c
    nop                                           ; $422c: $00
    halt                                          ; $422d: $76
    ld bc, $0856                                  ; $422e: $01 $56 $08
    ld [bc], a                                    ; $4231: $02
    db $fd                                        ; $4232: $fd
    stop                                          ; $4233: $10 $00
    rst $28                                       ; $4235: $ef
    ld b, c                                       ; $4236: $41
    cp [hl]                                       ; $4237: $be
    ld b, c                                       ; $4238: $41
    cp $01                                        ; $4239: $fe $01

jr_0c5_423b:
    cp $03                                        ; $423b: $fe $03
    ld [bc], a                                    ; $423d: $02
    cp $00                                        ; $423e: $fe $00
    rst $38                                       ; $4240: $ff
    ld c, c                                       ; $4241: $49
    cp a                                          ; $4242: $bf
    ld bc, $0092                                  ; $4243: $01 $92 $00
    ld de, $ef35                                  ; $4246: $11 $35 $ef
    ccf                                           ; $4249: $3f
    ld [hl], b                                    ; $424a: $70
    ld bc, $0804                                  ; $424b: $01 $04 $08
    ld a, a                                       ; $424e: $7f
    ld a, $10                                     ; $424f: $3e $10
    ld d, h                                       ; $4251: $54
    ld e, b                                       ; $4252: $58
    ld bc, $56b9                                  ; $4253: $01 $b9 $56
    add hl, bc                                    ; $4256: $09
    ld b, b                                       ; $4257: $40
    ld l, $00                                     ; $4258: $2e $00
    xor [hl]                                      ; $425a: $ae
    add hl, bc                                    ; $425b: $09
    adc b                                         ; $425c: $88
    nop                                           ; $425d: $00
    jr nz, jr_0c5_4260                            ; $425e: $20 $00

jr_0c5_4260:
    ld bc, $8800                                  ; $4260: $01 $00 $88
    ld b, $10                                     ; $4263: $06 $10
    adc d                                         ; $4265: $8a
    nop                                           ; $4266: $00
    db $dd                                        ; $4267: $dd
    ret nz                                        ; $4268: $c0

    ld bc, $4000                                  ; $4269: $01 $00 $40
    ld b, b                                       ; $426c: $40
    nop                                           ; $426d: $00
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    add b                                         ; $4270: $80
    add h                                         ; $4271: $84
    nop                                           ; $4272: $00
    ld [$1400], sp                                ; $4273: $08 $00 $14
    ld [$2f00], sp                                ; $4276: $08 $00 $2f
    nop                                           ; $4279: $00
    cp $0c                                        ; $427a: $fe $0c
    nop                                           ; $427c: $00
    add b                                         ; $427d: $80
    ld [$8008], sp                                ; $427e: $08 $08 $80
    inc h                                         ; $4281: $24
    nop                                           ; $4282: $00
    ld b, b                                       ; $4283: $40
    nop                                           ; $4284: $00
    or b                                          ; $4285: $b0
    nop                                           ; $4286: $00
    ld l, e                                       ; $4287: $6b
    nop                                           ; $4288: $00
    rst $30                                       ; $4289: $f7
    inc c                                         ; $428a: $0c
    db $10                                        ; $428b: $10
    db $10                                        ; $428c: $10
    ld [bc], a                                    ; $428d: $02
    ld [bc], a                                    ; $428e: $02
    ld [hl+], a                                   ; $428f: $22
    ld [$0020], sp                                ; $4290: $08 $20 $00
    add h                                         ; $4293: $84
    nop                                           ; $4294: $00
    inc b                                         ; $4295: $04
    ld e, e                                       ; $4296: $5b
    nop                                           ; $4297: $00
    rst $38                                       ; $4298: $ff
    ld de, $4011                                  ; $4299: $11 $11 $40
    ld [$0404], sp                                ; $429c: $08 $04 $04
    add d                                         ; $429f: $82
    ld b, [hl]                                    ; $42a0: $46
    nop                                           ; $42a1: $00
    add c                                         ; $42a2: $81
    nop                                           ; $42a3: $00
    ld c, d                                       ; $42a4: $4a
    nop                                           ; $42a5: $00
    or a                                          ; $42a6: $b7
    inc c                                         ; $42a7: $0c
    jr nz, jr_0c5_42ba                            ; $42a8: $20 $10

    adc l                                         ; $42aa: $8d
    ld c, [hl]                                    ; $42ab: $4e
    nop                                           ; $42ac: $00
    ld d, l                                       ; $42ad: $55
    nop                                           ; $42ae: $00
    ei                                            ; $42af: $fb
    ld d, b                                       ; $42b0: $50
    ld [$000d], sp                                ; $42b1: $08 $0d $00
    db $10                                        ; $42b4: $10
    ld a, $00                                     ; $42b5: $3e $00
    ld h, c                                       ; $42b7: $61
    or d                                          ; $42b8: $b2
    ld e, [hl]                                    ; $42b9: $5e

jr_0c5_42ba:
    nop                                           ; $42ba: $00
    sbc b                                         ; $42bb: $98
    nop                                           ; $42bc: $00
    ld b, b                                       ; $42bd: $40
    ld b, b                                       ; $42be: $40
    ld [bc], a                                    ; $42bf: $02
    ld [bc], a                                    ; $42c0: $02
    ld e, h                                       ; $42c1: $5c
    nop                                           ; $42c2: $00
    rlca                                          ; $42c3: $07
    inc l                                         ; $42c4: $2c
    nop                                           ; $42c5: $00
    ld d, h                                       ; $42c6: $54
    nop                                           ; $42c7: $00
    cp d                                          ; $42c8: $ba
    jr nz, jr_0c5_42d5                            ; $42c9: $20 $0a

    ld a, [hl]                                    ; $42cb: $7e
    ld [$0072], sp                                ; $42cc: $08 $72 $00
    ld bc, $0002                                  ; $42cf: $01 $02 $00
    ld h, $00                                     ; $42d2: $26 $00
    db $db                                        ; $42d4: $db

jr_0c5_42d5:
    nop                                           ; $42d5: $00
    rst $30                                       ; $42d6: $f7
    jr nz, jr_0c5_42e1                            ; $42d7: $20 $08

    add c                                         ; $42d9: $81
    ld d, b                                       ; $42da: $50
    db $10                                        ; $42db: $10
    ld b, h                                       ; $42dc: $44
    nop                                           ; $42dd: $00
    and b                                         ; $42de: $a0
    nop                                           ; $42df: $00
    ld d, b                                       ; $42e0: $50

jr_0c5_42e1:
    nop                                           ; $42e1: $00
    sbc $00                                       ; $42e2: $de $00
    inc h                                         ; $42e4: $24
    add b                                         ; $42e5: $80
    add b                                         ; $42e6: $80
    ld [hl], b                                    ; $42e7: $70
    jr jr_0c5_432a                                ; $42e8: $18 $40

    ld c, b                                       ; $42ea: $48
    ld d, h                                       ; $42eb: $54
    nop                                           ; $42ec: $00
    dec c                                         ; $42ed: $0d
    nop                                           ; $42ee: $00
    ld c, b                                       ; $42ef: $48
    ld a, a                                       ; $42f0: $7f
    ld l, d                                       ; $42f1: $6a
    ld [$5040], sp                                ; $42f2: $08 $40 $50
    sbc [hl]                                      ; $42f5: $9e
    db $10                                        ; $42f6: $10
    cp d                                          ; $42f7: $ba
    nop                                           ; $42f8: $00
    ld [hl], l                                    ; $42f9: $75
    ld de, $ef00                                  ; $42fa: $11 $00 $ef
    ld bc, $1266                                  ; $42fd: $01 $66 $12
    nop                                           ; $4300: $00
    rst $38                                       ; $4301: $ff
    jr nz, @+$74                                  ; $4302: $20 $72

    ld [bc], a                                    ; $4304: $02
    rst $00                                       ; $4305: $c7
    ld a, [bc]                                    ; $4306: $0a
    jr jr_0c5_4319                                ; $4307: $18 $10

    jr @+$04                                      ; $4309: $18 $02

    rst $38                                       ; $430b: $ff
    jr z, jr_0c5_4362                             ; $430c: $28 $54

    add hl, bc                                    ; $430e: $09
    ld h, h                                       ; $430f: $64

Call_0c5_4310:
    ld bc, $0a86                                  ; $4310: $01 $86 $0a
    ld d, a                                       ; $4313: $57
    ld b, c                                       ; $4314: $41
    ld [hl], d                                    ; $4315: $72
    ld bc, $9050                                  ; $4316: $01 $50 $90

jr_0c5_4319:
    ld [de], a                                    ; $4319: $12
    inc b                                         ; $431a: $04
    xor h                                         ; $431b: $ac
    ld bc, $1820                                  ; $431c: $01 $20 $18
    sbc [hl]                                      ; $431f: $9e
    ld a, [bc]                                    ; $4320: $0a
    ld h, d                                       ; $4321: $62
    add b                                         ; $4322: $80
    jr c, jr_0c5_4325                             ; $4323: $38 $00

jr_0c5_4325:
    ld b, b                                       ; $4325: $40
    jr @+$12                                      ; $4326: $18 $10

    rst $38                                       ; $4328: $ff
    add d                                         ; $4329: $82

jr_0c5_432a:
    cp [hl]                                       ; $432a: $be
    ld [bc], a                                    ; $432b: $02
    sub b                                         ; $432c: $90
    add l                                         ; $432d: $85
    ld e, $20                                     ; $432e: $1e $20
    nop                                           ; $4330: $00
    rst $38                                       ; $4331: $ff
    ld d, c                                       ; $4332: $51
    cp [hl]                                       ; $4333: $be
    ld d, b                                       ; $4334: $50
    ld l, b                                       ; $4335: $68
    inc h                                         ; $4336: $24
    sbc $02                                       ; $4337: $de $02
    dec hl                                        ; $4339: $2b
    ld bc, $40fe                                  ; $433a: $01 $fe $40
    ld e, b                                       ; $433d: $58
    ld b, b                                       ; $433e: $40
    ld b, b                                       ; $433f: $40
    ld b, b                                       ; $4340: $40
    ld b, c                                       ; $4341: $41
    cp $02                                        ; $4342: $fe $02
    ld [bc], a                                    ; $4344: $02

jr_0c5_4345:
    inc de                                        ; $4345: $13
    or [hl]                                       ; $4346: $b6
    ld hl, sp+$12                                 ; $4347: $f8 $12
    ld bc, $1030                                  ; $4349: $01 $30 $10
    sub d                                         ; $434c: $92
    jr z, jr_0c5_438f                             ; $434d: $28 $40

    ld a, [c]                                     ; $434f: $f2
    ld bc, $281c                                  ; $4350: $01 $1c $28
    ld [hl+], a                                   ; $4353: $22
    sub l                                         ; $4354: $95
    ld h, h                                       ; $4355: $64
    inc b                                         ; $4356: $04
    jr z, @-$1f                                   ; $4357: $28 $df

    ld a, [bc]                                    ; $4359: $0a
    db $10                                        ; $435a: $10
    rst $18                                       ; $435b: $df
    add b                                         ; $435c: $80
    jr jr_0c5_4377                                ; $435d: $18 $18

    jr c, jr_0c5_4364                             ; $435f: $38 $03

    rlca                                          ; $4361: $07

jr_0c5_4362:
    inc d                                         ; $4362: $14
    db $eb                                        ; $4363: $eb

jr_0c5_4364:
    jr nz, jr_0c5_4345                            ; $4364: $20 $df

    ld [$0086], sp                                ; $4366: $08 $86 $00
    sub b                                         ; $4369: $90
    ld [$0a0e], sp                                ; $436a: $08 $0e $0a
    ld e, e                                       ; $436d: $5b
    ld b, b                                       ; $436e: $40
    ld d, h                                       ; $436f: $54
    ld [bc], a                                    ; $4370: $02
    add h                                         ; $4371: $84
    ld b, b                                       ; $4372: $40
    add hl, bc                                    ; $4373: $09
    jp c, $0800                                   ; $4374: $da $00 $08

jr_0c5_4377:
    ld [c], a                                     ; $4377: $e2
    ld de, $0806                                  ; $4378: $11 $06 $08
    xor d                                         ; $437b: $aa
    jr z, @+$0c                                   ; $437c: $28 $0a

    inc bc                                        ; $437e: $03
    or h                                          ; $437f: $b4
    db $10                                        ; $4380: $10
    add b                                         ; $4381: $80
    or d                                          ; $4382: $b2
    nop                                           ; $4383: $00
    inc b                                         ; $4384: $04
    ld h, b                                       ; $4385: $60
    ld bc, $2440                                  ; $4386: $01 $40 $24
    cp a                                          ; $4389: $bf
    ld [de], a                                    ; $438a: $12
    ld l, h                                       ; $438b: $6c
    inc bc                                        ; $438c: $03
    inc d                                         ; $438d: $14
    rst $28                                       ; $438e: $ef

jr_0c5_438f:
    ld l, h                                       ; $438f: $6c
    dec bc                                        ; $4390: $0b
    sub c                                         ; $4391: $91
    rst $28                                       ; $4392: $ef
    ld [hl], b                                    ; $4393: $70
    jr nz, @-$36                                  ; $4394: $20 $c8

    nop                                           ; $4396: $00
    ld c, h                                       ; $4397: $4c
    nop                                           ; $4398: $00
    adc b                                         ; $4399: $88
    inc bc                                        ; $439a: $03
    ld [$10f7], sp                                ; $439b: $08 $f7 $10
    rst $28                                       ; $439e: $ef
    ld a, c                                       ; $439f: $79
    ld [bc], a                                    ; $43a0: $02
    ld a, [hl-]                                   ; $43a1: $3a
    nop                                           ; $43a2: $00
    db $10                                        ; $43a3: $10
    ld [$0a5e], sp                                ; $43a4: $08 $5e $0a
    ld b, [hl]                                    ; $43a7: $46
    nop                                           ; $43a8: $00
    rst $30                                       ; $43a9: $f7
    ld b, d                                       ; $43aa: $42
    ld [hl], d                                    ; $43ab: $72
    ld [bc], a                                    ; $43ac: $02
    jr nz, jr_0c5_43b3                            ; $43ad: $20 $04

    ei                                            ; $43af: $fb
    jr c, jr_0c5_43b2                             ; $43b0: $38 $00

jr_0c5_43b2:
    rst $38                                       ; $43b2: $ff

jr_0c5_43b3:
    ld hl, $00de                                  ; $43b3: $21 $de $00
    rst $38                                       ; $43b6: $ff
    ld l, b                                       ; $43b7: $68
    add h                                         ; $43b8: $84
    and [hl]                                      ; $43b9: $a6
    db $10                                        ; $43ba: $10
    xor d                                         ; $43bb: $aa
    ld [$3c10], sp                                ; $43bc: $08 $10 $3c
    ld [bc], a                                    ; $43bf: $02
    ld b, b                                       ; $43c0: $40
    rst $38                                       ; $43c1: $ff
    ld a, [bc]                                    ; $43c2: $0a
    adc l                                         ; $43c3: $8d
    inc l                                         ; $43c4: $2c
    ld de, $df20                                  ; $43c5: $11 $20 $df
    add hl, bc                                    ; $43c8: $09
    ld c, h                                       ; $43c9: $4c
    ld bc, $28de                                  ; $43ca: $01 $de $28
    db $10                                        ; $43cd: $10
    ld d, b                                       ; $43ce: $50
    db $10                                        ; $43cf: $10
    add c                                         ; $43d0: $81
    jr nc, jr_0c5_43d5                            ; $43d1: $30 $02

    cp a                                          ; $43d3: $bf
    inc b                                         ; $43d4: $04

jr_0c5_43d5:
    ei                                            ; $43d5: $fb
    ld [$81f7], sp                                ; $43d6: $08 $f7 $81
    ld l, h                                       ; $43d9: $6c
    ld [bc], a                                    ; $43da: $02
    call Call_000_088c                            ; $43db: $cd $8c $08
    ld [hl], h                                    ; $43de: $74
    add hl, bc                                    ; $43df: $09
    sub b                                         ; $43e0: $90
    ld a, a                                       ; $43e1: $7f
    call nz, $f002                                ; $43e2: $c4 $02 $f0
    inc bc                                        ; $43e5: $03
    add hl, bc                                    ; $43e6: $09
    or h                                          ; $43e7: $b4
    ld bc, $1a82                                  ; $43e8: $01 $82 $1a
    nop                                           ; $43eb: $00
    ld a, [hl]                                    ; $43ec: $7e
    nop                                           ; $43ed: $00
    rst $38                                       ; $43ee: $ff
    sub h                                         ; $43ef: $94
    ld l, e                                       ; $43f0: $6b
    ld a, h                                       ; $43f1: $7c
    ld [$b101], sp                                ; $43f2: $08 $01 $b1
    ld a, h                                       ; $43f5: $7c
    ld [bc], a                                    ; $43f6: $02
    ld [de], a                                    ; $43f7: $12
    adc [hl]                                      ; $43f8: $8e
    db $10                                        ; $43f9: $10
    ld d, h                                       ; $43fa: $54
    nop                                           ; $43fb: $00
    cp a                                          ; $43fc: $bf
    ld b, $fd                                     ; $43fd: $06 $fd
    add h                                         ; $43ff: $84
    nop                                           ; $4400: $00

Jump_0c5_4401:
    ld c, $f7                                     ; $4401: $0e $f7

jr_0c5_4403:
    ld bc, $08fe                                  ; $4403: $01 $fe $08
    ld l, b                                       ; $4406: $68
    ld hl, $08b2                                  ; $4407: $21 $b2 $08
    ld [hl], d                                    ; $440a: $72
    add hl, de                                    ; $440b: $19
    add b                                         ; $440c: $80
    ld sp, hl                                     ; $440d: $f9

Jump_0c5_440e:
    ld a, [c]                                     ; $440e: $f2
    nop                                           ; $440f: $00
    add b                                         ; $4410: $80
    add hl, bc                                    ; $4411: $09
    ld a, d                                       ; $4412: $7a
    add hl, bc                                    ; $4413: $09
    call nz, $220a                                ; $4414: $c4 $0a $22
    ld bc, $91ff                                  ; $4417: $01 $ff $91
    jp nz, Jump_0c5_4d31                          ; $441a: $c2 $31 $4d

    jr nz, jr_0c5_443f                            ; $441d: $20 $20

    ld bc, $fa05                                  ; $441f: $01 $05 $fa
    jp c, $a612                                   ; $4422: $da $12 $a6

    add hl, bc                                    ; $4425: $09
    ld a, a                                       ; $4426: $7f
    ld [hl], $1b                                  ; $4427: $36 $1b
    nop                                           ; $4429: $00
    ld d, b                                       ; $442a: $50
    xor a                                         ; $442b: $af
    ld bc, $48ff                                  ; $442c: $01 $ff $48
    or a                                          ; $442f: $b7
    ld [bc], a                                    ; $4430: $02
    db $fd                                        ; $4431: $fd
    ld [hl], l                                    ; $4432: $75
    add b                                         ; $4433: $80
    ld l, h                                       ; $4434: $6c
    inc bc                                        ; $4435: $03
    or h                                          ; $4436: $b4
    ld [$19c2], sp                                ; $4437: $08 $c2 $19
    db $10                                        ; $443a: $10
    ld b, [hl]                                    ; $443b: $46
    inc de                                        ; $443c: $13
    jr nz, @+$5e                                  ; $443d: $20 $5c

jr_0c5_443f:
    jr nc, jr_0c5_4486                            ; $443f: $30 $45

    inc h                                         ; $4441: $24
    ld e, h                                       ; $4442: $5c
    ld bc, $df21                                  ; $4443: $01 $21 $df
    db $10                                        ; $4446: $10
    sub h                                         ; $4447: $94
    inc bc                                        ; $4448: $03
    ld [hl+], a                                   ; $4449: $22
    or d                                          ; $444a: $b2
    ld de, $8033                                  ; $444b: $11 $33 $80
    ld a, a                                       ; $444e: $7f
    add b                                         ; $444f: $80
    nop                                           ; $4450: $00
    ld e, d                                       ; $4451: $5a
    ld [bc], a                                    ; $4452: $02
    dec b                                         ; $4453: $05
    ld a, [$09a2]                                 ; $4454: $fa $a2 $09
    jr nz, @+$0b                                  ; $4457: $20 $09

    inc de                                        ; $4459: $13
    ld [hl+], a                                   ; $445a: $22
    db $dd                                        ; $445b: $dd
    db $10                                        ; $445c: $10
    jr nc, jr_0c5_4460                            ; $445d: $30 $01

    ld b, b                                       ; $445f: $40

jr_0c5_4460:
    cp a                                          ; $4460: $bf
    ld b, $08                                     ; $4461: $06 $08
    add [hl]                                      ; $4463: $86
    dec bc                                        ; $4464: $0b
    sub b                                         ; $4465: $90
    inc b                                         ; $4466: $04
    ld a, [bc]                                    ; $4467: $0a
    inc b                                         ; $4468: $04
    rst $38                                       ; $4469: $ff
    inc d                                         ; $446a: $14
    ld [$ef50], sp                                ; $446b: $08 $50 $ef
    add d                                         ; $446e: $82
    ld a, a                                       ; $446f: $7f
    ld h, c                                       ; $4470: $61
    jr nz, jr_0c5_4477                            ; $4471: $20 $04

    ld bc, $1820                                  ; $4473: $01 $20 $18
    ld [bc], a                                    ; $4476: $02

jr_0c5_4477:
    rst $38                                       ; $4477: $ff
    adc b                                         ; $4478: $88
    ld [hl], a                                    ; $4479: $77
    ld e, [hl]                                    ; $447a: $5e
    ld a, [de]                                    ; $447b: $1a
    ld l, l                                       ; $447c: $6d
    add b                                         ; $447d: $80
    ld h, $11                                     ; $447e: $26 $11
    adc d                                         ; $4480: $8a
    jr z, jr_0c5_4403                             ; $4481: $28 $80

    ret nz                                        ; $4483: $c0

    inc bc                                        ; $4484: $03
    ld d, d                                       ; $4485: $52

jr_0c5_4486:
    ld [$8602], sp                                ; $4486: $08 $02 $86
    add hl, bc                                    ; $4489: $09
    sub a                                         ; $448a: $97
    ld a, d                                       ; $448b: $7a
    ld bc, $be41                                  ; $448c: $01 $41 $be
    ld c, h                                       ; $448f: $4c
    ld [de], a                                    ; $4490: $12
    ld a, a                                       ; $4491: $7f
    ld d, h                                       ; $4492: $54
    ld a, [de]                                    ; $4493: $1a
    ld d, d                                       ; $4494: $52
    ld a, [bc]                                    ; $4495: $0a
    call nc, Call_0c5_4310                        ; $4496: $d4 $10 $43
    ei                                            ; $4499: $fb
    jr nc, jr_0c5_449d                            ; $449a: $30 $01

    ei                                            ; $449c: $fb

jr_0c5_449d:
    add b                                         ; $449d: $80
    ld a, a                                       ; $449e: $7f
    ld [$0be2], sp                                ; $449f: $08 $e2 $0b
    sub d                                         ; $44a2: $92
    ld de, $98bf                                  ; $44a3: $11 $bf $98
    nop                                           ; $44a6: $00
    cp $16                                        ; $44a7: $fe $16
    dec e                                         ; $44a9: $1d
    sub [hl]                                      ; $44aa: $96
    add hl, de                                    ; $44ab: $19
    or d                                          ; $44ac: $b2
    ld a, [bc]                                    ; $44ad: $0a
    adc d                                         ; $44ae: $8a
    ld [$09b4], sp                                ; $44af: $08 $b4 $09
    adc b                                         ; $44b2: $88
    ld a, [de]                                    ; $44b3: $1a
    ei                                            ; $44b4: $fb
    inc l                                         ; $44b5: $2c
    ld [$182a], sp                                ; $44b6: $08 $2a $18
    ld a, [de]                                    ; $44b9: $1a
    ld [$1ad2], sp                                ; $44ba: $08 $d2 $1a
    inc a                                         ; $44bd: $3c
    ld bc, $2cdf                                  ; $44be: $01 $df $2c
    nop                                           ; $44c1: $00
    jr c, jr_0c5_44c8                             ; $44c2: $38 $04

    sub [hl]                                      ; $44c4: $96
    jp nz, Jump_000_240a                          ; $44c5: $c2 $0a $24

jr_0c5_44c8:
    db $db                                        ; $44c8: $db
    inc l                                         ; $44c9: $2c
    inc c                                         ; $44ca: $0c
    ld [$0114], sp                                ; $44cb: $08 $14 $01
    db $f4                                        ; $44ce: $f4
    ld a, [bc]                                    ; $44cf: $0a
    add l                                         ; $44d0: $85
    ld e, [hl]                                    ; $44d1: $5e
    ld a, [hl]                                    ; $44d2: $7e
    ret nz                                        ; $44d3: $c0

    ld a, [de]                                    ; $44d4: $1a
    add d                                         ; $44d5: $82
    ld c, $00                                     ; $44d6: $0e $00
    ld a, $08                                     ; $44d8: $3e $08
    ret c                                         ; $44da: $d8

    add hl, bc                                    ; $44db: $09
    call c, Call_000_041a                         ; $44dc: $dc $1a $04
    cp $80                                        ; $44df: $fe $80
    dec d                                         ; $44e1: $15
    ldh [rNR11], a                                ; $44e2: $e0 $11
    ld [bc], a                                    ; $44e4: $02

jr_0c5_44e5:
    ld bc, $09fe                                  ; $44e5: $01 $fe $09
    jr c, @+$0b                                   ; $44e8: $38 $09

    ld l, h                                       ; $44ea: $6c
    add hl, de                                    ; $44eb: $19
    inc [hl]                                      ; $44ec: $34
    dec bc                                        ; $44ed: $0b
    ld [de], a                                    ; $44ee: $12
    ld c, h                                       ; $44ef: $4c
    db $ed                                        ; $44f0: $ed
    or [hl]                                       ; $44f1: $b6
    ld [$fa05], sp                                ; $44f2: $08 $05 $fa
    db $fc                                        ; $44f5: $fc
    ld bc, $2342                                  ; $44f6: $01 $42 $23
    ld c, b                                       ; $44f9: $48
    rst $30                                       ; $44fa: $f7
    jr c, jr_0c5_4521                             ; $44fb: $38 $24

    db $db                                        ; $44fd: $db
    jp nc, $980a                                  ; $44fe: $d2 $0a $98

    inc c                                         ; $4501: $0c
    ld [hl], d                                    ; $4502: $72
    ld a, [bc]                                    ; $4503: $0a
    jr nz, jr_0c5_44e5                            ; $4504: $20 $df

    ld bc, $7abd                                  ; $4506: $01 $bd $7a
    ld [bc], a                                    ; $4509: $02
    ld de, $044c                                  ; $450a: $11 $4c $04
    ld l, b                                       ; $450d: $68
    ld a, [bc]                                    ; $450e: $0a
    ld c, [hl]                                    ; $450f: $4e
    dec bc                                        ; $4510: $0b
    ldh [rSC], a                                  ; $4511: $e0 $02
    or a                                          ; $4513: $b7
    or h                                          ; $4514: $b4
    inc c                                         ; $4515: $0c
    rla                                           ; $4516: $17
    jr nz, @-$1f                                  ; $4517: $20 $df

    inc b                                         ; $4519: $04
    jr c, jr_0c5_452f                             ; $451a: $38 $13

    ld [$134c], sp                                ; $451c: $08 $4c $13
    ld c, h                                       ; $451f: $4c
    add hl, bc                                    ; $4520: $09

jr_0c5_4521:
    ld [$1f04], sp                                ; $4521: $08 $04 $1f
    xor $44                                       ; $4524: $ee $44
    cp e                                          ; $4526: $bb
    ld a, b                                       ; $4527: $78
    dec de                                        ; $4528: $1b
    ld h, [hl]                                    ; $4529: $66
    jr @-$32                                      ; $452a: $18 $cc

    ld [$0a02], sp                                ; $452c: $08 $02 $0a

jr_0c5_452f:
    jp c, $df09                                   ; $452f: $da $09 $df

    ld l, b                                       ; $4532: $68
    ld a, [de]                                    ; $4533: $1a
    add $09                                       ; $4534: $c6 $09
    ld bc, $052a                                  ; $4536: $01 $2a $05
    ld c, h                                       ; $4539: $4c
    ld a, [bc]                                    ; $453a: $0a
    add $0a                                       ; $453b: $c6 $0a
    ld [hl], h                                    ; $453d: $74
    dec bc                                        ; $453e: $0b

jr_0c5_453f:
    ld [$0e0d], sp                                ; $453f: $08 $0d $0e
    ld [$85f7], sp                                ; $4542: $08 $f7 $85
    ld a, d                                       ; $4545: $7a
    sub b                                         ; $4546: $90
    dec hl                                        ; $4547: $2b
    jr c, @+$1c                                   ; $4548: $38 $1a

    sbc b                                         ; $454a: $98
    dec bc                                        ; $454b: $0b
    ld de, $ee70                                  ; $454c: $11 $70 $ee
    inc a                                         ; $454f: $3c
    ld bc, $214c                                  ; $4550: $01 $4c $21
    ld e, $0d                                     ; $4553: $1e $0d
    inc d                                         ; $4555: $14
    db $eb                                        ; $4556: $eb
    ld b, d                                       ; $4557: $42
    cp l                                          ; $4558: $bd
    adc e                                         ; $4559: $8b
    ret nc                                        ; $455a: $d0

    dec de                                        ; $455b: $1b
    ld [bc], a                                    ; $455c: $02
    db $fd                                        ; $455d: $fd
    adc b                                         ; $455e: $88
    jr nz, jr_0c5_4572                            ; $455f: $20 $11

    ld [de], a                                    ; $4561: $12
    ld a, [$cc23]                                 ; $4562: $fa $23 $cc
    ld a, [bc]                                    ; $4565: $0a
    ld a, h                                       ; $4566: $7c
    jr nz, jr_0c5_45a3                            ; $4567: $20 $3a

    ld b, $a0                                     ; $4569: $06 $a0
    dec bc                                        ; $456b: $0b
    db $ec                                        ; $456c: $ec
    ld bc, $13f6                                  ; $456d: $01 $f6 $13
    ld h, h                                       ; $4570: $64
    ld [hl+], a                                   ; $4571: $22

jr_0c5_4572:
    ld a, a                                       ; $4572: $7f
    db $10                                        ; $4573: $10
    xor [hl]                                      ; $4574: $ae
    and $02                                       ; $4575: $e6 $02
    jr nz, jr_0c5_453f                            ; $4577: $20 $c6

    ld de, $4641                                  ; $4579: $11 $41 $46
    inc de                                        ; $457c: $13
    xor d                                         ; $457d: $aa
    dec c                                         ; $457e: $0d
    and [hl]                                      ; $457f: $a6
    dec de                                        ; $4580: $1b
    dec b                                         ; $4581: $05
    ld l, $fb                                     ; $4582: $2e $fb
    inc h                                         ; $4584: $24
    cp b                                          ; $4585: $b8
    ld de, $5e10                                  ; $4586: $11 $10 $5e
    ld [bc], a                                    ; $4589: $02
    ld h, b                                       ; $458a: $60
    dec bc                                        ; $458b: $0b
    or d                                          ; $458c: $b2
    dec bc                                        ; $458d: $0b
    jr z, jr_0c5_45db                             ; $458e: $28 $4b

    rst $10                                       ; $4590: $d7
    ld [bc], a                                    ; $4591: $02
    dec de                                        ; $4592: $1b
    add h                                         ; $4593: $84
    ld a, e                                       ; $4594: $7b
    ld a, [$2108]                                 ; $4595: $fa $08 $21
    or h                                          ; $4598: $b4
    ld hl, $1226                                  ; $4599: $21 $26 $12
    ret nz                                        ; $459c: $c0

    adc [hl]                                      ; $459d: $8e
    ld de, $0b70                                  ; $459e: $11 $70 $0b
    jr @+$01                                      ; $45a1: $18 $ff

jr_0c5_45a3:
    ld b, d                                       ; $45a3: $42
    cp a                                          ; $45a4: $bf
    ld [$39f7], sp                                ; $45a5: $08 $f7 $39
    add b                                         ; $45a8: $80
    ld a, a                                       ; $45a9: $7f
    halt                                          ; $45aa: $76
    dec c                                         ; $45ab: $0d
    ld b, b                                       ; $45ac: $40
    inc c                                         ; $45ad: $0c
    halt                                          ; $45ae: $76
    inc c                                         ; $45af: $0c
    adc d                                         ; $45b0: $8a
    ld [hl], a                                    ; $45b1: $77
    ld d, [hl]                                    ; $45b2: $56
    dec bc                                        ; $45b3: $0b
    ld a, b                                       ; $45b4: $78
    add c                                         ; $45b5: $81
    sbc d                                         ; $45b6: $9a
    ld [$060c], sp                                ; $45b7: $08 $0c $06
    ld e, $00                                     ; $45ba: $1e $00
    xor h                                         ; $45bc: $ac
    ld a, [bc]                                    ; $45bd: $0a
    cp a                                          ; $45be: $bf
    ld b, b                                       ; $45bf: $40
    rst $38                                       ; $45c0: $ff
    add hl, hl                                    ; $45c1: $29
    add hl, bc                                    ; $45c2: $09
    or $08                                        ; $45c3: $f6 $08
    dec de                                        ; $45c5: $1b
    ld c, b                                       ; $45c6: $48
    ret c                                         ; $45c7: $d8

    inc b                                         ; $45c8: $04
    add b                                         ; $45c9: $80
    ld a, a                                       ; $45ca: $7f
    xor b                                         ; $45cb: $a8
    inc bc                                        ; $45cc: $03
    rst $18                                       ; $45cd: $df
    db $fc                                        ; $45ce: $fc
    dec d                                         ; $45cf: $15
    ret c                                         ; $45d0: $d8

    ld bc, $76bf                                  ; $45d1: $01 $bf $76
    nop                                           ; $45d4: $00
    ret nz                                        ; $45d5: $c0

    db $10                                        ; $45d6: $10
    ld a, [bc]                                    ; $45d7: $0a
    ld [$0b60], sp                                ; $45d8: $08 $60 $0b

jr_0c5_45db:
    ld c, b                                       ; $45db: $48
    inc bc                                        ; $45dc: $03
    halt                                          ; $45dd: $76
    or $b0                                        ; $45de: $f6 $b0
    dec de                                        ; $45e0: $1b
    adc h                                         ; $45e1: $8c
    jr jr_0c5_45fa                                ; $45e2: $18 $16

    dec de                                        ; $45e4: $1b
    ld hl, $05c8                                  ; $45e5: $21 $c8 $05
    jp z, Jump_000_1019                           ; $45e8: $ca $19 $10

    dec de                                        ; $45eb: $1b
    rst $28                                       ; $45ec: $ef
    ld [$60f7], sp                                ; $45ed: $08 $f7 $60
    inc c                                         ; $45f0: $0c
    db $ec                                        ; $45f1: $ec
    inc e                                         ; $45f2: $1c
    add d                                         ; $45f3: $82
    ld c, $14                                     ; $45f4: $0e $14
    ld h, $1c                                     ; $45f6: $26 $1c
    jr jr_0c5_45fa                                ; $45f8: $18 $00

jr_0c5_45fa:
    rst $38                                       ; $45fa: $ff
    ld sp, $0a88                                  ; $45fb: $31 $88 $0a
    ld c, $02                                     ; $45fe: $0e $02
    add b                                         ; $4600: $80
    ld a, a                                       ; $4601: $7f
    ld c, b                                       ; $4602: $48
    bit 1, b                                      ; $4603: $cb $48
    ld d, $02                                     ; $4605: $16 $02
    inc c                                         ; $4607: $0c
    and h                                         ; $4608: $a4
    ld a, e                                       ; $4609: $7b
    ld a, h                                       ; $460a: $7c
    rrca                                          ; $460b: $0f
    adc b                                         ; $460c: $88
    ld d, $08                                     ; $460d: $16 $08
    jr c, jr_0c5_461c                             ; $460f: $38 $0b

    adc [hl]                                      ; $4611: $8e
    cp d                                          ; $4612: $ba
    ld de, $7f80                                  ; $4613: $11 $80 $7f
    ld de, $0796                                  ; $4616: $11 $96 $07
    ld h, $0d                                     ; $4619: $26 $0d
    ld [hl-], a                                   ; $461b: $32

jr_0c5_461c:
    ld c, $80                                     ; $461c: $0e $80
    db $d3                                        ; $461e: $d3
    inc h                                         ; $461f: $24
    inc bc                                        ; $4620: $03
    ld l, h                                       ; $4621: $6c
    ld a, [de]                                    ; $4622: $1a
    ld b, b                                       ; $4623: $40
    ld h, b                                       ; $4624: $60
    inc b                                         ; $4625: $04
    add d                                         ; $4626: $82
    ld a, l                                       ; $4627: $7d
    ld h, b                                       ; $4628: $60
    inc l                                         ; $4629: $2c
    add [hl]                                      ; $462a: $86
    inc c                                         ; $462b: $0c
    ld l, b                                       ; $462c: $68
    jr nz, jr_0c5_464d                            ; $462d: $20 $1e

    ld bc, $0fbc                                  ; $462f: $01 $bc $0f
    ld b, h                                       ; $4632: $44
    inc l                                         ; $4633: $2c
    inc d                                         ; $4634: $14
    add b                                         ; $4635: $80
    rst $38                                       ; $4636: $ff
    dec b                                         ; $4637: $05
    ldh a, [$90]                                  ; $4638: $f0 $90
    inc de                                        ; $463a: $13
    inc h                                         ; $463b: $24
    inc c                                         ; $463c: $0c
    ld d, h                                       ; $463d: $54
    ld c, $70                                     ; $463e: $0e $70
    dec e                                         ; $4640: $1d
    ld b, h                                       ; $4641: $44
    cp a                                          ; $4642: $bf
    ld bc, $78fe                                  ; $4643: $01 $fe $78
    adc b                                         ; $4646: $88
    ld b, d                                       ; $4647: $42
    dec d                                         ; $4648: $15
    ld l, h                                       ; $4649: $6c
    inc c                                         ; $464a: $0c
    adc [hl]                                      ; $464b: $8e
    ld a, [bc]                                    ; $464c: $0a

jr_0c5_464d:
    inc a                                         ; $464d: $3c
    inc c                                         ; $464e: $0c
    ld [bc], a                                    ; $464f: $02
    rst $38                                       ; $4650: $ff
    ld b, h                                       ; $4651: $44
    ld a, a                                       ; $4652: $7f
    cp e                                          ; $4653: $bb
    ld [hl], d                                    ; $4654: $72

jr_0c5_4655:
    inc bc                                        ; $4655: $03
    db $10                                        ; $4656: $10
    rlca                                          ; $4657: $07
    ld d, h                                       ; $4658: $54
    ld [$13ba], sp                                ; $4659: $08 $ba $13
    jp nc, Jump_0c5_5420                          ; $465c: $d2 $20 $54

    inc b                                         ; $465f: $04
    ldh a, [rTMA]                                 ; $4660: $f0 $06
    ld [hl], e                                    ; $4662: $73
    sub b                                         ; $4663: $90
    or [hl]                                       ; $4664: $b6
    ld [bc], a                                    ; $4665: $02
    ld [hl-], a                                   ; $4666: $32
    inc e                                         ; $4667: $1c
    ld a, [c]                                     ; $4668: $f2
    inc bc                                        ; $4669: $03
    cp a                                          ; $466a: $bf
    ld de, $1d7a                                  ; $466b: $11 $7a $1d
    adc h                                         ; $466e: $8c
    dec bc                                        ; $466f: $0b
    cp h                                          ; $4670: $bc
    and h                                         ; $4671: $a4
    dec c                                         ; $4672: $0d
    cp $9c                                        ; $4673: $fe $9c
    inc de                                        ; $4675: $13
    ld a, [de]                                    ; $4676: $1a
    dec b                                         ; $4677: $05
    db $e4                                        ; $4678: $e4
    ld [bc], a                                    ; $4679: $02
    inc e                                         ; $467a: $1c
    rlca                                          ; $467b: $07
    jr z, jr_0c5_4655                             ; $467c: $28 $d7

    ld a, a                                       ; $467e: $7f
    ld [hl+], a                                   ; $467f: $22
    ld [hl+], a                                   ; $4680: $22
    rlca                                          ; $4681: $07
    ld d, b                                       ; $4682: $50
    inc c                                         ; $4683: $0c
    inc d                                         ; $4684: $14
    ld [$7c50], sp                                ; $4685: $08 $50 $7c
    add d                                         ; $4688: $82
    inc de                                        ; $4689: $13
    cp [hl]                                       ; $468a: $be
    inc hl                                        ; $468b: $23
    jp z, $f90d                                   ; $468c: $ca $0d $f9

    ld l, [hl]                                    ; $468f: $6e
    add hl, bc                                    ; $4690: $09
    ld l, $1c                                     ; $4691: $2e $1c
    ld l, h                                       ; $4693: $6c
    dec de                                        ; $4694: $1b
    halt                                          ; $4695: $76
    dec de                                        ; $4696: $1b
    inc b                                         ; $4697: $04
    add hl, bc                                    ; $4698: $09
    sub b                                         ; $4699: $90
    ld l, a                                       ; $469a: $6f
    nop                                           ; $469b: $00
    inc c                                         ; $469c: $0c
    dec e                                         ; $469d: $1d
    and b                                         ; $469e: $a0
    ld e, a                                       ; $469f: $5f
    adc c                                         ; $46a0: $89
    sub b                                         ; $46a1: $90
    ld bc, $0c0a                                  ; $46a2: $01 $0a $0c
    add [hl]                                      ; $46a5: $86
    ld [$3e01], sp                                ; $46a6: $08 $01 $3e
    dec d                                         ; $46a9: $15
    ld a, e                                       ; $46aa: $7b
    inc d                                         ; $46ab: $14
    ld h, d                                       ; $46ac: $62
    dec d                                         ; $46ad: $15
    sub h                                         ; $46ae: $94
    inc e                                         ; $46af: $1c
    ld d, h                                       ; $46b0: $54
    inc bc                                        ; $46b1: $03
    ld a, [$2023]                                 ; $46b2: $fa $23 $20
    add sp, $05                                   ; $46b5: $e8 $05
    inc l                                         ; $46b7: $2c
    dec c                                         ; $46b8: $0d
    rst $30                                       ; $46b9: $f7
    ld a, h                                       ; $46ba: $7c
    ld [de], a                                    ; $46bb: $12
    ld c, $0b                                     ; $46bc: $0e $0b
    sub b                                         ; $46be: $90
    ld d, e                                       ; $46bf: $53
    ld a, [hl+]                                   ; $46c0: $2a
    inc c                                         ; $46c1: $0c
    ld bc, $14a2                                  ; $46c2: $01 $a2 $14
    ld h, d                                       ; $46c5: $62
    ld c, $e4                                     ; $46c6: $0e $e4
    ld hl, $38de                                  ; $46c8: $21 $de $38
    dec b                                         ; $46cb: $05
    and d                                         ; $46cc: $a2
    dec c                                         ; $46cd: $0d
    ld b, d                                       ; $46ce: $42
    ldh a, [rNR43]                                ; $46cf: $f0 $22
    inc e                                         ; $46d1: $1c
    ld d, $40                                     ; $46d2: $16 $40
    ld d, h                                       ; $46d4: $54
    add sp, $1c                                   ; $46d5: $e8 $1c
    ld b, b                                       ; $46d7: $40
    ld a, [hl]                                    ; $46d8: $7e
    cp a                                          ; $46d9: $bf
    ld a, [c]                                     ; $46da: $f2
    rrca                                          ; $46db: $0f
    ld a, [hl]                                    ; $46dc: $7e
    rrca                                          ; $46dd: $0f
    call c, Call_0c5_6235                         ; $46de: $dc $35 $62
    ld [hl+], a                                   ; $46e1: $22
    ld a, d                                       ; $46e2: $7a
    dec c                                         ; $46e3: $0d
    ld c, $0d                                     ; $46e4: $0e $0d
    inc h                                         ; $46e6: $24
    ld h, [hl]                                    ; $46e7: $66
    db $db                                        ; $46e8: $db
    jp nc, $e00e                                  ; $46e9: $d2 $0e $e0

    dec bc                                        ; $46ec: $0b
    ld bc, $e0fe                                  ; $46ed: $01 $fe $e0
    dec bc                                        ; $46f0: $0b
    halt                                          ; $46f1: $76
    inc e                                         ; $46f2: $1c
    ld b, c                                       ; $46f3: $41
    ldh a, [rP1]                                  ; $46f4: $f0 $00
    dec d                                         ; $46f6: $15
    and h                                         ; $46f7: $a4
    inc e                                         ; $46f8: $1c
    ld h, b                                       ; $46f9: $60

jr_0c5_46fa:
    ld l, $06                                     ; $46fa: $2e $06
    ld d, $7f                                     ; $46fc: $16 $7f
    nop                                           ; $46fe: $00
    ld a, [bc]                                    ; $46ff: $0a
    ld e, a                                       ; $4700: $5f
    inc b                                         ; $4701: $04
    nop                                           ; $4702: $00
    ld b, b                                       ; $4703: $40
    ld d, l                                       ; $4704: $55
    sbc b                                         ; $4705: $98
    ld a, [c]                                     ; $4706: $f2
    ld c, b                                       ; $4707: $48
    rst $30                                       ; $4708: $f7
    dec c                                         ; $4709: $0d
    di                                            ; $470a: $f3
    ld [$f70a], sp                                ; $470b: $08 $0a $f7
    add hl, bc                                    ; $470e: $09
    rst $30                                       ; $470f: $f7
    inc b                                         ; $4710: $04
    ld [$5411], sp                                ; $4711: $08 $11 $54
    ld hl, $aa02                                  ; $4714: $21 $02 $aa
    pop af                                        ; $4717: $f1
    db $f4                                        ; $4718: $f4
    ld [hl], c                                    ; $4719: $71
    cp $f1                                        ; $471a: $fe $f1
    ld [bc], a                                    ; $471c: $02
    jr nz, jr_0c5_46fa                            ; $471d: $20 $db

    inc d                                         ; $471f: $14
    ccf                                           ; $4720: $3f
    rla                                           ; $4721: $17
    ld a, a                                       ; $4722: $7f
    inc b                                         ; $4723: $04
    ld [$08fb], sp                                ; $4724: $08 $fb $08
    nop                                           ; $4727: $00
    cp a                                          ; $4728: $bf
    ld a, a                                       ; $4729: $7f
    nop                                           ; $472a: $00
    rra                                           ; $472b: $1f
    ld a, a                                       ; $472c: $7f
    nop                                           ; $472d: $00
    ld d, c                                       ; $472e: $51
    ld [$04a2], sp                                ; $472f: $08 $a2 $04
    ld d, c                                       ; $4732: $51
    ld [bc], a                                    ; $4733: $02
    ld [$0ce2], sp                                ; $4734: $08 $e2 $0c
    di                                            ; $4737: $f3
    add hl, bc                                    ; $4738: $09
    rst $30                                       ; $4739: $f7
    inc b                                         ; $473a: $04
    ld [$1040], sp                                ; $473b: $08 $40 $10
    ld d, l                                       ; $473e: $55
    jr nz, @-$54                                  ; $473f: $20 $aa

    inc b                                         ; $4741: $04
    ld [$ffe0], sp                                ; $4742: $08 $e0 $ff
    ld h, b                                       ; $4745: $60
    rst $38                                       ; $4746: $ff
    ld b, b                                       ; $4747: $40
    ldh [rSC], a                                  ; $4748: $e0 $02
    nop                                           ; $474a: $00
    rst $00                                       ; $474b: $c7
    ccf                                           ; $474c: $3f
    xor [hl]                                      ; $474d: $ae
    rra                                           ; $474e: $1f
    rst $10                                       ; $474f: $d7
    cpl                                           ; $4750: $2f
    nop                                           ; $4751: $00
    xor d                                         ; $4752: $aa
    rla                                           ; $4753: $17
    push bc                                       ; $4754: $c5
    ccf                                           ; $4755: $3f
    xor d                                         ; $4756: $aa
    rra                                           ; $4757: $1f
    call Call_000_003f                            ; $4758: $cd $3f $00
    xor e                                         ; $475b: $ab
    rra                                           ; $475c: $1f
    ldh [$f5], a                                  ; $475d: $e0 $f5
    ldh [$ea], a                                  ; $475f: $e0 $ea
    ldh [$f7], a                                  ; $4761: $e0 $f7
    ret nz                                        ; $4763: $c0

    ld a, [de]                                    ; $4764: $1a
    ld [$1004], sp                                ; $4765: $08 $04 $10
    ld [$1551], a                                 ; $4768: $ea $51 $15
    add a                                         ; $476b: $87
    cpl                                           ; $476c: $2f
    cp e                                          ; $476d: $bb
    ld [bc], a                                    ; $476e: $02
    ld a, a                                       ; $476f: $7f
    sbc a                                         ; $4770: $9f
    ld a, a                                       ; $4771: $7f
    cp e                                          ; $4772: $bb
    ld a, a                                       ; $4773: $7f
    rst $38                                       ; $4774: $ff
    ld d, b                                       ; $4775: $50
    nop                                           ; $4776: $00
    ccf                                           ; $4777: $3f
    inc b                                         ; $4778: $04
    cp a                                          ; $4779: $bf
    nop                                           ; $477a: $00
    ld d, l                                       ; $477b: $55
    add b                                         ; $477c: $80
    rst $38                                       ; $477d: $ff
    ld [bc], a                                    ; $477e: $02
    ld c, b                                       ; $477f: $48
    srl a                                         ; $4780: $cb $3f
    ld bc, $5fa5                                  ; $4782: $01 $a5 $5f
    rst $08                                       ; $4785: $cf
    ccf                                           ; $4786: $3f
    add l                                         ; $4787: $85
    ld a, a                                       ; $4788: $7f
    adc $04                                       ; $4789: $ce $04
    nop                                           ; $478b: $00
    inc b                                         ; $478c: $04
    jp z, $873f                                   ; $478d: $ca $3f $87

    ld a, a                                       ; $4790: $7f
    rst $38                                       ; $4791: $ff
    ld bc, $1560                                  ; $4792: $01 $60 $15
    ld d, l                                       ; $4795: $55
    nop                                           ; $4796: $00
    cpl                                           ; $4797: $2f
    rst $38                                       ; $4798: $ff
    ld de, $02ff                                  ; $4799: $11 $ff $02
    rst $38                                       ; $479c: $ff
    ld [$40ff], sp                                ; $479d: $08 $ff $40
    nop                                           ; $47a0: $00
    ld [bc], a                                    ; $47a1: $02
    nop                                           ; $47a2: $00
    add b                                         ; $47a3: $80
    rst $38                                       ; $47a4: $ff
    dec bc                                        ; $47a5: $0b
    rst $30                                       ; $47a6: $f7
    add hl, bc                                    ; $47a7: $09
    rst $38                                       ; $47a8: $ff
    nop                                           ; $47a9: $00
    ld bc, $0a55                                  ; $47aa: $01 $55 $0a
    xor d                                         ; $47ad: $aa
    dec h                                         ; $47ae: $25
    push af                                       ; $47af: $f5
    rrca                                          ; $47b0: $0f
    rst $38                                       ; $47b1: $ff
    ld [$ff17], sp                                ; $47b2: $08 $17 $ff
    ld a, [bc]                                    ; $47b5: $0a
    rst $38                                       ; $47b6: $ff
    cp b                                          ; $47b7: $b8
    ld [$5451], sp                                ; $47b8: $08 $51 $54
    and b                                         ; $47bb: $a0
    nop                                           ; $47bc: $00
    xor d                                         ; $47bd: $aa
    ld d, c                                       ; $47be: $51
    ld d, h                                       ; $47bf: $54
    pop af                                        ; $47c0: $f1
    cp $e9                                        ; $47c1: $fe $e9
    cp $91                                        ; $47c3: $fe $91
    nop                                           ; $47c5: $00
    cp $bf                                        ; $47c6: $fe $bf
    ld a, a                                       ; $47c8: $7f
    sbc d                                         ; $47c9: $9a
    ld a, d                                       ; $47ca: $7a
    dec d                                         ; $47cb: $15
    ld d, l                                       ; $47cc: $55
    adc d                                         ; $47cd: $8a
    nop                                           ; $47ce: $00
    ld a, [hl+]                                   ; $47cf: $2a

jr_0c5_47d0:
    rra                                           ; $47d0: $1f
    ld e, a                                       ; $47d1: $5f
    sbc a                                         ; $47d2: $9f
    ld a, a                                       ; $47d3: $7f
    ccf                                           ; $47d4: $3f
    rst $38                                       ; $47d5: $ff
    cp a                                          ; $47d6: $bf
    db $10                                        ; $47d7: $10
    ld a, a                                       ; $47d8: $7f
    inc b                                         ; $47d9: $04
    pop de                                        ; $47da: $d1
    ret nz                                        ; $47db: $c0

    ld [$a709], sp                                ; $47dc: $08 $09 $a7
    dec bc                                        ; $47df: $0b
    rst $30                                       ; $47e0: $f7
    nop                                           ; $47e1: $00
    ld bc, $23ff                                  ; $47e2: $01 $ff $23
    rst $38                                       ; $47e5: $ff
    dec bc                                        ; $47e6: $0b
    rst $38                                       ; $47e7: $ff
    ld b, b                                       ; $47e8: $40
    ld d, l                                       ; $47e9: $55
    ld c, b                                       ; $47ea: $48
    and b                                         ; $47eb: $a0
    ret nz                                        ; $47ec: $c0

    nop                                           ; $47ed: $00
    ldh a, [rIE]                                  ; $47ee: $f0 $ff
    ld [bc], a                                    ; $47f0: $02
    jr z, jr_0c5_47d0                             ; $47f1: $28 $dd

    ccf                                           ; $47f3: $3f
    ld c, a                                       ; $47f4: $4f
    ld [$dfbf], sp                                ; $47f5: $08 $bf $df
    ccf                                           ; $47f8: $3f
    ld c, l                                       ; $47f9: $4d
    inc b                                         ; $47fa: $04
    nop                                           ; $47fb: $00
    rra                                           ; $47fc: $1f
    rst $38                                       ; $47fd: $ff
    rst $38                                       ; $47fe: $ff
    nop                                           ; $47ff: $00
    cp a                                          ; $4800: $bf
    cp a                                          ; $4801: $bf
    rst $38                                       ; $4802: $ff
    ldh [$f5], a                                  ; $4803: $e0 $f5
    ld [c], a                                     ; $4805: $e2
    ld [$08e0], a                                 ; $4806: $ea $e0 $08
    push af                                       ; $4809: $f5
    db $e4                                        ; $480a: $e4
    rst $38                                       ; $480b: $ff
    pop hl                                        ; $480c: $e1
    sbc $10                                       ; $480d: $de $10
    ld [c], a                                     ; $480f: $e2
    db $fd                                        ; $4810: $fd
    dec d                                         ; $4811: $15
    nop                                           ; $4812: $00
    ld d, l                                       ; $4813: $55
    ld a, [hl+]                                   ; $4814: $2a
    xor d                                         ; $4815: $aa
    ld d, l                                       ; $4816: $55
    ld d, l                                       ; $4817: $55
    cp $fe                                        ; $4818: $fe $fe
    ld a, [hl]                                    ; $481a: $7e
    ld [$14ff], sp                                ; $481b: $08 $ff $14
    rst $38                                       ; $481e: $ff
    ld c, b                                       ; $481f: $48
    add h                                         ; $4820: $84
    ld [$805f], sp                                ; $4821: $08 $5f $80
    xor d                                         ; $4824: $aa
    ld a, b                                       ; $4825: $78
    nop                                           ; $4826: $00
    ld b, h                                       ; $4827: $44
    ld [$00c6], sp                                ; $4828: $08 $c6 $00
    sub d                                         ; $482b: $92
    ld [$00b4], sp                                ; $482c: $08 $b4 $00
    cpl                                           ; $482f: $2f
    ld b, b                                       ; $4830: $40
    dec d                                         ; $4831: $15
    ld bc, $2a82                                  ; $4832: $01 $82 $2a
    srl a                                         ; $4835: $cb $3f
    sub a                                         ; $4837: $97
    ld a, a                                       ; $4838: $7f
    rst $08                                       ; $4839: $cf
    inc b                                         ; $483a: $04
    nop                                           ; $483b: $00
    rlca                                          ; $483c: $07
    rst $38                                       ; $483d: $ff
    rst $38                                       ; $483e: $ff
    ld a, a                                       ; $483f: $7f
    rst $38                                       ; $4840: $ff
    ld d, l                                       ; $4841: $55
    inc [hl]                                      ; $4842: $34
    nop                                           ; $4843: $00
    ld [$cc08], sp                                ; $4844: $08 $08 $cc
    ld [$eea8], sp                                ; $4847: $08 $a8 $ee
    nop                                           ; $484a: $00
    ld a, [$00f4]                                 ; $484b: $fa $f4 $00
    xor d                                         ; $484e: $aa
    or $18                                        ; $484f: $f6 $18
    add c                                         ; $4851: $81
    cp $00                                        ; $4852: $fe $00
    jr nz, @+$01                                  ; $4854: $20 $ff

    inc b                                         ; $4856: $04
    jp z, $4000                                   ; $4857: $ca $00 $40

    cp a                                          ; $485a: $bf
    nop                                           ; $485b: $00
    rst $38                                       ; $485c: $ff
    ld [bc], a                                    ; $485d: $02
    nop                                           ; $485e: $00
    db $fd                                        ; $485f: $fd
    db $10                                        ; $4860: $10
    rst $28                                       ; $4861: $ef
    ld b, c                                       ; $4862: $41
    cp [hl]                                       ; $4863: $be
    ld b, c                                       ; $4864: $41
    cp $01                                        ; $4865: $fe $01
    ld [hl+], a                                   ; $4867: $22
    cp $03                                        ; $4868: $fe $03
    ld d, $00                                     ; $486a: $16 $00
    ld c, c                                       ; $486c: $49
    cp a                                          ; $486d: $bf
    ld bc, $00e6                                  ; $486e: $01 $e6 $00
    ld de, $ef30                                  ; $4871: $11 $30 $ef
    ccf                                           ; $4874: $3f
    ld b, b                                       ; $4875: $40
    nop                                           ; $4876: $00
    inc b                                         ; $4877: $04
    ld [$ff7f], sp                                ; $4878: $08 $7f $ff
    cp $ff                                        ; $487b: $fe $ff
    dec b                                         ; $487d: $05
    ld sp, hl                                     ; $487e: $f9
    rst $38                                       ; $487f: $ff
    ld d, h                                       ; $4880: $54
    rst $38                                       ; $4881: $ff
    cpl                                           ; $4882: $2f
    and $10                                       ; $4883: $e6 $10
    ld b, b                                       ; $4885: $40
    ld l, $00                                     ; $4886: $2e $00
    add d                                         ; $4888: $82
    ld a, [hl]                                    ; $4889: $7e
    ld [$fb04], sp                                ; $488a: $08 $04 $fb
    db $f4                                        ; $488d: $f4
    rst $38                                       ; $488e: $ff
    add sp, $10                                   ; $488f: $e8 $10
    ld bc, $2001                                  ; $4891: $01 $01 $20
    rst $38                                       ; $4894: $ff
    dec h                                         ; $4895: $25
    inc d                                         ; $4896: $14
    ld bc, $ef91                                  ; $4897: $01 $91 $ef
    inc b                                         ; $489a: $04
    ei                                            ; $489b: $fb
    cp a                                          ; $489c: $bf
    adc b                                         ; $489d: $88
    ld sp, $3f41                                  ; $489e: $31 $41 $3f
    rst $38                                       ; $48a1: $ff
    ld c, d                                       ; $48a2: $4a
    ld a, b                                       ; $48a3: $78
    ld hl, $fee1                                  ; $48a4: $21 $e1 $fe
    add sp, $01                                   ; $48a7: $e8 $01
    rst $38                                       ; $48a9: $ff
    ret nc                                        ; $48aa: $d0

    rst $38                                       ; $48ab: $ff
    and c                                         ; $48ac: $a1
    cp $04                                        ; $48ad: $fe $04
    ei                                            ; $48af: $fb
    ld l, d                                       ; $48b0: $6a
    ld [$3886], sp                                ; $48b1: $08 $86 $38
    ld [$df20], sp                                ; $48b4: $08 $20 $df
    ld [bc], a                                    ; $48b7: $02
    db $fd                                        ; $48b8: $fd
    ld a, b                                       ; $48b9: $78
    jr jr_0c5_48d0                                ; $48ba: $18 $14

    ld [$8002], sp                                ; $48bc: $08 $02 $80
    ld c, [hl]                                    ; $48bf: $4e
    ld bc, $ff02                                  ; $48c0: $01 $02 $ff
    add hl, bc                                    ; $48c3: $09
    rst $38                                       ; $48c4: $ff
    sub b                                         ; $48c5: $90
    ld l, a                                       ; $48c6: $6f
    rrca                                          ; $48c7: $0f
    nop                                           ; $48c8: $00
    rst $38                                       ; $48c9: $ff
    sub a                                         ; $48ca: $97
    ld a, a                                       ; $48cb: $7f
    rrca                                          ; $48cc: $0f
    rst $38                                       ; $48cd: $ff
    rra                                           ; $48ce: $1f
    rst $38                                       ; $48cf: $ff

jr_0c5_48d0:
    cp a                                          ; $48d0: $bf
    cp b                                          ; $48d1: $b8
    ld [hl], h                                    ; $48d2: $74
    db $10                                        ; $48d3: $10
    sbc a                                         ; $48d4: $9f
    ld a, a                                       ; $48d5: $7f
    ld d, c                                       ; $48d6: $51
    add d                                         ; $48d7: $82
    ld [$19ae], sp                                ; $48d8: $08 $ae $19
    ret nz                                        ; $48db: $c0

    rst $38                                       ; $48dc: $ff
    adc b                                         ; $48dd: $88
    nop                                           ; $48de: $00
    rst $38                                       ; $48df: $ff
    ld [hl+], a                                   ; $48e0: $22
    db $fd                                        ; $48e1: $fd
    sub b                                         ; $48e2: $90
    rst $38                                       ; $48e3: $ff
    ld de, $00ee                                  ; $48e4: $11 $ee $00
    add b                                         ; $48e7: $80
    ld bc, $4000                                  ; $48e8: $01 $00 $40
    ld b, b                                       ; $48eb: $40
    nop                                           ; $48ec: $00
    ld [bc], a                                    ; $48ed: $02
    nop                                           ; $48ee: $00
    ld h, $00                                     ; $48ef: $26 $00
    inc d                                         ; $48f1: $14
    db $db                                        ; $48f2: $db
    nop                                           ; $48f3: $00
    rst $30                                       ; $48f4: $f7
    jp z, $4000                                   ; $48f5: $ca $00 $40

    ld [de], a                                    ; $48f8: $12
    ld [$4404], sp                                ; $48f9: $08 $04 $44
    ld [bc], a                                    ; $48fc: $02
    nop                                           ; $48fd: $00
    and b                                         ; $48fe: $a0
    nop                                           ; $48ff: $00
    ld d, b                                       ; $4900: $50
    nop                                           ; $4901: $00
    xor $a2                                       ; $4902: $ee $a2
    ld bc, $2080                                  ; $4904: $01 $80 $20
    ld [bc], a                                    ; $4907: $02
    ld [bc], a                                    ; $4908: $02
    inc d                                         ; $4909: $14
    ld [$4840], sp                                ; $490a: $08 $40 $48
    nop                                           ; $490d: $00
    stop                                          ; $490e: $10 $00
    inc b                                         ; $4910: $04
    dec c                                         ; $4911: $0d
    nop                                           ; $4912: $00
    ld a, a                                       ; $4913: $7f

jr_0c5_4914:
    inc b                                         ; $4914: $04
    inc b                                         ; $4915: $04
    jr nc, jr_0c5_4918                            ; $4916: $30 $00

jr_0c5_4918:
    ld d, b                                       ; $4918: $50
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    ld [$1400], sp                                ; $491b: $08 $00 $14
    nop                                           ; $491e: $00
    cp d                                          ; $491f: $ba
    nop                                           ; $4920: $00
    ld [hl], l                                    ; $4921: $75
    nop                                           ; $4922: $00
    jr jr_0c5_4914                                ; $4923: $18 $ef

    jr nz, jr_0c5_4947                            ; $4925: $20 $20

    ld b, d                                       ; $4927: $42
    ld [$1006], sp                                ; $4928: $08 $06 $10
    adc d                                         ; $492b: $8a
    nop                                           ; $492c: $00
    db $dd                                        ; $492d: $dd
    call nz, $01d4                                ; $492e: $c4 $d4 $01
    ld c, [hl]                                    ; $4931: $4e
    ld [$8000], sp                                ; $4932: $08 $00 $80
    add h                                         ; $4935: $84
    ld [hl+], a                                   ; $4936: $22
    db $10                                        ; $4937: $10
    cpl                                           ; $4938: $2f
    nop                                           ; $4939: $00
    ld b, h                                       ; $493a: $44
    cp $0c                                        ; $493b: $fe $0c
    nop                                           ; $493d: $00
    add b                                         ; $493e: $80
    ld [$6508], sp                                ; $493f: $08 $08 $65
    ld [$b000], sp                                ; $4942: $08 $00 $b0
    inc bc                                        ; $4945: $03
    nop                                           ; $4946: $00

jr_0c5_4947:
    ld l, e                                       ; $4947: $6b
    nop                                           ; $4948: $00
    rst $30                                       ; $4949: $f7
    db $10                                        ; $494a: $10
    db $10                                        ; $494b: $10
    ld d, b                                       ; $494c: $50
    jr @+$44                                      ; $494d: $18 $42

    nop                                           ; $494f: $00
    ld bc, $0084                                  ; $4950: $01 $84 $00
    ld e, e                                       ; $4953: $5b
    nop                                           ; $4954: $00
    rst $38                                       ; $4955: $ff
    ld de, $7011                                  ; $4956: $11 $11 $70
    db $10                                        ; $4959: $10
    add c                                         ; $495a: $81
    ld d, [hl]                                    ; $495b: $56
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    add c                                         ; $495e: $81
    nop                                           ; $495f: $00
    ld c, d                                       ; $4960: $4a
    nop                                           ; $4961: $00
    or a                                          ; $4962: $b7
    inc c                                         ; $4963: $0c
    jr nz, jr_0c5_49ac                            ; $4964: $20 $46

    db $10                                        ; $4966: $10
    ld c, [hl]                                    ; $4967: $4e
    nop                                           ; $4968: $00
    ld d, l                                       ; $4969: $55
    nop                                           ; $496a: $00
    ei                                            ; $496b: $fb
    ld d, b                                       ; $496c: $50
    ld [$000d], sp                                ; $496d: $08 $0d $00
    db $10                                        ; $4970: $10
    or b                                          ; $4971: $b0
    ld a, $00                                     ; $4972: $3e $00
    or d                                          ; $4974: $b2
    ld e, [hl]                                    ; $4975: $5e
    nop                                           ; $4976: $00
    ld l, [hl]                                    ; $4977: $6e
    ld bc, $4040                                  ; $4978: $01 $40 $40
    ld [bc], a                                    ; $497b: $02
    ld [bc], a                                    ; $497c: $02
    adc l                                         ; $497d: $8d
    ld a, [hl]                                    ; $497e: $7e
    nop                                           ; $497f: $00
    inc l                                         ; $4980: $2c
    nop                                           ; $4981: $00
    ld d, h                                       ; $4982: $54
    add b                                         ; $4983: $80
    nop                                           ; $4984: $00
    ld b, h                                       ; $4985: $44
    ld [bc], a                                    ; $4986: $02
    ld bc, $1248                                  ; $4987: $01 $48 $12
    inc e                                         ; $498a: $1c
    nop                                           ; $498b: $00
    rst $38                                       ; $498c: $ff
    jr nz, @+$56                                  ; $498d: $20 $54

    ld bc, $180a                                  ; $498f: $01 $0a $18
    db $10                                        ; $4992: $10
    jr jr_0c5_4997                                ; $4993: $18 $02

    rst $38                                       ; $4995: $ff
    ld [hl], l                                    ; $4996: $75

jr_0c5_4997:
    jr z, @+$16                                   ; $4997: $28 $14

    add hl, bc                                    ; $4999: $09
    inc h                                         ; $499a: $24
    ld bc, $0a68                                  ; $499b: $01 $68 $0a
    ld b, c                                       ; $499e: $41
    ld l, d                                       ; $499f: $6a
    ld bc, $7250                                  ; $49a0: $01 $50 $72
    ld [de], a                                    ; $49a3: $12
    ld [hl], h                                    ; $49a4: $74
    inc b                                         ; $49a5: $04
    ld [hl-], a                                   ; $49a6: $32
    jr nz, @+$34                                  ; $49a7: $20 $32

    add hl, bc                                    ; $49a9: $09
    add b                                         ; $49aa: $80
    ld a, [bc]                                    ; $49ab: $0a

jr_0c5_49ac:
    jr nz, jr_0c5_49ee                            ; $49ac: $20 $40

    jr nz, @+$12                                  ; $49ae: $20 $10

    rst $38                                       ; $49b0: $ff
    ld d, d                                       ; $49b1: $52
    add d                                         ; $49b2: $82
    sub d                                         ; $49b3: $92
    ld [bc], a                                    ; $49b4: $02
    sub b                                         ; $49b5: $90
    ld d, b                                       ; $49b6: $50
    jr nc, jr_0c5_4a0a                            ; $49b7: $30 $51

    cp [hl]                                       ; $49b9: $be
    ld d, b                                       ; $49ba: $50
    ld l, b                                       ; $49bb: $68
    inc h                                         ; $49bc: $24

jr_0c5_49bd:
    xor e                                         ; $49bd: $ab
    ld l, [hl]                                    ; $49be: $6e
    ld [$40fe], sp                                ; $49bf: $08 $fe $40
    ld e, b                                       ; $49c2: $58
    ld b, b                                       ; $49c3: $40
    ld b, b                                       ; $49c4: $40
    ld b, b                                       ; $49c5: $40
    ld b, c                                       ; $49c6: $41
    jp nc, Jump_0c5_5202                          ; $49c7: $d2 $02 $52

jr_0c5_49ca:
    ld [de], a                                    ; $49ca: $12
    or [hl]                                       ; $49cb: $b6
    jp c, $0112                                   ; $49cc: $da $12 $01

    jr nc, jr_0c5_49e1                            ; $49cf: $30 $10

    sub d                                         ; $49d1: $92
    jr z, jr_0c5_4a14                             ; $49d2: $28 $40

    ld [$1c01], a                                 ; $49d4: $ea $01 $1c
    jr z, @+$24                                   ; $49d7: $28 $22

    sub l                                         ; $49d9: $95
    jr nc, jr_0c5_49df                            ; $49da: $30 $03

    jr z, jr_0c5_49bd                             ; $49dc: $28 $df

    ld a, [bc]                                    ; $49de: $0a

jr_0c5_49df:
    db $10                                        ; $49df: $10
    rst $18                                       ; $49e0: $df

jr_0c5_49e1:
    add b                                         ; $49e1: $80
    jr jr_0c5_49fc                                ; $49e2: $18 $18

jr_0c5_49e4:
    inc c                                         ; $49e4: $0c
    inc bc                                        ; $49e5: $03
    rlca                                          ; $49e6: $07
    inc d                                         ; $49e7: $14
    db $eb                                        ; $49e8: $eb
    jr nz, jr_0c5_49ca                            ; $49e9: $20 $df

    ld [$0086], sp                                ; $49eb: $08 $86 $00

jr_0c5_49ee:
    sub b                                         ; $49ee: $90
    ld [$09ce], sp                                ; $49ef: $08 $ce $09
    ld e, h                                       ; $49f2: $5c
    ld b, b                                       ; $49f3: $40
    inc d                                         ; $49f4: $14
    ld [bc], a                                    ; $49f5: $02
    add h                                         ; $49f6: $84
    nop                                           ; $49f7: $00
    add hl, bc                                    ; $49f8: $09
    jp c, $2c00                                   ; $49f9: $da $00 $2c

jr_0c5_49fc:
    dec bc                                        ; $49fc: $0b
    ld b, b                                       ; $49fd: $40
    cp a                                          ; $49fe: $bf
    push de                                       ; $49ff: $d5
    ld [hl-], a                                   ; $4a00: $32
    dec bc                                        ; $4a01: $0b
    add sp, $09                                   ; $4a02: $e8 $09
    inc bc                                        ; $4a04: $03
    or h                                          ; $4a05: $b4
    db $10                                        ; $4a06: $10
    add b                                         ; $4a07: $80
    or d                                          ; $4a08: $b2

jr_0c5_4a09:
    nop                                           ; $4a09: $00

jr_0c5_4a0a:
    inc b                                         ; $4a0a: $04
    jr nz, jr_0c5_4a0e                            ; $4a0b: $20 $01

    ld [de], a                                    ; $4a0d: $12

jr_0c5_4a0e:
    ld b, b                                       ; $4a0e: $40
    cp a                                          ; $4a0f: $bf
    ld [de], a                                    ; $4a10: $12
    ld c, [hl]                                    ; $4a11: $4e
    ld [bc], a                                    ; $4a12: $02
    inc d                                         ; $4a13: $14

jr_0c5_4a14:
    rst $28                                       ; $4a14: $ef
    ld c, [hl]                                    ; $4a15: $4e
    dec bc                                        ; $4a16: $0b
    sub c                                         ; $4a17: $91
    jr c, jr_0c5_4a09                             ; $4a18: $38 $ef

    jr nz, jr_0c5_49e4                            ; $4a1a: $20 $c8

    nop                                           ; $4a1c: $00
    ld c, h                                       ; $4a1d: $4c
    nop                                           ; $4a1e: $00
    ld e, h                                       ; $4a1f: $5c
    inc bc                                        ; $4a20: $03
    ld [$10f7], sp                                ; $4a21: $08 $f7 $10
    ld a, c                                       ; $4a24: $79
    rst $28                                       ; $4a25: $ef
    ld h, [hl]                                    ; $4a26: $66
    dec bc                                        ; $4a27: $0b
    db $10                                        ; $4a28: $10
    ld [$0a1e], sp                                ; $4a29: $08 $1e $0a
    ld b, [hl]                                    ; $4a2c: $46
    nop                                           ; $4a2d: $00
    rst $30                                       ; $4a2e: $f7
    ld b, d                                       ; $4a2f: $42
    ld [hl-], a                                   ; $4a30: $32
    ld [bc], a                                    ; $4a31: $02
    jr nz, jr_0c5_4a38                            ; $4a32: $20 $04

    ei                                            ; $4a34: $fb
    jr c, jr_0c5_4a37                             ; $4a35: $38 $00

jr_0c5_4a37:
    rst $38                                       ; $4a37: $ff

jr_0c5_4a38:
    ld hl, $00de                                  ; $4a38: $21 $de $00
    rst $38                                       ; $4a3b: $ff
    ld d, b                                       ; $4a3c: $50
    add h                                         ; $4a3d: $84
    ld a, $21                                     ; $4a3e: $3e $21
    ld bc, $00fc                                  ; $4a40: $01 $fc $00
    ld [bc], a                                    ; $4a43: $02
    db $fd                                        ; $4a44: $fd
    ld b, b                                       ; $4a45: $40
    rst $38                                       ; $4a46: $ff
    ld b, [hl]                                    ; $4a47: $46
    ld a, [bc]                                    ; $4a48: $0a
    inc l                                         ; $4a49: $2c
    ld de, $df20                                  ; $4a4a: $11 $20 $df
    add hl, bc                                    ; $4a4d: $09
    ld c, h                                       ; $4a4e: $4c
    ld bc, $28de                                  ; $4a4f: $01 $de $28
    db $10                                        ; $4a52: $10
    ret nz                                        ; $4a53: $c0

    ld d, b                                       ; $4a54: $50
    db $10                                        ; $4a55: $10
    or b                                          ; $4a56: $b0
    ld [bc], a                                    ; $4a57: $02
    cp a                                          ; $4a58: $bf
    inc b                                         ; $4a59: $04
    ei                                            ; $4a5a: $fb
    ld [$81f7], sp                                ; $4a5b: $08 $f7 $81
    and $ec                                       ; $4a5e: $e6 $ec
    ld [bc], a                                    ; $4a60: $02
    cp b                                          ; $4a61: $b8
    dec bc                                        ; $4a62: $0b
    ld [hl], h                                    ; $4a63: $74
    add hl, bc                                    ; $4a64: $09
    sub b                                         ; $4a65: $90

jr_0c5_4a66:
    ld a, a                                       ; $4a66: $7f
    add h                                         ; $4a67: $84
    ld [bc], a                                    ; $4a68: $02
    call nz, Call_000_0903                        ; $4a69: $c4 $03 $09
    pop bc                                        ; $4a6c: $c1
    inc [hl]                                      ; $4a6d: $34
    ld [bc], a                                    ; $4a6e: $02
    ld a, [de]                                    ; $4a6f: $1a
    nop                                           ; $4a70: $00
    ld a, [hl]                                    ; $4a71: $7e
    nop                                           ; $4a72: $00
    rst $38                                       ; $4a73: $ff
    sub h                                         ; $4a74: $94
    ld l, e                                       ; $4a75: $6b
    ld a, h                                       ; $4a76: $7c
    ld [$0158], sp                                ; $4a77: $08 $58 $01
    ld [de], a                                    ; $4a7a: $12
    inc bc                                        ; $4a7b: $03
    ld [de], a                                    ; $4a7c: $12
    adc [hl]                                      ; $4a7d: $8e
    db $10                                        ; $4a7e: $10
    ld d, h                                       ; $4a7f: $54
    nop                                           ; $4a80: $00
    cp a                                          ; $4a81: $bf
    ld b, $fd                                     ; $4a82: $06 $fd
    add a                                         ; $4a84: $87
    ld [$f703], a                                 ; $4a85: $ea $03 $f7

jr_0c5_4a88:
    ld bc, $08fe                                  ; $4a88: $01 $fe $08
    ld l, b                                       ; $4a8b: $68
    ld hl, $08b2                                  ; $4a8c: $21 $b2 $08
    ld [hl], d                                    ; $4a8f: $72
    add hl, de                                    ; $4a90: $19
    ld a, h                                       ; $4a91: $7c
    add b                                         ; $4a92: $80
    ld a, [c]                                     ; $4a93: $f2
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    inc c                                         ; $4a96: $0c
    ld a, d                                       ; $4a97: $7a
    add hl, bc                                    ; $4a98: $09
    ld b, h                                       ; $4a99: $44
    dec bc                                        ; $4a9a: $0b
    ld [hl+], a                                   ; $4a9b: $22
    ld bc, $91ff                                  ; $4a9c: $01 $ff $91
    and [hl]                                      ; $4a9f: $a6
    jp nz, Jump_000_2031                          ; $4aa0: $c2 $31 $20

    jr nz, jr_0c5_4aa6                            ; $4aa3: $20 $01

    dec b                                         ; $4aa5: $05

jr_0c5_4aa6:
    ld a, [$135a]                                 ; $4aa6: $fa $5a $13
    ld h, $0c                                     ; $4aa9: $26 $0c
    ld a, a                                       ; $4aab: $7f
    add b                                         ; $4aac: $80
    or $1a                                        ; $4aad: $f6 $1a
    ld d, b                                       ; $4aaf: $50
    xor a                                         ; $4ab0: $af
    ld bc, $48ff                                  ; $4ab1: $01 $ff $48
    or a                                          ; $4ab4: $b7
    ld [bc], a                                    ; $4ab5: $02
    ld a, [hl-]                                   ; $4ab6: $3a
    db $fd                                        ; $4ab7: $fd
    add b                                         ; $4ab8: $80
    ld b, b                                       ; $4ab9: $40
    inc b                                         ; $4aba: $04
    or h                                          ; $4abb: $b4
    ld [$1c42], sp                                ; $4abc: $08 $42 $1c
    db $10                                        ; $4abf: $10
    ld a, [hl]                                    ; $4ac0: $7e
    inc de                                        ; $4ac1: $13
    jr nz, jr_0c5_4a66                            ; $4ac2: $20 $a2

    ld e, h                                       ; $4ac4: $5c
    jr nc, jr_0c5_4aeb                            ; $4ac5: $30 $24

    ld e, h                                       ; $4ac7: $5c
    ld bc, $df21                                  ; $4ac8: $01 $21 $df
    db $10                                        ; $4acb: $10
    ld d, h                                       ; $4acc: $54
    inc bc                                        ; $4acd: $03
    ld [hl+], a                                   ; $4ace: $22
    sbc c                                         ; $4acf: $99
    or d                                          ; $4ad0: $b2
    ld de, $7f80                                  ; $4ad1: $11 $80 $7f
    add b                                         ; $4ad4: $80
    nop                                           ; $4ad5: $00
    jp c, Jump_000_0502                           ; $4ad6: $da $02 $05

    ld a, [$09a2]                                 ; $4ad9: $fa $a2 $09
    adc c                                         ; $4adc: $89
    jr nz, jr_0c5_4ae8                            ; $4add: $20 $09

    ld [hl+], a                                   ; $4adf: $22
    db $dd                                        ; $4ae0: $dd
    db $10                                        ; $4ae1: $10
    jr nc, jr_0c5_4ae5                            ; $4ae2: $30 $01

    ld b, b                                       ; $4ae4: $40

jr_0c5_4ae5:
    cp a                                          ; $4ae5: $bf
    ld b, $08                                     ; $4ae6: $06 $08

jr_0c5_4ae8:
    ret z                                         ; $4ae8: $c8

    ld b, [hl]                                    ; $4ae9: $46
    dec bc                                        ; $4aea: $0b

jr_0c5_4aeb:
    inc b                                         ; $4aeb: $04
    ld a, [bc]                                    ; $4aec: $0a
    inc b                                         ; $4aed: $04

Jump_0c5_4aee:
    rst $38                                       ; $4aee: $ff
    inc d                                         ; $4aef: $14
    ld [$ef50], sp                                ; $4af0: $08 $50 $ef
    add d                                         ; $4af3: $82
    jr nc, jr_0c5_4b75                            ; $4af4: $30 $7f

    jr nz, jr_0c5_4afc                            ; $4af6: $20 $04

    ld bc, $1820                                  ; $4af8: $01 $20 $18
    ld [bc], a                                    ; $4afb: $02

jr_0c5_4afc:
    rst $38                                       ; $4afc: $ff
    adc b                                         ; $4afd: $88
    ld [hl], a                                    ; $4afe: $77
    or [hl]                                       ; $4aff: $b6
    ld e, [hl]                                    ; $4b00: $5e
    ld a, [de]                                    ; $4b01: $1a
    add b                                         ; $4b02: $80
    ld h, $11                                     ; $4b03: $26 $11
    adc d                                         ; $4b05: $8a
    jr z, jr_0c5_4a88                             ; $4b06: $28 $80

    cp b                                          ; $4b08: $b8
    inc bc                                        ; $4b09: $03
    ld d, d                                       ; $4b0a: $52
    ld [$cb02], sp                                ; $4b0b: $08 $02 $cb
    add [hl]                                      ; $4b0e: $86
    add hl, bc                                    ; $4b0f: $09
    ld a, d                                       ; $4b10: $7a
    ld bc, $be41                                  ; $4b11: $01 $41 $be
    call z, $7f14                                 ; $4b14: $cc $14 $7f
    ld d, h                                       ; $4b17: $54
    ld a, [de]                                    ; $4b18: $1a
    ld d, d                                       ; $4b19: $52
    ld a, [bc]                                    ; $4b1a: $0a
    and c                                         ; $4b1b: $a1
    call nc, $fb10                                ; $4b1c: $d4 $10 $fb
    jr nc, jr_0c5_4b22                            ; $4b1f: $30 $01

    ei                                            ; $4b21: $fb

jr_0c5_4b22:
    add b                                         ; $4b22: $80
    ld a, a                                       ; $4b23: $7f
    ld [$0ba2], sp                                ; $4b24: $08 $a2 $0b
    rst $18                                       ; $4b27: $df
    sub d                                         ; $4b28: $92
    ld de, $0098                                  ; $4b29: $11 $98 $00
    cp $66                                        ; $4b2c: $fe $66
    inc e                                         ; $4b2e: $1c
    sub [hl]                                      ; $4b2f: $96
    add hl, de                                    ; $4b30: $19
    or d                                          ; $4b31: $b2
    ld a, [bc]                                    ; $4b32: $0a
    adc d                                         ; $4b33: $8a
    ld [$09b4], sp                                ; $4b34: $08 $b4 $09
    db $fd                                        ; $4b37: $fd
    adc b                                         ; $4b38: $88
    ld a, [de]                                    ; $4b39: $1a
    inc l                                         ; $4b3a: $2c
    ld [$182a], sp                                ; $4b3b: $08 $2a $18
    ld a, [de]                                    ; $4b3e: $1a
    ld [$1ad2], sp                                ; $4b3f: $08 $d2 $1a
    inc a                                         ; $4b42: $3c
    ld bc, $2cdf                                  ; $4b43: $01 $df $2c
    nop                                           ; $4b46: $00
    bit 4, d                                      ; $4b47: $cb $62
    inc b                                         ; $4b49: $04
    jp nz, Jump_000_240a                          ; $4b4a: $c2 $0a $24

    db $db                                        ; $4b4d: $db
    db $ec                                        ; $4b4e: $ec
    dec bc                                        ; $4b4f: $0b
    ld [$0114], sp                                ; $4b50: $08 $14 $01
    db $f4                                        ; $4b53: $f4
    ld a, [bc]                                    ; $4b54: $0a
    cpl                                           ; $4b55: $2f
    add l                                         ; $4b56: $85
    ld a, [hl]                                    ; $4b57: $7e
    ret nz                                        ; $4b58: $c0

    ld a, [de]                                    ; $4b59: $1a
    add d                                         ; $4b5a: $82
    ld c, $00                                     ; $4b5b: $0e $00
    ld a, $08                                     ; $4b5d: $3e $08
    ret c                                         ; $4b5f: $d8

    add hl, bc                                    ; $4b60: $09
    call c, $7f1a                                 ; $4b61: $dc $1a $7f
    inc b                                         ; $4b64: $04
    ret nc                                        ; $4b65: $d0

    inc d                                         ; $4b66: $14
    ldh [rNR11], a                                ; $4b67: $e0 $11
    ld [bc], a                                    ; $4b69: $02

jr_0c5_4b6a:
    ld bc, $09fe                                  ; $4b6a: $01 $fe $09
    jr c, @+$0b                                   ; $4b6d: $38 $09

    ld l, h                                       ; $4b6f: $6c
    add hl, de                                    ; $4b70: $19
    inc [hl]                                      ; $4b71: $34
    dec bc                                        ; $4b72: $0b
    ld h, $12                                     ; $4b73: $26 $12

jr_0c5_4b75:
    db $ed                                        ; $4b75: $ed
    or [hl]                                       ; $4b76: $b6
    ld [$fa05], sp                                ; $4b77: $08 $05 $fa
    db $fc                                        ; $4b7a: $fc
    ld bc, $2342                                  ; $4b7b: $01 $42 $23
    ld c, b                                       ; $4b7e: $48
    inc e                                         ; $4b7f: $1c
    rst $30                                       ; $4b80: $f7
    inc h                                         ; $4b81: $24
    db $db                                        ; $4b82: $db
    jp nc, Jump_0c5_580a                          ; $4b83: $d2 $0a $58

    inc c                                         ; $4b86: $0c
    sbc [hl]                                      ; $4b87: $9e
    dec c                                         ; $4b88: $0d
    jr nz, jr_0c5_4b6a                            ; $4b89: $20 $df

    ld e, [hl]                                    ; $4b8b: $5e
    ld bc, $05a6                                  ; $4b8c: $01 $a6 $05
    ld de, $0ce2                                  ; $4b8f: $11 $e2 $0c
    adc b                                         ; $4b92: $88
    inc bc                                        ; $4b93: $03
    ld c, [hl]                                    ; $4b94: $4e
    dec bc                                        ; $4b95: $0b
    ldh [rSC], a                                  ; $4b96: $e0 $02
    or a                                          ; $4b98: $b7
    adc e                                         ; $4b99: $8b
    db $ec                                        ; $4b9a: $ec
    inc c                                         ; $4b9b: $0c
    jr nz, @-$1f                                  ; $4b9c: $20 $df

    inc b                                         ; $4b9e: $04
    jr c, jr_0c5_4bb4                             ; $4b9f: $38 $13

    ld [$137e], sp                                ; $4ba1: $08 $7e $13
    ld c, h                                       ; $4ba4: $4c
    add hl, bc                                    ; $4ba5: $09
    adc a                                         ; $4ba6: $8f
    ret z                                         ; $4ba7: $c8

    inc bc                                        ; $4ba8: $03
    xor $44                                       ; $4ba9: $ee $44
    cp e                                          ; $4bab: $bb
    ld a, b                                       ; $4bac: $78
    dec de                                        ; $4bad: $1b
    ld h, [hl]                                    ; $4bae: $66
    jr @-$32                                      ; $4baf: $18 $cc

    ld [$0a02], sp                                ; $4bb1: $08 $02 $0a

jr_0c5_4bb4:
    rst $28                                       ; $4bb4: $ef
    jp c, $a609                                   ; $4bb5: $da $09 $a6

    dec de                                        ; $4bb8: $1b
    add $09                                       ; $4bb9: $c6 $09
    ld bc, $04ea                                  ; $4bbb: $01 $ea $04
    ld c, h                                       ; $4bbe: $4c
    ld a, [bc]                                    ; $4bbf: $0a
    add $0a                                       ; $4bc0: $c6 $0a
    ld [hl], h                                    ; $4bc2: $74
    dec bc                                        ; $4bc3: $0b

jr_0c5_4bc4:
    add a                                         ; $4bc4: $87
    ret z                                         ; $4bc5: $c8

    inc c                                         ; $4bc6: $0c
    ld [$85f7], sp                                ; $4bc7: $08 $f7 $85
    ld a, d                                       ; $4bca: $7a
    sub b                                         ; $4bcb: $90
    dec hl                                        ; $4bcc: $2b
    jr c, @+$1c                                   ; $4bcd: $38 $1a

    jr jr_0c5_4bdf                                ; $4bcf: $18 $0e

    jr c, jr_0c5_4be4                             ; $4bd1: $38 $11

    xor $3c                                       ; $4bd3: $ee $3c
    ld bc, $214c                                  ; $4bd5: $01 $4c $21
    sbc $0c                                       ; $4bd8: $de $0c
    inc d                                         ; $4bda: $14
    db $eb                                        ; $4bdb: $eb
    ld b, d                                       ; $4bdc: $42
    ld b, l                                       ; $4bdd: $45
    cp l                                          ; $4bde: $bd

jr_0c5_4bdf:
    ret nc                                        ; $4bdf: $d0

    dec de                                        ; $4be0: $1b
    ld [bc], a                                    ; $4be1: $02
    db $fd                                        ; $4be2: $fd
    adc b                                         ; $4be3: $88

jr_0c5_4be4:
    jr nz, jr_0c5_4bf7                            ; $4be4: $20 $11

    ld [de], a                                    ; $4be6: $12
    ld a, [$be23]                                 ; $4be7: $fa $23 $be
    call z, $200a                                 ; $4bea: $cc $0a $20

jr_0c5_4bed:
    adc d                                         ; $4bed: $8a
    dec b                                         ; $4bee: $05
    and b                                         ; $4bef: $a0
    dec bc                                        ; $4bf0: $0b
    db $ec                                        ; $4bf1: $ec
    ld bc, $13f6                                  ; $4bf2: $01 $f6 $13
    ld h, h                                       ; $4bf5: $64
    ld [hl+], a                                   ; $4bf6: $22

jr_0c5_4bf7:
    ld a, a                                       ; $4bf7: $7f
    ld d, a                                       ; $4bf8: $57
    db $10                                        ; $4bf9: $10
    and $02                                       ; $4bfa: $e6 $02
    jr nz, jr_0c5_4bc4                            ; $4bfc: $20 $c6

    ld de, $7241                                  ; $4bfe: $11 $41 $72
    ld d, $6a                                     ; $4c01: $16 $6a
    dec c                                         ; $4c03: $0d
    and [hl]                                      ; $4c04: $a6
    dec de                                        ; $4c05: $1b
    ld d, $05                                     ; $4c06: $16 $05
    ei                                            ; $4c08: $fb
    inc h                                         ; $4c09: $24
    cp b                                          ; $4c0a: $b8
    ld de, $5e10                                  ; $4c0b: $11 $10 $5e
    ld [bc], a                                    ; $4c0e: $02
    adc h                                         ; $4c0f: $8c
    ld e, $01                                     ; $4c10: $1e $01
    ld [de], a                                    ; $4c12: $12
    rst $38                                       ; $4c13: $ff
    jr z, jr_0c5_4bed                             ; $4c14: $28 $d7

    ld [bc], a                                    ; $4c16: $02
    dec de                                        ; $4c17: $1b
    add h                                         ; $4c18: $84
    ld a, e                                       ; $4c19: $7b
    ld a, [$2108]                                 ; $4c1a: $fa $08 $21
    ldh a, [$b4]                                  ; $4c1d: $f0 $b4
    ld hl, $1226                                  ; $4c1f: $21 $26 $12
    adc [hl]                                      ; $4c22: $8e
    ld de, $0b70                                  ; $4c23: $11 $70 $0b
    jr @+$01                                      ; $4c26: $18 $ff

    ld b, d                                       ; $4c28: $42
    cp a                                          ; $4c29: $bf
    ld c, $08                                     ; $4c2a: $0e $08
    rst $30                                       ; $4c2c: $f7
    add b                                         ; $4c2d: $80
    ld a, a                                       ; $4c2e: $7f
    or $0d                                        ; $4c2f: $f6 $0d
    ret nz                                        ; $4c31: $c0

    ld c, $76                                     ; $4c32: $0e $76
    inc c                                         ; $4c34: $0c
    adc d                                         ; $4c35: $8a
    ld e, [hl]                                    ; $4c36: $5e
    ld [hl], a                                    ; $4c37: $77
    ld d, [hl]                                    ; $4c38: $56
    dec bc                                        ; $4c39: $0b
    add c                                         ; $4c3a: $81
    sbc d                                         ; $4c3b: $9a
    ld [$06dc], sp                                ; $4c3c: $08 $dc $06
    ld e, $00                                     ; $4c3f: $1e $00
    xor h                                         ; $4c41: $ac
    ld a, [bc]                                    ; $4c42: $0a
    cp a                                          ; $4c43: $bf
    ld a, [bc]                                    ; $4c44: $0a
    ld b, b                                       ; $4c45: $40
    rst $38                                       ; $4c46: $ff
    add hl, bc                                    ; $4c47: $09
    or $08                                        ; $4c48: $f6 $08
    dec de                                        ; $4c4a: $1b
    ld c, b                                       ; $4c4b: $48
    ld e, b                                       ; $4c4c: $58
    dec b                                         ; $4c4d: $05
    add b                                         ; $4c4e: $80
    ld [hl], a                                    ; $4c4f: $77
    ld a, a                                       ; $4c50: $7f
    xor b                                         ; $4c51: $a8
    inc bc                                        ; $4c52: $03
    cp h                                          ; $4c53: $bc
    dec d                                         ; $4c54: $15
    ret c                                         ; $4c55: $d8

    ld bc, $76bf                                  ; $4c56: $01 $bf $76
    nop                                           ; $4c59: $00
    ret nz                                        ; $4c5a: $c0

    db $10                                        ; $4c5b: $10
    ld a, [bc]                                    ; $4c5c: $0a
    ld [$60dd], sp                                ; $4c5d: $08 $dd $60
    dec bc                                        ; $4c60: $0b
    ld c, b                                       ; $4c61: $48
    inc bc                                        ; $4c62: $03
    or $b0                                        ; $4c63: $f6 $b0
    dec de                                        ; $4c65: $1b
    jr jr_0c5_4c87                                ; $4c66: $18 $1f

    ld d, $1b                                     ; $4c68: $16 $1b
    ld hl, $065e                                  ; $4c6a: $21 $5e $06
    add [hl]                                      ; $4c6d: $86
    jp z, Jump_000_1019                           ; $4c6e: $ca $19 $10

    rst $28                                       ; $4c71: $ef
    ld [$60f7], sp                                ; $4c72: $08 $f7 $60
    inc c                                         ; $4c75: $0c
    db $ec                                        ; $4c76: $ec
    inc e                                         ; $4c77: $1c
    add d                                         ; $4c78: $82
    add $0e                                       ; $4c79: $c6 $0e
    inc d                                         ; $4c7b: $14
    ld h, $1c                                     ; $4c7c: $26 $1c
    nop                                           ; $4c7e: $00
    rst $38                                       ; $4c7f: $ff
    ld sp, $0a88                                  ; $4c80: $31 $88 $0a
    ld c, $02                                     ; $4c83: $0e $02
    add b                                         ; $4c85: $80
    ld [hl-], a                                   ; $4c86: $32

jr_0c5_4c87:
    ld a, a                                       ; $4c87: $7f
    ld c, b                                       ; $4c88: $48
    ld [$0216], sp                                ; $4c89: $08 $16 $02
    inc c                                         ; $4c8c: $0c
    and h                                         ; $4c8d: $a4
    ld a, e                                       ; $4c8e: $7b
    ld e, [hl]                                    ; $4c8f: $5e
    rrca                                          ; $4c90: $0f
    adc b                                         ; $4c91: $88
    db $e3                                        ; $4c92: $e3
    ld d, $08                                     ; $4c93: $16 $08
    jr c, jr_0c5_4ca2                             ; $4c95: $38 $0b

    cp d                                          ; $4c97: $ba
    ld de, $7f80                                  ; $4c98: $11 $80 $7f
    ld de, $0678                                  ; $4c9b: $11 $78 $06
    ld h, $0d                                     ; $4c9e: $26 $0d
    or h                                          ; $4ca0: $b4
    or d                                          ; $4ca1: $b2

jr_0c5_4ca2:
    ld c, $80                                     ; $4ca2: $0e $80
    inc h                                         ; $4ca4: $24
    inc bc                                        ; $4ca5: $03
    ld l, h                                       ; $4ca6: $6c
    ld a, [de]                                    ; $4ca7: $1a
    ld b, b                                       ; $4ca8: $40
    adc h                                         ; $4ca9: $8c
    rlca                                          ; $4caa: $07
    add d                                         ; $4cab: $82
    ld a, l                                       ; $4cac: $7d
    jp c, Jump_000_2c60                           ; $4cad: $da $60 $2c

    add [hl]                                      ; $4cb0: $86
    inc c                                         ; $4cb1: $0c
    jr nz, jr_0c5_4cd2                            ; $4cb2: $20 $1e

    ld bc, $0f9e                                  ; $4cb4: $01 $9e $0f
    ld b, h                                       ; $4cb7: $44
    inc l                                         ; $4cb8: $2c
    inc d                                         ; $4cb9: $14
    add b                                         ; $4cba: $80
    inc a                                         ; $4cbb: $3c
    rst $38                                       ; $4cbc: $ff
    dec b                                         ; $4cbd: $05
    sub b                                         ; $4cbe: $90
    inc de                                        ; $4cbf: $13
    inc h                                         ; $4cc0: $24
    inc c                                         ; $4cc1: $0c
    call nc, Call_0c5_700e                        ; $4cc2: $d4 $0e $70
    dec e                                         ; $4cc5: $1d
    ld b, h                                       ; $4cc6: $44
    cp a                                          ; $4cc7: $bf
    ld e, $01                                     ; $4cc8: $1e $01
    cp $88                                        ; $4cca: $fe $88
    jp nz, Jump_0c5_6c17                          ; $4ccc: $c2 $17 $6c

    inc c                                         ; $4ccf: $0c
    adc [hl]                                      ; $4cd0: $8e
    ld a, [bc]                                    ; $4cd1: $0a

jr_0c5_4cd2:
    inc a                                         ; $4cd2: $3c
    inc c                                         ; $4cd3: $0c
    ld [bc], a                                    ; $4cd4: $02
    rra                                           ; $4cd5: $1f
    rst $38                                       ; $4cd6: $ff
    ld b, h                                       ; $4cd7: $44
    cp e                                          ; $4cd8: $bb
    ld [hl], d                                    ; $4cd9: $72
    inc bc                                        ; $4cda: $03

jr_0c5_4cdb:
    ret nc                                        ; $4cdb: $d0

    ld b, $54                                     ; $4cdc: $06 $54
    ld [$13ba], sp                                ; $4cde: $08 $ba $13
    ld [$dc27], a                                 ; $4ce1: $ea $27 $dc
    ld d, h                                       ; $4ce4: $54
    inc b                                         ; $4ce5: $04
    or b                                          ; $4ce6: $b0
    ld b, $90                                     ; $4ce7: $06 $90
    or [hl]                                       ; $4ce9: $b6
    ld [bc], a                                    ; $4cea: $02
    ld [hl-], a                                   ; $4ceb: $32
    inc e                                         ; $4cec: $1c
    ld a, [c]                                     ; $4ced: $f2
    inc bc                                        ; $4cee: $03
    cp a                                          ; $4cef: $bf
    ld de, $7aef                                  ; $4cf0: $11 $ef $7a
    dec e                                         ; $4cf3: $1d
    adc h                                         ; $4cf4: $8c
    dec bc                                        ; $4cf5: $0b
    and h                                         ; $4cf6: $a4
    dec c                                         ; $4cf7: $0d
    cp $9c                                        ; $4cf8: $fe $9c
    inc de                                        ; $4cfa: $13
    ld a, [de]                                    ; $4cfb: $1a
    dec b                                         ; $4cfc: $05
    db $e4                                        ; $4cfd: $e4
    ld [bc], a                                    ; $4cfe: $02
    call c, $1f06                                 ; $4cff: $dc $06 $1f
    jr z, jr_0c5_4cdb                             ; $4d02: $28 $d7

    ld [hl+], a                                   ; $4d04: $22
    ld [c], a                                     ; $4d05: $e2
    ld b, $50                                     ; $4d06: $06 $50
    inc c                                         ; $4d08: $0c
    inc d                                         ; $4d09: $14
    ld [$7c50], sp                                ; $4d0a: $08 $50 $7c
    add d                                         ; $4d0d: $82
    inc de                                        ; $4d0e: $13
    cp $be                                        ; $4d0f: $fe $be
    inc hl                                        ; $4d11: $23
    jp z, Jump_0c5_6e0d                           ; $4d12: $ca $0d $6e

    add hl, bc                                    ; $4d15: $09
    ld l, $1c                                     ; $4d16: $2e $1c
    ld l, h                                       ; $4d18: $6c
    dec de                                        ; $4d19: $1b
    halt                                          ; $4d1a: $76
    dec de                                        ; $4d1b: $1b
    inc b                                         ; $4d1c: $04
    add hl, bc                                    ; $4d1d: $09
    sub b                                         ; $4d1e: $90
    ld b, a                                       ; $4d1f: $47
    ld l, a                                       ; $4d20: $6f
    nop                                           ; $4d21: $00
    inc c                                         ; $4d22: $0c
    and b                                         ; $4d23: $a0
    ld e, a                                       ; $4d24: $5f
    adc c                                         ; $4d25: $89
    sub b                                         ; $4d26: $90
    ld bc, $0c0a                                  ; $4d27: $01 $0a $0c
    add [hl]                                      ; $4d2a: $86
    ld [$015e], sp                                ; $4d2b: $08 $5e $01
    ld a, $15                                     ; $4d2e: $3e $15
    inc d                                         ; $4d30: $14

Jump_0c5_4d31:
    ld h, d                                       ; $4d31: $62
    dec d                                         ; $4d32: $15
    sub h                                         ; $4d33: $94
    inc e                                         ; $4d34: $1c
    ld d, h                                       ; $4d35: $54
    inc bc                                        ; $4d36: $03
    ld a, [$2023]                                 ; $4d37: $fa $23 $20
    db $fd                                        ; $4d3a: $fd
    add sp, $05                                   ; $4d3b: $e8 $05
    inc l                                         ; $4d3d: $2c
    dec c                                         ; $4d3e: $0d
    ld a, h                                       ; $4d3f: $7c
    ld [de], a                                    ; $4d40: $12
    ld c, $0b                                     ; $4d41: $0e $0b
    sub b                                         ; $4d43: $90
    ld d, e                                       ; $4d44: $53
    ld a, [hl+]                                   ; $4d45: $2a
    inc c                                         ; $4d46: $0c
    ld bc, $14a2                                  ; $4d47: $01 $a2 $14
    rst $30                                       ; $4d4a: $f7
    ld h, d                                       ; $4d4b: $62
    ld c, $e4                                     ; $4d4c: $0e $e4
    ld hl, $0538                                  ; $4d4e: $21 $38 $05
    and d                                         ; $4d51: $a2
    dec c                                         ; $4d52: $0d
    ld b, d                                       ; $4d53: $42
    ldh a, [rNR43]                                ; $4d54: $f0 $22
    inc e                                         ; $4d56: $1c
    ld d, $40                                     ; $4d57: $16 $40
    ld d, h                                       ; $4d59: $54
    sbc a                                         ; $4d5a: $9f
    add sp, $1c                                   ; $4d5b: $e8 $1c
    ld b, b                                       ; $4d5d: $40
    cp a                                          ; $4d5e: $bf
    ret nz                                        ; $4d5f: $c0

    rrca                                          ; $4d60: $0f
    cp $0f                                        ; $4d61: $fe $0f
    call c, Call_0c5_6235                         ; $4d63: $dc $35 $62
    ld [hl+], a                                   ; $4d66: $22
    ld a, d                                       ; $4d67: $7a
    dec c                                         ; $4d68: $0d
    sbc c                                         ; $4d69: $99
    ld c, $0d                                     ; $4d6a: $0e $0d
    inc h                                         ; $4d6c: $24
    db $db                                        ; $4d6d: $db
    jp nc, $e00e                                  ; $4d6e: $d2 $0e $e0

    dec bc                                        ; $4d71: $0b
    ld bc, $e0fe                                  ; $4d72: $01 $fe $e0
    dec bc                                        ; $4d75: $0b
    cp h                                          ; $4d76: $bc
    halt                                          ; $4d77: $76
    inc e                                         ; $4d78: $1c
    ld b, c                                       ; $4d79: $41
    or $1f                                        ; $4d7a: $f6 $1f
    ld l, h                                       ; $4d7c: $6c
    inc hl                                        ; $4d7d: $23
    ld hl, sp+$1e                                 ; $4d7e: $f8 $1e
    ld b, $16                                     ; $4d80: $06 $16
    ld a, a                                       ; $4d82: $7f
    ret nc                                        ; $4d83: $d0

    add hl, bc                                    ; $4d84: $09
    ld e, h                                       ; $4d85: $5c
    inc b                                         ; $4d86: $04
    ld [$ff5c], sp                                ; $4d87: $08 $5c $ff
    ld a, h                                       ; $4d8a: $7c
    rst $38                                       ; $4d8b: $ff
    inc b                                         ; $4d8c: $04
    db $10                                        ; $4d8d: $10
    db $fd                                        ; $4d8e: $fd
    ld a, h                                       ; $4d8f: $7c
    cp $02                                        ; $4d90: $fe $02
    ld e, h                                       ; $4d92: $5c
    db $fd                                        ; $4d93: $fd
    inc a                                         ; $4d94: $3c
    cp $02                                        ; $4d95: $fe $02

jr_0c5_4d97:
    db $fc                                        ; $4d97: $fc
    ld [bc], a                                    ; $4d98: $02
    db $10                                        ; $4d99: $10
    xor b                                         ; $4d9a: $a8
    inc b                                         ; $4d9b: $04
    ld [bc], a                                    ; $4d9c: $02
    ld d, h                                       ; $4d9d: $54
    ld [bc], a                                    ; $4d9e: $02
    xor b                                         ; $4d9f: $a8
    nop                                           ; $4da0: $00
    inc b                                         ; $4da1: $04
    nop                                           ; $4da2: $00
    jr nc, @+$01                                  ; $4da3: $30 $ff

    jr nz, jr_0c5_4d97                            ; $4da5: $20 $f0

    ld a, a                                       ; $4da7: $7f
    inc b                                         ; $4da8: $04
    ld [$d510], sp                                ; $4da9: $08 $10 $d5
    and b                                         ; $4dac: $a0
    ld a, [hl+]                                   ; $4dad: $2a
    db $10                                        ; $4dae: $10
    ld b, b                                       ; $4daf: $40
    ld d, l                                       ; $4db0: $55
    inc b                                         ; $4db1: $04
    nop                                           ; $4db2: $00
    rst $20                                       ; $4db3: $e7
    dec d                                         ; $4db4: $15
    db $e3                                        ; $4db5: $e3
    inc d                                         ; $4db6: $14
    db $e3                                        ; $4db7: $e3
    dec d                                         ; $4db8: $15
    ld [bc], a                                    ; $4db9: $02
    db $e3                                        ; $4dba: $e3

jr_0c5_4dbb:
    ld e, $43                                     ; $4dbb: $1e $43
    dec d                                         ; $4dbd: $15
    and e                                         ; $4dbe: $a3
    rra                                           ; $4dbf: $1f
    inc b                                         ; $4dc0: $04
    nop                                           ; $4dc1: $00
    ld hl, sp+$05                                 ; $4dc2: $f8 $05
    rst $38                                       ; $4dc4: $ff
    ld a, b                                       ; $4dc5: $78
    rst $38                                       ; $4dc6: $ff
    ld hl, sp-$03                                 ; $4dc7: $f8 $fd
    inc b                                         ; $4dc9: $04
    db $10                                        ; $4dca: $10
    ld a, [$0804]                                 ; $4dcb: $fa $04 $08
    nop                                           ; $4dce: $00
    ld h, $cf                                     ; $4dcf: $26 $cf
    ld [hl], $cf                                  ; $4dd1: $36 $cf
    ld b, $47                                     ; $4dd3: $06 $47
    ld [hl+], a                                   ; $4dd5: $22
    jp z, Jump_000_0408                           ; $4dd6: $ca $08 $04

    ld d, l                                       ; $4dd9: $55
    ld [hl+], a                                   ; $4dda: $22
    adc d                                         ; $4ddb: $8a
    inc b                                         ; $4ddc: $04
    ld [$c730], sp                                ; $4ddd: $08 $30 $c7
    add hl, hl                                    ; $4de0: $29
    ld b, h                                       ; $4de1: $44
    rst $00                                       ; $4de2: $c7
    inc b                                         ; $4de3: $04
    nop                                           ; $4de4: $00
    add a                                         ; $4de5: $87
    inc h                                         ; $4de6: $24
    ld b, e                                       ; $4de7: $43
    inc b                                         ; $4de8: $04
    jr @+$01                                      ; $4de9: $18 $ff

    rst $38                                       ; $4deb: $ff
    jr nz, jr_0c5_4e6d                            ; $4dec: $20 $7f

    rst $38                                       ; $4dee: $ff
    inc b                                         ; $4def: $04
    ld c, b                                       ; $4df0: $48
    ldh [rIE], a                                  ; $4df1: $e0 $ff
    ldh [$ef], a                                  ; $4df3: $e0 $ef
    ldh [rNR10], a                                ; $4df5: $e0 $10
    push af                                       ; $4df7: $f5
    ldh [$ea], a                                  ; $4df8: $e0 $ea
    inc b                                         ; $4dfa: $04
    jr z, jr_0c5_4dbb                             ; $4dfb: $28 $be

    rra                                           ; $4dfd: $1f
    add d                                         ; $4dfe: $82
    ld a, [hl+]                                   ; $4dff: $2a
    inc b                                         ; $4e00: $04
    inc d                                         ; $4e01: $14
    dec d                                         ; $4e02: $15
    add d                                         ; $4e03: $82
    ld a, [hl+]                                   ; $4e04: $2a
    inc b                                         ; $4e05: $04
    inc b                                         ; $4e06: $04
    jr nz, jr_0c5_4e0f                            ; $4e07: $20 $06

    ld sp, hl                                     ; $4e09: $f9
    jr z, jr_0c5_4e11                             ; $4e0a: $28 $05

    xor b                                         ; $4e0c: $a8
    inc b                                         ; $4e0d: $04
    db $10                                        ; $4e0e: $10

jr_0c5_4e0f:
    ld d, c                                       ; $4e0f: $51
    inc b                                         ; $4e10: $04

jr_0c5_4e11:
    jr jr_0c5_4e8f                                ; $4e11: $18 $7c

    rst $38                                       ; $4e13: $ff
    ld a, l                                       ; $4e14: $7d
    nop                                           ; $4e15: $00
    cp $54                                        ; $4e16: $fe $54
    ld d, l                                       ; $4e18: $55
    cp h                                          ; $4e19: $bc
    cp a                                          ; $4e1a: $bf
    ld d, h                                       ; $4e1b: $54
    ld d, l                                       ; $4e1c: $55
    xor b                                         ; $4e1d: $a8
    nop                                           ; $4e1e: $00
    xor e                                         ; $4e1f: $ab
    ld d, h                                       ; $4e20: $54
    push de                                       ; $4e21: $d5
    db $fc                                        ; $4e22: $fc
    rst $38                                       ; $4e23: $ff
    ld [bc], a                                    ; $4e24: $02
    db $fd                                        ; $4e25: $fd
    ld hl, $de00                                  ; $4e26: $21 $00 $de
    inc bc                                        ; $4e29: $03
    ld d, l                                       ; $4e2a: $55
    nop                                           ; $4e2b: $00
    rst $38                                       ; $4e2c: $ff
    dec d                                         ; $4e2d: $15
    ld d, l                                       ; $4e2e: $55
    ld [bc], a                                    ; $4e2f: $02
    nop                                           ; $4e30: $00
    rst $38                                       ; $4e31: $ff
    nop                                           ; $4e32: $00
    ld d, l                                       ; $4e33: $55
    ld b, b                                       ; $4e34: $40
    cp a                                          ; $4e35: $bf
    ld [hl], c                                    ; $4e36: $71
    cp $f0                                        ; $4e37: $fe $f0
    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    ld [hl], b                                    ; $4e3b: $70
    rst $38                                       ; $4e3c: $ff
    db $f4                                        ; $4e3d: $f4
    rst $38                                       ; $4e3e: $ff
    ld b, c                                       ; $4e3f: $41
    ld d, l                                       ; $4e40: $55
    ld [$ff00], sp                                ; $4e41: $08 $00 $ff
    add c                                         ; $4e44: $81
    cp $00                                        ; $4e45: $fe $00
    rst $38                                       ; $4e47: $ff
    dec [hl]                                      ; $4e48: $35
    db $e3                                        ; $4e49: $e3
    ld de, $e700                                  ; $4e4a: $11 $00 $e7
    inc d                                         ; $4e4d: $14
    db $e3                                        ; $4e4e: $e3
    ld [$54e2], sp                                ; $4e4f: $08 $e2 $54
    ld bc, $0219                                  ; $4e52: $01 $19 $02
    rst $20                                       ; $4e55: $e7
    ld d, $e3                                     ; $4e56: $16 $e3
    add hl, de                                    ; $4e58: $19
    rst $20                                       ; $4e59: $e7
    ld a, [$08ac]                                 ; $4e5a: $fa $ac $08
    rst $38                                       ; $4e5d: $ff
    nop                                           ; $4e5e: $00
    jr z, @-$54                                   ; $4e5f: $28 $aa

    ld d, b                                       ; $4e61: $50
    ld d, l                                       ; $4e62: $55
    ld a, b                                       ; $4e63: $78
    cp $54                                        ; $4e64: $fe $54
    ld d, c                                       ; $4e66: $51
    nop                                           ; $4e67: $00
    ld hl, sp-$01                                 ; $4e68: $f8 $ff
    ld [hl+], a                                   ; $4e6a: $22
    rst $38                                       ; $4e6b: $ff
    nop                                           ; $4e6c: $00

jr_0c5_4e6d:
    rst $38                                       ; $4e6d: $ff
    nop                                           ; $4e6e: $00
    push de                                       ; $4e6f: $d5
    nop                                           ; $4e70: $00
    adc b                                         ; $4e71: $88
    ld a, [hl+]                                   ; $4e72: $2a
    nop                                           ; $4e73: $00
    ld d, l                                       ; $4e74: $55
    nop                                           ; $4e75: $00
    xor d                                         ; $4e76: $aa
    db $10                                        ; $4e77: $10
    ld c, a                                       ; $4e78: $4f
    nop                                           ; $4e79: $00
    ld bc, $34ff                                  ; $4e7a: $01 $ff $34
    res 5, c                                      ; $4e7d: $cb $a9
    ld b, a                                       ; $4e7f: $47
    jr nc, jr_0c5_4ed1                            ; $4e80: $30 $4f

    nop                                           ; $4e82: $00
    add hl, hl                                    ; $4e83: $29
    add a                                         ; $4e84: $87
    ld sp, $294f                                  ; $4e85: $31 $4f $29
    sub a                                         ; $4e88: $97
    ld sp, $19cf                                  ; $4e89: $31 $cf $19
    add hl, hl                                    ; $4e8c: $29
    rst $10                                       ; $4e8d: $d7
    cp a                                          ; $4e8e: $bf

jr_0c5_4e8f:
    xor [hl]                                      ; $4e8f: $ae
    nop                                           ; $4e90: $00
    inc b                                         ; $4e91: $04
    ld c, b                                       ; $4e92: $48
    ldh a, [rIE]                                  ; $4e93: $f0 $ff
    xor h                                         ; $4e95: $ac
    jr nc, jr_0c5_4e98                            ; $4e96: $30 $00

jr_0c5_4e98:
    rst $38                                       ; $4e98: $ff
    db $e4                                        ; $4e99: $e4
    ei                                            ; $4e9a: $fb
    ldh [rIE], a                                  ; $4e9b: $e0 $ff
    call nz, $8a15                                ; $4e9d: $c4 $15 $8a
    jr nz, jr_0c5_4ecc                            ; $4ea0: $20 $2a

    ld d, h                                       ; $4ea2: $54
    inc b                                         ; $4ea3: $04
    db $10                                        ; $4ea4: $10
    sbc [hl]                                      ; $4ea5: $9e
    ld a, a                                       ; $4ea6: $7f
    cp [hl]                                       ; $4ea7: $be
    ld a, a                                       ; $4ea8: $7f
    ld e, [hl]                                    ; $4ea9: $5e
    nop                                           ; $4eaa: $00
    cp a                                          ; $4eab: $bf
    ld d, l                                       ; $4eac: $55
    jr @+$08                                      ; $4ead: $18 $06

    ld sp, hl                                     ; $4eaf: $f9
    ld b, l                                       ; $4eb0: $45
    ld d, b                                       ; $4eb1: $50
    add d                                         ; $4eb2: $82
    nop                                           ; $4eb3: $00
    jr z, @+$07                                   ; $4eb4: $28 $05

    ld d, b                                       ; $4eb6: $50
    ld b, d                                       ; $4eb7: $42
    xor b                                         ; $4eb8: $a8
    dec b                                         ; $4eb9: $05
    ld hl, sp+$16                                 ; $4eba: $f8 $16
    ld a, [bc]                                    ; $4ebc: $0a
    jp hl                                         ; $4ebd: $e9


    ld a, h                                       ; $4ebe: $7c
    rst $38                                       ; $4ebf: $ff
    db $fc                                        ; $4ec0: $fc
    ld [bc], a                                    ; $4ec1: $02
    nop                                           ; $4ec2: $00
    cp $06                                        ; $4ec3: $fe $06
    nop                                           ; $4ec5: $00
    ld a, l                                       ; $4ec6: $7d
    ld [$baff], sp                                ; $4ec7: $08 $ff $ba
    rst $38                                       ; $4eca: $ff
    and c                                         ; $4ecb: $a1

jr_0c5_4ecc:
    ld l, [hl]                                    ; $4ecc: $6e
    nop                                           ; $4ecd: $00
    ld [hl+], a                                   ; $4ece: $22
    db $fd                                        ; $4ecf: $fd
    add b                                         ; $4ed0: $80

jr_0c5_4ed1:
    nop                                           ; $4ed1: $00
    ld a, a                                       ; $4ed2: $7f
    ld de, $00ee                                  ; $4ed3: $11 $ee $00
    rst $38                                       ; $4ed6: $ff
    ld bc, $08fe                                  ; $4ed7: $01 $fe $08
    sub b                                         ; $4eda: $90
    ld a, h                                       ; $4edb: $7c
    nop                                           ; $4edc: $00
    dec h                                         ; $4edd: $25
    sbc $80                                       ; $4ede: $de $80
    nop                                           ; $4ee0: $00
    rst $38                                       ; $4ee1: $ff
    ld [$40f7], sp                                ; $4ee2: $08 $f7 $40
    add h                                         ; $4ee5: $84
    jp z, RST_00                                  ; $4ee6: $ca $00 $00

    rst $38                                       ; $4ee9: $ff
    jr nz, @+$01                                  ; $4eea: $20 $ff

    and h                                         ; $4eec: $a4
    ld [$e753], sp                                ; $4eed: $08 $53 $e7
    ld bc, $f72b                                  ; $4ef0: $01 $2b $f7
    rla                                           ; $4ef3: $17
    rst $38                                       ; $4ef4: $ff
    ld b, d                                       ; $4ef5: $42
    rst $38                                       ; $4ef6: $ff
    ld bc, $009c                                  ; $4ef7: $01 $9c $00
    ld d, c                                       ; $4efa: $51
    db $fc                                        ; $4efb: $fc
    xor [hl]                                      ; $4efc: $ae
    nop                                           ; $4efd: $00
    ld a, [$0076]                                 ; $4efe: $fa $76 $00
    add sp, -$01                                  ; $4f01: $e8 $ff
    sub d                                         ; $4f03: $92
    jr nz, jr_0c5_4f06                            ; $4f04: $20 $00

jr_0c5_4f06:
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    rst $38                                       ; $4f08: $ff
    add h                                         ; $4f09: $84
    ld a, e                                       ; $4f0a: $7b
    nop                                           ; $4f0b: $00
    rst $38                                       ; $4f0c: $ff
    ld [de], a                                    ; $4f0d: $12
    db $ed                                        ; $4f0e: $ed

jr_0c5_4f0f:
    add h                                         ; $4f0f: $84
    ld a, [hl+]                                   ; $4f10: $2a
    nop                                           ; $4f11: $00
    rst $18                                       ; $4f12: $df
    ld [bc], a                                    ; $4f13: $02
    rst $38                                       ; $4f14: $ff
    ld de, $00bc                                  ; $4f15: $11 $bc $00
    or c                                          ; $4f18: $b1
    ld c, a                                       ; $4f19: $4f
    nop                                           ; $4f1a: $00
    dec hl                                        ; $4f1b: $2b
    rst $10                                       ; $4f1c: $d7
    ld sp, $b3cf                                  ; $4f1d: $31 $cf $b3
    rst $08                                       ; $4f20: $cf
    dec h                                         ; $4f21: $25
    rst $18                                       ; $4f22: $df
    ld b, $93                                     ; $4f23: $06 $93
    rst $28                                       ; $4f25: $ef
    ld b, a                                       ; $4f26: $47
    rst $38                                       ; $4f27: $ff
    inc hl                                        ; $4f28: $23
    xor h                                         ; $4f29: $ac
    jr nc, jr_0c5_4f2f                            ; $4f2a: $30 $03

    jr z, jr_0c5_4f0f                             ; $4f2c: $28 $e1

    ld a, [bc]                                    ; $4f2e: $0a

jr_0c5_4f2f:
    rst $38                                       ; $4f2f: $ff
    ldh a, [$ef]                                  ; $4f30: $f0 $ef
    ld [c], a                                     ; $4f32: $e2
    ld h, [hl]                                    ; $4f33: $66
    ld bc, $6ae8                                  ; $4f34: $01 $e8 $6a
    ld bc, $10c5                                  ; $4f37: $01 $c5 $10
    cp $20                                        ; $4f3a: $fe $20
    rst $38                                       ; $4f3c: $ff
    and h                                         ; $4f3d: $a4
    nop                                           ; $4f3e: $00
    rst $38                                       ; $4f3f: $ff
    dec l                                         ; $4f40: $2d
    rst $38                                       ; $4f41: $ff
    add d                                         ; $4f42: $82
    inc b                                         ; $4f43: $04
    rst $38                                       ; $4f44: $ff
    db $10                                        ; $4f45: $10
    rst $38                                       ; $4f46: $ff
    ld b, h                                       ; $4f47: $44
    cp e                                          ; $4f48: $bb
    ld a, b                                       ; $4f49: $78
    nop                                           ; $4f4a: $00
    rst $38                                       ; $4f4b: $ff
    add h                                         ; $4f4c: $84
    nop                                           ; $4f4d: $00
    ld sp, hl                                     ; $4f4e: $f9
    ld b, $f9                                     ; $4f4f: $06 $f9
    ld b, [hl]                                    ; $4f51: $46
    cp c                                          ; $4f52: $b9
    dec c                                         ; $4f53: $0d
    ei                                            ; $4f54: $fb
    ld [bc], a                                    ; $4f55: $02
    nop                                           ; $4f56: $00
    db $fd                                        ; $4f57: $fd
    sub l                                         ; $4f58: $95
    ei                                            ; $4f59: $fb
    ld [$24ff], sp                                ; $4f5a: $08 $ff $24
    rst $38                                       ; $4f5d: $ff
    nop                                           ; $4f5e: $00
    nop                                           ; $4f5f: $00
    nop                                           ; $4f60: $00
    ld b, b                                       ; $4f61: $40
    ld b, b                                       ; $4f62: $40
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    add b                                         ; $4f65: $80
    add h                                         ; $4f66: $84
    nop                                           ; $4f67: $00
    ld bc, $0008                                  ; $4f68: $01 $08 $00
    inc d                                         ; $4f6b: $14
    nop                                           ; $4f6c: $00
    cpl                                           ; $4f6d: $2f
    nop                                           ; $4f6e: $00
    cp $0c                                        ; $4f6f: $fe $0c
    nop                                           ; $4f71: $00
    ld [$0880], sp                                ; $4f72: $08 $80 $08
    ld [$1700], sp                                ; $4f75: $08 $00 $17
    nop                                           ; $4f78: $00
    nop                                           ; $4f79: $00
    or b                                          ; $4f7a: $b0
    nop                                           ; $4f7b: $00
    ld bc, $006b                                  ; $4f7c: $01 $6b $00
    rst $30                                       ; $4f7f: $f7
    db $10                                        ; $4f80: $10
    db $10                                        ; $4f81: $10
    ld [bc], a                                    ; $4f82: $02
    ld [bc], a                                    ; $4f83: $02
    ld [hl+], a                                   ; $4f84: $22
    ld [$2080], sp                                ; $4f85: $08 $80 $20
    nop                                           ; $4f88: $00
    add h                                         ; $4f89: $84
    nop                                           ; $4f8a: $00
    ld e, e                                       ; $4f8b: $5b
    nop                                           ; $4f8c: $00
    rst $38                                       ; $4f8d: $ff
    ld de, $8811                                  ; $4f8e: $11 $11 $88
    inc e                                         ; $4f91: $1c
    nop                                           ; $4f92: $00
    nop                                           ; $4f93: $00
    inc b                                         ; $4f94: $04
    inc b                                         ; $4f95: $04
    ld [hl+], a                                   ; $4f96: $22
    nop                                           ; $4f97: $00
    add c                                         ; $4f98: $81
    nop                                           ; $4f99: $00
    ld c, d                                       ; $4f9a: $4a
    ld [hl+], a                                   ; $4f9b: $22
    nop                                           ; $4f9c: $00
    or a                                          ; $4f9d: $b7
    inc c                                         ; $4f9e: $0c
    jr nz, jr_0c5_4fb1                            ; $4f9f: $20 $10

    nop                                           ; $4fa1: $00
    adc d                                         ; $4fa2: $8a
    ld d, d                                       ; $4fa3: $52
    ld bc, $d1fb                                  ; $4fa4: $01 $fb $d1
    ld e, h                                       ; $4fa7: $5c
    ld bc, $080d                                  ; $4fa8: $01 $0d $08
    db $10                                        ; $4fab: $10
    ld a, $00                                     ; $4fac: $3e $00
    or d                                          ; $4fae: $b2
    nop                                           ; $4faf: $00
    db $dd                                        ; $4fb0: $dd

jr_0c5_4fb1:
    ld c, [hl]                                    ; $4fb1: $4e
    nop                                           ; $4fb2: $00
    inc b                                         ; $4fb3: $04
    rst $38                                       ; $4fb4: $ff
    ld b, b                                       ; $4fb5: $40
    ld b, b                                       ; $4fb6: $40
    ld [bc], a                                    ; $4fb7: $02
    ld [bc], a                                    ; $4fb8: $02
    ld e, h                                       ; $4fb9: $5c
    nop                                           ; $4fba: $00
    inc l                                         ; $4fbb: $2c
    nop                                           ; $4fbc: $00
    inc e                                         ; $4fbd: $1c
    ld d, h                                       ; $4fbe: $54
    nop                                           ; $4fbf: $00
    cp d                                          ; $4fc0: $ba
    ld a, [$3e08]                                 ; $4fc1: $fa $08 $3e
    ld [$0072], sp                                ; $4fc4: $08 $72 $00
    ld [bc], a                                    ; $4fc7: $02
    nop                                           ; $4fc8: $00
    ld b, $26                                     ; $4fc9: $06 $26
    nop                                           ; $4fcb: $00
    db $db                                        ; $4fcc: $db
    nop                                           ; $4fcd: $00

jr_0c5_4fce:
    rst $30                                       ; $4fce: $f7
    jr nz, jr_0c5_4fd9                            ; $4fcf: $20 $08

    ld d, b                                       ; $4fd1: $50
    db $10                                        ; $4fd2: $10
    ld b, h                                       ; $4fd3: $44
    inc b                                         ; $4fd4: $04
    nop                                           ; $4fd5: $00
    and b                                         ; $4fd6: $a0
    nop                                           ; $4fd7: $00
    ld d, b                                       ; $4fd8: $50

jr_0c5_4fd9:
    nop                                           ; $4fd9: $00
    ld h, $01                                     ; $4fda: $26 $01
    add b                                         ; $4fdc: $80
    add b                                         ; $4fdd: $80
    sub c                                         ; $4fde: $91
    ld [hl], b                                    ; $4fdf: $70
    jr jr_0c5_5022                                ; $4fe0: $18 $40

    ld c, b                                       ; $4fe2: $48
    ld d, h                                       ; $4fe3: $54
    nop                                           ; $4fe4: $00
    dec c                                         ; $4fe5: $0d
    nop                                           ; $4fe6: $00
    ld a, a                                       ; $4fe7: $7f
    ld l, d                                       ; $4fe8: $6a
    ld [$4020], sp                                ; $4fe9: $08 $20 $40
    ld d, b                                       ; $4fec: $50
    sbc [hl]                                      ; $4fed: $9e
    db $10                                        ; $4fee: $10
    cp d                                          ; $4fef: $ba
    nop                                           ; $4ff0: $00
    ld [hl], l                                    ; $4ff1: $75

jr_0c5_4ff2:
    nop                                           ; $4ff2: $00
    rst $28                                       ; $4ff3: $ef
    scf                                           ; $4ff4: $37
    jr nz, jr_0c5_5017                            ; $4ff5: $20 $20

    add b                                         ; $4ff7: $80
    ld [$1006], sp                                ; $4ff8: $08 $06 $10
    adc d                                         ; $4ffb: $8a
    ld h, d                                       ; $4ffc: $62
    nop                                           ; $4ffd: $00
    inc [hl]                                      ; $4ffe: $34
    ld de, $0952                                  ; $4fff: $11 $52 $09
    jr jr_0c5_5024                                ; $5002: $18 $20

    rst $38                                       ; $5004: $ff
    ld b, b                                       ; $5005: $40
    ld a, [bc]                                    ; $5006: $0a
    jr nz, jr_0c5_5019                            ; $5007: $20 $10

    jr @+$04                                      ; $5009: $18 $02

    rst $38                                       ; $500b: $ff
    jr z, jr_0c5_4fce                             ; $500c: $28 $c0

    ld b, $08                                     ; $500e: $06 $08
    ld b, h                                       ; $5010: $44
    ld de, $ff00                                  ; $5011: $11 $00 $ff
    ld b, c                                       ; $5014: $41
    rst $38                                       ; $5015: $ff
    inc b                                         ; $5016: $04

jr_0c5_5017:
    ei                                            ; $5017: $fb
    ld e, l                                       ; $5018: $5d

jr_0c5_5019:
    ld d, b                                       ; $5019: $50
    ld a, [hl+]                                   ; $501a: $2a
    db $10                                        ; $501b: $10
    inc b                                         ; $501c: $04
    ld [hl-], a                                   ; $501d: $32
    jr nz, jr_0c5_505e                            ; $501e: $20 $3e

    ld [bc], a                                    ; $5020: $02
    ld a, [bc]                                    ; $5021: $0a

jr_0c5_5022:
    ld [bc], a                                    ; $5022: $02
    add b                                         ; $5023: $80

jr_0c5_5024:
    add d                                         ; $5024: $82
    ld bc, $40a2                                  ; $5025: $01 $a2 $40
    jr jr_0c5_503a                                ; $5028: $18 $10

    inc h                                         ; $502a: $24
    ld bc, $ff00                                  ; $502b: $01 $00 $ff
    sub b                                         ; $502e: $90
    ld d, b                                       ; $502f: $50
    jr nc, jr_0c5_5083                            ; $5030: $30 $51

    ld a, d                                       ; $5032: $7a
    cp [hl]                                       ; $5033: $be
    ld d, b                                       ; $5034: $50

jr_0c5_5035:
    ld l, b                                       ; $5035: $68
    inc l                                         ; $5036: $2c
    ld bc, $01c4                                  ; $5037: $01 $c4 $01

jr_0c5_503a:
    ld b, b                                       ; $503a: $40
    ld e, b                                       ; $503b: $58
    ld b, b                                       ; $503c: $40
    ld b, b                                       ; $503d: $40
    ld b, b                                       ; $503e: $40
    ld b, c                                       ; $503f: $41
    xor l                                         ; $5040: $ad
    ld e, d                                       ; $5041: $5a

jr_0c5_5042:
    ld [bc], a                                    ; $5042: $02
    ld c, b                                       ; $5043: $48
    add h                                         ; $5044: $84
    jr nc, @+$03                                  ; $5045: $30 $01

    jr nc, jr_0c5_5059                            ; $5047: $30 $10

    sub d                                         ; $5049: $92
    jr z, jr_0c5_508c                             ; $504a: $28 $40

    add b                                         ; $504c: $80
    nop                                           ; $504d: $00
    and l                                         ; $504e: $a5
    inc e                                         ; $504f: $1c
    jr z, @+$24                                   ; $5050: $28 $22

    halt                                          ; $5052: $76
    nop                                           ; $5053: $00
    jr z, jr_0c5_5035                             ; $5054: $28 $df

    ld a, [bc]                                    ; $5056: $0a
    db $10                                        ; $5057: $10
    rst $18                                       ; $5058: $df

jr_0c5_5059:
    add b                                         ; $5059: $80
    jr jr_0c5_509d                                ; $505a: $18 $41

    jr jr_0c5_4ff2                                ; $505c: $18 $94

jr_0c5_505e:
    ld [bc], a                                    ; $505e: $02
    inc d                                         ; $505f: $14
    db $eb                                        ; $5060: $eb
    jr nz, jr_0c5_5042                            ; $5061: $20 $df

    ld [$01a6], sp                                ; $5063: $08 $a6 $01
    rst $10                                       ; $5066: $d7
    sub b                                         ; $5067: $90
    ld [$089c], sp                                ; $5068: $08 $9c $08
    ld b, b                                       ; $506b: $40
    ld c, $02                                     ; $506c: $0e $02
    add h                                         ; $506e: $84
    ld d, b                                       ; $506f: $50
    add hl, bc                                    ; $5070: $09
    inc h                                         ; $5071: $24
    ld [bc], a                                    ; $5072: $02
    jr c, jr_0c5_507f                             ; $5073: $38 $0a

    dec [hl]                                      ; $5075: $35
    ld b, b                                       ; $5076: $40
    cp a                                          ; $5077: $bf
    ld a, $0a                                     ; $5078: $3e $0a
    or [hl]                                       ; $507a: $b6
    ld [$b403], sp                                ; $507b: $08 $03 $b4
    db $10                                        ; $507e: $10

jr_0c5_507f:
    add b                                         ; $507f: $80
    jp nc, Jump_0c5_4401                          ; $5080: $d2 $01 $44

jr_0c5_5083:
    inc b                                         ; $5083: $04
    ld [hl], b                                    ; $5084: $70
    ld bc, $bf40                                  ; $5085: $01 $40 $bf
    ld [de], a                                    ; $5088: $12
    ld a, [$1400]                                 ; $5089: $fa $00 $14

jr_0c5_508c:
    rst $28                                       ; $508c: $ef
    adc [hl]                                      ; $508d: $8e
    ld d, [hl]                                    ; $508e: $56
    ld a, [bc]                                    ; $508f: $0a
    sub c                                         ; $5090: $91
    rst $28                                       ; $5091: $ef
    jr nz, @-$16                                  ; $5092: $20 $e8

    ld bc, $004c                                  ; $5094: $01 $4c $00
    ld h, d                                       ; $5097: $62
    ld [de], a                                    ; $5098: $12
    db $10                                        ; $5099: $10
    inc a                                         ; $509a: $3c
    rst $28                                       ; $509b: $ef
    ld [bc], a                                    ; $509c: $02

jr_0c5_509d:
    ldh a, [rSB]                                  ; $509d: $f0 $01
    db $10                                        ; $509f: $10
    ld [$08ec], sp                                ; $50a0: $08 $ec $08
    ld b, [hl]                                    ; $50a3: $46
    nop                                           ; $50a4: $00
    rst $30                                       ; $50a5: $f7
    ld b, d                                       ; $50a6: $42
    sub d                                         ; $50a7: $92
    ld [hl], d                                    ; $50a8: $72
    ld [bc], a                                    ; $50a9: $02
    inc b                                         ; $50aa: $04
    ei                                            ; $50ab: $fb
    jr c, jr_0c5_50ae                             ; $50ac: $38 $00

jr_0c5_50ae:
    rst $38                                       ; $50ae: $ff
    ld hl, $0286                                  ; $50af: $21 $86 $02
    add h                                         ; $50b2: $84
    pop de                                        ; $50b3: $d1
    and [hl]                                      ; $50b4: $a6
    db $10                                        ; $50b5: $10
    ld b, d                                       ; $50b6: $42
    add hl, bc                                    ; $50b7: $09
    db $10                                        ; $50b8: $10
    ld d, [hl]                                    ; $50b9: $56
    inc bc                                        ; $50ba: $03
    ld b, b                                       ; $50bb: $40
    rst $38                                       ; $50bc: $ff
    ld a, [bc]                                    ; $50bd: $0a
    ld [hl], b                                    ; $50be: $70
    ld [de], a                                    ; $50bf: $12
    ld a, [de]                                    ; $50c0: $1a
    jr nz, @-$1f                                  ; $50c1: $20 $df

    add hl, bc                                    ; $50c3: $09
    sub [hl]                                      ; $50c4: $96
    ld [bc], a                                    ; $50c5: $02
    sbc $28                                       ; $50c6: $de $28
    db $10                                        ; $50c8: $10
    ld d, b                                       ; $50c9: $50
    db $10                                        ; $50ca: $10
    ld a, [bc]                                    ; $50cb: $0a
    add e                                         ; $50cc: $83
    ld a, [hl]                                    ; $50cd: $7e
    nop                                           ; $50ce: $00
    inc b                                         ; $50cf: $04
    ei                                            ; $50d0: $fb
    ld [$81f7], sp                                ; $50d1: $08 $f7 $81
    ld a, $01                                     ; $50d4: $3e $01
    call nz, $850a                                ; $50d6: $c4 $0a $85
    xor b                                         ; $50d9: $a8
    ld a, [bc]                                    ; $50da: $0a
    sub b                                         ; $50db: $90
    ld a, a                                       ; $50dc: $7f
    inc b                                         ; $50dd: $04
    ei                                            ; $50de: $fb
    inc a                                         ; $50df: $3c
    add hl, bc                                    ; $50e0: $09
    add hl, bc                                    ; $50e1: $09
    call nz, $8201                                ; $50e2: $c4 $01 $82
    ld a, [de]                                    ; $50e5: $1a
    nop                                           ; $50e6: $00
    ld a, [hl]                                    ; $50e7: $7e
    nop                                           ; $50e8: $00
    rst $38                                       ; $50e9: $ff
    sub h                                         ; $50ea: $94
    ld l, e                                       ; $50eb: $6b
    ld a, h                                       ; $50ec: $7c
    ld [$b101], sp                                ; $50ed: $08 $01 $b1
    add h                                         ; $50f0: $84
    inc bc                                        ; $50f1: $03
    ld [de], a                                    ; $50f2: $12
    adc [hl]                                      ; $50f3: $8e
    db $10                                        ; $50f4: $10
    ld d, h                                       ; $50f5: $54
    nop                                           ; $50f6: $00
    cp a                                          ; $50f7: $bf
    ld b, $fd                                     ; $50f8: $06 $fd
    add h                                         ; $50fa: $84
    nop                                           ; $50fb: $00
    ld a, e                                       ; $50fc: $7b
    rst $30                                       ; $50fd: $f7
    ld a, [$680a]                                 ; $50fe: $fa $0a $68
    add hl, de                                    ; $5101: $19
    or d                                          ; $5102: $b2
    ld [$1972], sp                                ; $5103: $08 $72 $19
    add b                                         ; $5106: $80
    ld a, [c]                                     ; $5107: $f2
    nop                                           ; $5108: $00
    add b                                         ; $5109: $80
    add hl, bc                                    ; $510a: $09
    push hl                                       ; $510b: $e5
    ld a, d                                       ; $510c: $7a
    add hl, bc                                    ; $510d: $09
    sub [hl]                                      ; $510e: $96
    add hl, bc                                    ; $510f: $09
    ld [hl+], a                                   ; $5110: $22
    ld bc, $91ff                                  ; $5111: $01 $ff $91
    jp nz, Jump_000_2031                          ; $5114: $c2 $31 $20

    jr nz, @+$03                                  ; $5117: $20 $01

    jr @+$07                                      ; $5119: $18 $05

    ld a, [$6204]                                 ; $511b: $fa $04 $62
    ld de, $0214                                  ; $511e: $11 $14 $02
    ld a, a                                       ; $5121: $7f
    ld b, b                                       ; $5122: $40
    cp a                                          ; $5123: $bf
    add b                                         ; $5124: $80
    ld [hl], $0b                                  ; $5125: $36 $0b
    ld d, b                                       ; $5127: $50
    xor a                                         ; $5128: $af
    ld bc, $48ff                                  ; $5129: $01 $ff $48
    or a                                          ; $512c: $b7
    ld [bc], a                                    ; $512d: $02
    dec sp                                        ; $512e: $3b
    db $fd                                        ; $512f: $fd
    add b                                         ; $5130: $80
    sbc $01                                       ; $5131: $de $01
    or h                                          ; $5133: $b4
    ld [$19c2], sp                                ; $5134: $08 $c2 $19
    db $10                                        ; $5137: $10
    inc e                                         ; $5138: $1c
    ld bc, $0b4a                                  ; $5139: $01 $4a $0b
    and e                                         ; $513c: $a3
    ld e, h                                       ; $513d: $5c
    jr z, @+$26                                   ; $513e: $28 $24

    ld e, h                                       ; $5140: $5c
    ld bc, $df21                                  ; $5141: $01 $21 $df
    db $10                                        ; $5144: $10
    ld c, [hl]                                    ; $5145: $4e
    inc bc                                        ; $5146: $03
    db $ec                                        ; $5147: $ec
    dec bc                                        ; $5148: $0b
    inc c                                         ; $5149: $0c
    ld bc, $80fe                                  ; $514a: $01 $fe $80
    ld a, a                                       ; $514d: $7f
    ld a, d                                       ; $514e: $7a
    inc bc                                        ; $514f: $03
    ld l, d                                       ; $5150: $6a
    ld [bc], a                                    ; $5151: $02
    dec b                                         ; $5152: $05
    ld a, [$a2c4]                                 ; $5153: $fa $c4 $a2
    add hl, bc                                    ; $5156: $09
    jr nz, jr_0c5_5162                            ; $5157: $20 $09

    ld [hl+], a                                   ; $5159: $22
    db $dd                                        ; $515a: $dd
    db $10                                        ; $515b: $10
    jr nc, jr_0c5_515f                            ; $515c: $30 $01

    ld b, b                                       ; $515e: $40

jr_0c5_515f:
    cp a                                          ; $515f: $bf
    ldh a, [rTMA]                                 ; $5160: $f0 $06

jr_0c5_5162:
    ld [$1b86], sp                                ; $5162: $08 $86 $1b
    jr jr_0c5_5171                                ; $5165: $18 $0a

    inc d                                         ; $5167: $14
    ld [$ef50], sp                                ; $5168: $08 $50 $ef
    add d                                         ; $516b: $82
    ld a, a                                       ; $516c: $7f
    ld h, c                                       ; $516d: $61
    jr nz, @+$6e                                  ; $516e: $20 $6c

    inc bc                                        ; $5170: $03

jr_0c5_5171:
    jr nz, @+$1a                                  ; $5171: $20 $18

    ld [bc], a                                    ; $5173: $02
    rst $38                                       ; $5174: $ff
    adc b                                         ; $5175: $88
    ld [hl], a                                    ; $5176: $77
    ld e, [hl]                                    ; $5177: $5e
    ld a, [de]                                    ; $5178: $1a
    ld l, l                                       ; $5179: $6d
    add b                                         ; $517a: $80
    ld h, $11                                     ; $517b: $26 $11
    adc d                                         ; $517d: $8a
    jr z, @-$7e                                   ; $517e: $28 $80

    ld c, [hl]                                    ; $5180: $4e
    ld [bc], a                                    ; $5181: $02
    ld d, d                                       ; $5182: $52
    ld [$8602], sp                                ; $5183: $08 $02 $86
    add hl, bc                                    ; $5186: $09
    sub a                                         ; $5187: $97
    ld a, d                                       ; $5188: $7a
    ld bc, $be41                                  ; $5189: $01 $41 $be
    ld c, h                                       ; $518c: $4c
    ld [de], a                                    ; $518d: $12
    ld a, a                                       ; $518e: $7f
    ld d, h                                       ; $518f: $54
    ld a, [de]                                    ; $5190: $1a
    ld d, d                                       ; $5191: $52
    ld a, [bc]                                    ; $5192: $0a
    call nc, Call_0c5_4310                        ; $5193: $d4 $10 $43
    ei                                            ; $5196: $fb
    jr nc, jr_0c5_519a                            ; $5197: $30 $01

    ei                                            ; $5199: $fb

jr_0c5_519a:
    add b                                         ; $519a: $80
    ld a, a                                       ; $519b: $7f
    ld [$027c], sp                                ; $519c: $08 $7c $02
    sbc h                                         ; $519f: $9c
    ld a, [bc]                                    ; $51a0: $0a
    sbc e                                         ; $51a1: $9b
    add h                                         ; $51a2: $84
    ld [$fe21], sp                                ; $51a3: $08 $21 $fe
    ld a, [c]                                     ; $51a6: $f2
    ld [$18f4], sp                                ; $51a7: $08 $f4 $18
    ld [bc], a                                    ; $51aa: $02
    or d                                          ; $51ab: $b2
    ld [de], a                                    ; $51ac: $12
    adc d                                         ; $51ad: $8a
    ld [$b4ff], sp                                ; $51ae: $08 $ff $b4
    add hl, bc                                    ; $51b1: $09
    adc b                                         ; $51b2: $88
    ld a, [de]                                    ; $51b3: $1a
    inc l                                         ; $51b4: $2c
    ld [$182a], sp                                ; $51b5: $08 $2a $18
    ld a, [de]                                    ; $51b8: $1a
    ld [$1ad2], sp                                ; $51b9: $08 $d2 $1a
    inc a                                         ; $51bc: $3c
    ld bc, $03fc                                  ; $51bd: $01 $fc $03
    rlc d                                         ; $51c0: $cb $02
    add hl, bc                                    ; $51c2: $09
    jp nz, Jump_000_240a                          ; $51c3: $c2 $0a $24

    db $db                                        ; $51c6: $db
    cp d                                          ; $51c7: $ba
    ld a, [bc]                                    ; $51c8: $0a
    ld [$0114], sp                                ; $51c9: $08 $14 $01
    ld a, $0c                                     ; $51cc: $3e $0c
    cpl                                           ; $51ce: $2f
    add l                                         ; $51cf: $85
    ld a, [hl]                                    ; $51d0: $7e
    ret nz                                        ; $51d1: $c0

    ld a, [de]                                    ; $51d2: $1a
    add d                                         ; $51d3: $82
    ld c, $00                                     ; $51d4: $0e $00
    sbc $0b                                       ; $51d6: $de $0b
    ret c                                         ; $51d8: $d8

    add hl, bc                                    ; $51d9: $09
    call c, $7f1a                                 ; $51da: $dc $1a $7f
    inc b                                         ; $51dd: $04
    ld e, h                                       ; $51de: $5c
    ld de, $11e0                                  ; $51df: $11 $e0 $11
    ld [bc], a                                    ; $51e2: $02

jr_0c5_51e3:
    ld bc, $09fe                                  ; $51e3: $01 $fe $09
    jr c, @+$0b                                   ; $51e6: $38 $09

    ld l, h                                       ; $51e8: $6c
    add hl, de                                    ; $51e9: $19
    ld l, b                                       ; $51ea: $68
    inc c                                         ; $51eb: $0c
    ld h, $12                                     ; $51ec: $26 $12
    db $ed                                        ; $51ee: $ed
    or [hl]                                       ; $51ef: $b6
    ld [$fa05], sp                                ; $51f0: $08 $05 $fa
    db $fc                                        ; $51f3: $fc
    ld bc, $2342                                  ; $51f4: $01 $42 $23
    ld c, b                                       ; $51f7: $48
    inc e                                         ; $51f8: $1c
    rst $30                                       ; $51f9: $f7
    inc h                                         ; $51fa: $24
    db $db                                        ; $51fb: $db
    jp nc, $980a                                  ; $51fc: $d2 $0a $98

    inc c                                         ; $51ff: $0c
    xor d                                         ; $5200: $aa

Call_0c5_5201:
    inc c                                         ; $5201: $0c

Jump_0c5_5202:
    jr nz, jr_0c5_51e3                            ; $5202: $20 $df

    ld e, [hl]                                    ; $5204: $5e
    ld bc, $0430                                  ; $5205: $01 $30 $04
    ld de, $0554                                  ; $5208: $11 $54 $05
    ld l, b                                       ; $520b: $68
    ld a, [bc]                                    ; $520c: $0a
    ld c, [hl]                                    ; $520d: $4e
    dec bc                                        ; $520e: $0b
    ldh [rSC], a                                  ; $520f: $e0 $02
    or a                                          ; $5211: $b7
    adc e                                         ; $5212: $8b
    adc d                                         ; $5213: $8a
    ld a, [bc]                                    ; $5214: $0a
    jr nz, @-$1f                                  ; $5215: $20 $df

    inc b                                         ; $5217: $04
    jr c, @+$15                                   ; $5218: $38 $13

    ld [$14b2], sp                                ; $521a: $08 $b2 $14
    ld c, h                                       ; $521d: $4c
    add hl, bc                                    ; $521e: $09
    cp a                                          ; $521f: $bf
    jr jr_0c5_5226                                ; $5220: $18 $04

    xor $60                                       ; $5222: $ee $60
    inc c                                         ; $5224: $0c
    inc d                                         ; $5225: $14

jr_0c5_5226:
    ld hl, $20cc                                  ; $5226: $21 $cc $20
    ld [bc], a                                    ; $5229: $02
    ld a, [bc]                                    ; $522a: $0a
    jp c, $a609                                   ; $522b: $da $09 $a6

    dec de                                        ; $522e: $1b
    cp [hl]                                       ; $522f: $be
    add $09                                       ; $5230: $c6 $09
    ld bc, $04e4                                  ; $5232: $01 $e4 $04
    ld c, h                                       ; $5235: $4c
    ld a, [bc]                                    ; $5236: $0a
    add $0a                                       ; $5237: $c6 $0a
    ld [hl], h                                    ; $5239: $74
    dec bc                                        ; $523a: $0b
    ld b, h                                       ; $523b: $44

jr_0c5_523c:
    ld [bc], a                                    ; $523c: $02
    rst $18                                       ; $523d: $df
    ld c, $08                                     ; $523e: $0e $08
    rst $30                                       ; $5240: $f7
    add l                                         ; $5241: $85
    ld a, d                                       ; $5242: $7a
    sub b                                         ; $5243: $90
    dec hl                                        ; $5244: $2b
    jr c, @+$1c                                   ; $5245: $38 $1a

    sbc b                                         ; $5247: $98
    dec bc                                        ; $5248: $0b
    ld de, $ee70                                  ; $5249: $11 $70 $ee
    inc a                                         ; $524c: $3c
    ld bc, $214c                                  ; $524d: $01 $4c $21
    xor h                                         ; $5250: $ac
    dec bc                                        ; $5251: $0b
    inc d                                         ; $5252: $14
    db $eb                                        ; $5253: $eb
    ld b, d                                       ; $5254: $42
    cp l                                          ; $5255: $bd
    adc e                                         ; $5256: $8b
    ret nc                                        ; $5257: $d0

    dec de                                        ; $5258: $1b
    ld [bc], a                                    ; $5259: $02
    db $fd                                        ; $525a: $fd
    adc b                                         ; $525b: $88
    jr nz, jr_0c5_526f                            ; $525c: $20 $11

    ld [de], a                                    ; $525e: $12
    ld a, [$cc23]                                 ; $525f: $fa $23 $cc

jr_0c5_5262:
    ld a, [bc]                                    ; $5262: $0a
    ld a, h                                       ; $5263: $7c
    jr nz, jr_0c5_5262                            ; $5264: $20 $fc

jr_0c5_5266:
    dec b                                         ; $5266: $05
    and b                                         ; $5267: $a0
    dec bc                                        ; $5268: $0b
    db $ec                                        ; $5269: $ec
    ld bc, $13f6                                  ; $526a: $01 $f6 $13
    ld h, h                                       ; $526d: $64
    ld [hl+], a                                   ; $526e: $22

jr_0c5_526f:
    ld a, a                                       ; $526f: $7f
    db $10                                        ; $5270: $10
    xor e                                         ; $5271: $ab
    and $02                                       ; $5272: $e6 $02
    jr nz, jr_0c5_523c                            ; $5274: $20 $c6

    ld de, $4641                                  ; $5276: $11 $41 $46
    inc de                                        ; $5279: $13
    ld de, $1564                                  ; $527a: $11 $64 $15
    and [hl]                                      ; $527d: $a6
    dec bc                                        ; $527e: $0b
    rla                                           ; $527f: $17
    dec b                                         ; $5280: $05
    ei                                            ; $5281: $fb
    inc h                                         ; $5282: $24
    cp b                                          ; $5283: $b8
    ld de, $5e10                                  ; $5284: $11 $10 $5e
    ld [bc], a                                    ; $5287: $02
    sbc b                                         ; $5288: $98
    dec c                                         ; $5289: $0d
    ld c, d                                       ; $528a: $4a
    inc c                                         ; $528b: $0c
    dec h                                         ; $528c: $25
    jr z, jr_0c5_5266                             ; $528d: $28 $d7

    ld [bc], a                                    ; $528f: $02
    dec de                                        ; $5290: $1b
    add h                                         ; $5291: $84
    ld a, e                                       ; $5292: $7b
    ld a, [$2108]                                 ; $5293: $fa $08 $21
    or h                                          ; $5296: $b4
    ld hl, $26e0                                  ; $5297: $21 $e0 $26
    ld [de], a                                    ; $529a: $12
    adc [hl]                                      ; $529b: $8e
    ld de, $0b70                                  ; $529c: $11 $70 $0b
    jr @+$01                                      ; $529f: $18 $ff

    ld b, d                                       ; $52a1: $42
    cp a                                          ; $52a2: $bf
    ld [$f71c], sp                                ; $52a3: $08 $1c $f7
    add b                                         ; $52a6: $80
    ld a, a                                       ; $52a7: $7f
    sbc h                                         ; $52a8: $9c
    ld a, [bc]                                    ; $52a9: $0a
    ld b, b                                       ; $52aa: $40
    inc c                                         ; $52ab: $0c
    halt                                          ; $52ac: $76
    inc c                                         ; $52ad: $0c
    adc d                                         ; $52ae: $8a
    ld [hl], a                                    ; $52af: $77
    cp h                                          ; $52b0: $bc
    ld d, [hl]                                    ; $52b1: $56
    dec bc                                        ; $52b2: $0b
    add c                                         ; $52b3: $81
    sbc d                                         ; $52b4: $9a
    ld [$05a4], sp                                ; $52b5: $08 $a4 $05
    ld e, $00                                     ; $52b8: $1e $00
    xor h                                         ; $52ba: $ac
    ld a, [bc]                                    ; $52bb: $0a
    cp a                                          ; $52bc: $bf
    ld b, b                                       ; $52bd: $40
    inc d                                         ; $52be: $14
    rst $38                                       ; $52bf: $ff
    add hl, bc                                    ; $52c0: $09
    or $08                                        ; $52c1: $f6 $08
    dec de                                        ; $52c3: $1b
    ld c, b                                       ; $52c4: $48
    add sp, $04                                   ; $52c5: $e8 $04
    add b                                         ; $52c7: $80
    ld a, a                                       ; $52c8: $7f
    rst $28                                       ; $52c9: $ef
    xor b                                         ; $52ca: $a8
    inc bc                                        ; $52cb: $03
    add $12                                       ; $52cc: $c6 $12
    ret c                                         ; $52ce: $d8

    ld bc, $76bf                                  ; $52cf: $01 $bf $76
    nop                                           ; $52d2: $00
    ret nz                                        ; $52d3: $c0

    db $10                                        ; $52d4: $10
    ld a, [bc]                                    ; $52d5: $0a
    ld [$0b60], sp                                ; $52d6: $08 $60 $0b
    cp e                                          ; $52d9: $bb
    ld c, b                                       ; $52da: $48
    inc bc                                        ; $52db: $03
    or $b0                                        ; $52dc: $f6 $b0
    dec de                                        ; $52de: $1b
    adc h                                         ; $52df: $8c
    jr jr_0c5_52f8                                ; $52e0: $18 $16

    dec de                                        ; $52e2: $1b
    ld hl, $06d0                                  ; $52e3: $21 $d0 $06
    jp z, $0d19                                   ; $52e6: $ca $19 $0d

    db $10                                        ; $52e9: $10
    rst $28                                       ; $52ea: $ef
    ld [$60f7], sp                                ; $52eb: $08 $f7 $60

Jump_0c5_52ee:
    inc c                                         ; $52ee: $0c
    db $ec                                        ; $52ef: $ec
    inc e                                         ; $52f0: $1c
    add d                                         ; $52f1: $82
    ld c, $14                                     ; $52f2: $0e $14
    adc h                                         ; $52f4: $8c
    ld h, $1c                                     ; $52f5: $26 $1c
    nop                                           ; $52f7: $00

jr_0c5_52f8:
    rst $38                                       ; $52f8: $ff
    ld sp, $0a88                                  ; $52f9: $31 $88 $0a
    ld c, $02                                     ; $52fc: $0e $02
    add b                                         ; $52fe: $80
    ld a, a                                       ; $52ff: $7f
    ld l, b                                       ; $5300: $68
    ld c, b                                       ; $5301: $48
    or d                                          ; $5302: $b2
    ld [bc], a                                    ; $5303: $02
    ld d, b                                       ; $5304: $50
    dec de                                        ; $5305: $1b
    and h                                         ; $5306: $a4
    ld [hl], $06                                  ; $5307: $36 $06
    nop                                           ; $5309: $00
    rst $38                                       ; $530a: $ff
    adc b                                         ; $530b: $88
    cp $16                                        ; $530c: $fe $16
    ld [$0b38], sp                                ; $530e: $08 $38 $0b
    cp d                                          ; $5311: $ba
    ld de, $0686                                  ; $5312: $11 $86 $06
    inc h                                         ; $5315: $24
    dec b                                         ; $5316: $05
    ld h, $0d                                     ; $5317: $26 $0d
    ld e, b                                       ; $5319: $58
    dec bc                                        ; $531a: $0b
    add b                                         ; $531b: $80
    db $d3                                        ; $531c: $d3
    inc h                                         ; $531d: $24
    inc bc                                        ; $531e: $03
    ld l, h                                       ; $531f: $6c
    ld a, [de]                                    ; $5320: $1a
    ld b, b                                       ; $5321: $40
    ld d, $06                                     ; $5322: $16 $06
    add d                                         ; $5324: $82
    ld a, l                                       ; $5325: $7d
    ld h, b                                       ; $5326: $60
    inc l                                         ; $5327: $2c
    add [hl]                                      ; $5328: $86
    inc c                                         ; $5329: $0c
    ld l, b                                       ; $532a: $68
    jr nz, jr_0c5_534b                            ; $532b: $20 $1e

    ld bc, $0ea6                                  ; $532d: $01 $a6 $0e
    ld b, h                                       ; $5330: $44
    inc l                                         ; $5331: $2c
    inc d                                         ; $5332: $14
    add b                                         ; $5333: $80
    rst $38                                       ; $5334: $ff
    dec b                                         ; $5335: $05
    ret nc                                        ; $5336: $d0

    sub b                                         ; $5337: $90
    inc de                                        ; $5338: $13
    inc h                                         ; $5339: $24
    inc c                                         ; $533a: $0c
    ld bc, $322e                                  ; $533b: $01 $2e $32
    ld b, h                                       ; $533e: $44
    cp a                                          ; $533f: $bf
    ld bc, $79fe                                  ; $5340: $01 $fe $79
    adc b                                         ; $5343: $88
    ld b, d                                       ; $5344: $42
    dec d                                         ; $5345: $15
    adc $0e                                       ; $5346: $ce $0e
    adc [hl]                                      ; $5348: $8e
    ld a, [bc]                                    ; $5349: $0a
    and h                                         ; $534a: $a4

jr_0c5_534b:
    ld e, $44                                     ; $534b: $1e $44
    cp e                                          ; $534d: $bb
    ld [hl], d                                    ; $534e: $72
    inc bc                                        ; $534f: $03

jr_0c5_5350:
    db $fd                                        ; $5350: $fd
    jp z, Jump_0c5_5406                           ; $5351: $ca $06 $54

    ld [$13ba], sp                                ; $5354: $08 $ba $13
    jp nc, Jump_0c5_5420                          ; $5357: $d2 $20 $54

    inc b                                         ; $535a: $04
    ldh a, [rTMA]                                 ; $535b: $f0 $06
    sub b                                         ; $535d: $90
    or [hl]                                       ; $535e: $b6
    ld [bc], a                                    ; $535f: $02
    call c, Call_000_1c32                         ; $5360: $dc $32 $1c
    ld a, [c]                                     ; $5363: $f2
    inc bc                                        ; $5364: $03
    cp a                                          ; $5365: $bf
    ret nc                                        ; $5366: $d0

    ld c, $02                                     ; $5367: $0e $02
    dec de                                        ; $5369: $1b
    cp h                                          ; $536a: $bc
    dec c                                         ; $536b: $0d
    ld b, c                                       ; $536c: $41
    cp $f1                                        ; $536d: $fe $f1
    sbc h                                         ; $536f: $9c
    inc de                                        ; $5370: $13
    ld a, [de]                                    ; $5371: $1a
    dec b                                         ; $5372: $05
    db $e4                                        ; $5373: $e4
    ld [bc], a                                    ; $5374: $02
    inc e                                         ; $5375: $1c
    rlca                                          ; $5376: $07
    jr z, jr_0c5_5350                             ; $5377: $28 $d7

    ld [hl+], a                                   ; $5379: $22
    ld [hl+], a                                   ; $537a: $22
    rlca                                          ; $537b: $07
    rst $38                                       ; $537c: $ff
    ld d, b                                       ; $537d: $50
    inc c                                         ; $537e: $0c
    inc d                                         ; $537f: $14
    ld [$7c50], sp                                ; $5380: $08 $50 $7c
    add d                                         ; $5383: $82
    inc de                                        ; $5384: $13
    cp [hl]                                       ; $5385: $be
    inc hl                                        ; $5386: $23
    jp z, Jump_0c5_6e0d                           ; $5387: $ca $0d $6e

    add hl, bc                                    ; $538a: $09
    ld l, $1c                                     ; $538b: $2e $1c
    db $e4                                        ; $538d: $e4
    ld l, h                                       ; $538e: $6c
    dec de                                        ; $538f: $1b
    halt                                          ; $5390: $76
    dec de                                        ; $5391: $1b
    inc b                                         ; $5392: $04
    add hl, bc                                    ; $5393: $09
    sub b                                         ; $5394: $90
    ld l, a                                       ; $5395: $6f
    nop                                           ; $5396: $00
    inc c                                         ; $5397: $0c
    and b                                         ; $5398: $a0
    ld e, a                                       ; $5399: $5f
    ld [hl], l                                    ; $539a: $75
    adc c                                         ; $539b: $89
    sub b                                         ; $539c: $90
    ld bc, $0c0a                                  ; $539d: $01 $0a $0c
    add [hl]                                      ; $53a0: $86
    ld [$3e01], sp                                ; $53a1: $08 $01 $3e
    dec d                                         ; $53a4: $15
    inc d                                         ; $53a5: $14
    ld h, d                                       ; $53a6: $62
    dec d                                         ; $53a7: $15

jr_0c5_53a8:
    rst $28                                       ; $53a8: $ef
    sub h                                         ; $53a9: $94
    inc e                                         ; $53aa: $1c
    ld d, h                                       ; $53ab: $54
    inc bc                                        ; $53ac: $03
    ld a, [$2023]                                 ; $53ad: $fa $23 $20
    xor h                                         ; $53b0: $ac
    rlca                                          ; $53b1: $07
    inc l                                         ; $53b2: $2c
    dec c                                         ; $53b3: $0d
    ld a, h                                       ; $53b4: $7c
    ld [de], a                                    ; $53b5: $12
    ld c, $0b                                     ; $53b6: $0e $0b
    rst $18                                       ; $53b8: $df
    sub b                                         ; $53b9: $90
    ld d, e                                       ; $53ba: $53
    ld a, [hl+]                                   ; $53bb: $2a
    inc c                                         ; $53bc: $0c
    ld bc, $14a2                                  ; $53bd: $01 $a2 $14
    ld h, d                                       ; $53c0: $62
    ld c, $e4                                     ; $53c1: $0e $e4
    ld hl, $07a0                                  ; $53c3: $21 $a0 $07
    and d                                         ; $53c6: $a2
    dec c                                         ; $53c7: $0d
    ld a, c                                       ; $53c8: $79
    ld b, d                                       ; $53c9: $42
    ldh a, [rNR43]                                ; $53ca: $f0 $22
    inc e                                         ; $53cc: $1c
    ld d, $40                                     ; $53cd: $16 $40
    ld d, h                                       ; $53cf: $54
    add sp, $1c                                   ; $53d0: $e8 $1c
    ld b, b                                       ; $53d2: $40
    cp a                                          ; $53d3: $bf
    jp z, $f90c                                   ; $53d4: $ca $0c $f9

    db $fc                                        ; $53d7: $fc
    rrca                                          ; $53d8: $0f
    call c, Call_0c5_6235                         ; $53d9: $dc $35 $62
    ld [hl+], a                                   ; $53dc: $22
    ld [c], a                                     ; $53dd: $e2
    rrca                                          ; $53de: $0f
    ld c, $0d                                     ; $53df: $0e $0d
    inc h                                         ; $53e1: $24

jr_0c5_53e2:
    db $db                                        ; $53e2: $db
    jp nc, $a50e                                  ; $53e3: $d2 $0e $a5

    ldh [$0b], a                                  ; $53e6: $e0 $0b
    ld bc, $07be                                  ; $53e8: $01 $be $07
    add l                                         ; $53eb: $85
    ld a, [hl]                                    ; $53ec: $7e
    halt                                          ; $53ed: $76
    inc e                                         ; $53ee: $1c
    ld b, c                                       ; $53ef: $41
    nop                                           ; $53f0: $00
    dec d                                         ; $53f1: $15
    ldh [$a4], a                                  ; $53f2: $e0 $a4
    inc e                                         ; $53f4: $1c
    ld h, b                                       ; $53f5: $60
    ld l, $06                                     ; $53f6: $2e $06
    ld d, $7f                                     ; $53f8: $16 $7f
    ld [hl], b                                    ; $53fa: $70
    add hl, bc                                    ; $53fb: $09
    db $ec                                        ; $53fc: $ec
    inc bc                                        ; $53fd: $03
    nop                                           ; $53fe: $00
    ld b, l                                       ; $53ff: $45
    dec d                                         ; $5400: $15
    add d                                         ; $5401: $82
    ld a, [hl+]                                   ; $5402: $2a
    rst $00                                       ; $5403: $c7
    ccf                                           ; $5404: $3f
    sub e                                         ; $5405: $93

Jump_0c5_5406:
    cpl                                           ; $5406: $2f
    nop                                           ; $5407: $00
    rst $00                                       ; $5408: $c7
    ccf                                           ; $5409: $3f
    ld c, e                                       ; $540a: $4b
    ccf                                           ; $540b: $3f
    add l                                         ; $540c: $85
    ld a, a                                       ; $540d: $7f
    ld c, e                                       ; $540e: $4b
    ccf                                           ; $540f: $3f
    nop                                           ; $5410: $00
    ld d, b                                       ; $5411: $50
    ld e, a                                       ; $5412: $5f
    and b                                         ; $5413: $a0
    xor d                                         ; $5414: $aa
    ldh a, [$fd]                                  ; $5415: $f0 $fd
    db $f4                                        ; $5417: $f4
    ei                                            ; $5418: $fb
    inc b                                         ; $5419: $04
    ldh a, [rIE]                                  ; $541a: $f0 $ff
    ldh a, [rIE]                                  ; $541c: $f0 $ff
    ld hl, sp+$02                                 ; $541e: $f8 $02

Jump_0c5_5420:
    nop                                           ; $5420: $00
    jr z, @-$37                                   ; $5421: $28 $c7

jr_0c5_5423:
    nop                                           ; $5423: $00
    jr z, jr_0c5_53a8                             ; $5424: $28 $82

    ld bc, $7845                                  ; $5426: $01 $45 $78
    jp nz, $c729                                  ; $5429: $c2 $29 $c7

    nop                                           ; $542c: $00
    sub l                                         ; $542d: $95
    db $eb                                        ; $542e: $eb
    ld e, b                                       ; $542f: $58
    rst $38                                       ; $5430: $ff
    rlca                                          ; $5431: $07
    rst $38                                       ; $5432: $ff
    ld b, b                                       ; $5433: $40
    ld d, l                                       ; $5434: $55
    nop                                           ; $5435: $00
    jr nz, jr_0c5_53e2                            ; $5436: $20 $aa

    ld b, b                                       ; $5438: $40
    ld d, l                                       ; $5439: $55
    ld hl, $f0aa                                  ; $543a: $21 $aa $f0
    rst $38                                       ; $543d: $ff
    nop                                           ; $543e: $00
    add sp, -$01                                  ; $543f: $e8 $ff
    ret nc                                        ; $5441: $d0

    rst $38                                       ; $5442: $ff
    and b                                         ; $5443: $a0
    rst $38                                       ; $5444: $ff
    nop                                           ; $5445: $00
    ld b, l                                       ; $5446: $45
    jr nz, @+$2a                                  ; $5447: $20 $28

    add d                                         ; $5449: $82
    inc b                                         ; $544a: $04
    nop                                           ; $544b: $00
    jp nz, $cf20                                  ; $544c: $c2 $20 $cf

    add hl, sp                                    ; $544f: $39
    rst $00                                       ; $5450: $c7
    inc b                                         ; $5451: $04
    jr nz, jr_0c5_5423                            ; $5452: $20 $cf

    cp c                                          ; $5454: $b9
    ld b, a                                       ; $5455: $47
    ld d, b                                       ; $5456: $50
    jr nz, jr_0c5_5459                            ; $5457: $20 $00

jr_0c5_5459:
    ld [hl], d                                    ; $5459: $72
    ld a, l                                       ; $545a: $7d
    ld d, b                                       ; $545b: $50
    jr nz, jr_0c5_547e                            ; $545c: $20 $20

    nop                                           ; $545e: $00
    ld [hl], h                                    ; $545f: $74
    ld b, h                                       ; $5460: $44
    nop                                           ; $5461: $00
    ld [hl], b                                    ; $5462: $70
    rst $38                                       ; $5463: $ff
    db $10                                        ; $5464: $10
    ld b, l                                       ; $5465: $45
    nop                                           ; $5466: $00
    ld [hl+], a                                   ; $5467: $22
    adc d                                         ; $5468: $8a
    ld [hl-], a                                   ; $5469: $32
    rst $08                                       ; $546a: $cf
    sub a                                         ; $546b: $97
    rst $38                                       ; $546c: $ff
    ld c, $ff                                     ; $546d: $0e $ff
    inc b                                         ; $546f: $04
    jr nz, @+$01                                  ; $5470: $20 $ff

    inc b                                         ; $5472: $04
    rst $38                                       ; $5473: $ff
    ld [bc], a                                    ; $5474: $02
    ld b, b                                       ; $5475: $40
    nop                                           ; $5476: $00
    add b                                         ; $5477: $80
    xor d                                         ; $5478: $aa
    nop                                           ; $5479: $00
    ret nc                                        ; $547a: $d0

    rst $38                                       ; $547b: $ff
    add b                                         ; $547c: $80
    rst $38                                       ; $547d: $ff

jr_0c5_547e:
    ld c, b                                       ; $547e: $48
    rst $38                                       ; $547f: $ff
    nop                                           ; $5480: $00
    rst $38                                       ; $5481: $ff
    nop                                           ; $5482: $00
    ld b, b                                       ; $5483: $40
    rst $38                                       ; $5484: $ff
    inc b                                         ; $5485: $04
    ei                                            ; $5486: $fb
    dec b                                         ; $5487: $05
    dec d                                         ; $5488: $15
    add b                                         ; $5489: $80
    ld a, [hl+]                                   ; $548a: $2a
    nop                                           ; $548b: $00
    adc a                                         ; $548c: $8f
    ccf                                           ; $548d: $3f
    push bc                                       ; $548e: $c5
    ccf                                           ; $548f: $3f
    adc a                                         ; $5490: $8f
    ccf                                           ; $5491: $3f
    rst $10                                       ; $5492: $d7
    ccf                                           ; $5493: $3f
    nop                                           ; $5494: $00
    rst $08                                       ; $5495: $cf
    ccf                                           ; $5496: $3f
    sub a                                         ; $5497: $97
    ld a, a                                       ; $5498: $7f
    ld d, h                                       ; $5499: $54
    ld d, l                                       ; $549a: $55
    xor a                                         ; $549b: $af
    xor a                                         ; $549c: $af
    db $10                                        ; $549d: $10
    ld d, l                                       ; $549e: $55
    ld d, l                                       ; $549f: $55
    rst $38                                       ; $54a0: $ff
    ld bc, $0130                                  ; $54a1: $01 $30 $01
    ld d, h                                       ; $54a4: $54
    nop                                           ; $54a5: $00
    ld a, [$0100]                                 ; $54a6: $fa $00 $01
    ld a, [hl]                                    ; $54a9: $7e
    ld hl, $01fe                                  ; $54aa: $21 $fe $01
    cp $09                                        ; $54ad: $fe $09
    or $08                                        ; $54af: $f6 $08
    ld hl, $01de                                  ; $54b1: $21 $de $01
    cp $a4                                        ; $54b4: $fe $a4
    ld [$7f05], sp                                ; $54b6: $08 $05 $7f
    ld c, a                                       ; $54b9: $4f
    add b                                         ; $54ba: $80
    inc b                                         ; $54bb: $04
    nop                                           ; $54bc: $00
    rst $08                                       ; $54bd: $cf

jr_0c5_54be:
    ccf                                           ; $54be: $3f
    rla                                           ; $54bf: $17
    ld a, a                                       ; $54c0: $7f
    adc a                                         ; $54c1: $8f
    ld a, a                                       ; $54c2: $7f
    ld hl, sp+$1d                                 ; $54c3: $f8 $1d
    rst $38                                       ; $54c5: $ff
    ld sp, hl                                     ; $54c6: $f9
    cp $a8                                        ; $54c7: $fe $a8
    ld [$08ac], sp                                ; $54c9: $08 $ac $08
    ld a, [bc]                                    ; $54cc: $0a
    ld [$6649], sp                                ; $54cd: $08 $49 $66
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    rst $38                                       ; $54d3: $ff
    ld bc, $48ff                                  ; $54d4: $01 $ff $48
    rst $30                                       ; $54d7: $f7
    ld bc, $01fe                                  ; $54d8: $01 $fe $01
    nop                                           ; $54db: $00
    rst $38                                       ; $54dc: $ff
    ld de, $08ef                                  ; $54dd: $11 $ef $08
    rst $30                                       ; $54e0: $f7
    add d                                         ; $54e1: $82
    ld l, d                                       ; $54e2: $6a
    nop                                           ; $54e3: $00
    db $10                                        ; $54e4: $10

jr_0c5_54e5:
    ld [de], a                                    ; $54e5: $12
    db $ed                                        ; $54e6: $ed
    nop                                           ; $54e7: $00
    ld d, $10                                     ; $54e8: $16 $10
    jr nz, @-$1f                                  ; $54ea: $20 $df

    inc h                                         ; $54ec: $24
    sla b                                         ; $54ed: $cb $20
    add hl, sp                                    ; $54ef: $39
    rst $00                                       ; $54f0: $c7
    inc b                                         ; $54f1: $04
    ld [$cb34], sp                                ; $54f2: $08 $34 $cb
    jr c, jr_0c5_54be                             ; $54f5: $38 $c7

    inc [hl]                                      ; $54f7: $34
    jr nz, jr_0c5_54e5                            ; $54f8: $20 $eb

    ld e, h                                       ; $54fa: $5c

jr_0c5_54fb:
    and $00                                       ; $54fb: $e6 $00
    ld [hl], b                                    ; $54fd: $70
    rst $38                                       ; $54fe: $ff
    ld a, [c]                                     ; $54ff: $f2
    db $fd                                        ; $5500: $fd
    ld [hl], b                                    ; $5501: $70
    add d                                         ; $5502: $82
    xor $00                                       ; $5503: $ee $00
    ld a, b                                       ; $5505: $78
    rst $38                                       ; $5506: $ff
    ld a, [c]                                     ; $5507: $f2
    rst $38                                       ; $5508: $ff
    ld h, b                                       ; $5509: $60
    sub [hl]                                      ; $550a: $96
    nop                                           ; $550b: $00
    adc b                                         ; $550c: $88
    ld b, b                                       ; $550d: $40
    ld a, a                                       ; $550e: $7f
    inc l                                         ; $550f: $2c
    ld [$ff00], sp                                ; $5510: $08 $00 $ff
    ld [$41f7], sp                                ; $5513: $08 $f7 $41
    cp [hl]                                       ; $5516: $be
    adc e                                         ; $5517: $8b
    ld [hl], $08                                  ; $5518: $36 $08
    jr nz, jr_0c5_54fb                            ; $551a: $20 $df

    ld [bc], a                                    ; $551c: $02
    cp d                                          ; $551d: $ba
    nop                                           ; $551e: $00
    ld b, c                                       ; $551f: $41
    cp h                                          ; $5520: $bc
    nop                                           ; $5521: $00
    ld e, b                                       ; $5522: $58
    nop                                           ; $5523: $00
    ld b, b                                       ; $5524: $40
    cp $a4                                        ; $5525: $fe $a4
    ld [$7f8f], sp                                ; $5527: $08 $8f $7f
    rst $18                                       ; $552a: $df
    rst $38                                       ; $552b: $ff
    ld l, a                                       ; $552c: $6f
    rst $38                                       ; $552d: $ff
    ld d, b                                       ; $552e: $50
    sbc a                                         ; $552f: $9f
    call nz, Call_000_1200                        ; $5530: $c4 $00 $12
    xor c                                         ; $5533: $a9

jr_0c5_5534:
    jr nc, jr_0c5_5534                            ; $5534: $30 $fe

    rst $38                                       ; $5536: $ff
    db $f4                                        ; $5537: $f4
    rst $38                                       ; $5538: $ff
    ld h, b                                       ; $5539: $60
    adc d                                         ; $553a: $8a
    db $e4                                        ; $553b: $e4
    nop                                           ; $553c: $00
    xor b                                         ; $553d: $a8
    ld [$fe81], sp                                ; $553e: $08 $81 $fe
    ld d, c                                       ; $5541: $51
    cp $81                                        ; $5542: $fe $81

jr_0c5_5544:
    jr jr_0c5_5544                                ; $5544: $18 $fe

    dec b                                         ; $5546: $05
    ld a, [$08b0]                                 ; $5547: $fa $b0 $08
    ld l, $08                                     ; $554a: $2e $08
    rra                                           ; $554c: $1f
    rst $38                                       ; $554d: $ff
    adc a                                         ; $554e: $8f
    add d                                         ; $554f: $82
    pop de                                        ; $5550: $d1
    nop                                           ; $5551: $00
    ccf                                           ; $5552: $3f
    rst $38                                       ; $5553: $ff
    sub d                                         ; $5554: $92
    rst $38                                       ; $5555: $ff
    dec h                                         ; $5556: $25
    ld d, h                                       ; $5557: $54
    ld de, $a2fc                                  ; $5558: $11 $fc $a2
    ld e, d                                       ; $555b: $5a
    ld bc, $30fa                                  ; $555c: $01 $fa $30
    nop                                           ; $555f: $00
    xor c                                         ; $5560: $a9
    rst $38                                       ; $5561: $ff
    db $10                                        ; $5562: $10
    ld b, $01                                     ; $5563: $06 $01
    ld [bc], a                                    ; $5565: $02
    ld bc, $80fd                                  ; $5566: $01 $fd $80
    ld a, a                                       ; $5569: $7f
    db $10                                        ; $556a: $10
    rst $28                                       ; $556b: $ef
    ld b, d                                       ; $556c: $42
    cp a                                          ; $556d: $bf
    and d                                         ; $556e: $a2
    ld [$0432], sp                                ; $556f: $08 $32 $04
    ei                                            ; $5572: $fb
    ld h, [hl]                                    ; $5573: $66
    ld [$011a], sp                                ; $5574: $08 $1a $01
    cp a                                          ; $5577: $bf
    ld [bc], a                                    ; $5578: $02
    ld l, h                                       ; $5579: $6c
    nop                                           ; $557a: $00
    ld b, b                                       ; $557b: $40
    add c                                         ; $557c: $81
    inc d                                         ; $557d: $14
    nop                                           ; $557e: $00
    inc hl                                        ; $557f: $23
    rst $38                                       ; $5580: $ff
    ld [$21ff], sp                                ; $5581: $08 $ff $21
    rst $18                                       ; $5584: $df
    inc d                                         ; $5585: $14
    db $10                                        ; $5586: $10
    adc b                                         ; $5587: $88

jr_0c5_5588:
    ld a, [hl]                                    ; $5588: $7e
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    rst $38                                       ; $558b: $ff
    jp z, $0148                                   ; $558c: $ca $48 $01

    nop                                           ; $558f: $00
    rst $38                                       ; $5590: $ff
    ld hl, $de61                                  ; $5591: $21 $61 $de
    ret nc                                        ; $5594: $d0

    ld [$083e], sp                                ; $5595: $08 $3e $08
    nop                                           ; $5598: $00
    rst $38                                       ; $5599: $ff
    jr z, @-$07                                   ; $559a: $28 $f7

    sbc b                                         ; $559c: $98
    ld [$a8e5], sp                                ; $559d: $08 $e5 $a8
    ld [$00b4], sp                                ; $55a0: $08 $b4 $00
    ld d, [hl]                                    ; $55a3: $56
    ld bc, $ef90                                  ; $55a4: $01 $90 $ef
    db $ec                                        ; $55a7: $ec
    db $10                                        ; $55a8: $10
    cp $5c                                        ; $55a9: $fe $5c
    ld [$14f1], sp                                ; $55ab: $08 $f1 $14
    ld [$00c2], sp                                ; $55ae: $08 $c2 $00
    cp b                                          ; $55b1: $b8
    nop                                           ; $55b2: $00
    ld d, $09                                     ; $55b3: $16 $09
    ld [$80f7], sp                                ; $55b5: $08 $f7 $80

jr_0c5_55b8:
    call nz, Call_0c5_7810                        ; $55b8: $c4 $10 $78
    ld [$0832], sp                                ; $55bb: $08 $32 $08
    inc c                                         ; $55be: $0c
    ld bc, $0922                                  ; $55bf: $01 $22 $09
    ld e, d                                       ; $55c2: $5a
    add hl, bc                                    ; $55c3: $09
    ld bc, $15fe                                  ; $55c4: $01 $fe $15
    ld a, c                                       ; $55c7: $79
    rst $28                                       ; $55c8: $ef
    ld [hl], b                                    ; $55c9: $70
    nop                                           ; $55ca: $00
    adc [hl]                                      ; $55cb: $8e
    ld bc, $0126                                  ; $55cc: $01 $26 $01
    ld bc, $0800                                  ; $55cf: $01 $00 $08
    ld c, d                                       ; $55d2: $4a
    ld b, $00                                     ; $55d3: $06 $00
    nop                                           ; $55d5: $00
    and d                                         ; $55d6: $a2
    nop                                           ; $55d7: $00
    ld b, l                                       ; $55d8: $45
    nop                                           ; $55d9: $00
    xor e                                         ; $55da: $ab
    nop                                           ; $55db: $00
    rst $18                                       ; $55dc: $df
    db $10                                        ; $55dd: $10
    ld b, b                                       ; $55de: $40
    db $10                                        ; $55df: $10
    ld [de], a                                    ; $55e0: $12
    nop                                           ; $55e1: $00
    ld hl, $5400                                  ; $55e2: $21 $00 $54
    nop                                           ; $55e5: $00
    xor d                                         ; $55e6: $aa
    nop                                           ; $55e7: $00
    ld h, b                                       ; $55e8: $60
    ld a, l                                       ; $55e9: $7d
    jr jr_0c5_55fd                                ; $55ea: $18 $11

    jr nz, @+$0a                                  ; $55ec: $20 $08

    ld c, b                                       ; $55ee: $48
    nop                                           ; $55ef: $00

jr_0c5_55f0:
    ld [bc], a                                    ; $55f0: $02
    nop                                           ; $55f1: $00
    jr z, jr_0c5_5606                             ; $55f2: $28 $12

    nop                                           ; $55f4: $00
    call nc, Call_000_3000                        ; $55f5: $d4 $00 $30
    nop                                           ; $55f8: $00
    add b                                         ; $55f9: $80
    add b                                         ; $55fa: $80
    ld [hl+], a                                   ; $55fb: $22
    db $10                                        ; $55fc: $10

jr_0c5_55fd:
    ld [hl+], a                                   ; $55fd: $22
    ld [bc], a                                    ; $55fe: $02
    nop                                           ; $55ff: $00

jr_0c5_5600:
    ld [$9500], sp                                ; $5600: $08 $00 $95
    nop                                           ; $5603: $00
    ld a, [hl-]                                   ; $5604: $3a
    ld b, b                                       ; $5605: $40

jr_0c5_5606:
    jr jr_0c5_5588                                ; $5606: $18 $80

    inc b                                         ; $5608: $04
    sub b                                         ; $5609: $90
    nop                                           ; $560a: $00
    ld b, d                                       ; $560b: $42
    nop                                           ; $560c: $00
    xor b                                         ; $560d: $a8
    inc [hl]                                      ; $560e: $34
    nop                                           ; $560f: $00
    ei                                            ; $5610: $fb
    nop                                           ; $5611: $00
    ld b, c                                       ; $5612: $41
    cp $4e                                        ; $5613: $fe $4e
    nop                                           ; $5615: $00
    ld [$8080], sp                                ; $5616: $08 $80 $80
    nop                                           ; $5619: $00
    add hl, bc                                    ; $561a: $09
    ld b, d                                       ; $561b: $42
    nop                                           ; $561c: $00
    dec l                                         ; $561d: $2d
    xor a                                         ; $561e: $af
    nop                                           ; $561f: $00
    ld e, d                                       ; $5620: $5a
    ld bc, $5c01                                  ; $5621: $01 $01 $5c
    ld de, $0894                                  ; $5624: $11 $94 $08
    ld b, b                                       ; $5627: $40
    ld a, [bc]                                    ; $5628: $0a
    jr nz, jr_0c5_55b8                            ; $5629: $20 $8d

    ld l, [hl]                                    ; $562b: $6e
    add hl, de                                    ; $562c: $19
    ld [bc], a                                    ; $562d: $02
    rst $38                                       ; $562e: $ff
    jr z, jr_0c5_563d                             ; $562f: $28 $0c

    ld de, $197c                                  ; $5631: $11 $7c $19
    ld b, c                                       ; $5634: $41
    ld a, [de]                                    ; $5635: $1a
    ld [bc], a                                    ; $5636: $02
    ld e, e                                       ; $5637: $5b
    ld d, b                                       ; $5638: $50
    add [hl]                                      ; $5639: $86
    ld de, $3204                                  ; $563a: $11 $04 $32

jr_0c5_563d:
    jr nz, jr_0c5_5657                            ; $563d: $20 $18

    add hl, de                                    ; $563f: $19
    add b                                         ; $5640: $80
    cp $10                                        ; $5641: $fe $10
    db $fc                                        ; $5643: $fc
    jr @-$59                                      ; $5644: $18 $a5

    ret c                                         ; $5646: $d8

    add hl, bc                                    ; $5647: $09
    sub b                                         ; $5648: $90
    ld d, b                                       ; $5649: $50
    jr nc, jr_0c5_569d                            ; $564a: $30 $51

    cp [hl]                                       ; $564c: $be
    ld d, b                                       ; $564d: $50
    ld l, b                                       ; $564e: $68
    inc h                                         ; $564f: $24
    or b                                          ; $5650: $b0
    ld de, $40ae                                  ; $5651: $11 $ae $40
    ld e, b                                       ; $5654: $58
    ld b, b                                       ; $5655: $40
    ld b, b                                       ; $5656: $40

jr_0c5_5657:
    ld b, b                                       ; $5657: $40
    ld b, c                                       ; $5658: $41
    add d                                         ; $5659: $82
    ld [bc], a                                    ; $565a: $02
    add [hl]                                      ; $565b: $86
    ld a, [bc]                                    ; $565c: $0a
    xor $19                                       ; $565d: $ee $19
    ld bc, $30f5                                  ; $565f: $01 $f5 $30
    db $10                                        ; $5662: $10
    sub d                                         ; $5663: $92
    jr z, jr_0c5_5600                             ; $5664: $28 $9a

    ld a, [bc]                                    ; $5666: $0a
    inc e                                         ; $5667: $1c
    jr z, jr_0c5_568c                             ; $5668: $28 $22

    xor [hl]                                      ; $566a: $ae
    ld [bc], a                                    ; $566b: $02
    jr z, jr_0c5_55f0                             ; $566c: $28 $82

    ld de, $2228                                  ; $566e: $11 $28 $22
    rst $18                                       ; $5671: $df
    add b                                         ; $5672: $80
    jr jr_0c5_568d                                ; $5673: $18 $18

    cp h                                          ; $5675: $bc
    ld [bc], a                                    ; $5676: $02
    inc d                                         ; $5677: $14
    db $eb                                        ; $5678: $eb
    jr nz, jr_0c5_56b7                            ; $5679: $20 $3c

    rst $18                                       ; $567b: $df
    ld [$01c0], sp                                ; $567c: $08 $c0 $01
    adc [hl]                                      ; $567f: $8e
    add hl, bc                                    ; $5680: $09
    ld a, [de]                                    ; $5681: $1a
    ld a, [bc]                                    ; $5682: $0a
    sbc [hl]                                      ; $5683: $9e
    ld bc, $84ff                                  ; $5684: $01 $ff $84
    and $40                                       ; $5687: $e6 $40
    add hl, bc                                    ; $5689: $09
    add sp, $02                                   ; $568a: $e8 $02

jr_0c5_568c:
    add [hl]                                      ; $568c: $86

jr_0c5_568d:
    add hl, bc                                    ; $568d: $09
    ld b, b                                       ; $568e: $40
    cp a                                          ; $568f: $bf
    adc h                                         ; $5690: $8c
    add hl, bc                                    ; $5691: $09
    inc [hl]                                      ; $5692: $34
    ld a, [bc]                                    ; $5693: $0a
    inc bc                                        ; $5694: $03
    or c                                          ; $5695: $b1
    or d                                          ; $5696: $b2
    ld de, $ec80                                  ; $5697: $11 $80 $ec
    ld bc, $0960                                  ; $569a: $01 $60 $09

jr_0c5_569d:
    ld b, b                                       ; $569d: $40
    cp a                                          ; $569e: $bf
    ld [de], a                                    ; $569f: $12
    ld hl, sp+$02                                 ; $56a0: $f8 $02
    ld b, l                                       ; $56a2: $45
    inc d                                         ; $56a3: $14
    and h                                         ; $56a4: $a4
    ld de, $ef91                                  ; $56a5: $11 $91 $ef
    jr nz, jr_0c5_56ac                            ; $56a8: $20 $02

    ld [de], a                                    ; $56aa: $12
    inc d                                         ; $56ab: $14

jr_0c5_56ac:
    ld l, [hl]                                    ; $56ac: $6e
    ld [de], a                                    ; $56ad: $12
    ld a, c                                       ; $56ae: $79
    db $10                                        ; $56af: $10
    add h                                         ; $56b0: $84
    ld bc, $0852                                  ; $56b1: $01 $52 $08
    db $ec                                        ; $56b4: $ec
    jr jr_0c5_56fd                                ; $56b5: $18 $46

jr_0c5_56b7:
    nop                                           ; $56b7: $00
    rst $30                                       ; $56b8: $f7
    ld b, d                                       ; $56b9: $42
    ld c, $01                                     ; $56ba: $0e $01
    ld [hl], $04                                  ; $56bc: $36 $04
    ei                                            ; $56be: $fb
    jr c, jr_0c5_56c1                             ; $56bf: $38 $00

jr_0c5_56c1:
    ldh a, [rNR11]                                ; $56c1: $f0 $11
    add h                                         ; $56c3: $84
    ret c                                         ; $56c4: $d8

    ld [de], a                                    ; $56c5: $12
    call c, Call_000_100a                         ; $56c6: $dc $0a $10
    adc b                                         ; $56c9: $88
    inc [hl]                                      ; $56ca: $34
    ld [bc], a                                    ; $56cb: $02
    ld b, b                                       ; $56cc: $40
    rst $38                                       ; $56cd: $ff
    ld a, [bc]                                    ; $56ce: $0a
    inc l                                         ; $56cf: $2c
    ld de, $df20                                  ; $56d0: $11 $20 $df
    add hl, bc                                    ; $56d3: $09
    call nc, $035a                                ; $56d4: $d4 $5a $03
    sbc $28                                       ; $56d7: $de $28
    db $10                                        ; $56d9: $10
    ld d, d                                       ; $56da: $52
    ld [de], a                                    ; $56db: $12
    ld a, [bc]                                    ; $56dc: $0a
    ld b, b                                       ; $56dd: $40
    ld [bc], a                                    ; $56de: $02
    inc b                                         ; $56df: $04
    ei                                            ; $56e0: $fb
    inc e                                         ; $56e1: $1c
    ld [$81f7], sp                                ; $56e2: $08 $f7 $81
    ld [hl], d                                    ; $56e5: $72
    inc bc                                        ; $56e6: $03
    ld [de], a                                    ; $56e7: $12
    ld a, [bc]                                    ; $56e8: $0a
    ld [hl], h                                    ; $56e9: $74
    add hl, bc                                    ; $56ea: $09
    sub b                                         ; $56eb: $90
    ld a, a                                       ; $56ec: $7f
    inc l                                         ; $56ed: $2c

Jump_0c5_56ee:
    inc b                                         ; $56ee: $04
    ei                                            ; $56ef: $fb
    ld a, [hl-]                                   ; $56f0: $3a
    ld a, [bc]                                    ; $56f1: $0a
    add hl, bc                                    ; $56f2: $09
    ld l, $02                                     ; $56f3: $2e $02
    ld a, [de]                                    ; $56f5: $1a
    nop                                           ; $56f6: $00
    ld a, [hl]                                    ; $56f7: $7e
    nop                                           ; $56f8: $00
    dec de                                        ; $56f9: $1b
    rst $38                                       ; $56fa: $ff
    sub h                                         ; $56fb: $94
    ld l, e                                       ; $56fc: $6b

jr_0c5_56fd:
    ld a, [hl]                                    ; $56fd: $7e
    ld a, [bc]                                    ; $56fe: $0a
    ld h, $0b                                     ; $56ff: $26 $0b
    ld [de], a                                    ; $5701: $12
    ld [hl-], a                                   ; $5702: $32
    ld [de], a                                    ; $5703: $12
    ld d, h                                       ; $5704: $54
    nop                                           ; $5705: $00
    dec de                                        ; $5706: $1b
    cp a                                          ; $5707: $bf
    ld b, $fd                                     ; $5708: $06 $fd

jr_0c5_570a:
    add h                                         ; $570a: $84
    nop                                           ; $570b: $00
    ld a, [hl-]                                   ; $570c: $3a
    inc bc                                        ; $570d: $03
    ld [$2168], sp                                ; $570e: $08 $68 $21
    ld [de], a                                    ; $5711: $12
    ld a, [bc]                                    ; $5712: $0a
    cp d                                          ; $5713: $ba
    ld [hl], d                                    ; $5714: $72
    add hl, de                                    ; $5715: $19
    add b                                         ; $5716: $80
    ld a, [c]                                     ; $5717: $f2
    nop                                           ; $5718: $00
    add b                                         ; $5719: $80
    add hl, bc                                    ; $571a: $09
    halt                                          ; $571b: $76
    ld a, [de]                                    ; $571c: $1a
    inc b                                         ; $571d: $04
    cp h                                          ; $571e: $bc
    dec bc                                        ; $571f: $0b
    rst $38                                       ; $5720: $ff
    ld h, [hl]                                    ; $5721: $66
    sub c                                         ; $5722: $91
    jp nz, Jump_0c5_7c31                          ; $5723: $c2 $31 $7c

    ld a, [bc]                                    ; $5726: $0a
    dec b                                         ; $5727: $05
    ld a, [$0b7a]                                 ; $5728: $fa $7a $0b
    sub $09                                       ; $572b: $d6 $09
    add b                                         ; $572d: $80
    ld b, d                                       ; $572e: $42
    ld a, a                                       ; $572f: $7f
    cp d                                          ; $5730: $ba
    ld a, [bc]                                    ; $5731: $0a
    nop                                           ; $5732: $00
    rst $38                                       ; $5733: $ff
    ld d, b                                       ; $5734: $50
    xor a                                         ; $5735: $af
    adc b                                         ; $5736: $88
    inc bc                                        ; $5737: $03
    or a                                          ; $5738: $b7
    rst $30                                       ; $5739: $f7
    ldh [rSC], a                                  ; $573a: $e0 $02
    ld hl, sp+$03                                 ; $573c: $f8 $03
    or h                                          ; $573e: $b4
    ld [$19c2], sp                                ; $573f: $08 $c2 $19
    db $10                                        ; $5742: $10
    sbc $02                                       ; $5743: $de $02
    sub h                                         ; $5745: $94
    ld a, [bc]                                    ; $5746: $0a
    ld e, h                                       ; $5747: $5c
    jr z, jr_0c5_578f                             ; $5748: $28 $45

    inc h                                         ; $574a: $24
    sbc $02                                       ; $574b: $de $02
    ld hl, $10df                                  ; $574d: $21 $df $10
    or h                                          ; $5750: $b4
    inc bc                                        ; $5751: $03
    ld [hl+], a                                   ; $5752: $22
    ld h, d                                       ; $5753: $62
    inc de                                        ; $5754: $13
    ld h, $80                                     ; $5755: $26 $80
    ld a, a                                       ; $5757: $7f
    and d                                         ; $5758: $a2
    ld a, [de]                                    ; $5759: $1a
    dec b                                         ; $575a: $05
    ld a, [$09a2]                                 ; $575b: $fa $a2 $09
    ld [hl+], a                                   ; $575e: $22
    dec bc                                        ; $575f: $0b
    ld [hl+], a                                   ; $5760: $22
    daa                                           ; $5761: $27
    db $dd                                        ; $5762: $dd
    db $10                                        ; $5763: $10
    call nc, $4002                                ; $5764: $d4 $02 $40
    cp a                                          ; $5767: $bf
    ld b, $08                                     ; $5768: $06 $08
    ld [hl+], a                                   ; $576a: $22
    ld a, [bc]                                    ; $576b: $0a
    ld [bc], a                                    ; $576c: $02
    dec bc                                        ; $576d: $0b
    jr nz, @+$06                                  ; $576e: $20 $04

    rst $38                                       ; $5770: $ff
    inc d                                         ; $5771: $14
    ld [$ef50], sp                                ; $5772: $08 $50 $ef
    add d                                         ; $5775: $82
    ld a, a                                       ; $5776: $7f
    jr nz, @-$3c                                  ; $5777: $20 $c2

    sub $03                                       ; $5779: $d6 $03
    jr nz, jr_0c5_5795                            ; $577b: $20 $18

    ld [bc], a                                    ; $577d: $02
    rst $38                                       ; $577e: $ff
    adc b                                         ; $577f: $88
    ld [hl], a                                    ; $5780: $77
    cp h                                          ; $5781: $bc
    dec de                                        ; $5782: $1b
    add b                                         ; $5783: $80
    db $db                                        ; $5784: $db
    ld h, $11                                     ; $5785: $26 $11
    adc d                                         ; $5787: $8a
    jr z, jr_0c5_570a                             ; $5788: $28 $80

    ld l, b                                       ; $578a: $68
    inc b                                         ; $578b: $04
    db $f4                                        ; $578c: $f4
    ld a, [bc]                                    ; $578d: $0a
    ld [bc], a                                    ; $578e: $02

jr_0c5_578f:
    add [hl]                                      ; $578f: $86
    add hl, bc                                    ; $5790: $09
    ld e, $03                                     ; $5791: $1e $03
    sbc l                                         ; $5793: $9d
    ret c                                         ; $5794: $d8

jr_0c5_5795:
    dec de                                        ; $5795: $1b
    add b                                         ; $5796: $80
    ld a, a                                       ; $5797: $7f
    ld l, h                                       ; $5798: $6c
    dec de                                        ; $5799: $1b
    ld d, b                                       ; $579a: $50
    dec bc                                        ; $579b: $0b
    call nc, $fb10                                ; $579c: $d4 $10 $fb
    jr nc, @+$03                                  ; $579f: $30 $01

    ld c, $fb                                     ; $57a1: $0e $fb
    add b                                         ; $57a3: $80
    ld a, a                                       ; $57a4: $7f
    ld [$0496], sp                                ; $57a5: $08 $96 $04
    sbc h                                         ; $57a8: $9c
    ld a, [bc]                                    ; $57a9: $0a
    ld h, $0b                                     ; $57aa: $26 $0b
    ld hl, $fe7f                                  ; $57ac: $21 $7f $fe
    ld [hl-], a                                   ; $57af: $32
    dec bc                                        ; $57b0: $0b
    ld l, d                                       ; $57b1: $6a
    dec de                                        ; $57b2: $1b
    cp h                                          ; $57b3: $bc
    inc b                                         ; $57b4: $04
    ld [hl], h                                    ; $57b5: $74
    dec bc                                        ; $57b6: $0b
    ld e, [hl]                                    ; $57b7: $5e
    inc bc                                        ; $57b8: $03
    ld e, d                                       ; $57b9: $5a
    inc de                                        ; $57ba: $13
    inc h                                         ; $57bb: $24
    inc e                                         ; $57bc: $1c
    rst $38                                       ; $57bd: $ff
    inc [hl]                                      ; $57be: $34
    inc de                                        ; $57bf: $13
    ld d, b                                       ; $57c0: $50
    dec bc                                        ; $57c1: $0b
    ld a, [de]                                    ; $57c2: $1a
    ld [$1ad2], sp                                ; $57c3: $08 $d2 $1a
    inc a                                         ; $57c6: $3c
    ld bc, $0432                                  ; $57c7: $01 $32 $04
    cp h                                          ; $57ca: $bc
    dec bc                                        ; $57cb: $0b
    jp nz, Jump_000_2c0a                          ; $57cc: $c2 $0a $2c

    inc h                                         ; $57cf: $24
    db $db                                        ; $57d0: $db
    jr c, jr_0c5_57df                             ; $57d1: $38 $0c

    ld [$0114], sp                                ; $57d3: $08 $14 $01
    adc b                                         ; $57d6: $88
    dec bc                                        ; $57d7: $0b
    add l                                         ; $57d8: $85
    ld a, [hl]                                    ; $57d9: $7e
    cp l                                          ; $57da: $bd
    ret nz                                        ; $57db: $c0

    ld a, [de]                                    ; $57dc: $1a
    add d                                         ; $57dd: $82
    ld h, h                                       ; $57de: $64

jr_0c5_57df:
    inc d                                         ; $57df: $14
    jp c, $c803                                   ; $57e0: $da $03 $c8

    inc de                                        ; $57e3: $13
    ld e, d                                       ; $57e4: $5a
    inc c                                         ; $57e5: $0c
    inc b                                         ; $57e6: $04
    ld e, h                                       ; $57e7: $5c
    ld de, $e0fc                                  ; $57e8: $11 $fc $e0
    ld de, $0102                                  ; $57eb: $11 $02 $01
    cp $09                                        ; $57ee: $fe $09
    jr c, jr_0c5_57fb                             ; $57f0: $38 $09

    ld l, h                                       ; $57f2: $6c
    add hl, de                                    ; $57f3: $19
    inc [hl]                                      ; $57f4: $34
    dec bc                                        ; $57f5: $0b
    ld [de], a                                    ; $57f6: $12
    db $ed                                        ; $57f7: $ed
    sbc b                                         ; $57f8: $98
    adc [hl]                                      ; $57f9: $8e
    inc c                                         ; $57fa: $0c

jr_0c5_57fb:
    dec b                                         ; $57fb: $05
    ld a, [$01fc]                                 ; $57fc: $fa $fc $01
    ld b, d                                       ; $57ff: $42
    inc hl                                        ; $5800: $23
    ld c, b                                       ; $5801: $48
    rst $30                                       ; $5802: $f7
    inc h                                         ; $5803: $24
    ld a, l                                       ; $5804: $7d
    db $db                                        ; $5805: $db
    ld b, h                                       ; $5806: $44
    dec c                                         ; $5807: $0d
    inc [hl]                                      ; $5808: $34
    dec bc                                        ; $5809: $0b

Jump_0c5_580a:
    ld hl, sp+$0b                                 ; $580a: $f8 $0b
    ret nc                                        ; $580c: $d0

    inc bc                                        ; $580d: $03
    inc l                                         ; $580e: $2c
    inc b                                         ; $580f: $04
    ld de, $04f6                                  ; $5810: $11 $f6 $04
    add sp, -$38                                  ; $5813: $e8 $c8
    dec bc                                        ; $5815: $0b
    ld c, [hl]                                    ; $5816: $4e
    dec bc                                        ; $5817: $0b
    ldh [rSC], a                                  ; $5818: $e0 $02
    or a                                          ; $581a: $b7
    ld c, h                                       ; $581b: $4c
    inc c                                         ; $581c: $0c
    jr nz, @-$1f                                  ; $581d: $20 $df

    inc b                                         ; $581f: $04
    cp b                                          ; $5820: $b8
    ld [hl], $14                                  ; $5821: $36 $14
    ld [$137e], sp                                ; $5823: $08 $7e $13
    ld c, h                                       ; $5826: $4c
    add hl, bc                                    ; $5827: $09
    ld a, [de]                                    ; $5828: $1a
    dec b                                         ; $5829: $05
    xor $44                                       ; $582a: $ee $44
    cp e                                          ; $582c: $bb
    cp $78                                        ; $582d: $fe $78
    dec de                                        ; $582f: $1b
    ld h, [hl]                                    ; $5830: $66
    jr @+$3e                                      ; $5831: $18 $3c

    inc c                                         ; $5833: $0c
    ld [bc], a                                    ; $5834: $02
    ld a, [bc]                                    ; $5835: $0a
    jp c, $a609                                   ; $5836: $da $09 $a6

    dec de                                        ; $5839: $1b
    add $09                                       ; $583a: $c6 $09
    ld bc, $4af8                                  ; $583c: $01 $f8 $4a
    dec b                                         ; $583f: $05
    ld c, h                                       ; $5840: $4c
    ld a, [bc]                                    ; $5841: $0a
    add $0a                                       ; $5842: $c6 $0a
    ld [hl], b                                    ; $5844: $70
    inc c                                         ; $5845: $0c
    ld b, h                                       ; $5846: $44
    ld [bc], a                                    ; $5847: $02

jr_0c5_5848:
    rst $18                                       ; $5848: $df
    ld [$39f7], sp                                ; $5849: $08 $f7 $39
    add l                                         ; $584c: $85
    ld a, d                                       ; $584d: $7a
    sub b                                         ; $584e: $90
    dec hl                                        ; $584f: $2b
    jr c, @+$1c                                   ; $5850: $38 $1a

    sbc b                                         ; $5852: $98
    dec bc                                        ; $5853: $0b
    ld de, $3cee                                  ; $5854: $11 $ee $3c
    ld bc, $4cc2                                  ; $5857: $01 $c2 $4c
    ld hl, $0d2a                                  ; $585a: $21 $2a $0d
    inc d                                         ; $585d: $14
    db $eb                                        ; $585e: $eb
    ld b, d                                       ; $585f: $42
    cp l                                          ; $5860: $bd
    ret nc                                        ; $5861: $d0

    dec de                                        ; $5862: $1b
    ld [bc], a                                    ; $5863: $02
    inc l                                         ; $5864: $2c
    db $fd                                        ; $5865: $fd
    adc b                                         ; $5866: $88
    jr nz, jr_0c5_587a                            ; $5867: $20 $11

    ld [de], a                                    ; $5869: $12
    ld a, [$bc23]                                 ; $586a: $fa $23 $bc
    inc c                                         ; $586d: $0c
    jr nz, @+$01                                  ; $586e: $20 $ff

    inc a                                         ; $5870: $3c
    add c                                         ; $5871: $81

jr_0c5_5872:
    cp $a0                                        ; $5872: $fe $a0
    dec bc                                        ; $5874: $0b
    db $ec                                        ; $5875: $ec
    ld bc, $1502                                  ; $5876: $01 $02 $15
    ld h, h                                       ; $5879: $64

jr_0c5_587a:
    ld [hl+], a                                   ; $587a: $22
    ld a, a                                       ; $587b: $7f
    db $10                                        ; $587c: $10
    xor e                                         ; $587d: $ab
    and $02                                       ; $587e: $e6 $02
    jr nz, jr_0c5_5848                            ; $5880: $20 $c6

    ld de, $cc41                                  ; $5882: $11 $41 $cc
    inc d                                         ; $5885: $14
    ld de, $1430                                  ; $5886: $11 $30 $14
    inc l                                         ; $5889: $2c
    ld c, $17                                     ; $588a: $0e $17
    dec b                                         ; $588c: $05
    ei                                            ; $588d: $fb
    inc h                                         ; $588e: $24
    cp b                                          ; $588f: $b8
    ld de, $5e10                                  ; $5890: $11 $10 $5e
    ld [bc], a                                    ; $5893: $02
    and $0c                                       ; $5894: $e6 $0c
    db $e4                                        ; $5896: $e4
    dec c                                         ; $5897: $0d
    dec h                                         ; $5898: $25
    jr z, jr_0c5_5872                             ; $5899: $28 $d7

    and b                                         ; $589b: $a0
    dec e                                         ; $589c: $1d
    add h                                         ; $589d: $84
    ld a, e                                       ; $589e: $7b
    ld a, [$2108]                                 ; $589f: $fa $08 $21
    or h                                          ; $58a2: $b4
    ld hl, $26e1                                  ; $58a3: $21 $e1 $26
    ld [de], a                                    ; $58a6: $12
    adc [hl]                                      ; $58a7: $8e
    ld de, $0cd0                                  ; $58a8: $11 $d0 $0c
    jr @+$01                                      ; $58ab: $18 $ff

    ld b, d                                       ; $58ad: $42
    cp a                                          ; $58ae: $bf
    ld hl, sp+$04                                 ; $58af: $f8 $04
    ld [hl], d                                    ; $58b1: $72
    ld a, a                                       ; $58b2: $7f
    ld d, $0e                                     ; $58b3: $16 $0e
    ld b, b                                       ; $58b5: $40
    inc c                                         ; $58b6: $0c
    halt                                          ; $58b7: $76
    inc c                                         ; $58b8: $0c
    adc d                                         ; $58b9: $8a
    ld [hl], a                                    ; $58ba: $77
    ld d, [hl]                                    ; $58bb: $56
    dec bc                                        ; $58bc: $0b
    add c                                         ; $58bd: $81
    ldh [$9a], a                                  ; $58be: $e0 $9a
    ld [$0062], sp                                ; $58c0: $08 $62 $00
    ld d, $1d                                     ; $58c3: $16 $1d
    ld d, b                                       ; $58c5: $50
    cp a                                          ; $58c6: $bf
    ld b, b                                       ; $58c7: $40
    rst $38                                       ; $58c8: $ff
    add hl, bc                                    ; $58c9: $09
    ld d, e                                       ; $58ca: $53
    or $08                                        ; $58cb: $f6 $08
    dec de                                        ; $58cd: $1b
    ld c, b                                       ; $58ce: $48
    ld d, d                                       ; $58cf: $52
    dec b                                         ; $58d0: $05
    add b                                         ; $58d1: $80
    ld a, a                                       ; $58d2: $7f
    xor b                                         ; $58d3: $a8
    inc bc                                        ; $58d4: $03
    sub h                                         ; $58d5: $94
    dec d                                         ; $58d6: $15
    cp [hl]                                       ; $58d7: $be
    ret c                                         ; $58d8: $d8

    ld bc, $76bf                                  ; $58d9: $01 $bf $76
    nop                                           ; $58dc: $00
    ret nz                                        ; $58dd: $c0

    db $10                                        ; $58de: $10
    ld a, [bc]                                    ; $58df: $0a
    ld [$0b60], sp                                ; $58e0: $08 $60 $0b
    ld c, b                                       ; $58e3: $48
    inc bc                                        ; $58e4: $03
    or $ed                                        ; $58e5: $f6 $ed
    or b                                          ; $58e7: $b0
    dec de                                        ; $58e8: $1b
    adc h                                         ; $58e9: $8c
    jr @-$72                                      ; $58ea: $18 $8c

    dec e                                         ; $58ec: $1d
    ld hl, $0672                                  ; $58ed: $21 $72 $06
    jp z, Jump_000_1019                           ; $58f0: $ca $19 $10

    ld a, b                                       ; $58f3: $78
    ld b, $d8                                     ; $58f4: $06 $d8
    ld h, b                                       ; $58f6: $60
    inc c                                         ; $58f7: $0c
    ld c, d                                       ; $58f8: $4a
    ld e, $82                                     ; $58f9: $1e $82
    ld c, $14                                     ; $58fb: $0e $14
    ld h, $1c                                     ; $58fd: $26 $1c
    nop                                           ; $58ff: $00
    rst $38                                       ; $5900: $ff
    ld sp, $88c6                                  ; $5901: $31 $c6 $88
    ld a, [bc]                                    ; $5904: $0a
    ld h, h                                       ; $5905: $64
    ld b, $80                                     ; $5906: $06 $80
    ld a, a                                       ; $5908: $7f
    ld c, b                                       ; $5909: $48
    and $05                                       ; $590a: $e6 $05
    add $1d                                       ; $590c: $c6 $1d
    and h                                         ; $590e: $a4
    ld a, b                                       ; $590f: $78
    ld a, e                                       ; $5910: $7b
    and b                                         ; $5911: $a0
    ld c, $7a                                     ; $5912: $0e $7a
    ld c, $8c                                     ; $5914: $0e $8c
    db $10                                        ; $5916: $10
    cp d                                          ; $5917: $ba
    ld de, $7f80                                  ; $5918: $11 $80 $7f
    ld de, $22ed                                  ; $591b: $11 $ed $22
    rlca                                          ; $591e: $07
    ld h, $0d                                     ; $591f: $26 $0d
    jp nc, $800e                                  ; $5921: $d2 $0e $80

    ld b, $06                                     ; $5924: $06 $06
    ld l, h                                       ; $5926: $6c
    ld a, [de]                                    ; $5927: $1a
    ld b, b                                       ; $5928: $40
    ld [de], a                                    ; $5929: $12
    ld b, $36                                     ; $592a: $06 $36
    add d                                         ; $592c: $82
    ld a, l                                       ; $592d: $7d
    ld h, b                                       ; $592e: $60
    inc l                                         ; $592f: $2c
    add [hl]                                      ; $5930: $86
    inc c                                         ; $5931: $0c
    jr nz, jr_0c5_5952                            ; $5932: $20 $1e

    ld bc, $0ee0                                  ; $5934: $01 $e0 $0e
    ld b, h                                       ; $5937: $44
    adc l                                         ; $5938: $8d
    inc l                                         ; $5939: $2c
    inc d                                         ; $593a: $14
    add b                                         ; $593b: $80
    rst $38                                       ; $593c: $ff
    dec b                                         ; $593d: $05
    inc c                                         ; $593e: $0c
    ld d, $24                                     ; $593f: $16 $24
    inc c                                         ; $5941: $0c
    ld bc, $322e                                  ; $5942: $01 $2e $32
    rlca                                          ; $5945: $07
    ld b, h                                       ; $5946: $44
    cp a                                          ; $5947: $bf
    ld bc, $88fe                                  ; $5948: $01 $fe $88
    ld b, d                                       ; $594b: $42
    dec d                                         ; $594c: $15
    ld [$e416], sp                                ; $594d: $08 $16 $e4
    ld d, $9f                                     ; $5950: $16 $9f

jr_0c5_5952:
    jp c, Jump_0c5_440e                           ; $5952: $da $0e $44

    cp e                                          ; $5955: $bb
    ld [hl], d                                    ; $5956: $72
    inc bc                                        ; $5957: $03

jr_0c5_5958:
    jr nc, jr_0c5_5961                            ; $5958: $30 $07

    ld d, h                                       ; $595a: $54
    ld [$13ba], sp                                ; $595b: $08 $ba $13
    jp nc, $dc20                                  ; $595e: $d2 $20 $dc

jr_0c5_5961:
    ld d, h                                       ; $5961: $54
    inc b                                         ; $5962: $04
    adc h                                         ; $5963: $8c
    dec b                                         ; $5964: $05
    sub b                                         ; $5965: $90
    inc c                                         ; $5966: $0c
    rlca                                          ; $5967: $07
    ld [hl-], a                                   ; $5968: $32
    inc e                                         ; $5969: $1c
    ld a, [c]                                     ; $596a: $f2
    inc bc                                        ; $596b: $03
    cp a                                          ; $596c: $bf
    ld de, $7af7                                  ; $596d: $11 $f7 $7a
    dec e                                         ; $5970: $1d
    adc h                                         ; $5971: $8c
    dec bc                                        ; $5972: $0b
    and h                                         ; $5973: $a4
    dec c                                         ; $5974: $0d
    ld h, d                                       ; $5975: $62
    ld d, $22                                     ; $5976: $16 $22
    sbc h                                         ; $5978: $9c
    ld b, $e4                                     ; $5979: $06 $e4
    ld [bc], a                                    ; $597b: $02
    cp b                                          ; $597c: $b8
    dec b                                         ; $597d: $05
    rra                                           ; $597e: $1f
    jr z, jr_0c5_5958                             ; $597f: $28 $d7

    ld [hl+], a                                   ; $5981: $22
    cp [hl]                                       ; $5982: $be
    dec b                                         ; $5983: $05
    halt                                          ; $5984: $76
    rrca                                          ; $5985: $0f
    inc d                                         ; $5986: $14
    ld [$7c50], sp                                ; $5987: $08 $50 $7c
    add d                                         ; $598a: $82
    inc de                                        ; $598b: $13
    cp $be                                        ; $598c: $fe $be
    inc hl                                        ; $598e: $23
    jp z, Jump_0c5_6e0d                           ; $598f: $ca $0d $6e

    add hl, bc                                    ; $5992: $09
    ld l, $1c                                     ; $5993: $2e $1c
    ld l, h                                       ; $5995: $6c
    dec de                                        ; $5996: $1b
    halt                                          ; $5997: $76
    dec de                                        ; $5998: $1b
    ld a, [hl]                                    ; $5999: $7e
    rrca                                          ; $599a: $0f
    sub b                                         ; $599b: $90
    ld b, a                                       ; $599c: $47
    ld l, a                                       ; $599d: $6f
    and d                                         ; $599e: $a2
    ld c, $a0                                     ; $599f: $0e $a0
    ld e, a                                       ; $59a1: $5f
    adc c                                         ; $59a2: $89
    sub b                                         ; $59a3: $90
    ld bc, $0eac                                  ; $59a4: $01 $ac $0e
    add [hl]                                      ; $59a7: $86
    ld [$9ebf], sp                                ; $59a8: $08 $bf $9e

jr_0c5_59ab:
    ld e, $14                                     ; $59ab: $1e $14
    ld h, d                                       ; $59ad: $62
    dec d                                         ; $59ae: $15
    sub h                                         ; $59af: $94
    inc e                                         ; $59b0: $1c
    ld d, h                                       ; $59b1: $54
    inc bc                                        ; $59b2: $03
    ld a, [$7623]                                 ; $59b3: $fa $23 $76
    rrca                                          ; $59b6: $0f
    inc l                                         ; $59b7: $2c
    dec c                                         ; $59b8: $0d
    rst $38                                       ; $59b9: $ff
    ld a, h                                       ; $59ba: $7c
    ld [de], a                                    ; $59bb: $12
    ld c, $0b                                     ; $59bc: $0e $0b
    sub b                                         ; $59be: $90
    ld d, e                                       ; $59bf: $53
    ld a, [hl+]                                   ; $59c0: $2a
    inc c                                         ; $59c1: $0c
    ld a, [$140f]                                 ; $59c2: $fa $0f $14
    dec de                                        ; $59c5: $1b
    db $e4                                        ; $59c6: $e4
    ld hl, $07d6                                  ; $59c7: $21 $d6 $07
    cp h                                          ; $59ca: $bc
    and d                                         ; $59cb: $a2
    dec c                                         ; $59cc: $0d
    ld b, d                                       ; $59cd: $42
    ldh a, [rNR43]                                ; $59ce: $f0 $22
    ld [hl], h                                    ; $59d0: $74
    cpl                                           ; $59d1: $2f
    ld b, b                                       ; $59d2: $40
    inc a                                         ; $59d3: $3c
    ld e, [hl]                                    ; $59d4: $5e
    rra                                           ; $59d5: $1f
    ld b, b                                       ; $59d6: $40
    cp a                                          ; $59d7: $bf
    db $fc                                        ; $59d8: $fc
    add h                                         ; $59d9: $84
    rrca                                          ; $59da: $0f
    ld h, h                                       ; $59db: $64
    dec bc                                        ; $59dc: $0b
    call c, Call_0c5_6235                         ; $59dd: $dc $35 $62
    ld [hl+], a                                   ; $59e0: $22
    ld [hl], b                                    ; $59e1: $70
    rrca                                          ; $59e2: $0f
    ld c, [hl]                                    ; $59e3: $4e
    rrca                                          ; $59e4: $0f

jr_0c5_59e5:
    inc h                                         ; $59e5: $24
    db $db                                        ; $59e6: $db
    call Call_000_0ed2                            ; $59e7: $cd $d2 $0e
    ldh [$0b], a                                  ; $59ea: $e0 $0b
    ld bc, $e0fe                                  ; $59ec: $01 $fe $e0
    dec bc                                        ; $59ef: $0b
    halt                                          ; $59f0: $76
    inc e                                         ; $59f1: $1c
    ld b, c                                       ; $59f2: $41
    adc $1f                                       ; $59f3: $ce $1f
    ldh [$6c], a                                  ; $59f5: $e0 $6c
    inc hl                                        ; $59f7: $23
    ld h, b                                       ; $59f8: $60
    ld e, $06                                     ; $59f9: $1e $06
    ld d, $7f                                     ; $59fb: $16 $7f
    ld [hl], b                                    ; $59fd: $70
    add hl, bc                                    ; $59fe: $09
    db $ec                                        ; $59ff: $ec
    inc bc                                        ; $5a00: $03
    nop                                           ; $5a01: $00
    ld b, l                                       ; $5a02: $45
    dec d                                         ; $5a03: $15
    add d                                         ; $5a04: $82
    ld a, [hl+]                                   ; $5a05: $2a
    rst $00                                       ; $5a06: $c7
    ccf                                           ; $5a07: $3f
    sub e                                         ; $5a08: $93
    cpl                                           ; $5a09: $2f
    nop                                           ; $5a0a: $00
    rst $00                                       ; $5a0b: $c7
    ccf                                           ; $5a0c: $3f
    ld c, e                                       ; $5a0d: $4b
    ccf                                           ; $5a0e: $3f
    add l                                         ; $5a0f: $85
    ld a, a                                       ; $5a10: $7f
    ld c, e                                       ; $5a11: $4b
    ccf                                           ; $5a12: $3f
    nop                                           ; $5a13: $00
    ld d, b                                       ; $5a14: $50
    ld e, a                                       ; $5a15: $5f
    and b                                         ; $5a16: $a0
    xor d                                         ; $5a17: $aa
    ldh a, [$fd]                                  ; $5a18: $f0 $fd
    db $f4                                        ; $5a1a: $f4
    ei                                            ; $5a1b: $fb
    inc b                                         ; $5a1c: $04
    ldh a, [rIE]                                  ; $5a1d: $f0 $ff
    ldh a, [rIE]                                  ; $5a1f: $f0 $ff
    ld hl, sp+$02                                 ; $5a21: $f8 $02
    nop                                           ; $5a23: $00
    jr z, @-$37                                   ; $5a24: $28 $c7

jr_0c5_5a26:
    nop                                           ; $5a26: $00
    jr z, jr_0c5_59ab                             ; $5a27: $28 $82

    ld bc, $7845                                  ; $5a29: $01 $45 $78
    jp nz, $c729                                  ; $5a2c: $c2 $29 $c7

    nop                                           ; $5a2f: $00
    sub l                                         ; $5a30: $95
    db $eb                                        ; $5a31: $eb
    ld e, b                                       ; $5a32: $58
    rst $38                                       ; $5a33: $ff
    rlca                                          ; $5a34: $07
    rst $38                                       ; $5a35: $ff
    ld b, b                                       ; $5a36: $40
    ld d, l                                       ; $5a37: $55
    nop                                           ; $5a38: $00
    jr nz, jr_0c5_59e5                            ; $5a39: $20 $aa

    ld b, b                                       ; $5a3b: $40
    ld d, l                                       ; $5a3c: $55
    ld hl, $f0aa                                  ; $5a3d: $21 $aa $f0
    rst $38                                       ; $5a40: $ff
    nop                                           ; $5a41: $00
    add sp, -$01                                  ; $5a42: $e8 $ff
    ret nc                                        ; $5a44: $d0

    rst $38                                       ; $5a45: $ff
    and b                                         ; $5a46: $a0
    rst $38                                       ; $5a47: $ff
    nop                                           ; $5a48: $00
    ld b, l                                       ; $5a49: $45
    jr nz, @+$2a                                  ; $5a4a: $20 $28

    add d                                         ; $5a4c: $82
    inc b                                         ; $5a4d: $04
    nop                                           ; $5a4e: $00
    jp nz, $cf20                                  ; $5a4f: $c2 $20 $cf

    add hl, sp                                    ; $5a52: $39
    rst $00                                       ; $5a53: $c7
    inc b                                         ; $5a54: $04
    jr nz, jr_0c5_5a26                            ; $5a55: $20 $cf

    cp c                                          ; $5a57: $b9
    ld b, a                                       ; $5a58: $47
    ld d, b                                       ; $5a59: $50
    jr nz, jr_0c5_5a5c                            ; $5a5a: $20 $00

jr_0c5_5a5c:
    ld [hl], d                                    ; $5a5c: $72
    ld a, l                                       ; $5a5d: $7d
    ld d, b                                       ; $5a5e: $50
    jr nz, jr_0c5_5a81                            ; $5a5f: $20 $20

    nop                                           ; $5a61: $00
    ld [hl], h                                    ; $5a62: $74
    ld b, h                                       ; $5a63: $44
    nop                                           ; $5a64: $00
    ld [hl], b                                    ; $5a65: $70
    rst $38                                       ; $5a66: $ff
    db $10                                        ; $5a67: $10
    ld b, l                                       ; $5a68: $45
    nop                                           ; $5a69: $00
    ld [hl+], a                                   ; $5a6a: $22
    adc d                                         ; $5a6b: $8a
    ld [hl-], a                                   ; $5a6c: $32
    rst $08                                       ; $5a6d: $cf
    sub a                                         ; $5a6e: $97
    rst $38                                       ; $5a6f: $ff
    ld c, $ff                                     ; $5a70: $0e $ff
    inc b                                         ; $5a72: $04
    jr nz, @+$01                                  ; $5a73: $20 $ff

    inc b                                         ; $5a75: $04
    rst $38                                       ; $5a76: $ff
    ld [bc], a                                    ; $5a77: $02
    ld b, b                                       ; $5a78: $40
    nop                                           ; $5a79: $00
    add b                                         ; $5a7a: $80
    xor d                                         ; $5a7b: $aa
    nop                                           ; $5a7c: $00
    ret nc                                        ; $5a7d: $d0

    rst $38                                       ; $5a7e: $ff
    add b                                         ; $5a7f: $80
    rst $38                                       ; $5a80: $ff

jr_0c5_5a81:
    ld c, b                                       ; $5a81: $48
    rst $38                                       ; $5a82: $ff
    nop                                           ; $5a83: $00
    rst $38                                       ; $5a84: $ff
    nop                                           ; $5a85: $00
    ld b, b                                       ; $5a86: $40
    rst $38                                       ; $5a87: $ff
    inc b                                         ; $5a88: $04
    ei                                            ; $5a89: $fb
    dec b                                         ; $5a8a: $05
    dec d                                         ; $5a8b: $15
    add b                                         ; $5a8c: $80
    ld a, [hl+]                                   ; $5a8d: $2a
    nop                                           ; $5a8e: $00
    adc a                                         ; $5a8f: $8f
    ccf                                           ; $5a90: $3f
    push bc                                       ; $5a91: $c5
    ccf                                           ; $5a92: $3f
    adc a                                         ; $5a93: $8f
    ccf                                           ; $5a94: $3f
    rst $10                                       ; $5a95: $d7
    ccf                                           ; $5a96: $3f
    nop                                           ; $5a97: $00
    rst $08                                       ; $5a98: $cf
    ccf                                           ; $5a99: $3f
    sub a                                         ; $5a9a: $97
    ld a, a                                       ; $5a9b: $7f
    ld d, h                                       ; $5a9c: $54
    ld d, l                                       ; $5a9d: $55
    xor a                                         ; $5a9e: $af
    xor a                                         ; $5a9f: $af
    db $10                                        ; $5aa0: $10
    ld d, l                                       ; $5aa1: $55
    ld d, l                                       ; $5aa2: $55
    rst $38                                       ; $5aa3: $ff
    ld bc, $0130                                  ; $5aa4: $01 $30 $01
    ld d, h                                       ; $5aa7: $54
    nop                                           ; $5aa8: $00
    ld a, [$0100]                                 ; $5aa9: $fa $00 $01
    ld a, [hl]                                    ; $5aac: $7e
    ld hl, $01fe                                  ; $5aad: $21 $fe $01
    cp $09                                        ; $5ab0: $fe $09
    or $08                                        ; $5ab2: $f6 $08
    ld hl, $01de                                  ; $5ab4: $21 $de $01
    cp $a4                                        ; $5ab7: $fe $a4
    ld [$7f05], sp                                ; $5ab9: $08 $05 $7f
    ld c, a                                       ; $5abc: $4f
    add b                                         ; $5abd: $80
    inc b                                         ; $5abe: $04
    nop                                           ; $5abf: $00
    rst $08                                       ; $5ac0: $cf

jr_0c5_5ac1:
    ccf                                           ; $5ac1: $3f
    rla                                           ; $5ac2: $17
    ld a, a                                       ; $5ac3: $7f
    adc a                                         ; $5ac4: $8f
    ld a, a                                       ; $5ac5: $7f
    ld hl, sp+$1d                                 ; $5ac6: $f8 $1d
    rst $38                                       ; $5ac8: $ff
    ld sp, hl                                     ; $5ac9: $f9
    cp $a8                                        ; $5aca: $fe $a8
    ld [$08ac], sp                                ; $5acc: $08 $ac $08
    ld a, [bc]                                    ; $5acf: $0a
    ld [$6649], sp                                ; $5ad0: $08 $49 $66
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    rst $38                                       ; $5ad6: $ff
    ld bc, $48ff                                  ; $5ad7: $01 $ff $48
    rst $30                                       ; $5ada: $f7
    ld bc, $01fe                                  ; $5adb: $01 $fe $01
    nop                                           ; $5ade: $00
    rst $38                                       ; $5adf: $ff
    ld de, $08ef                                  ; $5ae0: $11 $ef $08
    rst $30                                       ; $5ae3: $f7
    add d                                         ; $5ae4: $82
    ld l, d                                       ; $5ae5: $6a
    nop                                           ; $5ae6: $00
    db $10                                        ; $5ae7: $10

jr_0c5_5ae8:
    ld [de], a                                    ; $5ae8: $12
    db $ed                                        ; $5ae9: $ed
    nop                                           ; $5aea: $00
    ld d, $10                                     ; $5aeb: $16 $10
    jr nz, @-$1f                                  ; $5aed: $20 $df

    inc h                                         ; $5aef: $24
    sla b                                         ; $5af0: $cb $20
    add hl, sp                                    ; $5af2: $39
    rst $00                                       ; $5af3: $c7
    inc b                                         ; $5af4: $04
    ld [$cb34], sp                                ; $5af5: $08 $34 $cb
    jr c, jr_0c5_5ac1                             ; $5af8: $38 $c7

    inc [hl]                                      ; $5afa: $34
    jr nz, jr_0c5_5ae8                            ; $5afb: $20 $eb

    ld e, h                                       ; $5afd: $5c

jr_0c5_5afe:
    and $00                                       ; $5afe: $e6 $00
    ld [hl], b                                    ; $5b00: $70
    rst $38                                       ; $5b01: $ff
    ld a, [c]                                     ; $5b02: $f2
    db $fd                                        ; $5b03: $fd
    ld [hl], b                                    ; $5b04: $70
    add d                                         ; $5b05: $82
    xor $00                                       ; $5b06: $ee $00
    ld a, b                                       ; $5b08: $78
    rst $38                                       ; $5b09: $ff
    ld a, [c]                                     ; $5b0a: $f2
    rst $38                                       ; $5b0b: $ff
    ld h, b                                       ; $5b0c: $60
    sub [hl]                                      ; $5b0d: $96
    nop                                           ; $5b0e: $00
    adc b                                         ; $5b0f: $88
    ld b, b                                       ; $5b10: $40
    ld a, a                                       ; $5b11: $7f
    inc l                                         ; $5b12: $2c
    ld [$ff00], sp                                ; $5b13: $08 $00 $ff
    ld [$41f7], sp                                ; $5b16: $08 $f7 $41
    cp [hl]                                       ; $5b19: $be
    adc e                                         ; $5b1a: $8b
    ld [hl], $08                                  ; $5b1b: $36 $08
    jr nz, jr_0c5_5afe                            ; $5b1d: $20 $df

    ld [bc], a                                    ; $5b1f: $02
    cp d                                          ; $5b20: $ba
    nop                                           ; $5b21: $00
    ld b, c                                       ; $5b22: $41
    cp h                                          ; $5b23: $bc
    nop                                           ; $5b24: $00
    ld e, b                                       ; $5b25: $58
    nop                                           ; $5b26: $00
    ld b, b                                       ; $5b27: $40
    cp $a4                                        ; $5b28: $fe $a4
    ld [$7f8f], sp                                ; $5b2a: $08 $8f $7f
    rst $18                                       ; $5b2d: $df
    rst $38                                       ; $5b2e: $ff
    ld l, a                                       ; $5b2f: $6f
    rst $38                                       ; $5b30: $ff
    ld d, b                                       ; $5b31: $50
    sbc a                                         ; $5b32: $9f
    call nz, Call_000_1200                        ; $5b33: $c4 $00 $12
    xor c                                         ; $5b36: $a9

jr_0c5_5b37:
    jr nc, jr_0c5_5b37                            ; $5b37: $30 $fe

    rst $38                                       ; $5b39: $ff
    db $f4                                        ; $5b3a: $f4
    rst $38                                       ; $5b3b: $ff
    ld h, b                                       ; $5b3c: $60
    adc d                                         ; $5b3d: $8a
    db $e4                                        ; $5b3e: $e4
    nop                                           ; $5b3f: $00
    xor b                                         ; $5b40: $a8
    ld [$fe81], sp                                ; $5b41: $08 $81 $fe
    ld d, c                                       ; $5b44: $51
    cp $81                                        ; $5b45: $fe $81

jr_0c5_5b47:
    jr jr_0c5_5b47                                ; $5b47: $18 $fe

    dec b                                         ; $5b49: $05
    ld a, [$08b0]                                 ; $5b4a: $fa $b0 $08
    ld l, $08                                     ; $5b4d: $2e $08
    rra                                           ; $5b4f: $1f
    rst $38                                       ; $5b50: $ff
    adc a                                         ; $5b51: $8f
    add d                                         ; $5b52: $82
    pop de                                        ; $5b53: $d1
    nop                                           ; $5b54: $00
    ccf                                           ; $5b55: $3f
    rst $38                                       ; $5b56: $ff
    sub d                                         ; $5b57: $92
    rst $38                                       ; $5b58: $ff
    dec h                                         ; $5b59: $25
    ld d, h                                       ; $5b5a: $54
    ld de, $a2fc                                  ; $5b5b: $11 $fc $a2
    ld e, d                                       ; $5b5e: $5a
    ld bc, $30fa                                  ; $5b5f: $01 $fa $30
    nop                                           ; $5b62: $00
    xor c                                         ; $5b63: $a9
    rst $38                                       ; $5b64: $ff
    db $10                                        ; $5b65: $10
    ld b, $01                                     ; $5b66: $06 $01
    ld [bc], a                                    ; $5b68: $02
    ld bc, $80fd                                  ; $5b69: $01 $fd $80
    ld a, a                                       ; $5b6c: $7f
    db $10                                        ; $5b6d: $10
    rst $28                                       ; $5b6e: $ef
    ld b, d                                       ; $5b6f: $42
    cp a                                          ; $5b70: $bf
    and d                                         ; $5b71: $a2
    ld [$0432], sp                                ; $5b72: $08 $32 $04
    ei                                            ; $5b75: $fb
    ld h, [hl]                                    ; $5b76: $66
    ld [$011a], sp                                ; $5b77: $08 $1a $01
    cp a                                          ; $5b7a: $bf
    ld [bc], a                                    ; $5b7b: $02
    ld l, h                                       ; $5b7c: $6c
    nop                                           ; $5b7d: $00
    ld b, b                                       ; $5b7e: $40
    add c                                         ; $5b7f: $81
    inc d                                         ; $5b80: $14
    nop                                           ; $5b81: $00
    inc hl                                        ; $5b82: $23
    rst $38                                       ; $5b83: $ff
    ld [$21ff], sp                                ; $5b84: $08 $ff $21
    rst $18                                       ; $5b87: $df
    inc d                                         ; $5b88: $14
    db $10                                        ; $5b89: $10
    adc b                                         ; $5b8a: $88

jr_0c5_5b8b:
    ld a, [hl]                                    ; $5b8b: $7e
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    rst $38                                       ; $5b8e: $ff
    jp z, $0148                                   ; $5b8f: $ca $48 $01

    nop                                           ; $5b92: $00
    rst $38                                       ; $5b93: $ff
    ld hl, $de61                                  ; $5b94: $21 $61 $de
    ret nc                                        ; $5b97: $d0

    ld [$083e], sp                                ; $5b98: $08 $3e $08
    nop                                           ; $5b9b: $00
    rst $38                                       ; $5b9c: $ff
    jr z, @-$07                                   ; $5b9d: $28 $f7

    sbc b                                         ; $5b9f: $98
    ld [$a8e5], sp                                ; $5ba0: $08 $e5 $a8
    ld [$00b4], sp                                ; $5ba3: $08 $b4 $00
    ld d, [hl]                                    ; $5ba6: $56
    ld bc, $ef90                                  ; $5ba7: $01 $90 $ef
    db $ec                                        ; $5baa: $ec
    db $10                                        ; $5bab: $10
    cp $5c                                        ; $5bac: $fe $5c
    ld [$14f1], sp                                ; $5bae: $08 $f1 $14
    ld [$00c2], sp                                ; $5bb1: $08 $c2 $00
    cp b                                          ; $5bb4: $b8
    nop                                           ; $5bb5: $00
    ld d, $09                                     ; $5bb6: $16 $09
    ld [$80f7], sp                                ; $5bb8: $08 $f7 $80

jr_0c5_5bbb:
    call nz, Call_0c5_7810                        ; $5bbb: $c4 $10 $78
    ld [$0832], sp                                ; $5bbe: $08 $32 $08
    inc c                                         ; $5bc1: $0c
    ld bc, $0922                                  ; $5bc2: $01 $22 $09
    ld e, d                                       ; $5bc5: $5a
    add hl, bc                                    ; $5bc6: $09
    ld bc, $15fe                                  ; $5bc7: $01 $fe $15
    ld a, c                                       ; $5bca: $79
    rst $28                                       ; $5bcb: $ef
    ld [hl], b                                    ; $5bcc: $70
    nop                                           ; $5bcd: $00
    adc [hl]                                      ; $5bce: $8e
    ld bc, $0126                                  ; $5bcf: $01 $26 $01
    ld bc, $0800                                  ; $5bd2: $01 $00 $08
    ld c, d                                       ; $5bd5: $4a
    ld b, $00                                     ; $5bd6: $06 $00
    nop                                           ; $5bd8: $00
    and d                                         ; $5bd9: $a2
    nop                                           ; $5bda: $00
    ld b, l                                       ; $5bdb: $45
    nop                                           ; $5bdc: $00
    xor e                                         ; $5bdd: $ab
    nop                                           ; $5bde: $00
    rst $18                                       ; $5bdf: $df
    db $10                                        ; $5be0: $10
    ld b, b                                       ; $5be1: $40
    db $10                                        ; $5be2: $10
    ld [de], a                                    ; $5be3: $12
    nop                                           ; $5be4: $00
    ld hl, $5400                                  ; $5be5: $21 $00 $54
    nop                                           ; $5be8: $00
    xor d                                         ; $5be9: $aa
    nop                                           ; $5bea: $00
    ld h, b                                       ; $5beb: $60
    ld a, l                                       ; $5bec: $7d
    jr jr_0c5_5c00                                ; $5bed: $18 $11

    jr nz, @+$0a                                  ; $5bef: $20 $08

    ld c, b                                       ; $5bf1: $48
    nop                                           ; $5bf2: $00

jr_0c5_5bf3:
    ld [bc], a                                    ; $5bf3: $02
    nop                                           ; $5bf4: $00
    jr z, jr_0c5_5c09                             ; $5bf5: $28 $12

    nop                                           ; $5bf7: $00
    call nc, Call_000_3000                        ; $5bf8: $d4 $00 $30
    nop                                           ; $5bfb: $00
    add b                                         ; $5bfc: $80
    add b                                         ; $5bfd: $80
    ld [hl+], a                                   ; $5bfe: $22
    db $10                                        ; $5bff: $10

jr_0c5_5c00:
    ld [hl+], a                                   ; $5c00: $22
    ld [bc], a                                    ; $5c01: $02
    nop                                           ; $5c02: $00

jr_0c5_5c03:
    ld [$9500], sp                                ; $5c03: $08 $00 $95
    nop                                           ; $5c06: $00
    ld a, [hl-]                                   ; $5c07: $3a
    ld b, b                                       ; $5c08: $40

jr_0c5_5c09:
    jr jr_0c5_5b8b                                ; $5c09: $18 $80

    inc b                                         ; $5c0b: $04
    sub b                                         ; $5c0c: $90
    nop                                           ; $5c0d: $00
    ld b, d                                       ; $5c0e: $42
    nop                                           ; $5c0f: $00
    xor b                                         ; $5c10: $a8
    inc [hl]                                      ; $5c11: $34
    nop                                           ; $5c12: $00
    ei                                            ; $5c13: $fb
    nop                                           ; $5c14: $00
    ld b, c                                       ; $5c15: $41
    cp $4e                                        ; $5c16: $fe $4e
    nop                                           ; $5c18: $00
    ld [$8080], sp                                ; $5c19: $08 $80 $80
    nop                                           ; $5c1c: $00
    add hl, bc                                    ; $5c1d: $09
    ld b, d                                       ; $5c1e: $42
    nop                                           ; $5c1f: $00
    dec l                                         ; $5c20: $2d
    xor a                                         ; $5c21: $af
    nop                                           ; $5c22: $00
    ld e, d                                       ; $5c23: $5a
    ld bc, $5c01                                  ; $5c24: $01 $01 $5c
    ld de, $0894                                  ; $5c27: $11 $94 $08
    ld b, b                                       ; $5c2a: $40
    ld a, [bc]                                    ; $5c2b: $0a
    jr nz, jr_0c5_5bbb                            ; $5c2c: $20 $8d

    ld l, [hl]                                    ; $5c2e: $6e
    add hl, de                                    ; $5c2f: $19
    ld [bc], a                                    ; $5c30: $02
    rst $38                                       ; $5c31: $ff
    jr z, jr_0c5_5c40                             ; $5c32: $28 $0c

    ld de, $197c                                  ; $5c34: $11 $7c $19
    ld b, c                                       ; $5c37: $41
    ld a, [de]                                    ; $5c38: $1a
    ld [bc], a                                    ; $5c39: $02
    ld e, e                                       ; $5c3a: $5b
    ld d, b                                       ; $5c3b: $50
    add [hl]                                      ; $5c3c: $86
    ld de, $3204                                  ; $5c3d: $11 $04 $32

jr_0c5_5c40:
    jr nz, jr_0c5_5c5a                            ; $5c40: $20 $18

    add hl, de                                    ; $5c42: $19
    add b                                         ; $5c43: $80
    cp $10                                        ; $5c44: $fe $10
    db $fc                                        ; $5c46: $fc
    jr @-$59                                      ; $5c47: $18 $a5

    ret c                                         ; $5c49: $d8

    add hl, bc                                    ; $5c4a: $09
    sub b                                         ; $5c4b: $90
    ld d, b                                       ; $5c4c: $50
    jr nc, jr_0c5_5ca0                            ; $5c4d: $30 $51

    cp [hl]                                       ; $5c4f: $be
    ld d, b                                       ; $5c50: $50
    ld l, b                                       ; $5c51: $68
    inc h                                         ; $5c52: $24
    or b                                          ; $5c53: $b0
    ld de, $40ae                                  ; $5c54: $11 $ae $40
    ld e, b                                       ; $5c57: $58
    ld b, b                                       ; $5c58: $40
    ld b, b                                       ; $5c59: $40

jr_0c5_5c5a:
    ld b, b                                       ; $5c5a: $40
    ld b, c                                       ; $5c5b: $41
    add d                                         ; $5c5c: $82
    ld [bc], a                                    ; $5c5d: $02
    add [hl]                                      ; $5c5e: $86
    ld a, [bc]                                    ; $5c5f: $0a
    xor $19                                       ; $5c60: $ee $19
    ld bc, $30f5                                  ; $5c62: $01 $f5 $30
    db $10                                        ; $5c65: $10
    sub d                                         ; $5c66: $92
    jr z, jr_0c5_5c03                             ; $5c67: $28 $9a

    ld a, [bc]                                    ; $5c69: $0a
    inc e                                         ; $5c6a: $1c
    jr z, jr_0c5_5c8f                             ; $5c6b: $28 $22

    xor [hl]                                      ; $5c6d: $ae
    ld [bc], a                                    ; $5c6e: $02
    jr z, jr_0c5_5bf3                             ; $5c6f: $28 $82

    ld de, $2228                                  ; $5c71: $11 $28 $22
    rst $18                                       ; $5c74: $df
    add b                                         ; $5c75: $80
    jr jr_0c5_5c90                                ; $5c76: $18 $18

    cp h                                          ; $5c78: $bc
    ld [bc], a                                    ; $5c79: $02
    inc d                                         ; $5c7a: $14
    db $eb                                        ; $5c7b: $eb
    jr nz, jr_0c5_5cba                            ; $5c7c: $20 $3c

    rst $18                                       ; $5c7e: $df
    ld [$01c0], sp                                ; $5c7f: $08 $c0 $01
    adc [hl]                                      ; $5c82: $8e
    add hl, bc                                    ; $5c83: $09
    ld a, [de]                                    ; $5c84: $1a
    ld a, [bc]                                    ; $5c85: $0a
    sbc [hl]                                      ; $5c86: $9e
    ld bc, $84ff                                  ; $5c87: $01 $ff $84
    and $40                                       ; $5c8a: $e6 $40
    add hl, bc                                    ; $5c8c: $09
    add sp, $02                                   ; $5c8d: $e8 $02

jr_0c5_5c8f:
    add [hl]                                      ; $5c8f: $86

jr_0c5_5c90:
    add hl, bc                                    ; $5c90: $09
    ld b, b                                       ; $5c91: $40
    cp a                                          ; $5c92: $bf
    adc h                                         ; $5c93: $8c
    add hl, bc                                    ; $5c94: $09
    inc [hl]                                      ; $5c95: $34
    ld a, [bc]                                    ; $5c96: $0a
    inc bc                                        ; $5c97: $03
    or c                                          ; $5c98: $b1
    or d                                          ; $5c99: $b2
    ld de, $ec80                                  ; $5c9a: $11 $80 $ec
    ld bc, $0960                                  ; $5c9d: $01 $60 $09

jr_0c5_5ca0:
    ld b, b                                       ; $5ca0: $40
    cp a                                          ; $5ca1: $bf
    ld [de], a                                    ; $5ca2: $12
    ld hl, sp+$02                                 ; $5ca3: $f8 $02
    ld b, l                                       ; $5ca5: $45
    inc d                                         ; $5ca6: $14
    and h                                         ; $5ca7: $a4
    ld de, $ef91                                  ; $5ca8: $11 $91 $ef
    jr nz, jr_0c5_5caf                            ; $5cab: $20 $02

    ld [de], a                                    ; $5cad: $12
    inc d                                         ; $5cae: $14

jr_0c5_5caf:
    ld l, [hl]                                    ; $5caf: $6e
    ld [de], a                                    ; $5cb0: $12
    ld a, c                                       ; $5cb1: $79
    db $10                                        ; $5cb2: $10
    add h                                         ; $5cb3: $84
    ld bc, $0852                                  ; $5cb4: $01 $52 $08
    db $ec                                        ; $5cb7: $ec
    jr jr_0c5_5d00                                ; $5cb8: $18 $46

jr_0c5_5cba:
    nop                                           ; $5cba: $00
    rst $30                                       ; $5cbb: $f7
    ld b, d                                       ; $5cbc: $42
    ld c, $01                                     ; $5cbd: $0e $01
    ld [hl], $04                                  ; $5cbf: $36 $04
    ei                                            ; $5cc1: $fb
    jr c, jr_0c5_5cc4                             ; $5cc2: $38 $00

jr_0c5_5cc4:
    ldh a, [rNR11]                                ; $5cc4: $f0 $11
    add h                                         ; $5cc6: $84
    ret c                                         ; $5cc7: $d8

    ld [de], a                                    ; $5cc8: $12
    call c, Call_000_100a                         ; $5cc9: $dc $0a $10
    adc b                                         ; $5ccc: $88
    inc [hl]                                      ; $5ccd: $34
    ld [bc], a                                    ; $5cce: $02
    ld b, b                                       ; $5ccf: $40
    rst $38                                       ; $5cd0: $ff
    ld a, [bc]                                    ; $5cd1: $0a
    inc l                                         ; $5cd2: $2c
    ld de, $df20                                  ; $5cd3: $11 $20 $df
    add hl, bc                                    ; $5cd6: $09
    call nc, $035a                                ; $5cd7: $d4 $5a $03
    sbc $28                                       ; $5cda: $de $28
    db $10                                        ; $5cdc: $10
    ld d, d                                       ; $5cdd: $52
    ld [de], a                                    ; $5cde: $12
    ld a, [bc]                                    ; $5cdf: $0a
    ld b, b                                       ; $5ce0: $40
    ld [bc], a                                    ; $5ce1: $02
    inc b                                         ; $5ce2: $04
    ei                                            ; $5ce3: $fb
    inc e                                         ; $5ce4: $1c
    ld [$81f7], sp                                ; $5ce5: $08 $f7 $81
    ld [hl], d                                    ; $5ce8: $72
    inc bc                                        ; $5ce9: $03
    ld [de], a                                    ; $5cea: $12
    ld a, [bc]                                    ; $5ceb: $0a
    ld [hl], h                                    ; $5cec: $74
    add hl, bc                                    ; $5ced: $09
    sub b                                         ; $5cee: $90
    ld a, a                                       ; $5cef: $7f
    inc l                                         ; $5cf0: $2c
    inc b                                         ; $5cf1: $04
    ei                                            ; $5cf2: $fb
    ld a, [hl-]                                   ; $5cf3: $3a
    ld a, [bc]                                    ; $5cf4: $0a
    add hl, bc                                    ; $5cf5: $09
    ld l, $02                                     ; $5cf6: $2e $02
    ld a, [de]                                    ; $5cf8: $1a
    nop                                           ; $5cf9: $00
    ld a, [hl]                                    ; $5cfa: $7e
    nop                                           ; $5cfb: $00
    dec de                                        ; $5cfc: $1b
    rst $38                                       ; $5cfd: $ff
    sub h                                         ; $5cfe: $94
    ld l, e                                       ; $5cff: $6b

jr_0c5_5d00:
    ld a, [hl]                                    ; $5d00: $7e
    ld a, [bc]                                    ; $5d01: $0a
    ld h, $0b                                     ; $5d02: $26 $0b
    ld [de], a                                    ; $5d04: $12
    ld [hl-], a                                   ; $5d05: $32
    ld [de], a                                    ; $5d06: $12
    ld d, h                                       ; $5d07: $54
    nop                                           ; $5d08: $00
    dec de                                        ; $5d09: $1b
    cp a                                          ; $5d0a: $bf
    ld b, $fd                                     ; $5d0b: $06 $fd

jr_0c5_5d0d:
    add h                                         ; $5d0d: $84
    nop                                           ; $5d0e: $00
    ld a, [hl-]                                   ; $5d0f: $3a
    inc bc                                        ; $5d10: $03
    ld [$2168], sp                                ; $5d11: $08 $68 $21
    ld [de], a                                    ; $5d14: $12
    ld a, [bc]                                    ; $5d15: $0a
    cp d                                          ; $5d16: $ba
    ld [hl], d                                    ; $5d17: $72
    add hl, de                                    ; $5d18: $19
    add b                                         ; $5d19: $80
    ld a, [c]                                     ; $5d1a: $f2
    nop                                           ; $5d1b: $00
    add b                                         ; $5d1c: $80
    add hl, bc                                    ; $5d1d: $09
    halt                                          ; $5d1e: $76
    ld a, [de]                                    ; $5d1f: $1a
    inc b                                         ; $5d20: $04
    cp h                                          ; $5d21: $bc
    dec bc                                        ; $5d22: $0b
    rst $38                                       ; $5d23: $ff
    ld h, [hl]                                    ; $5d24: $66
    sub c                                         ; $5d25: $91
    jp nz, Jump_0c5_7c31                          ; $5d26: $c2 $31 $7c

    ld a, [bc]                                    ; $5d29: $0a
    dec b                                         ; $5d2a: $05
    ld a, [$0b7a]                                 ; $5d2b: $fa $7a $0b
    sub $09                                       ; $5d2e: $d6 $09
    add b                                         ; $5d30: $80
    ld b, d                                       ; $5d31: $42
    ld a, a                                       ; $5d32: $7f
    cp d                                          ; $5d33: $ba
    ld a, [bc]                                    ; $5d34: $0a
    nop                                           ; $5d35: $00
    rst $38                                       ; $5d36: $ff
    ld d, b                                       ; $5d37: $50
    xor a                                         ; $5d38: $af
    adc b                                         ; $5d39: $88
    inc bc                                        ; $5d3a: $03
    or a                                          ; $5d3b: $b7
    rst $30                                       ; $5d3c: $f7
    ldh [rSC], a                                  ; $5d3d: $e0 $02
    ld hl, sp+$03                                 ; $5d3f: $f8 $03
    or h                                          ; $5d41: $b4
    ld [$19c2], sp                                ; $5d42: $08 $c2 $19
    db $10                                        ; $5d45: $10
    sbc $02                                       ; $5d46: $de $02
    sub h                                         ; $5d48: $94
    ld a, [bc]                                    ; $5d49: $0a
    ld e, h                                       ; $5d4a: $5c
    jr z, jr_0c5_5d92                             ; $5d4b: $28 $45

    inc h                                         ; $5d4d: $24
    sbc $02                                       ; $5d4e: $de $02
    ld hl, $10df                                  ; $5d50: $21 $df $10
    or h                                          ; $5d53: $b4
    inc bc                                        ; $5d54: $03
    ld [hl+], a                                   ; $5d55: $22
    ld h, d                                       ; $5d56: $62
    inc de                                        ; $5d57: $13
    ld h, $80                                     ; $5d58: $26 $80
    ld a, a                                       ; $5d5a: $7f
    and d                                         ; $5d5b: $a2
    ld a, [de]                                    ; $5d5c: $1a
    dec b                                         ; $5d5d: $05
    ld a, [$09a2]                                 ; $5d5e: $fa $a2 $09
    ld [hl+], a                                   ; $5d61: $22
    dec bc                                        ; $5d62: $0b
    ld [hl+], a                                   ; $5d63: $22
    daa                                           ; $5d64: $27
    db $dd                                        ; $5d65: $dd
    db $10                                        ; $5d66: $10
    call nc, $4002                                ; $5d67: $d4 $02 $40
    cp a                                          ; $5d6a: $bf
    ld b, $08                                     ; $5d6b: $06 $08
    ld [hl+], a                                   ; $5d6d: $22
    ld a, [bc]                                    ; $5d6e: $0a
    ld [bc], a                                    ; $5d6f: $02
    dec bc                                        ; $5d70: $0b
    jr nz, @+$06                                  ; $5d71: $20 $04

    rst $38                                       ; $5d73: $ff
    inc d                                         ; $5d74: $14
    ld [$ef50], sp                                ; $5d75: $08 $50 $ef
    add d                                         ; $5d78: $82
    ld a, a                                       ; $5d79: $7f
    jr nz, @-$3c                                  ; $5d7a: $20 $c2

    sub $03                                       ; $5d7c: $d6 $03
    jr nz, jr_0c5_5d98                            ; $5d7e: $20 $18

    ld [bc], a                                    ; $5d80: $02
    rst $38                                       ; $5d81: $ff
    adc b                                         ; $5d82: $88
    ld [hl], a                                    ; $5d83: $77
    cp h                                          ; $5d84: $bc
    dec de                                        ; $5d85: $1b
    add b                                         ; $5d86: $80
    db $db                                        ; $5d87: $db
    ld h, $11                                     ; $5d88: $26 $11
    adc d                                         ; $5d8a: $8a
    jr z, jr_0c5_5d0d                             ; $5d8b: $28 $80

    ld l, b                                       ; $5d8d: $68
    inc b                                         ; $5d8e: $04
    db $f4                                        ; $5d8f: $f4
    ld a, [bc]                                    ; $5d90: $0a
    ld [bc], a                                    ; $5d91: $02

jr_0c5_5d92:
    add [hl]                                      ; $5d92: $86
    add hl, bc                                    ; $5d93: $09
    ld e, $03                                     ; $5d94: $1e $03
    sbc l                                         ; $5d96: $9d
    ret c                                         ; $5d97: $d8

jr_0c5_5d98:
    dec de                                        ; $5d98: $1b
    add b                                         ; $5d99: $80
    ld a, a                                       ; $5d9a: $7f
    ld l, h                                       ; $5d9b: $6c
    dec de                                        ; $5d9c: $1b
    ld d, b                                       ; $5d9d: $50
    dec bc                                        ; $5d9e: $0b
    call nc, $fb10                                ; $5d9f: $d4 $10 $fb
    jr nc, @+$03                                  ; $5da2: $30 $01

    ld c, $fb                                     ; $5da4: $0e $fb
    add b                                         ; $5da6: $80
    ld a, a                                       ; $5da7: $7f
    ld [$0496], sp                                ; $5da8: $08 $96 $04
    sbc h                                         ; $5dab: $9c
    ld a, [bc]                                    ; $5dac: $0a
    ld h, $0b                                     ; $5dad: $26 $0b
    ld hl, $fe7f                                  ; $5daf: $21 $7f $fe
    ld [hl-], a                                   ; $5db2: $32
    dec bc                                        ; $5db3: $0b
    ld l, d                                       ; $5db4: $6a
    dec de                                        ; $5db5: $1b
    cp h                                          ; $5db6: $bc
    inc b                                         ; $5db7: $04
    ld [hl], h                                    ; $5db8: $74
    dec bc                                        ; $5db9: $0b
    ld e, [hl]                                    ; $5dba: $5e
    inc bc                                        ; $5dbb: $03
    ld e, d                                       ; $5dbc: $5a
    inc de                                        ; $5dbd: $13
    inc h                                         ; $5dbe: $24
    inc e                                         ; $5dbf: $1c
    rst $38                                       ; $5dc0: $ff
    inc [hl]                                      ; $5dc1: $34
    inc de                                        ; $5dc2: $13
    ld d, b                                       ; $5dc3: $50
    dec bc                                        ; $5dc4: $0b
    ld a, [de]                                    ; $5dc5: $1a
    ld [$1ad2], sp                                ; $5dc6: $08 $d2 $1a
    inc a                                         ; $5dc9: $3c
    ld bc, $0432                                  ; $5dca: $01 $32 $04
    cp h                                          ; $5dcd: $bc
    dec bc                                        ; $5dce: $0b
    jp nz, Jump_000_2c0a                          ; $5dcf: $c2 $0a $2c

    inc h                                         ; $5dd2: $24
    db $db                                        ; $5dd3: $db
    jr c, jr_0c5_5de2                             ; $5dd4: $38 $0c

    ld [$0114], sp                                ; $5dd6: $08 $14 $01
    adc b                                         ; $5dd9: $88
    dec bc                                        ; $5dda: $0b
    add l                                         ; $5ddb: $85
    ld a, [hl]                                    ; $5ddc: $7e
    cp l                                          ; $5ddd: $bd
    ret nz                                        ; $5dde: $c0

    ld a, [de]                                    ; $5ddf: $1a
    add d                                         ; $5de0: $82
    ld h, h                                       ; $5de1: $64

jr_0c5_5de2:
    inc d                                         ; $5de2: $14
    jp c, $c803                                   ; $5de3: $da $03 $c8

    inc de                                        ; $5de6: $13
    ld e, d                                       ; $5de7: $5a
    inc c                                         ; $5de8: $0c
    inc b                                         ; $5de9: $04
    ld e, h                                       ; $5dea: $5c
    ld de, $e0fc                                  ; $5deb: $11 $fc $e0
    ld de, $0102                                  ; $5dee: $11 $02 $01
    cp $09                                        ; $5df1: $fe $09
    jr c, jr_0c5_5dfe                             ; $5df3: $38 $09

    ld l, h                                       ; $5df5: $6c
    add hl, de                                    ; $5df6: $19
    inc [hl]                                      ; $5df7: $34
    dec bc                                        ; $5df8: $0b
    ld [de], a                                    ; $5df9: $12
    db $ed                                        ; $5dfa: $ed
    sbc b                                         ; $5dfb: $98
    adc [hl]                                      ; $5dfc: $8e
    inc c                                         ; $5dfd: $0c

jr_0c5_5dfe:
    dec b                                         ; $5dfe: $05
    ld a, [$01fc]                                 ; $5dff: $fa $fc $01
    ld b, d                                       ; $5e02: $42
    inc hl                                        ; $5e03: $23
    ld c, b                                       ; $5e04: $48
    rst $30                                       ; $5e05: $f7
    inc h                                         ; $5e06: $24
    ld a, l                                       ; $5e07: $7d
    db $db                                        ; $5e08: $db
    ld b, h                                       ; $5e09: $44
    dec c                                         ; $5e0a: $0d
    inc [hl]                                      ; $5e0b: $34
    dec bc                                        ; $5e0c: $0b
    ld hl, sp+$0b                                 ; $5e0d: $f8 $0b
    ret nc                                        ; $5e0f: $d0

    inc bc                                        ; $5e10: $03
    inc l                                         ; $5e11: $2c
    inc b                                         ; $5e12: $04
    ld de, $04f6                                  ; $5e13: $11 $f6 $04
    add sp, -$38                                  ; $5e16: $e8 $c8
    dec bc                                        ; $5e18: $0b

Jump_0c5_5e19:
    ld c, [hl]                                    ; $5e19: $4e
    dec bc                                        ; $5e1a: $0b
    ldh [rSC], a                                  ; $5e1b: $e0 $02
    or a                                          ; $5e1d: $b7
    ld c, h                                       ; $5e1e: $4c
    inc c                                         ; $5e1f: $0c
    jr nz, @-$1f                                  ; $5e20: $20 $df

    inc b                                         ; $5e22: $04
    cp b                                          ; $5e23: $b8
    ld [hl], $14                                  ; $5e24: $36 $14
    ld [$137e], sp                                ; $5e26: $08 $7e $13
    ld c, h                                       ; $5e29: $4c
    add hl, bc                                    ; $5e2a: $09
    ld a, [de]                                    ; $5e2b: $1a
    dec b                                         ; $5e2c: $05
    xor $44                                       ; $5e2d: $ee $44
    cp e                                          ; $5e2f: $bb
    cp $78                                        ; $5e30: $fe $78
    dec de                                        ; $5e32: $1b
    ld h, [hl]                                    ; $5e33: $66
    jr @+$3e                                      ; $5e34: $18 $3c

    inc c                                         ; $5e36: $0c
    ld [bc], a                                    ; $5e37: $02
    ld a, [bc]                                    ; $5e38: $0a
    jp c, $a609                                   ; $5e39: $da $09 $a6

    dec de                                        ; $5e3c: $1b
    add $09                                       ; $5e3d: $c6 $09
    ld bc, $4af8                                  ; $5e3f: $01 $f8 $4a
    dec b                                         ; $5e42: $05
    ld c, h                                       ; $5e43: $4c
    ld a, [bc]                                    ; $5e44: $0a
    add $0a                                       ; $5e45: $c6 $0a
    ld [hl], b                                    ; $5e47: $70
    inc c                                         ; $5e48: $0c
    ld b, h                                       ; $5e49: $44
    ld [bc], a                                    ; $5e4a: $02

jr_0c5_5e4b:
    rst $18                                       ; $5e4b: $df
    ld [$39f7], sp                                ; $5e4c: $08 $f7 $39
    add l                                         ; $5e4f: $85
    ld a, d                                       ; $5e50: $7a
    sub b                                         ; $5e51: $90
    dec hl                                        ; $5e52: $2b
    jr c, @+$1c                                   ; $5e53: $38 $1a

    sbc b                                         ; $5e55: $98
    dec bc                                        ; $5e56: $0b
    ld de, $3cee                                  ; $5e57: $11 $ee $3c
    ld bc, $4cc2                                  ; $5e5a: $01 $c2 $4c
    ld hl, $0d2a                                  ; $5e5d: $21 $2a $0d
    inc d                                         ; $5e60: $14
    db $eb                                        ; $5e61: $eb
    ld b, d                                       ; $5e62: $42
    cp l                                          ; $5e63: $bd
    ret nc                                        ; $5e64: $d0

    dec de                                        ; $5e65: $1b
    ld [bc], a                                    ; $5e66: $02
    inc l                                         ; $5e67: $2c
    db $fd                                        ; $5e68: $fd
    adc b                                         ; $5e69: $88
    jr nz, jr_0c5_5e7d                            ; $5e6a: $20 $11

    ld [de], a                                    ; $5e6c: $12
    ld a, [$bc23]                                 ; $5e6d: $fa $23 $bc
    inc c                                         ; $5e70: $0c
    jr nz, @+$01                                  ; $5e71: $20 $ff

    inc a                                         ; $5e73: $3c
    add c                                         ; $5e74: $81

jr_0c5_5e75:
    cp $a0                                        ; $5e75: $fe $a0
    dec bc                                        ; $5e77: $0b
    db $ec                                        ; $5e78: $ec
    ld bc, $1502                                  ; $5e79: $01 $02 $15
    ld h, h                                       ; $5e7c: $64

jr_0c5_5e7d:
    ld [hl+], a                                   ; $5e7d: $22
    ld a, a                                       ; $5e7e: $7f
    db $10                                        ; $5e7f: $10
    xor e                                         ; $5e80: $ab
    and $02                                       ; $5e81: $e6 $02
    jr nz, jr_0c5_5e4b                            ; $5e83: $20 $c6

    ld de, $cc41                                  ; $5e85: $11 $41 $cc
    inc d                                         ; $5e88: $14
    ld de, $1430                                  ; $5e89: $11 $30 $14
    inc l                                         ; $5e8c: $2c
    ld c, $17                                     ; $5e8d: $0e $17
    dec b                                         ; $5e8f: $05
    ei                                            ; $5e90: $fb
    inc h                                         ; $5e91: $24
    cp b                                          ; $5e92: $b8
    ld de, $5e10                                  ; $5e93: $11 $10 $5e
    ld [bc], a                                    ; $5e96: $02
    and $0c                                       ; $5e97: $e6 $0c
    db $e4                                        ; $5e99: $e4
    dec c                                         ; $5e9a: $0d
    dec h                                         ; $5e9b: $25
    jr z, jr_0c5_5e75                             ; $5e9c: $28 $d7

    and b                                         ; $5e9e: $a0
    dec e                                         ; $5e9f: $1d
    add h                                         ; $5ea0: $84
    ld a, e                                       ; $5ea1: $7b
    ld a, [$2108]                                 ; $5ea2: $fa $08 $21
    or h                                          ; $5ea5: $b4
    ld hl, $26e1                                  ; $5ea6: $21 $e1 $26
    ld [de], a                                    ; $5ea9: $12
    adc [hl]                                      ; $5eaa: $8e
    ld de, $0cd0                                  ; $5eab: $11 $d0 $0c
    jr @+$01                                      ; $5eae: $18 $ff

    ld b, d                                       ; $5eb0: $42
    cp a                                          ; $5eb1: $bf
    ld hl, sp+$04                                 ; $5eb2: $f8 $04
    ld [hl], d                                    ; $5eb4: $72
    ld a, a                                       ; $5eb5: $7f
    ld d, $0e                                     ; $5eb6: $16 $0e
    ld b, b                                       ; $5eb8: $40
    inc c                                         ; $5eb9: $0c
    halt                                          ; $5eba: $76
    inc c                                         ; $5ebb: $0c
    adc d                                         ; $5ebc: $8a
    ld [hl], a                                    ; $5ebd: $77
    ld d, [hl]                                    ; $5ebe: $56
    dec bc                                        ; $5ebf: $0b
    add c                                         ; $5ec0: $81
    ldh [$9a], a                                  ; $5ec1: $e0 $9a
    ld [$0062], sp                                ; $5ec3: $08 $62 $00
    ld d, $1d                                     ; $5ec6: $16 $1d
    ld d, b                                       ; $5ec8: $50
    cp a                                          ; $5ec9: $bf
    ld b, b                                       ; $5eca: $40
    rst $38                                       ; $5ecb: $ff
    add hl, bc                                    ; $5ecc: $09
    ld d, e                                       ; $5ecd: $53
    or $08                                        ; $5ece: $f6 $08
    dec de                                        ; $5ed0: $1b
    ld c, b                                       ; $5ed1: $48
    ld d, d                                       ; $5ed2: $52
    dec b                                         ; $5ed3: $05
    add b                                         ; $5ed4: $80
    ld a, a                                       ; $5ed5: $7f
    xor b                                         ; $5ed6: $a8
    inc bc                                        ; $5ed7: $03
    sub h                                         ; $5ed8: $94
    dec d                                         ; $5ed9: $15
    cp [hl]                                       ; $5eda: $be
    ret c                                         ; $5edb: $d8

    ld bc, $76bf                                  ; $5edc: $01 $bf $76
    nop                                           ; $5edf: $00
    ret nz                                        ; $5ee0: $c0

    db $10                                        ; $5ee1: $10
    ld a, [bc]                                    ; $5ee2: $0a
    ld [$0b60], sp                                ; $5ee3: $08 $60 $0b
    ld c, b                                       ; $5ee6: $48
    inc bc                                        ; $5ee7: $03
    or $ed                                        ; $5ee8: $f6 $ed
    or b                                          ; $5eea: $b0
    dec de                                        ; $5eeb: $1b
    adc h                                         ; $5eec: $8c
    jr @-$72                                      ; $5eed: $18 $8c

    dec e                                         ; $5eef: $1d
    ld hl, $0672                                  ; $5ef0: $21 $72 $06
    jp z, Jump_000_1019                           ; $5ef3: $ca $19 $10

    ld a, b                                       ; $5ef6: $78
    ld b, $d8                                     ; $5ef7: $06 $d8
    ld h, b                                       ; $5ef9: $60
    inc c                                         ; $5efa: $0c
    ld c, d                                       ; $5efb: $4a
    ld e, $82                                     ; $5efc: $1e $82
    ld c, $14                                     ; $5efe: $0e $14
    ld h, $1c                                     ; $5f00: $26 $1c
    nop                                           ; $5f02: $00
    rst $38                                       ; $5f03: $ff
    ld sp, $88c6                                  ; $5f04: $31 $c6 $88
    ld a, [bc]                                    ; $5f07: $0a
    ld h, h                                       ; $5f08: $64
    ld b, $80                                     ; $5f09: $06 $80
    ld a, a                                       ; $5f0b: $7f
    ld c, b                                       ; $5f0c: $48
    and $05                                       ; $5f0d: $e6 $05
    add $1d                                       ; $5f0f: $c6 $1d
    and h                                         ; $5f11: $a4
    ld a, b                                       ; $5f12: $78
    ld a, e                                       ; $5f13: $7b
    and b                                         ; $5f14: $a0
    ld c, $7a                                     ; $5f15: $0e $7a
    ld c, $8c                                     ; $5f17: $0e $8c
    db $10                                        ; $5f19: $10
    cp d                                          ; $5f1a: $ba
    ld de, $7f80                                  ; $5f1b: $11 $80 $7f
    ld de, $22ed                                  ; $5f1e: $11 $ed $22
    rlca                                          ; $5f21: $07
    ld h, $0d                                     ; $5f22: $26 $0d
    jp nc, $800e                                  ; $5f24: $d2 $0e $80

    ld b, $06                                     ; $5f27: $06 $06
    ld l, h                                       ; $5f29: $6c
    ld a, [de]                                    ; $5f2a: $1a
    ld b, b                                       ; $5f2b: $40
    ld [de], a                                    ; $5f2c: $12
    ld b, $36                                     ; $5f2d: $06 $36
    add d                                         ; $5f2f: $82
    ld a, l                                       ; $5f30: $7d
    ld h, b                                       ; $5f31: $60
    inc l                                         ; $5f32: $2c
    add [hl]                                      ; $5f33: $86
    inc c                                         ; $5f34: $0c
    jr nz, jr_0c5_5f55                            ; $5f35: $20 $1e

    ld bc, $0ee0                                  ; $5f37: $01 $e0 $0e
    ld b, h                                       ; $5f3a: $44
    adc l                                         ; $5f3b: $8d
    inc l                                         ; $5f3c: $2c
    inc d                                         ; $5f3d: $14
    add b                                         ; $5f3e: $80
    rst $38                                       ; $5f3f: $ff
    dec b                                         ; $5f40: $05
    inc c                                         ; $5f41: $0c
    ld d, $24                                     ; $5f42: $16 $24
    inc c                                         ; $5f44: $0c
    ld bc, $322e                                  ; $5f45: $01 $2e $32
    rlca                                          ; $5f48: $07
    ld b, h                                       ; $5f49: $44
    cp a                                          ; $5f4a: $bf
    ld bc, $88fe                                  ; $5f4b: $01 $fe $88
    ld b, d                                       ; $5f4e: $42
    dec d                                         ; $5f4f: $15
    ld [$e416], sp                                ; $5f50: $08 $16 $e4
    ld d, $9f                                     ; $5f53: $16 $9f

jr_0c5_5f55:
    jp c, Jump_0c5_440e                           ; $5f55: $da $0e $44

    cp e                                          ; $5f58: $bb
    ld [hl], d                                    ; $5f59: $72
    inc bc                                        ; $5f5a: $03

jr_0c5_5f5b:
    jr nc, jr_0c5_5f64                            ; $5f5b: $30 $07

    ld d, h                                       ; $5f5d: $54
    ld [$13ba], sp                                ; $5f5e: $08 $ba $13
    jp nc, $dc20                                  ; $5f61: $d2 $20 $dc

jr_0c5_5f64:
    ld d, h                                       ; $5f64: $54
    inc b                                         ; $5f65: $04
    adc h                                         ; $5f66: $8c
    dec b                                         ; $5f67: $05
    sub b                                         ; $5f68: $90
    inc c                                         ; $5f69: $0c
    rlca                                          ; $5f6a: $07
    ld [hl-], a                                   ; $5f6b: $32
    inc e                                         ; $5f6c: $1c
    ld a, [c]                                     ; $5f6d: $f2
    inc bc                                        ; $5f6e: $03
    cp a                                          ; $5f6f: $bf
    ld de, $7af7                                  ; $5f70: $11 $f7 $7a
    dec e                                         ; $5f73: $1d
    adc h                                         ; $5f74: $8c
    dec bc                                        ; $5f75: $0b
    and h                                         ; $5f76: $a4
    dec c                                         ; $5f77: $0d
    ld h, d                                       ; $5f78: $62
    ld d, $22                                     ; $5f79: $16 $22
    sbc h                                         ; $5f7b: $9c
    ld b, $e4                                     ; $5f7c: $06 $e4
    ld [bc], a                                    ; $5f7e: $02
    cp b                                          ; $5f7f: $b8
    dec b                                         ; $5f80: $05
    rra                                           ; $5f81: $1f
    jr z, jr_0c5_5f5b                             ; $5f82: $28 $d7

    ld [hl+], a                                   ; $5f84: $22
    cp [hl]                                       ; $5f85: $be
    dec b                                         ; $5f86: $05
    halt                                          ; $5f87: $76
    rrca                                          ; $5f88: $0f
    inc d                                         ; $5f89: $14
    ld [$7c50], sp                                ; $5f8a: $08 $50 $7c
    add d                                         ; $5f8d: $82
    inc de                                        ; $5f8e: $13
    cp $be                                        ; $5f8f: $fe $be
    inc hl                                        ; $5f91: $23
    jp z, Jump_0c5_6e0d                           ; $5f92: $ca $0d $6e

    add hl, bc                                    ; $5f95: $09
    ld l, $1c                                     ; $5f96: $2e $1c
    ld l, h                                       ; $5f98: $6c
    dec de                                        ; $5f99: $1b
    halt                                          ; $5f9a: $76
    dec de                                        ; $5f9b: $1b
    ld a, [hl]                                    ; $5f9c: $7e
    rrca                                          ; $5f9d: $0f
    sub b                                         ; $5f9e: $90
    ld b, a                                       ; $5f9f: $47
    ld l, a                                       ; $5fa0: $6f
    and d                                         ; $5fa1: $a2
    ld c, $a0                                     ; $5fa2: $0e $a0
    ld e, a                                       ; $5fa4: $5f
    adc c                                         ; $5fa5: $89
    sub b                                         ; $5fa6: $90
    ld bc, $0eac                                  ; $5fa7: $01 $ac $0e
    add [hl]                                      ; $5faa: $86
    ld [$9ebf], sp                                ; $5fab: $08 $bf $9e
    ld e, $14                                     ; $5fae: $1e $14
    ld h, d                                       ; $5fb0: $62
    dec d                                         ; $5fb1: $15
    sub h                                         ; $5fb2: $94
    inc e                                         ; $5fb3: $1c
    ld d, h                                       ; $5fb4: $54
    inc bc                                        ; $5fb5: $03
    ld a, [$7623]                                 ; $5fb6: $fa $23 $76
    rrca                                          ; $5fb9: $0f
    inc l                                         ; $5fba: $2c
    dec c                                         ; $5fbb: $0d
    rst $38                                       ; $5fbc: $ff
    ld a, h                                       ; $5fbd: $7c
    ld [de], a                                    ; $5fbe: $12
    ld c, $0b                                     ; $5fbf: $0e $0b
    sub b                                         ; $5fc1: $90
    ld d, e                                       ; $5fc2: $53
    ld a, [hl+]                                   ; $5fc3: $2a
    inc c                                         ; $5fc4: $0c
    ld a, [$140f]                                 ; $5fc5: $fa $0f $14
    dec de                                        ; $5fc8: $1b
    db $e4                                        ; $5fc9: $e4
    ld hl, $07d6                                  ; $5fca: $21 $d6 $07
    cp h                                          ; $5fcd: $bc
    and d                                         ; $5fce: $a2
    dec c                                         ; $5fcf: $0d
    ld b, d                                       ; $5fd0: $42
    ldh a, [rNR43]                                ; $5fd1: $f0 $22
    ld [hl], h                                    ; $5fd3: $74
    cpl                                           ; $5fd4: $2f
    ld b, b                                       ; $5fd5: $40
    inc a                                         ; $5fd6: $3c
    ld e, [hl]                                    ; $5fd7: $5e
    rra                                           ; $5fd8: $1f
    ld b, b                                       ; $5fd9: $40
    cp a                                          ; $5fda: $bf
    db $fc                                        ; $5fdb: $fc
    add h                                         ; $5fdc: $84
    rrca                                          ; $5fdd: $0f
    ld h, h                                       ; $5fde: $64
    dec bc                                        ; $5fdf: $0b
    call c, Call_0c5_6235                         ; $5fe0: $dc $35 $62
    ld [hl+], a                                   ; $5fe3: $22
    ld [hl], b                                    ; $5fe4: $70
    rrca                                          ; $5fe5: $0f
    ld c, [hl]                                    ; $5fe6: $4e
    rrca                                          ; $5fe7: $0f
    inc h                                         ; $5fe8: $24
    db $db                                        ; $5fe9: $db
    call Call_000_0ed2                            ; $5fea: $cd $d2 $0e
    ldh [$0b], a                                  ; $5fed: $e0 $0b
    ld bc, $e0fe                                  ; $5fef: $01 $fe $e0
    dec bc                                        ; $5ff2: $0b
    halt                                          ; $5ff3: $76
    inc e                                         ; $5ff4: $1c
    ld b, c                                       ; $5ff5: $41
    adc $1f                                       ; $5ff6: $ce $1f
    ldh [$6c], a                                  ; $5ff8: $e0 $6c
    inc hl                                        ; $5ffa: $23
    ld h, b                                       ; $5ffb: $60
    ld e, $06                                     ; $5ffc: $1e $06
    ld d, $7f                                     ; $5ffe: $16 $7f
    ld h, b                                       ; $6000: $60
    add hl, bc                                    ; $6001: $09
    and a                                         ; $6002: $a7
    inc bc                                        ; $6003: $03
    nop                                           ; $6004: $00
    ldh a, [rIE]                                  ; $6005: $f0 $ff
    ld [hl], b                                    ; $6007: $70
    rst $38                                       ; $6008: $ff
    ld a, [c]                                     ; $6009: $f2
    db $fd                                        ; $600a: $fd
    ld [hl], b                                    ; $600b: $70
    rst $38                                       ; $600c: $ff
    ld [$fff0], sp                                ; $600d: $08 $f0 $ff
    ld [hl], h                                    ; $6010: $74
    ei                                            ; $6011: $fb
    inc c                                         ; $6012: $0c
    ld [$cf32], sp                                ; $6013: $08 $32 $cf
    ld h, a                                       ; $6016: $67
    nop                                           ; $6017: $00
    rst $08                                       ; $6018: $cf
    ld [hl-], a                                   ; $6019: $32
    rst $08                                       ; $601a: $cf
    sub a                                         ; $601b: $97
    rst $38                                       ; $601c: $ff
    ld c, $ff                                     ; $601d: $0e $ff
    jr nz, jr_0c5_6023                            ; $601f: $20 $02

    rst $38                                       ; $6021: $ff
    inc b                                         ; $6022: $04

jr_0c5_6023:
    rst $38                                       ; $6023: $ff
    ld [bc], a                                    ; $6024: $02
    rst $38                                       ; $6025: $ff
    ret nz                                        ; $6026: $c0

    ld [bc], a                                    ; $6027: $02
    nop                                           ; $6028: $00
    ret nc                                        ; $6029: $d0

    nop                                           ; $602a: $00
    rst $38                                       ; $602b: $ff
    add b                                         ; $602c: $80
    rst $38                                       ; $602d: $ff
    ld c, b                                       ; $602e: $48
    rst $38                                       ; $602f: $ff
    nop                                           ; $6030: $00
    rst $38                                       ; $6031: $ff
    ld b, b                                       ; $6032: $40
    ld bc, $04ff                                  ; $6033: $01 $ff $04
    ei                                            ; $6036: $fb
    adc a                                         ; $6037: $8f
    ccf                                           ; $6038: $3f
    push bc                                       ; $6039: $c5
    ccf                                           ; $603a: $3f
    inc b                                         ; $603b: $04
    jr jr_0c5_603e                                ; $603c: $18 $00

jr_0c5_603e:
    rst $10                                       ; $603e: $d7
    ccf                                           ; $603f: $3f
    rst $08                                       ; $6040: $cf
    ccf                                           ; $6041: $3f
    sub a                                         ; $6042: $97
    ld a, a                                       ; $6043: $7f
    cp $ff                                        ; $6044: $fe $ff
    sub h                                         ; $6046: $94
    ld bc, $0158                                  ; $6047: $01 $58 $01
    cp $02                                        ; $604a: $fe $02
    ld [$0621], sp                                ; $604c: $08 $21 $06
    nop                                           ; $604f: $00
    add hl, bc                                    ; $6050: $09

jr_0c5_6051:
    or $00                                        ; $6051: $f6 $00
    ld hl, $01de                                  ; $6053: $21 $de $01
    cp $c7                                        ; $6056: $fe $c7
    ccf                                           ; $6058: $3f
    sub e                                         ; $6059: $93
    cpl                                           ; $605a: $2f
    add b                                         ; $605b: $80
    inc b                                         ; $605c: $04
    jr jr_0c5_60aa                                ; $605d: $18 $4b

    ccf                                           ; $605f: $3f
    add l                                         ; $6060: $85
    ld a, a                                       ; $6061: $7f
    ld c, e                                       ; $6062: $4b
    ccf                                           ; $6063: $3f
    ldh a, [$28]                                  ; $6064: $f0 $28
    rst $38                                       ; $6066: $ff
    ld a, [c]                                     ; $6067: $f2
    ld l, h                                       ; $6068: $6c
    nop                                           ; $6069: $00
    db $f4                                        ; $606a: $f4
    ld l, h                                       ; $606b: $6c
    nop                                           ; $606c: $00
    ldh a, [rIE]                                  ; $606d: $f0 $ff
    ld hl, sp-$78                                 ; $606f: $f8 $88
    ld [bc], a                                    ; $6071: $02
    nop                                           ; $6072: $00
    jr nz, @-$1f                                  ; $6073: $20 $df

    ld [bc], a                                    ; $6075: $02
    ld e, d                                       ; $6076: $5a
    nop                                           ; $6077: $00
    add b                                         ; $6078: $80
    ld a, a                                       ; $6079: $7f
    inc b                                         ; $607a: $04
    ld b, c                                       ; $607b: $41
    ei                                            ; $607c: $fb
    ld h, b                                       ; $607d: $60
    db $10                                        ; $607e: $10
    rst $38                                       ; $607f: $ff
    jr nz, jr_0c5_6051                            ; $6080: $20 $cf

    add hl, hl                                    ; $6082: $29
    rst $00                                       ; $6083: $c7
    inc b                                         ; $6084: $04
    jr jr_0c5_60c7                                ; $6085: $18 $40

    add hl, sp                                    ; $6087: $39
    ld [$b900], sp                                ; $6088: $08 $00 $b9
    ld b, a                                       ; $608b: $47
    jr z, @-$37                                   ; $608c: $28 $c7

    dec a                                         ; $608e: $3d
    jp $2910                                      ; $608f: $c3 $10 $29


    rst $00                                       ; $6092: $c7
    ld a, l                                       ; $6093: $7d
    inc b                                         ; $6094: $04
    nop                                           ; $6095: $00
    sub l                                         ; $6096: $95
    db $eb                                        ; $6097: $eb
    ld e, b                                       ; $6098: $58
    rst $38                                       ; $6099: $ff
    inc b                                         ; $609a: $04
    rlca                                          ; $609b: $07
    rst $38                                       ; $609c: $ff
    ldh [rIE], a                                  ; $609d: $e0 $ff
    ld h, b                                       ; $609f: $60
    inc b                                         ; $60a0: $04
    nop                                           ; $60a1: $00
    ld h, c                                       ; $60a2: $61
    cp $16                                        ; $60a3: $fe $16
    ldh a, [rIE]                                  ; $60a5: $f0 $ff
    add sp, -$68                                  ; $60a7: $e8 $98
    nop                                           ; $60a9: $00

jr_0c5_60aa:
    and b                                         ; $60aa: $a0
    cp b                                          ; $60ab: $b8
    nop                                           ; $60ac: $00
    ret nz                                        ; $60ad: $c0

    jr z, @+$7a                                   ; $60ae: $28 $78

    and d                                         ; $60b0: $a2
    ld e, d                                       ; $60b1: $5a
    nop                                           ; $60b2: $00
    ld h, b                                       ; $60b3: $60
    and [hl]                                      ; $60b4: $a6
    nop                                           ; $60b5: $00
    adc b                                         ; $60b6: $88
    ld a, a                                       ; $60b7: $7f
    nop                                           ; $60b8: $00
    xor h                                         ; $60b9: $ac
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    ld b, $ff                                     ; $60bc: $06 $ff
    ld [$41f7], sp                                ; $60be: $08 $f7 $41
    cp [hl]                                       ; $60c1: $be
    ld a, [bc]                                    ; $60c2: $0a
    ld [$0862], sp                                ; $60c3: $08 $62 $08
    inc b                                         ; $60c6: $04

jr_0c5_60c7:
    inc l                                         ; $60c7: $2c
    rst $38                                       ; $60c8: $ff
    ld b, c                                       ; $60c9: $41
    call z, RST_00                                ; $60ca: $cc $00 $00
    sbc [hl]                                      ; $60cd: $9e
    nop                                           ; $60ce: $00
    or h                                          ; $60cf: $b4
    ld [$7f8f], sp                                ; $60d0: $08 $8f $7f
    dec b                                         ; $60d3: $05
    rst $18                                       ; $60d4: $df
    rst $38                                       ; $60d5: $ff
    ld l, a                                       ; $60d6: $6f
    rst $38                                       ; $60d7: $ff
    sbc a                                         ; $60d8: $9f
    call nc, Call_000_1200                        ; $60d9: $d4 $00 $12
    cp [hl]                                       ; $60dc: $be
    jr nc, jr_0c5_60e5                            ; $60dd: $30 $06

    cp $ff                                        ; $60df: $fe $ff
    db $f4                                        ; $60e1: $f4
    rst $38                                       ; $60e2: $ff
    adc d                                         ; $60e3: $8a
    db $f4                                        ; $60e4: $f4

jr_0c5_60e5:
    nop                                           ; $60e5: $00
    cp b                                          ; $60e6: $b8
    ld [$0181], sp                                ; $60e7: $08 $81 $01
    cp $51                                        ; $60ea: $fe $51
    cp $81                                        ; $60ec: $fe $81
    cp $05                                        ; $60ee: $fe $05
    ld a, [$08c0]                                 ; $60f0: $fa $c0 $08
    adc b                                         ; $60f3: $88
    or h                                          ; $60f4: $b4
    ld [$7f05], sp                                ; $60f5: $08 $05 $7f
    ld c, a                                       ; $60f8: $4f
    inc b                                         ; $60f9: $04
    nop                                           ; $60fa: $00
    rst $08                                       ; $60fb: $cf
    ccf                                           ; $60fc: $3f
    rla                                           ; $60fd: $17
    add a                                         ; $60fe: $87
    ld a, [hl-]                                   ; $60ff: $3a
    nop                                           ; $6100: $00
    ld hl, sp-$01                                 ; $6101: $f8 $ff
    ld sp, hl                                     ; $6103: $f9
    cp $b8                                        ; $6104: $fe $b8
    ld [$08bc], sp                                ; $6106: $08 $bc $08
    ld a, [bc]                                    ; $6109: $0a
    ld [$6cb0], sp                                ; $610a: $08 $b0 $6c
    ld [$bc44], sp                                ; $610d: $08 $44 $bc
    nop                                           ; $6110: $00
    ld l, b                                       ; $6111: $68
    ld [$ff00], sp                                ; $6112: $08 $00 $ff
    ld [bc], a                                    ; $6115: $02
    db $fd                                        ; $6116: $fd
    ld [$cb24], sp                                ; $6117: $08 $24 $cb
    add hl, sp                                    ; $611a: $39
    rst $00                                       ; $611b: $c7
    inc b                                         ; $611c: $04
    ld [$cb34], sp                                ; $611d: $08 $34 $cb
    jr c, jr_0c5_6124                             ; $6120: $38 $02

    rst $00                                       ; $6122: $c7
    inc [hl]                                      ; $6123: $34

jr_0c5_6124:
    db $eb                                        ; $6124: $eb
    ld e, h                                       ; $6125: $5c
    rst $38                                       ; $6126: $ff
    jp z, $0148                                   ; $6127: $ca $48 $01

    nop                                           ; $612a: $00
    inc d                                         ; $612b: $14
    rst $38                                       ; $612c: $ff

jr_0c5_612d:
    ld hl, $94de                                  ; $612d: $21 $de $94
    ld [$9810], sp                                ; $6130: $08 $10 $98
    db $10                                        ; $6133: $10
    jr z, jr_0c5_612d                             ; $6134: $28 $f7

    jp nc, Jump_000_0888                          ; $6136: $d2 $88 $08

    jr nc, jr_0c5_6153                            ; $6139: $30 $18

    ld [$0156], sp                                ; $613b: $08 $56 $01
    sub b                                         ; $613e: $90
    rst $28                                       ; $613f: $ef
    or b                                          ; $6140: $b0
    ld [$7a01], sp                                ; $6141: $08 $01 $7a
    cp $1e                                        ; $6144: $fe $1e
    ld [$0844], sp                                ; $6146: $08 $44 $08
    or d                                          ; $6149: $b2
    nop                                           ; $614a: $00
    ld b, [hl]                                    ; $614b: $46
    ld bc, $c204                                  ; $614c: $01 $04 $c2
    db $10                                        ; $614f: $10
    add b                                         ; $6150: $80
    cp h                                          ; $6151: $bc
    or h                                          ; $6152: $b4

jr_0c5_6153:
    db $10                                        ; $6153: $10
    ld [$0832], sp                                ; $6154: $08 $32 $08
    ld a, [hl+]                                   ; $6157: $2a
    ld bc, $0836                                  ; $6158: $01 $36 $08
    ld e, d                                       ; $615b: $5a
    add hl, bc                                    ; $615c: $09
    ld bc, $1cfe                                  ; $615d: $01 $fe $1c
    dec d                                         ; $6160: $15
    rst $28                                       ; $6161: $ef
    ld [bc], a                                    ; $6162: $02
    ld [de], a                                    ; $6163: $12
    nop                                           ; $6164: $00
    inc [hl]                                      ; $6165: $34
    add hl, bc                                    ; $6166: $09
    adc $08                                       ; $6167: $ce $08
    rra                                           ; $6169: $1f
    rst $38                                       ; $616a: $ff
    ld b, c                                       ; $616b: $41
    adc a                                         ; $616c: $8f
    add [hl]                                      ; $616d: $86
    ld bc, $ff3f                                  ; $616e: $01 $3f $ff
    sub d                                         ; $6171: $92
    rst $38                                       ; $6172: $ff
    dec h                                         ; $6173: $25
    ld d, h                                       ; $6174: $54
    ld de, $fc55                                  ; $6175: $11 $55 $fc
    ld e, d                                       ; $6178: $5a
    ld bc, $d0fa                                  ; $6179: $01 $fa $d0
    nop                                           ; $617c: $00
    xor c                                         ; $617d: $a9
    ld [hl], d                                    ; $617e: $72
    db $10                                        ; $617f: $10
    add b                                         ; $6180: $80
    ld a, [bc]                                    ; $6181: $0a
    ld bc, $128a                                  ; $6182: $01 $8a $12
    add hl, bc                                    ; $6185: $09
    ld [bc], a                                    ; $6186: $02
    rst $38                                       ; $6187: $ff
    db $10                                        ; $6188: $10
    ld l, d                                       ; $6189: $6a

jr_0c5_618a:
    nop                                           ; $618a: $00
    inc hl                                        ; $618b: $23
    ld [hl], h                                    ; $618c: $74
    nop                                           ; $618d: $00

jr_0c5_618e:
    ld hl, $66a8                                  ; $618e: $21 $a8 $66
    db $10                                        ; $6191: $10
    ld b, b                                       ; $6192: $40
    add [hl]                                      ; $6193: $86
    stop                                          ; $6194: $10 $00
    ld bc, $0800                                  ; $6196: $01 $00 $08
    ld c, b                                       ; $6199: $48
    nop                                           ; $619a: $00
    ld [bc], a                                    ; $619b: $02
    ld [bc], a                                    ; $619c: $02
    nop                                           ; $619d: $00
    jr z, jr_0c5_61a0                             ; $619e: $28 $00

jr_0c5_61a0:
    call nc, $8400                                ; $61a0: $d4 $00 $84
    ld bc, $1080                                  ; $61a3: $01 $80 $10
    add b                                         ; $61a6: $80
    db $10                                        ; $61a7: $10
    db $10                                        ; $61a8: $10
    inc d                                         ; $61a9: $14
    nop                                           ; $61aa: $00
    ld [hl+], a                                   ; $61ab: $22
    nop                                           ; $61ac: $00
    ld [$1000], sp                                ; $61ad: $08 $00 $10
    sub l                                         ; $61b0: $95
    nop                                           ; $61b1: $00
    ld a, [hl-]                                   ; $61b2: $3a
    jr nz, jr_0c5_61cd                            ; $61b3: $20 $18

    add b                                         ; $61b5: $80
    sub b                                         ; $61b6: $90
    nop                                           ; $61b7: $00
    ld b, d                                       ; $61b8: $42
    ld a, [bc]                                    ; $61b9: $0a
    nop                                           ; $61ba: $00
    xor b                                         ; $61bb: $a8
    nop                                           ; $61bc: $00

jr_0c5_61bd:
    ld d, h                                       ; $61bd: $54
    jr nz, jr_0c5_61c0                            ; $61be: $20 $00

jr_0c5_61c0:
    cp $2e                                        ; $61c0: $fe $2e
    nop                                           ; $61c2: $00
    ld [$8009], sp                                ; $61c3: $08 $09 $80
    add b                                         ; $61c6: $80
    nop                                           ; $61c7: $00
    add hl, bc                                    ; $61c8: $09
    ld c, $00                                     ; $61c9: $0e $00
    xor a                                         ; $61cb: $af
    nop                                           ; $61cc: $00

jr_0c5_61cd:
    ld l, d                                       ; $61cd: $6a
    add hl, bc                                    ; $61ce: $09
    and b                                         ; $61cf: $a0
    ld b, b                                       ; $61d0: $40
    ld [$464a], sp                                ; $61d1: $08 $4a $46
    nop                                           ; $61d4: $00
    and d                                         ; $61d5: $a2
    nop                                           ; $61d6: $00
    ld b, l                                       ; $61d7: $45
    nop                                           ; $61d8: $00
    xor e                                         ; $61d9: $ab
    jr z, jr_0c5_61dc                             ; $61da: $28 $00

jr_0c5_61dc:
    rst $18                                       ; $61dc: $df
    ld a, $10                                     ; $61dd: $3e $10
    ld hl, $002c                                  ; $61df: $21 $2c $00
    xor d                                         ; $61e2: $aa
    nop                                           ; $61e3: $00
    ld a, l                                       ; $61e4: $7d
    db $ec                                        ; $61e5: $ec
    ret c                                         ; $61e6: $d8

    db $10                                        ; $61e7: $10
    adc h                                         ; $61e8: $8c
    ld de, $08d4                                  ; $61e9: $11 $d4 $08
    ld b, b                                       ; $61ec: $40
    ld a, [bc]                                    ; $61ed: $0a
    jr nz, jr_0c5_618e                            ; $61ee: $20 $9e

    add hl, de                                    ; $61f0: $19
    ld [bc], a                                    ; $61f1: $02
    rst $38                                       ; $61f2: $ff
    ld d, l                                       ; $61f3: $55
    jr z, jr_0c5_618a                             ; $61f4: $28 $94

    ld [$acfd], sp                                ; $61f6: $08 $fd $ac
    add hl, de                                    ; $61f9: $19
    ld b, c                                       ; $61fa: $41
    ld e, d                                       ; $61fb: $5a
    ld [bc], a                                    ; $61fc: $02
    ld d, b                                       ; $61fd: $50
    or [hl]                                       ; $61fe: $b6
    ld de, $047d                                  ; $61ff: $11 $7d $04
    ld [hl-], a                                   ; $6202: $32
    jr nz, jr_0c5_621b                            ; $6203: $20 $16

    ld a, [bc]                                    ; $6205: $0a
    cp h                                          ; $6206: $bc
    ld [$093e], sp                                ; $6207: $08 $3e $09
    inc a                                         ; $620a: $3c
    add hl, de                                    ; $620b: $19
    add d                                         ; $620c: $82
    inc l                                         ; $620d: $2c
    add hl, bc                                    ; $620e: $09
    sub [hl]                                      ; $620f: $96
    ld d, b                                       ; $6210: $50
    jr nc, jr_0c5_6264                            ; $6211: $30 $51

    cp [hl]                                       ; $6213: $be
    ld d, b                                       ; $6214: $50
    ld l, b                                       ; $6215: $68
    inc h                                         ; $6216: $24
    ldh [rNR11], a                                ; $6217: $e0 $11
    ld b, b                                       ; $6219: $40
    ld e, b                                       ; $621a: $58

jr_0c5_621b:
    ld b, b                                       ; $621b: $40
    cp e                                          ; $621c: $bb
    ld b, b                                       ; $621d: $40
    ld b, b                                       ; $621e: $40
    ld b, c                                       ; $621f: $41
    jp nz, $c602                                  ; $6220: $c2 $02 $c6

    ld a, [bc]                                    ; $6223: $0a
    ld e, $1a                                     ; $6224: $1e $1a
    ld bc, $1030                                  ; $6226: $01 $30 $10
    sub d                                         ; $6229: $92
    jr z, @-$2a                                   ; $622a: $28 $d4

    jp c, Jump_000_1c0a                           ; $622c: $da $0a $1c

    jr z, jr_0c5_6253                             ; $622f: $28 $22

    xor $02                                       ; $6231: $ee $02
    jr z, jr_0c5_61bd                             ; $6233: $28 $88

Call_0c5_6235:
    ld de, $df22                                  ; $6235: $11 $22 $df
    and b                                         ; $6238: $a0
    add b                                         ; $6239: $80
    jr jr_0c5_6254                                ; $623a: $18 $18

    db $fc                                        ; $623c: $fc
    ld [bc], a                                    ; $623d: $02
    inc d                                         ; $623e: $14
    db $eb                                        ; $623f: $eb
    jr nz, @-$1f                                  ; $6240: $20 $df

    ld [$c2f3], sp                                ; $6242: $08 $f3 $c2
    ld bc, $09ce                                  ; $6245: $01 $ce $09
    or d                                          ; $6248: $b2
    ld a, [bc]                                    ; $6249: $0a
    ld a, $01                                     ; $624a: $3e $01
    rst $38                                       ; $624c: $ff
    add h                                         ; $624d: $84
    ld hl, sp+$19                                 ; $624e: $f8 $19
    add $11                                       ; $6250: $c6 $11
    dec [hl]                                      ; $6252: $35

jr_0c5_6253:
    ld b, b                                       ; $6253: $40

jr_0c5_6254:
    cp a                                          ; $6254: $bf
    call z, $cc09                                 ; $6255: $cc $09 $cc
    ld a, [bc]                                    ; $6258: $0a
    inc bc                                        ; $6259: $03
    ld a, [c]                                     ; $625a: $f2
    ld de, $ee80                                  ; $625b: $11 $80 $ee
    ld bc, $d494                                  ; $625e: $01 $94 $d4
    ld [de], a                                    ; $6261: $12
    cp a                                          ; $6262: $bf
    ld [de], a                                    ; $6263: $12

jr_0c5_6264:
    jr c, @+$05                                   ; $6264: $38 $03

    inc d                                         ; $6266: $14
    db $e4                                        ; $6267: $e4
    ld de, $ef91                                  ; $6268: $11 $91 $ef
    ld d, a                                       ; $626b: $57
    jr nz, jr_0c5_6272                            ; $626c: $20 $04

    ld [de], a                                    ; $626e: $12
    inc d                                         ; $626f: $14
    sbc [hl]                                      ; $6270: $9e
    ld [de], a                                    ; $6271: $12

jr_0c5_6272:
    db $10                                        ; $6272: $10
    call nz, Call_0c5_5201                        ; $6273: $c4 $01 $52
    ld [$18ec], sp                                ; $6276: $08 $ec $18
    sub e                                         ; $6279: $93
    ld b, [hl]                                    ; $627a: $46
    nop                                           ; $627b: $00
    rst $30                                       ; $627c: $f7
    ld b, d                                       ; $627d: $42
    ld c, $01                                     ; $627e: $0e $01
    inc b                                         ; $6280: $04
    ei                                            ; $6281: $fb
    jr c, jr_0c5_6284                             ; $6282: $38 $00

jr_0c5_6284:
    jr nc, jr_0c5_6298                            ; $6284: $30 $12

    ld d, b                                       ; $6286: $50
    add h                                         ; $6287: $84
    ld a, $21                                     ; $6288: $3e $21
    ld bc, $0238                                  ; $628a: $01 $38 $02
    ld [bc], a                                    ; $628d: $02
    db $fd                                        ; $628e: $fd
    ld b, b                                       ; $628f: $40
    rst $38                                       ; $6290: $ff
    ld b, [hl]                                    ; $6291: $46
    ld a, [bc]                                    ; $6292: $0a
    inc l                                         ; $6293: $2c
    ld de, $df20                                  ; $6294: $11 $20 $df
    add hl, bc                                    ; $6297: $09

jr_0c5_6298:
    sbc d                                         ; $6298: $9a
    inc bc                                        ; $6299: $03
    sbc $28                                       ; $629a: $de $28
    db $10                                        ; $629c: $10
    and b                                         ; $629d: $a0
    ld d, h                                       ; $629e: $54
    ld [de], a                                    ; $629f: $12
    ld a, [bc]                                    ; $62a0: $0a
    ld a, [hl]                                    ; $62a1: $7e
    nop                                           ; $62a2: $00
    inc b                                         ; $62a3: $04
    ei                                            ; $62a4: $fb
    ld [$81f7], sp                                ; $62a5: $08 $f7 $81
    db $ed                                        ; $62a8: $ed
    or d                                          ; $62a9: $b2
    inc bc                                        ; $62aa: $03
    ld d, d                                       ; $62ab: $52
    ld a, [bc]                                    ; $62ac: $0a
    ld [hl], h                                    ; $62ad: $74
    add hl, bc                                    ; $62ae: $09
    sub b                                         ; $62af: $90
    ld d, d                                       ; $62b0: $52
    inc bc                                        ; $62b1: $03
    ld a, d                                       ; $62b2: $7a
    ld a, [bc]                                    ; $62b3: $0a
    add hl, bc                                    ; $62b4: $09
    ld l, [hl]                                    ; $62b5: $6e
    ld [bc], a                                    ; $62b6: $02
    add e                                         ; $62b7: $83
    ld a, [de]                                    ; $62b8: $1a

jr_0c5_62b9:
    nop                                           ; $62b9: $00
    ld a, [hl]                                    ; $62ba: $7e
    nop                                           ; $62bb: $00
    rst $38                                       ; $62bc: $ff
    sub h                                         ; $62bd: $94
    ld l, e                                       ; $62be: $6b
    add b                                         ; $62bf: $80
    ld a, [bc]                                    ; $62c0: $0a
    ld a, d                                       ; $62c1: $7a
    ld a, [bc]                                    ; $62c2: $0a
    ld h, d                                       ; $62c3: $62
    ld [de], a                                    ; $62c4: $12
    ld [hl], d                                    ; $62c5: $72
    ld [de], a                                    ; $62c6: $12
    ld d, h                                       ; $62c7: $54
    nop                                           ; $62c8: $00
    cp a                                          ; $62c9: $bf

jr_0c5_62ca:
    ld b, $fd                                     ; $62ca: $06 $fd
    add h                                         ; $62cc: $84
    nop                                           ; $62cd: $00
    rst $30                                       ; $62ce: $f7
    rst $30                                       ; $62cf: $f7
    ld h, d                                       ; $62d0: $62
    ld [bc], a                                    ; $62d1: $02
    ld l, b                                       ; $62d2: $68
    ld hl, $0b86                                  ; $62d3: $21 $86 $0b
    ld [hl], d                                    ; $62d6: $72
    add hl, de                                    ; $62d7: $19
    add b                                         ; $62d8: $80
    ld a, [c]                                     ; $62d9: $f2
    nop                                           ; $62da: $00
    inc a                                         ; $62db: $3c
    ld a, [bc]                                    ; $62dc: $0a
    or [hl]                                       ; $62dd: $b6
    ld a, [de]                                    ; $62de: $1a
    ld e, c                                       ; $62df: $59
    inc b                                         ; $62e0: $04
    sbc h                                         ; $62e1: $9c
    inc de                                        ; $62e2: $13
    sub c                                         ; $62e3: $91
    jp nz, $ec31                                  ; $62e4: $c2 $31 $ec

    ld a, [bc]                                    ; $62e7: $0a
    dec b                                         ; $62e8: $05
    ld a, [$0aa4]                                 ; $62e9: $fa $a4 $0a
    add h                                         ; $62ec: $84
    sub $09                                       ; $62ed: $d6 $09
    add b                                         ; $62ef: $80
    ld a, a                                       ; $62f0: $7f
    ld b, b                                       ; $62f1: $40
    cp a                                          ; $62f2: $bf
    ld [hl], h                                    ; $62f3: $74
    dec bc                                        ; $62f4: $0b
    ld d, b                                       ; $62f5: $50
    xor a                                         ; $62f6: $af
    ld bc, $ff01                                  ; $62f7: $01 $01 $ff
    ld c, b                                       ; $62fa: $48
    or a                                          ; $62fb: $b7
    ld [bc], a                                    ; $62fc: $02
    db $fd                                        ; $62fd: $fd
    add b                                         ; $62fe: $80
    ld l, h                                       ; $62ff: $6c
    ld a, [bc]                                    ; $6300: $0a
    ld a, [$21dc]                                 ; $6301: $fa $dc $21
    ld [$1e09], sp                                ; $6304: $08 $09 $1e
    ld [$044e], sp                                ; $6307: $08 $4e $04
    ld e, h                                       ; $630a: $5c
    jr nz, jr_0c5_6331                            ; $630b: $20 $24

    jr z, jr_0c5_6312                             ; $630d: $28 $03

    ld hl, $df29                                  ; $630f: $21 $29 $df

jr_0c5_6312:
    db $10                                        ; $6312: $10
    jp nc, Jump_000_2202                          ; $6313: $d2 $02 $22

    sub d                                         ; $6316: $92
    inc de                                        ; $6317: $13
    add b                                         ; $6318: $80
    ld a, a                                       ; $6319: $7f
    ld [c], a                                     ; $631a: $e2
    ld a, [de]                                    ; $631b: $1a
    ld [hl-], a                                   ; $631c: $32
    dec b                                         ; $631d: $05
    ld a, [$09a2]                                 ; $631e: $fa $a2 $09
    inc h                                         ; $6321: $24
    dec bc                                        ; $6322: $0b
    ld [hl+], a                                   ; $6323: $22
    db $dd                                        ; $6324: $dd
    xor d                                         ; $6325: $aa
    ld a, [bc]                                    ; $6326: $0a
    ld b, b                                       ; $6327: $40
    ld [hl], h                                    ; $6328: $74
    cp a                                          ; $6329: $bf
    or b                                          ; $632a: $b0
    ld a, [bc]                                    ; $632b: $0a
    ld [hl+], a                                   ; $632c: $22
    ld a, [bc]                                    ; $632d: $0a
    ld b, d                                       ; $632e: $42
    dec bc                                        ; $632f: $0b
    inc b                                         ; $6330: $04

jr_0c5_6331:
    cp [hl]                                       ; $6331: $be
    ld [de], a                                    ; $6332: $12
    ld d, b                                       ; $6333: $50
    rst $28                                       ; $6334: $ef
    jr jr_0c5_62b9                                ; $6335: $18 $82

    ld a, a                                       ; $6337: $7f
    jr nz, @+$36                                  ; $6338: $20 $34

    inc b                                         ; $633a: $04
    jr nz, @+$1a                                  ; $633b: $20 $18

    ld [bc], a                                    ; $633d: $02
    rst $38                                       ; $633e: $ff
    adc b                                         ; $633f: $88
    ld e, e                                       ; $6340: $5b
    ld [hl], a                                    ; $6341: $77
    db $ec                                        ; $6342: $ec
    dec de                                        ; $6343: $1b
    add b                                         ; $6344: $80
    ld h, $11                                     ; $6345: $26 $11
    adc d                                         ; $6347: $8a
    jr z, jr_0c5_62ca                             ; $6348: $28 $80

    xor b                                         ; $634a: $a8
    inc b                                         ; $634b: $04
    inc [hl]                                      ; $634c: $34
    dec bc                                        ; $634d: $0b
    ld [hl], e                                    ; $634e: $73
    ld [bc], a                                    ; $634f: $02
    add [hl]                                      ; $6350: $86
    add hl, bc                                    ; $6351: $09
    ld e, [hl]                                    ; $6352: $5e
    inc bc                                        ; $6353: $03
    ld [$801c], sp                                ; $6354: $08 $1c $80
    ld a, a                                       ; $6357: $7f
    ld d, h                                       ; $6358: $54
    ld a, [de]                                    ; $6359: $1a
    sub b                                         ; $635a: $90
    dec bc                                        ; $635b: $0b
    and c                                         ; $635c: $a1
    call nc, $fb10                                ; $635d: $d4 $10 $fb
    jr nc, jr_0c5_6363                            ; $6360: $30 $01

    ei                                            ; $6362: $fb

jr_0c5_6363:
    add b                                         ; $6363: $80
    ld a, a                                       ; $6364: $7f
    ld [$04d6], sp                                ; $6365: $08 $d6 $04
    call Call_000_0a9c                            ; $6368: $cd $9c $0a
    ld h, [hl]                                    ; $636b: $66
    dec bc                                        ; $636c: $0b
    ld hl, $72fe                                  ; $636d: $21 $fe $72
    dec bc                                        ; $6370: $0b
    xor d                                         ; $6371: $aa
    dec de                                        ; $6372: $1b
    ld [bc], a                                    ; $6373: $02
    or d                                          ; $6374: $b2
    ld [de], a                                    ; $6375: $12
    ld sp, hl                                     ; $6376: $f9
    inc [hl]                                      ; $6377: $34
    dec bc                                        ; $6378: $0b
    sbc d                                         ; $6379: $9a
    inc de                                        ; $637a: $13
    ld d, h                                       ; $637b: $54
    inc e                                         ; $637c: $1c
    ld [hl], h                                    ; $637d: $74
    inc de                                        ; $637e: $13
    ld d, b                                       ; $637f: $50
    dec de                                        ; $6380: $1b
    db $10                                        ; $6381: $10
    rst $28                                       ; $6382: $ef
    jp nc, $f21a                                  ; $6383: $d2 $1a $f2

    inc a                                         ; $6386: $3c
    ld bc, $04c4                                  ; $6387: $01 $c4 $04
    ld [bc], a                                    ; $638a: $02
    add hl, bc                                    ; $638b: $09
    jp nz, Jump_000_240a                          ; $638c: $c2 $0a $24

    db $db                                        ; $638f: $db
    ret nc                                        ; $6390: $d0

    inc c                                         ; $6391: $0c
    ld [$d2cb], sp                                ; $6392: $08 $cb $d2
    inc b                                         ; $6395: $04
    ret z                                         ; $6396: $c8

    dec bc                                        ; $6397: $0b
    add l                                         ; $6398: $85
    ld a, [hl]                                    ; $6399: $7e
    ret nz                                        ; $639a: $c0

    ld a, [de]                                    ; $639b: $1a
    add d                                         ; $639c: $82
    sub h                                         ; $639d: $94
    inc d                                         ; $639e: $14
    ld a, d                                       ; $639f: $7a
    inc bc                                        ; $63a0: $03
    rst $18                                       ; $63a1: $df
    ld [$f214], sp                                ; $63a2: $08 $14 $f2
    inc c                                         ; $63a5: $0c
    inc b                                         ; $63a6: $04
    ld e, h                                       ; $63a7: $5c
    ld de, $11e0                                  ; $63a8: $11 $e0 $11
    ld [bc], a                                    ; $63ab: $02
    ld bc, $09fe                                  ; $63ac: $01 $fe $09
    jr c, jr_0c5_63ba                             ; $63af: $38 $09

    ret                                           ; $63b1: $c9


    ld l, h                                       ; $63b2: $6c
    add hl, de                                    ; $63b3: $19
    inc [hl]                                      ; $63b4: $34
    dec bc                                        ; $63b5: $0b
    ld [de], a                                    ; $63b6: $12
    db $ed                                        ; $63b7: $ed
    cp [hl]                                       ; $63b8: $be
    inc c                                         ; $63b9: $0c

jr_0c5_63ba:
    dec b                                         ; $63ba: $05
    ld a, [$01fc]                                 ; $63bb: $fa $fc $01

jr_0c5_63be:
    add a                                         ; $63be: $87
    ld b, d                                       ; $63bf: $42
    inc hl                                        ; $63c0: $23
    ld c, b                                       ; $63c1: $48
    rst $30                                       ; $63c2: $f7
    inc h                                         ; $63c3: $24
    db $db                                        ; $63c4: $db
    add h                                         ; $63c5: $84
    dec c                                         ; $63c6: $0d
    inc [hl]                                      ; $63c7: $34
    dec bc                                        ; $63c8: $0b
    jr c, jr_0c5_63d7                             ; $63c9: $38 $0c

    sbc $10                                       ; $63cb: $de $10
    inc b                                         ; $63cd: $04
    ld b, b                                       ; $63ce: $40
    inc b                                         ; $63cf: $04
    ld de, $044a                                  ; $63d0: $11 $4a $04
    inc a                                         ; $63d3: $3c
    dec c                                         ; $63d4: $0d
    ld c, [hl]                                    ; $63d5: $4e
    dec bc                                        ; $63d6: $0b

jr_0c5_63d7:
    ldh [rSC], a                                  ; $63d7: $e0 $02
    or a                                          ; $63d9: $b7
    sbc [hl]                                      ; $63da: $9e
    adc d                                         ; $63db: $8a
    ld a, [bc]                                    ; $63dc: $0a
    jr nz, jr_0c5_63be                            ; $63dd: $20 $df

    ld c, b                                       ; $63df: $48
    dec b                                         ; $63e0: $05
    xor [hl]                                      ; $63e1: $ae
    db $10                                        ; $63e2: $10
    ld a, [hl]                                    ; $63e3: $7e
    dec bc                                        ; $63e4: $0b
    or $0b                                        ; $63e5: $f6 $0b
    nop                                           ; $63e7: $00
    rlca                                          ; $63e8: $07
    rst $38                                       ; $63e9: $ff
    ld de, $44ee                                  ; $63ea: $11 $ee $44
    cp e                                          ; $63ed: $bb
    ld b, $1c                                     ; $63ee: $06 $1c
    ld h, [hl]                                    ; $63f0: $66
    jr jr_0c5_646f                                ; $63f1: $18 $7c

Call_0c5_63f3:
    inc c                                         ; $63f3: $0c
    rst $30                                       ; $63f4: $f7
    ld [bc], a                                    ; $63f5: $02
    ld a, [bc]                                    ; $63f6: $0a
    jp c, $a609                                   ; $63f7: $da $09 $a6

    dec de                                        ; $63fa: $1b
    add $09                                       ; $63fb: $c6 $09
    ld bc, $0468                                  ; $63fd: $01 $68 $04
    ld c, h                                       ; $6400: $4c
    ld a, [bc]                                    ; $6401: $0a
    add $0a                                       ; $6402: $c6 $0a
    pop bc                                        ; $6404: $c1
    or b                                          ; $6405: $b0
    inc c                                         ; $6406: $0c
    ld b, h                                       ; $6407: $44

jr_0c5_6408:
    ld [bc], a                                    ; $6408: $02
    rst $18                                       ; $6409: $df
    ld [$85f7], sp                                ; $640a: $08 $f7 $85
    ld a, d                                       ; $640d: $7a
    sub b                                         ; $640e: $90
    dec hl                                        ; $640f: $2b
    adc $38                                       ; $6410: $ce $38
    ld a, [de]                                    ; $6412: $1a
    ld d, h                                       ; $6413: $54
    inc c                                         ; $6414: $0c
    ld de, $3cee                                  ; $6415: $11 $ee $3c
    ld bc, $214c                                  ; $6418: $01 $4c $21
    jp nz, $140d                                  ; $641b: $c2 $0d $14

    ld de, $42eb                                  ; $641e: $11 $eb $42
    cp l                                          ; $6421: $bd
    ret nc                                        ; $6422: $d0

    dec de                                        ; $6423: $1b
    ld [bc], a                                    ; $6424: $02
    db $fd                                        ; $6425: $fd
    adc b                                         ; $6426: $88
    ld [hl], b                                    ; $6427: $70
    inc d                                         ; $6428: $14
    ld h, c                                       ; $6429: $61
    ld [de], a                                    ; $642a: $12
    ld a, [$fc23]                                 ; $642b: $fa $23 $fc
    inc c                                         ; $642e: $0c
    jr nz, @+$01                                  ; $642f: $20 $ff

    add c                                         ; $6431: $81

jr_0c5_6432:
    cp $a0                                        ; $6432: $fe $a0
    dec bc                                        ; $6434: $0b
    push hl                                       ; $6435: $e5
    db $ec                                        ; $6436: $ec
    ld bc, $13f6                                  ; $6437: $01 $f6 $13
    ld h, h                                       ; $643a: $64
    ld [hl+], a                                   ; $643b: $22
    ld a, a                                       ; $643c: $7f
    db $10                                        ; $643d: $10
    and $02                                       ; $643e: $e6 $02
    jr nz, jr_0c5_6408                            ; $6440: $20 $c6

    ld de, $4158                                  ; $6442: $11 $58 $41
    inc c                                         ; $6445: $0c
    dec d                                         ; $6446: $15
    ld de, $1430                                  ; $6447: $11 $30 $14
    ld l, h                                       ; $644a: $6c
    ld c, $05                                     ; $644b: $0e $05
    ei                                            ; $644d: $fb
    inc h                                         ; $644e: $24
    cp c                                          ; $644f: $b9
    cp b                                          ; $6450: $b8
    ld de, $1c10                                  ; $6451: $11 $10 $1c
    ld b, $26                                     ; $6454: $06 $26
    dec c                                         ; $6456: $0d
    ld [bc], a                                    ; $6457: $02
    dec c                                         ; $6458: $0d
    jr z, jr_0c5_6432                             ; $6459: $28 $d7

    ret nc                                        ; $645b: $d0

    dec e                                         ; $645c: $1d
    cpl                                           ; $645d: $2f
    add h                                         ; $645e: $84
    ld a, e                                       ; $645f: $7b
    ld a, [$2108]                                 ; $6460: $fa $08 $21
    or h                                          ; $6463: $b4
    ld hl, $1226                                  ; $6464: $21 $26 $12
    adc [hl]                                      ; $6467: $8e
    ld de, $0e44                                  ; $6468: $11 $44 $0e
    dec bc                                        ; $646b: $0b
    jr @+$01                                      ; $646c: $18 $ff

    ld b, d                                       ; $646e: $42

jr_0c5_646f:
    cp a                                          ; $646f: $bf
    jr c, jr_0c5_6477                             ; $6470: $38 $05

    ld a, a                                       ; $6472: $7f
    ld b, b                                       ; $6473: $40
    dec c                                         ; $6474: $0d
    db $fc                                        ; $6475: $fc
    inc c                                         ; $6476: $0c

jr_0c5_6477:
    sub a                                         ; $6477: $97

jr_0c5_6478:
    halt                                          ; $6478: $76
    inc c                                         ; $6479: $0c
    adc d                                         ; $647a: $8a
    ld [hl], a                                    ; $647b: $77
    ld d, [hl]                                    ; $647c: $56
    dec bc                                        ; $647d: $0b
    add c                                         ; $647e: $81
    sbc d                                         ; $647f: $9a
    ld [$0062], sp                                ; $6480: $08 $62 $00
    ld d, [hl]                                    ; $6483: $56
    dec e                                         ; $6484: $1d
    ld [bc], a                                    ; $6485: $02
    ld d, b                                       ; $6486: $50
    cp a                                          ; $6487: $bf
    ld b, b                                       ; $6488: $40
    rst $38                                       ; $6489: $ff
    add hl, bc                                    ; $648a: $09
    or $08                                        ; $648b: $f6 $08
    dec de                                        ; $648d: $1b
    ld c, b                                       ; $648e: $48
    sbc l                                         ; $648f: $9d
    sub d                                         ; $6490: $92
    dec b                                         ; $6491: $05
    add b                                         ; $6492: $80
    ld a, a                                       ; $6493: $7f
    xor b                                         ; $6494: $a8
    inc bc                                        ; $6495: $03
    add $12                                       ; $6496: $c6 $12
    ret c                                         ; $6498: $d8

    ld bc, $76bf                                  ; $6499: $01 $bf $76
    nop                                           ; $649c: $00
    rst $30                                       ; $649d: $f7
    ret nz                                        ; $649e: $c0

    db $10                                        ; $649f: $10
    ld a, [bc]                                    ; $64a0: $0a
    ld [$0b60], sp                                ; $64a1: $08 $60 $0b
    ld c, b                                       ; $64a4: $48
    inc bc                                        ; $64a5: $03
    or $b0                                        ; $64a6: $f6 $b0
    dec de                                        ; $64a8: $1b
    adc h                                         ; $64a9: $8c
    jr jr_0c5_6478                                ; $64aa: $18 $cc

    dec e                                         ; $64ac: $1d
    ld h, [hl]                                    ; $64ad: $66
    ld hl, $0d40                                  ; $64ae: $21 $40 $0d
    jp z, Jump_000_1011                           ; $64b1: $ca $11 $10

    rst $28                                       ; $64b4: $ef
    ld l, [hl]                                    ; $64b5: $6e
    ld b, $e0                                     ; $64b6: $06 $e0
    inc [hl]                                      ; $64b8: $34
    add d                                         ; $64b9: $82
    add $0e                                       ; $64ba: $c6 $0e
    inc d                                         ; $64bc: $14
    ld h, $1c                                     ; $64bd: $26 $1c
    nop                                           ; $64bf: $00
    rst $38                                       ; $64c0: $ff
    ld sp, $0a88                                  ; $64c1: $31 $88 $0a
    sub h                                         ; $64c4: $94
    ld b, $80                                     ; $64c5: $06 $80
    inc sp                                        ; $64c7: $33
    ld a, a                                       ; $64c8: $7f
    ld c, b                                       ; $64c9: $48
    or d                                          ; $64ca: $b2
    ld [bc], a                                    ; $64cb: $02
    ld b, $1e                                     ; $64cc: $06 $1e
    and h                                         ; $64ce: $a4
    ld a, e                                       ; $64cf: $7b
    and h                                         ; $64d0: $a4
    ld c, $aa                                     ; $64d1: $0e $aa
    ld c, $c7                                     ; $64d3: $0e $c7
    adc h                                         ; $64d5: $8c
    db $10                                        ; $64d6: $10
    cp d                                          ; $64d7: $ba
    ld de, $7f80                                  ; $64d8: $11 $80 $7f
    ld de, $0762                                  ; $64db: $11 $62 $07
    ld h, $0d                                     ; $64de: $26 $0d
    db $fc                                        ; $64e0: $fc
    dec c                                         ; $64e1: $0d
    ld l, c                                       ; $64e2: $69
    add b                                         ; $64e3: $80
    and [hl]                                      ; $64e4: $a6
    dec b                                         ; $64e5: $05
    ld l, h                                       ; $64e6: $6c
    ld a, [de]                                    ; $64e7: $1a
    ld b, b                                       ; $64e8: $40
    ld h, $06                                     ; $64e9: $26 $06
    add d                                         ; $64eb: $82
    ld a, l                                       ; $64ec: $7d
    ld h, b                                       ; $64ed: $60
    inc l                                         ; $64ee: $2c
    cp b                                          ; $64ef: $b8
    add [hl]                                      ; $64f0: $86
    inc c                                         ; $64f1: $0c
    jr nz, jr_0c5_6512                            ; $64f2: $20 $1e

    ld bc, $1e78                                  ; $64f4: $01 $78 $1e
    inc l                                         ; $64f7: $2c
    inc c                                         ; $64f8: $0c
    add b                                         ; $64f9: $80
    rst $38                                       ; $64fa: $ff
    dec b                                         ; $64fb: $05
    ldh [$7c], a                                  ; $64fc: $e0 $7c
    ld h, $94                                     ; $64fe: $26 $94
    inc c                                         ; $6500: $0c
    ld l, $2a                                     ; $6501: $2e $2a
    ld b, h                                       ; $6503: $44
    cp a                                          ; $6504: $bf
    ld bc, $88fe                                  ; $6505: $01 $fe $88
    di                                            ; $6508: $f3
    cp $15                                        ; $6509: $fe $15
    ld c, b                                       ; $650b: $48
    ld d, $14                                     ; $650c: $16 $14
    rla                                           ; $650e: $17
    ld l, h                                       ; $650f: $6c
    rrca                                          ; $6510: $0f
    ld b, h                                       ; $6511: $44

jr_0c5_6512:
    cp e                                          ; $6512: $bb
    ld [hl], d                                    ; $6513: $72
    inc bc                                        ; $6514: $03

jr_0c5_6515:
    ld c, [hl]                                    ; $6515: $4e
    ld b, $fb                                     ; $6516: $06 $fb
    ld d, h                                       ; $6518: $54
    ld [$13ba], sp                                ; $6519: $08 $ba $13
    jp nc, Jump_0c5_5420                          ; $651c: $d2 $20 $54

    inc b                                         ; $651f: $04
    adc h                                         ; $6520: $8c
    dec b                                         ; $6521: $05
    sub b                                         ; $6522: $90
    inc a                                         ; $6523: $3c
    rlca                                          ; $6524: $07
    ld [hl-], a                                   ; $6525: $32
    inc e                                         ; $6526: $1c
    sbc [hl]                                      ; $6527: $9e
    ld a, [c]                                     ; $6528: $f2
    inc bc                                        ; $6529: $03
    cp a                                          ; $652a: $bf
    ld de, $1d7a                                  ; $652b: $11 $7a $1d
    adc h                                         ; $652e: $8c
    dec bc                                        ; $652f: $0b
    and h                                         ; $6530: $a4
    dec c                                         ; $6531: $0d
    and d                                         ; $6532: $a2
    ld d, $22                                     ; $6533: $16 $22
    db $e3                                        ; $6535: $e3
    and $06                                       ; $6536: $e6 $06
    db $e4                                        ; $6538: $e4
    ld [bc], a                                    ; $6539: $02
    cp b                                          ; $653a: $b8
    dec b                                         ; $653b: $05
    jr z, jr_0c5_6515                             ; $653c: $28 $d7

    ld [hl+], a                                   ; $653e: $22
    cp [hl]                                       ; $653f: $be
    dec b                                         ; $6540: $05
    jp z, $ff0e                                   ; $6541: $ca $0e $ff

    inc d                                         ; $6544: $14
    ld [$7c50], sp                                ; $6545: $08 $50 $7c
    add d                                         ; $6548: $82
    inc de                                        ; $6549: $13
    cp [hl]                                       ; $654a: $be
    inc hl                                        ; $654b: $23
    add [hl]                                      ; $654c: $86
    ld c, $6e                                     ; $654d: $0e $6e
    add hl, bc                                    ; $654f: $09
    ld l, $1c                                     ; $6550: $2e $1c
    ld l, h                                       ; $6552: $6c
    dec de                                        ; $6553: $1b
    ret z                                         ; $6554: $c8

    halt                                          ; $6555: $76
    dec de                                        ; $6556: $1b
    xor [hl]                                      ; $6557: $ae
    rrca                                          ; $6558: $0f
    sub b                                         ; $6559: $90
    ld l, a                                       ; $655a: $6f
    ld [c], a                                     ; $655b: $e2
    ld c, $a0                                     ; $655c: $0e $a0
    ld e, a                                       ; $655e: $5f
    adc c                                         ; $655f: $89
    rst $30                                       ; $6560: $f7
    sub b                                         ; $6561: $90
    ld bc, $0eec                                  ; $6562: $01 $ec $0e
    add [hl]                                      ; $6565: $86
    ld [$1ede], sp                                ; $6566: $08 $de $1e
    inc d                                         ; $6569: $14
    ld e, d                                       ; $656a: $5a
    rla                                           ; $656b: $17
    sub h                                         ; $656c: $94
    inc e                                         ; $656d: $1c
    ld d, h                                       ; $656e: $54
    inc bc                                        ; $656f: $03
    rst $38                                       ; $6570: $ff
    ld a, [$a623]                                 ; $6571: $fa $23 $a6
    rrca                                          ; $6574: $0f
    inc l                                         ; $6575: $2c
    dec c                                         ; $6576: $0d
    ld a, h                                       ; $6577: $7c
    ld [de], a                                    ; $6578: $12
    ld c, $0b                                     ; $6579: $0e $0b
    sub b                                         ; $657b: $90
    ld d, e                                       ; $657c: $53
    ld a, [hl+]                                   ; $657d: $2a
    inc c                                         ; $657e: $0c
    ld l, $0f                                     ; $657f: $2e $0f
    rst $30                                       ; $6581: $f7
    inc d                                         ; $6582: $14
    dec de                                        ; $6583: $1b
    db $e4                                        ; $6584: $e4
    ld hl, $079e                                  ; $6585: $21 $9e $07
    and d                                         ; $6588: $a2
    dec c                                         ; $6589: $0d
    ld b, d                                       ; $658a: $42
    ldh a, [rNR43]                                ; $658b: $f0 $22
    nop                                           ; $658d: $00
    rla                                           ; $658e: $17
    ld b, b                                       ; $658f: $40
    ld d, h                                       ; $6590: $54
    sbc a                                         ; $6591: $9f
    sbc [hl]                                      ; $6592: $9e
    rra                                           ; $6593: $1f
    ld b, b                                       ; $6594: $40
    cp a                                          ; $6595: $bf
    jp z, $640c                                   ; $6596: $ca $0c $64

    dec bc                                        ; $6599: $0b
    call c, Call_0c5_6235                         ; $659a: $dc $35 $62
    ld [hl+], a                                   ; $659d: $22
    ldh [rIF], a                                  ; $659e: $e0 $0f
    sbc c                                         ; $65a0: $99
    adc [hl]                                      ; $65a1: $8e
    rrca                                          ; $65a2: $0f
    inc h                                         ; $65a3: $24
    db $db                                        ; $65a4: $db
    jp nc, $e00e                                  ; $65a5: $d2 $0e $e0

    dec bc                                        ; $65a8: $0b
    ld bc, $e0fe                                  ; $65a9: $01 $fe $e0
    dec bc                                        ; $65ac: $0b
    cp h                                          ; $65ad: $bc
    halt                                          ; $65ae: $76
    inc e                                         ; $65af: $1c
    ld b, c                                       ; $65b0: $41
    nop                                           ; $65b1: $00
    dec d                                         ; $65b2: $15
    and h                                         ; $65b3: $a4
    inc e                                         ; $65b4: $1c
    ld h, b                                       ; $65b5: $60
    ld l, $06                                     ; $65b6: $2e $06
    ld d, $7f                                     ; $65b8: $16 $7f
    ld d, b                                       ; $65ba: $50
    inc c                                         ; $65bb: $0c
    ld c, a                                       ; $65bc: $4f

jr_0c5_65bd:
    add hl, bc                                    ; $65bd: $09
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    nop                                           ; $65c0: $00
    ld c, $0e                                     ; $65c1: $0e $0e
    scf                                           ; $65c3: $37
    add hl, sp                                    ; $65c4: $39
    ld c, c                                       ; $65c5: $49
    ld [hl], a                                    ; $65c6: $77
    nop                                           ; $65c7: $00
    ld d, e                                       ; $65c8: $53
    ld l, a                                       ; $65c9: $6f
    ld h, [hl]                                    ; $65ca: $66
    ld e, [hl]                                    ; $65cb: $5e
    call c, Call_0c5_70fc                         ; $65cc: $dc $fc $70
    ldh a, [rP1]                                  ; $65cf: $f0 $00
    ld [hl], b                                    ; $65d1: $70
    ld [hl], b                                    ; $65d2: $70
    ld c, b                                       ; $65d3: $48
    ld a, b                                       ; $65d4: $78
    ld d, h                                       ; $65d5: $54
    ld l, h                                       ; $65d6: $6c
    ld d, h                                       ; $65d7: $54
    ld l, h                                       ; $65d8: $6c
    nop                                           ; $65d9: $00
    ld c, d                                       ; $65da: $4a
    halt                                          ; $65db: $76
    ld l, e                                       ; $65dc: $6b
    ld [hl], a                                    ; $65dd: $77
    ld [hl], $3f                                  ; $65de: $36 $3f
    add hl, de                                    ; $65e0: $19
    ld e, $00                                     ; $65e1: $1e $00
    ld [hl], b                                    ; $65e3: $70
    ldh a, [$8c]                                  ; $65e4: $f0 $8c
    db $fc                                        ; $65e6: $fc
    jp nc, $c9ee                                  ; $65e7: $d2 $ee $c9

    rst $30                                       ; $65ea: $f7
    nop                                           ; $65eb: $00
    ld h, l                                       ; $65ec: $65
    ld a, e                                       ; $65ed: $7b
    inc sp                                        ; $65ee: $33
    dec a                                         ; $65ef: $3d
    dec e                                         ; $65f0: $1d
    rra                                           ; $65f1: $1f
    rlca                                          ; $65f2: $07
    rlca                                          ; $65f3: $07
    nop                                           ; $65f4: $00
    add h                                         ; $65f5: $84
    add a                                         ; $65f6: $87
    ld e, [hl]                                    ; $65f7: $5e
    rst $18                                       ; $65f8: $df
    push hl                                       ; $65f9: $e5
    ld a, e                                       ; $65fa: $7b
    sub e                                         ; $65fb: $93
    rst $28                                       ; $65fc: $ef
    nop                                           ; $65fd: $00
    and a                                         ; $65fe: $a7
    rst $18                                       ; $65ff: $df
    adc h                                         ; $6600: $8c
    db $fc                                        ; $6601: $fc
    ld hl, sp-$08                                 ; $6602: $f8 $f8
    xor b                                         ; $6604: $a8
    ret c                                         ; $6605: $d8

    nop                                           ; $6606: $00
    db $fc                                        ; $6607: $fc
    rst $38                                       ; $6608: $ff
    xor a                                         ; $6609: $af
    rst $18                                       ; $660a: $df
    rst $10                                       ; $660b: $d7
    rst $28                                       ; $660c: $ef
    ld c, e                                       ; $660d: $4b
    ld [hl], a                                    ; $660e: $77
    nop                                           ; $660f: $00
    ld [hl+], a                                   ; $6610: $22
    ld a, $14                                     ; $6611: $3e $14
    inc e                                         ; $6613: $1c
    sbc a                                         ; $6614: $9f
    sbc a                                         ; $6615: $9f
    ld h, l                                       ; $6616: $65
    ld a, [$f000]                                 ; $6617: $fa $00 $f0
    ldh a, [$88]                                  ; $661a: $f0 $88
    ld hl, sp-$5c                                 ; $661c: $f8 $a4
    call c, $eed6                                 ; $661e: $dc $d6 $ee
    nop                                           ; $6621: $00
    dec l                                         ; $6622: $2d
    rst $30                                       ; $6623: $f7
    ld [hl], l                                    ; $6624: $75
    sbc a                                         ; $6625: $9f
    xor [hl]                                      ; $6626: $ae
    rst $38                                       ; $6627: $ff
    rst $30                                       ; $6628: $f7
    ld hl, sp+$00                                 ; $6629: $f8 $00
    ld e, $1e                                     ; $662b: $1e $1e
    ld a, [hl+]                                   ; $662d: $2a
    ld [hl], $52                                  ; $662e: $36 $52
    ld l, [hl]                                    ; $6630: $6e
    ld h, [hl]                                    ; $6631: $66
    ld e, [hl]                                    ; $6632: $5e
    nop                                           ; $6633: $00
    call z, $98bc                                 ; $6634: $cc $bc $98
    ld hl, sp+$60                                 ; $6637: $f8 $60
    ldh [$d8], a                                  ; $6639: $e0 $d8
    jr c, jr_0c5_65bd                             ; $663b: $38 $80

    jr nz, jr_0c5_6647                            ; $663d: $20 $08

    and l                                         ; $663f: $a5
    db $dd                                        ; $6640: $dd
    db $d3                                        ; $6641: $d3
    rst $28                                       ; $6642: $ef
    ld l, d                                       ; $6643: $6a
    ld [hl], a                                    ; $6644: $77
    dec [hl]                                      ; $6645: $35
    nop                                           ; $6646: $00

jr_0c5_6647:
    ld a, $0b                                     ; $6647: $3e $0b
    inc c                                         ; $6649: $0c
    ld d, $19                                     ; $664a: $16 $19
    ld d, l                                       ; $664c: $55
    nop                                           ; $664d: $00
    xor d                                         ; $664e: $aa
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    ld b, b                                       ; $6651: $40
    nop                                           ; $6652: $00
    add b                                         ; $6653: $80
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    ld hl, $0000                                  ; $6657: $21 $00 $00
    ld [$9400], sp                                ; $665a: $08 $00 $94
    nop                                           ; $665d: $00
    ld d, l                                       ; $665e: $55
    nop                                           ; $665f: $00
    xor b                                         ; $6660: $a8
    nop                                           ; $6661: $00
    rlca                                          ; $6662: $07
    ld d, l                                       ; $6663: $55
    ld [$10a8], sp                                ; $6664: $08 $a8 $10
    rla                                           ; $6667: $17
    jr @+$36                                      ; $6668: $18 $34

    nop                                           ; $666a: $00
    rra                                           ; $666b: $1f
    ld e, a                                       ; $666c: $5f
    rrca                                          ; $666d: $0f
    xor l                                         ; $666e: $ad
    ld [bc], a                                    ; $666f: $02
    ld c, d                                       ; $6670: $4a
    rlca                                          ; $6671: $07
    and e                                         ; $6672: $a3
    nop                                           ; $6673: $00
    ld bc, $8050                                  ; $6674: $01 $50 $80
    ldh [rSCX], a                                 ; $6677: $e0 $43
    jp c, $4544                                   ; $6679: $da $44 $45

    nop                                           ; $667c: $00
    ret z                                         ; $667d: $c8

    sbc e                                         ; $667e: $9b
    call z, $9f2a                                 ; $667f: $cc $2a $9f
    and d                                         ; $6682: $a2
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    nop                                           ; $6685: $00
    rst $38                                       ; $6686: $ff
    ld a, [$2005]                                 ; $6687: $fa $05 $20
    ret nz                                        ; $668a: $c0

    ret z                                         ; $668b: $c8

    jr nc, @+$12                                  ; $668c: $30 $10

    nop                                           ; $668e: $00
    ld [$08bc], sp                                ; $668f: $08 $bc $08
    ld c, b                                       ; $6692: $48
    cp a                                          ; $6693: $bf
    sbc c                                         ; $6694: $99
    rst $20                                       ; $6695: $e7
    ld b, a                                       ; $6696: $47
    nop                                           ; $6697: $00
    cp $fa                                        ; $6698: $fe $fa
    db $fc                                        ; $669a: $fc
    xor h                                         ; $669b: $ac
    ld d, b                                       ; $669c: $50
    jr z, jr_0c5_669f                             ; $669d: $28 $00

jr_0c5_669f:
    add c                                         ; $669f: $81
    inc bc                                        ; $66a0: $03
    nop                                           ; $66a1: $00
    ld [de], a                                    ; $66a2: $12
    nop                                           ; $66a3: $00
    ld h, l                                       ; $66a4: $65
    add b                                         ; $66a5: $80
    add b                                         ; $66a6: $80
    ld c, [hl]                                    ; $66a7: $4e
    jr nz, jr_0c5_66ad                            ; $66a8: $20 $03

    ld [$4260], sp                                ; $66aa: $08 $60 $42

jr_0c5_66ad:
    ld d, d                                       ; $66ad: $52
    nop                                           ; $66ae: $00
    ld h, b                                       ; $66af: $60
    ld c, b                                       ; $66b0: $48
    ld c, b                                       ; $66b1: $48
    nop                                           ; $66b2: $00
    sub h                                         ; $66b3: $94
    ld b, b                                       ; $66b4: $40
    ld b, h                                       ; $66b5: $44
    ld [$8800], sp                                ; $66b6: $08 $00 $88
    nop                                           ; $66b9: $00
    db $10                                        ; $66ba: $10
    jr nz, jr_0c5_66cd                            ; $66bb: $20 $10

    ld hl, $4400                                  ; $66bd: $21 $00 $44
    jr nc, jr_0c5_66c2                            ; $66c0: $30 $00

jr_0c5_66c2:
    xor b                                         ; $66c2: $a8
    ld a, h                                       ; $66c3: $7c
    nop                                           ; $66c4: $00
    dec l                                         ; $66c5: $2d
    db $10                                        ; $66c6: $10
    ld [$0404], sp                                ; $66c7: $08 $04 $04
    ld b, $00                                     ; $66ca: $06 $00
    ld [bc], a                                    ; $66cc: $02

jr_0c5_66cd:
    inc de                                        ; $66cd: $13
    inc bc                                        ; $66ce: $03
    inc hl                                        ; $66cf: $23
    ld bc, $0c08                                  ; $66d0: $01 $08 $0c
    inc e                                         ; $66d3: $1c
    nop                                           ; $66d4: $00
    ld [$081c], sp                                ; $66d5: $08 $1c $08
    ld [$0918], sp                                ; $66d8: $08 $18 $09
    jr jr_0c5_670d                                ; $66db: $18 $30

    nop                                           ; $66dd: $00
    add hl, de                                    ; $66de: $19
    ld e, e                                       ; $66df: $5b
    ld sp, $331b                                  ; $66e0: $31 $1b $33
    ld e, d                                       ; $66e3: $5a
    nop                                           ; $66e4: $00
    or l                                          ; $66e5: $b5
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    ld a, [$bd00]                                 ; $66e8: $fa $00 $bd
    nop                                           ; $66eb: $00
    ei                                            ; $66ec: $fb
    ld bc, $00ef                                  ; $66ed: $01 $ef $00
    ld bc, $05fa                                  ; $66f0: $01 $fa $05
    db $fd                                        ; $66f3: $fd
    ld [bc], a                                    ; $66f4: $02
    ld [hl+], a                                   ; $66f5: $22
    ld bc, $0054                                  ; $66f6: $01 $54 $00
    nop                                           ; $66f9: $00
    add d                                         ; $66fa: $82
    ld a, h                                       ; $66fb: $7c
    inc c                                         ; $66fc: $0c
    add e                                         ; $66fd: $83
    add c                                         ; $66fe: $81
    nop                                           ; $66ff: $00
    inc e                                         ; $6700: $1c
    nop                                           ; $6701: $00
    db $e3                                        ; $6702: $e3
    pop de                                        ; $6703: $d1
    rst $38                                       ; $6704: $ff
    ccf                                           ; $6705: $3f
    cp $ff                                        ; $6706: $fe $ff
    rst $38                                       ; $6708: $ff
    ld h, b                                       ; $6709: $60
    nop                                           ; $670a: $00
    rra                                           ; $670b: $1f
    push af                                       ; $670c: $f5

jr_0c5_670d:
    ld a, [bc]                                    ; $670d: $0a
    ld l, d                                       ; $670e: $6a
    add l                                         ; $670f: $85
    cp $40                                        ; $6710: $fe $40
    ld e, a                                       ; $6712: $5f
    nop                                           ; $6713: $00
    ldh [$be], a                                  ; $6714: $e0 $be
    pop bc                                        ; $6716: $c1
    ld l, a                                       ; $6717: $6f
    sub b                                         ; $6718: $90
    di                                            ; $6719: $f3
    ret nz                                        ; $671a: $c0

    ret nz                                        ; $671b: $c0

    nop                                           ; $671c: $00
    add b                                         ; $671d: $80
    daa                                           ; $671e: $27
    ret nz                                        ; $671f: $c0

    sbc a                                         ; $6720: $9f
    ldh [rSTAT], a                                ; $6721: $e0 $41
    cp $b4                                        ; $6723: $fe $b4
    nop                                           ; $6725: $00
    ld a, a                                       ; $6726: $7f
    rst $18                                       ; $6727: $df
    cpl                                           ; $6728: $2f
    xor l                                         ; $6729: $ad
    ld d, d                                       ; $672a: $52
    sub b                                         ; $672b: $90
    ld h, b                                       ; $672c: $60
    ld l, d                                       ; $672d: $6a
    nop                                           ; $672e: $00
    db $10                                        ; $672f: $10
    db $fd                                        ; $6730: $fd
    ld [$18ee], sp                                ; $6731: $08 $ee $18
    adc e                                         ; $6734: $8b
    ld a, b                                       ; $6735: $78
    ccf                                           ; $6736: $3f
    ld [bc], a                                    ; $6737: $02
    ldh a, [$df]                                  ; $6738: $f0 $df
    ldh [$ad], a                                  ; $673a: $e0 $ad
    ld d, d                                       ; $673c: $52
    inc b                                         ; $673d: $04
    sub h                                         ; $673e: $94
    db $10                                        ; $673f: $10
    cp e                                          ; $6740: $bb
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    ld [hl], a                                    ; $6743: $77
    nop                                           ; $6744: $00
    db $ed                                        ; $6745: $ed
    nop                                           ; $6746: $00
    ld a, a                                       ; $6747: $7f
    nop                                           ; $6748: $00
    cp $42                                        ; $6749: $fe $42
    ld bc, $3060                                  ; $674b: $01 $60 $30
    nop                                           ; $674e: $00
    xor $00                                       ; $674f: $ee $00
    rst $38                                       ; $6751: $ff
    ld [bc], a                                    ; $6752: $02
    nop                                           ; $6753: $00
    ld [hl+], a                                   ; $6754: $22
    add d                                         ; $6755: $82
    sub [hl]                                      ; $6756: $96
    nop                                           ; $6757: $00
    xor d                                         ; $6758: $aa
    nop                                           ; $6759: $00
    push de                                       ; $675a: $d5
    nop                                           ; $675b: $00
    xor a                                         ; $675c: $af
    ld c, $00                                     ; $675d: $0e $00

jr_0c5_675f:
    rst $18                                       ; $675f: $df
    adc b                                         ; $6760: $88
    ld [de], a                                    ; $6761: $12
    nop                                           ; $6762: $00

jr_0c5_6763:
    add hl, hl                                    ; $6763: $29
    nop                                           ; $6764: $00
    ld e, [hl]                                    ; $6765: $5e
    inc e                                         ; $6766: $1c
    nop                                           ; $6767: $00
    rst $28                                       ; $6768: $ef
    nop                                           ; $6769: $00
    cp $80                                        ; $676a: $fe $80
    ld e, $00                                     ; $676c: $1e $00
    cp [hl]                                       ; $676e: $be
    ld b, c                                       ; $676f: $41
    ld l, a                                       ; $6770: $6f
    sub b                                         ; $6771: $90
    ld d, [hl]                                    ; $6772: $56
    ld bc, $08ea                                  ; $6773: $01 $ea $08
    nop                                           ; $6776: $00
    rst $10                                       ; $6777: $d7
    nop                                           ; $6778: $00
    ld l, [hl]                                    ; $6779: $6e
    jr nc, jr_0c5_677c                            ; $677a: $30 $00

jr_0c5_677c:
    rst $38                                       ; $677c: $ff
    nop                                           ; $677d: $00
    sbc $00                                       ; $677e: $de $00
    ld hl, $52ad                                  ; $6780: $21 $ad $52
    rst $00                                       ; $6783: $c7
    rrca                                          ; $6784: $0f
    adc l                                         ; $6785: $8d
    ld [bc], a                                    ; $6786: $02
    ld d, [hl]                                    ; $6787: $56
    ld [$ae01], sp                                ; $6788: $08 $01 $ae
    nop                                           ; $678b: $00
    db $db                                        ; $678c: $db
    ld a, $10                                     ; $678d: $3e $10
    xor l                                         ; $678f: $ad
    ld d, d                                       ; $6790: $52
    db $f4                                        ; $6791: $f4
    nop                                           ; $6792: $00
    ld hl, sp+$38                                 ; $6793: $f8 $38
    ldh [$a7], a                                  ; $6795: $e0 $a7
    ld a, b                                       ; $6797: $78
    or b                                          ; $6798: $b0
    ccf                                           ; $6799: $3f
    ld l, a                                       ; $679a: $6f
    nop                                           ; $679b: $00
    rra                                           ; $679c: $1f
    jp hl                                         ; $679d: $e9


    ld d, $77                                     ; $679e: $16 $77
    ld [$01fe], sp                                ; $67a0: $08 $fe $01
    cp d                                          ; $67a3: $ba
    nop                                           ; $67a4: $00
    ld b, b                                       ; $67a5: $40
    ld d, l                                       ; $67a6: $55
    jr nz, jr_0c5_6763                            ; $67a7: $20 $ba

    ld h, b                                       ; $67a9: $60
    ld e, l                                       ; $67aa: $5d
    ldh [$bb], a                                  ; $67ab: $e0 $bb
    db $10                                        ; $67ad: $10
    ret nz                                        ; $67ae: $c0

    ld l, [hl]                                    ; $67af: $6e
    add b                                         ; $67b0: $80
    ld h, b                                       ; $67b1: $60
    jr z, jr_0c5_675f                             ; $67b2: $28 $ab

    ld bc, $03d5                                  ; $67b4: $01 $d5 $03
    nop                                           ; $67b7: $00
    xor c                                         ; $67b8: $a9
    rlca                                          ; $67b9: $07
    push af                                       ; $67ba: $f5
    dec bc                                        ; $67bb: $0b
    db $db                                        ; $67bc: $db
    dec b                                         ; $67bd: $05
    rst $30                                       ; $67be: $f7
    add hl, bc                                    ; $67bf: $09
    nop                                           ; $67c0: $00
    add hl, hl                                    ; $67c1: $29
    add b                                         ; $67c2: $80
    sbc $80                                       ; $67c3: $de $80
    dec sp                                        ; $67c5: $3b
    ret nz                                        ; $67c6: $c0

    ld c, a                                       ; $67c7: $4f
    and b                                         ; $67c8: $a0
    add hl, bc                                    ; $67c9: $09
    cp [hl]                                       ; $67ca: $be
    ret nz                                        ; $67cb: $c0

    rst $18                                       ; $67cc: $df
    and b                                         ; $67cd: $a0
    ld h, b                                       ; $67ce: $60
    ld [$0051], sp                                ; $67cf: $08 $51 $00
    ld h, b                                       ; $67d2: $60
    ld e, b                                       ; $67d3: $58
    nop                                           ; $67d4: $00
    ld b, e                                       ; $67d5: $43
    inc sp                                        ; $67d6: $33
    sbc d                                         ; $67d7: $9a
    ld a, [de]                                    ; $67d8: $1a
    ld e, a                                       ; $67d9: $5f
    ld c, $ae                                     ; $67da: $0e $ae
    inc c                                         ; $67dc: $0c
    ld [bc], a                                    ; $67dd: $02
    rst $18                                       ; $67de: $df
    ld b, $fe                                     ; $67df: $06 $fe
    inc bc                                        ; $67e1: $03
    rst $38                                       ; $67e2: $ff
    ld bc, $58c0                                  ; $67e3: $01 $c0 $58
    cp a                                          ; $67e6: $bf
    db $10                                        ; $67e7: $10
    ret nz                                        ; $67e8: $c0

    or $f9                                        ; $67e9: $f6 $f9
    ret nz                                        ; $67eb: $c0

    ld c, b                                       ; $67ec: $48
    push af                                       ; $67ed: $f5
    ld a, [bc]                                    ; $67ee: $0a
    db $eb                                        ; $67ef: $eb
    dec d                                         ; $67f0: $15
    nop                                           ; $67f1: $00
    dec [hl]                                      ; $67f2: $35
    ld l, [hl]                                    ; $67f3: $6e
    ld l, h                                       ; $67f4: $6c
    ld a, b                                       ; $67f5: $78
    ld e, d                                       ; $67f6: $5a
    ldh a, [$f5]                                  ; $67f7: $f0 $f5
    ldh [rNR10], a                                ; $67f9: $e0 $10
    rst $28                                       ; $67fb: $ef
    ret nz                                        ; $67fc: $c0

    cp a                                          ; $67fd: $bf
    ld d, d                                       ; $67fe: $52
    nop                                           ; $67ff: $00
    and l                                         ; $6800: $a5
    jp c, Jump_000_24db                           ; $6801: $da $db $24

    nop                                           ; $6804: $00
    cp a                                          ; $6805: $bf
    ld b, b                                       ; $6806: $40
    ld c, [hl]                                    ; $6807: $4e
    or c                                          ; $6808: $b1
    sub l                                         ; $6809: $95
    ld l, d                                       ; $680a: $6a
    ld a, [hl+]                                   ; $680b: $2a
    push af                                       ; $680c: $f5
    nop                                           ; $680d: $00
    ld d, l                                       ; $680e: $55
    ld [$ff85], a                                 ; $680f: $ea $85 $ff
    ld a, d                                       ; $6812: $7a
    rst $38                                       ; $6813: $ff
    xor d                                         ; $6814: $aa
    ld d, l                                       ; $6815: $55
    nop                                           ; $6816: $00
    ld [hl], l                                    ; $6817: $75
    adc d                                         ; $6818: $8a
    ld [$d015], a                                 ; $6819: $ea $15 $d0
    cpl                                           ; $681c: $2f
    and c                                         ; $681d: $a1
    ld e, a                                       ; $681e: $5f
    nop                                           ; $681f: $00
    ld a, [bc]                                    ; $6820: $0a
    rst $38                                       ; $6821: $ff
    ld d, a                                       ; $6822: $57

jr_0c5_6823:
    rst $38                                       ; $6823: $ff
    xor a                                         ; $6824: $af
    rst $38                                       ; $6825: $ff
    db $dd                                        ; $6826: $dd
    ld [hl+], a                                   ; $6827: $22
    nop                                           ; $6828: $00
    ld a, [hl+]                                   ; $6829: $2a
    push de                                       ; $682a: $d5
    dec d                                         ; $682b: $15
    ld [$d52a], a                                 ; $682c: $ea $2a $d5
    inc d                                         ; $682f: $14
    db $eb                                        ; $6830: $eb
    nop                                           ; $6831: $00
    inc b                                         ; $6832: $04
    rst $38                                       ; $6833: $ff
    ld c, d                                       ; $6834: $4a
    rst $38                                       ; $6835: $ff
    push af                                       ; $6836: $f5
    rst $38                                       ; $6837: $ff
    ld a, c                                       ; $6838: $79
    add [hl]                                      ; $6839: $86
    nop                                           ; $683a: $00
    add sp, $17                                   ; $683b: $e8 $17
    ld d, b                                       ; $683d: $50
    xor a                                         ; $683e: $af
    add d                                         ; $683f: $82
    ld a, a                                       ; $6840: $7f
    ld b, h                                       ; $6841: $44
    cp a                                          ; $6842: $bf
    nop                                           ; $6843: $00
    jr z, @+$01                                   ; $6844: $28 $ff

jr_0c5_6846:
    ld d, l                                       ; $6846: $55
    rst $38                                       ; $6847: $ff
    xor d                                         ; $6848: $aa
    rst $38                                       ; $6849: $ff
    ld e, a                                       ; $684a: $5f
    and b                                         ; $684b: $a0
    nop                                           ; $684c: $00
    dec sp                                        ; $684d: $3b
    call nz, $aa55                                ; $684e: $c4 $55 $aa
    ld a, [hl+]                                   ; $6851: $2a
    push de                                       ; $6852: $d5
    nop                                           ; $6853: $00
    rst $38                                       ; $6854: $ff
    nop                                           ; $6855: $00
    inc b                                         ; $6856: $04
    rst $38                                       ; $6857: $ff

jr_0c5_6858:
    ld a, [hl+]                                   ; $6858: $2a
    rst $38                                       ; $6859: $ff
    push de                                       ; $685a: $d5
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    rst $28                                       ; $685f: $ef
    db $10                                        ; $6860: $10
    push af                                       ; $6861: $f5
    ld a, [bc]                                    ; $6862: $0a
    and d                                         ; $6863: $a2
    ld e, l                                       ; $6864: $5d
    ld b, h                                       ; $6865: $44
    cp e                                          ; $6866: $bb
    inc b                                         ; $6867: $04
    ld hl, $52ff                                  ; $6868: $21 $ff $52
    rst $38                                       ; $686b: $ff
    xor l                                         ; $686c: $ad
    inc c                                         ; $686d: $0c
    ld [bc], a                                    ; $686e: $02
    ld a, l                                       ; $686f: $7d
    add d                                         ; $6870: $82
    ret nz                                        ; $6871: $c0

    ld d, b                                       ; $6872: $50
    ld c, b                                       ; $6873: $48
    ld [hl], b                                    ; $6874: $70
    jr c, jr_0c5_68ce                             ; $6875: $38 $57

    rst $28                                       ; $6877: $ef
    sbc l                                         ; $6878: $9d
    rst $38                                       ; $6879: $ff
    ld a, [hl]                                    ; $687a: $7e
    rst $38                                       ; $687b: $ff
    nop                                           ; $687c: $00
    db $eb                                        ; $687d: $eb
    rla                                           ; $687e: $17
    ld d, a                                       ; $687f: $57
    xor a                                         ; $6880: $af
    rst $28                                       ; $6881: $ef
    rra                                           ; $6882: $1f
    rst $18                                       ; $6883: $df
    ccf                                           ; $6884: $3f
    sbc b                                         ; $6885: $98
    scf                                           ; $6886: $37
    ld [bc], a                                    ; $6887: $02
    rst $38                                       ; $6888: $ff
    db $fd                                        ; $6889: $fd
    inc a                                         ; $688a: $3c
    ld [bc], a                                    ; $688b: $02
    ld [hl], b                                    ; $688c: $70
    jr z, jr_0c5_6823                             ; $688d: $28 $94

    db $eb                                        ; $688f: $eb
    db $f4                                        ; $6890: $f4
    xor b                                         ; $6891: $a8
    adc [hl]                                      ; $6892: $8e
    nop                                           ; $6893: $00
    cp a                                          ; $6894: $bf
    ld [hl], b                                    ; $6895: $70
    ld h, b                                       ; $6896: $60
    rst $38                                       ; $6897: $ff
    ld [hl], b                                    ; $6898: $70
    jr jr_0c5_6846                                ; $6899: $18 $ab

    dec hl                                        ; $689b: $2b
    push de                                       ; $689c: $d5
    nop                                           ; $689d: $00
    inc bc                                        ; $689e: $03
    rst $38                                       ; $689f: $ff
    rlca                                          ; $68a0: $07
    rst $38                                       ; $68a1: $ff
    cpl                                           ; $68a2: $2f
    rst $38                                       ; $68a3: $ff
    cp $ff                                        ; $68a4: $fe $ff
    jr @-$01                                      ; $68a6: $18 $fd

    ld a, [$37fa]                                 ; $68a8: $fa $fa $37
    ld [$1003], sp                                ; $68ab: $08 $03 $10
    rst $30                                       ; $68ae: $f7
    rst $38                                       ; $68af: $ff
    rst $28                                       ; $68b0: $ef
    ld bc, $d3ff                                  ; $68b1: $01 $ff $d3
    cpl                                           ; $68b4: $2f
    xor a                                         ; $68b5: $af
    ld e, a                                       ; $68b6: $5f
    ld e, a                                       ; $68b7: $5f
    cp a                                          ; $68b8: $bf
    ld [de], a                                    ; $68b9: $12
    jr z, jr_0c5_68bd                             ; $68ba: $28 $01

    rst $38                                       ; $68bc: $ff

jr_0c5_68bd:
    rst $38                                       ; $68bd: $ff
    ld [$fdf5], a                                 ; $68be: $ea $f5 $fd
    ld a, [$22fe]                                 ; $68c1: $fa $fe $22
    jr nz, jr_0c5_6936                            ; $68c4: $20 $70

    push af                                       ; $68c6: $f5
    or b                                          ; $68c7: $b0
    nop                                           ; $68c8: $00
    ld a, e                                       ; $68c9: $7b
    ld [hl+], a                                   ; $68ca: $22
    ret nc                                        ; $68cb: $d0

    ld [bc], a                                    ; $68cc: $02
    rlca                                          ; $68cd: $07

jr_0c5_68ce:
    rlca                                          ; $68ce: $07
    dec b                                         ; $68cf: $05
    ld b, $20                                     ; $68d0: $06 $20
    inc b                                         ; $68d2: $04
    rlca                                          ; $68d3: $07
    db $10                                        ; $68d4: $10
    jr c, jr_0c5_6858                             ; $68d5: $38 $81

    add c                                         ; $68d7: $81
    ld h, d                                       ; $68d8: $62
    db $e3                                        ; $68d9: $e3
    push de                                       ; $68da: $d5
    ld b, b                                       ; $68db: $40
    ld [hl], $18                                  ; $68dc: $36 $18
    ld [$1e19], sp                                ; $68de: $08 $19 $1e
    ld l, h                                       ; $68e1: $6c
    ld [hl], e                                    ; $68e2: $73
    add b                                         ; $68e3: $80

jr_0c5_68e4:
    rst $38                                       ; $68e4: $ff
    nop                                           ; $68e5: $00
    ld b, a                                       ; $68e6: $47
    cp a                                          ; $68e7: $bf
    sbc [hl]                                      ; $68e8: $9e
    ld a, [hl]                                    ; $68e9: $7e
    jr c, jr_0c5_68e4                             ; $68ea: $38 $f8

    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    inc b                                         ; $68ee: $04
    ccf                                           ; $68ef: $3f
    ret nz                                        ; $68f0: $c0

    ld a, [$0005]                                 ; $68f1: $fa $05 $00

jr_0c5_68f4:
    ld h, e                                       ; $68f4: $63
    db $10                                        ; $68f5: $10
    inc bc                                        ; $68f6: $03
    inc bc                                        ; $68f7: $03
    nop                                           ; $68f8: $00
    inc b                                         ; $68f9: $04
    rlca                                          ; $68fa: $07
    ldh a, [$f0]                                  ; $68fb: $f0 $f0
    rst $08                                       ; $68fd: $cf
    ccf                                           ; $68fe: $3f
    xor a                                         ; $68ff: $af
    ld d, b                                       ; $6900: $50
    stop                                          ; $6901: $10 $00
    rst $38                                       ; $6903: $ff
    db $f4                                        ; $6904: $f4
    ld a, h                                       ; $6905: $7c
    nop                                           ; $6906: $00
    rlca                                          ; $6907: $07
    rst $38                                       ; $6908: $ff
    adc a                                         ; $6909: $8f
    ld a, a                                       ; $690a: $7f
    ld b, b                                       ; $690b: $40
    nop                                           ; $690c: $00
    dec de                                        ; $690d: $1b
    nop                                           ; $690e: $00
    ld h, b                                       ; $690f: $60
    rst $38                                       ; $6910: $ff
    push de                                       ; $6911: $d5
    ld a, [hl-]                                   ; $6912: $3a
    jr z, jr_0c5_68f4                             ; $6913: $28 $df

jr_0c5_6915:
    nop                                           ; $6915: $00
    add a                                         ; $6916: $87
    rst $38                                       ; $6917: $ff
    ld d, h                                       ; $6918: $54
    db $ec                                        ; $6919: $ec
    add d                                         ; $691a: $82
    cp $00                                        ; $691b: $fe $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    cp $fe                                        ; $691f: $fe $fe
    ld bc, $edff                                  ; $6921: $01 $ff $ed
    ld [de], a                                    ; $6924: $12
    ld bc, $02fe                                  ; $6925: $01 $fe $02
    ld hl, sp-$01                                 ; $6928: $f8 $ff
    rra                                           ; $692a: $1f

jr_0c5_692b:
    rra                                           ; $692b: $1f
    ld bc, $eb01                                  ; $692c: $01 $01 $eb

jr_0c5_692f:
    ld a, [bc]                                    ; $692f: $0a
    ret nz                                        ; $6930: $c0

    nop                                           ; $6931: $00
    ret nz                                        ; $6932: $c0

    jr nz, jr_0c5_6915                            ; $6933: $20 $e0

    sub c                                         ; $6935: $91

jr_0c5_6936:
    ld [hl], c                                    ; $6936: $71
    ld c, d                                       ; $6937: $4a
    cp e                                          ; $6938: $bb
    dec d                                         ; $6939: $15
    db $10                                        ; $693a: $10
    xor $96                                       ; $693b: $ee $96
    rst $28                                       ; $693d: $ef
    ei                                            ; $693e: $fb
    ld a, [de]                                    ; $693f: $1a
    ld a, b                                       ; $6940: $78
    ld a, b                                       ; $6941: $78
    sbc b                                         ; $6942: $98
    add sp, $02                                   ; $6943: $e8 $02
    ld c, b                                       ; $6945: $48
    cp b                                          ; $6946: $b8
    sub b                                         ; $6947: $90
    ld [hl], b                                    ; $6948: $70
    jr nz, jr_0c5_692b                            ; $6949: $20 $e0

    dec bc                                        ; $694b: $0b
    dec bc                                        ; $694c: $0b
    inc bc                                        ; $694d: $03
    nop                                           ; $694e: $00
    inc bc                                        ; $694f: $03
    inc c                                         ; $6950: $0c
    rrca                                          ; $6951: $0f
    inc d                                         ; $6952: $14
    dec de                                        ; $6953: $1b
    jr z, @+$39                                   ; $6954: $28 $37

    ld sp, $2f10                                  ; $6956: $31 $10 $2f
    ld d, e                                       ; $6959: $53
    ld l, a                                       ; $695a: $6f
    dec de                                        ; $695b: $1b
    dec bc                                        ; $695c: $0b
    ldh [$e0], a                                  ; $695d: $e0 $e0
    sbc h                                         ; $695f: $9c
    ld a, h                                       ; $6960: $7c
    ld bc, $cf33                                  ; $6961: $01 $33 $cf
    inc b                                         ; $6964: $04
    ei                                            ; $6965: $fb
    pop de                                        ; $6966: $d1
    cp $7c                                        ; $6967: $fe $7c
    ld h, b                                       ; $6969: $60
    nop                                           ; $696a: $00
    add c                                         ; $696b: $81
    or d                                          ; $696c: $b2
    jr z, jr_0c5_692f                             ; $696d: $28 $c0

    ret nz                                        ; $696f: $c0

    jr nc, @-$0e                                  ; $6970: $30 $f0

    ld c, b                                       ; $6972: $48
    cp b                                          ; $6973: $b8
    ld l, $08                                     ; $6974: $2e $08

jr_0c5_6976:
    nop                                           ; $6976: $00
    dec b                                         ; $6977: $05
    ld b, $08                                     ; $6978: $06 $08
    rrca                                          ; $697a: $0f
    ld a, [bc]                                    ; $697b: $0a
    dec c                                         ; $697c: $0d
    ld a, [bc]                                    ; $697d: $0a
    dec c                                         ; $697e: $0d
    nop                                           ; $697f: $00
    inc c                                         ; $6980: $0c
    rrca                                          ; $6981: $0f
    add hl, bc                                    ; $6982: $09
    ld c, $ff                                     ; $6983: $0e $ff
    rst $38                                       ; $6985: $ff
    ld a, a                                       ; $6986: $7f
    add b                                         ; $6987: $80
    ld b, b                                       ; $6988: $40
    nop                                           ; $6989: $00
    adc d                                         ; $698a: $8a
    ld bc, $ffbe                                  ; $698b: $01 $be $ff
    ld h, e                                       ; $698e: $63
    db $e3                                        ; $698f: $e3
    ld b, b                                       ; $6990: $40
    ret nz                                        ; $6991: $c0

    nop                                           ; $6992: $00
    ld a, a                                       ; $6993: $7f
    rst $38                                       ; $6994: $ff
    add b                                         ; $6995: $80
    add b                                         ; $6996: $80
    ld h, b                                       ; $6997: $60
    ldh [$d0], a                                  ; $6998: $e0 $d0
    jr nc, jr_0c5_699c                            ; $699a: $30 $00

jr_0c5_699c:
    jr z, jr_0c5_6976                             ; $699c: $28 $d8

    add h                                         ; $699e: $84
    db $fc                                        ; $699f: $fc
    and h                                         ; $69a0: $a4
    call c, $ff87                                 ; $69a1: $dc $87 $ff
    ld h, $4c                                     ; $69a4: $26 $4c
    cp a                                          ; $69a6: $bf
    ldh a, [$38]                                  ; $69a7: $f0 $38
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    inc c                                         ; $69ac: $0c
    nop                                           ; $69ad: $00
    add hl, sp                                    ; $69ae: $39
    ld a, [hl]                                    ; $69af: $7e
    inc [hl]                                      ; $69b0: $34
    ld a, [hl]                                    ; $69b1: $7e
    add c                                         ; $69b2: $81
    xor d                                         ; $69b3: $aa
    inc bc                                        ; $69b4: $03
    adc e                                         ; $69b5: $8b
    dec de                                        ; $69b6: $1b
    ld bc, $1001                                  ; $69b7: $01 $01 $10
    ret nz                                        ; $69ba: $c0

    ret nz                                        ; $69bb: $c0

    jr nz, @+$3a                                  ; $69bc: $20 $38

    ld hl, sp-$65                                 ; $69be: $f8 $9b
    dec de                                        ; $69c0: $1b
    ldh [$e0], a                                  ; $69c1: $e0 $e0
    ld d, b                                       ; $69c3: $50
    or b                                          ; $69c4: $b0
    jr z, jr_0c5_69cb                             ; $69c5: $28 $04

    ret c                                         ; $69c7: $d8

    adc b                                         ; $69c8: $88
    ld hl, sp+$79                                 ; $69c9: $f8 $79

jr_0c5_69cb:
    ld a, c                                       ; $69cb: $79
    inc e                                         ; $69cc: $1c
    ld [$0706], sp                                ; $69cd: $08 $06 $07
    add b                                         ; $69d0: $80
    ld a, [bc]                                    ; $69d1: $0a
    inc c                                         ; $69d2: $0c
    inc l                                         ; $69d3: $2c
    inc sp                                        ; $69d4: $33
    ld e, c                                       ; $69d5: $59
    ld h, a                                       ; $69d6: $67
    or e                                          ; $69d7: $b3
    rst $08                                       ; $69d8: $cf
    jp nz, $c300                                  ; $69d9: $c2 $00 $c3

    and c                                         ; $69dc: $a1
    pop hl                                        ; $69dd: $e1
    or b                                          ; $69de: $b0
    ret nc                                        ; $69df: $d0

    xor b                                         ; $69e0: $a8
    ret c                                         ; $69e1: $d8

    call nc, $ec00                                ; $69e2: $d4 $00 $ec
    ld b, h                                       ; $69e5: $44
    ld a, h                                       ; $69e6: $7c
    inc l                                         ; $69e7: $2c
    inc [hl]                                      ; $69e8: $34
    jr jr_0c5_6a03                                ; $69e9: $18 $18

    ld a, [hl+]                                   ; $69eb: $2a
    nop                                           ; $69ec: $00
    db $dd                                        ; $69ed: $dd
    db $f4                                        ; $69ee: $f4
    ei                                            ; $69ef: $fb
    db $10                                        ; $69f0: $10
    rra                                           ; $69f1: $1f
    add hl, hl                                    ; $69f2: $29
    scf                                           ; $69f3: $37
    ld hl, $3f00                                  ; $69f4: $21 $00 $3f
    ld a, [hl+]                                   ; $69f7: $2a
    ld [hl], $6a                                  ; $69f8: $36 $6a
    halt                                          ; $69fa: $76
    ld l, [hl]                                    ; $69fb: $6e
    ld [hl], d                                    ; $69fc: $72
    ld h, b                                       ; $69fd: $60
    nop                                           ; $69fe: $00
    ldh [$e0], a                                  ; $69ff: $e0 $e0
    ldh [$d8], a                                  ; $6a01: $e0 $d8

jr_0c5_6a03:
    ld hl, sp+$54                                 ; $6a03: $f8 $54
    ld l, h                                       ; $6a05: $6c
    ld d, d                                       ; $6a06: $52
    nop                                           ; $6a07: $00
    ld l, [hl]                                    ; $6a08: $6e
    ld c, d                                       ; $6a09: $4a
    halt                                          ; $6a0a: $76
    ld l, d                                       ; $6a0b: $6a
    halt                                          ; $6a0c: $76
    ld [hl-], a                                   ; $6a0d: $32
    ld a, $09                                     ; $6a0e: $3e $09
    ld b, b                                       ; $6a10: $40
    ld c, $3a                                     ; $6a11: $0e $3a
    ld [$3729], sp                                ; $6a13: $08 $29 $37
    ld b, e                                       ; $6a16: $43
    ld a, a                                       ; $6a17: $7f
    ld d, d                                       ; $6a18: $52
    ld l, [hl]                                    ; $6a19: $6e
    nop                                           ; $6a1a: $00
    ld d, d                                       ; $6a1b: $52
    ld l, [hl]                                    ; $6a1c: $6e
    ld b, [hl]                                    ; $6a1d: $46
    ld a, [hl]                                    ; $6a1e: $7e
    ccf                                           ; $6a1f: $3f
    rst $38                                       ; $6a20: $ff
    ld [hl], b                                    ; $6a21: $70
    ldh a, [rP1]                                  ; $6a22: $f0 $00
    ret nz                                        ; $6a24: $c0

    ret nz                                        ; $6a25: $c0

    adc a                                         ; $6a26: $8f
    adc a                                         ; $6a27: $8f
    ld sp, $4b3f                                  ; $6a28: $31 $3f $4b
    ld [hl], a                                    ; $6a2b: $77
    nop                                           ; $6a2c: $00
    sub [hl]                                      ; $6a2d: $96
    xor $cc                                       ; $6a2e: $ee $cc
    cp h                                          ; $6a30: $bc
    jp nc, Jump_0c5_52ee                          ; $6a31: $d2 $ee $52

    ld l, [hl]                                    ; $6a34: $6e
    add b                                         ; $6a35: $80
    inc e                                         ; $6a36: $1c
    ld [$7e42], sp                                ; $6a37: $08 $42 $7e
    ld d, [hl]                                    ; $6a3a: $56
    ld l, [hl]                                    ; $6a3b: $6e
    and d                                         ; $6a3c: $a2
    sbc $c6                                       ; $6a3d: $de $c6
    nop                                           ; $6a3f: $00
    cp [hl]                                       ; $6a40: $be
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    inc a                                         ; $6a43: $3c
    inc a                                         ; $6a44: $3c
    ld a, [c]                                     ; $6a45: $f2
    adc $ca                                       ; $6a46: $ce $ca
    nop                                           ; $6a48: $00
    or $65                                        ; $6a49: $f6 $65
    ld a, e                                       ; $6a4b: $7b
    add hl, sp                                    ; $6a4c: $39
    ccf                                           ; $6a4d: $3f
    rrca                                          ; $6a4e: $0f
    rrca                                          ; $6a4f: $0f
    nop                                           ; $6a50: $00
    ld d, $00                                     ; $6a51: $16 $00
    jp Jump_000_38ff                              ; $6a53: $c3 $ff $38


    ld [$3c56], sp                                ; $6a56: $08 $56 $3c
    db $10                                        ; $6a59: $10
    ld [$c008], sp                                ; $6a5a: $08 $08 $c0
    nop                                           ; $6a5d: $00
    ret nz                                        ; $6a5e: $c0

    ld [hl], b                                    ; $6a5f: $70
    ld [hl], b                                    ; $6a60: $70
    db $ec                                        ; $6a61: $ec
    sbc h                                         ; $6a62: $9c
    sub d                                         ; $6a63: $92
    xor $ca                                       ; $6a64: $ee $ca
    nop                                           ; $6a66: $00
    or $66                                        ; $6a67: $f6 $66
    ld a, d                                       ; $6a69: $7a
    dec sp                                        ; $6a6a: $3b
    ccf                                           ; $6a6b: $3f
    ld c, $0f                                     ; $6a6c: $0e $0f
    ld h, d                                       ; $6a6e: $62
    ld b, b                                       ; $6a6f: $40
    ld a, [hl]                                    ; $6a70: $7e
    ld l, b                                       ; $6a71: $68
    ld [$776b], sp                                ; $6a72: $08 $6b $77
    ld h, e                                       ; $6a75: $63
    ld a, a                                       ; $6a76: $7f
    ld l, c                                       ; $6a77: $69
    ld [hl], a                                    ; $6a78: $77
    db $10                                        ; $6a79: $10
    pop hl                                        ; $6a7a: $e1
    rst $38                                       ; $6a7b: $ff
    ld h, c                                       ; $6a7c: $61
    ld [hl], h                                    ; $6a7d: $74
    ld bc, $0303                                  ; $6a7e: $01 $03 $03
    ld a, h                                       ; $6a81: $7c
    ld a, a                                       ; $6a82: $7f
    inc b                                         ; $6a83: $04
    xor a                                         ; $6a84: $af
    ret nc                                        ; $6a85: $d0

    ld b, b                                       ; $6a86: $40
    cp a                                          ; $6a87: $bf
    rlca                                          ; $6a88: $07
    adc d                                         ; $6a89: $8a
    inc b                                         ; $6a8a: $04
    db $fc                                        ; $6a8b: $fc
    db $fc                                        ; $6a8c: $fc
    inc hl                                        ; $6a8d: $23
    ld d, $ee                                     ; $6a8e: $16 $ee
    sub e                                         ; $6a90: $93
    ld [bc], a                                    ; $6a91: $02
    rst $38                                       ; $6a92: $ff
    cp $01                                        ; $6a93: $fe $01
    jp nz, Jump_0c5_5e19                          ; $6a95: $c2 $19 $5e

    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    ccf                                           ; $6a9a: $3f
    adc $ff                                       ; $6a9b: $ce $ff
    inc l                                         ; $6a9d: $2c
    rst $18                                       ; $6a9e: $df
    add [hl]                                      ; $6a9f: $86
    ld a, a                                       ; $6aa0: $7f
    ld b, $80                                     ; $6aa1: $06 $80
    dec [hl]                                      ; $6aa3: $35
    ld [de], a                                    ; $6aa4: $12
    ld [bc], a                                    ; $6aa5: $02
    inc bc                                        ; $6aa6: $03
    ld a, $ff                                     ; $6aa7: $3e $ff
    cp l                                          ; $6aa9: $bd
    ld a, [hl]                                    ; $6aaa: $7e
    sbc d                                         ; $6aab: $9a
    nop                                           ; $6aac: $00
    ld a, l                                       ; $6aad: $7d
    or h                                          ; $6aae: $b4
    ld a, e                                       ; $6aaf: $7b
    ld c, c                                       ; $6ab0: $49
    rst $30                                       ; $6ab1: $f7
    add e                                         ; $6ab2: $83
    rst $38                                       ; $6ab3: $ff
    ld l, $00                                     ; $6ab4: $2e $00
    rst $18                                       ; $6ab6: $df
    sbc l                                         ; $6ab7: $9d
    ld a, a                                       ; $6ab8: $7f
    sbc l                                         ; $6ab9: $9d
    ld a, [hl]                                    ; $6aba: $7e
    ld a, $ff                                     ; $6abb: $3e $ff
    ld [hl], a                                    ; $6abd: $77
    ld [$ebff], sp                                ; $6abe: $08 $ff $eb
    rst $38                                       ; $6ac1: $ff
    rst $18                                       ; $6ac2: $df
    ret z                                         ; $6ac3: $c8

    inc b                                         ; $6ac4: $04
    ldh a, [$f0]                                  ; $6ac5: $f0 $f0
    add b                                         ; $6ac7: $80
    nop                                           ; $6ac8: $00
    add b                                         ; $6ac9: $80
    ret nc                                        ; $6aca: $d0

    ccf                                           ; $6acb: $3f
    ld l, e                                       ; $6acc: $6b
    sbc a                                         ; $6acd: $9f
    rla                                           ; $6ace: $17
    rst $28                                       ; $6acf: $ef
    jp z, $f600                                   ; $6ad0: $ca $00 $f6

    pop hl                                        ; $6ad3: $e1
    rst $38                                       ; $6ad4: $ff
    ld [hl-], a                                   ; $6ad5: $32
    dec a                                         ; $6ad6: $3d
    add hl, de                                    ; $6ad7: $19
    rra                                           ; $6ad8: $1f
    ld c, $08                                     ; $6ad9: $0e $08
    rrca                                          ; $6adb: $0f
    ld bc, $f4fe                                  ; $6adc: $01 $fe $f4
    ld [c], a                                     ; $6adf: $e2
    inc b                                         ; $6ae0: $04
    rrca                                          ; $6ae1: $0f
    rrca                                          ; $6ae2: $0f
    inc sp                                        ; $6ae3: $33
    nop                                           ; $6ae4: $00
    inc a                                         ; $6ae5: $3c
    ret c                                         ; $6ae6: $d8

    rst $20                                       ; $6ae7: $e7
    ld h, c                                       ; $6ae8: $61
    sbc a                                         ; $6ae9: $9f
    rst $00                                       ; $6aea: $c7
    ccf                                           ; $6aeb: $3f
    ld b, h                                       ; $6aec: $44
    nop                                           ; $6aed: $00
    cp h                                          ; $6aee: $bc
    inc de                                        ; $6aef: $13
    rst $28                                       ; $6af0: $ef
    cp $ff                                        ; $6af1: $fe $ff
    rra                                           ; $6af3: $1f
    ldh [$80], a                                  ; $6af4: $e0 $80
    jr nz, @+$81                                  ; $6af6: $20 $7f

    xor e                                         ; $6af8: $ab
    ld a, [$ed04]                                 ; $6af9: $fa $04 $ed
    rst $28                                       ; $6afc: $ef
    ld c, $0f                                     ; $6afd: $0e $0f
    ld sp, hl                                     ; $6aff: $f9
    ld [bc], a                                    ; $6b00: $02
    cp $0f                                        ; $6b01: $fe $0f
    ldh a, [$d4]                                  ; $6b03: $f0 $d4
    dec hl                                        ; $6b05: $2b
    inc bc                                        ; $6b06: $03
    ld [$fe05], sp                                ; $6b07: $08 $05 $fe

jr_0c5_6b0a:
    nop                                           ; $6b0a: $00
    rst $38                                       ; $6b0b: $ff
    ld d, [hl]                                    ; $6b0c: $56
    rst $38                                       ; $6b0d: $ff
    ld h, [hl]                                    ; $6b0e: $66
    sbc [hl]                                      ; $6b0f: $9e
    call z, Call_000_183c                         ; $6b10: $cc $3c $18
    nop                                           ; $6b13: $00
    ld hl, sp+$71                                 ; $6b14: $f8 $71
    pop af                                        ; $6b16: $f1
    pop af                                        ; $6b17: $f1
    pop af                                        ; $6b18: $f1
    ld sp, $91f1                                  ; $6b19: $31 $f1 $91
    nop                                           ; $6b1c: $00
    ld [hl], c                                    ; $6b1d: $71
    db $10                                        ; $6b1e: $10
    ldh a, [$08]                                  ; $6b1f: $f0 $08
    ld [$0f0f], sp                                ; $6b21: $08 $0f $0f
    ld [hl], b                                    ; $6b24: $70
    nop                                           ; $6b25: $00
    ld a, a                                       ; $6b26: $7f
    adc d                                         ; $6b27: $8a
    push af                                       ; $6b28: $f5
    jr nz, jr_0c5_6b0a                            ; $6b29: $20 $df

    ld b, a                                       ; $6b2b: $47
    cp a                                          ; $6b2c: $bf
    sbc a                                         ; $6b2d: $9f
    nop                                           ; $6b2e: $00
    ld a, a                                       ; $6b2f: $7f
    add hl, sp                                    ; $6b30: $39
    ld sp, hl                                     ; $6b31: $f9
    ld l, d                                       ; $6b32: $6a
    halt                                          ; $6b33: $76
    rst $20                                       ; $6b34: $e7
    ei                                            ; $6b35: $fb
    db $eb                                        ; $6b36: $eb
    nop                                           ; $6b37: $00
    rst $30                                       ; $6b38: $f7
    ld h, [hl]                                    ; $6b39: $66
    ei                                            ; $6b3a: $fb
    ld [$f7f7], a                                 ; $6b3b: $ea $f7 $f7
    ei                                            ; $6b3e: $fb
    rst $20                                       ; $6b3f: $e7
    nop                                           ; $6b40: $00
    ei                                            ; $6b41: $fb
    ld sp, $1f3f                                  ; $6b42: $31 $3f $1f
    rra                                           ; $6b45: $1f
    pop hl                                        ; $6b46: $e1
    pop hl                                        ; $6b47: $e1
    inc e                                         ; $6b48: $1c
    nop                                           ; $6b49: $00
    db $fc                                        ; $6b4a: $fc
    or e                                          ; $6b4b: $b3
    ld c, a                                       ; $6b4c: $4f
    inc c                                         ; $6b4d: $0c
    di                                            ; $6b4e: $f3
    pop hl                                        ; $6b4f: $e1
    cp $fc                                        ; $6b50: $fe $fc
    add b                                         ; $6b52: $80
    ld b, d                                       ; $6b53: $42
    ld [bc], a                                    ; $6b54: $02
    ld d, a                                       ; $6b55: $57
    ld l, a                                       ; $6b56: $6f
    add a                                         ; $6b57: $87
    rst $38                                       ; $6b58: $ff
    sbc [hl]                                      ; $6b59: $9e
    xor $84                                       ; $6b5a: $ee $84
    nop                                           ; $6b5c: $00
    db $fc                                        ; $6b5d: $fc
    xor h                                         ; $6b5e: $ac
    call c, $dca4                                 ; $6b5f: $dc $a4 $dc
    xor [hl]                                      ; $6b62: $ae
    sbc $8f                                       ; $6b63: $de $8f
    inc bc                                        ; $6b65: $03
    rst $38                                       ; $6b66: $ff
    ld sp, hl                                     ; $6b67: $f9
    ld sp, hl                                     ; $6b68: $f9
    ld [bc], a                                    ; $6b69: $02
    inc bc                                        ; $6b6a: $03
    ld [bc], a                                    ; $6b6b: $02
    adc b                                         ; $6b6c: $88
    ld [bc], a                                    ; $6b6d: $02
    ld [bc], a                                    ; $6b6e: $02
    jr jr_0c5_6b71                                ; $6b6f: $18 $00

jr_0c5_6b71:
    ld b, $07                                     ; $6b71: $06 $07
    ld b, [hl]                                    ; $6b73: $46
    cp [hl]                                       ; $6b74: $be
    call z, $9c3c                                 ; $6b75: $cc $3c $9c
    ld a, h                                       ; $6b78: $7c
    ld [$7898], sp                                ; $6b79: $08 $98 $78
    sub b                                         ; $6b7c: $90
    ld [hl], b                                    ; $6b7d: $70
    ld [bc], a                                    ; $6b7e: $02
    ld [$b050], sp                                ; $6b7f: $08 $50 $b0
    rst $38                                       ; $6b82: $ff
    nop                                           ; $6b83: $00
    ld bc, $c739                                  ; $6b84: $01 $39 $c7
    and d                                         ; $6b87: $a2
    rst $38                                       ; $6b88: $ff
    db $fd                                        ; $6b89: $fd
    cp $c5                                        ; $6b8a: $fe $c5
    nop                                           ; $6b8c: $00
    ld a, $3c                                     ; $6b8d: $3e $3c
    rlca                                          ; $6b8f: $07
    ld d, a                                       ; $6b90: $57
    rlca                                          ; $6b91: $07
    rrca                                          ; $6b92: $0f
    inc bc                                        ; $6b93: $03
    ld b, [hl]                                    ; $6b94: $46
    add b                                         ; $6b95: $80
    ld e, b                                       ; $6b96: $58
    ld bc, $7e46                                  ; $6b97: $01 $46 $7e
    and h                                         ; $6b9a: $a4
    call c, $dcac                                 ; $6b9b: $dc $ac $dc
    ld c, h                                       ; $6b9e: $4c
    nop                                           ; $6b9f: $00
    cp h                                          ; $6ba0: $bc
    sbc b                                         ; $6ba1: $98
    ld a, b                                       ; $6ba2: $78
    jr c, @-$06                                   ; $6ba3: $38 $f8

    dec b                                         ; $6ba5: $05
    ld b, $0a                                     ; $6ba6: $06 $0a
    ld bc, $140d                                  ; $6ba8: $01 $0d $14
    dec de                                        ; $6bab: $1b
    dec e                                         ; $6bac: $1d
    inc de                                        ; $6bad: $13
    add hl, hl                                    ; $6bae: $29
    scf                                           ; $6baf: $37
    or h                                          ; $6bb0: $b4
    add hl, bc                                    ; $6bb1: $09
    nop                                           ; $6bb2: $00
    add hl, hl                                    ; $6bb3: $29
    scf                                           ; $6bb4: $37
    dec [hl]                                      ; $6bb5: $35
    ei                                            ; $6bb6: $fb
    ld [hl], l                                    ; $6bb7: $75
    ei                                            ; $6bb8: $fb
    ldh a, [rIE]                                  ; $6bb9: $f0 $ff
    nop                                           ; $6bbb: $00
    ret c                                         ; $6bbc: $d8

    rst $18                                       ; $6bbd: $df
    sbc d                                         ; $6bbe: $9a
    sbc l                                         ; $6bbf: $9d
    ld a, [de]                                    ; $6bc0: $1a
    dec e                                         ; $6bc1: $1d
    ld [$000f], sp                                ; $6bc2: $08 $0f $00
    inc c                                         ; $6bc5: $0c
    rrca                                          ; $6bc6: $0f
    adc a                                         ; $6bc7: $8f
    adc a                                         ; $6bc8: $8f
    ld de, $a51f                                  ; $6bc9: $11 $1f $a5
    cp e                                          ; $6bcc: $bb
    nop                                           ; $6bcd: $00
    xor c                                         ; $6bce: $a9
    or a                                          ; $6bcf: $b7
    or d                                          ; $6bd0: $b2
    xor [hl]                                      ; $6bd1: $ae
    and h                                         ; $6bd2: $a4
    cp h                                          ; $6bd3: $bc
    cp b                                          ; $6bd4: $b8
    cp b                                          ; $6bd5: $b8
    nop                                           ; $6bd6: $00
    ld h, b                                       ; $6bd7: $60
    ldh [$30], a                                  ; $6bd8: $e0 $30
    jr nc, jr_0c5_6c04                            ; $6bda: $30 $28

    jr c, jr_0c5_6c12                             ; $6bdc: $38 $34

    inc l                                         ; $6bde: $2c
    nop                                           ; $6bdf: $00
    ld [hl+], a                                   ; $6be0: $22
    ld a, $2a                                     ; $6be1: $3e $2a
    ld [hl], $32                                  ; $6be3: $36 $32
    ld a, $16                                     ; $6be5: $3e $16
    ld a, [de]                                    ; $6be7: $1a

jr_0c5_6be8:
    jr nz, @+$0e                                  ; $6be8: $20 $0c

    inc c                                         ; $6bea: $0c
    ld b, b                                       ; $6beb: $40
    ld [$1d12], sp                                ; $6bec: $08 $12 $1d
    inc d                                         ; $6bef: $14
    dec de                                        ; $6bf0: $1b
    dec h                                         ; $6bf1: $25
    ld c, b                                       ; $6bf2: $48
    dec sp                                        ; $6bf3: $3b
    ld [bc], a                                    ; $6bf4: $02
    ld [$3b35], sp                                ; $6bf5: $08 $35 $3b
    ld l, $11                                     ; $6bf8: $2e $11
    rst $30                                       ; $6bfa: $f7
    pop hl                                        ; $6bfb: $e1
    rst $38                                       ; $6bfc: $ff
    jr z, jr_0c5_6be8                             ; $6bfd: $28 $e9

    rst $30                                       ; $6bff: $f7
    ld [bc], a                                    ; $6c00: $02
    ld [$60e1], sp                                ; $6c01: $08 $e1 $60

jr_0c5_6c04:
    ld b, e                                       ; $6c04: $43
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    jr nz, @+$0a                                  ; $6c07: $20 $08

    nop                                           ; $6c09: $00
    ld b, c                                       ; $6c0a: $41
    nop                                           ; $6c0b: $00
    inc b                                         ; $6c0c: $04
    ld h, [hl]                                    ; $6c0d: $66
    inc bc                                        ; $6c0e: $03
    add hl, bc                                    ; $6c0f: $09
    ld c, $0d                                     ; $6c10: $0e $0d

jr_0c5_6c12:
    nop                                           ; $6c12: $00
    ld c, $99                                     ; $6c13: $0e $99
    sbc [hl]                                      ; $6c15: $9e
    db $fd                                        ; $6c16: $fd

Jump_0c5_6c17:
    cp $5d                                        ; $6c17: $fe $5d
    cp [hl]                                       ; $6c19: $be
    inc e                                         ; $6c1a: $1c
    nop                                           ; $6c1b: $00
    rst $38                                       ; $6c1c: $ff
    sbc a                                         ; $6c1d: $9f
    ld a, a                                       ; $6c1e: $7f
    inc a                                         ; $6c1f: $3c
    db $fc                                        ; $6c20: $fc
    ld a, $fe                                     ; $6c21: $3e $fe
    ld a, a                                       ; $6c23: $7f
    nop                                           ; $6c24: $00
    rst $38                                       ; $6c25: $ff
    ld a, a                                       ; $6c26: $7f
    rst $38                                       ; $6c27: $ff
    dec [hl]                                      ; $6c28: $35
    ld a, [$ff30]                                 ; $6c29: $fa $30 $ff
    cp a                                          ; $6c2c: $bf
    ld hl, $077f                                  ; $6c2d: $21 $7f $07
    add d                                         ; $6c30: $82
    inc hl                                        ; $6c31: $23
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    db $f4                                        ; $6c34: $f4
    dec bc                                        ; $6c35: $0b
    ld e, h                                       ; $6c36: $5c
    add hl, bc                                    ; $6c37: $09
    adc b                                         ; $6c38: $88
    xor a                                         ; $6c39: $af
    ld bc, $3dfe                                  ; $6c3a: $01 $fe $3d
    ld a, $34                                     ; $6c3d: $3e $34
    ld [$fdfa], sp                                ; $6c3f: $08 $fa $fd
    sbc h                                         ; $6c42: $9c
    nop                                           ; $6c43: $00
    ld a, a                                       ; $6c44: $7f
    dec de                                        ; $6c45: $1b
    rst $20                                       ; $6c46: $e7
    sbc [hl]                                      ; $6c47: $9e
    ld a, [hl]                                    ; $6c48: $7e
    sbc c                                         ; $6c49: $99
    ld a, a                                       ; $6c4a: $7f
    ld [hl-], a                                   ; $6c4b: $32
    nop                                           ; $6c4c: $00
    db $fd                                        ; $6c4d: $fd
    jr c, @+$01                                   ; $6c4e: $38 $ff

    ccf                                           ; $6c50: $3f
    rst $38                                       ; $6c51: $ff
    ld l, a                                       ; $6c52: $6f
    rst $28                                       ; $6c53: $ef
    ld h, c                                       ; $6c54: $61
    nop                                           ; $6c55: $00
    pop hl                                        ; $6c56: $e1
    ret nz                                        ; $6c57: $c0

    ret nz                                        ; $6c58: $c0

    ld h, e                                       ; $6c59: $63
    db $e3                                        ; $6c5a: $e3
    push hl                                       ; $6c5b: $e5
    rst $20                                       ; $6c5c: $e7
    db $eb                                        ; $6c5d: $eb
    db $10                                        ; $6c5e: $10
    db $ed                                        ; $6c5f: $ed
    db $eb                                        ; $6c60: $eb
    db $ed                                        ; $6c61: $ed

jr_0c5_6c62:
    inc bc                                        ; $6c62: $03
    nop                                           ; $6c63: $00
    db $eb                                        ; $6c64: $eb
    ld c, d                                       ; $6c65: $4a
    adc $2c                                       ; $6c66: $ce $2c
    nop                                           ; $6c68: $00
    db $ec                                        ; $6c69: $ec
    dec [hl]                                      ; $6c6a: $35
    dec sp                                        ; $6c6b: $3b
    inc sp                                        ; $6c6c: $33
    dec a                                         ; $6c6d: $3d
    ld a, [hl-]                                   ; $6c6e: $3a
    dec a                                         ; $6c6f: $3d
    ld a, [de]                                    ; $6c70: $1a
    nop                                           ; $6c71: $00
    dec e                                         ; $6c72: $1d
    add hl, de                                    ; $6c73: $19
    ld e, $0d                                     ; $6c74: $1e $0d
    ld c, $0c                                     ; $6c76: $0e $0c
    rrca                                          ; $6c78: $0f
    ld b, $00                                     ; $6c79: $06 $00
    rlca                                          ; $6c7b: $07
    inc bc                                        ; $6c7c: $03
    inc bc                                        ; $6c7d: $03
    ld bc, $8101                                  ; $6c7e: $01 $01 $81
    add c                                         ; $6c81: $81
    add d                                         ; $6c82: $82
    nop                                           ; $6c83: $00
    add e                                         ; $6c84: $83
    ld b, d                                       ; $6c85: $42
    jp $c342                                      ; $6c86: $c3 $42 $c3


    daa                                           ; $6c89: $27
    rst $20                                       ; $6c8a: $e7
    cp e                                          ; $6c8b: $bb
    nop                                           ; $6c8c: $00
    ld a, h                                       ; $6c8d: $7c
    inc a                                         ; $6c8e: $3c
    rst $18                                       ; $6c8f: $df
    add hl, bc                                    ; $6c90: $09
    cp $58                                        ; $6c91: $fe $58
    cp a                                          ; $6c93: $bf
    ld e, $00                                     ; $6c94: $1e $00
    rst $38                                       ; $6c96: $ff
    ld a, a                                       ; $6c97: $7f
    cp a                                          ; $6c98: $bf
    sub e                                         ; $6c99: $93
    ld [hl], e                                    ; $6c9a: $73
    pop af                                        ; $6c9b: $f1
    pop af                                        ; $6c9c: $f1
    rst $38                                       ; $6c9d: $ff
    nop                                           ; $6c9e: $00
    rra                                           ; $6c9f: $1f
    or h                                          ; $6ca0: $b4
    ldh a, [$e8]                                  ; $6ca1: $f0 $e8
    ldh [$90], a                                  ; $6ca3: $e0 $90
    ldh [$ca], a                                  ; $6ca5: $e0 $ca
    nop                                           ; $6ca7: $00
    ld [hl], b                                    ; $6ca8: $70
    db $f4                                        ; $6ca9: $f4
    jr z, @-$15                                   ; $6caa: $28 $e9

    jr nc, jr_0c5_6c62                            ; $6cac: $30 $b4

    ld l, b                                       ; $6cae: $68
    jr nz, jr_0c5_6cb1                            ; $6caf: $20 $00

jr_0c5_6cb1:
    rst $38                                       ; $6cb1: $ff
    ret nc                                        ; $6cb2: $d0

    jr nc, jr_0c5_6d20                            ; $6cb3: $30 $6b

    sbc e                                         ; $6cb5: $9b
    dec l                                         ; $6cb6: $2d
    sbc $8a                                       ; $6cb7: $de $8a
    nop                                           ; $6cb9: $00
    db $fd                                        ; $6cba: $fd
    call nc, $e9fb                                ; $6cbb: $d4 $fb $e9
    rst $30                                       ; $6cbe: $f7
    ld h, e                                       ; $6cbf: $63
    ld a, a                                       ; $6cc0: $7f
    ld d, a                                       ; $6cc1: $57
    nop                                           ; $6cc2: $00
    ld l, a                                       ; $6cc3: $6f
    and $f9                                       ; $6cc4: $e6 $f9
    ld sp, $8fcf                                  ; $6cc6: $31 $cf $8f
    ld a, a                                       ; $6cc9: $7f
    ccf                                           ; $6cca: $3f
    ld [$f8ff], sp                                ; $6ccb: $08 $ff $f8
    ld hl, sp-$40                                 ; $6cce: $f8 $c0
    ld bc, $2000                                  ; $6cd0: $01 $00 $20
    ldh [$50], a                                  ; $6cd3: $e0 $50
    nop                                           ; $6cd5: $00
    rst $38                                       ; $6cd6: $ff
    push af                                       ; $6cd7: $f5
    adc a                                         ; $6cd8: $8f
    adc [hl]                                      ; $6cd9: $8e
    ld bc, $0080                                  ; $6cda: $01 $80 $00
    add sp, $00                                   ; $6cdd: $e8 $00
    nop                                           ; $6cdf: $00
    ld a, l                                       ; $6ce0: $7d
    add b                                         ; $6ce1: $80
    rrca                                          ; $6ce2: $0f
    ldh a, [$d0]                                  ; $6ce3: $f0 $d0
    rst $38                                       ; $6ce5: $ff
    inc [hl]                                      ; $6ce6: $34
    nop                                           ; $6ce7: $00
    dec sp                                        ; $6ce8: $3b
    inc [hl]                                      ; $6ce9: $34
    dec sp                                        ; $6cea: $3b
    jr nc, jr_0c5_6d2c                            ; $6ceb: $30 $3f

    ld a, [hl-]                                   ; $6ced: $3a
    dec a                                         ; $6cee: $3d
    jr c, jr_0c5_6cf1                             ; $6cef: $38 $00

jr_0c5_6cf1:
    ccf                                           ; $6cf1: $3f
    add hl, de                                    ; $6cf2: $19
    rra                                           ; $6cf3: $1f
    ld e, $1f                                     ; $6cf4: $1e $1f
    add hl, bc                                    ; $6cf6: $09
    ld c, $8d                                     ; $6cf7: $0e $8d
    nop                                           ; $6cf9: $00
    adc [hl]                                      ; $6cfa: $8e
    add l                                         ; $6cfb: $85
    add [hl]                                      ; $6cfc: $86
    add h                                         ; $6cfd: $84
    add a                                         ; $6cfe: $87
    adc [hl]                                      ; $6cff: $8e
    adc a                                         ; $6d00: $8f
    ld a, [hl]                                    ; $6d01: $7e
    nop                                           ; $6d02: $00
    rst $38                                       ; $6d03: $ff
    add [hl]                                      ; $6d04: $86
    rst $38                                       ; $6d05: $ff
    ld h, [hl]                                    ; $6d06: $66
    sbc a                                         ; $6d07: $9f
    ld e, $ff                                     ; $6d08: $1e $ff
    ld b, b                                       ; $6d0a: $40
    nop                                           ; $6d0b: $00
    ret nz                                        ; $6d0c: $c0

    ld b, e                                       ; $6d0d: $43
    jp $ff7c                                      ; $6d0e: $c3 $7c $ff


    ld hl, $b0fe                                  ; $6d11: $21 $fe $b0
    add b                                         ; $6d14: $80
    ld b, h                                       ; $6d15: $44
    nop                                           ; $6d16: $00
    cp a                                          ; $6d17: $bf
    ld a, a                                       ; $6d18: $7f
    or b                                          ; $6d19: $b0
    ld [hl], b                                    ; $6d1a: $70
    dec b                                         ; $6d1b: $05
    dec b                                         ; $6d1c: $05
    cp $88                                        ; $6d1d: $fe $88
    scf                                           ; $6d1f: $37

jr_0c5_6d20:
    ld b, $d4                                     ; $6d20: $06 $d4
    dec hl                                        ; $6d22: $2b
    dec b                                         ; $6d23: $05
    db $10                                        ; $6d24: $10
    ld a, [bc]                                    ; $6d25: $0a
    cp $60                                        ; $6d26: $fe $60
    ld h, b                                       ; $6d28: $60
    nop                                           ; $6d29: $00
    pop hl                                        ; $6d2a: $e1
    rst $38                                       ; $6d2b: $ff

jr_0c5_6d2c:
    ld [hl], d                                    ; $6d2c: $72
    db $fd                                        ; $6d2d: $fd
    cp b                                          ; $6d2e: $b8
    ld a, a                                       ; $6d2f: $7f
    dec a                                         ; $6d30: $3d
    cp $40                                        ; $6d31: $fe $40
    ld a, [hl]                                    ; $6d33: $7e
    jr z, jr_0c5_6d3d                             ; $6d34: $28 $07

    inc de                                        ; $6d36: $13
    rra                                           ; $6d37: $1f
    dec d                                         ; $6d38: $15
    rra                                           ; $6d39: $1f
    jp hl                                         ; $6d3a: $e9


    rst $30                                       ; $6d3b: $f7
    ld b, c                                       ; $6d3c: $41

jr_0c5_6d3d:
    db $e3                                        ; $6d3d: $e3
    ld b, $05                                     ; $6d3e: $06 $05
    ld [bc], a                                    ; $6d40: $02
    db $fd                                        ; $6d41: $fd
    ld e, h                                       ; $6d42: $5c
    and e                                         ; $6d43: $a3
    add c                                         ; $6d44: $81
    ld [hl+], a                                   ; $6d45: $22
    stop                                          ; $6d46: $10 $00
    ret nc                                        ; $6d48: $d0

    rst $28                                       ; $6d49: $ef
    add e                                         ; $6d4a: $83
    rst $38                                       ; $6d4b: $ff
    ld c, a                                       ; $6d4c: $4f
    cp a                                          ; $6d4d: $bf
    cp a                                          ; $6d4e: $bf
    ld a, a                                       ; $6d4f: $7f
    inc bc                                        ; $6d50: $03
    ld [hl], c                                    ; $6d51: $71
    pop af                                        ; $6d52: $f1
    ldh [$e0], a                                  ; $6d53: $e0 $e0
    ret nz                                        ; $6d55: $c0

    ret nz                                        ; $6d56: $c0

    ld c, $03                                     ; $6d57: $0e $03
    db $e4                                        ; $6d59: $e4

jr_0c5_6d5a:
    inc b                                         ; $6d5a: $04
    nop                                           ; $6d5b: $00
    rst $08                                       ; $6d5c: $cf
    rst $38                                       ; $6d5d: $ff
    add a                                         ; $6d5e: $87
    rst $38                                       ; $6d5f: $ff
    and a                                         ; $6d60: $a7
    rst $18                                       ; $6d61: $df
    add [hl]                                      ; $6d62: $86
    cp $00                                        ; $6d63: $fe $00
    and [hl]                                      ; $6d65: $a6
    sbc $a6                                       ; $6d66: $de $a6
    sbc $9f                                       ; $6d68: $de $9f
    ld a, a                                       ; $6d6a: $7f
    ld d, [hl]                                    ; $6d6b: $56
    or a                                          ; $6d6c: $b7
    nop                                           ; $6d6d: $00
    ld l, e                                       ; $6d6e: $6b
    sbc e                                         ; $6d6f: $9b
    dec [hl]                                      ; $6d70: $35
    call $e69a                                    ; $6d71: $cd $9a $e6
    call $10f3                                    ; $6d74: $cd $f3 $10
    ld h, e                                       ; $6d77: $63
    ld a, h                                       ; $6d78: $7c
    jr nc, @+$3a                                  ; $6d79: $30 $38

jr_0c5_6d7b:
    dec b                                         ; $6d7b: $05
    xor e                                         ; $6d7c: $ab
    ei                                            ; $6d7d: $fb
    ld b, h                                       ; $6d7e: $44
    db $fc                                        ; $6d7f: $fc
    ld b, b                                       ; $6d80: $40
    rst $28                                       ; $6d81: $ef
    ld a, [bc]                                    ; $6d82: $0a
    dec b                                         ; $6d83: $05
    ld sp, hl                                     ; $6d84: $f9
    cp $66                                        ; $6d85: $fe $66
    ld sp, hl                                     ; $6d87: $f9
    ret c                                         ; $6d88: $d8

    ccf                                           ; $6d89: $3f
    db $10                                        ; $6d8a: $10
    and d                                         ; $6d8b: $a2
    db $fd                                        ; $6d8c: $fd
    ld hl, sp+$16                                 ; $6d8d: $f8 $16
    dec b                                         ; $6d8f: $05
    cpl                                           ; $6d90: $2f

jr_0c5_6d91:
    rst $18                                       ; $6d91: $df
    rst $08                                       ; $6d92: $cf
    ccf                                           ; $6d93: $3f
    nop                                           ; $6d94: $00
    adc h                                         ; $6d95: $8c
    ld a, h                                       ; $6d96: $7c
    jr jr_0c5_6d91                                ; $6d97: $18 $f8

    pop af                                        ; $6d99: $f1
    pop af                                        ; $6d9a: $f1
    ret nz                                        ; $6d9b: $c0

    ret nz                                        ; $6d9c: $c0

    nop                                           ; $6d9d: $00
    or b                                          ; $6d9e: $b0
    ld [hl], b                                    ; $6d9f: $70
    jr z, @-$26                                   ; $6da0: $28 $d8

    sub h                                         ; $6da2: $94
    db $ec                                        ; $6da3: $ec
    set 6, a                                      ; $6da4: $cb $f7
    nop                                           ; $6da6: $00
    and $f9                                       ; $6da7: $e6 $f9
    ld [hl], b                                    ; $6da9: $70
    ld a, a                                       ; $6daa: $7f
    db $fc                                        ; $6dab: $fc
    rst $38                                       ; $6dac: $ff
    sbc b                                         ; $6dad: $98
    ld a, b                                       ; $6dae: $78
    ld bc, $9f67                                  ; $6daf: $01 $67 $9f
    jr c, jr_0c5_6d7b                             ; $6db2: $38 $c7

    adc a                                         ; $6db4: $8f
    ldh a, [$e0]                                  ; $6db5: $f0 $e0
    xor b                                         ; $6db7: $a8
    rlca                                          ; $6db8: $07
    jr nz, jr_0c5_6d5a                            ; $6db9: $20 $9f

jr_0c5_6dbb:
    sbc a                                         ; $6dbb: $9f
    ld b, $0d                                     ; $6dbc: $06 $0d
    db $fd                                        ; $6dbe: $fd
    cp $14                                        ; $6dbf: $fe $14
    db $eb                                        ; $6dc1: $eb
    and c                                         ; $6dc2: $a1
    jr nz, @+$61                                  ; $6dc3: $20 $5f

    rla                                           ; $6dc5: $17
    ldh a, [rNR12]                                ; $6dc6: $f0 $12
    ld a, $3e                                     ; $6dc8: $3e $3e
    ret z                                         ; $6dca: $c8

    rst $30                                       ; $6dcb: $f7
    and e                                         ; $6dcc: $a3
    jr nc, jr_0c5_6e2e                            ; $6dcd: $30 $5f

    rrca                                          ; $6dcf: $0f
    sbc [hl]                                      ; $6dd0: $9e
    ld bc, $033c                                  ; $6dd1: $01 $3c $03
    rst $38                                       ; $6dd4: $ff
    ld a, c                                       ; $6dd5: $79
    ld a, [hl]                                    ; $6dd6: $7e
    jr c, jr_0c5_6ddb                             ; $6dd7: $38 $02

    ccf                                           ; $6dd9: $3f
    inc d                                         ; $6dda: $14

jr_0c5_6ddb:
    db $eb                                        ; $6ddb: $eb
    pop hl                                        ; $6ddc: $e1
    cp $e8                                        ; $6ddd: $fe $e8
    call nc, $cf07                                ; $6ddf: $d4 $07 $cf
    nop                                           ; $6de2: $00
    rst $08                                       ; $6de3: $cf
    ret nz                                        ; $6de4: $c0

    ret nz                                        ; $6de5: $c0

    ld h, b                                       ; $6de6: $60
    ldh [$71], a                                  ; $6de7: $e0 $71
    pop af                                        ; $6de9: $f1
    db $e4                                        ; $6dea: $e4
    nop                                           ; $6deb: $00
    db $fc                                        ; $6dec: $fc
    sub h                                         ; $6ded: $94
    ld a, h                                       ; $6dee: $7c
    ld l, h                                       ; $6def: $6c
    sbc h                                         ; $6df0: $9c
    inc [hl]                                      ; $6df1: $34
    call z, Call_000_209c                         ; $6df2: $cc $9c $20
    db $e4                                        ; $6df5: $e4
    jp nc, Jump_000_0384                          ; $6df6: $d2 $84 $03

    jp nc, Jump_0c5_56ee                          ; $6df9: $d2 $ee $56

    ld l, a                                       ; $6dfc: $6f
    ld c, [hl]                                    ; $6dfd: $4e
    jr nz, @+$79                                  ; $6dfe: $20 $77

    ld d, e                                       ; $6e00: $53
    inc b                                         ; $6e01: $04
    nop                                           ; $6e02: $00
    ld h, e                                       ; $6e03: $63
    ld a, a                                       ; $6e04: $7f
    dec h                                         ; $6e05: $25
    dec sp                                        ; $6e06: $3b
    ld [hl-], a                                   ; $6e07: $32
    nop                                           ; $6e08: $00
    dec a                                         ; $6e09: $3d
    add hl, sp                                    ; $6e0a: $39
    ld a, $90                                     ; $6e0b: $3e $90

Jump_0c5_6e0d:
    ld [hl], b                                    ; $6e0d: $70
    ld l, h                                       ; $6e0e: $6c
    sbc h                                         ; $6e0f: $9c
    inc sp                                        ; $6e10: $33
    nop                                           ; $6e11: $00
    rst $08                                       ; $6e12: $cf
    adc [hl]                                      ; $6e13: $8e
    pop af                                        ; $6e14: $f1
    ld d, d                                       ; $6e15: $52
    db $fd                                        ; $6e16: $fd
    add sp, -$01                                  ; $6e17: $e8 $ff
    sbc [hl]                                      ; $6e19: $9e
    jr nz, jr_0c5_6dbb                            ; $6e1a: $20 $9f

    ld a, a                                       ; $6e1c: $7f
    ld [hl], b                                    ; $6e1d: $70
    dec d                                         ; $6e1e: $15
    add b                                         ; $6e1f: $80
    add b                                         ; $6e20: $80
    ld [hl], e                                    ; $6e21: $73
    di                                            ; $6e22: $f3
    call z, Call_000_3f00                         ; $6e23: $cc $00 $3f
    inc sp                                        ; $6e26: $33
    db $fc                                        ; $6e27: $fc
    call z, Call_0c5_63f3                         ; $6e28: $cc $f3 $63
    sbc a                                         ; $6e2b: $9f
    ld [de], a                                    ; $6e2c: $12
    inc b                                         ; $6e2d: $04

jr_0c5_6e2e:
    dec e                                         ; $6e2e: $1d
    ld l, b                                       ; $6e2f: $68
    ld [hl], a                                    ; $6e30: $77
    sub e                                         ; $6e31: $93
    rst $28                                       ; $6e32: $ef
    ld e, h                                       ; $6e33: $5c
    dec b                                         ; $6e34: $05
    ld a, a                                       ; $6e35: $7f
    ld a, $a0                                     ; $6e36: $3e $a0
    cp [hl]                                       ; $6e38: $be
    dec b                                         ; $6e39: $05
    cp $02                                        ; $6e3a: $fe $02
    ld b, $e2                                     ; $6e3c: $06 $e2
    db $e3                                        ; $6e3e: $e3
    ld [c], a                                     ; $6e3f: $e2
    db $e3                                        ; $6e40: $e3
    ld [hl+], a                                   ; $6e41: $22
    db $10                                        ; $6e42: $10
    db $e3                                        ; $6e43: $e3
    and d                                         ; $6e44: $a2
    ld h, e                                       ; $6e45: $63
    inc b                                         ; $6e46: $04
    ld [$63a2], sp                                ; $6e47: $08 $a2 $63
    sub b                                         ; $6e4a: $90
    ld [hl], b                                    ; $6e4b: $70
    ld h, h                                       ; $6e4c: $64
    or b                                          ; $6e4d: $b0
    jp z, $0402                                   ; $6e4e: $ca $02 $04

    ld [$f030], sp                                ; $6e51: $08 $30 $f0
    inc b                                         ; $6e54: $04
    ld [$7878], sp                                ; $6e55: $08 $78 $78
    ld [bc], a                                    ; $6e58: $02
    ld b, h                                       ; $6e59: $44
    ld a, h                                       ; $6e5a: $7c
    ld d, d                                       ; $6e5b: $52
    ld l, [hl]                                    ; $6e5c: $6e
    ld c, c                                       ; $6e5d: $49
    ld [hl], a                                    ; $6e5e: $77
    db $10                                        ; $6e5f: $10

jr_0c5_6e60:
    inc e                                         ; $6e60: $1c
    ld bc, $0140                                  ; $6e61: $01 $40 $01
    inc [hl]                                      ; $6e64: $34
    add hl, bc                                    ; $6e65: $09
    inc hl                                        ; $6e66: $23
    ccf                                           ; $6e67: $3f
    ld h, $3f                                     ; $6e68: $26 $3f
    dec l                                         ; $6e6a: $2d
    ld a, $00                                     ; $6e6b: $3e $00
    dec sp                                        ; $6e6d: $3b
    inc a                                         ; $6e6e: $3c

jr_0c5_6e6f:
    ld h, [hl]                                    ; $6e6f: $66
    ld a, c                                       ; $6e70: $79

jr_0c5_6e71:
    adc h                                         ; $6e71: $8c
    di                                            ; $6e72: $f3
    xor [hl]                                      ; $6e73: $ae
    sbc $00                                       ; $6e74: $de $00
    ld h, $de                                     ; $6e76: $26 $de
    ld c, h                                       ; $6e78: $4c
    cp h                                          ; $6e79: $bc
    call z, $983c                                 ; $6e7a: $cc $3c $98
    ld a, b                                       ; $6e7d: $78
    dec de                                        ; $6e7e: $1b
    jr nc, jr_0c5_6e71                            ; $6e7f: $30 $f0

    ld h, b                                       ; $6e81: $60
    ld [hl-], a                                   ; $6e82: $32
    ld de, $3de2                                  ; $6e83: $11 $e2 $3d
    ld b, d                                       ; $6e86: $42
    call z, Call_000_3407                         ; $6e87: $cc $07 $34
    add hl, bc                                    ; $6e8a: $09
    ld [bc], a                                    ; $6e8b: $02
    ld c, h                                       ; $6e8c: $4c
    cp h                                          ; $6e8d: $bc
    ld c, h                                       ; $6e8e: $4c
    cp h                                          ; $6e8f: $bc
    ret c                                         ; $6e90: $d8

    jr c, jr_0c5_6eb5                             ; $6e91: $38 $22

    jr @+$1e                                      ; $6e93: $18 $1c

    ld [$1f1f], sp                                ; $6e95: $08 $1f $1f
    rra                                           ; $6e98: $1f
    daa                                           ; $6e99: $27
    ld a, h                                       ; $6e9a: $7c
    inc b                                         ; $6e9b: $04
    ld d, e                                       ; $6e9c: $53
    ld l, a                                       ; $6e9d: $6f
    or [hl]                                       ; $6e9e: $b6
    jr nz, jr_0c5_6e6f                            ; $6e9f: $20 $ce

    and h                                         ; $6ea1: $a4
    ld d, h                                       ; $6ea2: $54
    inc bc                                        ; $6ea3: $03
    scf                                           ; $6ea4: $37
    rst $08                                       ; $6ea5: $cf
    ld b, $f9                                     ; $6ea6: $06 $f9
    ldh a, [$88]                                  ; $6ea8: $f0 $88
    ld c, b                                       ; $6eaa: $48
    ld b, $8f                                     ; $6eab: $06 $8f
    adc a                                         ; $6ead: $8f
    inc bc                                        ; $6eae: $03
    ld bc, $0100                                  ; $6eaf: $01 $00 $01
    ld bc, $00c3                                  ; $6eb2: $01 $c3 $00

jr_0c5_6eb5:
    jp nz, $e5e6                                  ; $6eb5: $c2 $e6 $e5

    db $dd                                        ; $6eb8: $dd
    ccf                                           ; $6eb9: $3f
    dec de                                        ; $6eba: $1b
    rst $20                                       ; $6ebb: $e7
    add $20                                       ; $6ebc: $c6 $20
    ld sp, hl                                     ; $6ebe: $f9
    pop af                                        ; $6ebf: $f1
    add b                                         ; $6ec0: $80
    inc bc                                        ; $6ec1: $03
    rst $08                                       ; $6ec2: $cf
    rst $38                                       ; $6ec3: $ff
    ld c, [hl]                                    ; $6ec4: $4e
    rst $08                                       ; $6ec5: $cf
    rst $00                                       ; $6ec6: $c7
    db $10                                        ; $6ec7: $10
    rst $00                                       ; $6ec8: $c7
    add c                                         ; $6ec9: $81
    add c                                         ; $6eca: $81
    ld d, [hl]                                    ; $6ecb: $56
    dec c                                         ; $6ecc: $0d
    sbc b                                         ; $6ecd: $98
    ld a, b                                       ; $6ece: $78
    ld [hl], $ce                                  ; $6ecf: $36 $ce
    jr z, jr_0c5_6e60                             ; $6ed1: $28 $8d

    di                                            ; $6ed3: $f3
    add [hl]                                      ; $6ed4: $86
    dec c                                         ; $6ed5: $0d
    xor b                                         ; $6ed6: $a8
    ld d, b                                       ; $6ed7: $50
    ld bc, $744c                                  ; $6ed8: $01 $4c $74
    inc [hl]                                      ; $6edb: $34
    nop                                           ; $6edc: $00
    inc a                                         ; $6edd: $3c
    inc c                                         ; $6ede: $0c
    inc c                                         ; $6edf: $0c
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    add hl, hl                                    ; $6ee2: $29
    scf                                           ; $6ee3: $37
    inc [hl]                                      ; $6ee4: $34
    nop                                           ; $6ee5: $00
    dec sp                                        ; $6ee6: $3b
    add hl, de                                    ; $6ee7: $19
    ld e, $0f                                     ; $6ee8: $1e $0f
    rrca                                          ; $6eea: $0f
    ld [de], a                                    ; $6eeb: $12
    dec e                                         ; $6eec: $1d
    dec d                                         ; $6eed: $15
    ld [$2b1b], sp                                ; $6eee: $08 $1b $2b
    scf                                           ; $6ef1: $37
    ld l, $f0                                     ; $6ef2: $2e $f0
    inc b                                         ; $6ef4: $04
    adc c                                         ; $6ef5: $89
    adc [hl]                                      ; $6ef6: $8e
    ld c, c                                       ; $6ef7: $49
    ld bc, $f9ce                                  ; $6ef8: $01 $ce $f9
    cp $8d                                        ; $6efb: $fe $8d
    adc [hl]                                      ; $6efd: $8e
    adc c                                         ; $6efe: $89
    adc [hl]                                      ; $6eff: $8e
    and b                                         ; $6f00: $a0
    dec c                                         ; $6f01: $0d
    nop                                           ; $6f02: $00
    ld c, l                                       ; $6f03: $4d
    db $fd                                        ; $6f04: $fd
    ld l, e                                       ; $6f05: $6b
    rst $30                                       ; $6f06: $f7
    ld d, h                                       ; $6f07: $54
    ei                                            ; $6f08: $fb
    ld l, d                                       ; $6f09: $6a
    rst $38                                       ; $6f0a: $ff
    nop                                           ; $6f0b: $00
    ld a, h                                       ; $6f0c: $7c
    rst $38                                       ; $6f0d: $ff
    ld c, a                                       ; $6f0e: $4f
    rst $08                                       ; $6f0f: $cf
    ld b, a                                       ; $6f10: $47
    rst $00                                       ; $6f11: $c7
    ld a, a                                       ; $6f12: $7f
    rst $38                                       ; $6f13: $ff
    nop                                           ; $6f14: $00
    jp c, $d2e6                                   ; $6f15: $da $e6 $d2

    xor $d6                                       ; $6f18: $ee $d6
    xor $c2                                       ; $6f1a: $ee $c2
    cp $0a                                        ; $6f1c: $fe $0a
    sub $ee                                       ; $6f1e: $d6 $ee
    and [hl]                                      ; $6f20: $a6
    sbc $a0                                       ; $6f21: $de $a0
    dec c                                         ; $6f23: $0d
    ld b, b                                       ; $6f24: $40
    sub c                                         ; $6f25: $91
    ld [hl], $04                                  ; $6f26: $36 $04
    ld bc, $5000                                  ; $6f28: $01 $00 $50
    nop                                           ; $6f2b: $00
    ld [hl+], a                                   ; $6f2c: $22
    add b                                         ; $6f2d: $80
    ld e, d                                       ; $6f2e: $5a
    and l                                         ; $6f2f: $a5
    xor d                                         ; $6f30: $aa
    inc l                                         ; $6f31: $2c
    and b                                         ; $6f32: $a0
    and b                                         ; $6f33: $a0
    dec e                                         ; $6f34: $1d
    rrca                                          ; $6f35: $0f
    inc h                                         ; $6f36: $24
    rlca                                          ; $6f37: $07
    rst $30                                       ; $6f38: $f7
    rst $38                                       ; $6f39: $ff
    dec de                                        ; $6f3a: $1b
    rla                                           ; $6f3b: $17
    ld d, $02                                     ; $6f3c: $16 $02
    add hl, de                                    ; $6f3e: $19
    add hl, de                                    ; $6f3f: $19
    ld e, $cc                                     ; $6f40: $1e $cc
    rst $08                                       ; $6f42: $cf
    ccf                                           ; $6f43: $3f
    ld d, d                                       ; $6f44: $52
    inc b                                         ; $6f45: $04
    adc [hl]                                      ; $6f46: $8e
    jr nz, @+$01                                  ; $6f47: $20 $ff

    sub $f8                                       ; $6f49: $d6 $f8
    ld b, $9e                                     ; $6f4b: $06 $9e
    sbc a                                         ; $6f4d: $9f
    ld b, [hl]                                    ; $6f4e: $46
    rst $00                                       ; $6f4f: $c7
    ld b, [hl]                                    ; $6f50: $46
    nop                                           ; $6f51: $00
    rst $00                                       ; $6f52: $c7
    ld b, a                                       ; $6f53: $47
    rst $00                                       ; $6f54: $c7
    cp e                                          ; $6f55: $bb
    ld a, d                                       ; $6f56: $7a
    cp l                                          ; $6f57: $bd
    ld a, [hl]                                    ; $6f58: $7e

jr_0c5_6f59:
    cp h                                          ; $6f59: $bc
    nop                                           ; $6f5a: $00
    ld a, a                                       ; $6f5b: $7f
    cp d                                          ; $6f5c: $ba
    ld a, l                                       ; $6f5d: $7d
    ld [hl], $f9                                  ; $6f5e: $36 $f9
    xor h                                         ; $6f60: $ac
    ld [hl], e                                    ; $6f61: $73
    ld e, c                                       ; $6f62: $59
    ld [bc], a                                    ; $6f63: $02
    rst $20                                       ; $6f64: $e7
    or e                                          ; $6f65: $b3
    rst $08                                       ; $6f66: $cf
    jr nc, jr_0c5_6f59                            ; $6f67: $30 $f0

    ccf                                           ; $6f69: $3f
    sub b                                         ; $6f6a: $90

jr_0c5_6f6b:
    ld b, $63                                     ; $6f6b: $06 $63
    jr nz, jr_0c5_6f6b                            ; $6f6d: $20 $fc

    ret nz                                        ; $6f6f: $c0

    ldh a, [rNR50]                                ; $6f70: $f0 $24
    ld e, $1f                                     ; $6f72: $1e $1f
    and $f9                                       ; $6f74: $e6 $f9
    jr z, jr_0c5_6f82                             ; $6f76: $28 $0a

    rst $10                                       ; $6f78: $d7
    add l                                         ; $6f79: $85
    ld a, a                                       ; $6f7a: $7f
    ld e, a                                       ; $6f7b: $5f
    ld h, c                                       ; $6f7c: $61
    rlca                                          ; $6f7d: $07
    ldh [$6e], a                                  ; $6f7e: $e0 $6e
    ld b, $51                                     ; $6f80: $06 $51

jr_0c5_6f82:
    ld [$87af], sp                                ; $6f82: $08 $af $87
    ld a, a                                       ; $6f85: $7f
    rra                                           ; $6f86: $1f
    ld a, [hl]                                    ; $6f87: $7e
    inc bc                                        ; $6f88: $03
    and $fe                                       ; $6f89: $e6 $fe
    ld b, d                                       ; $6f8b: $42
    add b                                         ; $6f8c: $80
    ld a, [hl-]                                   ; $6f8d: $3a
    dec b                                         ; $6f8e: $05
    ld c, d                                       ; $6f8f: $4a
    halt                                          ; $6f90: $76
    adc a                                         ; $6f91: $8f
    adc a                                         ; $6f92: $8f
    db $10                                        ; $6f93: $10
    rra                                           ; $6f94: $1f
    ld h, $01                                     ; $6f95: $26 $01
    add hl, sp                                    ; $6f97: $39
    dec sp                                        ; $6f98: $3b
    daa                                           ; $6f99: $27
    ld c, [hl]                                    ; $6f9a: $4e
    ld a, [hl]                                    ; $6f9b: $7e
    jr c, jr_0c5_6fd6                             ; $6f9c: $38 $38

jr_0c5_6f9e:
    inc e                                         ; $6f9e: $1c
    rrca                                          ; $6f9f: $0f
    nop                                           ; $6fa0: $00
    ld d, $19                                     ; $6fa1: $16 $19
    xor h                                         ; $6fa3: $ac
    or e                                          ; $6fa4: $b3
    jp hl                                         ; $6fa5: $e9


    rst $30                                       ; $6fa6: $f7
    add hl, hl                                    ; $6fa7: $29
    scf                                           ; $6fa8: $37
    inc h                                         ; $6fa9: $24
    ld c, e                                       ; $6faa: $4b
    ld [hl], a                                    ; $6fab: $77
    ld e, $08                                     ; $6fac: $1e $08
    ld c, d                                       ; $6fae: $4a
    halt                                          ; $6faf: $76
    ld d, h                                       ; $6fb0: $54
    add hl, bc                                    ; $6fb1: $09
    adc [hl]                                      ; $6fb2: $8e
    adc [hl]                                      ; $6fb3: $8e
    ld [$3d33], sp                                ; $6fb4: $08 $33 $3d
    ld c, c                                       ; $6fb7: $49
    ld [hl], a                                    ; $6fb8: $77
    cp [hl]                                       ; $6fb9: $be
    dec c                                         ; $6fba: $0d
    inc a                                         ; $6fbb: $3c
    inc a                                         ; $6fbc: $3c
    sub l                                         ; $6fbd: $95
    ld bc, $c7ed                                  ; $6fbe: $01 $ed $c7
    rst $38                                       ; $6fc1: $ff
    push de                                       ; $6fc2: $d5
    db $ed                                        ; $6fc3: $ed
    call nc, $ceec                                ; $6fc4: $d4 $ec $ce
    dec c                                         ; $6fc7: $0d
    nop                                           ; $6fc8: $00
    ld e, d                                       ; $6fc9: $5a
    ld h, [hl]                                    ; $6fca: $66
    ld e, d                                       ; $6fcb: $5a
    ld h, [hl]                                    ; $6fcc: $66
    pop af                                        ; $6fcd: $f1
    pop af                                        ; $6fce: $f1
    ld c, c                                       ; $6fcf: $49
    cp c                                          ; $6fd0: $b9

jr_0c5_6fd1:
    nop                                           ; $6fd1: $00
    or h                                          ; $6fd2: $b4
    call z, $f6ca                                 ; $6fd3: $cc $ca $f6

jr_0c5_6fd6:
    ld h, h                                       ; $6fd6: $64
    ld a, h                                       ; $6fd7: $7c
    jr jr_0c5_6ff2                                ; $6fd8: $18 $18

    add b                                         ; $6fda: $80
    ld e, h                                       ; $6fdb: $5c
    rrca                                          ; $6fdc: $0f
    sub a                                         ; $6fdd: $97
    rst $28                                       ; $6fde: $ef
    add h                                         ; $6fdf: $84
    db $fc                                        ; $6fe0: $fc
    sub h                                         ; $6fe1: $94
    db $ec                                        ; $6fe2: $ec
    call nz, $fc04                                ; $6fe3: $c4 $04 $fc
    jp nc, Jump_0c5_4aee                          ; $6fe6: $d2 $ee $4a

    halt                                          ; $6fe9: $76
    inc b                                         ; $6fea: $04
    ld c, $eb                                     ; $6feb: $0e $eb
    db $fc                                        ; $6fed: $fc
    ld e, $f5                                     ; $6fee: $1e $f5
    cp $3a                                        ; $6ff0: $fe $3a

jr_0c5_6ff2:
    jp z, $9805                                   ; $6ff2: $ca $05 $98

    dec bc                                        ; $6ff5: $0b
    ld a, h                                       ; $6ff6: $7c
    rra                                           ; $6ff7: $1f
    and b                                         ; $6ff8: $a0
    ld e, l                                       ; $6ff9: $5d
    jr c, jr_0c5_7044                             ; $6ffa: $38 $48

    jr c, jr_0c5_6f9e                             ; $6ffc: $38 $a0

    ld e, l                                       ; $6ffe: $5d
    add $c7                                       ; $6fff: $c6 $c7
    ld b, b                                       ; $7001: $40
    ld e, l                                       ; $7002: $5d
    db $10                                        ; $7003: $10
    db $10                                        ; $7004: $10
    ld l, b                                       ; $7005: $68
    nop                                           ; $7006: $00
    ld a, b                                       ; $7007: $78
    xor b                                         ; $7008: $a8
    ret c                                         ; $7009: $d8

    ld e, b                                       ; $700a: $58
    cp b                                          ; $700b: $b8
    or b                                          ; $700c: $b0
    ld [hl], b                                    ; $700d: $70

Call_0c5_700e:
    ld b, b                                       ; $700e: $40
    jr nz, jr_0c5_6fd1                            ; $700f: $20 $c0

    add b                                         ; $7011: $80
    ld bc, $0400                                  ; $7012: $01 $00 $04
    inc b                                         ; $7015: $04
    inc c                                         ; $7016: $0c
    inc c                                         ; $7017: $0c
    inc d                                         ; $7018: $14
    nop                                           ; $7019: $00
    inc e                                         ; $701a: $1c
    dec [hl]                                      ; $701b: $35
    dec l                                         ; $701c: $2d
    ld l, l                                       ; $701d: $6d
    ld e, l                                       ; $701e: $5d
    ld e, d                                       ; $701f: $5a
    ld a, e                                       ; $7020: $7b
    ld [hl], d                                    ; $7021: $72
    db $10                                        ; $7022: $10
    ld [hl], e                                    ; $7023: $73
    ld b, h                                       ; $7024: $44
    ld b, a                                       ; $7025: $47
    jr c, jr_0c5_7036                             ; $7026: $38 $0e

    and [hl]                                      ; $7028: $a6

jr_0c5_7029:
    sbc $0c                                       ; $7029: $de $0c
    db $fc                                        ; $702b: $fc
    ld [$bc4c], sp                                ; $702c: $08 $4c $bc
    jr jr_0c5_7029                                ; $702f: $18 $f8

    inc a                                         ; $7031: $3c
    ld a, [bc]                                    ; $7032: $0a
    ret nz                                        ; $7033: $c0

    ret nz                                        ; $7034: $c0

    and b                                         ; $7035: $a0

jr_0c5_7036:
    ld [hl], h                                    ; $7036: $74
    ldh [$a0], a                                  ; $7037: $e0 $a0
    ld c, [hl]                                    ; $7039: $4e
    add $18                                       ; $703a: $c6 $18
    ld [$6a08], a                                 ; $703c: $ea $08 $6a
    sub b                                         ; $703f: $90
    ld b, $62                                     ; $7040: $06 $62
    ld a, [hl]                                    ; $7042: $7e
    inc bc                                        ; $7043: $03

jr_0c5_7044:
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    ld h, b                                       ; $7046: $60
    ld h, b                                       ; $7047: $60
    ld e, b                                       ; $7048: $58
    ld a, b                                       ; $7049: $78
    and b                                         ; $704a: $a0
    ld a, $5c                                     ; $704b: $3e $5c
    ld e, $b3                                     ; $704d: $1e $b3
    inc b                                         ; $704f: $04
    jr z, jr_0c5_7098                             ; $7050: $28 $46

    jr nz, jr_0c5_7054                            ; $7052: $20 $00

jr_0c5_7054:
    or d                                          ; $7054: $b2
    rrca                                          ; $7055: $0f
    rrca                                          ; $7056: $0f
    rrca                                          ; $7057: $0f
    and b                                         ; $7058: $a0
    ld l, $b6                                     ; $7059: $2e $b6
    ld c, $92                                     ; $705b: $0e $92
    and b                                         ; $705d: $a0
    ld c, [hl]                                    ; $705e: $4e
    add b                                         ; $705f: $80
    add b                                         ; $7060: $80
    ld d, b                                       ; $7061: $50
    ld c, $af                                     ; $7062: $0e $af
    ld d, b                                       ; $7064: $50
    ld d, b                                       ; $7065: $50
    ld l, $5c                                     ; $7066: $2e $5c
    ld [bc], a                                    ; $7068: $02
    ld e, a                                       ; $7069: $5f
    db $ec                                        ; $706a: $ec
    rst $38                                       ; $706b: $ff
    inc d                                         ; $706c: $14
    rst $28                                       ; $706d: $ef
    ld c, [hl]                                    ; $706e: $4e
    ld h, d                                       ; $706f: $62
    inc b                                         ; $7070: $04
    cp $00                                        ; $7071: $fe $00
    rst $38                                       ; $7073: $ff
    and $e7                                       ; $7074: $e6 $e7
    ld b, $07                                     ; $7076: $06 $07
    cp h                                          ; $7078: $bc
    ld a, h                                       ; $7079: $7c
    and d                                         ; $707a: $a2
    nop                                           ; $707b: $00
    ld a, [hl]                                    ; $707c: $7e
    xor c                                         ; $707d: $a9
    ld [hl], a                                    ; $707e: $77
    or l                                          ; $707f: $b5
    ld a, e                                       ; $7080: $7b
    xor c                                         ; $7081: $a9
    ld a, a                                       ; $7082: $7f
    or [hl]                                       ; $7083: $b6
    inc b                                         ; $7084: $04
    ld a, a                                       ; $7085: $7f
    cp h                                          ; $7086: $bc
    ld a, a                                       ; $7087: $7f
    dec e                                         ; $7088: $1d
    cp $e0                                        ; $7089: $fe $e0
    dec c                                         ; $708b: $0d
    db $e3                                        ; $708c: $e3
    rst $38                                       ; $708d: $ff
    inc c                                         ; $708e: $0c
    ld h, [hl]                                    ; $708f: $66
    ei                                            ; $7090: $fb
    and $fb                                       ; $7091: $e6 $fb
    ldh [rNR33], a                                ; $7093: $e0 $1d
    ret nc                                        ; $7095: $d0

    ccf                                           ; $7096: $3f
    add c                                         ; $7097: $81

jr_0c5_7098:
    nop                                           ; $7098: $00
    db $10                                        ; $7099: $10
    ld [de], a                                    ; $709a: $12
    nop                                           ; $709b: $00
    dec h                                         ; $709c: $25
    db $fc                                        ; $709d: $fc
    rlca                                          ; $709e: $07
    di                                            ; $709f: $f3

Jump_0c5_70a0:
    di                                            ; $70a0: $f3
    xor a                                         ; $70a1: $af
    rst $18                                       ; $70a2: $df
    ld bc, $754d                                  ; $70a3: $01 $4d $75
    ld a, $3e                                     ; $70a6: $3e $3e
    ld bc, $0201                                  ; $70a8: $01 $01 $02
    jp c, Jump_000_0007                           ; $70ab: $da $07 $00

    ld c, d                                       ; $70ae: $4a
    cp l                                          ; $70af: $bd
    inc d                                         ; $70b0: $14
    ei                                            ; $70b1: $fb
    xor c                                         ; $70b2: $a9
    rst $30                                       ; $70b3: $f7
    db $d3                                        ; $70b4: $d3
    rst $28                                       ; $70b5: $ef
    ld b, b                                       ; $70b6: $40
    and e                                         ; $70b7: $a3
    jr nz, @+$08                                  ; $70b8: $20 $06

    xor [hl]                                      ; $70ba: $ae
    ld a, a                                       ; $70bb: $7f
    ld e, l                                       ; $70bc: $5d
    cp $06                                        ; $70bd: $fe $06
    cp $01                                        ; $70bf: $fe $01
    sbc c                                         ; $70c1: $99
    rst $20                                       ; $70c2: $e7
    ld [c], a                                     ; $70c3: $e2
    db $fd                                        ; $70c4: $fd
    ld sp, hl                                     ; $70c5: $f9
    cp $3f                                        ; $70c6: $fe $3f
    cp $12                                        ; $70c8: $fe $12
    nop                                           ; $70ca: $00
    add b                                         ; $70cb: $80
    add b                                         ; $70cc: $80
    ld a, [de]                                    ; $70cd: $1a
    dec e                                         ; $70ce: $1d
    push hl                                       ; $70cf: $e5
    ei                                            ; $70d0: $fb
    ld a, [de]                                    ; $70d1: $1a
    rst $20                                       ; $70d2: $e7
    db $10                                        ; $70d3: $10
    rst $00                                       ; $70d4: $c7
    ccf                                           ; $70d5: $3f
    rrca                                          ; $70d6: $0f
    call c, $fa06                                 ; $70d7: $dc $06 $fa
    or $16                                        ; $70da: $f6 $16
    ld a, [de]                                    ; $70dc: $1a
    ld b, b                                       ; $70dd: $40
    cp b                                          ; $70de: $b8
    ld e, d                                       ; $70df: $5a
    ld [bc], a                                    ; $70e0: $02
    or $ff                                        ; $70e1: $f6 $ff
    db $db                                        ; $70e3: $db
    rst $18                                       ; $70e4: $df
    ld de, $401f                                  ; $70e5: $11 $1f $40
    inc de                                        ; $70e8: $13
    add [hl]                                      ; $70e9: $86
    rlca                                          ; $70ea: $07
    inc hl                                        ; $70eb: $23
    ccf                                           ; $70ec: $3f
    add hl, bc                                    ; $70ed: $09
    ld b, $14                                     ; $70ee: $06 $14
    rlca                                          ; $70f0: $07
    ld b, $0b                                     ; $70f1: $06 $0b
    rlca                                          ; $70f3: $07
    dec d                                         ; $70f4: $15
    inc bc                                        ; $70f5: $03
    ld [bc], a                                    ; $70f6: $02
    ld h, b                                       ; $70f7: $60
    jr nz, jr_0c5_70fb                            ; $70f8: $20 $01

    ld l, b                                       ; $70fa: $68

jr_0c5_70fb:
    ret nc                                        ; $70fb: $d0

Call_0c5_70fc:
    inc c                                         ; $70fc: $0c
    add sp, $06                                   ; $70fd: $e8 $06
    ld [$fdf2], sp                                ; $70ff: $08 $f2 $fd
    reti                                          ; $7102: $d9


    or $04                                        ; $7103: $f6 $04
    ld c, b                                       ; $7105: $48
    rst $30                                       ; $7106: $f7
    rrca                                          ; $7107: $0f
    ei                                            ; $7108: $fb
    ld b, b                                       ; $7109: $40
    rlca                                          ; $710a: $07
    inc b                                         ; $710b: $04
    ld c, b                                       ; $710c: $48
    xor b                                         ; $710d: $a8
    rst $10                                       ; $710e: $d7
    inc d                                         ; $710f: $14
    db $eb                                        ; $7110: $eb
    xor d                                         ; $7111: $aa
    push de                                       ; $7112: $d5
    nop                                           ; $7113: $00
    dec c                                         ; $7114: $0d
    ld a, [c]                                     ; $7115: $f2
    cpl                                           ; $7116: $2f
    ret nc                                        ; $7117: $d0

    ld e, a                                       ; $7118: $5f
    and b                                         ; $7119: $a0
    ccf                                           ; $711a: $3f
    ret nz                                        ; $711b: $c0

    nop                                           ; $711c: $00
    ld [hl], a                                    ; $711d: $77
    add b                                         ; $711e: $80
    ld a, [bc]                                    ; $711f: $0a
    push af                                       ; $7120: $f5
    dec d                                         ; $7121: $15
    ld [$50af], a                                 ; $7122: $ea $af $50
    nop                                           ; $7125: $00
    rst $10                                       ; $7126: $d7
    jr z, @-$40                                   ; $7127: $28 $be

    ld b, c                                       ; $7129: $41
    rst $38                                       ; $712a: $ff
    nop                                           ; $712b: $00
    rst $38                                       ; $712c: $ff
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    cp $00                                        ; $712f: $fe $00
    xor d                                         ; $7131: $aa
    ld d, l                                       ; $7132: $55
    push af                                       ; $7133: $f5
    ld a, [bc]                                    ; $7134: $0a
    cpl                                           ; $7135: $2f
    ret nc                                        ; $7136: $d0

    nop                                           ; $7137: $00
    cp e                                          ; $7138: $bb
    ld b, h                                       ; $7139: $44
    db $dd                                        ; $713a: $dd
    ld h, d                                       ; $713b: $62
    rst $38                                       ; $713c: $ff
    ld b, b                                       ; $713d: $40
    rst $18                                       ; $713e: $df
    ld h, b                                       ; $713f: $60
    nop                                           ; $7140: $00
    rst $18                                       ; $7141: $df
    ld h, b                                       ; $7142: $60
    add c                                         ; $7143: $81
    ld a, a                                       ; $7144: $7f
    call nz, $ab3b                                ; $7145: $c4 $3b $ab
    ld d, l                                       ; $7148: $55
    ld [bc], a                                    ; $7149: $02
    ld [hl], h                                    ; $714a: $74
    adc e                                         ; $714b: $8b
    cp $01                                        ; $714c: $fe $01
    sbc $21                                       ; $714e: $de $21
    inc b                                         ; $7150: $04
    nop                                           ; $7151: $00
    ld bc, $2081                                  ; $7152: $01 $81 $20
    ld [$906f], sp                                ; $7155: $08 $6f $90
    ei                                            ; $7158: $fb
    inc b                                         ; $7159: $04
    db $dd                                        ; $715a: $dd
    ld [hl+], a                                   ; $715b: $22
    jr nc, jr_0c5_7166                            ; $715c: $30 $08

    inc h                                         ; $715e: $24
    rst $38                                       ; $715f: $ff
    nop                                           ; $7160: $00
    ld [hl], b                                    ; $7161: $70
    ld e, b                                       ; $7162: $58
    sbc $ff                                       ; $7163: $de $ff
    ld [hl], b                                    ; $7165: $70

jr_0c5_7166:
    ld e, b                                       ; $7166: $58
    dec bc                                        ; $7167: $0b
    rst $38                                       ; $7168: $ff
    nop                                           ; $7169: $00
    dec a                                         ; $716a: $3d
    ret nz                                        ; $716b: $c0

    ld a, a                                       ; $716c: $7f
    add b                                         ; $716d: $80
    db $eb                                        ; $716e: $eb
    nop                                           ; $716f: $00
    ld d, h                                       ; $7170: $54
    add b                                         ; $7171: $80
    nop                                           ; $7172: $00
    ret                                           ; $7173: $c9


    nop                                           ; $7174: $00
    ld h, b                                       ; $7175: $60
    add b                                         ; $7176: $80
    ret nz                                        ; $7177: $c0

    nop                                           ; $7178: $00
    ret nz                                        ; $7179: $c0

    nop                                           ; $717a: $00
    ld b, b                                       ; $717b: $40
    ei                                            ; $717c: $fb
    ld h, [hl]                                    ; $717d: $66
    nop                                           ; $717e: $00
    or h                                          ; $717f: $b4
    ld bc, $03e9                                  ; $7180: $01 $e9 $03
    ld d, [hl]                                    ; $7183: $56
    rrca                                          ; $7184: $0f
    nop                                           ; $7185: $00
    add hl, hl                                    ; $7186: $29
    inc e                                         ; $7187: $1c
    ld [$1c10], sp                                ; $7188: $08 $10 $1c
    ld [$c05f], sp                                ; $718b: $08 $5f $c0
    nop                                           ; $718e: $00
    xor [hl]                                      ; $718f: $ae
    ret nz                                        ; $7190: $c0

    db $fd                                        ; $7191: $fd
    add b                                         ; $7192: $80
    ld a, [hl+]                                   ; $7193: $2a
    add b                                         ; $7194: $80
    dec d                                         ; $7195: $15
    nop                                           ; $7196: $00
    jr nz, jr_0c5_71a3                            ; $7197: $20 $0a

    nop                                           ; $7199: $00
    ld bc, $bf08                                  ; $719a: $01 $08 $bf
    nop                                           ; $719d: $00
    ld [$d701], a                                 ; $719e: $ea $01 $d7
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00

jr_0c5_71a3:
    and d                                         ; $71a3: $a2
    ld bc, $0013                                  ; $71a4: $01 $13 $00
    inc bc                                        ; $71a7: $03
    nop                                           ; $71a8: $00
    ld b, c                                       ; $71a9: $41
    jr nz, jr_0c5_71ac                            ; $71aa: $20 $00

jr_0c5_71ac:
    ld bc, $1030                                  ; $71ac: $01 $30 $10
    or l                                          ; $71af: $b5
    nop                                           ; $71b0: $00
    ld [$5400], a                                 ; $71b1: $ea $00 $54
    ld [$2100], sp                                ; $71b4: $08 $00 $21
    nop                                           ; $71b7: $00
    ld [$0022], sp                                ; $71b8: $08 $22 $00
    rst $18                                       ; $71bb: $df
    nop                                           ; $71bc: $00
    xor [hl]                                      ; $71bd: $ae
    dec b                                         ; $71be: $05
    nop                                           ; $71bf: $00
    ld a, l                                       ; $71c0: $7d
    nop                                           ; $71c1: $00
    xor d                                         ; $71c2: $aa
    nop                                           ; $71c3: $00
    jr nc, jr_0c5_71ee                            ; $71c4: $30 $28

    add b                                         ; $71c6: $80
    inc c                                         ; $71c7: $0c
    nop                                           ; $71c8: $00
    ld d, b                                       ; $71c9: $50
    push de                                       ; $71ca: $d5
    or [hl]                                       ; $71cb: $b6
    nop                                           ; $71cc: $00
    rst $38                                       ; $71cd: $ff
    cp a                                          ; $71ce: $bf
    ld [$ff00], sp                                ; $71cf: $08 $00 $ff
    rst $38                                       ; $71d2: $ff
    ld [bc], a                                    ; $71d3: $02
    ld [bc], a                                    ; $71d4: $02
    inc c                                         ; $71d5: $0c
    xor [hl]                                      ; $71d6: $ae
    inc b                                         ; $71d7: $04
    ld e, a                                       ; $71d8: $5f
    inc b                                         ; $71d9: $04
    xor [hl]                                      ; $71da: $ae
    db $10                                        ; $71db: $10
    jr nc, jr_0c5_71de                            ; $71dc: $30 $00

jr_0c5_71de:
    or b                                          ; $71de: $b0
    inc l                                         ; $71df: $2c
    nop                                           ; $71e0: $00
    ld d, l                                       ; $71e1: $55
    jr nz, jr_0c5_7224                            ; $71e2: $20 $40

    jr nz, @+$3b                                  ; $71e4: $20 $39

    ld sp, hl                                     ; $71e6: $f9
    or $fa                                        ; $71e7: $f6 $fa
    db $fd                                        ; $71e9: $fd
    ld b, e                                       ; $71ea: $43
    cp $b0                                        ; $71eb: $fe $b0
    ld h, b                                       ; $71ed: $60

jr_0c5_71ee:
    ld c, a                                       ; $71ee: $4f
    cp a                                          ; $71ef: $bf
    ld a, a                                       ; $71f0: $7f
    rst $38                                       ; $71f1: $ff
    ld [bc], a                                    ; $71f2: $02
    jr @+$03                                      ; $71f3: $18 $01

    jr jr_0c5_71fd                                ; $71f5: $18 $06

    cp $ff                                        ; $71f7: $fe $ff
    pop hl                                        ; $71f9: $e1
    rst $38                                       ; $71fa: $ff
    pop af                                        ; $71fb: $f1
    inc c                                         ; $71fc: $0c

jr_0c5_71fd:
    jr nz, jr_0c5_7206                            ; $71fd: $20 $07

    jr c, jr_0c5_7280                             ; $71ff: $38 $7f

    jr z, @+$01                                   ; $7201: $28 $ff

    adc a                                         ; $7203: $8f
    ld d, $00                                     ; $7204: $16 $00

jr_0c5_7206:
    ldh [rSC], a                                  ; $7206: $e0 $02
    db $10                                        ; $7208: $10
    cp $ff                                        ; $7209: $fe $ff
    ld hl, sp+$02                                 ; $720b: $f8 $02
    rst $38                                       ; $720d: $ff
    db $fc                                        ; $720e: $fc
    rst $38                                       ; $720f: $ff
    ld a, [c]                                     ; $7210: $f2
    rst $38                                       ; $7211: $ff
    add b                                         ; $7212: $80
    ld [bc], a                                    ; $7213: $02
    nop                                           ; $7214: $00
    ld b, b                                       ; $7215: $40
    ld [hl+], a                                   ; $7216: $22
    rst $38                                       ; $7217: $ff
    ld b, c                                       ; $7218: $41
    ld a, $20                                     ; $7219: $3e $20
    rrca                                          ; $721b: $0f
    rst $38                                       ; $721c: $ff
    ld [hl], c                                    ; $721d: $71
    jr nz, @+$22                                  ; $721e: $20 $20

    rst $38                                       ; $7220: $ff
    ld l, $ff                                     ; $7221: $2e $ff
    ld sp, hl                                     ; $7223: $f9

jr_0c5_7224:
    jr nz, jr_0c5_7226                            ; $7224: $20 $00

jr_0c5_7226:
    di                                            ; $7226: $f3
    jr nz, jr_0c5_7259                            ; $7227: $20 $30

    ld b, b                                       ; $7229: $40
    jr jr_0c5_727f                                ; $722a: $18 $53

jr_0c5_722c:
    jr z, jr_0c5_722c                             ; $722c: $28 $fe

    xor h                                         ; $722e: $ac
    ld b, [hl]                                    ; $722f: $46
    nop                                           ; $7230: $00
    ldh a, [$66]                                  ; $7231: $f0 $66
    nop                                           ; $7233: $00
    cp $64                                        ; $7234: $fe $64
    ld b, b                                       ; $7236: $40
    inc c                                         ; $7237: $0c
    nop                                           ; $7238: $00
    cp $fc                                        ; $7239: $fe $fc
    nop                                           ; $723b: $00
    cp $fe                                        ; $723c: $fe $fe
    db $fc                                        ; $723e: $fc
    ld hl, sp-$04                                 ; $723f: $f8 $fc
    db $fc                                        ; $7241: $fc
    ld hl, sp-$10                                 ; $7242: $f8 $f0
    ld a, [bc]                                    ; $7244: $0a
    ld hl, sp-$01                                 ; $7245: $f8 $ff
    nop                                           ; $7247: $00
    db $10                                        ; $7248: $10
    ld a, [$8000]                                 ; $7249: $fa $00 $80
    ld a, [bc]                                    ; $724c: $0a
    ld bc, $8002                                  ; $724d: $01 $02 $80
    jr nz, jr_0c5_7263                            ; $7250: $20 $11

    rst $38                                       ; $7252: $ff
    nop                                           ; $7253: $00
    and b                                         ; $7254: $a0
    ld bc, $0142                                  ; $7255: $01 $42 $01
    sub b                                         ; $7258: $90

jr_0c5_7259:
    ld [$2003], sp                                ; $7259: $08 $03 $20
    inc bc                                        ; $725c: $03
    inc b                                         ; $725d: $04
    ld [bc], a                                    ; $725e: $02
    nop                                           ; $725f: $00
    add b                                         ; $7260: $80
    rlca                                          ; $7261: $07
    ld d, l                                       ; $7262: $55

jr_0c5_7263:
    add b                                         ; $7263: $80
    or a                                          ; $7264: $b7
    ld bc, $ef10                                  ; $7265: $01 $10 $ef
    ld bc, $40fe                                  ; $7268: $01 $fe $40
    cp a                                          ; $726b: $bf
    inc b                                         ; $726c: $04
    nop                                           ; $726d: $00
    ei                                            ; $726e: $fb
    ld [$20f7], sp                                ; $726f: $08 $f7 $20
    rst $18                                       ; $7272: $df
    ld d, l                                       ; $7273: $55
    rst $38                                       ; $7274: $ff
    ld bc, $fe00                                  ; $7275: $01 $00 $fe
    add e                                         ; $7278: $83
    ld a, [hl]                                    ; $7279: $7e
    inc bc                                        ; $727a: $03
    cp $10                                        ; $727b: $fe $10
    xor $0c                                       ; $727d: $ee $0c

jr_0c5_727f:
    ld [bc], a                                    ; $727f: $02

jr_0c5_7280:
    or $16                                        ; $7280: $f6 $16
    db $ec                                        ; $7282: $ec

jr_0c5_7283:
    ld h, $dc                                     ; $7283: $26 $dc
    rst $38                                       ; $7285: $ff
    ld e, b                                       ; $7286: $58
    ld bc, $2810                                  ; $7287: $01 $10 $28
    nop                                           ; $728a: $00
    jr nz, jr_0c5_72e9                            ; $728b: $20 $5c

    ld de, $4005                                  ; $728d: $11 $05 $40

jr_0c5_7290:
    db $10                                        ; $7290: $10
    jr z, jr_0c5_7294                             ; $7291: $28 $01

    ld d, b                                       ; $7293: $50

jr_0c5_7294:
    jr nz, @+$03                                  ; $7294: $20 $01

    jr nz, jr_0c5_72dc                            ; $7296: $20 $44

    nop                                           ; $7298: $00
    add b                                         ; $7299: $80
    ld bc, $0102                                  ; $729a: $01 $02 $01
    ld [hl+], a                                   ; $729d: $22
    ld b, b                                       ; $729e: $40
    ld bc, $1840                                  ; $729f: $01 $40 $18
    jr nz, jr_0c5_7283                            ; $72a2: $20 $df

    ld d, b                                       ; $72a4: $50
    xor a                                         ; $72a5: $af
    ld hl, $00de                                  ; $72a6: $21 $de $00
    ld [bc], a                                    ; $72a9: $02
    db $fd                                        ; $72aa: $fd
    ld b, h                                       ; $72ab: $44
    cp e                                          ; $72ac: $bb
    ld d, l                                       ; $72ad: $55
    rst $38                                       ; $72ae: $ff
    jr nz, jr_0c5_7290                            ; $72af: $20 $df

    nop                                           ; $72b1: $00
    ld b, c                                       ; $72b2: $41
    cp a                                          ; $72b3: $bf
    nop                                           ; $72b4: $00
    rst $38                                       ; $72b5: $ff
    add hl, bc                                    ; $72b6: $09
    rst $30                                       ; $72b7: $f7
    db $10                                        ; $72b8: $10
    rst $28                                       ; $72b9: $ef
    jr z, jr_0c5_72dd                             ; $72ba: $28 $21

    rst $18                                       ; $72bc: $df
    ld b, c                                       ; $72bd: $41
    add hl, bc                                    ; $72be: $09
    add b                                         ; $72bf: $80
    ld h, h                                       ; $72c0: $64
    ld bc, $0082                                  ; $72c1: $01 $82 $00
    add l                                         ; $72c4: $85
    adc c                                         ; $72c5: $89
    ld l, d                                       ; $72c6: $6a
    ld bc, $00a1                                  ; $72c7: $01 $a1 $00
    jp nz, $0965                                  ; $72ca: $c2 $65 $09

    nop                                           ; $72cd: $00
    ld b, b                                       ; $72ce: $40
    halt                                          ; $72cf: $76
    ld bc, $0210                                  ; $72d0: $01 $10 $02
    nop                                           ; $72d3: $00
    add h                                         ; $72d4: $84
    sub b                                         ; $72d5: $90
    ld de, $ffaa                                  ; $72d6: $11 $aa $ff
    add b                                         ; $72d9: $80
    ld a, a                                       ; $72da: $7f
    nop                                           ; $72db: $00

jr_0c5_72dc:
    pop bc                                        ; $72dc: $c1

jr_0c5_72dd:
    ld a, [hl]                                    ; $72dd: $7e
    jp nz, $c47d                                  ; $72de: $c2 $7d $c4

    ld a, e                                       ; $72e1: $7b
    ld b, b                                       ; $72e2: $40
    ld a, a                                       ; $72e3: $7f
    nop                                           ; $72e4: $00
    ld h, h                                       ; $72e5: $64
    ld a, e                                       ; $72e6: $7b
    ld c, b                                       ; $72e7: $48
    ld [hl], a                                    ; $72e8: $77

jr_0c5_72e9:
    xor d                                         ; $72e9: $aa
    rst $38                                       ; $72ea: $ff
    dec b                                         ; $72eb: $05
    ld a, [$0216]                                 ; $72ec: $fa $16 $02
    db $fd                                        ; $72ef: $fd
    ld [$003e], sp                                ; $72f0: $08 $3e $00
    jr nz, jr_0c5_7333                            ; $72f3: $20 $3e

    nop                                           ; $72f5: $00
    add c                                         ; $72f6: $81
    add hl, bc                                    ; $72f7: $09
    ld [bc], a                                    ; $72f8: $02
    inc c                                         ; $72f9: $0c
    add b                                         ; $72fa: $80
    inc b                                         ; $72fb: $04
    add b                                         ; $72fc: $80
    ld b, b                                       ; $72fd: $40
    ld [bc], a                                    ; $72fe: $02
    nop                                           ; $72ff: $00
    db $fd                                        ; $7300: $fd
    ld bc, $a0c0                                  ; $7301: $01 $c0 $a0
    nop                                           ; $7304: $00
    ld b, b                                       ; $7305: $40
    rst $38                                       ; $7306: $ff
    nop                                           ; $7307: $00
    inc d                                         ; $7308: $14
    nop                                           ; $7309: $00
    jr z, jr_0c5_730c                             ; $730a: $28 $00

jr_0c5_730c:
    ld [de], a                                    ; $730c: $12
    jr z, jr_0c5_730f                             ; $730d: $28 $00

jr_0c5_730f:
    inc h                                         ; $730f: $24
    ld b, [hl]                                    ; $7310: $46
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    call c, $aa00                                 ; $7313: $dc $00 $aa
    rst $38                                       ; $7316: $ff
    jp nz, $7d00                                  ; $7317: $c2 $00 $7d

    add l                                         ; $731a: $85
    ld a, d                                       ; $731b: $7a
    ld l, b                                       ; $731c: $68
    scf                                           ; $731d: $37
    ld h, b                                       ; $731e: $60
    ccf                                           ; $731f: $3f
    nop                                           ; $7320: $00
    inc b                                         ; $7321: $04
    ccf                                           ; $7322: $3f
    jr nc, @+$21                                  ; $7323: $30 $1f

    ld sp, $501e                                  ; $7325: $31 $1e $50
    ld [$fd02], sp                                ; $7328: $08 $02 $fd
    add c                                         ; $732b: $81
    call z, Call_000_1408                         ; $732c: $cc $08 $14
    db $eb                                        ; $732f: $eb
    adc b                                         ; $7330: $88
    ld [hl], a                                    ; $7331: $77
    db $10                                        ; $7332: $10

jr_0c5_7333:
    rst $28                                       ; $7333: $ef
    ld l, [hl]                                    ; $7334: $6e
    add hl, bc                                    ; $7335: $09
    dec d                                         ; $7336: $15
    ld a, a                                       ; $7337: $7f
    rst $38                                       ; $7338: $ff
    ccf                                           ; $7339: $3f
    ld [bc], a                                    ; $733a: $02
    nop                                           ; $733b: $00
    rra                                           ; $733c: $1f
    ld [bc], a                                    ; $733d: $02
    nop                                           ; $733e: $00
    rrca                                          ; $733f: $0f
    adc h                                         ; $7340: $8c
    ld [hl], c                                    ; $7341: $71
    nop                                           ; $7342: $00
    ld hl, sp-$10                                 ; $7343: $f8 $f0
    ldh a, [$f0]                                  ; $7345: $f0 $f0
    pop hl                                        ; $7347: $e1
    ldh a, [$f0]                                  ; $7348: $f0 $f0
    ldh [rP1], a                                  ; $734a: $e0 $00
    ret nz                                        ; $734c: $c0

    ldh [$ea], a                                  ; $734d: $e0 $ea
    ret nz                                        ; $734f: $c0

    cp a                                          ; $7350: $bf
    ret nz                                        ; $7351: $c0

    add b                                         ; $7352: $80
    rst $38                                       ; $7353: $ff
    ld l, b                                       ; $7354: $68
    ld hl, $0098                                  ; $7355: $21 $98 $00
    inc l                                         ; $7358: $2c
    add hl, de                                    ; $7359: $19
    xor d                                         ; $735a: $aa
    ld de, $0812                                  ; $735b: $11 $12 $08
    rlca                                          ; $735e: $07
    ld [$0700], sp                                ; $735f: $08 $00 $07
    db $10                                        ; $7362: $10
    rrca                                          ; $7363: $0f
    ld de, $000e                                  ; $7364: $11 $0e $00
    rra                                           ; $7367: $1f
    and b                                         ; $7368: $a0
    ld [$f51f], sp                                ; $7369: $08 $1f $f5
    rra                                           ; $736c: $1f

jr_0c5_736d:
    rra                                           ; $736d: $1f
    push hl                                       ; $736e: $e5
    ld [bc], a                                    ; $736f: $02
    ld d, b                                       ; $7370: $50
    xor a                                         ; $7371: $af
    and b                                         ; $7372: $a0
    ld bc, $405f                                  ; $7373: $01 $5f $40
    cp a                                          ; $7376: $bf
    dec b                                         ; $7377: $05
    ld a, [$ff00]                                 ; $7378: $fa $00 $ff
    dec [hl]                                      ; $737b: $35
    ld [bc], a                                    ; $737c: $02
    nop                                           ; $737d: $00
    rst $38                                       ; $737e: $ff
    ld b, [hl]                                    ; $737f: $46
    cp h                                          ; $7380: $bc
    xor b                                         ; $7381: $a8

jr_0c5_7382:
    ld e, h                                       ; $7382: $5c
    ld c, b                                       ; $7383: $48
    cp h                                          ; $7384: $bc
    adc h                                         ; $7385: $8c
    nop                                           ; $7386: $00
    ld a, b                                       ; $7387: $78
    inc e                                         ; $7388: $1c
    ld hl, sp+$15                                 ; $7389: $f8 $15
    ld hl, sp+$5f                                 ; $738b: $f8 $5f
    ldh a, [$f0]                                  ; $738d: $f0 $f0
    ld e, d                                       ; $738f: $5a
    rst $38                                       ; $7390: $ff
    inc l                                         ; $7391: $2c
    add hl, hl                                    ; $7392: $29
    nop                                           ; $7393: $00
    ld [hl], $02                                  ; $7394: $36 $02
    ld d, c                                       ; $7396: $51
    ld a, [bc]                                    ; $7397: $0a
    ld b, d                                       ; $7398: $42
    ld h, $01                                     ; $7399: $26 $01
    jr nz, jr_0c5_739d                            ; $739b: $20 $00

jr_0c5_739d:
    inc bc                                        ; $739d: $03
    ld b, h                                       ; $739e: $44
    inc bc                                        ; $739f: $03
    add b                                         ; $73a0: $80
    inc bc                                        ; $73a1: $03
    ld d, h                                       ; $73a2: $54
    inc bc                                        ; $73a3: $03
    db $fd                                        ; $73a4: $fd
    nop                                           ; $73a5: $00
    inc bc                                        ; $73a6: $03
    inc bc                                        ; $73a7: $03
    rst $38                                       ; $73a8: $ff
    jr z, jr_0c5_7382                             ; $73a9: $28 $d7

    ld bc, $42fe                                  ; $73ab: $01 $fe $42
    jr nc, jr_0c5_736d                            ; $73ae: $30 $bd

    inc b                                         ; $73b0: $04
    rst $00                                       ; $73b1: $c7
    ld a, [bc]                                    ; $73b2: $0a
    ld b, b                                       ; $73b3: $40
    db $10                                        ; $73b4: $10
    ld bc, $11ff                                  ; $73b5: $01 $ff $11
    rst $28                                       ; $73b8: $ef

jr_0c5_73b9:
    dec d                                         ; $73b9: $15
    ld b, b                                       ; $73ba: $40
    cp a                                          ; $73bb: $bf
    ld bc, $0008                                  ; $73bc: $01 $08 $00
    ld bc, $1050                                  ; $73bf: $01 $50 $10
    add h                                         ; $73c2: $84
    jr nc, jr_0c5_73f6                            ; $73c3: $30 $31

    add b                                         ; $73c5: $80
    add b                                         ; $73c6: $80
    jr jr_0c5_73ca                                ; $73c7: $18 $01

    nop                                           ; $73c9: $00

jr_0c5_73ca:
    ld [hl+], a                                   ; $73ca: $22
    nop                                           ; $73cb: $00
    ld b, h                                       ; $73cc: $44
    nop                                           ; $73cd: $00
    adc b                                         ; $73ce: $88
    add b                                         ; $73cf: $80
    sub b                                         ; $73d0: $90
    jr nc, @+$62                                  ; $73d1: $30 $60

    ld a, a                                       ; $73d3: $7f
    ld b, b                                       ; $73d4: $40
    ld a, a                                       ; $73d5: $7f
    ld h, b                                       ; $73d6: $60
    ccf                                           ; $73d7: $3f
    ld h, d                                       ; $73d8: $62
    nop                                           ; $73d9: $00
    dec a                                         ; $73da: $3d
    ld h, l                                       ; $73db: $65
    ld a, [hl-]                                   ; $73dc: $3a
    and b                                         ; $73dd: $a0
    ccf                                           ; $73de: $3f
    ld [$3f3f], a                                 ; $73df: $ea $3f $3f
    nop                                           ; $73e2: $00
    rst $38                                       ; $73e3: $ff
    ld hl, $42de                                  ; $73e4: $21 $de $42
    cp l                                          ; $73e7: $bd

jr_0c5_73e8:
    add b                                         ; $73e8: $80
    ld a, a                                       ; $73e9: $7f
    db $10                                        ; $73ea: $10
    ld [bc], a                                    ; $73eb: $02
    rst $28                                       ; $73ec: $ef
    ld [hl+], a                                   ; $73ed: $22
    db $dd                                        ; $73ee: $dd
    nop                                           ; $73ef: $00
    rst $38                                       ; $73f0: $ff
    xor d                                         ; $73f1: $aa
    halt                                          ; $73f2: $76
    ld [bc], a                                    ; $73f3: $02
    inc h                                         ; $73f4: $24
    ld [bc], a                                    ; $73f5: $02

jr_0c5_73f6:
    ret nz                                        ; $73f6: $c0

    jr nz, jr_0c5_73b9                            ; $73f7: $20 $c0

    nop                                           ; $73f9: $00
    ldh [rNR10], a                                ; $73fa: $e0 $10
    ld [bc], a                                    ; $73fc: $02
    nop                                           ; $73fd: $00

jr_0c5_73fe:
    ld a, [de]                                    ; $73fe: $1a
    ld a, [hl+]                                   ; $73ff: $2a
    ldh [$af], a                                  ; $7400: $e0 $af
    sub b                                         ; $7402: $90
    nop                                           ; $7403: $00
    jr nz, jr_0c5_73e8                            ; $7404: $20 $e2

    ld [bc], a                                    ; $7406: $02
    jr nz, jr_0c5_747b                            ; $7407: $20 $72

    ld bc, $8001                                  ; $7409: $01 $01 $80
    ret nc                                        ; $740c: $d0

    jr nz, jr_0c5_7421                            ; $740d: $20 $12

    dec e                                         ; $740f: $1d
    ld [$5a1f], sp                                ; $7410: $08 $1f $5a
    dec c                                         ; $7413: $0d
    adc b                                         ; $7414: $88
    nop                                           ; $7415: $00
    rrca                                          ; $7416: $0f
    inc b                                         ; $7417: $04
    rrca                                          ; $7418: $0f
    xor h                                         ; $7419: $ac
    rlca                                          ; $741a: $07
    db $fd                                        ; $741b: $fd
    rlca                                          ; $741c: $07
    rlca                                          ; $741d: $07
    add b                                         ; $741e: $80
    cp $11                                        ; $741f: $fe $11

jr_0c5_7421:
    add hl, bc                                    ; $7421: $09
    or $10                                        ; $7422: $f6 $10
    rst $28                                       ; $7424: $ef
    jr z, jr_0c5_73fe                             ; $7425: $28 $d7

    ld b, b                                       ; $7427: $40
    ld b, b                                       ; $7428: $40
    cp a                                          ; $7429: $bf
    ret nc                                        ; $742a: $d0

    ld [$bf4f], sp                                ; $742b: $08 $4f $bf
    adc a                                         ; $742e: $8f
    ld a, a                                       ; $742f: $7f
    rlca                                          ; $7430: $07
    rst $38                                       ; $7431: $ff
    ld b, $17                                     ; $7432: $06 $17
    rst $28                                       ; $7434: $ef
    inc hl                                        ; $7435: $23
    rst $18                                       ; $7436: $df
    inc bc                                        ; $7437: $03
    ldh [rNR10], a                                ; $7438: $e0 $10
    ret z                                         ; $743a: $c8

    ld a, [hl+]                                   ; $743b: $2a
    cp $bc                                        ; $743c: $fe $bc
    and [hl]                                      ; $743e: $a6
    ld [bc], a                                    ; $743f: $02
    db $fc                                        ; $7440: $fc
    xor h                                         ; $7441: $ac
    ld [bc], a                                    ; $7442: $02
    ld [de], a                                    ; $7443: $12
    ld bc, $01da                                  ; $7444: $01 $da $01
    sbc b                                         ; $7447: $98
    nop                                           ; $7448: $00
    cp $00                                        ; $7449: $fe $00
    nop                                           ; $744b: $00
    rst $38                                       ; $744c: $ff
    ld b, b                                       ; $744d: $40
    cp a                                          ; $744e: $bf
    add c                                         ; $744f: $81
    ld a, [hl]                                    ; $7450: $7e
    ld a, [hl+]                                   ; $7451: $2a
    push de                                       ; $7452: $d5
    ld de, $ee04                                  ; $7453: $11 $04 $ee
    ld c, b                                       ; $7456: $48
    or a                                          ; $7457: $b7
    add b                                         ; $7458: $80
    ld a, a                                       ; $7459: $7f
    call Call_000_050b                            ; $745a: $cd $0b $05
    ei                                            ; $745d: $fb
    nop                                           ; $745e: $00
    add hl, bc                                    ; $745f: $09
    rst $30                                       ; $7460: $f7
    ret nz                                        ; $7461: $c0

    ld h, b                                       ; $7462: $60
    ld h, b                                       ; $7463: $60
    ret nz                                        ; $7464: $c0

    ld b, d                                       ; $7465: $42
    ret nz                                        ; $7466: $c0

    dec b                                         ; $7467: $05
    add h                                         ; $7468: $84
    ret nz                                        ; $7469: $c0

    ret z                                         ; $746a: $c8

    add b                                         ; $746b: $80
    add b                                         ; $746c: $80
    ld sp, hl                                     ; $746d: $f9
    ld bc, $9492                                  ; $746e: $01 $92 $94
    inc bc                                        ; $7471: $03
    ld l, b                                       ; $7472: $68
    add c                                         ; $7473: $81
    ld a, d                                       ; $7474: $7a
    ld [bc], a                                    ; $7475: $02
    ld a, [hl]                                    ; $7476: $7e
    ld a, [bc]                                    ; $7477: $0a
    dec b                                         ; $7478: $05
    ld b, $02                                     ; $7479: $06 $02

jr_0c5_747b:
    inc b                                         ; $747b: $04
    nop                                           ; $747c: $00
    add c                                         ; $747d: $81
    nop                                           ; $747e: $00
    ld c, $52                                     ; $747f: $0e $52
    dec c                                         ; $7481: $0d
    sub l                                         ; $7482: $95
    ld a, [bc]                                    ; $7483: $0a

jr_0c5_7484:
    ld [bc], a                                    ; $7484: $02
    dec e                                         ; $7485: $1d
    jr nz, jr_0c5_7489                            ; $7486: $20 $01

    rra                                           ; $7488: $1f

jr_0c5_7489:
    jr nz, jr_0c5_74aa                            ; $7489: $20 $1f

    ld [hl+], a                                   ; $748b: $22
    dec e                                         ; $748c: $1d
    inc b                                         ; $748d: $04
    dec sp                                        ; $748e: $3b
    xor h                                         ; $748f: $ac
    add hl, bc                                    ; $7490: $09
    ld [$f50a], sp                                ; $7491: $08 $0a $f5
    inc d                                         ; $7494: $14
    db $eb                                        ; $7495: $eb
    ld a, [c]                                     ; $7496: $f2
    add hl, bc                                    ; $7497: $09
    ld hl, $04de                                  ; $7498: $21 $de $04
    nop                                           ; $749b: $00
    ei                                            ; $749c: $fb
    ld d, $ec                                     ; $749d: $16 $ec
    ld c, $fc                                     ; $749f: $0e $fc
    ld b, $fc                                     ; $74a1: $06 $fc
    ld c, b                                       ; $74a3: $48
    nop                                           ; $74a4: $00
    cp h                                          ; $74a5: $bc
    jr z, jr_0c5_7484                             ; $74a6: $28 $dc

    adc b                                         ; $74a8: $88

jr_0c5_74a9:
    ld a, h                                       ; $74a9: $7c

jr_0c5_74aa:
    inc e                                         ; $74aa: $1c
    ld hl, sp+$0c                                 ; $74ab: $f8 $0c
    ld [hl+], a                                   ; $74ad: $22
    ld hl, sp+$02                                 ; $74ae: $f8 $02
    xor $01                                       ; $74b0: $ee $01
    ld d, b                                       ; $74b2: $50
    nop                                           ; $74b3: $00
    and b                                         ; $74b4: $a0
    call c, $0403                                 ; $74b5: $dc $03 $04
    adc d                                         ; $74b8: $8a
    ret nz                                        ; $74b9: $c0

    inc bc                                        ; $74ba: $03
    ld [de], a                                    ; $74bb: $12
    nop                                           ; $74bc: $00
    add hl, bc                                    ; $74bd: $09
    add [hl]                                      ; $74be: $86
    ld [bc], a                                    ; $74bf: $02
    ld bc, $03d8                                  ; $74c0: $01 $d8 $03
    ld de, $dea0                                  ; $74c3: $11 $a0 $de
    inc bc                                        ; $74c6: $03
    and c                                         ; $74c7: $a1
    ldh [$03], a                                  ; $74c8: $e0 $03
    adc d                                         ; $74ca: $8a
    push af                                       ; $74cb: $f5
    sub c                                         ; $74cc: $91
    xor $a0                                       ; $74cd: $ee $a0
    ld bc, $81df                                  ; $74cf: $01 $df $81
    cp $80                                        ; $74d2: $fe $80
    rst $38                                       ; $74d4: $ff
    add d                                         ; $74d5: $82
    db $fd                                        ; $74d6: $fd
    inc b                                         ; $74d7: $04
    ld [$8103], sp                                ; $74d8: $08 $03 $81
    ld a, [hl]                                    ; $74db: $7e
    ld [bc], a                                    ; $74dc: $02
    db $fd                                        ; $74dd: $fd
    add b                                         ; $74de: $80
    ld a, a                                       ; $74df: $7f
    ld b, b                                       ; $74e0: $40
    ld a, [bc]                                    ; $74e1: $0a
    ld l, b                                       ; $74e2: $68
    add hl, bc                                    ; $74e3: $09
    nop                                           ; $74e4: $00
    add c                                         ; $74e5: $81
    ld a, [hl]                                    ; $74e6: $7e
    jr nz, jr_0c5_74a9                            ; $74e7: $20 $c0

    ld [hl+], a                                   ; $74e9: $22
    ret nz                                        ; $74ea: $c0

    dec h                                         ; $74eb: $25
    ret nz                                        ; $74ec: $c0

    nop                                           ; $74ed: $00
    ld [$80e0], sp                                ; $74ee: $08 $e0 $80
    ld h, b                                       ; $74f1: $60
    nop                                           ; $74f2: $00
    ldh [rSB], a                                  ; $74f3: $e0 $01
    ldh [$35], a                                  ; $74f5: $e0 $35
    ld [de], a                                    ; $74f7: $12
    ldh [$7c], a                                  ; $74f8: $e0 $7c
    ld a, [bc]                                    ; $74fa: $0a
    add hl, hl                                    ; $74fb: $29
    inc c                                         ; $74fc: $0c
    ld b, h                                       ; $74fd: $44
    ld c, $04                                     ; $74fe: $0e $04
    db $10                                        ; $7500: $10
    ld [hl-], a                                   ; $7501: $32
    inc b                                         ; $7502: $04
    nop                                           ; $7503: $00
    jr jr_0c5_7515                                ; $7504: $18 $0f

    jr @+$11                                      ; $7506: $18 $0f

    inc h                                         ; $7508: $24
    rrca                                          ; $7509: $0f
    ld c, h                                       ; $750a: $4c
    rlca                                          ; $750b: $07
    nop                                           ; $750c: $00
    inc c                                         ; $750d: $0c
    rlca                                          ; $750e: $07
    inc l                                         ; $750f: $2c
    rlca                                          ; $7510: $07
    ld b, d                                       ; $7511: $42
    rlca                                          ; $7512: $07
    add [hl]                                      ; $7513: $86
    inc bc                                        ; $7514: $03

jr_0c5_7515:
    add b                                         ; $7515: $80
    call z, $002a                                 ; $7516: $cc $2a $00
    rst $38                                       ; $7519: $ff
    ld de, $22ee                                  ; $751a: $11 $ee $22
    db $dd                                        ; $751d: $dd
    ld b, b                                       ; $751e: $40
    nop                                           ; $751f: $00
    cp a                                          ; $7520: $bf
    inc hl                                        ; $7521: $23
    call c, $bc42                                 ; $7522: $dc $42 $bc
    and d                                         ; $7525: $a2
    ld e, h                                       ; $7526: $5c
    ld b, b                                       ; $7527: $40
    ld [de], a                                    ; $7528: $12
    cp [hl]                                       ; $7529: $be
    add c                                         ; $752a: $81
    ld a, [hl]                                    ; $752b: $7e
    sub h                                         ; $752c: $94
    ld a, [bc]                                    ; $752d: $0a
    ld b, b                                       ; $752e: $40
    cp a                                          ; $752f: $bf
    call z, $2208                                 ; $7530: $cc $08 $22
    xor c                                         ; $7533: $a9
    ld a, [bc]                                    ; $7534: $0a
    inc bc                                        ; $7535: $03
    ld [bc], a                                    ; $7536: $02
    call z, Call_000_1000                         ; $7537: $cc $00 $10
    sbc b                                         ; $753a: $98
    nop                                           ; $753b: $00
    ld d, b                                       ; $753c: $50
    ld bc, $1b5a                                  ; $753d: $01 $5a $1b
    ld [hl], b                                    ; $7540: $70
    ld [$10a0], sp                                ; $7541: $08 $a0 $10
    ld b, d                                       ; $7544: $42
    inc c                                         ; $7545: $0c
    and b                                         ; $7546: $a0
    inc de                                        ; $7547: $13
    ld a, a                                       ; $7548: $7f
    ccf                                           ; $7549: $3f
    ld a, a                                       ; $754a: $7f
    ld a, a                                       ; $754b: $7f
    nop                                           ; $754c: $00
    ccf                                           ; $754d: $3f
    rra                                           ; $754e: $1f
    ccf                                           ; $754f: $3f
    ccf                                           ; $7550: $3f
    rra                                           ; $7551: $1f
    ld sp, hl                                     ; $7552: $f9
    cp $f2                                        ; $7553: $fe $f2
    dec b                                         ; $7555: $05
    db $fd                                        ; $7556: $fd
    pop af                                        ; $7557: $f1
    cp $f4                                        ; $7558: $fe $f4
    ei                                            ; $755a: $fb
    xor $0b                                       ; $755b: $ee $0b
    ld [$0416], a                                 ; $755d: $ea $16 $04
    nop                                           ; $7560: $00
    ld [bc], a                                    ; $7561: $02
    db $fd                                        ; $7562: $fd
    add h                                         ; $7563: $84
    ld a, e                                       ; $7564: $7b
    db $10                                        ; $7565: $10
    rst $28                                       ; $7566: $ef
    add hl, hl                                    ; $7567: $29
    sub $60                                       ; $7568: $d6 $60
    ld b, b                                       ; $756a: $40
    inc h                                         ; $756b: $24
    inc bc                                        ; $756c: $03
    or b                                          ; $756d: $b0
    add hl, bc                                    ; $756e: $09
    ld de, $02ef                                  ; $756f: $11 $ef $02
    rst $38                                       ; $7572: $ff
    adc e                                         ; $7573: $8b
    nop                                           ; $7574: $00
    halt                                          ; $7575: $76
    ld d, $ee                                     ; $7576: $16 $ee
    inc b                                         ; $7578: $04
    cp $06                                        ; $7579: $fe $06
    db $fc                                        ; $757b: $fc
    xor a                                         ; $757c: $af
    ld d, $fc                                     ; $757d: $16 $fc
    ld hl, sp-$01                                 ; $757f: $f8 $ff
    ret c                                         ; $7581: $d8

    ld a, [bc]                                    ; $7582: $0a
    ld hl, $12dc                                  ; $7583: $21 $dc $12
    add b                                         ; $7586: $80
    ld a, [de]                                    ; $7587: $1a
    ld c, b                                       ; $7588: $48
    ldh a, [$a2]                                  ; $7589: $f0 $a2
    inc b                                         ; $758b: $04
    ld a, [$ea08]                                 ; $758c: $fa $08 $ea
    ld [bc], a                                    ; $758f: $02
    and c                                         ; $7590: $a1
    inc d                                         ; $7591: $14
    ld a, [bc]                                    ; $7592: $0a
    dec [hl]                                      ; $7593: $35
    ld b, h                                       ; $7594: $44
    dec sp                                        ; $7595: $3b
    nop                                           ; $7596: $00
    ld c, b                                       ; $7597: $48
    scf                                           ; $7598: $37
    ld d, b                                       ; $7599: $50
    cpl                                           ; $759a: $2f
    nop                                           ; $759b: $00
    ld a, a                                       ; $759c: $7f
    add b                                         ; $759d: $80
    ld a, a                                       ; $759e: $7f
    db $10                                        ; $759f: $10
    push de                                       ; $75a0: $d5
    ld a, a                                       ; $75a1: $7f
    ld a, a                                       ; $75a2: $7f
    adc [hl]                                      ; $75a3: $8e
    ld de, $d52a                                  ; $75a4: $11 $2a $d5
    ld d, l                                       ; $75a7: $55
    xor d                                         ; $75a8: $aa
    ldh [rP1], a                                  ; $75a9: $e0 $00
    ld a, [bc]                                    ; $75ab: $0a
    sub b                                         ; $75ac: $90
    ld a, [bc]                                    ; $75ad: $0a
    inc [hl]                                      ; $75ae: $34
    add hl, bc                                    ; $75af: $09
    jr c, @-$26                                   ; $75b0: $38 $d8

    db $10                                        ; $75b2: $10
    ld hl, sp+$10                                 ; $75b3: $f8 $10
    ld [$2290], a                                 ; $75b5: $ea $90 $22
    cp d                                          ; $75b8: $ba
    dec bc                                        ; $75b9: $0b
    xor h                                         ; $75ba: $ac
    ld [$900a], sp                                ; $75bb: $08 $0a $90
    ld [hl+], a                                   ; $75be: $22
    ld bc, $0518                                  ; $75bf: $01 $18 $05
    dec b                                         ; $75c2: $05
    and b                                         ; $75c3: $a0
    ld b, [hl]                                    ; $75c4: $46
    ld bc, $a001                                  ; $75c5: $01 $01 $a0
    ld [hl+], a                                   ; $75c8: $22
    add l                                         ; $75c9: $85
    ld a, [$f58a]                                 ; $75ca: $fa $8a $f5
    sub b                                         ; $75cd: $90
    ld bc, $a0ef                                  ; $75ce: $01 $ef $a0
    rst $18                                       ; $75d1: $df
    add b                                         ; $75d2: $80
    rst $38                                       ; $75d3: $ff
    add c                                         ; $75d4: $81
    cp $40                                        ; $75d5: $fe $40
    ld a, [bc]                                    ; $75d7: $0a
    ld b, e                                       ; $75d8: $43
    nop                                           ; $75d9: $00
    and d                                         ; $75da: $a2
    nop                                           ; $75db: $00
    inc h                                         ; $75dc: $24
    db $db                                        ; $75dd: $db
    ld [$d2f7], sp                                ; $75de: $08 $f7 $d2
    add hl, bc                                    ; $75e1: $09
    ld d, b                                       ; $75e2: $50
    ld a, [bc]                                    ; $75e3: $0a
    ld b, b                                       ; $75e4: $40
    inc d                                         ; $75e5: $14
    ld c, h                                       ; $75e6: $4c
    ld [de], a                                    ; $75e7: $12
    ld de, $00e0                                  ; $75e8: $11 $e0 $00
    ldh a, [$0a]                                  ; $75eb: $f0 $0a
    ldh a, [$0b]                                  ; $75ed: $f0 $0b
    xor a                                         ; $75ef: $af
    ldh a, [$e0]                                  ; $75f0: $f0 $e0
    rst $38                                       ; $75f2: $ff
    ld hl, sp+$08                                 ; $75f3: $f8 $08
    add b                                         ; $75f5: $80
    ld a, [hl]                                    ; $75f6: $7e
    ld bc, $2b20                                  ; $75f7: $01 $20 $2b
    nop                                           ; $75fa: $00
    ld b, $03                                     ; $75fb: $06 $03
    ld b, $03                                     ; $75fd: $06 $03
    add a                                         ; $75ff: $87
    inc bc                                        ; $7600: $03
    ld bc, $1403                                  ; $7601: $01 $03 $14
    inc bc                                        ; $7604: $03
    ld bc, $c5ab                                  ; $7605: $01 $ab $c5
    ld [bc], a                                    ; $7608: $02
    ld bc, $0bfe                                  ; $7609: $01 $fe $0b
    cp [hl]                                       ; $760c: $be
    ld [bc], a                                    ; $760d: $02
    ld [hl], b                                    ; $760e: $70
    db $fd                                        ; $760f: $fd
    call nz, Call_000_200b                        ; $7610: $c4 $0b $20
    dec de                                        ; $7613: $1b
    ld a, [de]                                    ; $7614: $1a
    ld a, [bc]                                    ; $7615: $0a
    and b                                         ; $7616: $a0
    ld e, a                                       ; $7617: $5f
    ld d, b                                       ; $7618: $50
    xor a                                         ; $7619: $af
    jp nz, Jump_000_0bce                          ; $761a: $c2 $ce $0b

    db $10                                        ; $761d: $10
    stop                                          ; $761e: $10 $00
    ld [$1080], sp                                ; $7620: $08 $80 $10
    adc $13                                       ; $7623: $ce $13
    dec d                                         ; $7625: $15
    dec bc                                        ; $7626: $0b
    ret nz                                        ; $7627: $c0

    ld e, a                                       ; $7628: $5f
    ldh [$c0], a                                  ; $7629: $e0 $c0
    and b                                         ; $762b: $a0
    ld [bc], a                                    ; $762c: $02
    ld b, b                                       ; $762d: $40
    sbc d                                         ; $762e: $9a
    inc b                                         ; $762f: $04
    sub h                                         ; $7630: $94
    add hl, bc                                    ; $7631: $09
    add b                                         ; $7632: $80
    jr nc, jr_0c5_7650                            ; $7633: $30 $1b

    rrca                                          ; $7635: $0f
    rra                                           ; $7636: $1f
    rra                                           ; $7637: $1f
    rrca                                          ; $7638: $0f
    rrca                                          ; $7639: $0f
    rrca                                          ; $763a: $0f
    rlca                                          ; $763b: $07
    adc b                                         ; $763c: $88
    inc bc                                        ; $763d: $03
    nop                                           ; $763e: $00
    ld d, e                                       ; $763f: $53
    rlca                                          ; $7640: $07
    rst $38                                       ; $7641: $ff
    jr nc, jr_0c5_7647                            ; $7642: $30 $03

    call nz, Call_000_0880                        ; $7644: $c4 $80 $08

jr_0c5_7647:
    db $eb                                        ; $7647: $eb
    ld c, c                                       ; $7648: $49
    ld [bc], a                                    ; $7649: $02
    ld [de], a                                    ; $764a: $12
    add hl, bc                                    ; $764b: $09
    jr nc, jr_0c5_765a                            ; $764c: $30 $0c

    db $10                                        ; $764e: $10
    ld b, h                                       ; $764f: $44

jr_0c5_7650:
    inc b                                         ; $7650: $04
    ld [bc], a                                    ; $7651: $02
    ld c, h                                       ; $7652: $4c
    inc b                                         ; $7653: $04
    sub d                                         ; $7654: $92
    inc c                                         ; $7655: $0c
    add b                                         ; $7656: $80
    call nc, $020a                                ; $7657: $d4 $0a $02

jr_0c5_765a:
    nop                                           ; $765a: $00
    ld c, b                                       ; $765b: $48
    rlca                                          ; $765c: $07
    adc b                                         ; $765d: $88
    rlca                                          ; $765e: $07
    nop                                           ; $765f: $00
    ld b, b                                       ; $7660: $40
    rrca                                          ; $7661: $0f
    and d                                         ; $7662: $a2
    dec de                                        ; $7663: $1b
    jr nz, jr_0c5_7685                            ; $7664: $20 $1f

    nop                                           ; $7666: $00
    ccf                                           ; $7667: $3f
    dec b                                         ; $7668: $05
    ld a, [$280c]                                 ; $7669: $fa $0c $28
    rst $10                                       ; $766c: $d7
    ld d, b                                       ; $766d: $50
    xor a                                         ; $766e: $af
    sub b                                         ; $766f: $90
    ld a, [de]                                    ; $7670: $1a
    xor $02                                       ; $7671: $ee $02
    db $ed                                        ; $7673: $ed
    ld b, c                                       ; $7674: $41
    adc b                                         ; $7675: $88
    ld e, h                                       ; $7676: $5c
    inc de                                        ; $7677: $13
    add hl, bc                                    ; $7678: $09
    rst $30                                       ; $7679: $f7
    ld [de], a                                    ; $767a: $12
    ld l, b                                       ; $767b: $68
    ld bc, $be43                                  ; $767c: $01 $43 $be
    add e                                         ; $767f: $83
    inc hl                                        ; $7680: $23
    ld a, [hl]                                    ; $7681: $7e
    add d                                         ; $7682: $82
    sub b                                         ; $7683: $90
    ld [bc], a                                    ; $7684: $02

jr_0c5_7685:
    and d                                         ; $7685: $a2
    nop                                           ; $7686: $00
    ld b, l                                       ; $7687: $45
    adc h                                         ; $7688: $8c

jr_0c5_7689:
    ld [de], a                                    ; $7689: $12
    ret c                                         ; $768a: $d8

    inc c                                         ; $768b: $0c
    ld h, b                                       ; $768c: $60
    ld d, b                                       ; $768d: $50
    ld a, [de]                                    ; $768e: $1a
    dec h                                         ; $768f: $25
    ret nz                                        ; $7690: $c0

    add hl, hl                                    ; $7691: $29
    sub c                                         ; $7692: $91
    ld c, $12                                     ; $7693: $0e $12
    dec c                                         ; $7695: $0d
    inc b                                         ; $7696: $04
    nop                                           ; $7697: $00
    dec bc                                        ; $7698: $0b
    ld [de], a                                    ; $7699: $12
    dec c                                         ; $769a: $0d
    inc d                                         ; $769b: $14
    dec bc                                        ; $769c: $0b
    nop                                           ; $769d: $00
    rra                                           ; $769e: $1f
    nop                                           ; $769f: $00
    inc b                                         ; $76a0: $04
    rra                                           ; $76a1: $1f
    ld hl, $401e                                  ; $76a2: $21 $1e $40
    cp a                                          ; $76a5: $bf
    ld e, [hl]                                    ; $76a6: $5e
    dec bc                                        ; $76a7: $0b
    jr nz, jr_0c5_7689                            ; $76a8: $20 $df

    ret nz                                        ; $76aa: $c0

    or b                                          ; $76ab: $b0
    add hl, bc                                    ; $76ac: $09
    ld e, d                                       ; $76ad: $5a
    inc c                                         ; $76ae: $0c
    xor c                                         ; $76af: $a9
    ld d, a                                       ; $76b0: $57
    ld de, $01ef                                  ; $76b1: $11 $ef $01
    rst $38                                       ; $76b4: $ff
    ld c, h                                       ; $76b5: $4c
    ld hl, $04e4                                  ; $76b6: $21 $e4 $04
    add c                                         ; $76b9: $81
    ld a, a                                       ; $76ba: $7f
    ld e, b                                       ; $76bb: $58
    ld [$0cde], sp                                ; $76bc: $08 $de $0c
    adc d                                         ; $76bf: $8a
    nop                                           ; $76c0: $00
    dec d                                         ; $76c1: $15
    sub h                                         ; $76c2: $94
    nop                                           ; $76c3: $00
    xor b                                         ; $76c4: $a8
    ld c, d                                       ; $76c5: $4a
    ld b, $81                                     ; $76c6: $06 $81
    add sp, $04                                   ; $76c8: $e8 $04
    nop                                           ; $76ca: $00
    db $ec                                        ; $76cb: $ec
    inc b                                         ; $76cc: $04
    ld l, b                                       ; $76cd: $68
    ld bc, $168a                                  ; $76ce: $01 $8a $16
    jr nz, jr_0c5_76dd                            ; $76d1: $20 $0a

    jr z, @+$62                                   ; $76d3: $28 $60

    ld [de], a                                    ; $76d5: $12
    inc c                                         ; $76d6: $0c
    rrca                                          ; $76d7: $0f
    ld [$70a0], sp                                ; $76d8: $08 $a0 $70
    inc bc                                        ; $76db: $03
    inc c                                         ; $76dc: $0c

jr_0c5_76dd:
    ld h, h                                       ; $76dd: $64
    ld [bc], a                                    ; $76de: $02
    inc c                                         ; $76df: $0c
    rlca                                          ; $76e0: $07
    ld b, c                                       ; $76e1: $41
    cp [hl]                                       ; $76e2: $be
    adc d                                         ; $76e3: $8a
    db $10                                        ; $76e4: $10
    ld [hl], l                                    ; $76e5: $75
    inc d                                         ; $76e6: $14
    db $eb                                        ; $76e7: $eb
    ld d, b                                       ; $76e8: $50
    jr jr_0c5_76eb                                ; $76e9: $18 $00

jr_0c5_76eb:
    rst $38                                       ; $76eb: $ff
    inc b                                         ; $76ec: $04
    ei                                            ; $76ed: $fb
    jr nc, jr_0c5_7740                            ; $76ee: $30 $50

    xor a                                         ; $76f0: $af
    rlca                                          ; $76f1: $07
    rrca                                          ; $76f2: $0f
    or d                                          ; $76f3: $b2
    inc e                                         ; $76f4: $1c
    db $10                                        ; $76f5: $10
    rst $28                                       ; $76f6: $ef
    and b                                         ; $76f7: $a0
    ld e, a                                       ; $76f8: $5f
    xor b                                         ; $76f9: $a8
    sub h                                         ; $76fa: $94
    ld e, $85                                     ; $76fb: $1e $85
    ld a, [c]                                     ; $76fd: $f2
    inc bc                                        ; $76fe: $03
    db $10                                        ; $76ff: $10
    add hl, sp                                    ; $7700: $39
    dec b                                         ; $7701: $05
    ld b, c                                       ; $7702: $41
    add b                                         ; $7703: $80
    ld [$002c], sp                                ; $7704: $08 $2c $00

jr_0c5_7707:
    ld d, c                                       ; $7707: $51
    or b                                          ; $7708: $b0
    nop                                           ; $7709: $00
    ld b, c                                       ; $770a: $41
    ld [hl], b                                    ; $770b: $70
    ld [de], a                                    ; $770c: $12
    add $0d                                       ; $770d: $c6 $0d
    or b                                          ; $770f: $b0
    rra                                           ; $7710: $1f
    inc b                                         ; $7711: $04
    ld [$981f], sp                                ; $7712: $08 $1f $98
    rrca                                          ; $7715: $0f
    inc d                                         ; $7716: $14
    ld d, b                                       ; $7717: $50
    db $10                                        ; $7718: $10
    ld [bc], a                                    ; $7719: $02
    rlca                                          ; $771a: $07
    ld c, h                                       ; $771b: $4c
    ld b, $b0                                     ; $771c: $06 $b0
    ld b, d                                       ; $771e: $42
    ld bc, $b0fe                                  ; $771f: $01 $fe $b0
    ld a, [bc]                                    ; $7722: $0a
    sbc d                                         ; $7723: $9a
    ld [$5fa0], sp                                ; $7724: $08 $a0 $5f
    dec sp                                        ; $7727: $3b
    ld b, h                                       ; $7728: $44
    cp e                                          ; $7729: $bb
    inc b                                         ; $772a: $04
    dec de                                        ; $772b: $1b
    sub $05                                       ; $772c: $d6 $05
    ld [hl], $13                                  ; $772e: $36 $13
    inc b                                         ; $7730: $04
    sub b                                         ; $7731: $90
    inc [hl]                                      ; $7732: $34
    ld a, [bc]                                    ; $7733: $0a
    ld [$1052], sp                                ; $7734: $08 $52 $10
    ld a, [de]                                    ; $7737: $1a
    rlca                                          ; $7738: $07
    add d                                         ; $7739: $82
    and b                                         ; $773a: $a0
    inc h                                         ; $773b: $24
    nop                                           ; $773c: $00
    ccf                                           ; $773d: $3f
    ld d, b                                       ; $773e: $50
    ld a, [bc]                                    ; $773f: $0a

jr_0c5_7740:
    db $10                                        ; $7740: $10
    inc b                                         ; $7741: $04
    ld l, a                                       ; $7742: $6f
    add h                                         ; $7743: $84
    ld a, e                                       ; $7744: $7b
    add b                                         ; $7745: $80
    ld a, a                                       ; $7746: $7f
    ld b, b                                       ; $7747: $40
    inc c                                         ; $7748: $0c
    dec b                                         ; $7749: $05
    ld a, [$4830]                                 ; $774a: $fa $30 $48
    or a                                          ; $774d: $b7
    ld [de], a                                    ; $774e: $12
    ld e, $50                                     ; $774f: $1e $50
    inc e                                         ; $7751: $1c
    ld b, $fe                                     ; $7752: $06 $fe
    inc b                                         ; $7754: $04
    cp $00                                        ; $7755: $fe $00
    ld b, h                                       ; $7757: $44
    cp [hl]                                       ; $7758: $be
    adc [hl]                                      ; $7759: $8e
    ld a, h                                       ; $775a: $7c
    ld b, $fc                                     ; $775b: $06 $fc
    rrca                                          ; $775d: $0f
    db $fc                                        ; $775e: $fc
    ld a, e                                       ; $775f: $7b
    xor e                                         ; $7760: $ab
    and b                                         ; $7761: $a0
    ld [bc], a                                    ; $7762: $02
    ld [$100a], a                                 ; $7763: $ea $0a $10
    ld e, $e0                                     ; $7766: $1e $e0
    inc e                                         ; $7768: $1c
    jr nz, jr_0c5_7707                            ; $7769: $20 $9c

    db $10                                        ; $776b: $10
    ret nz                                        ; $776c: $c0

    add hl, sp                                    ; $776d: $39
    ld h, c                                       ; $776e: $61
    add d                                         ; $776f: $82
    jp c, $de13                                   ; $7770: $da $13 $de

    dec bc                                        ; $7773: $0b
    ld h, b                                       ; $7774: $60
    rra                                           ; $7775: $1f
    push de                                       ; $7776: $d5
    ccf                                           ; $7777: $3f
    jr nc, jr_0c5_7787                            ; $7778: $30 $0d

    sub b                                         ; $777a: $90
    ldh [rNR23], a                                ; $777b: $e0 $18
    dec h                                         ; $777d: $25
    jp c, Jump_000_2cf0                           ; $777e: $da $f0 $2c

    ld hl, $49df                                  ; $7781: $21 $df $49
    or a                                          ; $7784: $b7
    dec hl                                        ; $7785: $2b
    sub c                                         ; $7786: $91

jr_0c5_7787:
    ld l, a                                       ; $7787: $6f
    ldh a, [$3c]                                  ; $7788: $f0 $3c
    adc b                                         ; $778a: $88
    ld [hl+], a                                   ; $778b: $22
    ld d, $81                                     ; $778c: $16 $81
    ld [hl], b                                    ; $778e: $70
    dec h                                         ; $778f: $25
    sbc [hl]                                      ; $7790: $9e
    dec de                                        ; $7791: $1b
    ld [c], a                                     ; $7792: $e2
    inc [hl]                                      ; $7793: $34
    inc c                                         ; $7794: $0c
    ld h, b                                       ; $7795: $60
    ld [hl+], a                                   ; $7796: $22
    sbc d                                         ; $7797: $9a
    inc bc                                        ; $7798: $03
    ld b, $07                                     ; $7799: $06 $07
    inc b                                         ; $779b: $04
    inc b                                         ; $779c: $04
    nop                                           ; $779d: $00
    xor d                                         ; $779e: $aa
    jr nz, jr_0c5_77a8                            ; $779f: $20 $07

    cp $40                                        ; $77a1: $fe $40
    dec b                                         ; $77a3: $05
    ld bc, $12fe                                  ; $77a4: $01 $fe $12
    db $ed                                        ; $77a7: $ed

jr_0c5_77a8:
    jr nz, jr_0c5_77c3                            ; $77a8: $20 $19

    rst $18                                       ; $77aa: $df
    ld b, h                                       ; $77ab: $44
    cp e                                          ; $77ac: $bb
    inc e                                         ; $77ad: $1c
    ld c, $f0                                     ; $77ae: $0e $f0
    inc c                                         ; $77b0: $0c
    ld b, b                                       ; $77b1: $40
    cp a                                          ; $77b2: $bf
    inc l                                         ; $77b3: $2c
    ld e, $c0                                     ; $77b4: $1e $c0
    ld c, b                                       ; $77b6: $48
    add hl, bc                                    ; $77b7: $09
    nop                                           ; $77b8: $00
    dec c                                         ; $77b9: $0d
    ld b, d                                       ; $77ba: $42
    add b                                         ; $77bb: $80
    dec b                                         ; $77bc: $05
    ret nz                                        ; $77bd: $c0

    ld [bc], a                                    ; $77be: $02
    ret nz                                        ; $77bf: $c0

    add c                                         ; $77c0: $81
    ld b, $0d                                     ; $77c1: $06 $0d

jr_0c5_77c3:
    dec [hl]                                      ; $77c3: $35
    ret nz                                        ; $77c4: $c0

    cp a                                          ; $77c5: $bf
    ldh [$e0], a                                  ; $77c6: $e0 $e0
    rst $38                                       ; $77c8: $ff
    ld [hl], h                                    ; $77c9: $74
    inc c                                         ; $77ca: $0c
    ld b, b                                       ; $77cb: $40
    ld a, [bc]                                    ; $77cc: $0a
    nop                                           ; $77cd: $00
    ld b, c                                       ; $77ce: $41
    ld b, $03                                     ; $77cf: $06 $03
    dec bc                                        ; $77d1: $0b
    inc bc                                        ; $77d2: $03
    sub c                                         ; $77d3: $91
    inc bc                                        ; $77d4: $03
    inc bc                                        ; $77d5: $03
    inc hl                                        ; $77d6: $23
    ld bc, $0103                                  ; $77d7: $01 $03 $01
    ld d, h                                       ; $77da: $54
    ld bc, $10c0                                  ; $77db: $01 $c0 $10
    or b                                          ; $77de: $b0
    ld [hl+], a                                   ; $77df: $22
    di                                            ; $77e0: $f3
    ld a, $0c                                     ; $77e1: $3e $0c
    ld b, b                                       ; $77e3: $40
    dec c                                         ; $77e4: $0d
    or b                                          ; $77e5: $b0
    ld c, d                                       ; $77e6: $4a
    ld d, b                                       ; $77e7: $50
    dec c                                         ; $77e8: $0d
    ld d, c                                       ; $77e9: $51
    xor [hl]                                      ; $77ea: $ae
    sbc d                                         ; $77eb: $9a
    add hl, de                                    ; $77ec: $19
    xor h                                         ; $77ed: $ac
    add hl, bc                                    ; $77ee: $09
    add b                                         ; $77ef: $80
    sub [hl]                                      ; $77f0: $96
    ld c, $52                                     ; $77f1: $0e $52
    xor a                                         ; $77f3: $af
    inc hl                                        ; $77f4: $23
    sbc $43                                       ; $77f5: $de $43
    cp [hl]                                       ; $77f7: $be
    nop                                           ; $77f8: $00
    add b                                         ; $77f9: $80
    ld d, $01                                     ; $77fa: $16 $01
    ld b, $fc                                     ; $77fc: $06 $fc
    ld b, h                                       ; $77fe: $44
    cp h                                          ; $77ff: $bc
    adc b                                         ; $7800: $88
    ld a, h                                       ; $7801: $7c
    ld [bc], a                                    ; $7802: $02
    or a                                          ; $7803: $b7
    sub b                                         ; $7804: $90
    ld d, $40                                     ; $7805: $16 $40
    ld a, [$5211]                                 ; $7807: $fa $11 $52
    inc e                                         ; $780a: $1c
    nop                                           ; $780b: $00
    ld l, h                                       ; $780c: $6c
    rla                                           ; $780d: $17
    jr jr_0c5_7819                                ; $780e: $18 $09

Call_0c5_7810:
    ldh a, [$0c]                                  ; $7810: $f0 $0c
    adc b                                         ; $7812: $88
    and b                                         ; $7813: $a0
    ld a, [de]                                    ; $7814: $1a
    nop                                           ; $7815: $00
    rrca                                          ; $7816: $0f
    add c                                         ; $7817: $81
    ld e, b                                       ; $7818: $58

jr_0c5_7819:
    ld [bc], a                                    ; $7819: $02
    db $10                                        ; $781a: $10
    rrca                                          ; $781b: $0f
    nop                                           ; $781c: $00
    inc e                                         ; $781d: $1c
    rra                                           ; $781e: $1f
    ld a, [hl+]                                   ; $781f: $2a
    push de                                       ; $7820: $d5
    ld [$a619], a                                 ; $7821: $ea $19 $a6
    ld a, [bc]                                    ; $7824: $0a
    inc l                                         ; $7825: $2c
    dec bc                                        ; $7826: $0b
    dec d                                         ; $7827: $15
    ld [$aec0], a                                 ; $7828: $ea $c0 $ae
    ld e, $58                                     ; $782b: $1e $58
    dec c                                         ; $782d: $0d
    sub b                                         ; $782e: $90
    ld l, a                                       ; $782f: $6f
    ld [hl+], a                                   ; $7830: $22
    db $dd                                        ; $7831: $dd
    ld h, b                                       ; $7832: $60
    ret nz                                        ; $7833: $c0

    db $10                                        ; $7834: $10
    ld h, c                                       ; $7835: $61
    ret nz                                        ; $7836: $c0

    ld h, d                                       ; $7837: $62
    inc b                                         ; $7838: $04
    nop                                           ; $7839: $00
    ld [c], a                                     ; $783a: $e2
    ret nz                                        ; $783b: $c0

    ld b, h                                       ; $783c: $44
    ret nz                                        ; $783d: $c0

    ld c, $88                                     ; $783e: $0e $88
    ret nz                                        ; $7840: $c0

    add b                                         ; $7841: $80
    ret nz                                        ; $7842: $c0

    xor [hl]                                      ; $7843: $ae
    inc c                                         ; $7844: $0c
    cp [hl]                                       ; $7845: $be
    rrca                                          ; $7846: $0f
    or [hl]                                       ; $7847: $b6

jr_0c5_7848:
    inc c                                         ; $7848: $0c
    ld bc, $34aa                                  ; $7849: $01 $aa $34
    rlca                                          ; $784c: $07
    and c                                         ; $784d: $a1
    ld hl, sp+$04                                 ; $784e: $f8 $04
    add c                                         ; $7850: $81
    adc d                                         ; $7851: $8a
    rlca                                          ; $7852: $07
    ld c, c                                       ; $7853: $49
    ld e, b                                       ; $7854: $58
    dec b                                         ; $7855: $05
    ld de, $0e80                                  ; $7856: $11 $80 $0e
    dec b                                         ; $7859: $05
    adc b                                         ; $785a: $88
    rst $30                                       ; $785b: $f7
    sub b                                         ; $785c: $90
    rst $28                                       ; $785d: $ef
    xor b                                         ; $785e: $a8
    rst $10                                       ; $785f: $d7
    sub b                                         ; $7860: $90
    rlca                                          ; $7861: $07
    rst $28                                       ; $7862: $ef
    add b                                         ; $7863: $80
    rst $38                                       ; $7864: $ff
    add b                                         ; $7865: $80
    rst $38                                       ; $7866: $ff
    ld a, [bc]                                    ; $7867: $0a
    dec c                                         ; $7868: $0d
    adc h                                         ; $7869: $8c
    rra                                           ; $786a: $1f
    and d                                         ; $786b: $a2
    ld c, $20                                     ; $786c: $0e $20
    add h                                         ; $786e: $84
    ld a, e                                       ; $786f: $7b
    ret nc                                        ; $7870: $d0

    rrca                                          ; $7871: $0f
    jr z, jr_0c5_7848                             ; $7872: $28 $d4

    ld d, d                                       ; $7874: $52
    xor h                                         ; $7875: $ac
    add b                                         ; $7876: $80
    ld [de], a                                    ; $7877: $12
    ld a, h                                       ; $7878: $7c
    ld [bc], a                                    ; $7879: $02
    db $fc                                        ; $787a: $fc
    ld [bc], a                                    ; $787b: $02
    jr jr_0c5_789e                                ; $787c: $18 $20

    sbc $c8                                       ; $787e: $de $c8
    rra                                           ; $7880: $1f
    ld a, [bc]                                    ; $7881: $0a
    db $db                                        ; $7882: $db
    ld b, [hl]                                    ; $7883: $46
    rlca                                          ; $7884: $07

jr_0c5_7885:
    ld d, $1e                                     ; $7885: $16 $1e
    nop                                           ; $7887: $00
    ld c, b                                       ; $7888: $48
    dec b                                         ; $7889: $05

jr_0c5_788a:
    or c                                          ; $788a: $b1
    ld e, $02                                     ; $788b: $1e $02
    ld h, [hl]                                    ; $788d: $66
    ld b, $5c                                     ; $788e: $06 $5c
    rlca                                          ; $7890: $07
    xor d                                         ; $7891: $aa
    or $02                                        ; $7892: $f6 $02
    sbc b                                         ; $7894: $98
    inc d                                         ; $7895: $14
    dec b                                         ; $7896: $05
    jr @+$24                                      ; $7897: $18 $22

    ld b, $00                                     ; $7899: $06 $00
    or h                                          ; $789b: $b4
    ld [bc], a                                    ; $789c: $02
    xor b                                         ; $789d: $a8

jr_0c5_789e:
    ld h, c                                       ; $789e: $61
    ld d, a                                       ; $789f: $57
    sbc $1f                                       ; $78a0: $de $1f
    or d                                          ; $78a2: $b2
    ld a, [hl+]                                   ; $78a3: $2a
    jr nz, jr_0c5_7885                            ; $78a4: $20 $df

jr_0c5_78a6:
    ld c, b                                       ; $78a6: $48
    or a                                          ; $78a7: $b7
    ldh a, [rIF]                                  ; $78a8: $f0 $0f
    sub b                                         ; $78aa: $90
    and $0b                                       ; $78ab: $e6 $0b
    inc b                                         ; $78ad: $04
    ei                                            ; $78ae: $fb
    ld e, $03                                     ; $78af: $1e $03
    nop                                           ; $78b1: $00
    ld bc, $4280                                  ; $78b2: $01 $80 $42
    add hl, hl                                    ; $78b5: $29
    add b                                         ; $78b6: $80
    ld b, h                                       ; $78b7: $44
    sbc [hl]                                      ; $78b8: $9e
    rlca                                          ; $78b9: $07
    jr nz, jr_0c5_7936                            ; $78ba: $20 $7a

    ld b, $01                                     ; $78bc: $06 $01
    ldh [$6c], a                                  ; $78be: $e0 $6c
    ld c, $b8                                     ; $78c0: $0e $b8
    ld h, d                                       ; $78c2: $62
    dec c                                         ; $78c3: $0d
    ld [hl+], a                                   ; $78c4: $22
    db $ec                                        ; $78c5: $ec
    dec b                                         ; $78c6: $05
    or [hl]                                       ; $78c7: $b6
    ld c, $4e                                     ; $78c8: $0e $4e
    dec c                                         ; $78ca: $0d
    inc h                                         ; $78cb: $24
    db $db                                        ; $78cc: $db
    ld c, c                                       ; $78cd: $49
    ld b, b                                       ; $78ce: $40
    or [hl]                                       ; $78cf: $b6
    or b                                          ; $78d0: $b0
    add hl, hl                                    ; $78d1: $29
    inc c                                         ; $78d2: $0c
    ld hl, sp+$18                                 ; $78d3: $f8 $18
    ld hl, sp+$11                                 ; $78d5: $f8 $11
    ld hl, sp+$07                                 ; $78d7: $f8 $07
    ld a, [de]                                    ; $78d9: $1a
    ldh a, [$30]                                  ; $78da: $f0 $30
    ldh a, [rNR51]                                ; $78dc: $f0 $25
    ld d, b                                       ; $78de: $50
    inc d                                         ; $78df: $14
    ld l, $2f                                     ; $78e0: $2e $2f
    jr nc, @+$31                                  ; $78e2: $30 $2f

    ldh a, [rLCDC]                                ; $78e4: $f0 $40
    rrca                                          ; $78e6: $0f
    ld a, [hl-]                                   ; $78e7: $3a
    jr jr_0c5_788a                                ; $78e8: $18 $a0

    ld [hl+], a                                   ; $78ea: $22
    ld c, [hl]                                    ; $78eb: $4e
    ld [de], a                                    ; $78ec: $12
    inc b                                         ; $78ed: $04
    dec sp                                        ; $78ee: $3b
    nop                                           ; $78ef: $00
    ccf                                           ; $78f0: $3f
    ld [hl], e                                    ; $78f1: $73
    ld b, b                                       ; $78f2: $40
    ldh a, [rNR21]                                ; $78f3: $f0 $16
    sub $08                                       ; $78f5: $d6 $08
    xor [hl]                                      ; $78f7: $ae
    ld c, $14                                     ; $78f8: $0e $14
    db $eb                                        ; $78fa: $eb
    ldh a, [rNR34]                                ; $78fb: $f0 $1e
    ld [$c00f], a                                 ; $78fd: $ea $0f $c0
    ld e, h                                       ; $7900: $5c
    inc c                                         ; $7901: $0c
    ld d, b                                       ; $7902: $50
    dec l                                         ; $7903: $2d
    add c                                         ; $7904: $81
    ret nz                                        ; $7905: $c0

    add d                                         ; $7906: $82
    ret nz                                        ; $7907: $c0

    pop bc                                        ; $7908: $c1
    add b                                         ; $7909: $80
    inc b                                         ; $790a: $04
    jp nz, $c880                                  ; $790b: $c2 $80 $c8

    add b                                         ; $790e: $80
    push de                                       ; $790f: $d5
    inc de                                        ; $7910: $13
    ld bc, $ff80                                  ; $7911: $01 $80 $ff
    ld l, a                                       ; $7914: $6f
    ld [$25f0], sp                                ; $7915: $08 $f0 $25
    sub b                                         ; $7918: $90
    cpl                                           ; $7919: $2f
    ld bc, $055e                                  ; $791a: $01 $5e $05
    ld b, d                                       ; $791d: $42
    add hl, bc                                    ; $791e: $09
    nop                                           ; $791f: $00
    dec l                                         ; $7920: $2d
    db $fc                                        ; $7921: $fc
    inc c                                         ; $7922: $0c
    jr c, jr_0c5_78a6                             ; $7923: $38 $81

    cp $38                                        ; $7925: $fe $38
    ld b, $42                                     ; $7927: $06 $42
    ld b, $50                                     ; $7929: $06 $50
    ld a, [de]                                    ; $792b: $1a
    add b                                         ; $792c: $80
    ld a, a                                       ; $792d: $7f
    ld d, c                                       ; $792e: $51
    ld h, b                                       ; $792f: $60
    xor [hl]                                      ; $7930: $ae
    or $08                                        ; $7931: $f6 $08
    ld d, b                                       ; $7933: $50
    rra                                           ; $7934: $1f
    ld b, l                                       ; $7935: $45

jr_0c5_7936:
    cp d                                          ; $7936: $ba
    adc b                                         ; $7937: $88
    halt                                          ; $7938: $76
    ld de, $ee11                                  ; $7939: $11 $11 $ee
    ld bc, $04fe                                  ; $793c: $01 $fe $04
    ld [$feab], sp                                ; $793f: $08 $ab $fe
    cp $00                                        ; $7942: $fe $00
    dec d                                         ; $7944: $15
    pop af                                        ; $7945: $f1
    ldh [rVBK], a                                 ; $7946: $e0 $4f
    xor d                                         ; $7948: $aa
    dec c                                         ; $7949: $0d
    ld b, h                                       ; $794a: $44
    add hl, bc                                    ; $794b: $09
    ld d, b                                       ; $794c: $50
    dec hl                                        ; $794d: $2b
    inc c                                         ; $794e: $0c
    rlca                                          ; $794f: $07
    ld c, $98                                     ; $7950: $0e $98
    inc bc                                        ; $7952: $03
    sbc a                                         ; $7953: $9f
    sbc d                                         ; $7954: $9a
    dec bc                                        ; $7955: $0b
    ld d, [hl]                                    ; $7956: $56
    inc bc                                        ; $7957: $03
    or b                                          ; $7958: $b0
    ld a, [bc]                                    ; $7959: $0a
    ld d, $07                                     ; $795a: $16 $07
    inc c                                         ; $795c: $0c
    dec b                                         ; $795d: $05
    ld b, d                                       ; $795e: $42
    inc e                                         ; $795f: $1c
    ld h, b                                       ; $7960: $60
    ld a, [de]                                    ; $7961: $1a
    dec h                                         ; $7962: $25
    ld bc, $20fe                                  ; $7963: $01 $fe $20
    dec e                                         ; $7966: $1d
    inc b                                         ; $7967: $04
    ei                                            ; $7968: $fb
    or b                                          ; $7969: $b0
    rrca                                          ; $796a: $0f
    ld [de], a                                    ; $796b: $12
    xor h                                         ; $796c: $ac
    rlca                                          ; $796d: $07
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    ldh a, [$08]                                  ; $7970: $f0 $08
    ldh a, [$88]                                  ; $7972: $f0 $88
    ld [hl], b                                    ; $7974: $70
    dec b                                         ; $7975: $05
    ld hl, sp+$1e                                 ; $7976: $f8 $1e
    xor a                                         ; $7978: $af
    ld hl, sp-$08                                 ; $7979: $f8 $f8
    ldh a, [rTAC]                                 ; $797b: $f0 $07
    ld c, [hl]                                    ; $797d: $4e
    ld e, $00                                     ; $797e: $1e $00
    ld sp, $066e                                  ; $7980: $31 $6e $06
    ld b, h                                       ; $7983: $44
    and c                                         ; $7984: $a1
    call nz, Call_000_1007                        ; $7985: $c4 $07 $10
    nop                                           ; $7988: $00
    rla                                           ; $7989: $17
    ld de, $5400                                  ; $798a: $11 $00 $54
    dec hl                                        ; $798d: $2b
    xor [hl]                                      ; $798e: $ae
    dec bc                                        ; $798f: $0b
    ld [bc], a                                    ; $7990: $02
    jr nz, @+$61                                  ; $7991: $20 $5f

    add b                                         ; $7993: $80
    ld a, a                                       ; $7994: $7f
    adc b                                         ; $7995: $88
    ld [hl], a                                    ; $7996: $77
    xor h                                         ; $7997: $ac
    ld c, $08                                     ; $7998: $0e $08
    inc b                                         ; $799a: $04
    rst $30                                       ; $799b: $f7
    ld d, b                                       ; $799c: $50
    xor a                                         ; $799d: $af
    and d                                         ; $799e: $a2
    ld e, l                                       ; $799f: $5d
    ldh a, [$0b]                                  ; $79a0: $f0 $0b
    ld b, b                                       ; $79a2: $40
    cp a                                          ; $79a3: $bf
    inc bc                                        ; $79a4: $03
    add d                                         ; $79a5: $82
    ld a, l                                       ; $79a6: $7d
    inc b                                         ; $79a7: $04
    ei                                            ; $79a8: $fb
    inc d                                         ; $79a9: $14
    db $eb                                        ; $79aa: $eb
    jr jr_0c5_79b5                                ; $79ab: $18 $08

    inc b                                         ; $79ad: $04
    dec c                                         ; $79ae: $0d
    add d                                         ; $79af: $82
    jr jr_0c5_79cd                                ; $79b0: $18 $1b

    ld b, c                                       ; $79b2: $41
    ldh [$62], a                                  ; $79b3: $e0 $62

jr_0c5_79b5:
    ret nz                                        ; $79b5: $c0

    pop hl                                        ; $79b6: $e1
    sub d                                         ; $79b7: $92
    rla                                           ; $79b8: $17
    adc b                                         ; $79b9: $88
    ld e, d                                       ; $79ba: $5a
    ret nz                                        ; $79bb: $c0

    ld c, a                                       ; $79bc: $4f
    ld a, [bc]                                    ; $79bd: $0a
    ld bc, $11fc                                  ; $79be: $01 $fc $11
    or d                                          ; $79c1: $b2
    ld a, [bc]                                    ; $79c2: $0a
    nop                                           ; $79c3: $00
    ld b, h                                       ; $79c4: $44
    rlca                                          ; $79c5: $07
    ld [hl+], a                                   ; $79c6: $22
    adc $6a                                       ; $79c7: $ce $6a
    ld d, $14                                     ; $79c9: $16 $14
    add hl, sp                                    ; $79cb: $39
    add c                                         ; $79cc: $81

jr_0c5_79cd:
    nop                                           ; $79cd: $00
    sub b                                         ; $79ce: $90
    ld a, [de]                                    ; $79cf: $1a
    ldh [rIF], a                                  ; $79d0: $e0 $0f
    sub b                                         ; $79d2: $90
    rrca                                          ; $79d3: $0f
    ld b, d                                       ; $79d4: $42
    ld h, h                                       ; $79d5: $64
    cp l                                          ; $79d6: $bd
    add sp, $0f                                   ; $79d7: $e8 $0f
    ld [$010f], a                                 ; $79d9: $ea $0f $01
    cp $e4                                        ; $79dc: $fe $e4
    rrca                                          ; $79de: $0f
    ld bc, $00fe                                  ; $79df: $01 $fe $00
    ld d, c                                       ; $79e2: $51
    xor a                                         ; $79e3: $af
    ld hl, $51df                                  ; $79e4: $21 $df $51
    xor a                                         ; $79e7: $af
    and c                                         ; $79e8: $a1
    ld e, a                                       ; $79e9: $5f
    ld b, d                                       ; $79ea: $42
    ld bc, $07ee                                  ; $79eb: $01 $ee $07
    ld c, c                                       ; $79ee: $49
    or a                                          ; $79ef: $b7
    ld hl, $00df                                  ; $79f0: $21 $df $00
    dec c                                         ; $79f3: $0d
    add d                                         ; $79f4: $82
    push de                                       ; $79f5: $d5
    sbc h                                         ; $79f6: $9c
    dec b                                         ; $79f7: $05
    add $1b                                       ; $79f8: $c6 $1b
    ret nz                                        ; $79fa: $c0

    cp [hl]                                       ; $79fb: $be
    inc d                                         ; $79fc: $14
    ld b, c                                       ; $79fd: $41
    ld [de], a                                    ; $79fe: $12
    dec b                                         ; $79ff: $05
    inc b                                         ; $7a00: $04
    and d                                         ; $7a01: $a2
    dec d                                         ; $7a02: $15
    ld a, [hl]                                    ; $7a03: $7e
    add c                                         ; $7a04: $81
    cp [hl]                                       ; $7a05: $be
    inc b                                         ; $7a06: $04
    and [hl]                                      ; $7a07: $a6
    rrca                                          ; $7a08: $0f
    halt                                          ; $7a09: $76
    add hl, hl                                    ; $7a0a: $29
    jr z, jr_0c5_7a10                             ; $7a0b: $28 $03

    jr jr_0c5_7a15                                ; $7a0d: $18 $06

    ld l, h                                       ; $7a0f: $6c

jr_0c5_7a10:
    ld c, $92                                     ; $7a10: $0e $92
    nop                                           ; $7a12: $00
    db $ed                                        ; $7a13: $ed
    and l                                         ; $7a14: $a5

jr_0c5_7a15:
    jp c, $fd82                                   ; $7a15: $da $82 $fd

    add h                                         ; $7a18: $84
    ei                                            ; $7a19: $fb
    and c                                         ; $7a1a: $a1
    ld h, b                                       ; $7a1b: $60
    ld e, [hl]                                    ; $7a1c: $5e
    ld h, d                                       ; $7a1d: $62
    dec c                                         ; $7a1e: $0d
    ld e, h                                       ; $7a1f: $5c
    dec c                                         ; $7a20: $0d
    nop                                           ; $7a21: $00
    rst $38                                       ; $7a22: $ff
    add hl, bc                                    ; $7a23: $09
    or $12                                        ; $7a24: $f6 $12
    inc bc                                        ; $7a26: $03
    db $ed                                        ; $7a27: $ed
    ld d, c                                       ; $7a28: $51
    xor [hl]                                      ; $7a29: $ae
    ld hl, $41de                                  ; $7a2a: $21 $de $41
    ld l, [hl]                                    ; $7a2d: $6e
    rlca                                          ; $7a2e: $07
    ld [hl], b                                    ; $7a2f: $70
    ld [$84fe], sp                                ; $7a30: $08 $fe $84
    inc c                                         ; $7a33: $0c
    ld [$fe0d], a                                 ; $7a34: $ea $0d $fe
    inc c                                         ; $7a37: $0c
    ld [hl], d                                    ; $7a38: $72
    rra                                           ; $7a39: $1f
    cp h                                          ; $7a3a: $bc
    ld a, [bc]                                    ; $7a3b: $0a
    db $10                                        ; $7a3c: $10
    rrca                                          ; $7a3d: $0f
    ret nz                                        ; $7a3e: $c0

    ld a, [bc]                                    ; $7a3f: $0a
    ld hl, $ca82                                  ; $7a40: $21 $82 $ca
    rlca                                          ; $7a43: $07
    ld b, b                                       ; $7a44: $40
    nop                                           ; $7a45: $00
    ld b, [hl]                                    ; $7a46: $46
    inc bc                                        ; $7a47: $03
    dec b                                         ; $7a48: $05
    ld a, [hl]                                    ; $7a49: $7e
    ld b, $43                                     ; $7a4a: $06 $43
    nop                                           ; $7a4c: $00
    ld bc, $0183                                  ; $7a4d: $01 $83 $01
    db $10                                        ; $7a50: $10
    ld bc, $0120                                  ; $7a51: $01 $20 $01
    ld d, c                                       ; $7a54: $51
    add hl, de                                    ; $7a55: $19
    nop                                           ; $7a56: $00
    ld a, [bc]                                    ; $7a57: $0a
    push af                                       ; $7a58: $f5
    jp nz, $bc0f                                  ; $7a59: $c2 $0f $bc

    rrca                                          ; $7a5c: $0f
    add h                                         ; $7a5d: $84
    ei                                            ; $7a5e: $fb
    ld h, b                                       ; $7a5f: $60
    ld [$0690], sp                                ; $7a60: $08 $90 $06
    sub c                                         ; $7a63: $91
    ld [bc], a                                    ; $7a64: $02
    ld [bc], a                                    ; $7a65: $02
    rrca                                          ; $7a66: $0f
    ldh a, [rIF]                                  ; $7a67: $f0 $0f
    ldh a, [$a5]                                  ; $7a69: $f0 $a5
    ld d, b                                       ; $7a6b: $50
    inc b                                         ; $7a6c: $04
    ld [$405a], sp                                ; $7a6d: $08 $5a $40
    and b                                         ; $7a70: $a0
    inc b                                         ; $7a71: $04
    ld [$bf7f], sp                                ; $7a72: $08 $7f $bf
    ld l, a                                       ; $7a75: $6f
    cp a                                          ; $7a76: $bf
    ld a, l                                       ; $7a77: $7d
    cp [hl]                                       ; $7a78: $be
    jr jr_0c5_7afa                                ; $7a79: $18 $7f

    cp a                                          ; $7a7b: $bf
    ld e, a                                       ; $7a7c: $5f
    ld [$0400], sp                                ; $7a7d: $08 $00 $04
    ld [$6f7d], sp                                ; $7a80: $08 $7d $6f
    adc a                                         ; $7a83: $8f
    nop                                           ; $7a84: $00
    xor a                                         ; $7a85: $af
    rrca                                          ; $7a86: $0f
    rrca                                          ; $7a87: $0f
    and a                                         ; $7a88: $a7
    or e                                          ; $7a89: $b3
    db $fd                                        ; $7a8a: $fd
    ld a, l                                       ; $7a8b: $7d
    ld a, d                                       ; $7a8c: $7a
    nop                                           ; $7a8d: $00
    cp $fd                                        ; $7a8e: $fe $fd
    rst $38                                       ; $7a90: $ff
    cp $ff                                        ; $7a91: $fe $ff
    jp $1187                                      ; $7a93: $c3 $87 $11


    nop                                           ; $7a96: $00
    db $eb                                        ; $7a97: $eb
    xor $e8                                       ; $7a98: $ee $e8
    xor l                                         ; $7a9a: $ad
    rst $28                                       ; $7a9b: $ef
    rst $18                                       ; $7a9c: $df
    rst $28                                       ; $7a9d: $ef
    ld l, [hl]                                    ; $7a9e: $6e
    nop                                           ; $7a9f: $00
    rst $18                                       ; $7aa0: $df
    add hl, de                                    ; $7aa1: $19
    ld e, h                                       ; $7aa2: $5c
    push bc                                       ; $7aa3: $c5
    sub e                                         ; $7aa4: $93
    ccf                                           ; $7aa5: $3f
    ld l, a                                       ; $7aa6: $6f
    ld e, a                                       ; $7aa7: $5f
    nop                                           ; $7aa8: $00
    sbc a                                         ; $7aa9: $9f
    scf                                           ; $7aaa: $37
    ld [hl], a                                    ; $7aab: $77
    rst $30                                       ; $7aac: $f7
    rst $28                                       ; $7aad: $ef
    and e                                         ; $7aae: $a3
    ret nz                                        ; $7aaf: $c0

    ld h, a                                       ; $7ab0: $67
    dec b                                         ; $7ab1: $05
    scf                                           ; $7ab2: $37
    cp e                                          ; $7ab3: $bb
    ei                                            ; $7ab4: $fb
    ld [hl], a                                    ; $7ab5: $77
    rst $38                                       ; $7ab6: $ff
    ld bc, $fd08                                  ; $7ab7: $01 $08 $fd
    ld b, $00                                     ; $7aba: $06 $00
    ld b, b                                       ; $7abc: $40
    ei                                            ; $7abd: $fb
    inc l                                         ; $7abe: $2c
    nop                                           ; $7abf: $00
    db $ed                                        ; $7ac0: $ed
    rst $38                                       ; $7ac1: $ff
    ld a, [c]                                     ; $7ac2: $f2
    rst $38                                       ; $7ac3: $ff
    or $f7                                        ; $7ac4: $f6 $f7
    ld b, c                                       ; $7ac6: $41
    rst $30                                       ; $7ac7: $f7
    inc d                                         ; $7ac8: $14
    nop                                           ; $7ac9: $00
    cp $ff                                        ; $7aca: $fe $ff
    ld a, a                                       ; $7acc: $7f
    rst $38                                       ; $7acd: $ff
    or a                                          ; $7ace: $b7
    ld [$0410], sp                                ; $7acf: $08 $10 $04
    ld l, [hl]                                    ; $7ad2: $6e
    dec l                                         ; $7ad3: $2d
    ld l, $fd                                     ; $7ad4: $2e $fd
    cp $02                                        ; $7ad6: $fe $02
    db $10                                        ; $7ad8: $10
    sbc $fd                                       ; $7ad9: $de $fd
    ld b, b                                       ; $7adb: $40
    cp [hl]                                       ; $7adc: $be
    inc b                                         ; $7add: $04
    nop                                           ; $7ade: $00
    adc a                                         ; $7adf: $8f
    ldh a, [$8f]                                  ; $7ae0: $f0 $8f
    ldh a, [rNR51]                                ; $7ae2: $f0 $25
    ret nc                                        ; $7ae4: $d0

    sub c                                         ; $7ae5: $91
    inc b                                         ; $7ae6: $04
    ld [$a0da], sp                                ; $7ae7: $08 $da $a0
    inc b                                         ; $7aea: $04
    ld [$00f0], sp                                ; $7aeb: $08 $f0 $00
    ld e, d                                       ; $7aee: $5a
    inc b                                         ; $7aef: $04
    nop                                           ; $7af0: $00
    add d                                         ; $7af1: $82
    ld [bc], a                                    ; $7af2: $02
    jr c, jr_0c5_7b6f                             ; $7af3: $38 $7a

    cp a                                          ; $7af5: $bf
    ld a, l                                       ; $7af6: $7d
    cp a                                          ; $7af7: $bf
    ld a, a                                       ; $7af8: $7f
    ld [bc], a                                    ; $7af9: $02

jr_0c5_7afa:
    nop                                           ; $7afa: $00
    ld a, b                                       ; $7afb: $78
    nop                                           ; $7afc: $00
    cp b                                          ; $7afd: $b8
    nop                                           ; $7afe: $00
    ld hl, sp-$01                                 ; $7aff: $f8 $ff
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    rst $38                                       ; $7b03: $ff
    rst $28                                       ; $7b04: $ef
    and c                                         ; $7b05: $a1
    ld c, b                                       ; $7b06: $48
    nop                                           ; $7b07: $00
    rst $28                                       ; $7b08: $ef
    ld h, [hl]                                    ; $7b09: $66
    nop                                           ; $7b0a: $00
    rra                                           ; $7b0b: $1f
    rra                                           ; $7b0c: $1f
    nop                                           ; $7b0d: $00
    rra                                           ; $7b0e: $1f
    db $10                                        ; $7b0f: $10
    ld [$8f00], sp                                ; $7b10: $08 $00 $8f
    rst $08                                       ; $7b13: $cf
    ld l, a                                       ; $7b14: $6f
    rst $18                                       ; $7b15: $df
    cp a                                          ; $7b16: $bf

jr_0c5_7b17:
    rst $18                                       ; $7b17: $df
    rra                                           ; $7b18: $1f
    cp a                                          ; $7b19: $bf
    dec c                                         ; $7b1a: $0d
    rst $28                                       ; $7b1b: $ef
    cp a                                          ; $7b1c: $bf
    nop                                           ; $7b1d: $00
    rst $38                                       ; $7b1e: $ff
    jr nz, jr_0c5_7b29                            ; $7b1f: $20 $08

    ld a, d                                       ; $7b21: $7a
    ld [$7af7], sp                                ; $7b22: $08 $f7 $7a
    nop                                           ; $7b25: $00
    cpl                                           ; $7b26: $2f
    cp e                                          ; $7b27: $bb
    rst $38                                       ; $7b28: $ff

jr_0c5_7b29:
    db $10                                        ; $7b29: $10
    jr jr_0c5_7b17                                ; $7b2a: $18 $eb

    sub d                                         ; $7b2c: $92
    nop                                           ; $7b2d: $00
    jr nc, jr_0c5_7b38                            ; $7b2e: $30 $08

    dec e                                         ; $7b30: $1d
    nop                                           ; $7b31: $00
    jr nz, @+$22                                  ; $7b32: $20 $20

    ld e, b                                       ; $7b34: $58
    cp a                                          ; $7b35: $bf
    and h                                         ; $7b36: $a4
    db $10                                        ; $7b37: $10

jr_0c5_7b38:
    ldh a, [$65]                                  ; $7b38: $f0 $65
    nop                                           ; $7b3a: $00
    ld d, b                                       ; $7b3b: $50
    ld [$fdb6], sp                                ; $7b3c: $08 $b6 $fd
    xor $21                                       ; $7b3f: $ee $21
    db $fd                                        ; $7b41: $fd
    or $92                                        ; $7b42: $f6 $92
    nop                                           ; $7b44: $00
    ld a, $3d                                     ; $7b45: $3e $3d

jr_0c5_7b47:
    nop                                           ; $7b47: $00
    ccf                                           ; $7b48: $3f
    ld h, b                                       ; $7b49: $60
    ld [$7003], sp                                ; $7b4a: $08 $03 $70
    add b                                         ; $7b4d: $80
    jp c, Jump_0c5_70a0                           ; $7b4e: $da $a0 $70

    add b                                         ; $7b51: $80
    ld [bc], a                                    ; $7b52: $02
    jr c, @-$72                                   ; $7b53: $38 $8c

    ld c, b                                       ; $7b55: $48
    cp b                                          ; $7b56: $b8
    sbc h                                         ; $7b57: $9c
    ld [$390f], sp                                ; $7b58: $08 $0f $39
    ld [$4010], sp                                ; $7b5b: $08 $10 $40
    ld [hl+], a                                   ; $7b5e: $22
    ld e, b                                       ; $7b5f: $58
    ld e, d                                       ; $7b60: $5a
    and b                                         ; $7b61: $a0
    db $fd                                        ; $7b62: $fd
    inc b                                         ; $7b63: $04
    ld b, $f2                                     ; $7b64: $06 $f2
    dec c                                         ; $7b66: $0d
    ld sp, hl                                     ; $7b67: $f9
    ld c, $04                                     ; $7b68: $0e $04
    ld [$0dfa], sp                                ; $7b6a: $08 $fa $0d
    nop                                           ; $7b6d: $00
    push hl                                       ; $7b6e: $e5

jr_0c5_7b6f:
    ld a, [de]                                    ; $7b6f: $1a
    ld a, [c]                                     ; $7b70: $f2
    dec e                                         ; $7b71: $1d
    ld d, l                                       ; $7b72: $55
    xor d                                         ; $7b73: $aa
    xor d                                         ; $7b74: $aa
    ld d, l                                       ; $7b75: $55
    add h                                         ; $7b76: $84
    inc b                                         ; $7b77: $04
    ld c, b                                       ; $7b78: $48
    ld e, a                                       ; $7b79: $5f
    and b                                         ; $7b7a: $a0
    sbc a                                         ; $7b7b: $9f
    ld h, b                                       ; $7b7c: $60
    inc b                                         ; $7b7d: $04
    jr z, jr_0c5_7bbf                             ; $7b7e: $28 $3f

    ret nz                                        ; $7b80: $c0

    nop                                           ; $7b81: $00
    cp a                                          ; $7b82: $bf
    ld b, b                                       ; $7b83: $40
    rst $38                                       ; $7b84: $ff
    nop                                           ; $7b85: $00
    cp $01                                        ; $7b86: $fe $01
    rst $38                                       ; $7b88: $ff
    ld bc, $0480                                  ; $7b89: $01 $80 $04
    ld [$01ff], sp                                ; $7b8c: $08 $ff $01
    db $fc                                        ; $7b8f: $fc
    inc bc                                        ; $7b90: $03
    cp $03                                        ; $7b91: $fe $03
    sub l                                         ; $7b93: $95
    inc b                                         ; $7b94: $04
    ld [$d52a], a                                 ; $7b95: $ea $2a $d5
    ld d, l                                       ; $7b98: $55
    xor d                                         ; $7b99: $aa
    inc b                                         ; $7b9a: $04
    jr z, jr_0c5_7b47                             ; $7b9b: $28 $aa

    ld d, l                                       ; $7b9d: $55
    ld [bc], a                                    ; $7b9e: $02
    ld d, e                                       ; $7b9f: $53
    xor h                                         ; $7ba0: $ac
    and a                                         ; $7ba1: $a7
    ld e, b                                       ; $7ba2: $58
    ld d, a                                       ; $7ba3: $57
    xor b                                         ; $7ba4: $a8
    inc b                                         ; $7ba5: $04

jr_0c5_7ba6:
    jr jr_0c5_7bfd                                ; $7ba6: $18 $55

    pop hl                                        ; $7ba8: $e1
    ld [$d700], sp                                ; $7ba9: $08 $00 $d7

jr_0c5_7bac:
    nop                                           ; $7bac: $00
    ld [bc], a                                    ; $7bad: $02
    ld d, b                                       ; $7bae: $50
    push hl                                       ; $7baf: $e5
    ld a, [hl-]                                   ; $7bb0: $3a
    jp z, Jump_000_0435                           ; $7bb1: $ca $35 $04

jr_0c5_7bb4:
    jr @+$12                                      ; $7bb4: $18 $10

    ld [$c535], a                                 ; $7bb6: $ea $35 $c5
    inc b                                         ; $7bb9: $04
    nop                                           ; $7bba: $00
    ld d, h                                       ; $7bbb: $54
    xor e                                         ; $7bbc: $ab
    xor d                                         ; $7bbd: $aa
    ld d, l                                       ; $7bbe: $55

jr_0c5_7bbf:
    sbc b                                         ; $7bbf: $98
    inc b                                         ; $7bc0: $04

jr_0c5_7bc1:
    ld c, b                                       ; $7bc1: $48
    ld a, a                                       ; $7bc2: $7f
    add b                                         ; $7bc3: $80
    ld [hl-], a                                   ; $7bc4: $32
    jr c, jr_0c5_7bea                             ; $7bc5: $38 $23

    ld bc, $2700                                  ; $7bc7: $01 $00 $27
    jr jr_0c5_7bd4                                ; $7bca: $18 $08

    jp nc, Jump_000_0a3d                          ; $7bcc: $d2 $3d $0a

    rst $38                                       ; $7bcf: $ff
    add h                                         ; $7bd0: $84
    jr c, @+$01                                   ; $7bd1: $38 $ff

    nop                                           ; $7bd3: $00

jr_0c5_7bd4:
    xor d                                         ; $7bd4: $aa
    jr nc, jr_0c5_7c2c                            ; $7bd5: $30 $55

    sub $1d                                       ; $7bd7: $d6 $1d
    add hl, bc                                    ; $7bd9: $09
    ld e, b                                       ; $7bda: $58
    jr nz, jr_0c5_7bfd                            ; $7bdb: $20 $20

    ret nz                                        ; $7bdd: $c0

    rra                                           ; $7bde: $1f
    ldh [$08], a                                  ; $7bdf: $e0 $08
    ret nz                                        ; $7be1: $c0

    rst $38                                       ; $7be2: $ff
    ld a, [hl+]                                   ; $7be3: $2a
    push de                                       ; $7be4: $d5
    adc b                                         ; $7be5: $88
    ld [$ea95], sp                                ; $7be6: $08 $95 $ea
    xor d                                         ; $7be9: $aa

jr_0c5_7bea:
    jr nz, jr_0c5_7bc1                            ; $7bea: $20 $d5

    nop                                           ; $7bec: $00
    sub h                                         ; $7bed: $94
    nop                                           ; $7bee: $00
    ld bc, $a9ff                                  ; $7bef: $01 $ff $a9
    ld d, [hl]                                    ; $7bf2: $56
    ld d, l                                       ; $7bf3: $55
    ld b, c                                       ; $7bf4: $41
    xor d                                         ; $7bf5: $aa
    inc b                                         ; $7bf6: $04
    jr jr_0c5_7c78                                ; $7bf7: $18 $7f

jr_0c5_7bf9:
    add b                                         ; $7bf9: $80
    ld a, [hl+]                                   ; $7bfa: $2a
    push de                                       ; $7bfb: $d5

jr_0c5_7bfc:
    ld e, d                                       ; $7bfc: $5a

jr_0c5_7bfd:
    jr nc, jr_0c5_7c3f                            ; $7bfd: $30 $40

    inc bc                                        ; $7bff: $03
    db $f4                                        ; $7c00: $f4
    ld [$5ca3], sp                                ; $7c01: $08 $a3 $5c
    ret c                                         ; $7c04: $d8

    rst $38                                       ; $7c05: $ff
    db $f4                                        ; $7c06: $f4
    jr c, jr_0c5_7bac                             ; $7c07: $38 $a3

    ld bc, $a6c0                                  ; $7c09: $01 $c0 $a6
    ld bc, $38f4                                  ; $7c0c: $01 $f4 $38
    ld b, a                                       ; $7c0f: $47
    jr c, jr_0c5_7bb4                             ; $7c10: $38 $a2

    ld a, l                                       ; $7c12: $7d
    ld a, [hl+]                                   ; $7c13: $2a
    rst $38                                       ; $7c14: $ff
    jr nc, @-$3f                                  ; $7c15: $30 $bf

    ld b, b                                       ; $7c17: $40
    db $ec                                        ; $7c18: $ec
    ld [$08f0], sp                                ; $7c19: $08 $f0 $08
    db $fc                                        ; $7c1c: $fc
    inc bc                                        ; $7c1d: $03
    xor d                                         ; $7c1e: $aa
    ld d, l                                       ; $7c1f: $55
    jr nz, jr_0c5_7bf9                            ; $7c20: $20 $d7

    rst $38                                       ; $7c22: $ff
    db $f4                                        ; $7c23: $f4
    jr c, jr_0c5_7ba6                             ; $7c24: $38 $80

    nop                                           ; $7c26: $00
    ld a, a                                       ; $7c27: $7f
    add b                                         ; $7c28: $80
    nop                                           ; $7c29: $00
    sbc $70                                       ; $7c2a: $de $70

jr_0c5_7c2c:
    nop                                           ; $7c2c: $00
    db $f4                                        ; $7c2d: $f4
    jr z, jr_0c5_7c31                             ; $7c2e: $28 $01

    db $10                                        ; $7c30: $10

Jump_0c5_7c31:
jr_0c5_7c31:
    ld bc, $0840                                  ; $7c31: $01 $40 $08
    ret z                                         ; $7c34: $c8

    jr z, @+$32                                   ; $7c35: $28 $30

    add hl, bc                                    ; $7c37: $09
    ld c, a                                       ; $7c38: $4f
    sub h                                         ; $7c39: $94
    inc [hl]                                      ; $7c3a: $34
    ld bc, $e01f                                  ; $7c3b: $01 $1f $e0
    sbc d                                         ; $7c3e: $9a

jr_0c5_7c3f:
    ld [$3a80], sp                                ; $7c3f: $08 $80 $3a
    ld b, b                                       ; $7c42: $40
    ld [bc], a                                    ; $7c43: $02
    ld bc, $fd08                                  ; $7c44: $01 $08 $fd
    inc bc                                        ; $7c47: $03
    inc bc                                        ; $7c48: $03
    rst $38                                       ; $7c49: $ff
    inc l                                         ; $7c4a: $2c
    add hl, sp                                    ; $7c4b: $39
    ccf                                           ; $7c4c: $3f
    ret nz                                        ; $7c4d: $c0

    dec d                                         ; $7c4e: $15
    nop                                           ; $7c4f: $00
    ld [$ffd5], a                                 ; $7c50: $ea $d5 $ff
    ld d, e                                       ; $7c53: $53
    xor h                                         ; $7c54: $ac
    xor e                                         ; $7c55: $ab
    ld d, h                                       ; $7c56: $54
    ld d, d                                       ; $7c57: $52
    add b                                         ; $7c58: $80
    inc b                                         ; $7c59: $04
    nop                                           ; $7c5a: $00
    ld d, e                                       ; $7c5b: $53
    xor h                                         ; $7c5c: $ac
    ld a, [$5104]                                 ; $7c5d: $fa $04 $51
    xor [hl]                                      ; $7c60: $ae
    xor b                                         ; $7c61: $a8
    ldh a, [$da]                                  ; $7c62: $f0 $da
    ld b, b                                       ; $7c64: $40
    sbc d                                         ; $7c65: $9a
    jr jr_0c5_7bfc                                ; $7c66: $18 $94

    add hl, bc                                    ; $7c68: $09
    sbc b                                         ; $7c69: $98
    add hl, bc                                    ; $7c6a: $09
    push af                                       ; $7c6b: $f5
    ld a, [de]                                    ; $7c6c: $1a
    inc hl                                        ; $7c6d: $23
    inc e                                         ; $7c6e: $1c
    inc e                                         ; $7c6f: $1c
    ret nc                                        ; $7c70: $d0

    ccf                                           ; $7c71: $3f
    dec sp                                        ; $7c72: $3b
    ld b, b                                       ; $7c73: $40
    nop                                           ; $7c74: $00
    and b                                         ; $7c75: $a0
    add hl, hl                                    ; $7c76: $29
    ld e, [hl]                                    ; $7c77: $5e

jr_0c5_7c78:
    ld a, [bc]                                    ; $7c78: $0a
    ld d, [hl]                                    ; $7c79: $56
    rst $38                                       ; $7c7a: $ff
    and [hl]                                      ; $7c7b: $a6
    sub h                                         ; $7c7c: $94
    add hl, bc                                    ; $7c7d: $09
    cpl                                           ; $7c7e: $2f
    xor h                                         ; $7c7f: $ac
    db $10                                        ; $7c80: $10
    and b                                         ; $7c81: $a0
    ld b, b                                       ; $7c82: $40
    ld [hl], b                                    ; $7c83: $70
    ld [$5860], sp                                ; $7c84: $08 $60 $58
    or l                                          ; $7c87: $b5
    ld b, b                                       ; $7c88: $40
    rst $38                                       ; $7c89: $ff
    ld h, b                                       ; $7c8a: $60
    add hl, sp                                    ; $7c8b: $39
    cp $01                                        ; $7c8c: $fe $01
    ld d, h                                       ; $7c8e: $54
    xor e                                         ; $7c8f: $ab
    xor l                                         ; $7c90: $ad
    rst $38                                       ; $7c91: $ff
    rlca                                          ; $7c92: $07
    ld d, l                                       ; $7c93: $55
    ld [$75ca], a                                 ; $7c94: $ea $ca $75
    dec d                                         ; $7c97: $15
    jr z, jr_0c5_7c9b                             ; $7c98: $28 $01

    inc b                                         ; $7c9a: $04

jr_0c5_7c9b:
    ld [$09bc], sp                                ; $7c9b: $08 $bc $09

jr_0c5_7c9e:
    dec c                                         ; $7c9e: $0d
    ld d, h                                       ; $7c9f: $54
    xor e                                         ; $7ca0: $ab
    xor b                                         ; $7ca1: $a8
    ld d, a                                       ; $7ca2: $57
    inc l                                         ; $7ca3: $2c
    add hl, hl                                    ; $7ca4: $29
    db $fc                                        ; $7ca5: $fc
    ld bc, $8054                                  ; $7ca6: $01 $54 $80
    ld c, c                                       ; $7ca9: $49
    add e                                         ; $7caa: $83
    cp h                                          ; $7cab: $bc
    add hl, bc                                    ; $7cac: $09
    push af                                       ; $7cad: $f5
    ld c, $fc                                     ; $7cae: $0e $fc
    rlca                                          ; $7cb0: $07
    pop af                                        ; $7cb1: $f1
    inc e                                         ; $7cb2: $1c
    ld [bc], a                                    ; $7cb3: $02
    inc b                                         ; $7cb4: $04
    ld [$2884], sp                                ; $7cb5: $08 $84 $28
    ld a, [bc]                                    ; $7cb8: $0a
    ld b, a                                       ; $7cb9: $47
    cp b                                          ; $7cba: $b8
    adc a                                         ; $7cbb: $8f
    ld [hl], b                                    ; $7cbc: $70
    inc d                                         ; $7cbd: $14
    ld a, [hl-]                                   ; $7cbe: $3a
    sub a                                         ; $7cbf: $97
    ld h, b                                       ; $7cc0: $60
    sub b                                         ; $7cc1: $90
    ld d, b                                       ; $7cc2: $50
    ld [$6a95], sp                                ; $7cc3: $08 $95 $6a
    inc b                                         ; $7cc6: $04
    jr jr_0c5_7c9e                                ; $7cc7: $18 $d5

    ld l, d                                       ; $7cc9: $6a
    adc d                                         ; $7cca: $8a
    ld [hl], l                                    ; $7ccb: $75
    sbc b                                         ; $7ccc: $98
    ld b, b                                       ; $7ccd: $40
    ld e, b                                       ; $7cce: $58
    cp a                                          ; $7ccf: $bf
    nop                                           ; $7cd0: $00
    inc e                                         ; $7cd1: $1c
    ld a, [bc]                                    ; $7cd2: $0a
    add h                                         ; $7cd3: $84
    ld c, c                                       ; $7cd4: $49
    ld d, e                                       ; $7cd5: $53
    xor h                                         ; $7cd6: $ac
    xor d                                         ; $7cd7: $aa
    nop                                           ; $7cd8: $00
    ld d, h                                       ; $7cd9: $54
    di                                            ; $7cda: $f3
    inc c                                         ; $7cdb: $0c
    and c                                         ; $7cdc: $a1
    ld e, [hl]                                    ; $7cdd: $5e
    xor b                                         ; $7cde: $a8
    rst $38                                       ; $7cdf: $ff
    db $f4                                        ; $7ce0: $f4
    rlca                                          ; $7ce1: $07
    rrca                                          ; $7ce2: $0f
    ld sp, hl                                     ; $7ce3: $f9
    ld b, $fc                                     ; $7ce4: $06 $fc
    rlca                                          ; $7ce6: $07
    xor $30                                       ; $7ce7: $ee $30
    add h                                         ; $7ce9: $84
    ld hl, $1a8c                                  ; $7cea: $21 $8c $1a
    nop                                           ; $7ced: $00
    add sp, $1f                                   ; $7cee: $e8 $1f
    ld a, [bc]                                    ; $7cf0: $0a
    rst $38                                       ; $7cf1: $ff
    and a                                         ; $7cf2: $a7
    ld e, b                                       ; $7cf3: $58
    ld c, a                                       ; $7cf4: $4f
    or b                                          ; $7cf5: $b0
    ld [hl], $af                                  ; $7cf6: $36 $af
    ld d, b                                       ; $7cf8: $50
    sub b                                         ; $7cf9: $90
    ld a, [bc]                                    ; $7cfa: $0a
    db $f4                                        ; $7cfb: $f4
    add hl, bc                                    ; $7cfc: $09
    or l                                          ; $7cfd: $b5
    db $f4                                        ; $7cfe: $f4
    ld hl, $0874                                  ; $7cff: $21 $74 $08
    rst $18                                       ; $7d02: $df
    ld bc, $8f20                                  ; $7d03: $01 $20 $8f
    ld [hl], b                                    ; $7d06: $70
    ld b, b                                       ; $7d07: $40
    rst $38                                       ; $7d08: $ff
    and b                                         ; $7d09: $a0
    ld a, a                                       ; $7d0a: $7f
    ld b, b                                       ; $7d0b: $40
    ld a, [bc]                                    ; $7d0c: $0a
    or b                                          ; $7d0d: $b0
    ld b, b                                       ; $7d0e: $40
    jr c, jr_0c5_7d11                             ; $7d0f: $38 $00

jr_0c5_7d11:
    inc e                                         ; $7d11: $1c
    ld de, $0884                                  ; $7d12: $11 $84 $08
    rst $18                                       ; $7d15: $df
    ld h, b                                       ; $7d16: $60
    ld c, d                                       ; $7d17: $4a
    push af                                       ; $7d18: $f5
    ld b, e                                       ; $7d19: $43
    ld d, l                                       ; $7d1a: $55
    ld a, [de]                                    ; $7d1b: $1a
    ld bc, $807f                                  ; $7d1c: $01 $7f $80
    ld a, a                                       ; $7d1f: $7f
    add b                                         ; $7d20: $80
    ld h, b                                       ; $7d21: $60
    ld a, [bc]                                    ; $7d22: $0a
    call nz, Call_000_0e09                        ; $7d23: $c4 $09 $0e
    ld l, d                                       ; $7d26: $6a
    rst $38                                       ; $7d27: $ff
    db $fd                                        ; $7d28: $fd
    inc bc                                        ; $7d29: $03
    or [hl]                                       ; $7d2a: $b6
    ld [de], a                                    ; $7d2b: $12
    ld d, [hl]                                    ; $7d2c: $56
    ld [de], a                                    ; $7d2d: $12
    call nz, $ff39                                ; $7d2e: $c4 $39 $ff
    dec a                                         ; $7d31: $3d
    nop                                           ; $7d32: $00
    db $fd                                        ; $7d33: $fd
    and d                                         ; $7d34: $a2
    ld [bc], a                                    ; $7d35: $02
    call nz, $7439                                ; $7d36: $c4 $39 $74
    ld [$2804], sp                                ; $7d39: $08 $04 $28
    ld d, a                                       ; $7d3c: $57
    db $fc                                        ; $7d3d: $fc
    ld [bc], a                                    ; $7d3e: $02
    rla                                           ; $7d3f: $17
    push hl                                       ; $7d40: $e5
    ld a, [hl-]                                   ; $7d41: $3a
    adc d                                         ; $7d42: $8a
    ret c                                         ; $7d43: $d8

    db $10                                        ; $7d44: $10
    push de                                       ; $7d45: $d5
    db $e4                                        ; $7d46: $e4
    jr nz, jr_0c5_7d9d                            ; $7d47: $20 $54

    ld [$2804], sp                                ; $7d49: $08 $04 $28
    ld a, l                                       ; $7d4c: $7d
    ld e, a                                       ; $7d4d: $5f
    ld h, b                                       ; $7d4e: $60
    nop                                           ; $7d4f: $00
    inc c                                         ; $7d50: $0c
    dec de                                        ; $7d51: $1b
    db $10                                        ; $7d52: $10
    dec de                                        ; $7d53: $1b
    ld a, [de]                                    ; $7d54: $1a
    dec bc                                        ; $7d55: $0b
    or b                                          ; $7d56: $b0
    ld a, [bc]                                    ; $7d57: $0a
    ld a, [hl-]                                   ; $7d58: $3a
    or b                                          ; $7d59: $b0
    ld h, d                                       ; $7d5a: $62
    ld d, d                                       ; $7d5b: $52
    xor l                                         ; $7d5c: $ad
    or b                                          ; $7d5d: $b0
    ld b, d                                       ; $7d5e: $42
    ret nc                                        ; $7d5f: $d0

    cp h                                          ; $7d60: $bc
    nop                                           ; $7d61: $00
    ld h, b                                       ; $7d62: $60
    rst $38                                       ; $7d63: $ff
    inc b                                         ; $7d64: $04
    dec sp                                        ; $7d65: $3b
    sbc a                                         ; $7d66: $9f
    cp d                                          ; $7d67: $ba
    xor h                                         ; $7d68: $ac
    nop                                           ; $7d69: $00
    db $eb                                        ; $7d6a: $eb
    add $01                                       ; $7d6b: $c6 $01
    ld [hl], b                                    ; $7d6d: $70
    ld a, [hl+]                                   ; $7d6e: $2a
    ldh [$0a], a                                  ; $7d6f: $e0 $0a
    ld d, l                                       ; $7d71: $55
    ldh [rSCY], a                                 ; $7d72: $e0 $42
    ld b, b                                       ; $7d74: $40
    ld c, $80                                     ; $7d75: $0e $80
    ccf                                           ; $7d77: $3f
    ret nz                                        ; $7d78: $c0

    add b                                         ; $7d79: $80
    ldh [rSCY], a                                 ; $7d7a: $e0 $42
    ld b, [hl]                                    ; $7d7c: $46
    ld a, [de]                                    ; $7d7d: $1a
    jr nc, jr_0c5_7dcb                            ; $7d7e: $30 $4b

    ld a, [hl+]                                   ; $7d80: $2a
    ld a, h                                       ; $7d81: $7c
    push de                                       ; $7d82: $d5
    inc e                                         ; $7d83: $1c
    add hl, hl                                    ; $7d84: $29
    ld l, h                                       ; $7d85: $6c
    dec bc                                        ; $7d86: $0b
    or b                                          ; $7d87: $b0
    ld a, [bc]                                    ; $7d88: $0a
    ld [hl], b                                    ; $7d89: $70
    ld c, b                                       ; $7d8a: $48
    jr nc, jr_0c5_7de7                            ; $7d8b: $30 $5a

    xor d                                         ; $7d8d: $aa
    rst $38                                       ; $7d8e: $ff
    rst $08                                       ; $7d8f: $cf
    ret nc                                        ; $7d90: $d0

    dec bc                                        ; $7d91: $0b
    ret c                                         ; $7d92: $d8

    ld [$e01f], sp                                ; $7d93: $08 $1f $e0
    jr nc, @+$1c                                  ; $7d96: $30 $1a

    and b                                         ; $7d98: $a0
    dec sp                                        ; $7d99: $3b
    jp z, $cc1a                                   ; $7d9a: $ca $1a $cc

jr_0c5_7d9d:
    add hl, sp                                    ; $7d9d: $39
    inc b                                         ; $7d9e: $04
    rra                                           ; $7d9f: $1f
    ldh [$95], a                                  ; $7da0: $e0 $95
    ld [$7055], a                                 ; $7da2: $ea $55 $70
    ld b, d                                       ; $7da5: $42
    cp $01                                        ; $7da6: $fe $01
    ld h, l                                       ; $7da8: $65
    ld d, l                                       ; $7da9: $55
    adc e                                         ; $7daa: $8b
    ld bc, $28f8                                  ; $7dab: $01 $f8 $28
    ld a, a                                       ; $7dae: $7f
    add b                                         ; $7daf: $80
    sbc d                                         ; $7db0: $9a
    ld [$e000], sp                                ; $7db1: $08 $00 $e0
    ld h, d                                       ; $7db4: $62
    sub $84                                       ; $7db5: $d6 $84
    add hl, bc                                    ; $7db7: $09
    ldh [rWY], a                                  ; $7db8: $e0 $4a
    xor d                                         ; $7dba: $aa
    add b                                         ; $7dbb: $80
    ld h, d                                       ; $7dbc: $62
    xor d                                         ; $7dbd: $aa
    cp d                                          ; $7dbe: $ba
    inc de                                        ; $7dbf: $13
    ret c                                         ; $7dc0: $d8

    dec bc                                        ; $7dc1: $0b
    rst $38                                       ; $7dc2: $ff
    halt                                          ; $7dc3: $76
    nop                                           ; $7dc4: $00
    ld c, d                                       ; $7dc5: $4a
    dec de                                        ; $7dc6: $1b
    and [hl]                                      ; $7dc7: $a6
    add hl, de                                    ; $7dc8: $19
    ld d, [hl]                                    ; $7dc9: $56
    add hl, hl                                    ; $7dca: $29

jr_0c5_7dcb:
    cp a                                          ; $7dcb: $bf
    ld e, [hl]                                    ; $7dcc: $5e
    inc c                                         ; $7dcd: $0c
    ld h, d                                       ; $7dce: $62
    ld b, h                                       ; $7dcf: $44
    cp $61                                        ; $7dd0: $fe $61
    ld bc, $0bd4                                  ; $7dd2: $01 $d4 $0b
    ld h, b                                       ; $7dd5: $60
    inc a                                         ; $7dd6: $3c
    ld a, [hl+]                                   ; $7dd7: $2a
    push de                                       ; $7dd8: $d5
    db $fd                                        ; $7dd9: $fd
    inc bc                                        ; $7dda: $03
    ld [hl], d                                    ; $7ddb: $72
    ld h, c                                       ; $7ddc: $61
    sbc d                                         ; $7ddd: $9a
    ld h, b                                       ; $7dde: $60
    inc d                                         ; $7ddf: $14
    cp $01                                        ; $7de0: $fe $01
    inc d                                         ; $7de2: $14
    add hl, hl                                    ; $7de3: $29
    sub b                                         ; $7de4: $90
    inc c                                         ; $7de5: $0c
    sbc a                                         ; $7de6: $9f

jr_0c5_7de7:
    ld a, b                                       ; $7de7: $78
    inc bc                                        ; $7de8: $03
    xor d                                         ; $7de9: $aa
    rst $38                                       ; $7dea: $ff
    xor d                                         ; $7deb: $aa
    nop                                           ; $7dec: $00
    ld a, h                                       ; $7ded: $7c
    inc c                                         ; $7dee: $0c
    nop                                           ; $7def: $00
    ld a, [de]                                    ; $7df0: $1a
    ld a, [$0008]                                 ; $7df1: $fa $08 $00
    ld [hl+], a                                   ; $7df4: $22
    cp h                                          ; $7df5: $bc
    inc d                                         ; $7df6: $14
    ld b, h                                       ; $7df7: $44
    add hl, sp                                    ; $7df8: $39
    and b                                         ; $7df9: $a0
    ld a, [hl+]                                   ; $7dfa: $2a
    sbc e                                         ; $7dfb: $9b
    jr nc, @+$5a                                  ; $7dfc: $30 $58

    xor b                                         ; $7dfe: $a8
    ld d, a                                       ; $7dff: $57
    jr nc, @+$2a                                  ; $7e00: $30 $28

    ret nz                                        ; $7e02: $c0

    ld a, [hl+]                                   ; $7e03: $2a
    or l                                          ; $7e04: $b5
    ld d, b                                       ; $7e05: $50
    ld d, b                                       ; $7e06: $50
    call nc, $8009                                ; $7e07: $d4 $09 $80
    ld a, h                                       ; $7e0a: $7c
    db $18                                        ; $7e0b: $18

    db $14, $00, $0d, $00, $0c, $01, $00, $68, $69, $6a, $68, $69, $6b, $6c, $6d, $40
    db $6e, $02, $00, $6f, $70, $71, $72, $73, $74, $00, $75, $76, $77, $78, $79, $7a
    db $78, $7b, $00, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $01, $84, $85, $86, $87
    db $88, $88, $89, $28, $00, $00, $8a, $8b, $8c, $8d, $8e, $8f, $90, $8e, $00, $91
    db $92, $93, $94, $73, $95, $96, $95, $00, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $00, $9f, $a0, $a1, $a2, $9e, $a3, $a4, $a1, $80, $0f, $00, $a5, $a6, $a7, $a8
    db $a9, $aa, $a6, $20, $ab, $ac, $05, $38, $ad, $ae, $af, $b0, $b1, $00, $b2, $b3
    db $af, $b4, $b5, $b6, $b3, $af, $00, $b7, $b8, $b6, $b3, $b9, $ba, $bb, $b6, $00
    db $b3, $bc, $bd, $be, $bf, $c0, $bc, $c1, $10, $c2, $c3, $c4, $0a, $10, $c5, $c6
    db $c7, $bf, $00, $c0, $c8, $c9, $bf, $ca, $cb, $c8, $cc, $00, $cd, $ce, $cf, $d0
    db $d1, $bc, $ca, $cb, $00, $d2, $d3, $d4, $ca, $cb, $c3, $c2, $c1, $00, $d5, $d6
    db $d7, $d8, $d9, $da, $d6, $db, $20, $dc, $dd, $0a, $00, $de, $ca, $d5, $d6, $ce
    db $03, $cd, $cc, $c9, $bf, $be, $df, $2f, $00, $05, $00, $20, $e0, $e1, $0a, $10
    db $e2, $e3, $e4, $e5, $e6, $00, $e7, $e8, $e9, $e5, $e6, $ea, $eb, $ec, $80, $05
    db $00, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $01, $f4, $f5, $f6, $c6, $f7, $f4, $f5
    db $0a, $10, $00, $f1, $f8, $ce, $cd, $f9, $fa, $fb, $fc, $00, $fd, $fe, $ff, $00
    db $01, $02, $fe, $03, $00, $04, $05, $06, $fe, $fa, $07, $08, $09, $21, $0a, $02
    db $01, $00, $06, $02, $06, $04, $01, $10, $01, $05, $05, $05, $03, $03, $00, $00
    db $10, $00, $d4, $15, $08, $0e, $00, $0d, $01, $10, $0b, $01, $00, $0e, $06, $02
    db $06, $06, $0e, $0e, $0e, $0c, $01, $28, $03, $b8, $15, $00, $09, $01, $f8, $23
    db $f8, $45, $e0, $29, $29, $29, $f0, $14, $f8, $89, $f8, $4d, $28, $b3, $90, $02
    db $04, $ff, $7f, $15, $54, $15, $54, $d3, $19, $4e, $1d, $c9, $20, $43, $1c, $4e
    db $6e, $49, $49, $a5, $30, $43, $20, $14, $72, $0d, $4d, $67, $38, $44, $2c, $ef
    db $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $6e
    db $5d, $0b, $45, $a7, $2c, $85, $1c, $ea, $44, $a8, $30, $86, $24, $45, $10

    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    rst $38                                       ; $7f9d: $ff
    ld a, a                                       ; $7f9e: $7f
    dec d                                         ; $7f9f: $15
    ld d, h                                       ; $7fa0: $54
    dec d                                         ; $7fa1: $15
    ld d, h                                       ; $7fa2: $54
    ld h, l                                       ; $7fa3: $65
    ld a, [hl]                                    ; $7fa4: $7e
    add d                                         ; $7fa5: $82
    ld e, l                                       ; $7fa6: $5d
    and c                                         ; $7fa7: $a1
    jr nc, jr_0c5_7fca                            ; $7fa8: $30 $20

    db $10                                        ; $7faa: $10
    dec h                                         ; $7fab: $25
    ld a, a                                       ; $7fac: $7f
    ld [hl+], a                                   ; $7fad: $22
    ld e, [hl]                                    ; $7fae: $5e
    pop hl                                        ; $7faf: $e1
    jr nc, @+$22                                  ; $7fb0: $30 $20

    db $10                                        ; $7fb2: $10
    ld l, l                                       ; $7fb3: $6d
    ld a, [hl]                                    ; $7fb4: $7e
    adc d                                         ; $7fb5: $8a
    ld e, l                                       ; $7fb6: $5d
    and d                                         ; $7fb7: $a2
    jr nc, @+$22                                  ; $7fb8: $30 $20

    db $10                                        ; $7fba: $10
    jr nz, @+$12                                  ; $7fbb: $20 $10

    add hl, sp                                    ; $7fbd: $39
    ld [de], a                                    ; $7fbe: $12
    rlc b                                         ; $7fbf: $cb $00
    ld [bc], a                                    ; $7fc1: $02
    inc b                                         ; $7fc2: $04
    db $fd                                        ; $7fc3: $fd
    ld b, d                                       ; $7fc4: $42
    ld l, $15                                     ; $7fc5: $2e $15
    and [hl]                                      ; $7fc7: $a6
    nop                                           ; $7fc8: $00
    ld [bc], a                                    ; $7fc9: $02

jr_0c5_7fca:
    nop                                           ; $7fca: $00
    ld sp, hl                                     ; $7fcb: $f9
    ld bc, $194f                                  ; $7fcc: $01 $4f $19
    rst $00                                       ; $7fcf: $c7
    inc b                                         ; $7fd0: $04
    ld bc, $7d00                                  ; $7fd1: $01 $00 $7d
    ld [hl+], a                                   ; $7fd4: $22
    ld c, a                                       ; $7fd5: $4f
    add hl, de                                    ; $7fd6: $19
    rst $00                                       ; $7fd7: $c7
    inc b                                         ; $7fd8: $04
    ld bc, $ff00                                  ; $7fd9: $01 $00 $ff
    ld a, a                                       ; $7fdc: $7f
    cp e                                          ; $7fdd: $bb
    ld a, e                                       ; $7fde: $7b
    dec b                                         ; $7fdf: $05
    ld d, c                                       ; $7fe0: $51
    jr nz, @+$3e                                  ; $7fe1: $20 $3c

    rst $38                                       ; $7fe3: $ff
    ld a, a                                       ; $7fe4: $7f
    db $fd                                        ; $7fe5: $fd
    ld d, $b1                                     ; $7fe6: $16 $b1
    add hl, de                                    ; $7fe8: $19
    daa                                           ; $7fe9: $27
    inc c                                         ; $7fea: $0c
    rst $38                                       ; $7feb: $ff
    ld a, a                                       ; $7fec: $7f
    rst $18                                       ; $7fed: $df
    ld e, a                                       ; $7fee: $5f
    add b                                         ; $7fef: $80
    ld c, $00                                     ; $7ff0: $0e $00
    ld bc, $7fff                                  ; $7ff2: $01 $ff $7f
    cp h                                          ; $7ff5: $bc
    ld [hl], a                                    ; $7ff6: $77
    xor d                                         ; $7ff7: $aa
    ld c, $63                                     ; $7ff8: $0e $63
    ld bc, $ffff                                  ; $7ffa: $01 $ff $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
