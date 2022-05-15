; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $095", ROMX[$4000], BANK[$95]

    sub l                                         ; $4000: $95
    and b                                         ; $4001: $a0
    ld a, [de]                                    ; $4002: $1a
    rl d                                          ; $4003: $cb $12
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    xor d                                         ; $400f: $aa
    inc b                                         ; $4010: $04
    push de                                       ; $4011: $d5
    ccf                                           ; $4012: $3f
    ret nz                                        ; $4013: $c0

    cp a                                          ; $4014: $bf
    ret nz                                        ; $4015: $c0

    inc b                                         ; $4016: $04
    db $38, $aa                                   ; $4017: $38 $aa
    ld d, l                                       ; $4019: $55
    jr nc, @+$01                                  ; $401a: $30 $ff

    nop                                           ; $401c: $00
    ld [bc], a                                    ; $401d: $02
    ld c, b                                       ; $401e: $48
    inc e                                         ; $401f: $1c
    ld c, b                                       ; $4020: $48
    and b                                         ; $4021: $a0
    ret nz                                        ; $4022: $c0

    ld b, b                                       ; $4023: $40
    add b                                         ; $4024: $80
    ret nz                                        ; $4025: $c0

    ld e, $48                                     ; $4026: $1e $48
    ld bc, $d508                                  ; $4028: $01 $08 $d5
    rst $38                                       ; $402b: $ff
    ld d, l                                       ; $402c: $55
    xor d                                         ; $402d: $aa
    dec h                                         ; $402e: $25
    ret nc                                        ; $402f: $d0

    dec b                                         ; $4030: $05
    ld d, b                                       ; $4031: $50
    cp b                                          ; $4032: $b8
    scf                                           ; $4033: $37
    ret c                                         ; $4034: $d8

    ld d, a                                       ; $4035: $57
    inc b                                         ; $4036: $04
    db $10                                        ; $4037: $10
    ld d, l                                       ; $4038: $55
    stop                                          ; $4039: $10 $00
    ld [hl], b                                    ; $403b: $70
    ld d, l                                       ; $403c: $55
    ld a, [de]                                    ; $403d: $1a
    nop                                           ; $403e: $00
    ld b, [hl]                                    ; $403f: $46
    jr z, jr_095_405a                             ; $4040: $28 $18

    jr z, jr_095_407b                             ; $4042: $28 $37

    ret c                                         ; $4044: $d8

    ld d, e                                       ; $4045: $53
    cp h                                          ; $4046: $bc
    ret nz                                        ; $4047: $c0

    inc b                                         ; $4048: $04
    ld [$305e], sp                                ; $4049: $08 $5e $30
    ld bc, $01ff                                  ; $404c: $01 $ff $01
    cp $01                                        ; $404f: $fe $01
    rst $38                                       ; $4051: $ff
    ld bc, $a900                                  ; $4052: $01 $00 $a9
    ld d, a                                       ; $4055: $57
    db $fc                                        ; $4056: $fc
    inc bc                                        ; $4057: $03
    db $fd                                        ; $4058: $fd
    inc bc                                        ; $4059: $03

jr_095_405a:
    inc b                                         ; $405a: $04
    jr c, jr_095_405d                             ; $405b: $38 $00

jr_095_405d:
    rst $28                                       ; $405d: $ef
    rst $38                                       ; $405e: $ff
    sbc $ff                                       ; $405f: $de $ff
    push af                                       ; $4061: $f5
    rst $38                                       ; $4062: $ff
    ld [$00ff], a                                 ; $4063: $ea $ff $00
    ret nc                                        ; $4066: $d0

    rst $38                                       ; $4067: $ff
    and h                                         ; $4068: $a4
    rst $38                                       ; $4069: $ff
    add b                                         ; $406a: $80
    rst $38                                       ; $406b: $ff
    jr nz, @+$01                                  ; $406c: $20 $ff

    add b                                         ; $406e: $80
    ld d, b                                       ; $406f: $50
    ld [$106d], sp                                ; $4070: $08 $6d $10
    jr c, jr_095_40e1                             ; $4073: $38 $6c

    xor e                                         ; $4075: $ab
    ld a, h                                       ; $4076: $7c
    cp e                                          ; $4077: $bb
    add b                                         ; $4078: $80
    inc b                                         ; $4079: $04
    db $10                                        ; $407a: $10

jr_095_407b:
    ld d, a                                       ; $407b: $57
    rst $38                                       ; $407c: $ff
    ld d, l                                       ; $407d: $55
    xor e                                         ; $407e: $ab
    ld c, c                                       ; $407f: $49
    rla                                           ; $4080: $17
    dec d                                         ; $4081: $15
    ld [$d93b], sp                                ; $4082: $08 $3b $d9
    scf                                           ; $4085: $37
    push de                                       ; $4086: $d5
    inc b                                         ; $4087: $04
    stop                                          ; $4088: $10 $00
    rst $38                                       ; $408a: $ff
    inc b                                         ; $408b: $04
    nop                                           ; $408c: $00
    ei                                            ; $408d: $fb
    nop                                           ; $408e: $00
    rst $38                                       ; $408f: $ff
    ld de, $24ee                                  ; $4090: $11 $ee $24
    db $db                                        ; $4093: $db
    ld [$f704], sp                                ; $4094: $08 $04 $f7
    ld d, l                                       ; $4097: $55
    xor d                                         ; $4098: $aa
    xor d                                         ; $4099: $aa
    ld d, l                                       ; $409a: $55
    jr z, @+$2a                                   ; $409b: $28 $28

    add hl, hl                                    ; $409d: $29
    ld a, l                                       ; $409e: $7d
    ld [bc], a                                    ; $409f: $02
    cp e                                          ; $40a0: $bb
    rst $28                                       ; $40a1: $ef
    jr z, @+$01                                   ; $40a2: $28 $ff

    cp e                                          ; $40a4: $bb
    ld l, h                                       ; $40a5: $6c
    adc $58                                       ; $40a6: $ce $58
    rst $38                                       ; $40a8: $ff
    ld b, d                                       ; $40a9: $42
    nop                                           ; $40aa: $00
    jr c, jr_095_40d5                             ; $40ab: $38 $28

    reti                                          ; $40ad: $d9


    scf                                           ; $40ae: $37
    sub l                                         ; $40af: $95
    ld a, e                                       ; $40b0: $7b
    inc b                                         ; $40b1: $04
    ld [$0174], sp                                ; $40b2: $08 $74 $01
    adc e                                         ; $40b5: $8b
    db $fd                                        ; $40b6: $fd
    ld [bc], a                                    ; $40b7: $02
    xor $11                                       ; $40b8: $ee $11
    db $dd                                        ; $40ba: $dd
    ld [hl+], a                                   ; $40bb: $22
    or $30                                        ; $40bc: $f6 $30
    add b                                         ; $40be: $80
    ld sp, $df21                                  ; $40bf: $31 $21 $df
    cp $de                                        ; $40c2: $fe $de

jr_095_40c4:
    add sp, -$18                                  ; $40c4: $e8 $e8
    ldh [$f0], a                                  ; $40c6: $e0 $f0
    ld b, b                                       ; $40c8: $40
    ldh [rLCDC], a                                ; $40c9: $e0 $40
    ld bc, $fcf0                                  ; $40cb: $01 $f0 $fc
    ret nz                                        ; $40ce: $c0

    sbc $8c                                       ; $40cf: $de $8c
    cp [hl]                                       ; $40d1: $be
    inc h                                         ; $40d2: $24
    ld e, $3f                                     ; $40d3: $1e $3f

jr_095_40d5:
    ld [bc], a                                    ; $40d5: $02
    nop                                           ; $40d6: $00
    rra                                           ; $40d7: $1f
    inc c                                         ; $40d8: $0c
    ld d, b                                       ; $40d9: $50
    ld bc, $3f3f                                  ; $40da: $01 $3f $3f
    nop                                           ; $40dd: $00
    rra                                           ; $40de: $1f
    rra                                           ; $40df: $1f
    rrca                                          ; $40e0: $0f

jr_095_40e1:
    rra                                           ; $40e1: $1f
    rrca                                          ; $40e2: $0f
    rla                                           ; $40e3: $17
    rrca                                          ; $40e4: $0f
    ld l, a                                       ; $40e5: $6f
    nop                                           ; $40e6: $00
    rra                                           ; $40e7: $1f
    ld a, a                                       ; $40e8: $7f
    rst $38                                       ; $40e9: $ff
    ret nz                                        ; $40ea: $c0

    ldh a, [$9a]                                  ; $40eb: $f0 $9a
    pop af                                        ; $40ed: $f1
    ccf                                           ; $40ee: $3f
    nop                                           ; $40ef: $00
    rst $38                                       ; $40f0: $ff
    ld e, l                                       ; $40f1: $5d
    rst $38                                       ; $40f2: $ff
    and [hl]                                      ; $40f3: $a6
    rst $38                                       ; $40f4: $ff
    ld c, c                                       ; $40f5: $49
    rst $38                                       ; $40f6: $ff
    sub d                                         ; $40f7: $92
    add b                                         ; $40f8: $80
    dec sp                                        ; $40f9: $3b
    ld bc, $1f67                                  ; $40fa: $01 $67 $1f
    ld a, l                                       ; $40fd: $7d
    rst $38                                       ; $40fe: $ff
    cp e                                          ; $40ff: $bb
    db $fc                                        ; $4100: $fc
    call c, $f002                                 ; $4101: $dc $02 $f0
    ldh a, [$80]                                  ; $4104: $f0 $80
    sub e                                         ; $4106: $93
    rrca                                          ; $4107: $0f
    ld a, [c]                                     ; $4108: $f2
    ret nz                                        ; $4109: $c0

    nop                                           ; $410a: $00
    rst $38                                       ; $410b: $ff
    nop                                           ; $410c: $00
    rst $28                                       ; $410d: $ef
    rst $28                                       ; $410e: $ef
    adc a                                         ; $410f: $8f
    adc a                                         ; $4110: $8f
    dec e                                         ; $4111: $1d
    ld e, l                                       ; $4112: $5d
    jr c, jr_095_40c4                             ; $4113: $38 $af

    ld [bc], a                                    ; $4115: $02
    ld a, a                                       ; $4116: $7f
    push de                                       ; $4117: $d5
    rst $38                                       ; $4118: $ff
    adc c                                         ; $4119: $89
    rst $38                                       ; $411a: $ff
    inc b                                         ; $411b: $04
    adc a                                         ; $411c: $8f
    ld de, $00bb                                  ; $411d: $11 $bb $00
    rst $38                                       ; $4120: $ff
    ld l, a                                       ; $4121: $6f
    rst $38                                       ; $4122: $ff
    rst $10                                       ; $4123: $d7
    ld a, a                                       ; $4124: $7f
    ld c, e                                       ; $4125: $4b
    ccf                                           ; $4126: $3f
    inc d                                         ; $4127: $14
    ld bc, $803f                                  ; $4128: $01 $3f $80
    cp a                                          ; $412b: $bf
    nop                                           ; $412c: $00
    rst $38                                       ; $412d: $ff
    ld hl, $71de                                  ; $412e: $21 $de $71
    add hl, bc                                    ; $4131: $09
    nop                                           ; $4132: $00
    ld [hl+], a                                   ; $4133: $22
    db $dd                                        ; $4134: $dd
    ld b, l                                       ; $4135: $45
    cp d                                          ; $4136: $ba
    ld [de], a                                    ; $4137: $12
    db $ed                                        ; $4138: $ed
    ld b, a                                       ; $4139: $47
    cp b                                          ; $413a: $b8
    nop                                           ; $413b: $00
    ld [$50f7], sp                                ; $413c: $08 $f7 $50
    xor a                                         ; $413f: $af
    adc c                                         ; $4140: $89
    halt                                          ; $4141: $76
    ld d, d                                       ; $4142: $52
    xor l                                         ; $4143: $ad
    nop                                           ; $4144: $00
    inc h                                         ; $4145: $24
    db $db                                        ; $4146: $db
    ld l, b                                       ; $4147: $68
    sub a                                         ; $4148: $97
    pop de                                        ; $4149: $d1
    ld l, $aa                                     ; $414a: $2e $aa
    ld d, l                                       ; $414c: $55
    nop                                           ; $414d: $00
    ld de, $42fe                                  ; $414e: $11 $fe $42
    cp [hl]                                       ; $4151: $be
    ld hl, $08df                                  ; $4152: $21 $df $08
    ldh a, [rP1]                                  ; $4155: $f0 $00
    add hl, de                                    ; $4157: $19
    db $ed                                        ; $4158: $ed
    or a                                          ; $4159: $b7
    ld c, [hl]                                    ; $415a: $4e
    ld h, [hl]                                    ; $415b: $66
    push hl                                       ; $415c: $e5
    or [hl]                                       ; $415d: $b6
    ld e, c                                       ; $415e: $59
    nop                                           ; $415f: $00
    ld [bc], a                                    ; $4160: $02
    ccf                                           ; $4161: $3f
    ld b, b                                       ; $4162: $40
    ld a, a                                       ; $4163: $7f
    jr nz, jr_095_41c5                            ; $4164: $20 $5f

    add b                                         ; $4166: $80
    rst $38                                       ; $4167: $ff
    nop                                           ; $4168: $00
    sub b                                         ; $4169: $90
    ld l, a                                       ; $416a: $6f
    ld [hl+], a                                   ; $416b: $22
    db $dd                                        ; $416c: $dd
    ld c, b                                       ; $416d: $48
    or a                                          ; $416e: $b7
    jp nc, $002d                                  ; $416f: $d2 $2d $00

    adc e                                         ; $4172: $8b
    ld [hl], h                                    ; $4173: $74
    ld a, a                                       ; $4174: $7f
    add b                                         ; $4175: $80
    rst $28                                       ; $4176: $ef
    db $10                                        ; $4177: $10
    sbc $21                                       ; $4178: $de $21
    add b                                         ; $417a: $80
    or [hl]                                       ; $417b: $b6
    add hl, de                                    ; $417c: $19
    rst $28                                       ; $417d: $ef
    db $10                                        ; $417e: $10
    rst $30                                       ; $417f: $f7
    ld [$11ee], sp                                ; $4180: $08 $ee $11
    ld a, a                                       ; $4183: $7f

jr_095_4184:
    ldh [$a6], a                                  ; $4184: $e0 $a6
    add hl, bc                                    ; $4186: $09
    ld e, h                                       ; $4187: $5c
    ld bc, $09ca                                  ; $4188: $01 $ca $09
    ld c, l                                       ; $418b: $4d
    adc d                                         ; $418c: $8a
    db $eb                                        ; $418d: $eb
    db $ec                                        ; $418e: $ec
    rst $28                                       ; $418f: $ef
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    daa                                           ; $4192: $27
    jr z, jr_095_4184                             ; $4193: $28 $ef

    ret nz                                        ; $4195: $c0

    rst $28                                       ; $4196: $ef
    nop                                           ; $4197: $00
    adc a                                         ; $4198: $8f
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    ld c, [hl]                                    ; $419b: $4e
    ld h, c                                       ; $419c: $61
    ld h, c                                       ; $419d: $61
    sbc [hl]                                      ; $419e: $9e
    jp z, Jump_095_7535                           ; $419f: $ca $35 $75

    db $10                                        ; $41a2: $10
    adc d                                         ; $41a3: $8a
    db $eb                                        ; $41a4: $eb
    inc d                                         ; $41a5: $14
    add d                                         ; $41a6: $82
    add hl, bc                                    ; $41a7: $09
    db $fd                                        ; $41a8: $fd
    ld bc, $10f9                                  ; $41a9: $01 $f9 $10
    add c                                         ; $41ac: $81
    jr nz, @+$3c                                  ; $41ad: $20 $3a

    cp $fc                                        ; $41af: $fe $fc
    db $fc                                        ; $41b1: $fc
    ld hl, sp-$04                                 ; $41b2: $f8 $fc
    ld hl, sp+$0b                                 ; $41b4: $f8 $0b
    jr jr_095_41b8                                ; $41b6: $18 $00

jr_095_41b8:
    ld sp, hl                                     ; $41b8: $f9
    pop af                                        ; $41b9: $f1
    rst $08                                       ; $41ba: $cf
    adc a                                         ; $41bb: $8f
    ld a, a                                       ; $41bc: $7f
    ld a, a                                       ; $41bd: $7f
    rst $38                                       ; $41be: $ff
    rst $38                                       ; $41bf: $ff
    nop                                           ; $41c0: $00
    rst $30                                       ; $41c1: $f7
    ld a, a                                       ; $41c2: $7f
    cp $fc                                        ; $41c3: $fe $fc

jr_095_41c5:
    rst $30                                       ; $41c5: $f7
    rst $20                                       ; $41c6: $e7
    ccf                                           ; $41c7: $3f
    ccf                                           ; $41c8: $3f
    ldh [rDMA], a                                 ; $41c9: $e0 $46
    ld a, [hl-]                                   ; $41cb: $3a
    ld d, $08                                     ; $41cc: $16 $08
    ld d, h                                       ; $41ce: $54
    ld c, d                                       ; $41cf: $4a
    db $eb                                        ; $41d0: $eb
    ei                                            ; $41d1: $fb
    jp c, $f3f9                                   ; $41d2: $da $f9 $f3

    nop                                           ; $41d5: $00
    ld sp, hl                                     ; $41d6: $f9
    add sp, -$05                                  ; $41d7: $e8 $fb
    ret nc                                        ; $41d9: $d0

    ei                                            ; $41da: $fb
    and d                                         ; $41db: $a2
    ei                                            ; $41dc: $fb
    add d                                         ; $41dd: $82
    nop                                           ; $41de: $00
    ei                                            ; $41df: $fb
    ld [hl+], a                                   ; $41e0: $22
    ei                                            ; $41e1: $fb
    ccf                                           ; $41e2: $3f
    rra                                           ; $41e3: $1f
    or a                                          ; $41e4: $b7
    di                                            ; $41e5: $f3
    ld a, $40                                     ; $41e6: $3e $40
    cp $10                                        ; $41e8: $fe $10
    add hl, sp                                    ; $41ea: $39
    sbc $ff                                       ; $41eb: $de $ff
    db $fd                                        ; $41ed: $fd
    rst $38                                       ; $41ee: $ff
    cp d                                          ; $41ef: $ba
    ld a, a                                       ; $41f0: $7f
    nop                                           ; $41f1: $00
    cp l                                          ; $41f2: $bd
    sbc a                                         ; $41f3: $9f
    xor d                                         ; $41f4: $aa
    rst $38                                       ; $41f5: $ff
    ld b, b                                       ; $41f6: $40
    rst $38                                       ; $41f7: $ff
    ld [bc], a                                    ; $41f8: $02
    db $fc                                        ; $41f9: $fc
    jr nz, jr_095_422d                            ; $41fa: $20 $31

    db $e3                                        ; $41fc: $e3
    ld d, h                                       ; $41fd: $54
    nop                                           ; $41fe: $00
    rst $38                                       ; $41ff: $ff
    xor a                                         ; $4200: $af
    rst $38                                       ; $4201: $ff
    ld a, l                                       ; $4202: $7d
    cp $01                                        ; $4203: $fe $01
    add hl, hl                                    ; $4205: $29
    pop af                                        ; $4206: $f1
    ld c, l                                       ; $4207: $4d
    adc a                                         ; $4208: $8f
    ld c, b                                       ; $4209: $48
    ld a, a                                       ; $420a: $7f
    inc b                                         ; $420b: $04
    cp [hl]                                       ; $420c: $be
    ld bc, $0c00                                  ; $420d: $01 $00 $0c
    di                                            ; $4210: $f3
    ld [$15f7], sp                                ; $4211: $08 $f7 $15
    and $24                                       ; $4214: $e6 $24
    rst $10                                       ; $4216: $d7
    ld c, b                                       ; $4217: $48
    nop                                           ; $4218: $00
    ret nz                                        ; $4219: $c0

    ld bc, $4dba                                  ; $421a: $01 $ba $4d

jr_095_421d:
    ld a, [bc]                                    ; $421d: $0a
    ld bc, $05dc                                  ; $421e: $01 $dc $05
    ld sp, hl                                     ; $4221: $f9
    nop                                           ; $4222: $00
    ld [bc], a                                    ; $4223: $02
    ei                                            ; $4224: $fb
    ld a, [hl+]                                   ; $4225: $2a
    push de                                       ; $4226: $d5
    ld b, l                                       ; $4227: $45
    or [hl]                                       ; $4228: $b6
    ld [de], a                                    ; $4229: $12
    db $ed                                        ; $422a: $ed
    nop                                           ; $422b: $00
    ld c, a                                       ; $422c: $4f

jr_095_422d:
    xor b                                         ; $422d: $a8
    adc b                                         ; $422e: $88
    rra                                           ; $422f: $1f

jr_095_4230:
    ld d, b                                       ; $4230: $50
    ld l, a                                       ; $4231: $6f
    dec c                                         ; $4232: $0d
    add d                                         ; $4233: $82
    jr nz, jr_095_42aa                            ; $4234: $20 $74

    cp b                                          ; $4236: $b8
    db $10                                        ; $4237: $10
    ld sp, $40ff                                  ; $4238: $31 $ff $40
    cp a                                          ; $423b: $bf
    jr nz, jr_095_421d                            ; $423c: $20 $df

    nop                                           ; $423e: $00
    ld l, b                                       ; $423f: $68
    rla                                           ; $4240: $17
    ld l, c                                       ; $4241: $69
    ldh a, [$b7]                                  ; $4242: $f0 $b7
    ld c, b                                       ; $4244: $48
    ld l, d                                       ; $4245: $6a
    sub l                                         ; $4246: $95
    nop                                           ; $4247: $00
    or [hl]                                       ; $4248: $b6
    ld c, c                                       ; $4249: $49
    ld h, h                                       ; $424a: $64
    adc e                                         ; $424b: $8b
    db $ed                                        ; $424c: $ed
    ld [de], a                                    ; $424d: $12
    sbc $11                                       ; $424e: $de $11
    nop                                           ; $4250: $00
    db $dd                                        ; $4251: $dd
    ld [bc], a                                    ; $4252: $02
    cp [hl]                                       ; $4253: $be
    jr nz, @-$45                                  ; $4254: $20 $b9

    add c                                         ; $4256: $81
    and e                                         ; $4257: $a3
    add d                                         ; $4258: $82
    nop                                           ; $4259: $00
    adc $0c                                       ; $425a: $ce $0c
    xor e                                         ; $425c: $ab
    ld b, h                                       ; $425d: $44
    ld e, a                                       ; $425e: $5f
    sub b                                         ; $425f: $90
    xor a                                         ; $4260: $af
    jr nc, jr_095_4296                            ; $4261: $30 $33

    ld e, [hl]                                    ; $4263: $5e
    ld h, c                                       ; $4264: $61
    dec a                                         ; $4265: $3d
    ld [bc], a                                    ; $4266: $02
    ret z                                         ; $4267: $c8

    ld [bc], a                                    ; $4268: $02
    rst $18                                       ; $4269: $df
    nop                                           ; $426a: $00
    db $10                                        ; $426b: $10
    ld sp, $22d6                                  ; $426c: $31 $d6 $22
    ld b, $6d                                     ; $426f: $06 $6d
    sub d                                         ; $4271: $92
    ei                                            ; $4272: $fb
    inc b                                         ; $4273: $04

jr_095_4274:
    rst $38                                       ; $4274: $ff
    ld d, $00                                     ; $4275: $16 $00
    and $1a                                       ; $4277: $e6 $1a
    sbc $40                                       ; $4279: $de $40
    jr nz, @-$66                                  ; $427b: $20 $98

    ld a, [bc]                                    ; $427d: $0a
    dec [hl]                                      ; $427e: $35
    jp c, $bd52                                   ; $427f: $da $52 $bd

    dec [hl]                                      ; $4282: $35
    jp c, Jump_095_5a02                           ; $4283: $da $02 $5a

    cp a                                          ; $4286: $bf
    ccf                                           ; $4287: $3f
    rst $18                                       ; $4288: $df
    ld d, b                                       ; $4289: $50
    xor a                                         ; $428a: $af
    cp $2a                                        ; $428b: $fe $2a
    ld e, a                                       ; $428d: $5f
    jr nz, jr_095_4230                            ; $428e: $20 $a0

    xor d                                         ; $4290: $aa
    dec sp                                        ; $4291: $3b
    inc bc                                        ; $4292: $03
    nop                                           ; $4293: $00
    rst $38                                       ; $4294: $ff
    ld a, [hl+]                                   ; $4295: $2a

jr_095_4296:
    push de                                       ; $4296: $d5

jr_095_4297:
    ld e, d                                       ; $4297: $5a
    ld a, [bc]                                    ; $4298: $0a
    and b                                         ; $4299: $a0
    jr nc, jr_095_4274                            ; $429a: $30 $d8

    rst $10                                       ; $429c: $d7
    ldh [rSC], a                                  ; $429d: $e0 $02
    db $d3                                        ; $429f: $d3
    jr z, jr_095_42a2                             ; $42a0: $28 $00

jr_095_42a2:
    jp c, $bf08                                   ; $42a2: $da $08 $bf

    xor d                                         ; $42a5: $aa
    ld d, l                                       ; $42a6: $55
    xor d                                         ; $42a7: $aa
    ld hl, sp+$02                                 ; $42a8: $f8 $02

jr_095_42aa:
    cp a                                          ; $42aa: $bf

jr_095_42ab:
    jr nz, @+$01                                  ; $42ab: $20 $ff

    nop                                           ; $42ad: $00
    ld h, b                                       ; $42ae: $60
    sbc a                                         ; $42af: $9f
    ld h, b                                       ; $42b0: $60
    rst $38                                       ; $42b1: $ff
    nop                                           ; $42b2: $00
    xor d                                         ; $42b3: $aa
    rst $38                                       ; $42b4: $ff
    ld a, a                                       ; $42b5: $7f
    jr nc, jr_095_4297                            ; $42b6: $30 $df

    and b                                         ; $42b8: $a0
    and h                                         ; $42b9: $a4
    ld [bc], a                                    ; $42ba: $02
    jr jr_095_42be                                ; $42bb: $18 $01

    add b                                         ; $42bd: $80

jr_095_42be:
    nop                                           ; $42be: $00
    rst $38                                       ; $42bf: $ff
    dec b                                         ; $42c0: $05
    inc a                                         ; $42c1: $3c
    rst $38                                       ; $42c2: $ff
    rrca                                          ; $42c3: $0f
    inc [hl]                                      ; $42c4: $34
    db $10                                        ; $42c5: $10
    db $10                                        ; $42c6: $10
    ld [$031e], sp                                ; $42c7: $08 $1e $03
    jr jr_095_42dc                                ; $42ca: $18 $10

    cpl                                           ; $42cc: $2f
    db $10                                        ; $42cd: $10
    jr nz, jr_095_42d3                            ; $42ce: $20 $03

    db $fc                                        ; $42d0: $fc
    ld d, c                                       ; $42d1: $51
    dec bc                                        ; $42d2: $0b

jr_095_42d3:
    ld d, l                                       ; $42d3: $55
    rst $38                                       ; $42d4: $ff
    cp [hl]                                       ; $42d5: $be
    ld a, a                                       ; $42d6: $7f
    or $00                                        ; $42d7: $f6 $00
    ld [$40b7], sp                                ; $42d9: $08 $b7 $40

jr_095_42dc:
    jp nc, $e021                                  ; $42dc: $d2 $21 $e0

    ld e, $ff                                     ; $42df: $1e $ff
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    ld l, a                                       ; $42e3: $6f
    sub b                                         ; $42e4: $90
    ld l, e                                       ; $42e5: $6b
    add b                                         ; $42e6: $80
    ldh [$1f], a                                  ; $42e7: $e0 $1f
    sub b                                         ; $42e9: $90
    db $10                                        ; $42ea: $10
    ld h, b                                       ; $42eb: $60
    ld b, c                                       ; $42ec: $41
    add b                                         ; $42ed: $80
    ret c                                         ; $42ee: $d8

    ld a, [hl+]                                   ; $42ef: $2a
    xor e                                         ; $42f0: $ab
    ld a, h                                       ; $42f1: $7c
    cp d                                          ; $42f2: $ba
    rst $28                                       ; $42f3: $ef
    ld [$ffef], sp                                ; $42f4: $08 $ef $ff
    db $10                                        ; $42f7: $10
    rst $28                                       ; $42f8: $ef
    ld a, [hl]                                    ; $42f9: $7e
    dec de                                        ; $42fa: $1b
    cp $01                                        ; $42fb: $fe $01
    push af                                       ; $42fd: $f5
    ld h, h                                       ; $42fe: $64
    ld a, [bc]                                    ; $42ff: $0a
    add b                                         ; $4300: $80
    jr jr_095_42ab                                ; $4301: $18 $a8

    ld a, [bc]                                    ; $4303: $0a
    ld e, c                                       ; $4304: $59
    or a                                          ; $4305: $b7
    inc b                                         ; $4306: $04
    ld [$fbb5], sp                                ; $4307: $08 $b5 $fb
    nop                                           ; $430a: $00
    ld sp, hl                                     ; $430b: $f9
    rst $30                                       ; $430c: $f7
    dec d                                         ; $430d: $15
    db $eb                                        ; $430e: $eb
    rst $38                                       ; $430f: $ff
    nop                                           ; $4310: $00
    db $db                                        ; $4311: $db
    inc h                                         ; $4312: $24
    nop                                           ; $4313: $00
    cp $01                                        ; $4314: $fe $01
    or h                                          ; $4316: $b4
    ld c, e                                       ; $4317: $4b
    ld l, b                                       ; $4318: $68
    sub a                                         ; $4319: $97
    dec d                                         ; $431a: $15
    ld [$080e], a                                 ; $431b: $ea $0e $08
    rst $30                                       ; $431e: $f7

jr_095_431f:
    xor d                                         ; $431f: $aa
    rst $38                                       ; $4320: $ff
    sub b                                         ; $4321: $90
    jr @-$4a                                      ; $4322: $18 $b4

    dec hl                                        ; $4324: $2b
    db $10                                        ; $4325: $10

jr_095_4326:
    jr z, jr_095_431f                             ; $4326: $28 $f7

    inc b                                         ; $4328: $04
    inc b                                         ; $4329: $04
    rst $38                                       ; $432a: $ff
    inc c                                         ; $432b: $0c
    di                                            ; $432c: $f3
    inc c                                         ; $432d: $0c
    and b                                         ; $432e: $a0
    ld [$57a9], sp                                ; $432f: $08 $a9 $57
    dec b                                         ; $4332: $05
    or l                                          ; $4333: $b5
    dec bc                                        ; $4334: $0b
    add hl, de                                    ; $4335: $19
    scf                                           ; $4336: $37
    rst $10                                       ; $4337: $d7
    jr nc, jr_095_433d                            ; $4338: $30 $03

    sub a                                         ; $433a: $97
    ld c, b                                       ; $433b: $48
    nop                                           ; $433c: $00

jr_095_433d:
    ld [$fbb7], sp                                ; $433d: $08 $b7 $fb
    rst $18                                       ; $4340: $df
    jr nz, jr_095_4326                            ; $4341: $20 $e3

    ld [bc], a                                    ; $4343: $02
    nop                                           ; $4344: $00
    ld a, $c1                                     ; $4345: $3e $c1
    nop                                           ; $4347: $00
    ret nz                                        ; $4348: $c0

    ccf                                           ; $4349: $3f
    rst $38                                       ; $434a: $ff
    nop                                           ; $434b: $00
    add b                                         ; $434c: $80
    ld a, a                                       ; $434d: $7f
    nop                                           ; $434e: $00
    rst $38                                       ; $434f: $ff
    db $10                                        ; $4350: $10
    db $fd                                        ; $4351: $fd
    rst $30                                       ; $4352: $f7
    dec bc                                        ; $4353: $0b
    ret nz                                        ; $4354: $c0

    db $10                                        ; $4355: $10
    db $fd                                        ; $4356: $fd
    inc bc                                        ; $4357: $03
    ld bc, $04ff                                  ; $4358: $01 $ff $04
    ld b, c                                       ; $435b: $41
    rst $38                                       ; $435c: $ff
    pop hl                                        ; $435d: $e1
    rst $38                                       ; $435e: $ff
    dec d                                         ; $435f: $15
    xor b                                         ; $4360: $a8
    nop                                           ; $4361: $00
    dec [hl]                                      ; $4362: $35
    ld [$f900], sp                                ; $4363: $08 $00 $f9
    ld b, $f4                                     ; $4366: $06 $f4
    inc bc                                        ; $4368: $03
    rst $30                                       ; $4369: $f7
    nop                                           ; $436a: $00
    inc bc                                        ; $436b: $03
    db $fc                                        ; $436c: $fc
    nop                                           ; $436d: $00
    add h                                         ; $436e: $84
    inc bc                                        ; $436f: $03
    add $38                                       ; $4370: $c6 $38
    ld hl, sp+$07                                 ; $4372: $f8 $07
    rst $28                                       ; $4374: $ef
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    ld a, a                                       ; $4377: $7f
    add b                                         ; $4378: $80
    ld hl, sp+$05                                 ; $4379: $f8 $05
    ld [hl], $c9                                  ; $437b: $36 $c9
    cp [hl]                                       ; $437d: $be
    ld b, c                                       ; $437e: $41
    nop                                           ; $437f: $00
    xor a                                         ; $4380: $af
    ld d, b                                       ; $4381: $50
    daa                                           ; $4382: $27
    jr @+$1a                                      ; $4383: $18 $18

    rst $20                                       ; $4385: $e7
    db $ed                                        ; $4386: $ed
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    rst $30                                       ; $4389: $f7
    nop                                           ; $438a: $00
    ld bc, $0afe                                  ; $438b: $01 $fe $0a
    rst $38                                       ; $438e: $ff
    ld a, h                                       ; $438f: $7c
    rst $38                                       ; $4390: $ff
    nop                                           ; $4391: $00
    ld a, d                                       ; $4392: $7a
    add h                                         ; $4393: $84
    ld h, $19                                     ; $4394: $26 $19
    dec e                                         ; $4396: $1d
    ld [c], a                                     ; $4397: $e2
    rst $08                                       ; $4398: $cf
    stop                                          ; $4399: $10 $00
    ld a, [$ed00]                                 ; $439b: $fa $00 $ed
    db $10                                        ; $439e: $10
    rst $38                                       ; $439f: $ff
    nop                                           ; $43a0: $00
    rrca                                          ; $43a1: $0f
    ldh a, [rNR10]                                ; $43a2: $f0 $10
    rlca                                          ; $43a4: $07
    ld [$fbc0], sp                                ; $43a5: $08 $c0 $fb
    inc bc                                        ; $43a8: $03
    ld a, $41                                     ; $43a9: $3e $41
    db $fd                                        ; $43ab: $fd
    ld [bc], a                                    ; $43ac: $02

jr_095_43ad:
    ld b, b                                       ; $43ad: $40
    or $dc                                        ; $43ae: $f6 $dc
    inc bc                                        ; $43b0: $03
    cp a                                          ; $43b1: $bf
    nop                                           ; $43b2: $00
    ld a, e                                       ; $43b3: $7b
    add b                                         ; $43b4: $80
    db $db                                        ; $43b5: $db
    inc h                                         ; $43b6: $24
    nop                                           ; $43b7: $00
    ld a, [hl]                                    ; $43b8: $7e
    add c                                         ; $43b9: $81
    cp l                                          ; $43ba: $bd
    ld b, d                                       ; $43bb: $42
    ld d, [hl]                                    ; $43bc: $56
    xor c                                         ; $43bd: $a9
    adc l                                         ; $43be: $8d
    ld [hl], d                                    ; $43bf: $72
    nop                                           ; $43c0: $00
    ld [de], a                                    ; $43c1: $12
    db $ed                                        ; $43c2: $ed
    nop                                           ; $43c3: $00
    rst $38                                       ; $43c4: $ff
    xor d                                         ; $43c5: $aa
    rst $38                                       ; $43c6: $ff
    ld a, d                                       ; $43c7: $7a
    add l                                         ; $43c8: $85
    nop                                           ; $43c9: $00
    push de                                       ; $43ca: $d5
    ld a, [hl+]                                   ; $43cb: $2a
    ld l, e                                       ; $43cc: $6b
    sub h                                         ; $43cd: $94
    call nz, $213b                                ; $43ce: $c4 $3b $21
    sbc $20                                       ; $43d1: $de $20
    ld b, d                                       ; $43d3: $42
    cp l                                          ; $43d4: $bd
    db $10                                        ; $43d5: $10
    ld [$84eb], sp                                ; $43d6: $08 $eb $84
    and [hl]                                      ; $43d9: $a6
    ld b, b                                       ; $43da: $40
    ld c, h                                       ; $43db: $4c
    nop                                           ; $43dc: $00
    sbc b                                         ; $43dd: $98
    db $f4                                        ; $43de: $f4
    dec l                                         ; $43df: $2d
    xor l                                         ; $43e0: $ad
    ld d, c                                       ; $43e1: $51
    ld b, [hl]                                    ; $43e2: $46
    cp e                                          ; $43e3: $bb
    ld [bc], a                                    ; $43e4: $02
    add b                                         ; $43e5: $80
    jr nz, jr_095_43e8                            ; $43e6: $20 $00

jr_095_43e8:
    db $db                                        ; $43e8: $db
    sub d                                         ; $43e9: $92
    sub e                                         ; $43ea: $93
    jp c, $12db                                   ; $43eb: $da $db $12

    db $d3                                        ; $43ee: $d3
    nop                                           ; $43ef: $00
    adc d                                         ; $43f0: $8a
    jr jr_095_43ad                                ; $43f1: $18 $ba

    dec hl                                        ; $43f3: $2b
    or e                                          ; $43f4: $b3
    ld h, d                                       ; $43f5: $62
    cp e                                          ; $43f6: $bb
    rst $38                                       ; $43f7: $ff
    nop                                           ; $43f8: $00
    cp e                                          ; $43f9: $bb
    ldh a, [rIF]                                  ; $43fa: $f0 $0f
    rrca                                          ; $43fc: $0f
    ldh a, [$63]                                  ; $43fd: $f0 $63
    sbc h                                         ; $43ff: $9c
    db $fc                                        ; $4400: $fc
    ld d, c                                       ; $4401: $51
    inc bc                                        ; $4402: $03
    ld d, b                                       ; $4403: $50
    add hl, bc                                    ; $4404: $09
    ld a, a                                       ; $4405: $7f
    jr c, @+$03                                   ; $4406: $38 $01

    ld e, $e1                                     ; $4408: $1e $e1
    ld a, e                                       ; $440a: $7b
    and b                                         ; $440b: $a0
    inc b                                         ; $440c: $04
    nop                                           ; $440d: $00
    add $18                                       ; $440e: $c6 $18
    ld a, b                                       ; $4410: $78
    add a                                         ; $4411: $87
    ldh a, [rIF]                                  ; $4412: $f0 $0f
    ld hl, sp+$07                                 ; $4414: $f8 $07
    nop                                           ; $4416: $00
    xor [hl]                                      ; $4417: $ae
    ld de, $ff00                                  ; $4418: $11 $00 $ff
    cp $01                                        ; $441b: $fe $01
    or $01                                        ; $441d: $f6 $01
    nop                                           ; $441f: $00
    cp d                                          ; $4420: $ba
    dec b                                         ; $4421: $05
    inc bc                                        ; $4422: $03
    db $fc                                        ; $4423: $fc
    db $fd                                        ; $4424: $fd
    ld [bc], a                                    ; $4425: $02
    ld e, b                                       ; $4426: $58
    and a                                         ; $4427: $a7
    nop                                           ; $4428: $00
    inc b                                         ; $4429: $04

jr_095_442a:
    ld hl, sp-$3a                                 ; $442a: $f8 $c6
    ei                                            ; $442c: $fb
    and h                                         ; $442d: $a4
    rst $18                                       ; $442e: $df
    add b                                         ; $442f: $80
    rst $38                                       ; $4430: $ff
    ld b, b                                       ; $4431: $40
    and b                                         ; $4432: $a0
    inc b                                         ; $4433: $04
    jr nc, @-$1f                                  ; $4434: $30 $df

    jr nz, jr_095_443b                            ; $4436: $20 $03

    db $fc                                        ; $4438: $fc
    ld d, l                                       ; $4439: $55

jr_095_443a:
    ld [bc], a                                    ; $443a: $02

jr_095_443b:
    jr nz, @-$54                                  ; $443b: $20 $aa

    ld bc, $0196                                  ; $443d: $01 $96 $01
    add b                                         ; $4440: $80
    add b                                         ; $4441: $80
    ld a, a                                       ; $4442: $7f
    rra                                           ; $4443: $1f
    ldh [rP1], a                                  ; $4444: $e0 $00
    add c                                         ; $4446: $81
    ld a, [hl]                                    ; $4447: $7e
    ld b, d                                       ; $4448: $42
    add c                                         ; $4449: $81
    add c                                         ; $444a: $81
    ld a, [hl]                                    ; $444b: $7e
    db $fd                                        ; $444c: $fd
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    scf                                           ; $444f: $37
    ret nz                                        ; $4450: $c0

    ld e, a                                       ; $4451: $5f
    jr nz, jr_095_4475                            ; $4452: $20 $21

    sbc $ea                                       ; $4454: $de $ea
    ld de, $ec00                                  ; $4456: $11 $00 $ec
    db $10                                        ; $4459: $10
    pop de                                        ; $445a: $d1
    ld l, $7e                                     ; $445b: $2e $7e
    ld bc, $05f8                                  ; $445d: $01 $f8 $05
    nop                                           ; $4460: $00
    ld e, [hl]                                    ; $4461: $5e
    add c                                         ; $4462: $81
    ld a, l                                       ; $4463: $7d
    ld [bc], a                                    ; $4464: $02
    ldh [$1f], a                                  ; $4465: $e0 $1f

jr_095_4467:
    ret c                                         ; $4467: $d8

    jr nz, jr_095_442a                            ; $4468: $20 $c0

    inc a                                         ; $446a: $3c
    ld c, b                                       ; $446b: $48
    ld c, b                                       ; $446c: $48
    ld [$ff8b], sp                                ; $446d: $08 $8b $ff
    and d                                         ; $4470: $a2
    rst $18                                       ; $4471: $df
    add l                                         ; $4472: $85
    rst $38                                       ; $4473: $ff
    ld d, b                                       ; $4474: $50

jr_095_4475:
    xor d                                         ; $4475: $aa
    ld d, h                                       ; $4476: $54
    db $10                                        ; $4477: $10
    add c                                         ; $4478: $81
    inc c                                         ; $4479: $0c
    nop                                           ; $447a: $00
    cp $24                                        ; $447b: $fe $24
    cp a                                          ; $447d: $bf
    dec h                                         ; $447e: $25
    nop                                           ; $447f: $00
    or a                                          ; $4480: $b7
    dec h                                         ; $4481: $25
    or a                                          ; $4482: $b7
    inc hl                                        ; $4483: $23
    sub d                                         ; $4484: $92
    jr nz, jr_095_443a                            ; $4485: $20 $b3

    inc sp                                        ; $4487: $33
    nop                                           ; $4488: $00
    and [hl]                                      ; $4489: $a6
    inc sp                                        ; $448a: $33
    or e                                          ; $448b: $b3
    or a                                          ; $448c: $b7
    ld l, e                                       ; $448d: $6b
    inc h                                         ; $448e: $24
    ld l, [hl]                                    ; $448f: $6e
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    rla                                           ; $4492: $17
    ld bc, $1151                                  ; $4493: $01 $51 $11
    ld e, [hl]                                    ; $4496: $5e
    ld bc, $0061                                  ; $4497: $01 $61 $00
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    ld h, b                                       ; $449c: $60
    ld a, e                                       ; $449d: $7b
    ld h, b                                       ; $449e: $60
    ld a, d                                       ; $449f: $7a
    add l                                         ; $44a0: $85
    rst $10                                       ; $44a1: $d7
    ld [$6900], sp                                ; $44a2: $08 $00 $69
    inc h                                         ; $44a5: $24
    ld c, c                                       ; $44a6: $49
    dec h                                         ; $44a7: $25
    ld l, a                                       ; $44a8: $6f
    inc l                                         ; $44a9: $2c
    call c, Call_000_0023                         ; $44aa: $dc $23 $00
    db $10                                        ; $44ad: $10
    inc bc                                        ; $44ae: $03
    rst $20                                       ; $44af: $e7
    db $e3                                        ; $44b0: $e3
    di                                            ; $44b1: $f3
    nop                                           ; $44b2: $00
    and a                                         ; $44b3: $a7
    inc bc                                        ; $44b4: $03
    ld [bc], a                                    ; $44b5: $02
    inc sp                                        ; $44b6: $33
    or h                                          ; $44b7: $b4
    cp [hl]                                       ; $44b8: $be
    and l                                         ; $44b9: $a5
    and l                                         ; $44ba: $a5
    ld e, d                                       ; $44bb: $5a
    ldh a, [rNR23]                                ; $44bc: $f0 $18
    ld h, h                                       ; $44be: $64
    inc bc                                        ; $44bf: $03
    or a                                          ; $44c0: $b7
    ld l, l                                       ; $44c1: $6d
    or [hl]                                       ; $44c2: $b6
    ld c, b                                       ; $44c3: $48
    cp $03                                        ; $44c4: $fe $03
    ei                                            ; $44c6: $fb
    inc c                                         ; $44c7: $0c
    ld l, c                                       ; $44c8: $69
    dec d                                         ; $44c9: $15
    nop                                           ; $44ca: $00
    sbc $5f                                       ; $44cb: $de $5f
    jr nc, @-$5f                                  ; $44cd: $30 $9f

    ld l, l                                       ; $44cf: $6d
    jr nc, jr_095_4547                            ; $44d0: $30 $75

    inc bc                                        ; $44d2: $03
    nop                                           ; $44d3: $00
    ld c, h                                       ; $44d4: $4c
    add a                                         ; $44d5: $87
    jr jr_095_4467                                ; $44d6: $18 $8f

    ret nc                                        ; $44d8: $d0

    adc a                                         ; $44d9: $8f
    ld c, h                                       ; $44da: $4c
    db $e3                                        ; $44db: $e3
    nop                                           ; $44dc: $00
    dec d                                         ; $44dd: $15
    rst $28                                       ; $44de: $ef
    pop de                                        ; $44df: $d1
    ccf                                           ; $44e0: $3f
    ld b, c                                       ; $44e1: $41
    rst $38                                       ; $44e2: $ff
    dec b                                         ; $44e3: $05
    ei                                            ; $44e4: $fb
    ld h, b                                       ; $44e5: $60
    ld bc, $2004                                  ; $44e6: $01 $04 $20
    cp a                                          ; $44e9: $bf
    ld e, h                                       ; $44ea: $5c
    ld a, b                                       ; $44eb: $78
    add a                                         ; $44ec: $87
    ld [bc], a                                    ; $44ed: $02
    pop af                                        ; $44ee: $f1
    ld [$fb00], sp                                ; $44ef: $08 $00 $fb
    rrca                                          ; $44f2: $0f
    db $f4                                        ; $44f3: $f4
    ld a, [bc]                                    ; $44f4: $0a
    or $06                                        ; $44f5: $f6 $06
    db $f4                                        ; $44f7: $f4
    ld a, [de]                                    ; $44f8: $1a
    inc b                                         ; $44f9: $04
    db $e4                                        ; $44fa: $e4
    ld a, [bc]                                    ; $44fb: $0a
    db $ec                                        ; $44fc: $ec
    ld [hl-], a                                   ; $44fd: $32
    call z, $1828                                 ; $44fe: $cc $28 $18
    add l                                         ; $4501: $85
    ld a, e                                       ; $4502: $7b
    add b                                         ; $4503: $80
    jr nc, @+$0a                                  ; $4504: $30 $08

    add c                                         ; $4506: $81

jr_095_4507:
    rst $38                                       ; $4507: $ff
    add l                                         ; $4508: $85
    ei                                            ; $4509: $fb
    add a                                         ; $450a: $87
    ret nz                                        ; $450b: $c0

    and b                                         ; $450c: $a0
    jr nz, jr_095_4507                            ; $450d: $20 $f8

    ldh a, [rBCPS]                                ; $450f: $f0 $68
    ld bc, $e01e                                  ; $4511: $01 $1e $e0
    ld [hl], b                                    ; $4514: $70
    db $fc                                        ; $4515: $fc
    ld d, h                                       ; $4516: $54
    nop                                           ; $4517: $00
    cp $ae                                        ; $4518: $fe $ae
    pop af                                        ; $451a: $f1
    ld d, d                                       ; $451b: $52
    sbc h                                         ; $451c: $9c
    and d                                         ; $451d: $a2
    inc a                                         ; $451e: $3c
    inc sp                                        ; $451f: $33
    nop                                           ; $4520: $00
    db $fc                                        ; $4521: $fc
    xor l                                         ; $4522: $ad
    ld sp, hl                                     ; $4523: $f9
    dec b                                         ; $4524: $05
    inc bc                                        ; $4525: $03
    ld [hl], $0f                                  ; $4526: $36 $0f
    or l                                          ; $4528: $b5
    jr nz, jr_095_45aa                            ; $4529: $20 $7f

    xor b                                         ; $452b: $a8
    ld [hl], a                                    ; $452c: $77
    dec b                                         ; $452d: $05
    dec b                                         ; $452e: $05
    ei                                            ; $452f: $fb
    ld b, c                                       ; $4530: $41
    rst $38                                       ; $4531: $ff
    and l                                         ; $4532: $a5
    ld [$51fb], sp                                ; $4533: $08 $fb $51
    rst $38                                       ; $4536: $ff
    xor l                                         ; $4537: $ad
    ld [$0500], sp                                ; $4538: $08 $00 $05
    ei                                            ; $453b: $fb
    ld a, l                                       ; $453c: $7d
    nop                                           ; $453d: $00
    add d                                         ; $453e: $82
    cp a                                          ; $453f: $bf
    ld b, b                                       ; $4540: $40
    rst $18                                       ; $4541: $df
    jr nz, jr_095_457c                            ; $4542: $20 $38

    rst $00                                       ; $4544: $c7
    rst $30                                       ; $4545: $f7
    nop                                           ; $4546: $00

jr_095_4547:
    ld [$07f0], sp                                ; $4547: $08 $f0 $07
    ld [hl], h                                    ; $454a: $74
    dec bc                                        ; $454b: $0b
    jp nc, $8024                                  ; $454c: $d2 $24 $80

    jr nz, @+$81                                  ; $454f: $20 $7f

    rst $10                                       ; $4551: $d7
    nop                                           ; $4552: $00
    ld b, $3d                                     ; $4553: $06 $3d
    ret nz                                        ; $4555: $c0

    rst $10                                       ; $4556: $d7
    jr nz, jr_095_4576                            ; $4557: $20 $1d

    nop                                           ; $4559: $00
    ld [c], a                                     ; $455a: $e2
    rst $28                                       ; $455b: $ef
    db $10                                        ; $455c: $10
    rlca                                          ; $455d: $07
    ld [$08f4], sp                                ; $455e: $08 $f4 $08
    ld hl, sp+$01                                 ; $4561: $f8 $01
    rlca                                          ; $4563: $07
    rrca                                          ; $4564: $0f
    ldh a, [$f3]                                  ; $4565: $f0 $f3
    inc c                                         ; $4567: $0c
    db $fd                                        ; $4568: $fd
    ld [bc], a                                    ; $4569: $02
    inc l                                         ; $456a: $2c
    ld [bc], a                                    ; $456b: $02
    nop                                           ; $456c: $00
    ld [bc], a                                    ; $456d: $02
    xor $01                                       ; $456e: $ee $01
    ld a, [bc]                                    ; $4570: $0a
    inc b                                         ; $4571: $04
    rlca                                          ; $4572: $07
    ld hl, sp-$16                                 ; $4573: $f8 $ea
    nop                                           ; $4575: $00

jr_095_4576:
    dec d                                         ; $4576: $15
    rst $38                                       ; $4577: $ff
    nop                                           ; $4578: $00
    add c                                         ; $4579: $81
    ld a, [hl]                                    ; $457a: $7e
    ld b, [hl]                                    ; $457b: $46

jr_095_457c:
    add c                                         ; $457c: $81
    xor d                                         ; $457d: $aa
    nop                                           ; $457e: $00
    ld bc, $fe01                                  ; $457f: $01 $01 $fe
    inc bc                                        ; $4582: $03
    db $fc                                        ; $4583: $fc
    dec b                                         ; $4584: $05
    ld [bc], a                                    ; $4585: $02
    dec c                                         ; $4586: $0d
    nop                                           ; $4587: $00
    ld [bc], a                                    ; $4588: $02
    inc bc                                        ; $4589: $03
    db $fc                                        ; $458a: $fc
    rst $30                                       ; $458b: $f7
    ld [$3cc3], sp                                ; $458c: $08 $c3 $3c
    dec a                                         ; $458f: $3d
    ld b, b                                       ; $4590: $40
    jp nz, $0dd2                                  ; $4591: $c2 $d2 $0d

    ret nz                                        ; $4594: $c0

    ccf                                           ; $4595: $3f
    add b                                         ; $4596: $80
    ld a, a                                       ; $4597: $7f
    dec b                                         ; $4598: $05
    rst $38                                       ; $4599: $ff
    ld [bc], a                                    ; $459a: $02
    sbc [hl]                                      ; $459b: $9e
    ld a, a                                       ; $459c: $7f
    rst $38                                       ; $459d: $ff
    nop                                           ; $459e: $00
    rst $10                                       ; $459f: $d7
    jr nz, jr_095_45a8                            ; $45a0: $20 $06

    dec bc                                        ; $45a2: $0b
    ld d, h                                       ; $45a3: $54
    ld b, $08                                     ; $45a4: $06 $08
    xor $10                                       ; $45a6: $ee $10

jr_095_45a8:
    ld [hl], b                                    ; $45a8: $70
    rrca                                          ; $45a9: $0f

jr_095_45aa:
    sbc h                                         ; $45aa: $9c
    inc b                                         ; $45ab: $04
    ld e, b                                       ; $45ac: $58
    ld b, $c0                                     ; $45ad: $06 $c0
    ld [bc], a                                    ; $45af: $02
    rrca                                          ; $45b0: $0f
    rlca                                          ; $45b1: $07
    ldh a, [rNR11]                                ; $45b2: $f0 $11
    ld c, $06                                     ; $45b4: $0e $06
    jr c, jr_095_45b8                             ; $45b6: $38 $00

jr_095_45b8:
    ret nz                                        ; $45b8: $c0

    ld [bc], a                                    ; $45b9: $02
    ccf                                           ; $45ba: $3f
    or h                                          ; $45bb: $b4
    ld a, a                                       ; $45bc: $7f
    rst $18                                       ; $45bd: $df
    ccf                                           ; $45be: $3f
    xor a                                         ; $45bf: $af
    ld e, d                                       ; $45c0: $5a
    ld [bc], a                                    ; $45c1: $02
    or h                                          ; $45c2: $b4
    nop                                           ; $45c3: $00
    dec bc                                        ; $45c4: $0b
    ld hl, sp+$07                                 ; $45c5: $f8 $07
    add e                                         ; $45c7: $83
    ld a, a                                       ; $45c8: $7f
    ld b, $81                                     ; $45c9: $06 $81
    ld h, b                                       ; $45cb: $60
    add b                                         ; $45cc: $80
    and b                                         ; $45cd: $a0
    ld bc, $00fd                                  ; $45ce: $01 $fd $00
    db $f4                                        ; $45d1: $f4
    ld [$e41b], sp                                ; $45d2: $08 $1b $e4
    inc b                                         ; $45d5: $04
    nop                                           ; $45d6: $00
    ei                                            ; $45d7: $fb
    dec e                                         ; $45d8: $1d
    ldh [rIE], a                                  ; $45d9: $e0 $ff
    ret nz                                        ; $45db: $c0

    ret nz                                        ; $45dc: $c0

    ccf                                           ; $45dd: $3f
    add hl, de                                    ; $45de: $19
    nop                                           ; $45df: $00
    ldh [$df], a                                  ; $45e0: $e0 $df
    jr nz, @+$0d                                  ; $45e2: $20 $0b

    inc b                                         ; $45e4: $04
    daa                                           ; $45e5: $27
    jr jr_095_4605                                ; $45e6: $18 $1d

    nop                                           ; $45e8: $00
    ldh [$cf], a                                  ; $45e9: $e0 $cf
    jr nz, jr_095_4669                            ; $45eb: $20 $7c

    inc bc                                        ; $45ed: $03
    ld a, [$0c04]                                 ; $45ee: $fa $04 $0c
    nop                                           ; $45f1: $00
    di                                            ; $45f2: $f3
    cpl                                           ; $45f3: $2f
    db $10                                        ; $45f4: $10
    ldh a, [rIF]                                  ; $45f5: $f0 $0f
    rst $28                                       ; $45f7: $ef
    db $10                                        ; $45f8: $10
    and c                                         ; $45f9: $a1
    nop                                           ; $45fa: $00
    ld e, [hl]                                    ; $45fb: $5e

jr_095_45fc:
    ld c, $f1                                     ; $45fc: $0e $f1
    sub e                                         ; $45fe: $93
    inc c                                         ; $45ff: $0c
    dec a                                         ; $4600: $3d
    ld [bc], a                                    ; $4601: $02
    ld [bc], a                                    ; $4602: $02
    nop                                           ; $4603: $00
    db $fc                                        ; $4604: $fc

jr_095_4605:
    cp a                                          ; $4605: $bf

Call_095_4606:
    ld b, b                                       ; $4606: $40
    pop af                                        ; $4607: $f1
    ld c, $ee                                     ; $4608: $0e $ee
    ld de, $00cf                                  ; $460a: $11 $cf $00
    db $10                                        ; $460d: $10
    ld h, b                                       ; $460e: $60
    rra                                           ; $460f: $1f
    ret nc                                        ; $4610: $d0

    jr nz, @-$22                                  ; $4611: $20 $dc

    jr nz, jr_095_45fc                            ; $4613: $20 $e7

    nop                                           ; $4615: $00
    jr @-$26                                      ; $4616: $18 $d8

    daa                                           ; $4618: $27
    ldh [$1f], a                                  ; $4619: $e0 $1f
    ld e, [hl]                                    ; $461b: $5e
    add c                                         ; $461c: $81
    xor a                                         ; $461d: $af
    nop                                           ; $461e: $00
    ld b, b                                       ; $461f: $40
    rlca                                          ; $4620: $07
    ld hl, sp+$03                                 ; $4621: $f8 $03
    inc b                                         ; $4623: $04
    ld a, [bc]                                    ; $4624: $0a
    dec b                                         ; $4625: $05
    push bc                                       ; $4626: $c5
    nop                                           ; $4627: $00
    ld a, [hl-]                                   ; $4628: $3a
    ccf                                           ; $4629: $3f
    ret nz                                        ; $462a: $c0

    ld e, $e1                                     ; $462b: $1e $e1
    rst $28                                       ; $462d: $ef
    nop                                           ; $462e: $00
    or a                                          ; $462f: $b7
    jr nz, jr_095_463a                            ; $4630: $20 $08

    db $fd                                        ; $4632: $fd
    or d                                          ; $4633: $b2
    ld [bc], a                                    ; $4634: $02
    cp e                                          ; $4635: $bb
    inc b                                         ; $4636: $04
    db $fc                                        ; $4637: $fc

jr_095_4638:
    inc bc                                        ; $4638: $03
    ld [c], a                                     ; $4639: $e2

jr_095_463a:
    ld d, b                                       ; $463a: $50
    inc e                                         ; $463b: $1c
    adc b                                         ; $463c: $88
    ld [$44b0], sp                                ; $463d: $08 $b0 $44
    nop                                           ; $4640: $00
    db $e3                                        ; $4641: $e3
    inc e                                         ; $4642: $1c
    ld a, h                                       ; $4643: $7c
    add e                                         ; $4644: $83
    nop                                           ; $4645: $00
    rrca                                          ; $4646: $0f
    ldh [rIF], a                                  ; $4647: $e0 $0f
    db $10                                        ; $4649: $10
    ld sp, hl                                     ; $464a: $f9
    inc b                                         ; $464b: $04
    ld a, $c0                                     ; $464c: $3e $c0
    nop                                           ; $464e: $00

jr_095_464f:
    ld e, a                                       ; $464f: $5f
    ldh [$b7], a                                  ; $4650: $e0 $b7
    ret nz                                        ; $4652: $c0

jr_095_4653:
    cp b                                          ; $4653: $b8
    ld b, a                                       ; $4654: $47
    rst $30                                       ; $4655: $f7
    ld [$e110], sp                                ; $4656: $08 $10 $e1
    ld e, $60                                     ; $4659: $1e $60
    ld d, h                                       ; $465b: $54
    ld [bc], a                                    ; $465c: $02
    db $e4                                        ; $465d: $e4
    jr jr_095_4638                                ; $465e: $18 $d8

jr_095_4660:
    jr nz, jr_095_4662                            ; $4660: $20 $00

jr_095_4662:
    ld b, b                                       ; $4662: $40
    ccf                                           ; $4663: $3f

jr_095_4664:
    dec e                                         ; $4664: $1d
    ldh [$27], a                                  ; $4665: $e0 $27
    jr jr_095_4664                                ; $4667: $18 $fb

jr_095_4669:
    inc b                                         ; $4669: $04
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    rst $38                                       ; $466c: $ff
    jr jr_095_464f                                ; $466d: $18 $e0

    nop                                           ; $466f: $00
    rra                                           ; $4670: $1f
    ld l, e                                       ; $4671: $6b
    db $10                                        ; $4672: $10
    inc b                                         ; $4673: $04
    rla                                           ; $4674: $17
    ldh [$fe], a                                  ; $4675: $e0 $fe
    ld bc, $b5dc                                  ; $4677: $01 $dc $b5
    ld bc, $e01e                                  ; $467a: $01 $1e $e0
    nop                                           ; $467d: $00
    rst $30                                       ; $467e: $f7
    ld [$fb04], sp                                ; $467f: $08 $04 $fb
    cp $01                                        ; $4682: $fe $01
    add b                                         ; $4684: $80
    ld a, a                                       ; $4685: $7f
    nop                                           ; $4686: $00
    inc bc                                        ; $4687: $03
    db $fc                                        ; $4688: $fc
    dec d                                         ; $4689: $15
    ld a, [$f1ee]                                 ; $468a: $fa $ee $f1
    cp l                                          ; $468d: $bd
    ld b, d                                       ; $468e: $42
    add b                                         ; $468f: $80
    ld h, h                                       ; $4690: $64
    inc b                                         ; $4691: $04
    jr nz, jr_095_4653                            ; $4692: $20 $bf

    ld b, b                                       ; $4694: $40
    db $eb                                        ; $4695: $eb
    nop                                           ; $4696: $00
    jr c, jr_095_4660                             ; $4697: $38 $c7

    nop                                           ; $4699: $00
    scf                                           ; $469a: $37
    ret z                                         ; $469b: $c8

    ld a, c                                       ; $469c: $79
    add [hl]                                      ; $469d: $86
    ld l, h                                       ; $469e: $6c
    add e                                         ; $469f: $83
    ret nz                                        ; $46a0: $c0

    ccf                                           ; $46a1: $3f
    ld b, b                                       ; $46a2: $40
    add l                                         ; $46a3: $85
    ret c                                         ; $46a4: $d8

    nop                                           ; $46a5: $00
    ld a, h                                       ; $46a6: $7c
    add b                                         ; $46a7: $80
    ld a, [hl]                                    ; $46a8: $7e
    add c                                         ; $46a9: $81
    adc l                                         ; $46aa: $8d
    ld [hl], d                                    ; $46ab: $72
    nop                                           ; $46ac: $00
    and $19                                       ; $46ad: $e6 $19
    dec bc                                        ; $46af: $0b
    ldh a, [$0e]                                  ; $46b0: $f0 $0e
    pop af                                        ; $46b2: $f1
    ld e, h                                       ; $46b3: $5c
    db $e3                                        ; $46b4: $e3
    nop                                           ; $46b5: $00
    or d                                          ; $46b6: $b2
    call z, $08e7                                 ; $46b7: $cc $e7 $08
    nop                                           ; $46ba: $00
    rst $38                                       ; $46bb: $ff
    add l                                         ; $46bc: $85
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    ld a, [hl-]                                   ; $46bf: $3a
    ret nz                                        ; $46c0: $c0

    nop                                           ; $46c1: $00
    rst $38                                       ; $46c2: $ff
    cp [hl]                                       ; $46c3: $be

jr_095_46c4:
    ld b, c                                       ; $46c4: $41
    dec e                                         ; $46c5: $1d
    ld [c], a                                     ; $46c6: $e2
    nop                                           ; $46c7: $00
    daa                                           ; $46c8: $27
    jr jr_095_46c4                                ; $46c9: $18 $f9

    inc b                                         ; $46cb: $04
    rst $20                                       ; $46cc: $e7
    jr jr_095_46ed                                ; $46cd: $18 $1e

    ldh [$08], a                                  ; $46cf: $e0 $08
    sbc l                                         ; $46d1: $9d
    ld h, b                                       ; $46d2: $60
    ld c, $f0                                     ; $46d3: $0e $f0
    xor h                                         ; $46d5: $ac
    ld a, [de]                                    ; $46d6: $1a
    cp a                                          ; $46d7: $bf
    ret nz                                        ; $46d8: $c0

    ret nz                                        ; $46d9: $c0

    ld a, b                                       ; $46da: $78
    cp a                                          ; $46db: $bf
    xor d                                         ; $46dc: $aa
    rra                                           ; $46dd: $1f
    add l                                         ; $46de: $85
    ld h, $41                                     ; $46df: $26 $41
    rlca                                          ; $46e1: $07
    cp d                                          ; $46e2: $ba
    rra                                           ; $46e3: $1f
    jp hl                                         ; $46e4: $e9


    db $10                                        ; $46e5: $10
    rst $20                                       ; $46e6: $e7
    nop                                           ; $46e7: $00
    jr @+$32                                      ; $46e8: $18 $30

    rst $08                                       ; $46ea: $cf
    inc e                                         ; $46eb: $1c
    inc hl                                        ; $46ec: $23

jr_095_46ed:
    ccf                                           ; $46ed: $3f
    ret nz                                        ; $46ee: $c0

    ld hl, sp+$00                                 ; $46ef: $f8 $00
    rlca                                          ; $46f1: $07
    rlca                                          ; $46f2: $07
    ld hl, sp-$05                                 ; $46f3: $f8 $fb
    inc b                                         ; $46f5: $04
    rrca                                          ; $46f6: $0f
    ldh a, [$93]                                  ; $46f7: $f0 $93
    inc b                                         ; $46f9: $04
    inc c                                         ; $46fa: $0c
    ld [hl], l                                    ; $46fb: $75
    add d                                         ; $46fc: $82
    inc bc                                        ; $46fd: $03
    db $fc                                        ; $46fe: $fc
    ld l, [hl]                                    ; $46ff: $6e
    dec bc                                        ; $4700: $0b
    or $09                                        ; $4701: $f6 $09
    inc [hl]                                      ; $4703: $34
    db $ed                                        ; $4704: $ed
    ld [de], a                                    ; $4705: $12
    adc $0b                                       ; $4706: $ce $0b
    ret nc                                        ; $4708: $d0

    inc c                                         ; $4709: $0c
    ld a, l                                       ; $470a: $7d
    xor [hl]                                      ; $470b: $ae
    rra                                           ; $470c: $1f
    ld b, b                                       ; $470d: $40
    or $38                                        ; $470e: $f6 $38
    ld bc, $08fd                                  ; $4710: $01 $fd $08
    ld c, $96                                     ; $4713: $0e $96
    nop                                           ; $4715: $00
    ret z                                         ; $4716: $c8

    rrca                                          ; $4717: $0f
    or l                                          ; $4718: $b5
    ld [$23fe], sp                                ; $4719: $08 $fe $23
    nop                                           ; $471c: $00
    ld l, a                                       ; $471d: $6f
    or h                                          ; $471e: $b4
    rlca                                          ; $471f: $07
    cp $01                                        ; $4720: $fe $01
    cp e                                          ; $4722: $bb
    ld e, $16                                     ; $4723: $1e $16
    call c, $481f                                 ; $4725: $dc $1f $48
    db $fd                                        ; $4728: $fd
    adc h                                         ; $4729: $8c
    ld de, $41be                                  ; $472a: $11 $be $41
    ld b, $1d                                     ; $472d: $06 $1d
    cp b                                          ; $472f: $b8
    rlca                                          ; $4730: $07
    or $00                                        ; $4731: $f6 $00
    rrca                                          ; $4733: $0f
    cp e                                          ; $4734: $bb
    ld b, a                                       ; $4735: $47
    rst $38                                       ; $4736: $ff
    nop                                           ; $4737: $00
    rlca                                          ; $4738: $07
    ld hl, sp-$37                                 ; $4739: $f8 $c9
    jr nz, @+$08                                  ; $473b: $20 $06

    add d                                         ; $473d: $82
    sub d                                         ; $473e: $92
    rlca                                          ; $473f: $07
    dec e                                         ; $4740: $1d
    jp nz, $e01f                                  ; $4741: $c2 $1f $e0

    or b                                          ; $4744: $b0

jr_095_4745:
    dec c                                         ; $4745: $0d
    rst $08                                       ; $4746: $cf
    rst $28                                       ; $4747: $ef
    db $10                                        ; $4748: $10
    rst $28                                       ; $4749: $ef
    ld l, h                                       ; $474a: $6c
    ld bc, $0d40                                  ; $474b: $01 $40 $0d
    xor a                                         ; $474e: $af
    ld d, h                                       ; $474f: $54
    ld b, $00                                     ; $4750: $06 $00
    add sp, $17                                   ; $4752: $e8 $17
    dec de                                        ; $4754: $1b
    ldh [$ef], a                                  ; $4755: $e0 $ef
    db $10                                        ; $4757: $10
    ld bc, $00fe                                  ; $4758: $01 $fe $00
    ld b, d                                       ; $475b: $42
    add c                                         ; $475c: $81
    rst $28                                       ; $475d: $ef
    db $10                                        ; $475e: $10
    ldh [$1f], a                                  ; $475f: $e0 $1f
    adc b                                         ; $4761: $88
    ld [hl], b                                    ; $4762: $70
    nop                                           ; $4763: $00
    ld e, h                                       ; $4764: $5c
    and b                                         ; $4765: $a0
    ldh [$1f], a                                  ; $4766: $e0 $1f
    rst $38                                       ; $4768: $ff
    nop                                           ; $4769: $00
    db $fc                                        ; $476a: $fc
    inc bc                                        ; $476b: $03
    nop                                           ; $476c: $00
    db $e3                                        ; $476d: $e3
    inc e                                         ; $476e: $1c
    nop                                           ; $476f: $00
    rst $38                                       ; $4770: $ff
    rst $18                                       ; $4771: $df
    jr nz, jr_095_47f3                            ; $4772: $20 $7f

jr_095_4774:
    nop                                           ; $4774: $00
    add [hl]                                      ; $4775: $86
    and a                                         ; $4776: $a7
    ld a, [de]                                    ; $4777: $1a
    rst $10                                       ; $4778: $d7
    ld [$07ff], sp                                ; $4779: $08 $ff $07

jr_095_477c:
    ld e, [hl]                                    ; $477c: $5e
    inc c                                         ; $477d: $0c
    ld h, b                                       ; $477e: $60
    jr @-$43                                      ; $477f: $18 $bb

    ld bc, $f54f                                  ; $4781: $01 $4f $f5
    cp $bb                                        ; $4784: $fe $bb
    add $ff                                       ; $4786: $c6 $ff
    nop                                           ; $4788: $00
    ld [hl], b                                    ; $4789: $70
    dec c                                         ; $478a: $0d
    ret z                                         ; $478b: $c8

    adc d                                         ; $478c: $8a
    dec c                                         ; $478d: $0d
    rrc d                                         ; $478e: $cb $0a
    cp a                                          ; $4790: $bf
    nop                                           ; $4791: $00
    and b                                         ; $4792: $a0
    db $10                                        ; $4793: $10
    ld bc, $07eb                                  ; $4794: $01 $eb $07
    nop                                           ; $4797: $00
    db $db                                        ; $4798: $db
    dec l                                         ; $4799: $2d
    rst $38                                       ; $479a: $ff
    jr jr_095_477c                                ; $479b: $18 $df

    jr nc, jr_095_4774                            ; $479d: $30 $d5

    ld l, h                                       ; $479f: $6c
    nop                                           ; $47a0: $00
    rst $28                                       ; $47a1: $ef
    inc e                                         ; $47a2: $1c

jr_095_47a3:
    rst $10                                       ; $47a3: $d7
    jr nc, jr_095_47a3                            ; $47a4: $30 $fd

    jp nz, $877b                                  ; $47a6: $c2 $7b $87

    nop                                           ; $47a9: $00
    ccf                                           ; $47aa: $3f
    call c, $d36f                                 ; $47ab: $dc $6f $d3
    dec a                                         ; $47ae: $3d
    ld b, [hl]                                    ; $47af: $46

jr_095_47b0:
    cp e                                          ; $47b0: $bb
    ld h, b                                       ; $47b1: $60
    nop                                           ; $47b2: $00
    db $fc                                        ; $47b3: $fc
    ld b, $6a                                     ; $47b4: $06 $6a
    rst $00                                       ; $47b6: $c7
    db $dd                                        ; $47b7: $dd
    ld h, e                                       ; $47b8: $63
    cp $23                                        ; $47b9: $fe $23
    nop                                           ; $47bb: $00
    ld a, [$7ce3]                                 ; $47bc: $fa $e3 $7c
    add e                                         ; $47bf: $83
    rst $28                                       ; $47c0: $ef
    rra                                           ; $47c1: $1f
    rst $10                                       ; $47c2: $d7
    jr c, jr_095_4745                             ; $47c3: $38 $80

    call nz, Call_000_2105                        ; $47c5: $c4 $05 $21
    ld a, l                                       ; $47c8: $7d
    inc bc                                        ; $47c9: $03
    ei                                            ; $47ca: $fb
    ld b, $ff                                     ; $47cb: $06 $ff
    inc c                                         ; $47cd: $0c
    nop                                           ; $47ce: $00
    rst $28                                       ; $47cf: $ef
    jr @-$13                                      ; $47d0: $18 $eb

    inc a                                         ; $47d2: $3c
    ld a, [$3e27]                                 ; $47d3: $fa $27 $3e
    rst $00                                       ; $47d6: $c7
    nop                                           ; $47d7: $00
    rst $38                                       ; $47d8: $ff
    inc bc                                        ; $47d9: $03
    db $ed                                        ; $47da: $ed
    ld sp, $18f7                                  ; $47db: $31 $f7 $18
    ld a, e                                       ; $47de: $7b
    call z, $be00                                 ; $47df: $cc $00 $be
    ld h, c                                       ; $47e2: $61
    rst $10                                       ; $47e3: $d7
    dec sp                                        ; $47e4: $3b
    rst $38                                       ; $47e5: $ff
    ld b, $ce                                     ; $47e6: $06 $ce
    ld sp, $f900                                  ; $47e8: $31 $00 $f9
    rla                                           ; $47eb: $17
    call $df9e                                    ; $47ec: $cd $9e $df
    jr nc, jr_095_47b0                            ; $47ef: $30 $bf

    ret nz                                        ; $47f1: $c0

    nop                                           ; $47f2: $00

jr_095_47f3:
    ld a, a                                       ; $47f3: $7f
    add b                                         ; $47f4: $80
    rst $30                                       ; $47f5: $f7
    ld [$00dd], sp                                ; $47f6: $08 $dd $00

jr_095_47f9:
    db $dd                                        ; $47f9: $dd
    jp nz, $10c0                                  ; $47fa: $c2 $c0 $10

    ld e, c                                       ; $47fd: $59
    xor $0c                                       ; $47fe: $ee $0c
    db $dd                                        ; $4800: $dd
    ld [bc], a                                    ; $4801: $02
    rst $38                                       ; $4802: $ff
    nop                                           ; $4803: $00
    or a                                          ; $4804: $b7
    rst $38                                       ; $4805: $ff
    ld [bc], a                                    ; $4806: $02
    ld l, e                                       ; $4807: $6b

Call_095_4808:
    rst $38                                       ; $4808: $ff
    rst $30                                       ; $4809: $f7
    ld [$3cfd], sp                                ; $480a: $08 $fd $3c
    jr nc, jr_095_4838                            ; $480d: $30 $29

    dec [hl]                                      ; $480f: $35
    ld b, h                                       ; $4810: $44
    xor $f2                                       ; $4811: $ee $f2
    ld b, $01                                     ; $4813: $06 $01
    xor $71                                       ; $4815: $ee $71
    ret nz                                        ; $4817: $c0

    jr c, jr_095_47f9                             ; $4818: $38 $df

    ldh [rP1], a                                  ; $481a: $e0 $00
    sub e                                         ; $481c: $93
    call c, $cff7                                 ; $481d: $dc $f7 $cf
    sub $6f                                       ; $4820: $d6 $6f
    db $db                                        ; $4822: $db
    ld h, l                                       ; $4823: $65
    ld bc, $31ee                                  ; $4824: $01 $ee $31
    rst $38                                       ; $4827: $ff
    nop                                           ; $4828: $00
    call $f51f                                    ; $4829: $cd $1f $f5
    call nc, Call_000_0005                        ; $482c: $d4 $05 $00
    cp a                                          ; $482f: $bf
    nop                                           ; $4830: $00
    rst $30                                       ; $4831: $f7
    ld de, $31fc                                  ; $4832: $11 $fc $31
    cp $e3                                        ; $4835: $fe $e3
    nop                                           ; $4837: $00

jr_095_4838:
    db $ed                                        ; $4838: $ed
    inc bc                                        ; $4839: $03
    call c, $37e3                                 ; $483a: $dc $e3 $37
    rst $38                                       ; $483d: $ff
    db $fc                                        ; $483e: $fc
    rlca                                          ; $483f: $07
    nop                                           ; $4840: $00
    or l                                          ; $4841: $b5
    ld [$c03f], sp                                ; $4842: $08 $3f $c0
    ld [hl], a                                    ; $4845: $77
    add h                                         ; $4846: $84
    ei                                            ; $4847: $fb
    add [hl]                                      ; $4848: $86
    nop                                           ; $4849: $00
    ld a, a                                       ; $484a: $7f
    add e                                         ; $484b: $83
    cp [hl]                                       ; $484c: $be

jr_095_484d:
    rst $00                                       ; $484d: $c7
    ld l, e                                       ; $484e: $6b
    sub h                                         ; $484f: $94
    rst $18                                       ; $4850: $df
    ldh [rP1], a                                  ; $4851: $e0 $00
    cp e                                          ; $4853: $bb
    ld a, b                                       ; $4854: $78
    cp [hl]                                       ; $4855: $be
    ldh [$5f], a                                  ; $4856: $e0 $5f
    cp b                                          ; $4858: $b8
    ei                                            ; $4859: $fb
    ld c, $00                                     ; $485a: $0e $00
    cp l                                          ; $485c: $bd
    jp Jump_095_67da                              ; $485d: $c3 $da $67


    push af                                       ; $4860: $f5
    ld c, $eb                                     ; $4861: $0e $eb
    inc e                                         ; $4863: $1c
    jr nc, jr_095_484d                            ; $4864: $30 $e7

    jr jr_095_4878                                ; $4866: $18 $10

    ld a, [bc]                                    ; $4868: $0a
    db $10                                        ; $4869: $10
    ld b, c                                       ; $486a: $41
    nop                                           ; $486b: $00
    rst $38                                       ; $486c: $ff
    ld b, $fd                                     ; $486d: $06 $fd
    ld [hl], b                                    ; $486f: $70
    inc bc                                        ; $4870: $03
    add b                                         ; $4871: $80
    ld [$19a6], sp                                ; $4872: $08 $a6 $19
    and b                                         ; $4875: $a0
    nop                                           ; $4876: $00
    inc sp                                        ; $4877: $33

jr_095_4878:
    rst $28                                       ; $4878: $ef
    or e                                          ; $4879: $b3
    rst $38                                       ; $487a: $ff
    inc b                                         ; $487b: $04
    ld [c], a                                     ; $487c: $e2
    push af                                       ; $487d: $f5
    dec sp                                        ; $487e: $3b
    ld [hl], l                                    ; $487f: $75
    inc c                                         ; $4880: $0c
    call nc, $0300                                ; $4881: $d4 $00 $03
    cp a                                          ; $4884: $bf
    ld b, b                                       ; $4885: $40
    ld b, c                                       ; $4886: $41
    and b                                         ; $4887: $a0
    jr nz, jr_095_4891                            ; $4888: $20 $07

    rst $38                                       ; $488a: $ff
    inc bc                                        ; $488b: $03
    rst $38                                       ; $488c: $ff
    ld [bc], a                                    ; $488d: $02
    or $00                                        ; $488e: $f6 $00
    rrca                                          ; $4890: $0f

jr_095_4891:
    rst $18                                       ; $4891: $df
    rlca                                          ; $4892: $07
    inc c                                         ; $4893: $0c
    rst $30                                       ; $4894: $f7
    rst $20                                       ; $4895: $e7
    scf                                           ; $4896: $37
    rst $38                                       ; $4897: $ff
    nop                                           ; $4898: $00
    rst $38                                       ; $4899: $ff
    ldh a, [rIE]                                  ; $489a: $f0 $ff
    db $e3                                        ; $489c: $e3
    db $fc                                        ; $489d: $fc
    ld d, [hl]                                    ; $489e: $56
    ld a, b                                       ; $489f: $78
    xor [hl]                                      ; $48a0: $ae
    inc b                                         ; $48a1: $04
    ld [hl], b                                    ; $48a2: $70
    ld c, a                                       ; $48a3: $4f
    ldh a, [rSB]                                  ; $48a4: $f0 $01
    rst $38                                       ; $48a6: $ff
    call c, $c107                                 ; $48a7: $dc $07 $c1
    ld a, d                                       ; $48aa: $7a
    nop                                           ; $48ab: $00
    jp hl                                         ; $48ac: $e9


    ccf                                           ; $48ad: $3f
    ld sp, hl                                     ; $48ae: $f9
    ld e, $71                                     ; $48af: $1e $71
    ld e, a                                       ; $48b1: $5f
    add hl, sp                                    ; $48b2: $39
    sbc $10                                       ; $48b3: $de $10
    add hl, sp                                    ; $48b5: $39
    rst $38                                       ; $48b6: $ff
    rra                                           ; $48b7: $1f
    ld h, l                                       ; $48b8: $65
    ld b, $07                                     ; $48b9: $06 $07
    ld a, a                                       ; $48bb: $7f
    add a                                         ; $48bc: $87
    sbc a                                         ; $48bd: $9f
    nop                                           ; $48be: $00
    rst $08                                       ; $48bf: $cf
    ei                                            ; $48c0: $fb
    ld h, e                                       ; $48c1: $63
    reti                                          ; $48c2: $d9


    scf                                           ; $48c3: $37
    xor e                                         ; $48c4: $ab
    rra                                           ; $48c5: $1f
    or a                                          ; $48c6: $b7
    nop                                           ; $48c7: $00
    ldh [rWX], a                                  ; $48c8: $e0 $4b
    db $f4                                        ; $48ca: $f4
    xor b                                         ; $48cb: $a8

Call_095_48cc:
    rst $38                                       ; $48cc: $ff
    push de                                       ; $48cd: $d5
    rst $38                                       ; $48ce: $ff
    jp z, $9f00                                   ; $48cf: $ca $00 $9f

    sbc a                                         ; $48d2: $9f
    cp a                                          ; $48d3: $bf
    rst $30                                       ; $48d4: $f7
    ei                                            ; $48d5: $fb
    rst $38                                       ; $48d6: $ff
    rst $30                                       ; $48d7: $f7
    sub a                                         ; $48d8: $97
    nop                                           ; $48d9: $00
    ld a, c                                       ; $48da: $79
    ld a, [de]                                    ; $48db: $1a
    di                                            ; $48dc: $f3
    or l                                          ; $48dd: $b5
    rst $38                                       ; $48de: $ff
    ld e, [hl]                                    ; $48df: $5e
    ld sp, hl                                     ; $48e0: $f9
    sbc a                                         ; $48e1: $9f
    nop                                           ; $48e2: $00
    ld sp, $995e                                  ; $48e3: $31 $5e $99
    rst $30                                       ; $48e6: $f7
    ld sp, hl                                     ; $48e7: $f9
    ld [c], a                                     ; $48e8: $e2
    db $fd                                        ; $48e9: $fd
    db $fc                                        ; $48ea: $fc
    nop                                           ; $48eb: $00
    rrca                                          ; $48ec: $0f
    sbc $37                                       ; $48ed: $de $37
    ld a, l                                       ; $48ef: $7d
    ld [hl], e                                    ; $48f0: $73
    ei                                            ; $48f1: $fb
    pop hl                                        ; $48f2: $e1
    rst $38                                       ; $48f3: $ff
    nop                                           ; $48f4: $00
    ld c, b                                       ; $48f5: $48
    or a                                          ; $48f6: $b7
    ld a, b                                       ; $48f7: $78
    sub $09                                       ; $48f8: $d6 $09
    ld sp, hl                                     ; $48fa: $f9
    add a                                         ; $48fb: $87
    ccf                                           ; $48fc: $3f
    inc b                                         ; $48fd: $04
    rst $38                                       ; $48fe: $ff
    inc c                                         ; $48ff: $0c
    rst $38                                       ; $4900: $ff
    inc b                                         ; $4901: $04
    rst $38                                       ; $4902: $ff
    jp nc, $c005                                  ; $4903: $d2 $05 $c0

    ld e, [hl]                                    ; $4906: $5e
    nop                                           ; $4907: $00
    pop hl                                        ; $4908: $e1
    rst $30                                       ; $4909: $f7
    cp b                                          ; $490a: $b8
    rst $38                                       ; $490b: $ff
    db $10                                        ; $490c: $10
    inc de                                        ; $490d: $13
    db $fd                                        ; $490e: $fd
    ld b, $10                                     ; $490f: $06 $10
    ld sp, hl                                     ; $4911: $f9
    dec e                                         ; $4912: $1d
    jp $048f                                      ; $4913: $c3 $8f $04


    ld bc, $01fe                                  ; $4916: $01 $fe $01
    rst $30                                       ; $4919: $f7
    inc d                                         ; $491a: $14
    add hl, bc                                    ; $491b: $09
    call c, $de01                                 ; $491c: $dc $01 $de
    ld e, a                                       ; $491f: $5f
    rst $30                                       ; $4920: $f7
    ld a, [de]                                    ; $4921: $1a
    ld c, $f9                                     ; $4922: $0e $f9
    xor e                                         ; $4924: $ab
    nop                                           ; $4925: $00
    rst $08                                       ; $4926: $cf
    cpl                                           ; $4927: $2f
    ccf                                           ; $4928: $3f
    rst $10                                       ; $4929: $d7
    rst $38                                       ; $492a: $ff
    dec bc                                        ; $492b: $0b
    rst $38                                       ; $492c: $ff
    inc d                                         ; $492d: $14
    add b                                         ; $492e: $80
    ld d, l                                       ; $492f: $55
    rlca                                          ; $4930: $07
    xor a                                         ; $4931: $af
    ccf                                           ; $4932: $3f
    sbc $ff                                       ; $4933: $de $ff
    push af                                       ; $4935: $f5
    rst $38                                       ; $4936: $ff
    ld [$ff08], a                                 ; $4937: $ea $08 $ff
    ret nc                                        ; $493a: $d0

    rst $38                                       ; $493b: $ff
    and h                                         ; $493c: $a4
    ld h, e                                       ; $493d: $63
    rlca                                          ; $493e: $07
    jr nz, @+$01                                  ; $493f: $20 $ff

    rst $18                                       ; $4941: $df
    inc b                                         ; $4942: $04
    rst $38                                       ; $4943: $ff
    sbc a                                         ; $4944: $9f
    rst $38                                       ; $4945: $ff
    dec sp                                        ; $4946: $3b
    rst $38                                       ; $4947: $ff
    ldh a, [$67]                                  ; $4948: $f0 $67
    rst $38                                       ; $494a: $ff
    db $dd                                        ; $494b: $dd
    ldh a, [$ea]                                  ; $494c: $f0 $ea
    dec b                                         ; $494e: $05
    ldh a, [rTAC]                                 ; $494f: $f0 $07
    jr nz, jr_095_4953                            ; $4951: $20 $00

jr_095_4953:
    ei                                            ; $4953: $fb
    ld [$df20], sp                                ; $4954: $08 $20 $df
    nop                                           ; $4957: $00
    rst $38                                       ; $4958: $ff
    nop                                           ; $4959: $00
    sub b                                         ; $495a: $90
    ld l, a                                       ; $495b: $6f
    xor d                                         ; $495c: $aa
    push bc                                       ; $495d: $c5
    ld c, b                                       ; $495e: $48
    or a                                          ; $495f: $b7
    jp nc, $002d                                  ; $4960: $d2 $2d $00

    nop                                           ; $4963: $00
    rst $38                                       ; $4964: $ff
    ld [$14f3], sp                                ; $4965: $08 $f3 $14
    rst $20                                       ; $4968: $e7
    add hl, bc                                    ; $4969: $09
    xor $00                                       ; $496a: $ee $00
    inc l                                         ; $496c: $2c
    rr b                                          ; $496d: $cb $18
    rst $10                                       ; $496f: $d7
    ld d, l                                       ; $4970: $55
    sbc d                                         ; $4971: $9a
    xor d                                         ; $4972: $aa
    dec d                                         ; $4973: $15
    nop                                           ; $4974: $00
    ld h, c                                       ; $4975: $61
    sbc [hl]                                      ; $4976: $9e
    jp z, Jump_095_7434                           ; $4977: $ca $34 $74

    adc c                                         ; $497a: $89
    jp hl                                         ; $497b: $e9


    ld de, $e700                                  ; $497c: $11 $00 $e7
    ld b, $cf                                     ; $497f: $06 $cf
    ld [$188f], sp                                ; $4981: $08 $8f $18
    ld a, a                                       ; $4984: $7f
    ld [hl], b                                    ; $4985: $70
    nop                                           ; $4986: $00
    inc [hl]                                      ; $4987: $34
    dec hl                                        ; $4988: $2b
    db $fd                                        ; $4989: $fd
    jp nz, Jump_000_11ee                          ; $498a: $c2 $ee $11

    db $dd                                        ; $498d: $dd
    ld [hl+], a                                   ; $498e: $22
    and d                                         ; $498f: $a2
    or d                                          ; $4990: $b2
    cpl                                           ; $4991: $2f
    db $fd                                        ; $4992: $fd
    ld d, b                                       ; $4993: $50
    nop                                           ; $4994: $00

jr_095_4995:
    cp $fd                                        ; $4995: $fe $fd
    db $fc                                        ; $4997: $fc
    rlca                                          ; $4998: $07
    nop                                           ; $4999: $00
    db $fd                                        ; $499a: $fd
    sub b                                         ; $499b: $90
    or c                                          ; $499c: $b1
    ld bc, $fef7                                  ; $499d: $01 $f7 $fe
    sub h                                         ; $49a0: $94
    ld [$ffaf], sp                                ; $49a1: $08 $af $ff
    ld a, l                                       ; $49a4: $7d
    rst $38                                       ; $49a5: $ff
    ld e, b                                       ; $49a6: $58
    ld a, [hl+]                                   ; $49a7: $2a

jr_095_49a8:
    halt                                          ; $49a8: $76
    rlca                                          ; $49a9: $07
    adc b                                         ; $49aa: $88
    jp z, Jump_095_6b00                           ; $49ab: $ca $00 $6b

    rrca                                          ; $49ae: $0f
    cp e                                          ; $49af: $bb
    rst $38                                       ; $49b0: $ff
    ld l, a                                       ; $49b1: $6f
    ld b, b                                       ; $49b2: $40
    rst $38                                       ; $49b3: $ff
    and b                                         ; $49b4: $a0
    jr z, jr_095_4995                             ; $49b5: $28 $de

    db $fc                                        ; $49b7: $fc
    sbc l                                         ; $49b8: $9d
    cp $3e                                        ; $49b9: $fe $3e
    rst $38                                       ; $49bb: $ff
    nop                                           ; $49bc: $00
    ld e, a                                       ; $49bd: $5f
    rst $38                                       ; $49be: $ff
    and h                                         ; $49bf: $a4
    ld sp, hl                                     ; $49c0: $f9
    ld c, d                                       ; $49c1: $4a
    ldh a, [$94]                                  ; $49c2: $f0 $94
    ldh [rP1], a                                  ; $49c4: $e0 $00
    jr jr_095_49a8                                ; $49c6: $18 $e0

    ld de, $40ff                                  ; $49c8: $11 $ff $40
    cp a                                          ; $49cb: $bf
    jr nz, @-$1f                                  ; $49cc: $20 $df

    nop                                           ; $49ce: $00
    ld [$12f7], sp                                ; $49cf: $08 $f7 $12
    db $ed                                        ; $49d2: $ed
    or a                                          ; $49d3: $b7
    ld c, b                                       ; $49d4: $48
    ld l, d                                       ; $49d5: $6a
    sub l                                         ; $49d6: $95
    inc h                                         ; $49d7: $24
    or [hl]                                       ; $49d8: $b6
    ld c, c                                       ; $49d9: $49
    sub b                                         ; $49da: $90
    jr c, jr_095_49ff                             ; $49db: $38 $22

    db $dd                                        ; $49dd: $dd
    sub b                                         ; $49de: $90
    ld [$e011], sp                                ; $49df: $08 $11 $e0
    nop                                           ; $49e2: $00
    ld a, [de]                                    ; $49e3: $1a
    push af                                       ; $49e4: $f5
    rrca                                          ; $49e5: $0f
    rst $38                                       ; $49e6: $ff
    dec de                                        ; $49e7: $1b
    pop af                                        ; $49e8: $f1
    dec [hl]                                      ; $49e9: $35
    ldh [rP1], a                                  ; $49ea: $e0 $00
    add hl, bc                                    ; $49ec: $09
    ldh [$61], a                                  ; $49ed: $e0 $61
    ret nz                                        ; $49ef: $c0

    ld d, d                                       ; $49f0: $52
    pop hl                                        ; $49f1: $e1
    ld l, l                                       ; $49f2: $6d
    sub d                                         ; $49f3: $92
    jp nz, Jump_000_0ab0                          ; $49f4: $c2 $b0 $0a

    ld a, [de]                                    ; $49f7: $1a
    dec de                                        ; $49f8: $1b
    rst $38                                       ; $49f9: $ff
    nop                                           ; $49fa: $00
    sbc $21                                       ; $49fb: $de $21
    and b                                         ; $49fd: $a0
    nop                                           ; $49fe: $00

jr_095_49ff:
    dec [hl]                                      ; $49ff: $35
    ld [$8a75], sp                                ; $4a00: $08 $75 $8a
    db $eb                                        ; $4a03: $eb
    inc d                                         ; $4a04: $14
    ld h, d                                       ; $4a05: $62
    cpl                                           ; $4a06: $2f
    ld [hl], c                                    ; $4a07: $71

Call_095_4a08:
    rst $18                                       ; $4a08: $df
    rra                                           ; $4a09: $1f
    nop                                           ; $4a0a: $00
    rst $08                                       ; $4a0b: $cf
    rst $08                                       ; $4a0c: $cf
    add a                                         ; $4a0d: $87
    db $dd                                        ; $4a0e: $dd
    add a                                         ; $4a0f: $87
    ld h, l                                       ; $4a10: $65
    sbc $ba                                       ; $4a11: $de $ba
    inc b                                         ; $4a13: $04
    ld a, [hl]                                    ; $4a14: $7e
    add e                                         ; $4a15: $83
    ld a, [hl]                                    ; $4a16: $7e
    pop bc                                        ; $4a17: $c1
    ccf                                           ; $4a18: $3f
    jr nc, jr_095_4a4c                            ; $4a19: $30 $31

    ld a, a                                       ; $4a1b: $7f
    ld a, a                                       ; $4a1c: $7f
    nop                                           ; $4a1d: $00
    ccf                                           ; $4a1e: $3f
    ccf                                           ; $4a1f: $3f
    rrca                                          ; $4a20: $0f
    ld c, a                                       ; $4a21: $4f
    rlca                                          ; $4a22: $07
    ld l, $07                                     ; $4a23: $2e $07
    sbc l                                         ; $4a25: $9d
    nop                                           ; $4a26: $00
    rrca                                          ; $4a27: $0f
    ld a, d                                       ; $4a28: $7a
    sbc a                                         ; $4a29: $9f
    push de                                       ; $4a2a: $d5
    rst $30                                       ; $4a2b: $f7
    jp z, $c4e1                                   ; $4a2c: $ca $e1 $c4

    inc b                                         ; $4a2f: $04
    pop bc                                        ; $4a30: $c1
    ld [c], a                                     ; $4a31: $e2
    pop bc                                        ; $4a32: $c1
    bit 6, c                                      ; $4a33: $cb $71
    or b                                          ; $4a35: $b0
    ld e, b                                       ; $4a36: $58
    add h                                         ; $4a37: $84
    ld a, a                                       ; $4a38: $7f
    nop                                           ; $4a39: $00
    ld a, a                                       ; $4a3a: $7f
    rst $38                                       ; $4a3b: $ff
    ei                                            ; $4a3c: $fb
    pop hl                                        ; $4a3d: $e1
    push hl                                       ; $4a3e: $e5
    ret nz                                        ; $4a3f: $c0

    ldh [$c0], a                                  ; $4a40: $e0 $c0
    nop                                           ; $4a42: $00
    reti                                          ; $4a43: $d9


    ldh [$cb], a                                  ; $4a44: $e0 $cb
    push af                                       ; $4a46: $f5
    rst $38                                       ; $4a47: $ff
    rst $38                                       ; $4a48: $ff
    sub $86                                       ; $4a49: $d6 $86
    nop                                           ; $4a4b: $00

jr_095_4a4c:
    ld d, c                                       ; $4a4c: $51
    ccf                                           ; $4a4d: $3f
    nop                                           ; $4a4e: $00
    rra                                           ; $4a4f: $1f
    ldh [$9f], a                                  ; $4a50: $e0 $9f
    add sp, -$49                                  ; $4a52: $e8 $b7
    nop                                           ; $4a54: $00
    jp nc, $f7ed                                  ; $4a55: $d2 $ed $f7

    ret z                                         ; $4a58: $c8

    ld c, d                                       ; $4a59: $4a
    dec d                                         ; $4a5a: $15
    ld h, $09                                     ; $4a5b: $26 $09
    nop                                           ; $4a5d: $00
    inc hl                                        ; $4a5e: $23
    ld [bc], a                                    ; $4a5f: $02
    add [hl]                                      ; $4a60: $86
    inc bc                                        ; $4a61: $03
    ld l, [hl]                                    ; $4a62: $6e
    add e                                         ; $4a63: $83
    rst $18                                       ; $4a64: $df
    rst $20                                       ; $4a65: $e7
    nop                                           ; $4a66: $00
    ld a, d                                       ; $4a67: $7a
    db $fc                                        ; $4a68: $fc
    or l                                          ; $4a69: $b5
    jr jr_095_4aeb                                ; $4a6a: $18 $7f

    rra                                           ; $4a6c: $1f
    pop hl                                        ; $4a6d: $e1
    cp $00                                        ; $4a6e: $fe $00
    dec c                                         ; $4a70: $0d
    ld [bc], a                                    ; $4a71: $02
    sbc e                                         ; $4a72: $9b
    inc c                                         ; $4a73: $0c
    ccf                                           ; $4a74: $3f
    ret nc                                        ; $4a75: $d0

    rst $20                                       ; $4a76: $e7
    ld hl, sp+$20                                 ; $4a77: $f8 $20
    rst $18                                       ; $4a79: $df
    ldh [$e2], a                                  ; $4a7a: $e0 $e2
    ld a, [bc]                                    ; $4a7c: $0a
    sbc $21                                       ; $4a7d: $de $21
    nop                                           ; $4a7f: $00
    rst $38                                       ; $4a80: $ff
    ld a, [hl+]                                   ; $4a81: $2a
    rlca                                          ; $4a82: $07
    push de                                       ; $4a83: $d5
    ld d, l                                       ; $4a84: $55
    xor d                                         ; $4a85: $aa
    ld a, a                                       ; $4a86: $7f
    add b                                         ; $4a87: $80
    inc b                                         ; $4a88: $04
    ld [$0802], sp                                ; $4a89: $08 $02 $08
    ld d, h                                       ; $4a8c: $54
    rlca                                          ; $4a8d: $07
    ld b, $55                                     ; $4a8e: $06 $55
    ld d, l                                       ; $4a90: $55
    xor d                                         ; $4a91: $aa
    rst $38                                       ; $4a92: $ff
    nop                                           ; $4a93: $00
    inc b                                         ; $4a94: $04
    ld [$0e53], sp                                ; $4a95: $08 $53 $0e
    ld a, a                                       ; $4a98: $7f
    nop                                           ; $4a99: $00
    ld b, b                                       ; $4a9a: $40
    rst $30                                       ; $4a9b: $f7
    ld c, b                                       ; $4a9c: $48

jr_095_4a9d:
    ld l, l                                       ; $4a9d: $6d
    sub d                                         ; $4a9e: $92
    dec bc                                        ; $4a9f: $0b
    db $f4                                        ; $4aa0: $f4
    ld d, $10                                     ; $4aa1: $16 $10
    jp hl                                         ; $4aa3: $e9


    ld [$70f7], sp                                ; $4aa4: $08 $f7 $70
    rrca                                          ; $4aa7: $0f
    adc [hl]                                      ; $4aa8: $8e
    ld [hl], c                                    ; $4aa9: $71
    ld [hl], b                                    ; $4aaa: $70
    adc a                                         ; $4aab: $8f
    add b                                         ; $4aac: $80
    ldh a, [$1f]                                  ; $4aad: $f0 $1f
    db $fc                                        ; $4aaf: $fc
    ld bc, $f807                                  ; $4ab0: $01 $07 $f8
    add hl, de                                    ; $4ab3: $19
    ld b, $c2                                     ; $4ab4: $06 $c2
    add b                                         ; $4ab6: $80
    ld a, [bc]                                    ; $4ab7: $0a
    rlca                                          ; $4ab8: $07
    nop                                           ; $4ab9: $00
    db $fd                                        ; $4aba: $fd
    dec bc                                        ; $4abb: $0b
    db $fc                                        ; $4abc: $fc
    ld d, a                                       ; $4abd: $57
    ld hl, sp-$13                                 ; $4abe: $f8 $ed
    ld b, b                                       ; $4ac0: $40
    ld a, [c]                                     ; $4ac1: $f2
    add e                                         ; $4ac2: $83
    ld c, $02                                     ; $4ac3: $0e $02
    ld bc, $0384                                  ; $4ac5: $01 $84 $03
    ld [bc], a                                    ; $4ac8: $02
    db $fc                                        ; $4ac9: $fc
    nop                                           ; $4aca: $00
    add sp, $14                                   ; $4acb: $e8 $14
    nop                                           ; $4acd: $00
    rst $38                                       ; $4ace: $ff
    dec b                                         ; $4acf: $05
    ld [bc], a                                    ; $4ad0: $02
    jr nc, @-$2f                                  ; $4ad1: $30 $cf

    ld [hl+], a                                   ; $4ad3: $22
    ld c, b                                       ; $4ad4: $48
    jr nc, jr_095_4a9d                            ; $4ad5: $30 $c6

    rrca                                          ; $4ad7: $0f
    inc de                                        ; $4ad8: $13
    inc c                                         ; $4ad9: $0c
    dec b                                         ; $4ada: $05
    ld e, h                                       ; $4adb: $5c
    dec b                                         ; $4adc: $05
    db $fd                                        ; $4add: $fd
    nop                                           ; $4ade: $00
    ld [bc], a                                    ; $4adf: $02
    rrca                                          ; $4ae0: $0f
    ldh a, [rNR21]                                ; $4ae1: $f0 $16
    add hl, bc                                    ; $4ae3: $09
    ei                                            ; $4ae4: $fb
    inc b                                         ; $4ae5: $04
    cp a                                          ; $4ae6: $bf
    ld bc, $6b40                                  ; $4ae7: $01 $40 $6b
    sub h                                         ; $4aea: $94

jr_095_4aeb:
    sub $29                                       ; $4aeb: $d6 $29
    xor l                                         ; $4aed: $ad
    ld d, d                                       ; $4aee: $52
    or b                                          ; $4aef: $b0
    rra                                           ; $4af0: $1f
    ret                                           ; $4af1: $c9


    ld c, d                                       ; $4af2: $4a
    inc bc                                        ; $4af3: $03
    ld h, b                                       ; $4af4: $60
    ld d, b                                       ; $4af5: $50
    ret c                                         ; $4af6: $d8

    daa                                           ; $4af7: $27
    ldh [$5f], a                                  ; $4af8: $e0 $5f
    ld a, [bc]                                    ; $4afa: $0a
    push af                                       ; $4afb: $f5
    ldh [$5f], a                                  ; $4afc: $e0 $5f
    jp nz, Jump_000_18a6                          ; $4afe: $c2 $a6 $18

    xor h                                         ; $4b01: $ac
    jr jr_095_4b82                                ; $4b02: $18 $7e

Call_095_4b04:
    add b                                         ; $4b04: $80
    ld a, a                                       ; $4b05: $7f
    add c                                         ; $4b06: $81
    rst $30                                       ; $4b07: $f7
    ld e, $fe                                     ; $4b08: $1e $fe
    nop                                           ; $4b0a: $00
    ld bc, $04f8                                  ; $4b0b: $01 $f8 $04
    ei                                            ; $4b0e: $fb
    inc bc                                        ; $4b0f: $03
    ld a, d                                       ; $4b10: $7a
    rlca                                          ; $4b11: $07
    dec e                                         ; $4b12: $1d
    nop                                           ; $4b13: $00
    add e                                         ; $4b14: $83
    ld a, h                                       ; $4b15: $7c
    add e                                         ; $4b16: $83
    ld [hl], b                                    ; $4b17: $70
    adc c                                         ; $4b18: $89
    ld [hl], a                                    ; $4b19: $77
    add a                                         ; $4b1a: $87
    ld [hl], h                                    ; $4b1b: $74
    ld [bc], a                                    ; $4b1c: $02
    adc a                                         ; $4b1d: $8f
    ld a, e                                       ; $4b1e: $7b
    add a                                         ; $4b1f: $87
    ld a, a                                       ; $4b20: $7f
    add b                                         ; $4b21: $80
    ld b, b                                       ; $4b22: $40
    jp nc, $c300                                  ; $4b23: $d2 $00 $c3

    nop                                           ; $4b26: $00
    db $e4                                        ; $4b27: $e4
    db $fd                                        ; $4b28: $fd
    or $f7                                        ; $4b29: $f6 $f7
    cp $f9                                        ; $4b2b: $fe $f9
    cp $cf                                        ; $4b2d: $fe $cf
    ld l, b                                       ; $4b2f: $68
    ldh a, [$f2]                                  ; $4b30: $f0 $f2
    rlca                                          ; $4b32: $07
    ld [$8007], a                                 ; $4b33: $ea $07 $80
    ld [hl], h                                    ; $4b36: $74
    ld [bc], a                                    ; $4b37: $02
    adc b                                         ; $4b38: $88
    ld hl, sp-$78                                 ; $4b39: $f8 $88
    nop                                           ; $4b3b: $00
    db $fc                                        ; $4b3c: $fc
    adc e                                         ; $4b3d: $8b
    db $fc                                        ; $4b3e: $fc
    adc e                                         ; $4b3f: $8b
    cp $89                                        ; $4b40: $fe $89
    cp $8b                                        ; $4b42: $fe $8b
    ld [hl], c                                    ; $4b44: $71
    cp $36                                        ; $4b45: $fe $36
    rla                                           ; $4b47: $17
    ld a, [de]                                    ; $4b48: $1a
    db $10                                        ; $4b49: $10
    ld b, c                                       ; $4b4a: $41
    rra                                           ; $4b4b: $1f
    adc c                                         ; $4b4c: $89
    cp $cb                                        ; $4b4d: $fe $cb
    jr jr_095_4b51                                ; $4b4f: $18 $00

jr_095_4b51:
    rla                                           ; $4b51: $17
    set 7, [hl]                                   ; $4b52: $cb $fe
    xor c                                         ; $4b54: $a9
    ld [$af00], sp                                ; $4b55: $08 $00 $af
    ld [$2f03], sp                                ; $4b58: $08 $03 $2f
    ld d, a                                       ; $4b5b: $57
    inc h                                         ; $4b5c: $24
    ld [bc], a                                    ; $4b5d: $02
    nop                                           ; $4b5e: $00
    add b                                         ; $4b5f: $80
    rst $38                                       ; $4b60: $ff
    ld d, l                                       ; $4b61: $55
    xor d                                         ; $4b62: $aa
    adc l                                         ; $4b63: $8d
    jp nz, $8146                                  ; $4b64: $c2 $46 $81

    jr nz, @-$39                                  ; $4b67: $20 $c5

    add d                                         ; $4b69: $82
    inc b                                         ; $4b6a: $04
    jr z, jr_095_4bb4                             ; $4b6b: $28 $47

    add b                                         ; $4b6d: $80
    push bc                                       ; $4b6e: $c5
    add d                                         ; $4b6f: $82
    ld [hl], a                                    ; $4b70: $77
    nop                                           ; $4b71: $00
    and b                                         ; $4b72: $a0
    db $dd                                        ; $4b73: $dd
    jp nz, $8324                                  ; $4b74: $c2 $24 $83

    add $89                                       ; $4b77: $c6 $89
    ld c, $00                                     ; $4b79: $0e $00
    ld sp, hl                                     ; $4b7b: $f9
    nop                                           ; $4b7c: $00
    rst $38                                       ; $4b7d: $ff
    sub $2b                                       ; $4b7e: $d6 $2b
    cp d                                          ; $4b80: $ba
    rst $00                                       ; $4b81: $c7

jr_095_4b82:
    rst $10                                       ; $4b82: $d7
    nop                                           ; $4b83: $00
    xor d                                         ; $4b84: $aa
    cp d                                          ; $4b85: $ba
    ld b, l                                       ; $4b86: $45
    or $09                                        ; $4b87: $f6 $09
    or e                                          ; $4b89: $b3
    adc $b6                                       ; $4b8a: $ce $b6
    nop                                           ; $4b8c: $00
    ret                                           ; $4b8d: $c9


    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    or [hl]                                       ; $4b90: $b6
    ld e, c                                       ; $4b91: $59
    db $fd                                        ; $4b92: $fd
    ld [de], a                                    ; $4b93: $12
    sub $00                                       ; $4b94: $d6 $00
    add hl, sp                                    ; $4b96: $39
    or h                                          ; $4b97: $b4
    ld c, e                                       ; $4b98: $4b
    sub $39                                       ; $4b99: $d6 $39
    cp h                                          ; $4b9b: $bc
    ld b, e                                       ; $4b9c: $43
    or $00                                        ; $4b9d: $f6 $00
    add hl, de                                    ; $4b9f: $19
    ld bc, $eaff                                  ; $4ba0: $01 $ff $ea
    sub l                                         ; $4ba3: $95
    xor a                                         ; $4ba4: $af
    pop de                                        ; $4ba5: $d1
    ld [$1500], a                                 ; $4ba6: $ea $00 $15
    cp a                                          ; $4ba9: $bf
    pop bc                                        ; $4baa: $c1
    xor [hl]                                      ; $4bab: $ae
    ld d, l                                       ; $4bac: $55
    or a                                          ; $4bad: $b7
    ret                                           ; $4bae: $c9


    xor [hl]                                      ; $4baf: $ae
    ld bc, $bed5                                  ; $4bb0: $01 $d5 $be
    pop bc                                        ; $4bb3: $c1

jr_095_4bb4:
    rst $10                                       ; $4bb4: $d7
    ld a, [hl+]                                   ; $4bb5: $2a
    cp [hl]                                       ; $4bb6: $be
    jp Jump_000_053a                              ; $4bb7: $c3 $3a $05


    nop                                           ; $4bba: $00
    add d                                         ; $4bbb: $82
    xor d                                         ; $4bbc: $aa
    ld d, l                                       ; $4bbd: $55
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    ld d, b                                       ; $4bc0: $50
    nop                                           ; $4bc1: $00
    cp a                                          ; $4bc2: $bf
    ld b, d                                       ; $4bc3: $42
    ld d, b                                       ; $4bc4: $50
    jr nc, jr_095_4bcf                            ; $4bc5: $30 $08

    or a                                          ; $4bc7: $b7
    ld c, b                                       ; $4bc8: $48
    rst $38                                       ; $4bc9: $ff
    db $10                                        ; $4bca: $10
    db $10                                        ; $4bcb: $10
    ld [$0025], sp                                ; $4bcc: $08 $25 $00

jr_095_4bcf:
    nop                                           ; $4bcf: $00
    or a                                          ; $4bd0: $b7
    call Call_095_51af                            ; $4bd1: $cd $af $51
    ei                                            ; $4bd4: $fb
    add l                                         ; $4bd5: $85
    db $eb                                        ; $4bd6: $eb
    nop                                           ; $4bd7: $00
    dec d                                         ; $4bd8: $15
    rst $38                                       ; $4bd9: $ff
    add c                                         ; $4bda: $81
    xor e                                         ; $4bdb: $ab
    ld d, l                                       ; $4bdc: $55
    inc bc                                        ; $4bdd: $03
    dec b                                         ; $4bde: $05
    inc hl                                        ; $4bdf: $23
    nop                                           ; $4be0: $00
    dec b                                         ; $4be1: $05
    rst $38                                       ; $4be2: $ff
    rst $38                                       ; $4be3: $ff
    ld de, $41ef                                  ; $4be4: $11 $ef $41
    cp a                                          ; $4be7: $bf
    dec d                                         ; $4be8: $15
    nop                                           ; $4be9: $00
    db $eb                                        ; $4bea: $eb
    dec b                                         ; $4beb: $05
    ei                                            ; $4bec: $fb
    ld b, l                                       ; $4bed: $45
    cp e                                          ; $4bee: $bb
    ld de, $15ef                                  ; $4bef: $11 $ef $15
    nop                                           ; $4bf2: $00
    db $eb                                        ; $4bf3: $eb
    call z, $0cbb                                 ; $4bf4: $cc $bb $0c
    ei                                            ; $4bf7: $fb
    adc $b9                                       ; $4bf8: $ce $b9
    ld c, $02                                     ; $4bfa: $0e $02
    ld sp, hl                                     ; $4bfc: $f9
    call z, $0fbb                                 ; $4bfd: $cc $bb $0f
    ld sp, hl                                     ; $4c00: $f9
    call $1004                                    ; $4c01: $cd $04 $10
    inc c                                         ; $4c04: $0c
    nop                                           ; $4c05: $00
    ei                                            ; $4c06: $fb
    call z, Call_000_0ebb                         ; $4c07: $cc $bb $0e
    ld sp, hl                                     ; $4c0a: $f9
    adc $b9                                       ; $4c0b: $ce $b9
    inc c                                         ; $4c0d: $0c
    ld bc, $84fb                                  ; $4c0e: $01 $fb $84
    bit 0, [hl]                                   ; $4c11: $cb $46
    add c                                         ; $4c13: $81
    call nz, $ac83                                ; $4c14: $c4 $83 $ac
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    add e                                         ; $4c19: $83
    ld b, a                                       ; $4c1a: $47
    add c                                         ; $4c1b: $81
    rst $00                                       ; $4c1c: $c7
    add c                                         ; $4c1d: $81
    ld b, l                                       ; $4c1e: $45
    add e                                         ; $4c1f: $83
    rst $00                                       ; $4c20: $c7
    nop                                           ; $4c21: $00
    add c                                         ; $4c22: $81
    ld [hl], a                                    ; $4c23: $77
    and c                                         ; $4c24: $a1
    db $ed                                        ; $4c25: $ed
    jp nz, $8315                                  ; $4c26: $c2 $15 $83

    adc a                                         ; $4c29: $8f
    nop                                           ; $4c2a: $00
    ret z                                         ; $4c2b: $c8

    ld c, a                                       ; $4c2c: $4f
    cp c                                          ; $4c2d: $b9
    push de                                       ; $4c2e: $d5
    cp d                                          ; $4c2f: $ba
    ld d, a                                       ; $4c30: $57
    cp c                                          ; $4c31: $b9
    rst $30                                       ; $4c32: $f7
    ld [bc], a                                    ; $4c33: $02
    sbc c                                         ; $4c34: $99
    xor d                                         ; $4c35: $aa
    rst $38                                       ; $4c36: $ff
    ld d, b                                       ; $4c37: $50
    nop                                           ; $4c38: $00
    ld d, l                                       ; $4c39: $55
    ld [bc], a                                    ; $4c3a: $02
    nop                                           ; $4c3b: $00
    nop                                           ; $4c3c: $00
    push bc                                       ; $4c3d: $c5
    ld b, $00                                     ; $4c3e: $06 $00
    ld e, h                                       ; $4c40: $5c
    rrca                                          ; $4c41: $0f
    ld d, l                                       ; $4c42: $55
    rst $38                                       ; $4c43: $ff
    dec h                                         ; $4c44: $25
    ld [hl], h                                    ; $4c45: $74
    nop                                           ; $4c46: $00
    dec h                                         ; $4c47: $25

jr_095_4c48:
    db $10                                        ; $4c48: $10
    ld b, b                                       ; $4c49: $40
    jr nz, jr_095_4c6d                            ; $4c4a: $20 $21

    rlca                                          ; $4c4c: $07
    ld [bc], a                                    ; $4c4d: $02
    ld [$0701], sp                                ; $4c4e: $08 $01 $07
    ld d, c                                       ; $4c51: $51
    rlca                                          ; $4c52: $07
    db $fd                                        ; $4c53: $fd
    jr nz, @+$09                                  ; $4c54: $20 $07

    dec b                                         ; $4c56: $05
    inc h                                         ; $4c57: $24
    inc bc                                        ; $4c58: $03
    ld b, c                                       ; $4c59: $41
    cp a                                          ; $4c5a: $bf
    ld bc, $51ff                                  ; $4c5b: $01 $ff $51
    ld bc, $45af                                  ; $4c5e: $01 $af $45
    cp e                                          ; $4c61: $bb
    ld d, c                                       ; $4c62: $51
    xor a                                         ; $4c63: $af
    dec b                                         ; $4c64: $05
    ei                                            ; $4c65: $fb
    ld [$9608], sp                                ; $4c66: $08 $08 $96
    ld a, [hl+]                                   ; $4c69: $2a
    ld [bc], a                                    ; $4c6a: $02
    nop                                           ; $4c6b: $00
    db $10                                        ; $4c6c: $10

jr_095_4c6d:
    cp b                                          ; $4c6d: $b8
    nop                                           ; $4c6e: $00
    ld d, h                                       ; $4c6f: $54
    ld [bc], a                                    ; $4c70: $02
    jr nz, @+$12                                  ; $4c71: $20 $10

    ld [$0800], sp                                ; $4c73: $08 $00 $08
    nop                                           ; $4c76: $00
    dec b                                         ; $4c77: $05
    nop                                           ; $4c78: $00
    dec d                                         ; $4c79: $15
    ld e, b                                       ; $4c7a: $58
    db $10                                        ; $4c7b: $10
    ld d, l                                       ; $4c7c: $55
    nop                                           ; $4c7d: $00
    db $fd                                        ; $4c7e: $fd
    cp b                                          ; $4c7f: $b8
    ld a, [hl-]                                   ; $4c80: $3a
    nop                                           ; $4c81: $00
    ld bc, $1002                                  ; $4c82: $01 $02 $10
    ld c, d                                       ; $4c85: $4a
    jr nz, jr_095_4c48                            ; $4c86: $20 $c0

    nop                                           ; $4c88: $00
    ld d, l                                       ; $4c89: $55
    xor e                                         ; $4c8a: $ab
    ld b, l                                       ; $4c8b: $45
    ld [hl], a                                    ; $4c8c: $77
    cp e                                          ; $4c8d: $bb
    ld a, $08                                     ; $4c8e: $3e $08
    ret nz                                        ; $4c90: $c0

    ld [$087a], sp                                ; $4c91: $08 $7a $08
    xor d                                         ; $4c94: $aa
    ld [hl], $08                                  ; $4c95: $36 $08
    dec b                                         ; $4c97: $05
    nop                                           ; $4c98: $00
    or d                                          ; $4c99: $b2
    ld c, $a2                                     ; $4c9a: $0e $a2
    ld l, d                                       ; $4c9c: $6a
    ld [$6ca9], sp                                ; $4c9d: $08 $a9 $6c
    nop                                           ; $4ca0: $00
    ld d, l                                       ; $4ca1: $55
    xor a                                         ; $4ca2: $af
    dec b                                         ; $4ca3: $05
    ld a, [$fd03]                                 ; $4ca4: $fa $03 $fd
    inc b                                         ; $4ca7: $04
    rst $38                                       ; $4ca8: $ff
    ld c, c                                       ; $4ca9: $49
    or a                                          ; $4caa: $b7
    ld d, c                                       ; $4cab: $51
    xor a                                         ; $4cac: $af
    inc b                                         ; $4cad: $04
    ld [$f709], sp                                ; $4cae: $08 $09 $f7
    ld d, b                                       ; $4cb1: $50
    ld bc, $000c                                  ; $4cb2: $01 $0c $00
    ld de, $07f5                                  ; $4cb5: $11 $f5 $07
    db $ed                                        ; $4cb8: $ed
    ld [de], a                                    ; $4cb9: $12
    ld h, a                                       ; $4cba: $67
    cp b                                          ; $4cbb: $b8
    nop                                           ; $4cbc: $00
    xor [hl]                                      ; $4cbd: $ae
    ld [hl], c                                    ; $4cbe: $71
    ld a, l                                       ; $4cbf: $7d
    and d                                         ; $4cc0: $a2
    or [hl]                                       ; $4cc1: $b6
    ld c, c                                       ; $4cc2: $49
    cp l                                          ; $4cc3: $bd
    ld h, d                                       ; $4cc4: $62
    add b                                         ; $4cc5: $80
    and l                                         ; $4cc6: $a5
    ld a, [bc]                                    ; $4cc7: $0a
    or [hl]                                       ; $4cc8: $b6
    set 3, [hl]                                   ; $4cc9: $cb $de
    or c                                          ; $4ccb: $b1
    or a                                          ; $4ccc: $b7
    ld e, b                                       ; $4ccd: $58
    jp c, $a700                                   ; $4cce: $da $00 $a7

    sub $bb                                       ; $4cd1: $d6 $bb
    db $db                                        ; $4cd3: $db
    or [hl]                                       ; $4cd4: $b6
    xor d                                         ; $4cd5: $aa
    rst $38                                       ; $4cd6: $ff
    ld bc, $ff00                                  ; $4cd7: $01 $00 $ff
    rst $10                                       ; $4cda: $d7
    xor c                                         ; $4cdb: $a9
    cp e                                          ; $4cdc: $bb
    push bc                                       ; $4cdd: $c5
    or a                                          ; $4cde: $b7
    ld c, c                                       ; $4cdf: $49
    rst $18                                       ; $4ce0: $df
    ld c, b                                       ; $4ce1: $48
    and c                                         ; $4ce2: $a1
    inc b                                         ; $4ce3: $04
    nop                                           ; $4ce4: $00
    ld hl, $34ab                                  ; $4ce5: $21 $ab $34
    db $10                                        ; $4ce8: $10
    ld b, c                                       ; $4ce9: $41
    cp a                                          ; $4cea: $bf
    ld b, l                                       ; $4ceb: $45
    inc bc                                        ; $4cec: $03
    cp e                                          ; $4ced: $bb
    dec d                                         ; $4cee: $15
    db $eb                                        ; $4cef: $eb
    ld d, l                                       ; $4cf0: $55
    xor e                                         ; $4cf1: $ab
    ld bc, $00be                                  ; $4cf2: $01 $be $00
    ldh [$0a], a                                  ; $4cf5: $e0 $0a
    nop                                           ; $4cf7: $00
    ld d, h                                       ; $4cf8: $54
    xor e                                         ; $4cf9: $ab
    db $fc                                        ; $4cfa: $fc
    ld [bc], a                                    ; $4cfb: $02
    ld d, h                                       ; $4cfc: $54
    xor e                                         ; $4cfd: $ab
    db $fd                                        ; $4cfe: $fd
    ld [bc], a                                    ; $4cff: $02
    ldh a, [rSC]                                  ; $4d00: $f0 $02
    ld [$0af0], sp                                ; $4d02: $08 $f0 $0a
    ld [bc], a                                    ; $4d05: $02
    ld a, [bc]                                    ; $4d06: $0a
    ld a, [hl]                                    ; $4d07: $7e
    add hl, bc                                    ; $4d08: $09
    inc b                                         ; $4d09: $04
    inc bc                                        ; $4d0a: $03
    ld b, c                                       ; $4d0b: $41
    ld a, $80                                     ; $4d0c: $3e $80
    nop                                           ; $4d0e: $00
    dec bc                                        ; $4d0f: $0b
    dec b                                         ; $4d10: $05
    ld a, [$0403]                                 ; $4d11: $fa $03 $04
    or d                                          ; $4d14: $b2
    ld b, l                                       ; $4d15: $45
    inc bc                                        ; $4d16: $03
    nop                                           ; $4d17: $00
    inc b                                         ; $4d18: $04
    inc de                                        ; $4d19: $13
    db $e4                                        ; $4d1a: $e4
    ld d, e                                       ; $4d1b: $53
    and h                                         ; $4d1c: $a4
    rst $38                                       ; $4d1d: $ff
    nop                                           ; $4d1e: $00
    ccf                                           ; $4d1f: $3f
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    adc a                                         ; $4d22: $8f
    ret nz                                        ; $4d23: $c0

    ld h, c                                       ; $4d24: $61
    ld a, [c]                                     ; $4d25: $f2
    ld a, [hl]                                    ; $4d26: $7e
    ei                                            ; $4d27: $fb
    ei                                            ; $4d28: $fb
    ld b, $ff                                     ; $4d29: $06 $ff
    ld a, h                                       ; $4d2b: $7c
    rst $38                                       ; $4d2c: $ff
    rst $20                                       ; $4d2d: $e7
    ld hl, sp+$36                                 ; $4d2e: $f8 $36
    jr jr_095_4d38                                ; $4d30: $18 $06

    jr c, jr_095_4d34                             ; $4d32: $38 $00

jr_095_4d34:
    ld bc, $0800                                  ; $4d34: $01 $00 $08
    rlca                                          ; $4d37: $07

jr_095_4d38:
    ld b, e                                       ; $4d38: $43
    inc a                                         ; $4d39: $3c
    rrca                                          ; $4d3a: $0f
    rlca                                          ; $4d3b: $07
    ld e, l                                       ; $4d3c: $5d
    ld [bc], a                                    ; $4d3d: $02
    nop                                           ; $4d3e: $00
    inc e                                         ; $4d3f: $1c
    inc e                                         ; $4d40: $1c
    inc hl                                        ; $4d41: $23
    ld bc, $0300                                  ; $4d42: $01 $00 $03
    inc b                                         ; $4d45: $04
    inc hl                                        ; $4d46: $23
    ld bc, $a3d4                                  ; $4d47: $01 $d4 $a3
    ld [hl], h                                    ; $4d4a: $74
    db $e3                                        ; $4d4b: $e3
    call nc, $0403                                ; $4d4c: $d4 $03 $04
    ld [bc], a                                    ; $4d4f: $02
    db $10                                        ; $4d50: $10
    ld [hl], c                                    ; $4d51: $71
    add h                                         ; $4d52: $84
    ld b, b                                       ; $4d53: $40
    ld c, d                                       ; $4d54: $4a
    add b                                         ; $4d55: $80
    ld a, [bc]                                    ; $4d56: $0a
    halt                                          ; $4d57: $76
    ld [$02ff], sp                                ; $4d58: $08 $ff $02
    db $fd                                        ; $4d5b: $fd
    db $fc                                        ; $4d5c: $fc
    rlca                                          ; $4d5d: $07
    adc [hl]                                      ; $4d5e: $8e
    sub b                                         ; $4d5f: $90
    ld a, [de]                                    ; $4d60: $1a
    jr c, @+$41                                   ; $4d61: $38 $3f

    rra                                           ; $4d63: $1f
    ld a, a                                       ; $4d64: $7f
    ld [de], a                                    ; $4d65: $12
    xor d                                         ; $4d66: $aa
    rla                                           ; $4d67: $17
    xor l                                         ; $4d68: $ad
    rlca                                          ; $4d69: $07
    inc de                                        ; $4d6a: $13
    nop                                           ; $4d6b: $00
    db $f4                                        ; $4d6c: $f4
    db $e3                                        ; $4d6d: $e3
    inc b                                         ; $4d6e: $04
    rlca                                          ; $4d6f: $07
    inc b                                         ; $4d70: $04
    dec bc                                        ; $4d71: $0b

jr_095_4d72:
    db $fc                                        ; $4d72: $fc
    di                                            ; $4d73: $f3
    jr jr_095_4d72                                ; $4d74: $18 $fc

    rlca                                          ; $4d76: $07
    ld hl, sp+$5b                                 ; $4d77: $f8 $5b
    dec bc                                        ; $4d79: $0b
    ret nz                                        ; $4d7a: $c0

    rrca                                          ; $4d7b: $0f
    ld [bc], a                                    ; $4d7c: $02
    inc bc                                        ; $4d7d: $03
    ld [bc], a                                    ; $4d7e: $02
    nop                                           ; $4d7f: $00
    rlca                                          ; $4d80: $07
    ld a, [$fa07]                                 ; $4d81: $fa $07 $fa
    rrca                                          ; $4d84: $0f
    ld a, [c]                                     ; $4d85: $f2
    rrca                                          ; $4d86: $0f
    ld a, [$0f40]                                 ; $4d87: $fa $40 $0f
    ret nc                                        ; $4d8a: $d0

    rrca                                          ; $4d8b: $0f
    db $10                                        ; $4d8c: $10
    rra                                           ; $4d8d: $1f
    db $10                                        ; $4d8e: $10
    ccf                                           ; $4d8f: $3f
    ret nc                                        ; $4d90: $d0

    ccf                                           ; $4d91: $3f
    nop                                           ; $4d92: $00
    ret nc                                        ; $4d93: $d0

    ld a, a                                       ; $4d94: $7f
    sub b                                         ; $4d95: $90
    ld a, a                                       ; $4d96: $7f
    ret nc                                        ; $4d97: $d0

    ld a, a                                       ; $4d98: $7f
    jp nc, Jump_000_0a4f                          ; $4d99: $d2 $4f $0a

    ld a, [$926f]                                 ; $4d9c: $fa $6f $92
    ld l, a                                       ; $4d9f: $6f
    inc e                                         ; $4da0: $1c

jr_095_4da1:
    jr jr_095_4da1                                ; $4da1: $18 $fe

    call nz, Call_095_4b04                        ; $4da3: $c4 $04 $4b
    nop                                           ; $4da6: $00
    ld a, [c]                                     ; $4da7: $f2
    ld e, a                                       ; $4da8: $5f
    or $49                                        ; $4da9: $f6 $49
    or $5f                                        ; $4dab: $f6 $5f
    ldh a, [rVBK]                                 ; $4dad: $f0 $4f
    ld [$5ff0], sp                                ; $4daf: $08 $f0 $5f
    ldh a, [$7f]                                  ; $4db2: $f0 $7f
    call nc, $9004                                ; $4db4: $d4 $04 $90
    ld a, a                                       ; $4db7: $7f
    pop de                                        ; $4db8: $d1
    adc e                                         ; $4db9: $8b
    jr z, jr_095_4dbc                             ; $4dba: $28 $00

jr_095_4dbc:
    pop de                                        ; $4dbc: $d1
    ld a, a                                       ; $4dbd: $7f
    sub d                                         ; $4dbe: $92
    ld [$f200], sp                                ; $4dbf: $08 $00 $f2
    db $e4                                        ; $4dc2: $e4
    inc b                                         ; $4dc3: $04
    ret nc                                        ; $4dc4: $d0

    cpl                                           ; $4dc5: $2f
    call Call_000_0606                            ; $4dc6: $cd $06 $06
    and d                                         ; $4dc9: $a2
    dec b                                         ; $4dca: $05
    or a                                          ; $4dcb: $b7
    dec bc                                        ; $4dcc: $0b
    ld c, h                                       ; $4dcd: $4c
    ld e, $f0                                     ; $4dce: $1e $f0
    ccf                                           ; $4dd0: $3f
    db $fd                                        ; $4dd1: $fd
    jr c, jr_095_4dda                             ; $4dd2: $38 $06

    db $10                                        ; $4dd4: $10
    ei                                            ; $4dd5: $fb
    ld b, $ef                                     ; $4dd6: $06 $ef
    ld [hl], b                                    ; $4dd8: $70
    nop                                           ; $4dd9: $00

jr_095_4dda:
    cp d                                          ; $4dda: $ba
    ld b, l                                       ; $4ddb: $45
    ei                                            ; $4ddc: $fb
    inc c                                         ; $4ddd: $0c
    nop                                           ; $4dde: $00
    rst $38                                       ; $4ddf: $ff
    inc c                                         ; $4de0: $0c
    cp $0c                                        ; $4de1: $fe $0c
    ld l, e                                       ; $4de3: $6b
    adc h                                         ; $4de4: $8c
    di                                            ; $4de5: $f3
    inc c                                         ; $4de6: $0c
    nop                                           ; $4de7: $00
    di                                            ; $4de8: $f3
    dec c                                         ; $4de9: $0d
    cp e                                          ; $4dea: $bb
    inc b                                         ; $4deb: $04
    rst $38                                       ; $4dec: $ff
    inc c                                         ; $4ded: $0c
    db $e3                                        ; $4dee: $e3
    inc e                                         ; $4def: $1c
    nop                                           ; $4df0: $00
    rst $30                                       ; $4df1: $f7
    inc c                                         ; $4df2: $0c
    push de                                       ; $4df3: $d5
    ld c, $f7                                     ; $4df4: $0e $f7
    inc c                                         ; $4df6: $0c
    rst $30                                       ; $4df7: $f7
    inc c                                         ; $4df8: $0c
    inc b                                         ; $4df9: $04
    di                                            ; $4dfa: $f3

jr_095_4dfb:
    inc c                                         ; $4dfb: $0c
    ld a, a                                       ; $4dfc: $7f
    ld b, $fe                                     ; $4dfd: $06 $fe
    ld [de], a                                    ; $4dff: $12
    ld [bc], a                                    ; $4e00: $02
    cp l                                          ; $4e01: $bd
    ld b, d                                       ; $4e02: $42
    nop                                           ; $4e03: $00
    cp [hl]                                       ; $4e04: $be
    ld h, c                                       ; $4e05: $61
    rst $30                                       ; $4e06: $f7
    ld b, b                                       ; $4e07: $40
    ld a, c                                       ; $4e08: $79
    add $5f                                       ; $4e09: $c6 $5f
    cp [hl]                                       ; $4e0b: $be
    nop                                           ; $4e0c: $00
    cp a                                          ; $4e0d: $bf
    ld [c], a                                     ; $4e0e: $e2
    rst $28                                       ; $4e0f: $ef
    ld [hl-], a                                   ; $4e10: $32
    ld a, l                                       ; $4e11: $7d
    ld h, $ff                                     ; $4e12: $26 $ff
    inc h                                         ; $4e14: $24
    nop                                           ; $4e15: $00
    ld a, [$778c]                                 ; $4e16: $fa $8c $77
    ret c                                         ; $4e19: $d8

    rst $38                                       ; $4e1a: $ff
    jr nc, jr_095_4dfb                            ; $4e1b: $30 $de

    ld hl, $bb00                                  ; $4e1d: $21 $00 $bb
    ld h, b                                       ; $4e20: $60
    cp a                                          ; $4e21: $bf
    ld b, b                                       ; $4e22: $40
    rst $28                                       ; $4e23: $ef
    ret nc                                        ; $4e24: $d0

    ld a, a                                       ; $4e25: $7f
    add b                                         ; $4e26: $80
    add h                                         ; $4e27: $84
    ld h, b                                       ; $4e28: $60
    jr nz, jr_095_4e34                            ; $4e29: $20 $09

    ld a, a                                       ; $4e2b: $7f
    inc bc                                        ; $4e2c: $03
    rst $38                                       ; $4e2d: $ff
    ld [hl-], a                                   ; $4e2e: $32
    nop                                           ; $4e2f: $00
    cp a                                          ; $4e30: $bf
    ld c, a                                       ; $4e31: $4f
    nop                                           ; $4e32: $00
    rst $30                                       ; $4e33: $f7

jr_095_4e34:
    rrca                                          ; $4e34: $0f
    cp [hl]                                       ; $4e35: $be
    ld a, l                                       ; $4e36: $7d
    rst $30                                       ; $4e37: $f7
    rst $28                                       ; $4e38: $ef
    sbc a                                         ; $4e39: $9f
    cp a                                          ; $4e3a: $bf
    ld h, b                                       ; $4e3b: $60
    ccf                                           ; $4e3c: $3f
    cp d                                          ; $4e3d: $ba
    inc b                                         ; $4e3e: $04
    inc e                                         ; $4e3f: $1c
    ld c, $fa                                     ; $4e40: $0e $fa
    dec l                                         ; $4e42: $2d
    sub $39                                       ; $4e43: $d6 $39
    rst $18                                       ; $4e45: $df
    nop                                           ; $4e46: $00
    ld [bc], a                                    ; $4e47: $02
    cp h                                          ; $4e48: $bc
    jp $feab                                      ; $4e49: $c3 $ab $fe


    sub a                                         ; $4e4c: $97
    ld a, [hl]                                    ; $4e4d: $7e
    rst $30                                       ; $4e4e: $f7
    dec b                                         ; $4e4f: $05
    ld c, $d9                                     ; $4e50: $0e $d9
    add h                                         ; $4e52: $84
    db $dd                                        ; $4e53: $dd
    add d                                         ; $4e54: $82
    ld [hl], b                                    ; $4e55: $70
    ld e, a                                       ; $4e56: $5f
    rst $00                                       ; $4e57: $c7
    daa                                           ; $4e58: $27
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    cp a                                          ; $4e5b: $bf
    rst $00                                       ; $4e5c: $c7
    rst $18                                       ; $4e5d: $df
    rst $28                                       ; $4e5e: $ef
    rst $38                                       ; $4e5f: $ff
    ld a, a                                       ; $4e60: $7f
    di                                            ; $4e61: $f3
    ccf                                           ; $4e62: $3f
    ld [$77ab], sp                                ; $4e63: $08 $ab $77
    rst $30                                       ; $4e66: $f7
    ld l, a                                       ; $4e67: $6f
    dec de                                        ; $4e68: $1b
    dec d                                         ; $4e69: $15
    rst $38                                       ; $4e6a: $ff
    cp a                                          ; $4e6b: $bf
    rst $38                                       ; $4e6c: $ff
    ld [$efd7], sp                                ; $4e6d: $08 $d7 $ef
    di                                            ; $4e70: $f3
    db $fc                                        ; $4e71: $fc
    cp l                                          ; $4e72: $bd
    dec b                                         ; $4e73: $05
    rst $38                                       ; $4e74: $ff
    ei                                            ; $4e75: $fb
    call nz, $b300                                ; $4e76: $c4 $00 $b3
    ld l, h                                       ; $4e79: $6c
    rst $38                                       ; $4e7a: $ff
    inc c                                         ; $4e7b: $0c
    ld a, e                                       ; $4e7c: $7b
    adc h                                         ; $4e7d: $8c
    ld a, a                                       ; $4e7e: $7f
    add sp, $02                                   ; $4e7f: $e8 $02
    ei                                            ; $4e81: $fb
    ld c, h                                       ; $4e82: $4c
    cp a                                          ; $4e83: $bf
    call z, $8cbf                                 ; $4e84: $cc $bf $8c
    dec e                                         ; $4e87: $1d
    nop                                           ; $4e88: $00
    ld a, a                                       ; $4e89: $7f
    nop                                           ; $4e8a: $00
    rst $28                                       ; $4e8b: $ef

jr_095_4e8c:
    ld a, a                                       ; $4e8c: $7f
    or $6f                                        ; $4e8d: $f6 $6f
    rst $30                                       ; $4e8f: $f7
    ld l, a                                       ; $4e90: $6f
    rst $20                                       ; $4e91: $e7
    ld a, a                                       ; $4e92: $7f
    jr jr_095_4e8c                                ; $4e93: $18 $f7

    ld l, a                                       ; $4e95: $6f
    or a                                          ; $4e96: $b7
    ld h, l                                       ; $4e97: $65
    jr @-$79                                      ; $4e98: $18 $85

    ld b, $bf                                     ; $4e9a: $06 $bf
    rst $38                                       ; $4e9c: $ff
    di                                            ; $4e9d: $f3
    add b                                         ; $4e9e: $80
    call c, $c41d                                 ; $4e9f: $dc $1d $c4
    db $eb                                        ; $4ea2: $eb
    ld [hl], h                                    ; $4ea3: $74
    ld a, l                                       ; $4ea4: $7d
    ld b, $fb                                     ; $4ea5: $06 $fb
    ld b, $03                                     ; $4ea7: $06 $03
    sbc a                                         ; $4ea9: $9f
    ld a, [hl]                                    ; $4eaa: $7e
    rst $00                                       ; $4eab: $c7
    ei                                            ; $4eac: $fb
    rla                                           ; $4ead: $17
    ret                                           ; $4eae: $c9


    inc d                                         ; $4eaf: $14
    ld h, $10                                     ; $4eb0: $26 $10
    ld bc, $ff00                                  ; $4eb2: $01 $00 $ff
    nop                                           ; $4eb5: $00
    cp [hl]                                       ; $4eb6: $be
    ld b, c                                       ; $4eb7: $41
    rst $30                                       ; $4eb8: $f7
    ld [$807f], sp                                ; $4eb9: $08 $7f $80
    nop                                           ; $4ebc: $00
    rst $38                                       ; $4ebd: $ff
    ccf                                           ; $4ebe: $3f
    ld e, a                                       ; $4ebf: $5f
    cp a                                          ; $4ec0: $bf
    rst $38                                       ; $4ec1: $ff
    rra                                           ; $4ec2: $1f
    rst $08                                       ; $4ec3: $cf
    ccf                                           ; $4ec4: $3f
    nop                                           ; $4ec5: $00
    add a                                         ; $4ec6: $87
    ccf                                           ; $4ec7: $3f
    jp $e03f                                      ; $4ec8: $c3 $3f $e0


    rra                                           ; $4ecb: $1f
    ret nc                                        ; $4ecc: $d0

    cpl                                           ; $4ecd: $2f
    add b                                         ; $4ece: $80
    ret nz                                        ; $4ecf: $c0

    ld e, [hl]                                    ; $4ed0: $5e
    rra                                           ; $4ed1: $1f
    rst $38                                       ; $4ed2: $ff
    rst $28                                       ; $4ed3: $ef
    ldh a, [$7d]                                  ; $4ed4: $f0 $7d
    cp $f7                                        ; $4ed6: $fe $f7
    ldh a, [rLY]                                  ; $4ed8: $f0 $44
    ld c, $d9                                     ; $4eda: $0e $d9
    ld l, $fe                                     ; $4edc: $2e $fe
    rlca                                          ; $4ede: $07
    sub b                                         ; $4edf: $90
    rlca                                          ; $4ee0: $07
    add b                                         ; $4ee1: $80
    rst $38                                       ; $4ee2: $ff
    ret nz                                        ; $4ee3: $c0

    rst $38                                       ; $4ee4: $ff
    inc b                                         ; $4ee5: $04
    ld h, b                                       ; $4ee6: $60
    rst $30                                       ; $4ee7: $f7
    xor b                                         ; $4ee8: $a8
    sbc l                                         ; $4ee9: $9d
    or b                                          ; $4eea: $b0
    ldh a, [$0e]                                  ; $4eeb: $f0 $0e
    cp $ff                                        ; $4eed: $fe $ff
    ld bc, $fefc                                  ; $4eef: $01 $fc $fe
    ldh [$fd], a                                  ; $4ef2: $e0 $fd
    ld d, c                                       ; $4ef4: $51
    inc bc                                        ; $4ef5: $03
    adc d                                         ; $4ef6: $8a
    db $fd                                        ; $4ef7: $fd
    ld b, $00                                     ; $4ef8: $06 $00
    reti                                          ; $4efa: $d9


    cp [hl]                                       ; $4efb: $be
    inc e                                         ; $4efc: $1c
    cp l                                          ; $4efd: $bd
    ld l, $73                                     ; $4efe: $2e $73
    ld d, a                                       ; $4f00: $57
    rst $38                                       ; $4f01: $ff
    nop                                           ; $4f02: $00
    cp a                                          ; $4f03: $bf
    cp $7f                                        ; $4f04: $fe $7f
    db $fc                                        ; $4f06: $fc
    call Call_095_57fe                            ; $4f07: $cd $fe $57
    adc [hl]                                      ; $4f0a: $8e
    nop                                           ; $4f0b: $00
    db $fc                                        ; $4f0c: $fc
    rst $38                                       ; $4f0d: $ff
    ld a, [c]                                     ; $4f0e: $f2
    ld hl, sp-$57                                 ; $4f0f: $f8 $a9
    db $f4                                        ; $4f11: $f4
    db $f4                                        ; $4f12: $f4
    ld a, [$fa10]                                 ; $4f13: $fa $10 $fa
    rst $38                                       ; $4f16: $ff
    cp a                                          ; $4f17: $bf
    ld bc, $fe01                                  ; $4f18: $01 $01 $fe

jr_095_4f1b:
    rst $38                                       ; $4f1b: $ff
    rlca                                          ; $4f1c: $07
    ld c, $00                                     ; $4f1d: $0e $00
    sbc a                                         ; $4f1f: $9f
    ld c, $07                                     ; $4f20: $0e $07
    ld e, $af                                     ; $4f22: $1e $af
    ld e, $47                                     ; $4f24: $1e $47
    cp [hl]                                       ; $4f26: $be
    inc bc                                        ; $4f27: $03
    add e                                         ; $4f28: $83
    xor $57                                       ; $4f29: $ee $57
    add [hl]                                      ; $4f2b: $86
    push hl                                       ; $4f2c: $e5
    ld c, $d6                                     ; $4f2d: $0e $d6
    rlca                                          ; $4f2f: $07
    inc h                                         ; $4f30: $24
    ld [bc], a                                    ; $4f31: $02
    sub b                                         ; $4f32: $90
    adc d                                         ; $4f33: $8a
    add hl, bc                                    ; $4f34: $09
    rst $28                                       ; $4f35: $ef
    db $10                                        ; $4f36: $10
    ld hl, sp+$0f                                 ; $4f37: $f8 $0f
    ld d, a                                       ; $4f39: $57
    adc h                                         ; $4f3a: $8c
    xor e                                         ; $4f3b: $ab
    call c, Call_095_5d01                         ; $4f3c: $dc $01 $5d
    ld a, [$fcb3]                                 ; $4f3f: $fa $b3 $fc
    db $e3                                        ; $4f42: $e3
    db $fc                                        ; $4f43: $fc
    jp $0212                                      ; $4f44: $c3 $12 $02


    jr nc, jr_095_4f54                            ; $4f47: $30 $0b

    db $f4                                        ; $4f49: $f4
    ld [hl], b                                    ; $4f4a: $70
    jr nz, jr_095_4f1b                            ; $4f4b: $20 $ce

    ld d, $f7                                     ; $4f4d: $16 $f7
    ld [$00dd], sp                                ; $4f4f: $08 $dd $00
    nop                                           ; $4f52: $00
    or e                                          ; $4f53: $b3

jr_095_4f54:
    call z, $78ef                                 ; $4f54: $cc $ef $78
    db $ed                                        ; $4f57: $ed
    ld [hl-], a                                   ; $4f58: $32
    rst $38                                       ; $4f59: $ff
    stop                                          ; $4f5a: $10 $00
    cp a                                          ; $4f5c: $bf
    ld e, b                                       ; $4f5d: $58
    rst $20                                       ; $4f5e: $e7
    add hl, de                                    ; $4f5f: $19
    ld a, d                                       ; $4f60: $7a
    dec c                                         ; $4f61: $0d
    rst $38                                       ; $4f62: $ff
    inc b                                         ; $4f63: $04
    nop                                           ; $4f64: $00
    xor $18                                       ; $4f65: $ee $18
    ld l, e                                       ; $4f67: $6b
    adc h                                         ; $4f68: $8c
    cp a                                          ; $4f69: $bf
    ld c, h                                       ; $4f6a: $4c
    cp $45                                        ; $4f6b: $fe $45
    nop                                           ; $4f6d: $00
    ld sp, hl                                     ; $4f6e: $f9
    jp nz, $c2bd                                  ; $4f6f: $c2 $bd $c2

    rst $30                                       ; $4f72: $f7
    ld hl, sp-$22                                 ; $4f73: $f8 $de
    ld h, e                                       ; $4f75: $63
    ld [$01ff], sp                                ; $4f76: $08 $ff $01
    ld a, [$8c05]                                 ; $4f79: $fa $05 $8c
    rrca                                          ; $4f7c: $0f
    rst $18                                       ; $4f7d: $df
    ld bc, $80fa                                  ; $4f7e: $01 $fa $80
    sub h                                         ; $4f81: $94
    rlca                                          ; $4f82: $07
    cp [hl]                                       ; $4f83: $be
    ld bc, $06fb                                  ; $4f84: $01 $fb $06
    rst $38                                       ; $4f87: $ff
    ld [bc], a                                    ; $4f88: $02
    db $dd                                        ; $4f89: $dd
    jr c, jr_095_4f8f                             ; $4f8a: $38 $03

    rst $38                                       ; $4f8c: $ff
    add b                                         ; $4f8d: $80
    ld [bc], a                                    ; $4f8e: $02

jr_095_4f8f:
    and b                                         ; $4f8f: $a0
    rlca                                          ; $4f90: $07
    ld b, b                                       ; $4f91: $40
    nop                                           ; $4f92: $00
    rst $18                                       ; $4f93: $df
    add e                                         ; $4f94: $83
    ld [hl], a                                    ; $4f95: $77
    nop                                           ; $4f96: $00
    ld sp, hl                                     ; $4f97: $f9
    rst $38                                       ; $4f98: $ff
    nop                                           ; $4f99: $00
    db $eb                                        ; $4f9a: $eb
    dec e                                         ; $4f9b: $1d
    or l                                          ; $4f9c: $b5
    rst $38                                       ; $4f9d: $ff
    ld c, a                                       ; $4f9e: $4f
    ld bc, $7ff0                                  ; $4f9f: $01 $f0 $7f
    add b                                         ; $4fa2: $80
    cp e                                          ; $4fa3: $bb
    call nz, $01ff                                ; $4fa4: $c4 $ff $01
    ld a, [de]                                    ; $4fa7: $1a
    ld [bc], a                                    ; $4fa8: $02
    nop                                           ; $4fa9: $00
    add c                                         ; $4faa: $81
    ld a, [$fe81]                                 ; $4fab: $fa $81 $fe
    add c                                         ; $4fae: $81
    ld a, [hl]                                    ; $4faf: $7e
    add c                                         ; $4fb0: $81
    ld d, a                                       ; $4fb1: $57
    nop                                           ; $4fb2: $00
    ret                                           ; $4fb3: $c9


    ld a, [hl]                                    ; $4fb4: $7e
    pop bc                                        ; $4fb5: $c1
    or $85                                        ; $4fb6: $f6 $85
    db $fd                                        ; $4fb8: $fd
    call c, Call_000_00af                         ; $4fb9: $dc $af $00
    db $f4                                        ; $4fbc: $f4
    db $dd                                        ; $4fbd: $dd
    cp $9f                                        ; $4fbe: $fe $9f
    ld [c], a                                     ; $4fc0: $e2
    rst $38                                       ; $4fc1: $ff
    add d                                         ; $4fc2: $82
    ld a, a                                       ; $4fc3: $7f
    nop                                           ; $4fc4: $00
    jp nz, $cefd                                  ; $4fc5: $c2 $fd $ce

    cp [hl]                                       ; $4fc8: $be
    pop bc                                        ; $4fc9: $c1
    or $c1                                        ; $4fca: $f6 $c1
    db $fd                                        ; $4fcc: $fd
    nop                                           ; $4fcd: $00
    ld b, e                                       ; $4fce: $43
    cp $41                                        ; $4fcf: $fe $41
    cp a                                          ; $4fd1: $bf
    pop bc                                        ; $4fd2: $c1
    xor $d1                                       ; $4fd3: $ee $d1
    ld a, a                                       ; $4fd5: $7f
    nop                                           ; $4fd6: $00
    pop bc                                        ; $4fd7: $c1
    cp d                                          ; $4fd8: $ba
    pop bc                                        ; $4fd9: $c1
    rst $38                                       ; $4fda: $ff
    nop                                           ; $4fdb: $00
    rst $18                                       ; $4fdc: $df
    jr nz, jr_095_505d                            ; $4fdd: $20 $7e

    ld hl, $fb01                                  ; $4fdf: $21 $01 $fb
    ldh a, [rTAC]                                 ; $4fe2: $f0 $07
    rst $38                                       ; $4fe4: $ff
    inc bc                                        ; $4fe5: $03
    sub $0b                                       ; $4fe6: $d6 $0b
    and e                                         ; $4fe8: $a3
    rlca                                          ; $4fe9: $07
    nop                                           ; $4fea: $00
    sub [hl]                                      ; $4feb: $96
    ld l, l                                       ; $4fec: $6d
    sbc [hl]                                      ; $4fed: $9e
    rst $38                                       ; $4fee: $ff
    add d                                         ; $4fef: $82
    rst $28                                       ; $4ff0: $ef
    add [hl]                                      ; $4ff1: $86
    ld c, [hl]                                    ; $4ff2: $4e
    nop                                           ; $4ff3: $00
    pop af                                        ; $4ff4: $f1
    cp a                                          ; $4ff5: $bf
    rst $38                                       ; $4ff6: $ff
    db $eb                                        ; $4ff7: $eb
    dec e                                         ; $4ff8: $1d
    rst $38                                       ; $4ff9: $ff
    ld bc, $007f                                  ; $4ffa: $01 $7f $00
    pop bc                                        ; $4ffd: $c1
    cp $c1                                        ; $4ffe: $fe $c1
    db $dd                                        ; $5000: $dd
    ld b, e                                       ; $5001: $43
    cp [hl]                                       ; $5002: $be
    pop bc                                        ; $5003: $c1
    rst $38                                       ; $5004: $ff
    nop                                           ; $5005: $00
    add b                                         ; $5006: $80
    cp $81                                        ; $5007: $fe $81
    ld [hl], a                                    ; $5009: $77
    adc c                                         ; $500a: $89
    call c, $f401                                 ; $500b: $dc $01 $f4
    ld c, h                                       ; $500e: $4c

Jump_095_500f:
    inc bc                                        ; $500f: $03
    ld h, d                                       ; $5010: $62
    ld [bc], a                                    ; $5011: $02
    ld bc, $66ee                                  ; $5012: $01 $ee $66
    ld [$0792], sp                                ; $5015: $08 $92 $07
    or l                                          ; $5018: $b5
    ld [$db00], sp                                ; $5019: $08 $00 $db
    inc a                                         ; $501c: $3c
    or l                                          ; $501d: $b5
    ld h, [hl]                                    ; $501e: $66
    cp $4b                                        ; $501f: $fe $4b
    rst $18                                       ; $5021: $df
    ld h, l                                       ; $5022: $65
    nop                                           ; $5023: $00
    cp a                                          ; $5024: $bf
    db $fd                                        ; $5025: $fd
    xor $93                                       ; $5026: $ee $93
    ld a, l                                       ; $5028: $7d
    add $fb                                       ; $5029: $c6 $fb
    ld b, b                                       ; $502b: $40
    ret nz                                        ; $502c: $c0

    nop                                           ; $502d: $00
    ld [bc], a                                    ; $502e: $02
    ld c, h                                       ; $502f: $4c
    ld bc, $48b7                                  ; $5030: $01 $b7 $48
    ld a, l                                       ; $5033: $7d
    ld b, b                                       ; $5034: $40
    rst $18                                       ; $5035: $df
    jr nz, jr_095_5038                            ; $5036: $20 $00

jr_095_5038:
    rst $38                                       ; $5038: $ff
    jr nc, @-$07                                  ; $5039: $30 $f7

    ld a, b                                       ; $503b: $78
    add sp, $17                                   ; $503c: $e8 $17
    call nc, $162b                                ; $503e: $d4 $2b $16
    ld a, d                                       ; $5041: $7a
    dec b                                         ; $5042: $05
    ei                                            ; $5043: $fb
    cp [hl]                                       ; $5044: $be
    rla                                           ; $5045: $17
    rst $10                                       ; $5046: $d7
    ld b, [hl]                                    ; $5047: $46
    rlca                                          ; $5048: $07
    rst $00                                       ; $5049: $c7
    rrca                                          ; $504a: $0f
    add b                                         ; $504b: $80
    ld [hl], b                                    ; $504c: $70
    ld a, a                                       ; $504d: $7f
    and d                                         ; $504e: $a2
    ld c, $b0                                     ; $504f: $0e $b0
    add hl, bc                                    ; $5051: $09
    ld a, [hl]                                    ; $5052: $7e
    nop                                           ; $5053: $00
    ld h, b                                       ; $5054: $60
    cp [hl]                                       ; $5055: $be
    ld h, c                                       ; $5056: $61
    ld sp, hl                                     ; $5057: $f9
    nop                                           ; $5058: $00
    scf                                           ; $5059: $37
    rst $28                                       ; $505a: $ef
    inc e                                         ; $505b: $1c
    di                                            ; $505c: $f3

jr_095_505d:
    inc c                                         ; $505d: $0c
    rst $38                                       ; $505e: $ff
    ld b, $f5                                     ; $505f: $06 $f5
    nop                                           ; $5061: $00
    dec bc                                        ; $5062: $0b
    db $dd                                        ; $5063: $dd
    ld bc, $ce1d                                  ; $5064: $01 $1d $ce
    db $fd                                        ; $5067: $fd
    add [hl]                                      ; $5068: $86
    rst $38                                       ; $5069: $ff
    nop                                           ; $506a: $00
    inc bc                                        ; $506b: $03
    db $db                                        ; $506c: $db
    dec a                                         ; $506d: $3d
    ld a, l                                       ; $506e: $7d
    xor $fe                                       ; $506f: $ee $fe
    ld h, e                                       ; $5071: $63
    rst $38                                       ; $5072: $ff
    db $10                                        ; $5073: $10
    ld sp, $d9bf                                  ; $5074: $31 $bf $d9
    and b                                         ; $5077: $a0
    ld [$007f], sp                                ; $5078: $08 $7f $00
    ld a, e                                       ; $507b: $7b
    add b                                         ; $507c: $80
    nop                                           ; $507d: $00
    cp a                                          ; $507e: $bf
    ret nz                                        ; $507f: $c0

    adc a                                         ; $5080: $8f
    ld [hl], b                                    ; $5081: $70
    ld e, a                                       ; $5082: $5f
    adc b                                         ; $5083: $88
    rst $30                                       ; $5084: $f7
    adc a                                         ; $5085: $8f
    nop                                           ; $5086: $00
    cp a                                          ; $5087: $bf
    rst $08                                       ; $5088: $cf
    cp c                                          ; $5089: $b9
    ld h, [hl]                                    ; $508a: $66
    rst $38                                       ; $508b: $ff
    jr nc, @+$01                                  ; $508c: $30 $ff

    jr jr_095_5090                                ; $508e: $18 $00

jr_095_5090:
    db $d3                                        ; $5090: $d3
    inc l                                         ; $5091: $2c
    rst $38                                       ; $5092: $ff
    rlca                                          ; $5093: $07
    cp $01                                        ; $5094: $fe $01
    or l                                          ; $5096: $b5
    ld [$ee00], sp                                ; $5097: $08 $00 $ee
    add hl, de                                    ; $509a: $19
    rst $20                                       ; $509b: $e7
    jr nc, @-$22                                  ; $509c: $30 $dc

    inc hl                                        ; $509e: $23
    rst $18                                       ; $509f: $df
    ld h, l                                       ; $50a0: $65
    nop                                           ; $50a1: $00
    ld a, a                                       ; $50a2: $7f
    push bc                                       ; $50a3: $c5
    rst $28                                       ; $50a4: $ef
    sub l                                         ; $50a5: $95
    rst $38                                       ; $50a6: $ff
    jp Jump_095_73a9                              ; $50a7: $c3 $a9 $73


    nop                                           ; $50aa: $00
    cp $c0                                        ; $50ab: $fe $c0
    ld h, a                                       ; $50ad: $67
    ld hl, sp-$16                                 ; $50ae: $f8 $ea
    dec e                                         ; $50b0: $1d
    cp l                                          ; $50b1: $bd
    jp $ea00                                      ; $50b2: $c3 $00 $ea


    ld [hl], c                                    ; $50b5: $71
    rst $38                                       ; $50b6: $ff
    ld d, c                                       ; $50b7: $51
    rst $38                                       ; $50b8: $ff
    ld d, c                                       ; $50b9: $51
    db $ec                                        ; $50ba: $ec
    di                                            ; $50bb: $f3
    ld [$1cef], sp                                ; $50bc: $08 $ef $1c
    ei                                            ; $50bf: $fb
    rlca                                          ; $50c0: $07

jr_095_50c1:
    ld [hl], b                                    ; $50c1: $70
    ld c, c                                       ; $50c2: $49
    call c, $bf23                                 ; $50c3: $dc $23 $bf
    rlca                                          ; $50c6: $07
    jp $ff9a                                      ; $50c7: $c3 $9a $ff


    rst $28                                       ; $50ca: $ef
    rra                                           ; $50cb: $1f
    jr nc, jr_095_50f9                            ; $50cc: $30 $2b

    rst $00                                       ; $50ce: $c7
    rra                                           ; $50cf: $1f
    ld l, $1f                                     ; $50d0: $2e $1f
    add h                                         ; $50d2: $84
    sub b                                         ; $50d3: $90
    add hl, bc                                    ; $50d4: $09
    ld d, $e8                                     ; $50d5: $16 $e8
    cpl                                           ; $50d7: $2f
    ret nc                                        ; $50d8: $d0

    ld [de], a                                    ; $50d9: $12
    ld bc, $bb81                                  ; $50da: $01 $81 $bb
    cp c                                          ; $50dd: $b9
    ld h, [hl]                                    ; $50de: $66
    dec bc                                        ; $50df: $0b
    db $10                                        ; $50e0: $10
    or $0f                                        ; $50e1: $f6 $0f
    add b                                         ; $50e3: $80
    ld [$28c0], sp                                ; $50e4: $08 $c0 $28
    ei                                            ; $50e7: $fb
    rlca                                          ; $50e8: $07
    ld hl, sp+$07                                 ; $50e9: $f8 $07
    add b                                         ; $50eb: $80
    ld a, [hl+]                                   ; $50ec: $2a
    ld bc, $02ed                                  ; $50ed: $01 $ed $02
    rst $30                                       ; $50f0: $f7
    inc c                                         ; $50f1: $0c
    or [hl]                                       ; $50f2: $b6
    ld a, c                                       ; $50f3: $79
    or a                                          ; $50f4: $b7
    nop                                           ; $50f5: $00
    ld l, c                                       ; $50f6: $69
    rst $28                                       ; $50f7: $ef
    or e                                          ; $50f8: $b3

jr_095_50f9:
    rst $38                                       ; $50f9: $ff
    nop                                           ; $50fa: $00
    ei                                            ; $50fb: $fb
    inc b                                         ; $50fc: $04
    rst $38                                       ; $50fd: $ff
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    adc l                                         ; $5100: $8d
    ld a, a                                       ; $5101: $7f
    sbc $bf                                       ; $5102: $de $bf
    ld a, e                                       ; $5104: $7b
    add b                                         ; $5105: $80
    ld [hl], a                                    ; $5106: $77
    db $10                                        ; $5107: $10
    adc a                                         ; $5108: $8f
    cp a                                          ; $5109: $bf
    add h                                         ; $510a: $84
    and b                                         ; $510b: $a0
    dec bc                                        ; $510c: $0b
    ei                                            ; $510d: $fb
    rlca                                          ; $510e: $07
    cp $ff                                        ; $510f: $fe $ff
    jr nz, jr_095_50c1                            ; $5111: $20 $ae

    pop af                                        ; $5113: $f1
    xor [hl]                                      ; $5114: $ae
    ld bc, $b4c1                                  ; $5115: $01 $c1 $b4
    adc c                                         ; $5118: $89
    db $fd                                        ; $5119: $fd
    ld c, $00                                     ; $511a: $0e $00
    ld e, a                                       ; $511c: $5f
    ld hl, sp+$6d                                 ; $511d: $f8 $6d
    di                                            ; $511f: $f3
    ld a, a                                       ; $5120: $7f
    add l                                         ; $5121: $85
    cp a                                          ; $5122: $bf
    push bc                                       ; $5123: $c5
    nop                                           ; $5124: $00
    ld l, a                                       ; $5125: $6f
    sub a                                         ; $5126: $97
    ei                                            ; $5127: $fb
    add [hl]                                      ; $5128: $86
    ei                                            ; $5129: $fb
    ret nz                                        ; $512a: $c0

    rst $28                                       ; $512b: $ef
    dec de                                        ; $512c: $1b
    nop                                           ; $512d: $00
    ld h, a                                       ; $512e: $67
    adc l                                         ; $512f: $8d
    ei                                            ; $5130: $fb
    inc b                                         ; $5131: $04
    ld a, h                                       ; $5132: $7c
    add a                                         ; $5133: $87
    cp d                                          ; $5134: $ba
    jp $ff00                                      ; $5135: $c3 $00 $ff


    ld h, c                                       ; $5138: $61
    and a                                         ; $5139: $a7
    sbc $f7                                       ; $513a: $de $f7
    jr c, @+$01                                   ; $513c: $38 $ff

    inc b                                         ; $513e: $04
    ld bc, $2cdf                                  ; $513f: $01 $df $2c
    ld a, a                                       ; $5142: $7f
    nop                                           ; $5143: $00
    ld d, [hl]                                    ; $5144: $56
    rst $38                                       ; $5145: $ff
    rst $28                                       ; $5146: $ef
    ld c, d                                       ; $5147: $4a
    rlca                                          ; $5148: $07
    ret nz                                        ; $5149: $c0

    jr nz, jr_095_5155                            ; $514a: $20 $09

    dec e                                         ; $514c: $1d
    ld bc, $fdc0                                  ; $514d: $01 $c0 $fd
    nop                                           ; $5150: $00
    db $dd                                        ; $5151: $dd
    cp $b7                                        ; $5152: $fe $b7
    ld b, b                                       ; $5154: $40

jr_095_5155:
    db $ec                                        ; $5155: $ec
    jr nz, jr_095_5171                            ; $5156: $20 $19

    cp a                                          ; $5158: $bf
    ret nz                                        ; $5159: $c0

    ld [hl], a                                    ; $515a: $77
    ret z                                         ; $515b: $c8

    ld [hl], l                                    ; $515c: $75
    cp $26                                        ; $515d: $fe $26
    ld a, a                                       ; $515f: $7f
    ldh [$30], a                                  ; $5160: $e0 $30
    ld a, [hl+]                                   ; $5162: $2a
    ld e, l                                       ; $5163: $5d
    ld [c], a                                     ; $5164: $e2
    db $e4                                        ; $5165: $e4
    ld [bc], a                                    ; $5166: $02
    ldh a, [rSCX]                                 ; $5167: $f0 $43
    ei                                            ; $5169: $fb
    db $10                                        ; $516a: $10
    ld b, $f7                                     ; $516b: $06 $f7
    inc b                                         ; $516d: $04
    db $f4                                        ; $516e: $f4
    inc bc                                        ; $516f: $03
    ld a, [bc]                                    ; $5170: $0a

jr_095_5171:
    or a                                          ; $5171: $b7
    ld e, d                                       ; $5172: $5a
    rst $28                                       ; $5173: $ef
    nop                                           ; $5174: $00
    ld de, $305f                                  ; $5175: $11 $5f $30
    ei                                            ; $5178: $fb
    ld [hl], b                                    ; $5179: $70
    cp $19                                        ; $517a: $fe $19
    db $ed                                        ; $517c: $ed
    nop                                           ; $517d: $00
    ld a, [c]                                     ; $517e: $f2
    ld e, a                                       ; $517f: $5f
    or d                                          ; $5180: $b2
    cp $13                                        ; $5181: $fe $13

jr_095_5183:
    cp e                                          ; $5183: $bb
    ld d, $3d                                     ; $5184: $16 $3d
    rlca                                          ; $5186: $07
    and $e3                                       ; $5187: $e6 $e3
    call c, $08ff                                 ; $5189: $dc $ff $08
    ld b, b                                       ; $518c: $40
    ld [de], a                                    ; $518d: $12
    ld h, b                                       ; $518e: $60
    rlca                                          ; $518f: $07
    ld b, b                                       ; $5190: $40
    ld a, [hl+]                                   ; $5191: $2a
    nop                                           ; $5192: $00
    and a                                         ; $5193: $a7
    ret c                                         ; $5194: $d8

    ei                                            ; $5195: $fb
    adc h                                         ; $5196: $8c
    db $dd                                        ; $5197: $dd
    rlca                                          ; $5198: $07
    cp $71                                        ; $5199: $fe $71
    nop                                           ; $519b: $00
    rst $38                                       ; $519c: $ff
    ret z                                         ; $519d: $c8

    cp $c9                                        ; $519e: $fe $c9
    rst $38                                       ; $51a0: $ff
    ei                                            ; $51a1: $fb
    db $dd                                        ; $51a2: $dd
    add a                                         ; $51a3: $87
    jr nz, jr_095_5183                            ; $51a4: $20 $dd

    ld a, [bc]                                    ; $51a6: $0a
    and $00                                       ; $51a7: $e6 $00
    jr nc, jr_095_5222                            ; $51a9: $30 $77

    add sp, $7d                                   ; $51ab: $e8 $7d
    ret nz                                        ; $51ad: $c0

    ld [bc], a                                    ; $51ae: $02

Call_095_51af:
    ld a, a                                       ; $51af: $7f
    cp a                                          ; $51b0: $bf
    jp nc, Jump_095_72ed                          ; $51b1: $d2 $ed $72

    or [hl]                                       ; $51b4: $b6
    ld b, b                                       ; $51b5: $40
    ld a, [bc]                                    ; $51b6: $0a
    ld a, a                                       ; $51b7: $7f
    add b                                         ; $51b8: $80
    ld l, h                                       ; $51b9: $6c
    ld [de], a                                    ; $51ba: $12
    cp $01                                        ; $51bb: $fe $01
    rst $10                                       ; $51bd: $d7
    ret                                           ; $51be: $c9


    cp [hl]                                       ; $51bf: $be
    ld h, c                                       ; $51c0: $61
    ld a, e                                       ; $51c1: $7b
    nop                                           ; $51c2: $00
    rst $08                                       ; $51c3: $cf
    di                                            ; $51c4: $f3
    ld e, $dd                                     ; $51c5: $1e $dd
    ld [hl], $bd                                  ; $51c7: $36 $bd
    ld h, [hl]                                    ; $51c9: $66
    db $dd                                        ; $51ca: $dd
    nop                                           ; $51cb: $00
    add $7e                                       ; $51cc: $c6 $7e
    add a                                         ; $51ce: $87
    cp $05                                        ; $51cf: $fe $05
    cp a                                          ; $51d1: $bf
    dec b                                         ; $51d2: $05
    db $ed                                        ; $51d3: $ed
    nop                                           ; $51d4: $00
    ld e, e                                       ; $51d5: $5b
    ld e, d                                       ; $51d6: $5a
    ret                                           ; $51d7: $c9


    db $dd                                        ; $51d8: $dd
    call z, $e7fb                                 ; $51d9: $cc $fb $e7
    ld e, h                                       ; $51dc: $5c
    nop                                           ; $51dd: $00
    db $e3                                        ; $51de: $e3
    cp e                                          ; $51df: $bb
    ld c, c                                       ; $51e0: $49
    db $ed                                        ; $51e1: $ed
    inc [hl]                                      ; $51e2: $34
    ld a, [hl]                                    ; $51e3: $7e
    ld sp, $005f                                  ; $51e4: $31 $5f $00
    ld sp, $91b6                                  ; $51e7: $31 $b6 $91
    adc l                                         ; $51ea: $8d
    db $db                                        ; $51eb: $db
    ld e, [hl]                                    ; $51ec: $5e
    ret                                           ; $51ed: $c9


    rst $18                                       ; $51ee: $df
    nop                                           ; $51ef: $00
    ld l, c                                       ; $51f0: $69
    ld a, [hl]                                    ; $51f1: $7e
    jp hl                                         ; $51f2: $e9


    rst $28                                       ; $51f3: $ef
    reti                                          ; $51f4: $d9


    jp c, $ff39                                   ; $51f5: $da $39 $ff

    ld [bc], a                                    ; $51f8: $02
    ld [bc], a                                    ; $51f9: $02
    rst $18                                       ; $51fa: $df
    inc hl                                        ; $51fb: $23
    ld a, c                                       ; $51fc: $79
    rlca                                          ; $51fd: $07
    ld hl, sp+$02                                 ; $51fe: $f8 $02
    nop                                           ; $5200: $00
    db $fc                                        ; $5201: $fc
    ld b, b                                       ; $5202: $40
    inc bc                                        ; $5203: $03
    ldh a, [$09]                                  ; $5204: $f0 $09
    sub b                                         ; $5206: $90
    adc a                                         ; $5207: $8f
    jr nc, @+$01                                  ; $5208: $30 $ff

    sbc [hl]                                      ; $520a: $9e
    rst $38                                       ; $520b: $ff
    db $10                                        ; $520c: $10
    pop bc                                        ; $520d: $c1
    rst $38                                       ; $520e: $ff
    ccf                                           ; $520f: $3f
    add c                                         ; $5210: $81
    rra                                           ; $5211: $1f
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    ld [hl], c                                    ; $5214: $71
    ld a, $00                                     ; $5215: $3e $00
    pop af                                        ; $5217: $f1
    push hl                                       ; $5218: $e5
    ei                                            ; $5219: $fb
    add $f9                                       ; $521a: $c6 $f9
    rlca                                          ; $521c: $07
    ld sp, hl                                     ; $521d: $f9
    ld c, $00                                     ; $521e: $0e $00
    pop af                                        ; $5220: $f1
    scf                                           ; $5221: $37

jr_095_5222:
    ret                                           ; $5222: $c9


    call c, $aa01                                 ; $5223: $dc $01 $aa
    nop                                           ; $5226: $00
    ld l, a                                       ; $5227: $6f
    add b                                         ; $5228: $80
    ret nc                                        ; $5229: $d0

    nop                                           ; $522a: $00
    cp [hl]                                       ; $522b: $be
    ld b, c                                       ; $522c: $41
    add hl, de                                    ; $522d: $19
    and d                                         ; $522e: $a2
    sub d                                         ; $522f: $92
    ld l, l                                       ; $5230: $6d
    inc h                                         ; $5231: $24
    db $10                                        ; $5232: $10
    db $db                                        ; $5233: $db
    ld d, l                                       ; $5234: $55
    rst $38                                       ; $5235: $ff
    ld c, h                                       ; $5236: $4c
    ld c, $db                                     ; $5237: $0e $db
    inc h                                         ; $5239: $24
    cp $01                                        ; $523a: $fe $01
    add hl, bc                                    ; $523c: $09
    adc c                                         ; $523d: $89
    ld d, [hl]                                    ; $523e: $56
    ld d, d                                       ; $523f: $52
    xor l                                         ; $5240: $ad
    ret nc                                        ; $5241: $d0

    ld c, $55                                     ; $5242: $0e $55
    xor d                                         ; $5244: $aa
    sbc $3b                                       ; $5245: $de $3b
    ld c, d                                       ; $5247: $4a
    rst $38                                       ; $5248: $ff
    ld l, d                                       ; $5249: $6a
    ld b, $55                                     ; $524a: $06 $55
    xor d                                         ; $524c: $aa
    ld a, $4b                                     ; $524d: $3e $4b
    xor d                                         ; $524f: $aa
    jp c, $dd00                                   ; $5250: $da $00 $dd

    db $10                                        ; $5253: $10
    ld [hl+], a                                   ; $5254: $22
    rst $28                                       ; $5255: $ef
    db $10                                        ; $5256: $10
    or b                                          ; $5257: $b0
    ld bc, $52c4                                  ; $5258: $01 $c4 $52
    xor l                                         ; $525b: $ad
    add c                                         ; $525c: $81
    nop                                           ; $525d: $00
    rst $38                                       ; $525e: $ff
    xor [hl]                                      ; $525f: $ae
    rst $38                                       ; $5260: $ff
    cp a                                          ; $5261: $bf
    ld b, b                                       ; $5262: $40
    ld a, e                                       ; $5263: $7b
    add h                                         ; $5264: $84
    db $dd                                        ; $5265: $dd
    nop                                           ; $5266: $00
    ld [hl+], a                                   ; $5267: $22
    xor a                                         ; $5268: $af
    ld d, b                                       ; $5269: $50
    ld e, c                                       ; $526a: $59
    or [hl]                                       ; $526b: $b6
    inc b                                         ; $526c: $04
    ei                                            ; $526d: $fb
    ld d, b                                       ; $526e: $50
    jr nc, @+$01                                  ; $526f: $30 $ff

    xor d                                         ; $5271: $aa
    ld d, b                                       ; $5272: $50
    nop                                           ; $5273: $00
    jr nc, jr_095_5283                            ; $5274: $30 $0d

    xor a                                         ; $5276: $af
    ld b, b                                       ; $5277: $40
    push de                                       ; $5278: $d5
    ld a, [hl+]                                   ; $5279: $2a
    ld [$758a], sp                                ; $527a: $08 $8a $75
    ld bc, $60fe                                  ; $527d: $01 $fe $60
    ld [$00f7], sp                                ; $5280: $08 $f7 $00

jr_095_5283:
    cp l                                          ; $5283: $bd
    nop                                           ; $5284: $00
    ld b, d                                       ; $5285: $42
    rst $38                                       ; $5286: $ff
    nop                                           ; $5287: $00
    scf                                           ; $5288: $37
    ret z                                         ; $5289: $c8

    xor d                                         ; $528a: $aa
    ld d, l                                       ; $528b: $55
    ld b, h                                       ; $528c: $44
    inc b                                         ; $528d: $04
    cp e                                          ; $528e: $bb
    ld [$aaf7], sp                                ; $528f: $08 $f7 $aa
    nop                                           ; $5292: $00
    ld d, b                                       ; $5293: $50
    add hl, bc                                    ; $5294: $09
    halt                                          ; $5295: $76
    add hl, bc                                    ; $5296: $09
    nop                                           ; $5297: $00
    xor c                                         ; $5298: $a9
    ld d, [hl]                                    ; $5299: $56
    ld d, h                                       ; $529a: $54
    xor e                                         ; $529b: $ab
    add d                                         ; $529c: $82
    ld a, l                                       ; $529d: $7d
    dec h                                         ; $529e: $25
    jp c, $aa44                                   ; $529f: $da $44 $aa

    ret nc                                        ; $52a2: $d0

    ld de, $09f6                                  ; $52a3: $11 $f6 $09
    ld e, l                                       ; $52a6: $5d
    ret nc                                        ; $52a7: $d0

    rlca                                          ; $52a8: $07
    inc d                                         ; $52a9: $14
    db $eb                                        ; $52aa: $eb
    ret nz                                        ; $52ab: $c0

    ld a, [de]                                    ; $52ac: $1a
    ld a, [de]                                    ; $52ad: $1a
    ld e, [hl]                                    ; $52ae: $5e
    dec a                                         ; $52af: $3d
    xor d                                         ; $52b0: $aa
    nop                                           ; $52b1: $00
    ld b, d                                       ; $52b2: $42
    cp l                                          ; $52b3: $bd
    add b                                         ; $52b4: $80
    ld a, a                                       ; $52b5: $7f
    inc e                                         ; $52b6: $1c
    nop                                           ; $52b7: $00
    db $fd                                        ; $52b8: $fd
    db $10                                        ; $52b9: $10
    ld [hl], c                                    ; $52ba: $71
    inc c                                         ; $52bb: $0c
    call z, $fb06                                 ; $52bc: $cc $06 $fb
    ld bc, $48ff                                  ; $52bf: $01 $ff $48
    ld h, b                                       ; $52c2: $60
    or a                                          ; $52c3: $b7
    inc hl                                        ; $52c4: $23
    ld c, $0a                                     ; $52c5: $0e $0a
    ld [$ff80], sp                                ; $52c7: $08 $80 $ff
    ld [hl+], a                                   ; $52ca: $22
    rst $38                                       ; $52cb: $ff
    ld b, d                                       ; $52cc: $42
    db $10                                        ; $52cd: $10
    cp l                                          ; $52ce: $bd
    ld [$8bf7], sp                                ; $52cf: $08 $f7 $8b
    rlca                                          ; $52d2: $07
    ei                                            ; $52d3: $fb
    ld b, b                                       ; $52d4: $40
    cp a                                          ; $52d5: $bf
    ld [$ff30], sp                                ; $52d6: $08 $30 $ff
    db $10                                        ; $52d9: $10
    ld d, a                                       ; $52da: $57
    inc b                                         ; $52db: $04
    ld h, b                                       ; $52dc: $60
    inc d                                         ; $52dd: $14
    ld [hl+], a                                   ; $52de: $22
    ld [hl], $c9                                  ; $52df: $36 $c9
    ld e, l                                       ; $52e1: $5d
    ld d, b                                       ; $52e2: $50
    and d                                         ; $52e3: $a2
    sbc b                                         ; $52e4: $98
    ld b, $ff                                     ; $52e5: $06 $ff
    cpl                                           ; $52e7: $2f
    ld [bc], a                                    ; $52e8: $02
    rst $38                                       ; $52e9: $ff
    ld b, b                                       ; $52ea: $40
    rst $38                                       ; $52eb: $ff
    dec d                                         ; $52ec: $15
    or b                                          ; $52ed: $b0
    sbc b                                         ; $52ee: $98
    nop                                           ; $52ef: $00
    ld d, l                                       ; $52f0: $55
    ld a, [c]                                     ; $52f1: $f2
    add hl, bc                                    ; $52f2: $09
    ld [hl-], a                                   ; $52f3: $32
    rlca                                          ; $52f4: $07
    ld b, c                                       ; $52f5: $41
    rst $38                                       ; $52f6: $ff
    xor b                                         ; $52f7: $a8
    rst $38                                       ; $52f8: $ff
    ld b, $74                                     ; $52f9: $06 $74
    rst $38                                       ; $52fb: $ff
    ld sp, hl                                     ; $52fc: $f9
    rst $38                                       ; $52fd: $ff
    sbc $14                                       ; $52fe: $de $14
    dec b                                         ; $5300: $05
    ld b, c                                       ; $5301: $41
    rrca                                          ; $5302: $0f
    ld [bc], a                                    ; $5303: $02
    ld a, [bc]                                    ; $5304: $0a
    rst $38                                       ; $5305: $ff
    ld b, h                                       ; $5306: $44
    rst $38                                       ; $5307: $ff
    adc d                                         ; $5308: $8a
    ret z                                         ; $5309: $c8

    rlca                                          ; $530a: $07
    ei                                            ; $530b: $fb
    ld sp, hl                                     ; $530c: $f9
    inc h                                         ; $530d: $24
    xor c                                         ; $530e: $a9
    nop                                           ; $530f: $00
    inc bc                                        ; $5310: $03
    ei                                            ; $5311: $fb
    dec b                                         ; $5312: $05
    ld a, l                                       ; $5313: $7d
    add e                                         ; $5314: $83
    rst $30                                       ; $5315: $f7
    add hl, bc                                    ; $5316: $09
    dec c                                         ; $5317: $0d
    nop                                           ; $5318: $00
    db $d3                                        ; $5319: $d3
    ld d, c                                       ; $531a: $51
    xor e                                         ; $531b: $ab
    adc c                                         ; $531c: $89
    ld [hl], a                                    ; $531d: $77
    ld bc, $21bf                                  ; $531e: $01 $bf $21
    ld b, b                                       ; $5321: $40
    rst $18                                       ; $5322: $df
    ld b, $0f                                     ; $5323: $06 $0f
    ld bc, $09ff                                  ; $5325: $01 $ff $09
    rst $38                                       ; $5328: $ff
    add c                                         ; $5329: $81
    rst $38                                       ; $532a: $ff
    ld b, c                                       ; $532b: $41
    ld b, l                                       ; $532c: $45
    ld l, $07                                     ; $532d: $2e $07
    adc e                                         ; $532f: $8b
    rst $38                                       ; $5330: $ff
    dec b                                         ; $5331: $05
    rst $38                                       ; $5332: $ff
    xor e                                         ; $5333: $ab
    ld hl, sp+$07                                 ; $5334: $f8 $07
    db $10                                        ; $5336: $10
    db $eb                                        ; $5337: $eb
    rst $38                                       ; $5338: $ff
    rst $30                                       ; $5339: $f7
    rst $08                                       ; $533a: $cf
    inc h                                         ; $533b: $24
    adc d                                         ; $533c: $8a
    rst $30                                       ; $533d: $f7
    ld b, b                                       ; $533e: $40
    cp a                                          ; $533f: $bf
    nop                                           ; $5340: $00
    xor d                                         ; $5341: $aa
    rst $10                                       ; $5342: $d7
    ld b, e                                       ; $5343: $43
    cp h                                          ; $5344: $bc
    and b                                         ; $5345: $a0
    ret c                                         ; $5346: $d8

    ld c, h                                       ; $5347: $4c
    cp b                                          ; $5348: $b8
    nop                                           ; $5349: $00
    xor l                                         ; $534a: $ad
    ret c                                         ; $534b: $d8

    inc b                                         ; $534c: $04
    rst $38                                       ; $534d: $ff
    sub h                                         ; $534e: $94
    ld l, a                                       ; $534f: $6f
    ld b, c                                       ; $5350: $41
    cp [hl]                                       ; $5351: $be
    db $10                                        ; $5352: $10
    sbc h                                         ; $5353: $9c
    ld h, b                                       ; $5354: $60
    add b                                         ; $5355: $80
    sub $07                                       ; $5356: $d6 $07
    add b                                         ; $5358: $80
    nop                                           ; $5359: $00
    jr nc, jr_095_535c                            ; $535a: $30 $00

jr_095_535c:
    nop                                           ; $535c: $00
    ld [$4aff], sp                                ; $535d: $08 $ff $4a
    cp l                                          ; $5360: $bd
    add $01                                       ; $5361: $c6 $01
    inc b                                         ; $5363: $04
    inc bc                                        ; $5364: $03
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    inc bc                                        ; $5367: $03
    and d                                         ; $5368: $a2
    ld bc, $01e2                                  ; $5369: $01 $e2 $01
    cp d                                          ; $536c: $ba
    ld bc, $1041                                  ; $536d: $01 $41 $10
    and [hl]                                      ; $5370: $a6
    nop                                           ; $5371: $00
    ld b, h                                       ; $5372: $44
    cp e                                          ; $5373: $bb
    ld [de], a                                    ; $5374: $12
    db $fd                                        ; $5375: $fd
    ld d, h                                       ; $5376: $54
    inc b                                         ; $5377: $04
    stop                                          ; $5378: $10 $00
    ld d, d                                       ; $537a: $52
    cp l                                          ; $537b: $bd
    jr nz, @+$01                                  ; $537c: $20 $ff

    xor c                                         ; $537e: $a9
    ld [hl], a                                    ; $537f: $77
    jr z, @-$07                                   ; $5380: $28 $f7

    nop                                           ; $5382: $00
    add c                                         ; $5383: $81
    ld a, a                                       ; $5384: $7f
    jr nz, @+$01                                  ; $5385: $20 $ff

    add hl, hl                                    ; $5387: $29
    rst $30                                       ; $5388: $f7
    and h                                         ; $5389: $a4
    ld a, e                                       ; $538a: $7b
    ld b, $29                                     ; $538b: $06 $29
    rst $30                                       ; $538d: $f7
    sub l                                         ; $538e: $95
    ld [$46d5], a                                 ; $538f: $ea $d5 $46
    ld bc, $1db6                                  ; $5392: $01 $b6 $1d
    ld l, d                                       ; $5395: $6a
    or b                                          ; $5396: $b0
    inc b                                         ; $5397: $04
    db $10                                        ; $5398: $10
    ld d, l                                       ; $5399: $55
    jp nz, Jump_000_0400                          ; $539a: $c2 $00 $04

    ld [$ed92], sp                                ; $539d: $08 $92 $ed
    adc b                                         ; $53a0: $88
    rst $30                                       ; $53a1: $f7
    ld bc, $ff7f                                  ; $53a2: $01 $7f $ff
    ld b, b                                       ; $53a5: $40
    cp a                                          ; $53a6: $bf
    ld [hl], l                                    ; $53a7: $75
    rst $38                                       ; $53a8: $ff
    ld a, [hl+]                                   ; $53a9: $2a
    and l                                         ; $53aa: $a5
    dec h                                         ; $53ab: $25
    sbc d                                         ; $53ac: $9a
    jr z, @+$0a                                   ; $53ad: $28 $08

    ld c, c                                       ; $53af: $49
    or [hl]                                       ; $53b0: $b6
    call nz, $b501                                ; $53b1: $c4 $01 $b5
    dec h                                         ; $53b4: $25
    xor a                                         ; $53b5: $af
    ldh [$08], a                                  ; $53b6: $e0 $08
    cp a                                          ; $53b8: $bf
    inc d                                         ; $53b9: $14
    xor l                                         ; $53ba: $ad
    rst $38                                       ; $53bb: $ff
    push de                                       ; $53bc: $d5
    ld a, [hl+]                                   ; $53bd: $2a
    ld d, $f8                                     ; $53be: $16 $f8
    ld [bc], a                                    ; $53c0: $02
    nop                                           ; $53c1: $00
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    nop                                           ; $53c4: $00
    dec d                                         ; $53c5: $15
    db $eb                                        ; $53c6: $eb
    ld b, l                                       ; $53c7: $45
    cp e                                          ; $53c8: $bb
    ld d, c                                       ; $53c9: $51
    xor a                                         ; $53ca: $af
    ld de, $36ef                                  ; $53cb: $11 $ef $36
    dec d                                         ; $53ce: $15
    db $eb                                        ; $53cf: $eb
    add $08                                       ; $53d0: $c6 $08
    inc [hl]                                      ; $53d2: $34
    ld [$8055], sp                                ; $53d3: $08 $55 $80
    dec bc                                        ; $53d6: $0b
    ld h, a                                       ; $53d7: $67
    rlca                                          ; $53d8: $07
    ld b, c                                       ; $53d9: $41
    ld de, $12be                                  ; $53da: $11 $be $12
    db $ed                                        ; $53dd: $ed
    inc [hl]                                      ; $53de: $34
    ld [$ff5f], sp                                ; $53df: $08 $5f $ff
    rrca                                          ; $53e2: $0f
    inc b                                         ; $53e3: $04
    db $10                                        ; $53e4: $10
    ld a, [hl-]                                   ; $53e5: $3a
    ld c, a                                       ; $53e6: $4f
    cp a                                          ; $53e7: $bf
    db $10                                        ; $53e8: $10
    ld [$0834], sp                                ; $53e9: $08 $34 $08
    xor [hl]                                      ; $53ec: $ae
    dec c                                         ; $53ed: $0d
    db $fc                                        ; $53ee: $fc
    ld [bc], a                                    ; $53ef: $02
    nop                                           ; $53f0: $00
    add c                                         ; $53f1: $81
    ld [hl+], a                                   ; $53f2: $22
    ld a, [hl]                                    ; $53f3: $7e
    rst $38                                       ; $53f4: $ff
    and a                                         ; $53f5: $a7

jr_095_53f6:
    inc b                                         ; $53f6: $04
    rst $38                                       ; $53f7: $ff
    rst $38                                       ; $53f8: $ff
    ld d, [hl]                                    ; $53f9: $56
    ret c                                         ; $53fa: $d8

    ld bc, $000a                                  ; $53fb: $01 $0a $00
    rst $30                                       ; $53fe: $f7
    ld b, c                                       ; $53ff: $41
    cp a                                          ; $5400: $bf
    ld de, $feef                                  ; $5401: $11 $ef $fe
    rst $38                                       ; $5404: $ff
    xor a                                         ; $5405: $af
    dec b                                         ; $5406: $05
    or b                                          ; $5407: $b0
    rst $18                                       ; $5408: $df
    sbc b                                         ; $5409: $98
    sbc e                                         ; $540a: $9b
    sbc h                                         ; $540b: $9c
    inc b                                         ; $540c: $04
    jr @-$23                                      ; $540d: $18 $db

    inc b                                         ; $540f: $04
    db $10                                        ; $5410: $10
    jr nz, @-$5f                                  ; $5411: $20 $9f

    ret c                                         ; $5413: $d8

    inc b                                         ; $5414: $04
    ld c, b                                       ; $5415: $48
    sub b                                         ; $5416: $90
    rst $18                                       ; $5417: $df
    cp e                                          ; $5418: $bb
    call nc, Call_000_0097                        ; $5419: $d4 $97 $00
    ret c                                         ; $541c: $d8

    cp a                                          ; $541d: $bf
    ret nc                                        ; $541e: $d0

    sbc d                                         ; $541f: $9a
    pop de                                        ; $5420: $d1
    cp a                                          ; $5421: $bf
    ret nc                                        ; $5422: $d0

    sbc e                                         ; $5423: $9b
    jr nz, jr_095_53f6                            ; $5424: $20 $d0

    pop af                                        ; $5426: $f1
    inc b                                         ; $5427: $04
    nop                                           ; $5428: $00
    rst $38                                       ; $5429: $ff
    ret nc                                        ; $542a: $d0

    sbc a                                         ; $542b: $9f
    ret nc                                        ; $542c: $d0

    ld a, [$d100]                                 ; $542d: $fa $00 $d1
    sbc a                                         ; $5430: $9f
    ldh a, [$d7]                                  ; $5431: $f0 $d7
    ld hl, sp-$65                                 ; $5433: $f8 $9b
    db $f4                                        ; $5435: $f4
    ret nc                                        ; $5436: $d0

    nop                                           ; $5437: $00
    rst $38                                       ; $5438: $ff
    ld c, h                                       ; $5439: $4c
    cp h                                          ; $543a: $bc
    and h                                         ; $543b: $a4
    call c, $f40e                                 ; $543c: $dc $0e $f4
    and [hl]                                      ; $543f: $a6
    nop                                           ; $5440: $00
    call c, $f60a                                 ; $5441: $dc $0a $f6
    and d                                         ; $5444: $a2
    sbc $03                                       ; $5445: $de $03
    cp $a3                                        ; $5447: $fe $a3
    inc h                                         ; $5449: $24
    sbc $c9                                       ; $544a: $de $c9
    inc h                                         ; $544c: $24
    add hl, bc                                    ; $544d: $09
    nop                                           ; $544e: $00
    ld [hl], b                                    ; $544f: $70
    inc l                                         ; $5450: $2c
    ld bc, $0003                                  ; $5451: $01 $03 $00
    nop                                           ; $5454: $00
    inc c                                         ; $5455: $0c
    nop                                           ; $5456: $00
    stop                                          ; $5457: $10 $00
    jp nc, Jump_095_7001                          ; $5459: $d2 $01 $70

    ld bc, $5101                                  ; $545c: $01 $01 $51
    nop                                           ; $545f: $00
    ld bc, $a100                                  ; $5460: $01 $00 $a1
    nop                                           ; $5463: $00
    ld b, b                                       ; $5464: $40
    ld b, b                                       ; $5465: $40
    ld bc, $0f00                                  ; $5466: $01 $00 $0f

jr_095_5469:
    inc bc                                        ; $5469: $03
    dec de                                        ; $546a: $1b
    rst $28                                       ; $546b: $ef
    xor c                                         ; $546c: $a9
    rst $10                                       ; $546d: $d7
    inc de                                        ; $546e: $13
    rst $28                                       ; $546f: $ef
    inc b                                         ; $5470: $04
    add b                                         ; $5471: $80
    rst $38                                       ; $5472: $ff
    db $10                                        ; $5473: $10
    rst $28                                       ; $5474: $ef
    add d                                         ; $5475: $82
    inc b                                         ; $5476: $04
    nop                                           ; $5477: $00
    add b                                         ; $5478: $80
    rst $38                                       ; $5479: $ff
    nop                                           ; $547a: $00
    ld bc, $3f00                                  ; $547b: $01 $00 $3f
    rrca                                          ; $547e: $0f
    db $f4                                        ; $547f: $f4
    rst $38                                       ; $5480: $ff
    dec b                                         ; $5481: $05
    cp $00                                        ; $5482: $fe $00
    inc h                                         ; $5484: $24
    rst $18                                       ; $5485: $df
    add h                                         ; $5486: $84
    ld a, a                                       ; $5487: $7f
    jr nz, jr_095_5469                            ; $5488: $20 $df

    add l                                         ; $548a: $85
    ld a, [hl]                                    ; $548b: $7e
    nop                                           ; $548c: $00
    db $fc                                        ; $548d: $fc
    ld a, a                                       ; $548e: $7f
    adc d                                         ; $548f: $8a
    db $fd                                        ; $5490: $fd
    ld b, a                                       ; $5491: $47
    cp b                                          ; $5492: $b8
    ld b, b                                       ; $5493: $40
    ret nz                                        ; $5494: $c0

    nop                                           ; $5495: $00

jr_095_5496:
    ld h, d                                       ; $5496: $62
    ret nz                                        ; $5497: $c0

    ld h, h                                       ; $5498: $64
    ret nz                                        ; $5499: $c0

    ld h, h                                       ; $549a: $64
    and b                                         ; $549b: $a0
    ld [hl+], a                                   ; $549c: $22
    ldh [rP1], a                                  ; $549d: $e0 $00
    nop                                           ; $549f: $00
    rst $38                                       ; $54a0: $ff
    db $f4                                        ; $54a1: $f4
    dec bc                                        ; $54a2: $0b
    ld a, [$7c05]                                 ; $54a3: $fa $05 $7c
    add e                                         ; $54a6: $83
    nop                                           ; $54a7: $00
    sub [hl]                                      ; $54a8: $96
    pop hl                                        ; $54a9: $e1
    ld a, h                                       ; $54aa: $7c
    add e                                         ; $54ab: $83
    and $01                                       ; $54ac: $e6 $01
    ld b, h                                       ; $54ae: $44
    inc bc                                        ; $54af: $03
    nop                                           ; $54b0: $00
    ld a, [hl+]                                   ; $54b1: $2a
    rst $10                                       ; $54b2: $d7
    add d                                         ; $54b3: $82
    rst $38                                       ; $54b4: $ff
    jr nz, jr_095_5496                            ; $54b5: $20 $df

    add b                                         ; $54b7: $80
    rst $38                                       ; $54b8: $ff
    db $10                                        ; $54b9: $10
    ld [$82f7], sp                                ; $54ba: $08 $f7 $82
    call nz, $a200                                ; $54bd: $c4 $00 $a2
    rst $18                                       ; $54c0: $df
    inc d                                         ; $54c1: $14
    rst $28                                       ; $54c2: $ef
    nop                                           ; $54c3: $00
    add l                                         ; $54c4: $85
    ld a, [hl]                                    ; $54c5: $7e
    ld d, b                                       ; $54c6: $50
    xor a                                         ; $54c7: $af
    add l                                         ; $54c8: $85
    ld a, [hl]                                    ; $54c9: $7e
    ld b, h                                       ; $54ca: $44
    cp a                                          ; $54cb: $bf
    nop                                           ; $54cc: $00
    inc d                                         ; $54cd: $14
    rst $28                                       ; $54ce: $ef
    ld b, h                                       ; $54cf: $44
    cp a                                          ; $54d0: $bf
    ld de, $70ee                                  ; $54d1: $11 $ee $70
    and b                                         ; $54d4: $a0
    ld d, $10                                     ; $54d5: $16 $10
    ldh [$1f], a                                  ; $54d7: $e0 $1f
    db $d3                                        ; $54d9: $d3
    rlca                                          ; $54da: $07
    ld [$0a4a], sp                                ; $54db: $08 $4a $0a
    xor h                                         ; $54de: $ac
    ld bc, $00e6                                  ; $54df: $01 $e6 $00
    ld bc, $03fc                                  ; $54e2: $01 $fc $03
    halt                                          ; $54e5: $76
    add c                                         ; $54e6: $81
    sbc h                                         ; $54e7: $9c
    db $e3                                        ; $54e8: $e3
    ld a, [hl]                                    ; $54e9: $7e
    ld [bc], a                                    ; $54ea: $02
    add c                                         ; $54eb: $81
    db $fc                                        ; $54ec: $fc
    inc bc                                        ; $54ed: $03
    ld a, [$0005]                                 ; $54ee: $fa $05 $00
    inc [hl]                                      ; $54f1: $34
    db $10                                        ; $54f2: $10
    ld [bc], a                                    ; $54f3: $02
    ld [bc], a                                    ; $54f4: $02
    rst $38                                       ; $54f5: $ff
    and d                                         ; $54f6: $a2
    rst $18                                       ; $54f7: $df
    ld a, [bc]                                    ; $54f8: $0a
    rst $30                                       ; $54f9: $f7
    and b                                         ; $54fa: $a0
    inc b                                         ; $54fb: $04
    db $10                                        ; $54fc: $10
    inc d                                         ; $54fd: $14
    nop                                           ; $54fe: $00
    rst $28                                       ; $54ff: $ef
    ld b, b                                       ; $5500: $40
    cp a                                          ; $5501: $bf
    ld b, h                                       ; $5502: $44
    cp a                                          ; $5503: $bf
    add b                                         ; $5504: $80
    ld a, a                                       ; $5505: $7f
    ld bc, $e082                                  ; $5506: $01 $82 $e0
    ld bc, $00aa                                  ; $5509: $01 $aa $00
    ld d, [hl]                                    ; $550c: $56
    ld bc, $2600                                  ; $550d: $01 $00 $26
    ld bc, $0008                                  ; $5510: $01 $08 $00
    rst $38                                       ; $5513: $ff
    adc c                                         ; $5514: $89
    ld a, [hl]                                    ; $5515: $7e
    ret z                                         ; $5516: $c8

    ccf                                           ; $5517: $3f
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    or b                                          ; $551a: $b0
    nop                                           ; $551b: $00
    rrca                                          ; $551c: $0f
    rrca                                          ; $551d: $0f
    ldh a, [rDIV]                                 ; $551e: $f0 $04
    ei                                            ; $5520: $fb
    add d                                         ; $5521: $82
    ld a, l                                       ; $5522: $7d
    ld d, b                                       ; $5523: $50
    ld [$92bf], sp                                ; $5524: $08 $bf $92
    ld a, l                                       ; $5527: $7d
    ld b, b                                       ; $5528: $40
    inc b                                         ; $5529: $04
    nop                                           ; $552a: $00
    sub b                                         ; $552b: $90
    ld a, a                                       ; $552c: $7f
    ld d, c                                       ; $552d: $51
    ld [bc], a                                    ; $552e: $02
    cp [hl]                                       ; $552f: $be
    add h                                         ; $5530: $84
    ld a, e                                       ; $5531: $7b
    add hl, bc                                    ; $5532: $09
    rst $30                                       ; $5533: $f7
    add h                                         ; $5534: $84
    ret c                                         ; $5535: $d8

    ld bc, $80a4                                  ; $5536: $01 $a4 $80
    ld [$2800], sp                                ; $5539: $08 $00 $28
    rst $30                                       ; $553c: $f7
    add hl, bc                                    ; $553d: $09
    scf                                           ; $553e: $37
    add b                                         ; $553f: $80
    ld a, [hl]                                    ; $5540: $7e
    add hl, de                                    ; $5541: $19
    nop                                           ; $5542: $00
    ld [c], a                                     ; $5543: $e2
    ld bc, $1802                                  ; $5544: $01 $02 $18
    ld bc, $0144                                  ; $5547: $01 $44 $01
    cp b                                          ; $554a: $b8
    nop                                           ; $554b: $00
    ld bc, $0044                                  ; $554c: $01 $44 $00
    jr jr_095_5551                                ; $554f: $18 $00

jr_095_5551:
    add h                                         ; $5551: $84
    dec de                                        ; $5552: $1b
    add hl, bc                                    ; $5553: $09
    nop                                           ; $5554: $00
    rla                                           ; $5555: $17
    add h                                         ; $5556: $84
    dec de                                        ; $5557: $1b
    ld c, c                                       ; $5558: $49
    rlca                                          ; $5559: $07
    and h                                         ; $555a: $a4
    dec bc                                        ; $555b: $0b
    ld bc, $ef04                                  ; $555c: $01 $04 $ef
    db $f4                                        ; $555f: $f4
    dec bc                                        ; $5560: $0b
    ld sp, hl                                     ; $5561: $f9
    rla                                           ; $5562: $17
    ld d, c                                       ; $5563: $51
    nop                                           ; $5564: $00
    rra                                           ; $5565: $1f
    ld [c], a                                     ; $5566: $e2
    inc b                                         ; $5567: $04
    db $fd                                        ; $5568: $fd
    sub b                                         ; $5569: $90
    ld a, a                                       ; $556a: $7f
    ld d, b                                       ; $556b: $50
    cp a                                          ; $556c: $bf
    inc b                                         ; $556d: $04

Call_095_556e:
    ld [$fd02], sp                                ; $556e: $08 $02 $fd
    ld bc, $77a8                                  ; $5571: $01 $a8 $77
    pop hl                                        ; $5574: $e1
    rst $38                                       ; $5575: $ff
    jr z, @-$07                                   ; $5576: $28 $f7

    ld bc, $05c4                                  ; $5578: $01 $c4 $05
    inc bc                                        ; $557b: $03
    add hl, bc                                    ; $557c: $09
    rst $30                                       ; $557d: $f7
    and b                                         ; $557e: $a0
    ld a, a                                       ; $557f: $7f
    add hl, hl                                    ; $5580: $29
    rst $30                                       ; $5581: $f7
    inc d                                         ; $5582: $14
    ld [$0818], sp                                ; $5583: $08 $18 $08
    stop                                          ; $5586: $10 $00
    rst $38                                       ; $5588: $ff
    sub d                                         ; $5589: $92
    ld [$9200], sp                                ; $558a: $08 $00 $92
    db $fd                                        ; $558d: $fd
    add b                                         ; $558e: $80
    ld a, a                                       ; $558f: $7f
    ld [bc], a                                    ; $5590: $02
    dec b                                         ; $5591: $05
    ei                                            ; $5592: $fb
    jr nz, @+$01                                  ; $5593: $20 $ff

    dec b                                         ; $5595: $05
    ei                                            ; $5596: $fb
    ld [$8808], sp                                ; $5597: $08 $08 $88
    jr z, jr_095_5613                             ; $559a: $28 $77

    dec h                                         ; $559c: $25
    rst $00                                       ; $559d: $c7
    ld [bc], a                                    ; $559e: $02
    xor d                                         ; $559f: $aa
    nop                                           ; $55a0: $00
    ld [de], a                                    ; $55a1: $12
    ld [$f5f7], a                                 ; $55a2: $ea $f7 $f5
    inc b                                         ; $55a5: $04
    rst $28                                       ; $55a6: $ef
    jp z, $f5ff                                   ; $55a7: $ca $ff $f5

    rst $18                                       ; $55aa: $df
    inc b                                         ; $55ab: $04
    ld [$dfea], sp                                ; $55ac: $08 $ea $df
    ld e, d                                       ; $55af: $5a
    ldh [rSC], a                                  ; $55b0: $e0 $02
    jr nc, @+$01                                  ; $55b2: $30 $ff

    cp [hl]                                       ; $55b4: $be
    ld [de], a                                    ; $55b5: $12
    inc l                                         ; $55b6: $2c
    ld a, [bc]                                    ; $55b7: $0a
    ld d, a                                       ; $55b8: $57
    inc b                                         ; $55b9: $04
    db $10                                        ; $55ba: $10
    ld [$f700], sp                                ; $55bb: $08 $00 $f7
    and e                                         ; $55be: $a3
    call c, $ec10                                 ; $55bf: $dc $10 $ec
    and c                                         ; $55c2: $a1
    call c, Call_000_0051                         ; $55c3: $dc $51 $00
    xor h                                         ; $55c6: $ac
    and b                                         ; $55c7: $a0
    call c, $a850                                 ; $55c8: $dc $50 $a8
    add [hl]                                      ; $55cb: $86
    ld hl, sp-$4f                                 ; $55cc: $f8 $b1
    nop                                           ; $55ce: $00
    ld c, $4c                                     ; $55cf: $0e $4c
    or b                                          ; $55d1: $b0
    ld h, b                                       ; $55d2: $60
    ld b, b                                       ; $55d3: $40
    dec c                                         ; $55d4: $0d
    nop                                           ; $55d5: $00
    ld d, c                                       ; $55d6: $51
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    ld h, b                                       ; $55d9: $60
    nop                                           ; $55da: $00
    halt                                          ; $55db: $76
    nop                                           ; $55dc: $00
    ld b, $00                                     ; $55dd: $06 $00
    pop bc                                        ; $55df: $c1
    nop                                           ; $55e0: $00
    ld bc, $0109                                  ; $55e1: $01 $09 $01
    db $e3                                        ; $55e4: $e3
    ld bc, $0113                                  ; $55e5: $01 $13 $01
    ld [de], a                                    ; $55e8: $12
    nop                                           ; $55e9: $00
    inc bc                                        ; $55ea: $03
    ld [c], a                                     ; $55eb: $e2
    inc bc                                        ; $55ec: $03
    ld [bc], a                                    ; $55ed: $02
    inc bc                                        ; $55ee: $03
    ld [hl], $03                                  ; $55ef: $36 $03
    xor e                                         ; $55f1: $ab
    sbc c                                         ; $55f2: $99
    jr c, jr_095_55f5                             ; $55f3: $38 $00

jr_095_55f5:
    xor e                                         ; $55f5: $ab
    rst $38                                       ; $55f6: $ff
    ld de, $0407                                  ; $55f7: $11 $07 $04
    jr nz, jr_095_5653                            ; $55fa: $20 $57

    xor a                                         ; $55fc: $af
    ld e, b                                       ; $55fd: $58
    add hl, bc                                    ; $55fe: $09
    add b                                         ; $55ff: $80
    ld h, h                                       ; $5600: $64
    add hl, bc                                    ; $5601: $09
    adc d                                         ; $5602: $8a
    rst $30                                       ; $5603: $f7
    ld [hl+], a                                   ; $5604: $22
    rst $18                                       ; $5605: $df
    add d                                         ; $5606: $82
    rst $38                                       ; $5607: $ff
    ldh [rP1], a                                  ; $5608: $e0 $00
    add b                                         ; $560a: $80
    rst $38                                       ; $560b: $ff
    ld a, h                                       ; $560c: $7c
    inc de                                        ; $560d: $13
    rst $28                                       ; $560e: $ef
    add h                                         ; $560f: $84
    ld a, a                                       ; $5610: $7f
    dec b                                         ; $5611: $05
    nop                                           ; $5612: $00

jr_095_5613:
    cp $94                                        ; $5613: $fe $94
    ld l, a                                       ; $5615: $6f
    ld de, $04ee                                  ; $5616: $11 $ee $04
    rst $38                                       ; $5619: $ff
    ld h, $02                                     ; $561a: $26 $02
    inc bc                                        ; $561c: $03
    ld b, $05                                     ; $561d: $06 $05
    db $f4                                        ; $561f: $f4
    rst $00                                       ; $5620: $c7
    inc a                                         ; $5621: $3c
    ld b, $03                                     ; $5622: $06 $03
    jr nz, jr_095_5649                            ; $5624: $20 $23

    rst $18                                       ; $5626: $df
    ld a, [bc]                                    ; $5627: $0a
    dec de                                        ; $5628: $1b
    inc b                                         ; $5629: $04
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    db $d3                                        ; $562c: $d3
    ld l, d                                       ; $562d: $6a
    inc hl                                        ; $562e: $23
    and [hl]                                      ; $562f: $a6
    ld a, [bc]                                    ; $5630: $0a
    xor [hl]                                      ; $5631: $ae
    xor d                                         ; $5632: $aa
    ld a, [bc]                                    ; $5633: $0a
    and l                                         ; $5634: $a5
    db $10                                        ; $5635: $10
    ld h, b                                       ; $5636: $60
    ld e, h                                       ; $5637: $5c
    adc d                                         ; $5638: $8a
    inc hl                                        ; $5639: $23
    and [hl]                                      ; $563a: $a6
    ld [$0adc], sp                                ; $563b: $08 $dc $0a
    nop                                           ; $563e: $00
    add d                                         ; $563f: $82
    inc b                                         ; $5640: $04
    db $10                                        ; $5641: $10
    adc b                                         ; $5642: $88
    rst $30                                       ; $5643: $f7
    ld hl, $92de                                  ; $5644: $21 $de $92
    or b                                          ; $5647: $b0
    ld [bc], a                                    ; $5648: $02

jr_095_5649:
    ld [$ff20], a                                 ; $5649: $ea $20 $ff
    ret nz                                        ; $564c: $c0

    inc b                                         ; $564d: $04
    db $10                                        ; $564e: $10
    ld [c], a                                     ; $564f: $e2
    db $dd                                        ; $5650: $dd
    ret z                                         ; $5651: $c8

    rst $30                                       ; $5652: $f7

jr_095_5653:
    push hl                                       ; $5653: $e5
    ld h, b                                       ; $5654: $60
    jp c, $0b04                                   ; $5655: $da $04 $0b

    jr nz, jr_095_5672                            ; $5658: $20 $18

    inc b                                         ; $565a: $04
    ei                                            ; $565b: $fb
    sub b                                         ; $565c: $90
    ld l, a                                       ; $565d: $6f
    ld c, d                                       ; $565e: $4a
    ld b, b                                       ; $565f: $40
    or l                                          ; $5660: $b5
    pop af                                        ; $5661: $f1
    inc c                                         ; $5662: $0c
    ld b, d                                       ; $5663: $42
    cp l                                          ; $5664: $bd
    ld de, $92fe                                  ; $5665: $11 $fe $92
    ld a, l                                       ; $5668: $7d
    nop                                           ; $5669: $00
    ld b, l                                       ; $566a: $45
    cp d                                          ; $566b: $ba
    add d                                         ; $566c: $82
    ld a, l                                       ; $566d: $7d
    ld d, l                                       ; $566e: $55
    cp d                                          ; $566f: $ba
    ld d, b                                       ; $5670: $50
    cp a                                          ; $5671: $bf

jr_095_5672:
    db $10                                        ; $5672: $10

jr_095_5673:
    and b                                         ; $5673: $a0
    ld a, a                                       ; $5674: $7f
    ld bc, $01fc                                  ; $5675: $01 $fc $01
    dec b                                         ; $5678: $05
    ei                                            ; $5679: $fb
    jr z, jr_095_5673                             ; $567a: $28 $f7

    ld b, c                                       ; $567c: $41
    dec h                                         ; $567d: $25
    inc b                                         ; $567e: $04
    nop                                           ; $567f: $00
    dec l                                         ; $5680: $2d
    di                                            ; $5681: $f3
    sub l                                         ; $5682: $95
    ld a, d                                       ; $5683: $7a
    ld b, b                                       ; $5684: $40
    cp [hl]                                       ; $5685: $be
    ld bc, $1000                                  ; $5686: $01 $00 $10
    rst $38                                       ; $5689: $ff
    ld d, d                                       ; $568a: $52
    cp l                                          ; $568b: $bd
    sub b                                         ; $568c: $90
    ld a, a                                       ; $568d: $7f
    ld b, d                                       ; $568e: $42
    cp l                                          ; $568f: $bd
    ld b, c                                       ; $5690: $41
    db $10                                        ; $5691: $10
    ld e, h                                       ; $5692: $5c
    ld bc, $f32d                                  ; $5693: $01 $2d $f3
    xor b                                         ; $5696: $a8
    ld [hl], a                                    ; $5697: $77
    ld hl, $0164                                  ; $5698: $21 $64 $01
    ld [hl+], a                                   ; $569b: $22
    add c                                         ; $569c: $81
    ld a, a                                       ; $569d: $7f
    ld l, b                                       ; $569e: $68
    add hl, bc                                    ; $569f: $09
    rst $38                                       ; $56a0: $ff
    rst $38                                       ; $56a1: $ff
    or c                                          ; $56a2: $b1
    ld a, [bc]                                    ; $56a3: $0a
    inc h                                         ; $56a4: $24
    ld d, a                                       ; $56a5: $57
    cp b                                          ; $56a6: $b8
    inc b                                         ; $56a7: $04
    jr nz, @+$65                                  ; $56a8: $20 $63

    sub b                                         ; $56aa: $90
    ld d, b                                       ; $56ab: $50
    db $fc                                        ; $56ac: $fc
    ld [$0900], sp                                ; $56ad: $08 $00 $09
    inc de                                        ; $56b0: $13
    rst $28                                       ; $56b1: $ef
    adc e                                         ; $56b2: $8b
    ld d, $77                                     ; $56b3: $16 $77
    ld d, a                                       ; $56b5: $57
    xor e                                         ; $56b6: $ab
    ld c, [hl]                                    ; $56b7: $4e
    add hl, bc                                    ; $56b8: $09
    ld bc, $04f6                                  ; $56b9: $01 $f6 $04
    ld h, h                                       ; $56bc: $64
    ld [$0941], sp                                ; $56bd: $08 $41 $09
    cp a                                          ; $56c0: $bf
    inc d                                         ; $56c1: $14
    db $eb                                        ; $56c2: $eb
    rst $38                                       ; $56c3: $ff
    ld h, $04                                     ; $56c4: $26 $04
    ret nz                                        ; $56c6: $c0

    cp a                                          ; $56c7: $bf
    sub c                                         ; $56c8: $91
    rlca                                          ; $56c9: $07
    db $ec                                        ; $56ca: $ec
    inc b                                         ; $56cb: $04
    db $10                                        ; $56cc: $10
    ret z                                         ; $56cd: $c8

    dec de                                        ; $56ce: $1b
    ret nz                                        ; $56cf: $c0

    nop                                           ; $56d0: $00
    ld d, l                                       ; $56d1: $55
    or $1e                                        ; $56d2: $f6 $1e
    ret c                                         ; $56d4: $d8

    dec de                                        ; $56d5: $1b
    ld bc, $71ff                                  ; $56d6: $01 $ff $71
    add e                                         ; $56d9: $83
    sub h                                         ; $56da: $94
    nop                                           ; $56db: $00
    push de                                       ; $56dc: $d5
    rlca                                          ; $56dd: $07
    ld b, [hl]                                    ; $56de: $46
    ld bc, $bfc1                                  ; $56df: $01 $c1 $bf
    rst $28                                       ; $56e2: $ef
    adc d                                         ; $56e3: $8a
    inc b                                         ; $56e4: $04
    ld b, h                                       ; $56e5: $44
    push af                                       ; $56e6: $f5
    sub $00                                       ; $56e7: $d6 $00
    ret nc                                        ; $56e9: $d0

    rst $38                                       ; $56ea: $ff
    and h                                         ; $56eb: $a4
    ret                                           ; $56ec: $c9


    rlca                                          ; $56ed: $07
    and b                                         ; $56ee: $a0
    rst $38                                       ; $56ef: $ff
    ld [$ffc7], sp                                ; $56f0: $08 $c7 $ff
    db $e3                                        ; $56f3: $e3
    rst $18                                       ; $56f4: $df
    inc b                                         ; $56f5: $04
    ld c, b                                       ; $56f6: $48
    add b                                         ; $56f7: $80
    rst $38                                       ; $56f8: $ff
    add h                                         ; $56f9: $84
    nop                                           ; $56fa: $00
    ei                                            ; $56fb: $fb

jr_095_56fc:
    add b                                         ; $56fc: $80
    rst $38                                       ; $56fd: $ff
    sub c                                         ; $56fe: $91
    xor $a4                                       ; $56ff: $ee $a4
    db $db                                        ; $5701: $db
    adc b                                         ; $5702: $88
    nop                                           ; $5703: $00
    rst $30                                       ; $5704: $f7
    ld d, l                                       ; $5705: $55
    xor d                                         ; $5706: $aa
    xor d                                         ; $5707: $aa
    push de                                       ; $5708: $d5
    ld [hl], h                                    ; $5709: $74
    adc e                                         ; $570a: $8b
    db $fd                                        ; $570b: $fd
    ld bc, $6e82                                  ; $570c: $01 $82 $6e
    sub c                                         ; $570f: $91
    ld e, l                                       ; $5710: $5d
    and d                                         ; $5711: $a2
    ld a, a                                       ; $5712: $7f
    add b                                         ; $5713: $80
    ld [bc], a                                    ; $5714: $02
    ld [$db80], sp                                ; $5715: $08 $80 $db
    rlca                                          ; $5718: $07
    add b                                         ; $5719: $80
    db $db                                        ; $571a: $db
    and h                                         ; $571b: $a4
    ld a, [hl]                                    ; $571c: $7e
    add c                                         ; $571d: $81
    or h                                          ; $571e: $b4
    rlc d                                         ; $571f: $cb $02
    ld l, b                                       ; $5721: $68
    sub a                                         ; $5722: $97
    sub l                                         ; $5723: $95
    ld [$f7c8], a                                 ; $5724: $ea $c8 $f7
    ld a, [hl-]                                   ; $5727: $3a
    inc b                                         ; $5728: $04
    dec d                                         ; $5729: $15

jr_095_572a:
    push af                                       ; $572a: $f5
    rlca                                          ; $572b: $07
    inc b                                         ; $572c: $04
    inc b                                         ; $572d: $04
    ld c, b                                       ; $572e: $48
    ld h, $05                                     ; $572f: $26 $05
    sub b                                         ; $5731: $90
    jr z, @-$7e                                   ; $5732: $28 $80

    ld [hl], b                                    ; $5734: $70
    nop                                           ; $5735: $00
    add e                                         ; $5736: $83
    adc $04                                       ; $5737: $ce $04
    ret nz                                        ; $5739: $c0

    add b                                         ; $573a: $80
    jr z, jr_095_56fc                             ; $573b: $28 $bf

    nop                                           ; $573d: $00
    rst $38                                       ; $573e: $ff
    ldh [rNR10], a                                ; $573f: $e0 $10
    cpl                                           ; $5741: $2f
    inc c                                         ; $5742: $0c
    ld b, d                                       ; $5743: $42
    rst $38                                       ; $5744: $ff
    ld bc, $8360                                  ; $5745: $01 $60 $83
    rst $38                                       ; $5748: $ff
    pop bc                                        ; $5749: $c1
    cp a                                          ; $574a: $bf
    inc b                                         ; $574b: $04
    ld c, b                                       ; $574c: $48
    db $d3                                        ; $574d: $d3
    inc b                                         ; $574e: $04
    rst $28                                       ; $574f: $ef
    push de                                       ; $5750: $d5
    rst $28                                       ; $5751: $ef
    di                                            ; $5752: $f3
    rst $08                                       ; $5753: $cf
    inc b                                         ; $5754: $04
    jr jr_095_572a                                ; $5755: $18 $d3

    rst $28                                       ; $5757: $ef
    nop                                           ; $5758: $00
    call Call_000_2cf7                            ; $5759: $cd $f7 $2c
    rst $18                                       ; $575c: $df
    ld l, $dd                                     ; $575d: $2e $dd
    ld l, $dd                                     ; $575f: $2e $dd
    ld [$fd8e], sp                                ; $5761: $08 $8e $fd
    inc l                                         ; $5764: $2c
    rst $18                                       ; $5765: $df
    inc b                                         ; $5766: $04
    ld [$ddbf], sp                                ; $5767: $08 $bf $dd
    db $d3                                        ; $576a: $d3
    ld [$dbef], sp                                ; $576b: $08 $ef $db
    rst $20                                       ; $576e: $e7
    rst $10                                       ; $576f: $d7
    inc b                                         ; $5770: $04
    nop                                           ; $5771: $00
    rst $30                                       ; $5772: $f7
    rst $08                                       ; $5773: $cf
    sub $00                                       ; $5774: $d6 $00
    rst $28                                       ; $5776: $ef
    and [hl]                                      ; $5777: $a6
    rst $18                                       ; $5778: $df
    sbc $ee                                       ; $5779: $de $ee
    ld a, [hl]                                    ; $577b: $7e
    rst $38                                       ; $577c: $ff
    ld b, d                                       ; $577d: $42
    ld d, b                                       ; $577e: $50
    add e                                         ; $577f: $83
    ld [bc], a                                    ; $5780: $02
    ld c, b                                       ; $5781: $48
    di                                            ; $5782: $f3
    inc [hl]                                      ; $5783: $34
    nop                                           ; $5784: $00
    di                                            ; $5785: $f3
    rst $28                                       ; $5786: $ef
    push hl                                       ; $5787: $e5
    rst $38                                       ; $5788: $ff
    nop                                           ; $5789: $00
    db $eb                                        ; $578a: $eb
    rst $30                                       ; $578b: $f7
    or c                                          ; $578c: $b1
    rst $38                                       ; $578d: $ff
    rst $30                                       ; $578e: $f7
    cp e                                          ; $578f: $bb
    cp c                                          ; $5790: $b9
    rst $38                                       ; $5791: $ff
    nop                                           ; $5792: $00
    xor [hl]                                      ; $5793: $ae
    db $dd                                        ; $5794: $dd
    sbc l                                         ; $5795: $9d
    rst $38                                       ; $5796: $ff
    xor h                                         ; $5797: $ac
    rst $18                                       ; $5798: $df
    rst $18                                       ; $5799: $df
    cp l                                          ; $579a: $bd
    nop                                           ; $579b: $00
    xor c                                         ; $579c: $a9
    rst $18                                       ; $579d: $df
    rst $18                                       ; $579e: $df
    cp e                                          ; $579f: $bb
    cp e                                          ; $57a0: $bb
    rst $38                                       ; $57a1: $ff
    rst $18                                       ; $57a2: $df
    cp a                                          ; $57a3: $bf
    ld [$dea6], sp                                ; $57a4: $08 $a6 $de
    adc $fe                                       ; $57a7: $ce $fe
    inc b                                         ; $57a9: $04
    ld [$deac], sp                                ; $57aa: $08 $ac $de
    inc e                                         ; $57ad: $1c
    inc b                                         ; $57ae: $04
    db $fc                                        ; $57af: $fc
    call c, Call_095_58bc                         ; $57b0: $dc $bc $58
    cp h                                          ; $57b3: $bc
    ld a, $58                                     ; $57b4: $3e $58
    ld b, d                                       ; $57b6: $42
    add e                                         ; $57b7: $83
    nop                                           ; $57b8: $00
    db $dd                                        ; $57b9: $dd
    cp e                                          ; $57ba: $bb
    sbc e                                         ; $57bb: $9b
    db $fd                                        ; $57bc: $fd
    call $eeff                                    ; $57bd: $cd $ff $ee
    db $dd                                        ; $57c0: $dd
    nop                                           ; $57c1: $00
    call c, $eeef                                 ; $57c2: $dc $ef $ee
    rst $38                                       ; $57c5: $ff
    ld e, l                                       ; $57c6: $5d
    rst $38                                       ; $57c7: $ff
    ldh a, [rIF]                                  ; $57c8: $f0 $0f
    nop                                           ; $57ca: $00
    or a                                          ; $57cb: $b7
    rst $38                                       ; $57cc: $ff
    sbc [hl]                                      ; $57cd: $9e
    rst $38                                       ; $57ce: $ff
    cp [hl]                                       ; $57cf: $be
    rst $38                                       ; $57d0: $ff
    db $fd                                        ; $57d1: $fd
    cp $00                                        ; $57d2: $fe $00
    cp [hl]                                       ; $57d4: $be
    db $fd                                        ; $57d5: $fd
    rst $38                                       ; $57d6: $ff

jr_095_57d7:
    rst $38                                       ; $57d7: $ff
    jp c, Jump_000_3fff                           ; $57d8: $da $ff $3f

    ret nz                                        ; $57db: $c0

    nop                                           ; $57dc: $00
    jr c, jr_095_57d7                             ; $57dd: $38 $f8

    cp b                                          ; $57df: $b8
    ld a, b                                       ; $57e0: $78
    ldh a, [$78]                                  ; $57e1: $f0 $78
    ld [hl], b                                    ; $57e3: $70
    ldh a, [rP1]                                  ; $57e4: $f0 $00
    ldh [$f0], a                                  ; $57e6: $e0 $f0
    ldh [$e0], a                                  ; $57e8: $e0 $e0
    ld b, b                                       ; $57ea: $40
    ldh [$c0], a                                  ; $57eb: $e0 $c0
    ld b, b                                       ; $57ed: $40
    ld [$837e], sp                                ; $57ee: $08 $7e $83
    nop                                           ; $57f1: $00
    rst $38                                       ; $57f2: $ff
    add h                                         ; $57f3: $84
    ld c, b                                       ; $57f4: $48
    sbc a                                         ; $57f5: $9f
    ldh [$e0], a                                  ; $57f6: $e0 $e0
    nop                                           ; $57f8: $00

jr_095_57f9:
    rst $38                                       ; $57f9: $ff
    rst $38                                       ; $57fa: $ff
    db $fd                                        ; $57fb: $fd
    ei                                            ; $57fc: $fb
    db $dd                                        ; $57fd: $dd

Call_095_57fe:
    reti                                          ; $57fe: $d9


    rst $38                                       ; $57ff: $ff
    cp l                                          ; $5800: $bd
    nop                                           ; $5801: $00
    db $db                                        ; $5802: $db
    cp e                                          ; $5803: $bb
    db $dd                                        ; $5804: $dd
    db $dd                                        ; $5805: $dd
    cp e                                          ; $5806: $bb
    jp nz, Jump_095_7d3f                          ; $5807: $c2 $3f $7d

    nop                                           ; $580a: $00
    rst $38                                       ; $580b: $ff
    reti                                          ; $580c: $d9


    rst $38                                       ; $580d: $ff
    cp [hl]                                       ; $580e: $be
    db $dd                                        ; $580f: $dd
    ld hl, sp-$21                                 ; $5810: $f8 $df
    sbc [hl]                                      ; $5812: $9e
    ld bc, $bcfd                                  ; $5813: $01 $fd $bc
    rst $18                                       ; $5816: $df
    sbc l                                         ; $5817: $9d
    cp $80                                        ; $5818: $fe $80
    ret nz                                        ; $581a: $c0

    ld bc, $0200                                  ; $581b: $01 $00 $02
    ldh [$c0], a                                  ; $581e: $e0 $c0
    ldh [$e0], a                                  ; $5820: $e0 $e0
    ldh [$60], a                                  ; $5822: $e0 $60
    ld b, h                                       ; $5824: $44
    nop                                           ; $5825: $00
    ld [hl], b                                    ; $5826: $70
    ld de, $00f0                                  ; $5827: $11 $f0 $00
    rst $38                                       ; $582a: $ff
    ld [bc], a                                    ; $582b: $02
    ld e, b                                       ; $582c: $58
    rst $38                                       ; $582d: $ff
    rst $38                                       ; $582e: $ff
    add b                                         ; $582f: $80
    ld [bc], a                                    ; $5830: $02
    nop                                           ; $5831: $00
    ld [hl+], a                                   ; $5832: $22
    ret nz                                        ; $5833: $c0

    cp a                                          ; $5834: $bf
    inc b                                         ; $5835: $04
    jr jr_095_57f9                                ; $5836: $18 $c1

    cp a                                          ; $5838: $bf
    rst $38                                       ; $5839: $ff
    jr nz, jr_095_583c                            ; $583a: $20 $00

jr_095_583c:
    xor d                                         ; $583c: $aa
    ld d, b                                       ; $583d: $50
    ld d, l                                       ; $583e: $55
    ld h, $18                                     ; $583f: $26 $18
    xor d                                         ; $5841: $aa
    dec a                                         ; $5842: $3d
    ld bc, $ffea                                  ; $5843: $01 $ea $ff
    ld d, b                                       ; $5846: $50
    rst $38                                       ; $5847: $ff
    inc b                                         ; $5848: $04
    and c                                         ; $5849: $a1
    cp $82                                        ; $584a: $fe $82
    db $fd                                        ; $584c: $fd
    ld b, b                                       ; $584d: $40
    jr z, jr_095_5850                             ; $584e: $28 $00

jr_095_5850:
    jp nz, Jump_000_00fd                          ; $5850: $c2 $fd $00

    add b                                         ; $5853: $80
    rst $38                                       ; $5854: $ff
    rla                                           ; $5855: $17
    add sp, $2f                                   ; $5856: $e8 $2f
    ret nc                                        ; $5858: $d0

    dec de                                        ; $5859: $1b
    db $e4                                        ; $585a: $e4
    nop                                           ; $585b: $00
    cpl                                           ; $585c: $2f
    ret nc                                        ; $585d: $d0

    ld e, a                                       ; $585e: $5f
    and b                                         ; $585f: $a0
    cp a                                          ; $5860: $bf
    ld b, b                                       ; $5861: $40
    ld [hl], a                                    ; $5862: $77
    adc b                                         ; $5863: $88
    nop                                           ; $5864: $00
    xor a                                         ; $5865: $af
    ld d, b                                       ; $5866: $50
    add e                                         ; $5867: $83
    rst $38                                       ; $5868: $ff
    ld b, c                                       ; $5869: $41
    cp a                                          ; $586a: $bf
    add e                                         ; $586b: $83
    ld a, a                                       ; $586c: $7f
    ld bc, $ff01                                  ; $586d: $01 $01 $ff
    inc bc                                        ; $5870: $03
    rst $38                                       ; $5871: $ff
    ld bc, $abff                                  ; $5872: $01 $ff $ab
    ld l, l                                       ; $5875: $6d
    ld bc, $fd08                                  ; $5876: $01 $08 $fd
    inc bc                                        ; $5879: $03
    cp $01                                        ; $587a: $fe $01
    ld h, e                                       ; $587c: $63
    ld c, b                                       ; $587d: $48
    cp a                                          ; $587e: $bf
    ret nz                                        ; $587f: $c0

    rst $38                                       ; $5880: $ff

jr_095_5881:
    nop                                           ; $5881: $00
    ret nz                                        ; $5882: $c0

    ld e, a                                       ; $5883: $5f
    ldh [$af], a                                  ; $5884: $e0 $af
    ld [hl], b                                    ; $5886: $70
    rst $10                                       ; $5887: $d7
    jr c, @+$01                                   ; $5888: $38 $ff

    inc b                                         ; $588a: $04
    jr @-$13                                      ; $588b: $18 $eb

    inc e                                         ; $588d: $1c
    cp $0d                                        ; $588e: $fe $0d
    ld a, a                                       ; $5890: $7f
    ld h, b                                       ; $5891: $60
    nop                                           ; $5892: $00
    ld d, b                                       ; $5893: $50
    nop                                           ; $5894: $00
    xor a                                         ; $5895: $af
    jp hl                                         ; $5896: $e9


    rla                                           ; $5897: $17
    db $f4                                        ; $5898: $f4
    dec bc                                        ; $5899: $0b
    pop af                                        ; $589a: $f1
    rrca                                          ; $589b: $0f
    ret c                                         ; $589c: $d8

    nop                                           ; $589d: $00
    daa                                           ; $589e: $27
    push af                                       ; $589f: $f5
    dec bc                                        ; $58a0: $0b
    ld hl, sp+$07                                 ; $58a1: $f8 $07
    ld d, l                                       ; $58a3: $55
    xor e                                         ; $58a4: $ab
    ld sp, hl                                     ; $58a5: $f9
    nop                                           ; $58a6: $00
    sbc a                                         ; $58a7: $9f
    db $dd                                        ; $58a8: $dd
    cp e                                          ; $58a9: $bb
    cp e                                          ; $58aa: $bb
    rst $18                                       ; $58ab: $df
    sbc a                                         ; $58ac: $9f
    rst $38                                       ; $58ad: $ff
    ei                                            ; $58ae: $fb
    and b                                         ; $58af: $a0
    inc b                                         ; $58b0: $04
    nop                                           ; $58b1: $00
    jp c, $01bd                                   ; $58b2: $da $bd $01

    call c, $b9bf                                 ; $58b5: $dc $bf $b9
    cp $5d                                        ; $58b8: $fe $5d
    nop                                           ; $58ba: $00
    cp [hl]                                       ; $58bb: $be

Call_095_58bc:
    ei                                            ; $58bc: $fb
    cp h                                          ; $58bd: $bc
    ld a, l                                       ; $58be: $7d
    cp [hl]                                       ; $58bf: $be
    dec sp                                        ; $58c0: $3b
    db $fc                                        ; $58c1: $fc
    ld e, l                                       ; $58c2: $5d
    inc c                                         ; $58c3: $0c
    cp [hl]                                       ; $58c4: $be
    dec de                                        ; $58c5: $1b
    db $fc                                        ; $58c6: $fc
    or b                                          ; $58c7: $b0
    call nz, Call_000_0400                        ; $58c8: $c4 $00 $04
    jr z, jr_095_5881                             ; $58cb: $28 $b4

    db $f4                                        ; $58cd: $f4
    jr nc, jr_095_5949                            ; $58ce: $30 $79

    ld sp, hl                                     ; $58d0: $f9
    adc [hl]                                      ; $58d1: $8e
    add hl, bc                                    ; $58d2: $09
    inc d                                         ; $58d3: $14
    add hl, bc                                    ; $58d4: $09
    add b                                         ; $58d5: $80
    rst $38                                       ; $58d6: $ff
    ld d, c                                       ; $58d7: $51
    rst $38                                       ; $58d8: $ff
    ld b, b                                       ; $58d9: $40
    db $eb                                        ; $58da: $eb
    db $ed                                        ; $58db: $ed
    ld bc, $bfd2                                  ; $58dc: $01 $d2 $bf
    sub $bd                                       ; $58df: $d6 $bd
    or e                                          ; $58e1: $b3
    ld e, l                                       ; $58e2: $5d
    nop                                           ; $58e3: $00
    ld e, b                                       ; $58e4: $58
    or l                                          ; $58e5: $b5
    ld sp, $5a9d                                  ; $58e6: $31 $9d $5a
    or l                                          ; $58e9: $b5
    or c                                          ; $58ea: $b1
    ld e, e                                       ; $58eb: $5b
    nop                                           ; $58ec: $00
    ld e, c                                       ; $58ed: $59
    or a                                          ; $58ee: $b7
    ld a, [de]                                    ; $58ef: $1a
    or a                                          ; $58f0: $b7
    dec de                                        ; $58f1: $1b
    cp $9d                                        ; $58f2: $fe $9d
    ld a, e                                       ; $58f4: $7b
    nop                                           ; $58f5: $00
    ld a, [de]                                    ; $58f6: $1a
    or l                                          ; $58f7: $b5
    sub l                                         ; $58f8: $95
    ld a, [hl]                                    ; $58f9: $7e
    ld a, [de]                                    ; $58fa: $1a
    push af                                       ; $58fb: $f5
    ld d, [hl]                                    ; $58fc: $56
    cp d                                          ; $58fd: $ba
    nop                                           ; $58fe: $00
    sbc d                                         ; $58ff: $9a
    ld [hl], l                                    ; $5900: $75
    cp d                                          ; $5901: $ba
    db $10                                        ; $5902: $10
    db $e4                                        ; $5903: $e4
    or c                                          ; $5904: $b1
    cp d                                          ; $5905: $ba
    ld d, l                                       ; $5906: $55
    nop                                           ; $5907: $00
    call nc, $bcb5                                ; $5908: $d4 $b5 $bc
    sub $d1                                       ; $590b: $d6 $d1
    or h                                          ; $590d: $b4
    ld hl, sp+$54                                 ; $590e: $f8 $54
    nop                                           ; $5910: $00
    dec d                                         ; $5911: $15
    ld d, b                                       ; $5912: $50
    or l                                          ; $5913: $b5
    ld e, $1e                                     ; $5914: $1e $1e
    ld e, e                                       ; $5916: $5b
    and l                                         ; $5917: $a5
    rra                                           ; $5918: $1f
    nop                                           ; $5919: $00
    rrca                                          ; $591a: $0f
    ld e, [hl]                                    ; $591b: $5e
    or [hl]                                       ; $591c: $b6
    dec de                                        ; $591d: $1b
    ld [hl], h                                    ; $591e: $74
    ccf                                           ; $591f: $3f
    cp e                                          ; $5920: $bb
    dec e                                         ; $5921: $1d
    nop                                           ; $5922: $00
    dec [hl]                                      ; $5923: $35
    ld a, d                                       ; $5924: $7a
    or d                                          ; $5925: $b2
    ld e, c                                       ; $5926: $59
    ld e, c                                       ; $5927: $59

jr_095_5928:
    or l                                          ; $5928: $b5
    jp c, Jump_000_0035                           ; $5929: $da $35 $00

    ld [hl], h                                    ; $592c: $74
    rst $38                                       ; $592d: $ff
    ld [hl], d                                    ; $592e: $72
    db $fd                                        ; $592f: $fd
    ld d, h                                       ; $5930: $54
    cp d                                          ; $5931: $ba
    cp [hl]                                       ; $5932: $be
    pop af                                        ; $5933: $f1
    nop                                           ; $5934: $00
    ld d, h                                       ; $5935: $54
    ld a, [$b645]                                 ; $5936: $fa $45 $b6
    add [hl]                                      ; $5939: $86
    ld a, l                                       ; $593a: $7d
    ld e, c                                       ; $593b: $59
    or [hl]                                       ; $593c: $b6
    nop                                           ; $593d: $00
    sub d                                         ; $593e: $92
    dec [hl]                                      ; $593f: $35
    ld e, b                                       ; $5940: $58
    or l                                          ; $5941: $b5
    rla                                           ; $5942: $17
    ld hl, sp-$28                                 ; $5943: $f8 $d8
    or l                                          ; $5945: $b5
    nop                                           ; $5946: $00
    ld [hl], $d9                                  ; $5947: $36 $d9

jr_095_5949:
    ld a, [de]                                    ; $5949: $1a
    pop af                                        ; $594a: $f1
    pop hl                                        ; $594b: $e1
    ld d, h                                       ; $594c: $54
    ld c, d                                       ; $594d: $4a
    inc [hl]                                      ; $594e: $34
    nop                                           ; $594f: $00
    cp c                                          ; $5950: $b9
    ld e, h                                       ; $5951: $5c
    ld e, d                                       ; $5952: $5a
    sub c                                         ; $5953: $91
    cp c                                          ; $5954: $b9
    call c, $b05a                                 ; $5955: $dc $5a $b0
    nop                                           ; $5958: $00
    cp h                                          ; $5959: $bc
    ld e, c                                       ; $595a: $59
    cp e                                          ; $595b: $bb
    ld e, a                                       ; $595c: $5f
    ld [hl], $7b                                  ; $595d: $36 $7b
    dec hl                                        ; $595f: $2b
    sbc [hl]                                      ; $5960: $9e
    nop                                           ; $5961: $00
    ld d, l                                       ; $5962: $55
    rra                                           ; $5963: $1f
    cpl                                           ; $5964: $2f
    rst $18                                       ; $5965: $df
    dec e                                         ; $5966: $1d
    ld e, d                                       ; $5967: $5a
    ld a, [hl-]                                   ; $5968: $3a
    sbc l                                         ; $5969: $9d
    nop                                           ; $596a: $00
    ld d, l                                       ; $596b: $55
    jr jr_095_5928                                ; $596c: $18 $ba

    ld [hl], l                                    ; $596e: $75
    call nc, Call_000_38ba                        ; $596f: $d4 $ba $38
    ld a, [c]                                     ; $5972: $f2
    ld [bc], a                                    ; $5973: $02
    jp c, Jump_000_30b4                           ; $5974: $da $b4 $30

    ei                                            ; $5977: $fb
    jp nc, $82bd                                  ; $5978: $d2 $bd $82

    nop                                           ; $597b: $00
    rst $38                                       ; $597c: $ff
    nop                                           ; $597d: $00
    ld e, a                                       ; $597e: $5f
    cp a                                          ; $597f: $bf
    ld [hl], d                                    ; $5980: $72
    db $dd                                        ; $5981: $dd
    ld d, l                                       ; $5982: $55
    cp [hl]                                       ; $5983: $be
    cp [hl]                                       ; $5984: $be
    ld d, a                                       ; $5985: $57
    nop                                           ; $5986: $00
    ld [hl], l                                    ; $5987: $75
    cp d                                          ; $5988: $ba
    sbc d                                         ; $5989: $9a
    ld [hl], a                                    ; $598a: $77
    push hl                                       ; $598b: $e5
    cp d                                          ; $598c: $ba
    ld e, d                                       ; $598d: $5a
    rst $30                                       ; $598e: $f7
    nop                                           ; $598f: $00
    ld e, e                                       ; $5990: $5b
    push af                                       ; $5991: $f5
    or b                                          ; $5992: $b0
    push af                                       ; $5993: $f5
    ld e, e                                       ; $5994: $5b
    or c                                          ; $5995: $b1
    or b                                          ; $5996: $b0
    pop af                                        ; $5997: $f1
    ld [$b54b], sp                                ; $5998: $08 $4b $b5
    or c                                          ; $599b: $b1
    ld e, c                                       ; $599c: $59
    ld h, $00                                     ; $599d: $26 $00
    reti                                          ; $599f: $d9


    cp d                                          ; $59a0: $ba
    dec e                                         ; $59a1: $1d
    nop                                           ; $59a2: $00
    dec e                                         ; $59a3: $1d
    ld e, b                                       ; $59a4: $58
    or l                                          ; $59a5: $b5
    ld e, d                                       ; $59a6: $5a
    ld a, [de]                                    ; $59a7: $1a
    ld d, l                                       ; $59a8: $55
    or l                                          ; $59a9: $b5
    ld e, e                                       ; $59aa: $5b
    ld [bc], a                                    ; $59ab: $02
    ld d, d                                       ; $59ac: $52
    dec e                                         ; $59ad: $1d
    cp l                                          ; $59ae: $bd
    ld d, a                                       ; $59af: $57
    ld d, $5c                                     ; $59b0: $16 $5c
    ret nc                                        ; $59b2: $d0

    jr c, jr_095_59f9                             ; $59b3: $38 $44

    call nz, Call_000_1180                        ; $59b5: $c4 $80 $11
    or b                                          ; $59b8: $b0
    add hl, sp                                    ; $59b9: $39
    ld a, [hl+]                                   ; $59ba: $2a
    rst $38                                       ; $59bb: $ff
    sub l                                         ; $59bc: $95
    call Call_095_5e02                            ; $59bd: $cd $02 $5e
    ld a, [c]                                     ; $59c0: $f2
    nop                                           ; $59c1: $00
    or l                                          ; $59c2: $b5
    ldh a, [$5a]                                  ; $59c3: $f0 $5a
    or c                                          ; $59c5: $b1
    sbc c                                         ; $59c6: $99
    ldh a, [$62]                                  ; $59c7: $f0 $62
    or c                                          ; $59c9: $b1
    nop                                           ; $59ca: $00
    call $9278                                    ; $59cb: $cd $78 $92
    ld [hl], b                                    ; $59ce: $70
    dec [hl]                                      ; $59cf: $35
    ld a, [c]                                     ; $59d0: $f2
    dec d                                         ; $59d1: $15
    ld e, [hl]                                    ; $59d2: $5e
    nop                                           ; $59d3: $00
    ld e, [hl]                                    ; $59d4: $5e
    dec d                                         ; $59d5: $15
    dec b                                         ; $59d6: $05

jr_095_59d7:
    ld e, d                                       ; $59d7: $5a
    ld e, d                                       ; $59d8: $5a
    rra                                           ; $59d9: $1f
    or l                                          ; $59da: $b5
    sbc d                                         ; $59db: $9a
    nop                                           ; $59dc: $00
    ld e, d                                       ; $59dd: $5a
    rra                                           ; $59de: $1f
    dec [hl]                                      ; $59df: $35
    ld e, d                                       ; $59e0: $5a
    sbc $97                                       ; $59e1: $de $97
    ld c, d                                       ; $59e3: $4a
    cp l                                          ; $59e4: $bd
    nop                                           ; $59e5: $00
    ret nc                                        ; $59e6: $d0

    ld a, a                                       ; $59e7: $7f
    ld a, l                                       ; $59e8: $7d
    cp d                                          ; $59e9: $ba
    sub d                                         ; $59ea: $92
    ld a, h                                       ; $59eb: $7c
    db $dd                                        ; $59ec: $dd
    cp b                                          ; $59ed: $b8
    nop                                           ; $59ee: $00
    or b                                          ; $59ef: $b0
    db $dd                                        ; $59f0: $dd
    ld d, l                                       ; $59f1: $55
    cp d                                          ; $59f2: $ba
    ret c                                         ; $59f3: $d8

    db $fd                                        ; $59f4: $fd
    ld a, [de]                                    ; $59f5: $1a
    ld a, h                                       ; $59f6: $7c
    nop                                           ; $59f7: $00
    push af                                       ; $59f8: $f5

jr_095_59f9:
    ld a, [hl-]                                   ; $59f9: $3a
    ld a, [de]                                    ; $59fa: $1a
    ld [hl], c                                    ; $59fb: $71
    ld d, h                                       ; $59fc: $54
    dec sp                                        ; $59fd: $3b
    ld a, [hl-]                                   ; $59fe: $3a
    ld d, l                                       ; $59ff: $55
    nop                                           ; $5a00: $00
    sub e                                         ; $5a01: $93

Jump_095_5a02:
    ld a, h                                       ; $5a02: $7c
    jr c, jr_095_59d7                             ; $5a03: $38 $d2

    db $db                                        ; $5a05: $db
    or [hl]                                       ; $5a06: $b6
    db $db                                        ; $5a07: $db
    ld [hl], b                                    ; $5a08: $70
    nop                                           ; $5a09: $00
    or l                                          ; $5a0a: $b5
    ld [hl], d                                    ; $5a0b: $72
    ld e, d                                       ; $5a0c: $5a
    ld hl, sp+$35                                 ; $5a0d: $f8 $35
    ldh a, [$aa]                                  ; $5a0f: $f0 $aa
    ld hl, sp+$00                                 ; $5a11: $f8 $00
    or a                                          ; $5a13: $b7
    ld [hl], b                                    ; $5a14: $70
    sub d                                         ; $5a15: $92
    ldh a, [$6f]                                  ; $5a16: $f0 $6f
    cp a                                          ; $5a18: $bf
    dec h                                         ; $5a19: $25
    ld e, d                                       ; $5a1a: $5a
    nop                                           ; $5a1b: $00
    sbc $95                                       ; $5a1c: $de $95
    rla                                           ; $5a1e: $17
    ld e, d                                       ; $5a1f: $5a
    ld a, [$15b5]                                 ; $5a20: $fa $b5 $15
    ld e, $00                                     ; $5a23: $1e $00
    ld [hl], d                                    ; $5a25: $72
    ccf                                           ; $5a26: $3f
    sub a                                         ; $5a27: $97
    sbc [hl]                                      ; $5a28: $9e
    jr nc, @+$01                                  ; $5a29: $30 $ff

    db $dd                                        ; $5a2b: $dd
    cp d                                          ; $5a2c: $ba
    nop                                           ; $5a2d: $00
    xor d                                         ; $5a2e: $aa
    db $dd                                        ; $5a2f: $dd
    ld d, h                                       ; $5a30: $54
    cp c                                          ; $5a31: $b9
    sub d                                         ; $5a32: $92
    ld a, l                                       ; $5a33: $7d
    ld e, l                                       ; $5a34: $5d
    ld a, [$a600]                                 ; $5a35: $fa $00 $a6
    ld e, e                                       ; $5a38: $5b
    db $db                                        ; $5a39: $db
    cp $b4                                        ; $5a3a: $fe $b4
    ld e, e                                       ; $5a3c: $5b
    or [hl]                                       ; $5a3d: $b6
    sbc d                                         ; $5a3e: $9a
    nop                                           ; $5a3f: $00
    ld e, l                                       ; $5a40: $5d
    cp d                                          ; $5a41: $ba
    cp d                                          ; $5a42: $ba
    dec e                                         ; $5a43: $1d
    ld d, l                                       ; $5a44: $55
    cp e                                          ; $5a45: $bb
    cp a                                          ; $5a46: $bf
    ld e, a                                       ; $5a47: $5f
    nop                                           ; $5a48: $00
    add hl, de                                    ; $5a49: $19
    ld a, a                                       ; $5a4a: $7f
    dec [hl]                                      ; $5a4b: $35
    ld e, d                                       ; $5a4c: $5a
    xor d                                         ; $5a4d: $aa
    ld a, a                                       ; $5a4e: $7f
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    nop                                           ; $5a51: $00
    or l                                          ; $5a52: $b5
    jp z, $d8af                                   ; $5a53: $ca $af $d8

    jp c, $aaac                                   ; $5a56: $da $ac $aa

    call c, $9c00                                 ; $5a59: $dc $00 $9c
    ret z                                         ; $5a5c: $c8

    jp z, $b594                                   ; $5a5d: $ca $94 $b5

    jp z, $ffff                                   ; $5a60: $ca $ff $ff

    nop                                           ; $5a63: $00
    or [hl]                                       ; $5a64: $b6
    ld l, c                                       ; $5a65: $69
    ld l, l                                       ; $5a66: $6d
    or e                                          ; $5a67: $b3
    or l                                          ; $5a68: $b5
    ld l, c                                       ; $5a69: $69
    db $eb                                        ; $5a6a: $eb
    ld sp, $3502                                  ; $5a6b: $31 $02 $35
    ld l, c                                       ; $5a6e: $69
    xor e                                         ; $5a6f: $ab
    ld [hl], l                                    ; $5a70: $75
    ld e, c                                       ; $5a71: $59
    inc hl                                        ; $5a72: $23
    or [hl]                                       ; $5a73: $b6
    ld [bc], a                                    ; $5a74: $02
    and a                                         ; $5a75: $a7
    nop                                           ; $5a76: $00
    ld [$d0ff], a                                 ; $5a77: $ea $ff $d0
    nop                                           ; $5a7a: $00
    ld bc, $8a00                                  ; $5a7b: $01 $00 $8a
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    nop                                           ; $5a81: $00
    dec a                                         ; $5a82: $3d
    jp nz, $ffff                                  ; $5a83: $c2 $ff $ff

    ld d, l                                       ; $5a86: $55
    xor e                                         ; $5a87: $ab
    nop                                           ; $5a88: $00
    db $eb                                        ; $5a89: $eb
    db $dd                                        ; $5a8a: $dd
    add hl, sp                                    ; $5a8b: $39
    cpl                                           ; $5a8c: $2f
    dec l                                         ; $5a8d: $2d
    dec sp                                        ; $5a8e: $3b
    cp e                                          ; $5a8f: $bb
    dec l                                         ; $5a90: $2d
    nop                                           ; $5a91: $00
    dec l                                         ; $5a92: $2d
    ld sp, $e977                                  ; $5a93: $31 $77 $e9
    jp $e7ff                                      ; $5a96: $c3 $ff $e7


    rst $18                                       ; $5a99: $df
    add b                                         ; $5a9a: $80
    inc b                                         ; $5a9b: $04
    ld c, b                                       ; $5a9c: $48
    ld b, l                                       ; $5a9d: $45
    ld a, [$fd82]                                 ; $5a9e: $fa $82 $fd
    push bc                                       ; $5aa1: $c5
    ld a, [$008b]                                 ; $5aa2: $fa $8b $00
    db $f4                                        ; $5aa5: $f4
    add a                                         ; $5aa6: $87
    ld hl, sp-$75                                 ; $5aa7: $f8 $8b
    db $f4                                        ; $5aa9: $f4
    sub l                                         ; $5aaa: $95
    ld [$0482], a                                 ; $5aab: $ea $82 $04
    db $fd                                        ; $5aae: $fd
    ld a, a                                       ; $5aaf: $7f
    add b                                         ; $5ab0: $80
    rst $38                                       ; $5ab1: $ff
    nop                                           ; $5ab2: $00
    inc b                                         ; $5ab3: $04
    ld [$40bf], sp                                ; $5ab4: $08 $bf $40
    add b                                         ; $5ab7: $80
    ld a, [bc]                                    ; $5ab8: $0a
    ld [$00ff], sp                                ; $5ab9: $08 $ff $00
    add c                                         ; $5abc: $81
    cp $8a                                        ; $5abd: $fe $8a
    push af                                       ; $5abf: $f5
    pop de                                        ; $5ac0: $d1
    nop                                           ; $5ac1: $00
    xor $82                                       ; $5ac2: $ee $82
    db $fd                                        ; $5ac4: $fd
    ret                                           ; $5ac5: $c9


    or $80                                        ; $5ac6: $f6 $80
    rst $38                                       ; $5ac8: $ff
    push bc                                       ; $5ac9: $c5
    db $10                                        ; $5aca: $10
    ld a, [$f7a8]                                 ; $5acb: $fa $a8 $f7
    cp a                                          ; $5ace: $bf
    ld a, [hl-]                                   ; $5acf: $3a
    rst $18                                       ; $5ad0: $df
    jr nz, jr_095_5b52                            ; $5ad1: $20 $7f

    add b                                         ; $5ad3: $80
    nop                                           ; $5ad4: $00
    or [hl]                                       ; $5ad5: $b6
    ld c, c                                       ; $5ad6: $49
    ret nc                                        ; $5ad7: $d0

    rst $28                                       ; $5ad8: $ef
    add c                                         ; $5ad9: $81
    cp $c0                                        ; $5ada: $fe $c0
    rst $38                                       ; $5adc: $ff
    inc h                                         ; $5add: $24
    and b                                         ; $5ade: $a0
    rst $38                                       ; $5adf: $ff
    ld h, a                                       ; $5ae0: $67
    ld [bc], a                                    ; $5ae1: $02
    rst $38                                       ; $5ae2: $ff
    ldh [rSC], a                                  ; $5ae3: $e0 $02
    nop                                           ; $5ae5: $00
    ld e, a                                       ; $5ae6: $5f
    and b                                         ; $5ae7: $a0
    nop                                           ; $5ae8: $00
    dec hl                                        ; $5ae9: $2b
    call nc, Call_095_7a85                        ; $5aea: $d4 $85 $7a
    ld a, [bc]                                    ; $5aed: $0a
    push af                                       ; $5aee: $f5
    inc h                                         ; $5aef: $24
    db $db                                        ; $5af0: $db
    nop                                           ; $5af1: $00
    ld [bc], a                                    ; $5af2: $02
    db $fd                                        ; $5af3: $fd
    db $10                                        ; $5af4: $10
    rst $28                                       ; $5af5: $ef
    inc b                                         ; $5af6: $04
    ei                                            ; $5af7: $fb
    ret nc                                        ; $5af8: $d0

    rst $38                                       ; $5af9: $ff
    nop                                           ; $5afa: $00
    db $e4                                        ; $5afb: $e4
    rst $38                                       ; $5afc: $ff
    jp nc, $e9ff                                  ; $5afd: $d2 $ff $e9

    rst $38                                       ; $5b00: $ff
    or $ff                                        ; $5b01: $f6 $ff
    db $10                                        ; $5b03: $10
    rst $28                                       ; $5b04: $ef
    rst $38                                       ; $5b05: $ff
    rst $30                                       ; $5b06: $f7
    ld d, b                                       ; $5b07: $50
    ld hl, $ff80                                  ; $5b08: $21 $80 $ff
    ld b, b                                       ; $5b0b: $40
    rst $38                                       ; $5b0c: $ff
    ld b, $a9                                     ; $5b0d: $06 $a9
    rst $38                                       ; $5b0f: $ff
    ld d, [hl]                                    ; $5b10: $56
    rst $38                                       ; $5b11: $ff
    xor l                                         ; $5b12: $ad
    dec e                                         ; $5b13: $1d
    inc c                                         ; $5b14: $0c
    ld de, $fd43                                  ; $5b15: $11 $43 $fd
    nop                                           ; $5b18: $00
    ld [bc], a                                    ; $5b19: $02

Call_095_5b1a:
    cp $01                                        ; $5b1a: $fe $01
    db $fd                                        ; $5b1c: $fd
    ld c, $ff                                     ; $5b1d: $0e $ff
    inc c                                         ; $5b1f: $0c
    ei                                            ; $5b20: $fb
    nop                                           ; $5b21: $00
    inc c                                         ; $5b22: $0c
    db $eb                                        ; $5b23: $eb
    inc e                                         ; $5b24: $1c
    ld c, a                                       ; $5b25: $4f
    cp b                                          ; $5b26: $b8
    sbc a                                         ; $5b27: $9f
    ld [hl], b                                    ; $5b28: $70
    cpl                                           ; $5b29: $2f
    db $10                                        ; $5b2a: $10
    ldh a, [$df]                                  ; $5b2b: $f0 $df
    ld [hl], b                                    ; $5b2d: $70
    cpl                                           ; $5b2e: $2f
    ld e, e                                       ; $5b2f: $5b
    db $fd                                        ; $5b30: $fd
    ld [bc], a                                    ; $5b31: $02
    cp b                                          ; $5b32: $b8
    ld b, a                                       ; $5b33: $47
    nop                                           ; $5b34: $00
    pop af                                        ; $5b35: $f1
    rrca                                          ; $5b36: $0f
    ldh [$1f], a                                  ; $5b37: $e0 $1f
    pop hl                                        ; $5b39: $e1
    rra                                           ; $5b3a: $1f
    ret nc                                        ; $5b3b: $d0

    cpl                                           ; $5b3c: $2f
    nop                                           ; $5b3d: $00
    and c                                         ; $5b3e: $a1
    ld e, a                                       ; $5b3f: $5f
    add b                                         ; $5b40: $80
    ld a, a                                       ; $5b41: $7f
    ret                                           ; $5b42: $c9


    scf                                           ; $5b43: $37
    db $ed                                        ; $5b44: $ed
    ld [de], a                                    ; $5b45: $12
    add b                                         ; $5b46: $80
    ld d, c                                       ; $5b47: $51
    ld c, e                                       ; $5b48: $4b
    rst $28                                       ; $5b49: $ef
    db $10                                        ; $5b4a: $10
    ld a, a                                       ; $5b4b: $7f
    ret nc                                        ; $5b4c: $d0

    or a                                          ; $5b4d: $b7
    ret c                                         ; $5b4e: $d8

    db $eb                                        ; $5b4f: $eb
    nop                                           ; $5b50: $00
    sbc h                                         ; $5b51: $9c

jr_095_5b52:
    ld a, l                                       ; $5b52: $7d
    adc d                                         ; $5b53: $8a
    ld a, d                                       ; $5b54: $7a
    adc l                                         ; $5b55: $8d
    push af                                       ; $5b56: $f5
    ld c, $fb                                     ; $5b57: $0e $fb
    ld b, b                                       ; $5b59: $40
    ld b, $0e                                     ; $5b5a: $06 $0e
    ld c, e                                       ; $5b5c: $4b
    ld a, a                                       ; $5b5d: $7f
    add b                                         ; $5b5e: $80
    cp a                                          ; $5b5f: $bf
    ld b, b                                       ; $5b60: $40
    rst $38                                       ; $5b61: $ff
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    and b                                         ; $5b64: $a0
    ld e, a                                       ; $5b65: $5f
    pop de                                        ; $5b66: $d1
    cpl                                           ; $5b67: $2f
    ret nz                                        ; $5b68: $c0

    ccf                                           ; $5b69: $3f
    ld h, c                                       ; $5b6a: $61
    sbc a                                         ; $5b6b: $9f
    nop                                           ; $5b6c: $00
    ldh a, [rIF]                                  ; $5b6d: $f0 $0f
    pop hl                                        ; $5b6f: $e1
    rra                                           ; $5b70: $1f
    or b                                          ; $5b71: $b0
    ld c, a                                       ; $5b72: $4f
    pop hl                                        ; $5b73: $e1
    rra                                           ; $5b74: $1f
    nop                                           ; $5b75: $00
    ld a, a                                       ; $5b76: $7f
    add b                                         ; $5b77: $80
    push af                                       ; $5b78: $f5
    ld a, [bc]                                    ; $5b79: $0a
    ld e, a                                       ; $5b7a: $5f
    and b                                         ; $5b7b: $a0
    xor a                                         ; $5b7c: $af
    ld d, b                                       ; $5b7d: $50
    nop                                           ; $5b7e: $00
    ld d, l                                       ; $5b7f: $55
    xor d                                         ; $5b80: $aa
    inc hl                                        ; $5b81: $23
    call c, $ef10                                 ; $5b82: $dc $10 $ef
    dec h                                         ; $5b85: $25
    jp c, $3e81                                   ; $5b86: $da $81 $3e

    dec sp                                        ; $5b89: $3b
    ld l, a                                       ; $5b8a: $6f
    sub b                                         ; $5b8b: $90
    or a                                          ; $5b8c: $b7
    ld c, b                                       ; $5b8d: $48
    ld e, e                                       ; $5b8e: $5b
    and h                                         ; $5b8f: $a4
    db $10                                        ; $5b90: $10
    ld bc, $8040                                  ; $5b91: $01 $40 $80
    ld a, [bc]                                    ; $5b94: $0a
    add hl, de                                    ; $5b95: $19
    rst $38                                       ; $5b96: $ff
    nop                                           ; $5b97: $00
    ei                                            ; $5b98: $fb
    inc b                                         ; $5b99: $04
    cp a                                          ; $5b9a: $bf
    ld b, b                                       ; $5b9b: $40
    add b                                         ; $5b9c: $80
    jr c, @+$0a                                   ; $5b9d: $38 $08

    ldh a, [rIF]                                  ; $5b9f: $f0 $0f
    and c                                         ; $5ba1: $a1
    ld e, a                                       ; $5ba2: $5f
    ld [hl], h                                    ; $5ba3: $74
    adc e                                         ; $5ba4: $8b
    ld sp, hl                                     ; $5ba5: $f9
    ld b, $07                                     ; $5ba6: $06 $07
    ldh a, [rIF]                                  ; $5ba8: $f0 $0f
    push de                                       ; $5baa: $d5

jr_095_5bab:
    dec hl                                        ; $5bab: $2b
    ret nc                                        ; $5bac: $d0

    dec sp                                        ; $5bad: $3b
    sub $08                                       ; $5bae: $d6 $08
    rst $38                                       ; $5bb0: $ff
    nop                                           ; $5bb1: $00
    rst $38                                       ; $5bb2: $ff
    rrca                                          ; $5bb3: $0f
    ldh a, [rLYC]                                 ; $5bb4: $f0 $45
    cp d                                          ; $5bb6: $ba
    ld [bc], a                                    ; $5bb7: $02
    db $fd                                        ; $5bb8: $fd
    ld hl, $de50                                  ; $5bb9: $21 $50 $de
    add sp, $0b                                   ; $5bbc: $e8 $0b
    db $10                                        ; $5bbe: $10
    db $fd                                        ; $5bbf: $fd
    inc b                                         ; $5bc0: $04
    cp $01                                        ; $5bc1: $fe $01
    db $ed                                        ; $5bc3: $ed
    ld [de], a                                    ; $5bc4: $12
    nop                                           ; $5bc5: $00
    ld a, [$5405]                                 ; $5bc6: $fa $05 $54
    xor e                                         ; $5bc9: $ab
    jr nz, jr_095_5bab                            ; $5bca: $20 $df

    nop                                           ; $5bcc: $00
    rst $38                                       ; $5bcd: $ff
    ld b, b                                       ; $5bce: $40
    ld d, d                                       ; $5bcf: $52
    dec c                                         ; $5bd0: $0d
    dec b                                         ; $5bd1: $05
    xor b                                         ; $5bd2: $a8
    ld d, a                                       ; $5bd3: $57
    ld b, c                                       ; $5bd4: $41

jr_095_5bd5:
    cp a                                          ; $5bd5: $bf
    db $10                                        ; $5bd6: $10
    rst $28                                       ; $5bd7: $ef
    adc b                                         ; $5bd8: $88
    and e                                         ; $5bd9: $a3
    dec bc                                        ; $5bda: $0b
    ld bc, $a2ff                                  ; $5bdb: $01 $ff $a2
    dec e                                         ; $5bde: $1d
    dec b                                         ; $5bdf: $05
    cp l                                          ; $5be0: $bd
    rst $38                                       ; $5be1: $ff
    ld [hl], b                                    ; $5be2: $70
    jr nz, jr_095_5bd5                            ; $5be3: $20 $f0

    db $db                                        ; $5be5: $db
    ld d, h                                       ; $5be6: $54
    ld [bc], a                                    ; $5be7: $02
    ld d, d                                       ; $5be8: $52
    or $25                                        ; $5be9: $f6 $25
    ldh a, [$da]                                  ; $5beb: $f0 $da
    nop                                           ; $5bed: $00
    or b                                          ; $5bee: $b0
    or a                                          ; $5bef: $b7
    ld a, [c]                                     ; $5bf0: $f2
    push de                                       ; $5bf1: $d5
    ld a, [$9d9a]                                 ; $5bf2: $fa $9a $9d
    ld d, a                                       ; $5bf5: $57
    nop                                           ; $5bf6: $00
    ld a, [de]                                    ; $5bf7: $1a
    ld a, [hl-]                                   ; $5bf8: $3a
    dec e                                         ; $5bf9: $1d
    rst $10                                       ; $5bfa: $d7
    sbc d                                         ; $5bfb: $9a
    ld l, [hl]                                    ; $5bfc: $6e
    dec d                                         ; $5bfd: $15
    ld hl, $1e00                                  ; $5bfe: $21 $00 $1e
    sbc $95                                       ; $5c01: $de $95
    jp c, $a0b0                                   ; $5c03: $da $b0 $a0

    push de                                       ; $5c06: $d5
    ld e, d                                       ; $5c07: $5a
    nop                                           ; $5c08: $00
    db $f4                                        ; $5c09: $f4
    or l                                          ; $5c0a: $b5
    ld d, b                                       ; $5c0b: $50
    db $db                                        ; $5c0c: $db
    cp a                                          ; $5c0d: $bf
    cp d                                          ; $5c0e: $ba
    db $dd                                        ; $5c0f: $dd
    push de                                       ; $5c10: $d5
    nop                                           ; $5c11: $00
    cp a                                          ; $5c12: $bf
    and l                                         ; $5c13: $a5
    db $db                                        ; $5c14: $db
    cp c                                          ; $5c15: $b9
    ld d, $36                                     ; $5c16: $16 $36
    dec sp                                        ; $5c18: $3b
    cp c                                          ; $5c19: $b9
    nop                                           ; $5c1a: $00
    ld [de], a                                    ; $5c1b: $12
    and $ba                                       ; $5c1c: $e6 $ba
    ld a, [$55f2]                                 ; $5c1e: $fa $f2 $55
    ld a, [$809a]                                 ; $5c21: $fa $9a $80
    ld e, h                                       ; $5c24: $5c
    ld [bc], a                                    ; $5c25: $02
    ld e, l                                       ; $5c26: $5d
    or d                                          ; $5c27: $b2
    or l                                          ; $5c28: $b5
    ld e, d                                       ; $5c29: $5a
    ld e, d                                       ; $5c2a: $5a
    inc [hl]                                      ; $5c2b: $34
    or l                                          ; $5c2c: $b5
    nop                                           ; $5c2d: $00
    ld [de], a                                    ; $5c2e: $12
    ret c                                         ; $5c2f: $d8

    dec [hl]                                      ; $5c30: $35
    or l                                          ; $5c31: $b5
    jp c, $b952                                   ; $5c32: $da $52 $b9

    sub l                                         ; $5c35: $95
    nop                                           ; $5c36: $00
    ld a, d                                       ; $5c37: $7a
    rst $20                                       ; $5c38: $e7
    ld a, [de]                                    ; $5c39: $1a
    ld a, [hl-]                                   ; $5c3a: $3a
    ld d, a                                       ; $5c3b: $57
    ld [hl], l                                    ; $5c3c: $75
    sbc d                                         ; $5c3d: $9a
    cp [hl]                                       ; $5c3e: $be
    nop                                           ; $5c3f: $00
    ld d, a                                       ; $5c40: $57
    ld d, l                                       ; $5c41: $55
    ld a, [hl-]                                   ; $5c42: $3a
    or [hl]                                       ; $5c43: $b6
    ld e, l                                       ; $5c44: $5d
    ld d, a                                       ; $5c45: $57
    ld a, [hl-]                                   ; $5c46: $3a
    or d                                          ; $5c47: $b2
    nop                                           ; $5c48: $00
    ld e, l                                       ; $5c49: $5d
    jp c, $94b9                                   ; $5c4a: $da $b9 $94

    ld a, e                                       ; $5c4d: $7b
    jp z, $bcbf                                   ; $5c4e: $ca $bf $bc

    nop                                           ; $5c51: $00
    ld e, a                                       ; $5c52: $5f
    jp c, $a1b5                                   ; $5c53: $da $b5 $a1

    push de                                       ; $5c56: $d5
    ld e, e                                       ; $5c57: $5b
    or c                                          ; $5c58: $b1
    sub h                                         ; $5c59: $94
    nop                                           ; $5c5a: $00
    ld a, [c]                                     ; $5c5b: $f2
    ld b, l                                       ; $5c5c: $45
    dec sp                                        ; $5c5d: $3b
    cp d                                          ; $5c5e: $ba
    ld a, l                                       ; $5c5f: $7d
    ld e, l                                       ; $5c60: $5d
    rst $38                                       ; $5c61: $ff
    ld a, [$fd00]                                 ; $5c62: $fa $00 $fd
    ei                                            ; $5c65: $fb
    ld e, l                                       ; $5c66: $5d
    inc [hl]                                      ; $5c67: $34
    dec sp                                        ; $5c68: $3b
    cp e                                          ; $5c69: $bb
    ld e, [hl]                                    ; $5c6a: $5e
    inc h                                         ; $5c6b: $24
    nop                                           ; $5c6c: $00
    ld a, e                                       ; $5c6d: $7b
    adc d                                         ; $5c6e: $8a
    call c, $8afd                                 ; $5c6f: $dc $fd $8a
    xor d                                         ; $5c72: $aa
    push de                                       ; $5c73: $d5
    db $dd                                        ; $5c74: $dd
    nop                                           ; $5c75: $00
    adc d                                         ; $5c76: $8a

jr_095_5c77:
    cp [hl]                                       ; $5c77: $be
    ret z                                         ; $5c78: $c8

    adc [hl]                                      ; $5c79: $8e
    ret c                                         ; $5c7a: $d8

    cp e                                          ; $5c7b: $bb
    call nz, Call_000_00d6                        ; $5c7c: $c4 $d6 $00
    adc b                                         ; $5c7f: $88
    xor a                                         ; $5c80: $af
    ld d, c                                       ; $5c81: $51
    ld a, c                                       ; $5c82: $79
    and d                                         ; $5c83: $a2
    xor $31                                       ; $5c84: $ee $31
    db $db                                        ; $5c86: $db
    nop                                           ; $5c87: $00
    inc h                                         ; $5c88: $24
    and [hl]                                      ; $5c89: $a6
    ld d, c                                       ; $5c8a: $51
    ld e, e                                       ; $5c8b: $5b
    and h                                         ; $5c8c: $a4
    ld l, $71                                     ; $5c8d: $2e $71
    cp e                                          ; $5c8f: $bb
    nop                                           ; $5c90: $00
    ld h, b                                       ; $5c91: $60
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    ld l, a                                       ; $5c94: $6f
    add d                                         ; $5c95: $82
    cp e                                          ; $5c96: $bb
    add $57                                       ; $5c97: $c6 $57
    nop                                           ; $5c99: $00
    xor d                                         ; $5c9a: $aa
    sbc e                                         ; $5c9b: $9b
    db $e4                                        ; $5c9c: $e4
    or l                                          ; $5c9d: $b5
    jp z, $85da                                   ; $5c9e: $ca $da $85

    xor a                                         ; $5ca1: $af
    nop                                           ; $5ca2: $00
    jp nc, $ddab                                  ; $5ca3: $d2 $ab $dd

    ld a, l                                       ; $5ca6: $7d
    adc e                                         ; $5ca7: $8b
    db $eb                                        ; $5ca8: $eb
    dec d                                         ; $5ca9: $15
    ld a, l                                       ; $5caa: $7d
    nop                                           ; $5cab: $00
    adc e                                         ; $5cac: $8b
    xor a                                         ; $5cad: $af
    add hl, de                                    ; $5cae: $19
    ld a, e                                       ; $5caf: $7b
    adc l                                         ; $5cb0: $8d
    xor a                                         ; $5cb1: $af
    ld de, $0057                                  ; $5cb2: $11 $57 $00
    xor c                                         ; $5cb5: $a9
    xor e                                         ; $5cb6: $ab
    call nc, $c8bf                                ; $5cb7: $d4 $bf $c8
    sbc e                                         ; $5cba: $9b
    db $e4                                        ; $5cbb: $e4
    xor [hl]                                      ; $5cbc: $ae
    db $10                                        ; $5cbd: $10
    ret c                                         ; $5cbe: $d8

    sbc e                                         ; $5cbf: $9b
    db $e4                                        ; $5cc0: $e4
    ld [$611d], a                                 ; $5cc1: $ea $1d $61
    ld a, $9c                                     ; $5cc4: $3e $9c
    ld a, a                                       ; $5cc6: $7f
    ld [bc], a                                    ; $5cc7: $02
    dec sp                                        ; $5cc8: $3b
    rst $38                                       ; $5cc9: $ff
    rst $18                                       ; $5cca: $df
    jr nz, jr_095_5c77                            ; $5ccb: $20 $aa

    ld [hl], l                                    ; $5ccd: $75
    ld a, [$9a1d]                                 ; $5cce: $fa $1d $9a
    nop                                           ; $5cd1: $00
    ld h, a                                       ; $5cd2: $67
    rst $28                                       ; $5cd3: $ef
    ld a, [c]                                     ; $5cd4: $f2
    or [hl]                                       ; $5cd5: $b6
    set 5, e                                      ; $5cd6: $cb $eb
    add [hl]                                      ; $5cd8: $86
    or d                                          ; $5cd9: $b2
    ld b, b                                       ; $5cda: $40
    ld c, a                                       ; $5cdb: $4f
    ld a, [bc]                                    ; $5cdc: $0a
    ld e, $ad                                     ; $5cdd: $1e $ad
    inc de                                        ; $5cdf: $13
    ld e, a                                       ; $5ce0: $5f
    xor c                                         ; $5ce1: $a9
    xor e                                         ; $5ce2: $ab
    dec d                                         ; $5ce3: $15
    ld [$ab5d], sp                                ; $5ce4: $08 $5d $ab
    db $eb                                        ; $5ce7: $eb

jr_095_5ce8:
    dec d                                         ; $5ce8: $15
    ld a, [de]                                    ; $5ce9: $1a
    ld e, $aa                                     ; $5cea: $1e $aa
    rst $38                                       ; $5cec: $ff
    push de                                       ; $5ced: $d5
    nop                                           ; $5cee: $00
    rst $38                                       ; $5cef: $ff
    add l                                         ; $5cf0: $85
    ei                                            ; $5cf1: $fb
    xor e                                         ; $5cf2: $ab
    push de                                       ; $5cf3: $d5
    add b                                         ; $5cf4: $80
    rst $38                                       ; $5cf5: $ff
    sub l                                         ; $5cf6: $95
    jr z, jr_095_5ce8                             ; $5cf7: $28 $ef

    adc a                                         ; $5cf9: $8f
    db $10                                        ; $5cfa: $10
    db $10                                        ; $5cfb: $10
    ld d, l                                       ; $5cfc: $55
    jr c, jr_095_5d00                             ; $5cfd: $38 $01

jr_095_5cff:
    inc sp                                        ; $5cff: $33

jr_095_5d00:
    db $dd                                        ; $5d00: $dd

Call_095_5d01:
    dec b                                         ; $5d01: $05
    jr nc, jr_095_5cff                            ; $5d02: $30 $fb

    pop bc                                        ; $5d04: $c1
    db $ec                                        ; $5d05: $ec
    ld [bc], a                                    ; $5d06: $02
    db $10                                        ; $5d07: $10
    jr @+$06                                      ; $5d08: $18 $04

    rst $38                                       ; $5d0a: $ff
    ld [hl-], a                                   ; $5d0b: $32
    call Call_000_0508                            ; $5d0c: $cd $08 $05
    cp $16                                        ; $5d0f: $fe $16
    db $ed                                        ; $5d11: $ed
    ld c, h                                       ; $5d12: $4c
    ld c, $ab                                     ; $5d13: $0e $ab
    rst $38                                       ; $5d15: $ff
    ld [hl], l                                    ; $5d16: $75
    nop                                           ; $5d17: $00
    rst $38                                       ; $5d18: $ff
    ld hl, $45ff                                  ; $5d19: $21 $ff $45
    cp e                                          ; $5d1c: $bb
    inc hl                                        ; $5d1d: $23
    db $fd                                        ; $5d1e: $fd
    dec h                                         ; $5d1f: $25
    ld [hl+], a                                   ; $5d20: $22
    ei                                            ; $5d21: $fb
    pop af                                        ; $5d22: $f1
    ld e, l                                       ; $5d23: $5d
    ld c, $a8                                     ; $5d24: $0e $a8
    rst $38                                       ; $5d26: $ff
    push af                                       ; $5d27: $f5
    inc b                                         ; $5d28: $04
    ld c, b                                       ; $5d29: $48
    jp c, $b104                                   ; $5d2a: $da $04 $b1

    ld sp, hl                                     ; $5d2d: $f9
    db $fc                                        ; $5d2e: $fc
    ld e, d                                       ; $5d2f: $5a
    dec [hl]                                      ; $5d30: $35
    jr nz, jr_095_5d37                            ; $5d31: $20 $04

    sub b                                         ; $5d33: $90
    cp h                                          ; $5d34: $bc
    nop                                           ; $5d35: $00
    ld a, c                                       ; $5d36: $79

jr_095_5d37:
    ld e, [hl]                                    ; $5d37: $5e
    or h                                          ; $5d38: $b4
    sub h                                         ; $5d39: $94
    or c                                          ; $5d3a: $b1
    cp e                                          ; $5d3b: $bb
    ld e, [hl]                                    ; $5d3c: $5e
    ld d, $40                                     ; $5d3d: $16 $40
    ccf                                           ; $5d3f: $3f
    inc b                                         ; $5d40: $04
    nop                                           ; $5d41: $00
    dec sp                                        ; $5d42: $3b
    cp c                                          ; $5d43: $b9
    ld e, [hl]                                    ; $5d44: $5e
    ld [hl], h                                    ; $5d45: $74
    dec sp                                        ; $5d46: $3b
    or a                                          ; $5d47: $b7
    add hl, bc                                    ; $5d48: $09
    ld e, d                                       ; $5d49: $5a
    sbc b                                         ; $5d4a: $98
    sbc a                                         ; $5d4b: $9f
    add c                                         ; $5d4c: $81
    ld l, h                                       ; $5d4d: $6c
    dec [hl]                                      ; $5d4e: $35
    ret nz                                        ; $5d4f: $c0

    cp a                                          ; $5d50: $bf
    ld h, b                                       ; $5d51: $60
    dec c                                         ; $5d52: $0d
    ld l, b                                       ; $5d53: $68
    rst $38                                       ; $5d54: $ff
    jr c, @+$07                                   ; $5d55: $38 $05

    ld b, b                                       ; $5d57: $40
    dec l                                         ; $5d58: $2d
    inc bc                                        ; $5d59: $03
    sbc h                                         ; $5d5a: $9c
    ld b, $78                                     ; $5d5b: $06 $78
    sub a                                         ; $5d5d: $97
    or c                                          ; $5d5e: $b1
    nop                                           ; $5d5f: $00
    ld e, d                                       ; $5d60: $5a
    ld e, d                                       ; $5d61: $5a
    ld sp, $3ad5                                  ; $5d62: $31 $d5 $3a
    ld a, d                                       ; $5d65: $7a
    sub h                                         ; $5d66: $94
    cp h                                          ; $5d67: $bc
    nop                                           ; $5d68: $00
    ld [hl], d                                    ; $5d69: $72
    ei                                            ; $5d6a: $fb
    jr nc, jr_095_5da3                            ; $5d6b: $30 $36

    rst $18                                       ; $5d6d: $df
    ld d, h                                       ; $5d6e: $54
    dec de                                        ; $5d6f: $1b
    ld a, $00                                     ; $5d70: $3e $00
    ld e, a                                       ; $5d72: $5f
    adc d                                         ; $5d73: $8a
    ld [hl], l                                    ; $5d74: $75
    and c                                         ; $5d75: $a1
    ld e, l                                       ; $5d76: $5d
    ld a, e                                       ; $5d77: $7b
    sub l                                         ; $5d78: $95
    or l                                          ; $5d79: $b5
    nop                                           ; $5d7a: $00
    ld d, [hl]                                    ; $5d7b: $56
    ld sp, hl                                     ; $5d7c: $f9
    dec d                                         ; $5d7d: $15
    push af                                       ; $5d7e: $f5
    ld a, [$14bb]                                 ; $5d7f: $fa $bb $14
    ld [hl], a                                    ; $5d82: $77
    ld [bc], a                                    ; $5d83: $02
    ld a, [hl+]                                   ; $5d84: $2a
    cp e                                          ; $5d85: $bb
    db $10                                        ; $5d86: $10
    rst $30                                       ; $5d87: $f7
    xor d                                         ; $5d88: $aa
    ld a, [$0232]                                 ; $5d89: $fa $32 $02
    cp d                                          ; $5d8c: $ba
    nop                                           ; $5d8d: $00
    ld d, h                                       ; $5d8e: $54
    push af                                       ; $5d8f: $f5
    ld a, [hl+]                                   ; $5d90: $2a
    adc b                                         ; $5d91: $88
    ld hl, sp+$68                                 ; $5d92: $f8 $68
    sbc b                                         ; $5d94: $98
    ld hl, sp+$00                                 ; $5d95: $f8 $00
    adc b                                         ; $5d97: $88
    ld a, b                                       ; $5d98: $78
    adc b                                         ; $5d99: $88
    rst $38                                       ; $5d9a: $ff
    adc a                                         ; $5d9b: $8f
    add hl, hl                                    ; $5d9c: $29
    sbc $bf                                       ; $5d9d: $de $bf
    nop                                           ; $5d9f: $00
    rst $08                                       ; $5da0: $cf
    ld l, b                                       ; $5da1: $68
    sbc b                                         ; $5da2: $98

jr_095_5da3:
    rst $38                                       ; $5da3: $ff
    rst $38                                       ; $5da4: $ff
    and c                                         ; $5da5: $a1
    sbc $8d                                       ; $5da6: $de $8d
    nop                                           ; $5da8: $00

jr_095_5da9:
    ld a, [$fd8a]                                 ; $5da9: $fa $8a $fd
    xor c                                         ; $5dac: $a9
    sbc $9c                                       ; $5dad: $de $9c
    db $eb                                        ; $5daf: $eb
    and d                                         ; $5db0: $a2
    ld [bc], a                                    ; $5db1: $02
    db $dd                                        ; $5db2: $dd
    sub c                                         ; $5db3: $91
    xor $af                                       ; $5db4: $ee $af
    rst $18                                       ; $5db6: $df
    ret z                                         ; $5db7: $c8

    call nc, $9a05                                ; $5db8: $d4 $05 $9a
    nop                                           ; $5dbb: $00
    rst $38                                       ; $5dbc: $ff
    xor l                                         ; $5dbd: $ad
    cp $db                                        ; $5dbe: $fe $db
    db $fc                                        ; $5dc0: $fc
    adc a                                         ; $5dc1: $8f
    ld hl, sp-$55                                 ; $5dc2: $f8 $ab
    ld [$8bfc], sp                                ; $5dc4: $08 $fc $8b
    db $fc                                        ; $5dc7: $fc
    sbc c                                         ; $5dc8: $99
    ld c, [hl]                                    ; $5dc9: $4e
    inc bc                                        ; $5dca: $03
    adc b                                         ; $5dcb: $88
    rst $38                                       ; $5dcc: $ff
    sbc b                                         ; $5dcd: $98
    nop                                           ; $5dce: $00
    rst $28                                       ; $5dcf: $ef
    adc d                                         ; $5dd0: $8a
    db $fd                                        ; $5dd1: $fd
    and c                                         ; $5dd2: $a1
    sbc $92                                       ; $5dd3: $de $92
    db $ed                                        ; $5dd5: $ed
    rst $18                                       ; $5dd6: $df
    nop                                           ; $5dd7: $00
    rst $38                                       ; $5dd8: $ff
    cp e                                          ; $5dd9: $bb
    db $fc                                        ; $5dda: $fc
    rst $08                                       ; $5ddb: $cf
    rst $38                                       ; $5ddc: $ff
    sbc e                                         ; $5ddd: $9b
    db $fc                                        ; $5dde: $fc
    sbc d                                         ; $5ddf: $9a
    inc h                                         ; $5de0: $24
    db $fd                                        ; $5de1: $fd
    ret c                                         ; $5de2: $d8

    inc c                                         ; $5de3: $0c
    ld d, $af                                     ; $5de4: $16 $af
    rst $18                                       ; $5de6: $df
    ld [bc], a                                    ; $5de7: $02
    jr jr_095_5da9                                ; $5de8: $18 $bf

    rst $08                                       ; $5dea: $cf
    ld b, b                                       ; $5deb: $40
    rst $38                                       ; $5dec: $ff
    ld [bc], a                                    ; $5ded: $02
    nop                                           ; $5dee: $00
    rst $18                                       ; $5def: $df
    rst $28                                       ; $5df0: $ef
    ld [hl], l                                    ; $5df1: $75
    cp e                                          ; $5df2: $bb
    ld [hl], a                                    ; $5df3: $77
    cp c                                          ; $5df4: $b9
    nop                                           ; $5df5: $00
    ld [hl], e                                    ; $5df6: $73
    cp l                                          ; $5df7: $bd
    dec [hl]                                      ; $5df8: $35
    ei                                            ; $5df9: $fb
    ld a, e                                       ; $5dfa: $7b
    cp l                                          ; $5dfb: $bd
    jr @+$01                                      ; $5dfc: $18 $ff

    nop                                           ; $5dfe: $00
    jp c, $b8bd                                   ; $5dff: $da $bd $b8

Call_095_5e02:
    rst $18                                       ; $5e02: $df
    pop af                                        ; $5e03: $f1
    rst $38                                       ; $5e04: $ff
    push af                                       ; $5e05: $f5

jr_095_5e06:
    ei                                            ; $5e06: $fb
    jr nz, jr_095_5e06                            ; $5e07: $20 $fd

    di                                            ; $5e09: $f3
    inc b                                         ; $5e0a: $04
    jr jr_095_5e06                                ; $5e0b: $18 $f9

    rst $30                                       ; $5e0d: $f7
    push af                                       ; $5e0e: $f5
    ei                                            ; $5e0f: $fb
    rst $08                                       ; $5e10: $cf
    add hl, bc                                    ; $5e11: $09
    ldh a, [$c7]                                  ; $5e12: $f0 $c7
    ld hl, sp-$71                                 ; $5e14: $f8 $8f
    inc b                                         ; $5e16: $04
    nop                                           ; $5e17: $00
    adc e                                         ; $5e18: $8b
    db $f4                                        ; $5e19: $f4
    inc b                                         ; $5e1a: $04
    ld [$8700], sp                                ; $5e1b: $08 $00 $87
    ld hl, sp-$22                                 ; $5e1e: $f8 $de
    rst $28                                       ; $5e20: $ef
    rst $18                                       ; $5e21: $df
    xor $d6                                       ; $5e22: $ee $d6
    rst $28                                       ; $5e24: $ef
    nop                                           ; $5e25: $00
    ld e, a                                       ; $5e26: $5f
    and $6e                                       ; $5e27: $e6 $6e
    rst $30                                       ; $5e29: $f7
    ld l, a                                       ; $5e2a: $6f
    halt                                          ; $5e2b: $76
    ld l, d                                       ; $5e2c: $6a
    ld [hl], a                                    ; $5e2d: $77
    nop                                           ; $5e2e: $00
    dec hl                                        ; $5e2f: $2b
    ld [hl], a                                    ; $5e30: $77
    sbc d                                         ; $5e31: $9a
    db $fd                                        ; $5e32: $fd
    xor l                                         ; $5e33: $ad
    sbc $ce                                       ; $5e34: $de $ce
    db $fd                                        ; $5e36: $fd
    nop                                           ; $5e37: $00
    db $ed                                        ; $5e38: $ed
    sbc $dc                                       ; $5e39: $de $dc
    rst $28                                       ; $5e3b: $ef
    ld l, l                                       ; $5e3c: $6d
    cp $f6                                        ; $5e3d: $fe $f6
    ld l, a                                       ; $5e3f: $6f
    nop                                           ; $5e40: $00
    xor $77                                       ; $5e41: $ee $77
    ld sp, hl                                     ; $5e43: $f9
    rst $30                                       ; $5e44: $f7
    or l                                          ; $5e45: $b5
    ei                                            ; $5e46: $fb
    or c                                          ; $5e47: $b1
    rst $38                                       ; $5e48: $ff
    nop                                           ; $5e49: $00
    push af                                       ; $5e4a: $f5
    cp e                                          ; $5e4b: $bb
    sbc l                                         ; $5e4c: $9d
    di                                            ; $5e4d: $f3
    push de                                       ; $5e4e: $d5
    cp e                                          ; $5e4f: $bb
    cp c                                          ; $5e50: $b9
    rst $10                                       ; $5e51: $d7
    nop                                           ; $5e52: $00
    push de                                       ; $5e53: $d5
    cp e                                          ; $5e54: $bb
    adc e                                         ; $5e55: $8b
    db $f4                                        ; $5e56: $f4
    sub a                                         ; $5e57: $97
    add sp, -$7d                                  ; $5e58: $e8 $83
    db $fc                                        ; $5e5a: $fc
    inc b                                         ; $5e5b: $04
    add l                                         ; $5e5c: $85
    ld a, [$dca3]                                 ; $5e5d: $fa $a3 $dc
    dec b                                         ; $5e60: $05
    ld b, $04                                     ; $5e61: $06 $04
    dec b                                         ; $5e63: $05
    ld a, [$3700]                                 ; $5e64: $fa $00 $37
    dec sp                                        ; $5e67: $3b
    dec d                                         ; $5e68: $15
    dec sp                                        ; $5e69: $3b
    dec e                                         ; $5e6a: $1d
    dec de                                        ; $5e6b: $1b
    ld a, [bc]                                    ; $5e6c: $0a
    dec e                                         ; $5e6d: $1d
    nop                                           ; $5e6e: $00
    dec c                                         ; $5e6f: $0d
    ld c, $06                                     ; $5e70: $0e $06
    rrca                                          ; $5e72: $0f
    inc bc                                        ; $5e73: $03
    rlca                                          ; $5e74: $07
    ld bc, $0103                                  ; $5e75: $01 $03 $01
    or [hl]                                       ; $5e78: $b6
    ld a, a                                       ; $5e79: $7f
    ld [hl], e                                    ; $5e7a: $73
    cp a                                          ; $5e7b: $bf
    ld a, l                                       ; $5e7c: $7d
    cp e                                          ; $5e7d: $bb
    dec sp                                        ; $5e7e: $3b
    call z, Call_000_0006                         ; $5e7f: $cc $06 $00
    sbc $6f                                       ; $5e82: $de $6f
    ld l, a                                       ; $5e84: $6f
    rst $38                                       ; $5e85: $ff
    or c                                          ; $5e86: $b1
    adc $fb                                       ; $5e87: $ce $fb
    sub a                                         ; $5e89: $97
    nop                                           ; $5e8a: $00
    rst $30                                       ; $5e8b: $f7
    sbc e                                         ; $5e8c: $9b
    cp e                                          ; $5e8d: $bb
    rst $10                                       ; $5e8e: $d7
    sub e                                         ; $5e8f: $93
    rst $38                                       ; $5e90: $ff
    ld a, [$00d7]                                 ; $5e91: $fa $d7 $00
    jp nc, $9cff                                  ; $5e94: $d2 $ff $9c

    ld [c], a                                     ; $5e97: $e2
    ld a, [c]                                     ; $5e98: $f2
    ld c, $83                                     ; $5e99: $0e $83
    db $fc                                        ; $5e9b: $fc
    nop                                           ; $5e9c: $00
    dec b                                         ; $5e9d: $05
    ld a, [$ed12]                                 ; $5e9e: $fa $12 $ed
    ld bc, $02fe                                  ; $5ea1: $01 $fe $02
    db $fd                                        ; $5ea4: $fd
    nop                                           ; $5ea5: $00
    ld bc, $0afe                                  ; $5ea6: $01 $fe $0a
    push af                                       ; $5ea9: $f5
    ld de, $03ee                                  ; $5eaa: $11 $ee $03
    rlca                                          ; $5ead: $07
    nop                                           ; $5eae: $00
    rlca                                          ; $5eaf: $07
    rlca                                          ; $5eb0: $07
    ld b, $0f                                     ; $5eb1: $06 $0f
    rlca                                          ; $5eb3: $07
    ld c, $0c                                     ; $5eb4: $0e $0c
    rrca                                          ; $5eb6: $0f
    nop                                           ; $5eb7: $00
    dec c                                         ; $5eb8: $0d
    ld e, $0e                                     ; $5eb9: $1e $0e
    dec e                                         ; $5ebb: $1d
    ld a, [de]                                    ; $5ebc: $1a
    dec e                                         ; $5ebd: $1d
    rst $08                                       ; $5ebe: $cf
    ldh a, [rP1]                                  ; $5ebf: $f0 $00
    ld a, a                                       ; $5ec1: $7f
    rst $38                                       ; $5ec2: $ff
    db $db                                        ; $5ec3: $db
    ld l, l                                       ; $5ec4: $6d
    rst $28                                       ; $5ec5: $ef
    reti                                          ; $5ec6: $d9


    sub l                                         ; $5ec7: $95
    ei                                            ; $5ec8: $fb
    nop                                           ; $5ec9: $00
    ei                                            ; $5eca: $fb
    or a                                          ; $5ecb: $b7
    rst $20                                       ; $5ecc: $e7
    cp e                                          ; $5ecd: $bb
    xor e                                         ; $5ece: $ab
    rst $30                                       ; $5ecf: $f7
    ld a, $fe                                     ; $5ed0: $3e $fe
    nop                                           ; $5ed2: $00
    or $fe                                        ; $5ed3: $f6 $fe
    cp [hl]                                       ; $5ed5: $be
    rst $38                                       ; $5ed6: $ff
    or [hl]                                       ; $5ed7: $b6
    rst $38                                       ; $5ed8: $ff
    ei                                            ; $5ed9: $fb
    cp a                                          ; $5eda: $bf
    nop                                           ; $5edb: $00
    sub a                                         ; $5edc: $97
    ei                                            ; $5edd: $fb
    db $db                                        ; $5ede: $db
    cp a                                          ; $5edf: $bf
    ld e, a                                       ; $5ee0: $5f
    cp e                                          ; $5ee1: $bb
    ld [bc], a                                    ; $5ee2: $02
    db $fd                                        ; $5ee3: $fd
    jr z, jr_095_5eeb                             ; $5ee4: $28 $05

    ld a, [$030c]                                 ; $5ee6: $fa $0c $03
    cp $18                                        ; $5ee9: $fe $18

jr_095_5eeb:
    inc e                                         ; $5eeb: $1c
    db $10                                        ; $5eec: $10
    rst $38                                       ; $5eed: $ff
    db $fc                                        ; $5eee: $fc
    ld [$fa03], sp                                ; $5eef: $08 $03 $fa
    dec b                                         ; $5ef2: $05
    db $f4                                        ; $5ef3: $f4
    adc d                                         ; $5ef4: $8a
    ld b, $f4                                     ; $5ef5: $06 $f4
    dec bc                                        ; $5ef7: $0b
    add sp, $00                                   ; $5ef8: $e8 $00
    rla                                           ; $5efa: $17
    ldh a, [rIF]                                  ; $5efb: $f0 $0f
    db $e4                                        ; $5efd: $e4
    dec de                                        ; $5efe: $1b
    inc bc                                        ; $5eff: $03
    inc bc                                        ; $5f00: $03
    inc b                                         ; $5f01: $04
    nop                                           ; $5f02: $00
    rlca                                          ; $5f03: $07
    add hl, bc                                    ; $5f04: $09
    ld c, $3b                                     ; $5f05: $0e $3b
    inc a                                         ; $5f07: $3c
    ld c, c                                       ; $5f08: $49
    ld a, [hl]                                    ; $5f09: $7e
    and h                                         ; $5f0a: $a4
    nop                                           ; $5f0b: $00
    rst $18                                       ; $5f0c: $df
    di                                            ; $5f0d: $f3
    adc a                                         ; $5f0e: $8f
    cp e                                          ; $5f0f: $bb
    rst $00                                       ; $5f10: $c7
    ld h, d                                       ; $5f11: $62
    sbc a                                         ; $5f12: $9f
    or l                                          ; $5f13: $b5
    nop                                           ; $5f14: $00
    adc $71                                       ; $5f15: $ce $71
    cp $06                                        ; $5f17: $fe $06
    ld sp, hl                                     ; $5f19: $f9
    db $fd                                        ; $5f1a: $fd
    inc bc                                        ; $5f1b: $03
    xor d                                         ; $5f1c: $aa
    ld [hl+], a                                   ; $5f1d: $22
    ld d, a                                       ; $5f1e: $57
    dec b                                         ; $5f1f: $05
    ld a, [c]                                     ; $5f20: $f2
    ld b, $6e                                     ; $5f21: $06 $6e
    rst $30                                       ; $5f23: $f7
    inc a                                         ; $5f24: $3c
    inc b                                         ; $5f25: $04
    nop                                           ; $5f26: $00
    rst $38                                       ; $5f27: $ff
    ld [bc], a                                    ; $5f28: $02
    rst $38                                       ; $5f29: $ff
    ld e, d                                       ; $5f2a: $5a
    rst $20                                       ; $5f2b: $e7
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    db $db                                        ; $5f2e: $db
    inc b                                         ; $5f2f: $04
    nop                                           ; $5f30: $00
    ret nc                                        ; $5f31: $d0

    nop                                           ; $5f32: $00
    cpl                                           ; $5f33: $2f
    ldh [$1f], a                                  ; $5f34: $e0 $1f
    call nc, $e82b                                ; $5f36: $d4 $2b $e8
    rla                                           ; $5f39: $17
    ret nz                                        ; $5f3a: $c0

    nop                                           ; $5f3b: $00
    ccf                                           ; $5f3c: $3f
    ldh [$1f], a                                  ; $5f3d: $e0 $1f
    ret nz                                        ; $5f3f: $c0

    ccf                                           ; $5f40: $3f
    ret z                                         ; $5f41: $c8

    scf                                           ; $5f42: $37
    push de                                       ; $5f43: $d5
    nop                                           ; $5f44: $00
    xor e                                         ; $5f45: $ab
    xor c                                         ; $5f46: $a9
    rst $10                                       ; $5f47: $d7
    ld e, l                                       ; $5f48: $5d
    ld h, e                                       ; $5f49: $63
    ld c, a                                       ; $5f4a: $4f
    ld [hl], c                                    ; $5f4b: $71
    dec l                                         ; $5f4c: $2d
    ld bc, $2733                                  ; $5f4d: $01 $33 $27
    add hl, sp                                    ; $5f50: $39
    ld l, l                                       ; $5f51: $6d
    ld [hl], e                                    ; $5f52: $73
    ld d, a                                       ; $5f53: $57
    ld a, c                                       ; $5f54: $79
    ld [hl], d                                    ; $5f55: $72
    rlca                                          ; $5f56: $07
    inc c                                         ; $5f57: $0c
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    add b                                         ; $5f5a: $80

jr_095_5f5b:
    add b                                         ; $5f5b: $80
    inc b                                         ; $5f5c: $04
    jr c, jr_095_5f6f                             ; $5f5d: $38 $10

    ld [$0400], sp                                ; $5f5f: $08 $00 $04
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    ld [$1000], sp                                ; $5f64: $08 $00 $10
    nop                                           ; $5f67: $00
    jr nz, jr_095_5f6a                            ; $5f68: $20 $00

jr_095_5f6a:
    ld b, b                                       ; $5f6a: $40
    add b                                         ; $5f6b: $80
    jr nz, jr_095_5f72                            ; $5f6c: $20 $04

    ret z                                         ; $5f6e: $c8

jr_095_5f6f:
    scf                                           ; $5f6f: $37
    add b                                         ; $5f70: $80
    ld a, a                                       ; $5f71: $7f

jr_095_5f72:
    ld b, b                                       ; $5f72: $40
    cp a                                          ; $5f73: $bf
    add b                                         ; $5f74: $80
    ld b, b                                       ; $5f75: $40
    ld a, a                                       ; $5f76: $7f
    call nc, Call_095_7f06                        ; $5f77: $d4 $06 $7f
    jr nz, jr_095_5f5b                            ; $5f7a: $20 $df

    ld [hl], l                                    ; $5f7c: $75
    ld e, e                                       ; $5f7d: $5b
    ld h, l                                       ; $5f7e: $65
    nop                                           ; $5f7f: $00
    ld e, e                                       ; $5f80: $5b
    ld e, b                                       ; $5f81: $58
    ld l, a                                       ; $5f82: $6f
    dec a                                         ; $5f83: $3d
    dec hl                                        ; $5f84: $2b
    inc h                                         ; $5f85: $24
    ccf                                           ; $5f86: $3f
    jr jr_095_5f89                                ; $5f87: $18 $00

jr_095_5f89:
    rla                                           ; $5f89: $17
    dec d                                         ; $5f8a: $15
    dec de                                        ; $5f8b: $1b
    add hl, hl                                    ; $5f8c: $29
    ccf                                           ; $5f8d: $3f
    nop                                           ; $5f8e: $00
    add b                                         ; $5f8f: $80
    add c                                         ; $5f90: $81
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    inc bc                                        ; $5f93: $03
    add b                                         ; $5f94: $80
    add a                                         ; $5f95: $87
    nop                                           ; $5f96: $00
    ld c, $80                                     ; $5f97: $0e $80
    sbc h                                         ; $5f99: $9c
    ld bc, $3800                                  ; $5f9a: $01 $00 $38
    add b                                         ; $5f9d: $80
    ldh a, [rP1]                                  ; $5f9e: $f0 $00
    ret nz                                        ; $5fa0: $c0

    nop                                           ; $5fa1: $00
    ld c, h                                       ; $5fa2: $4c
    nop                                           ; $5fa3: $00
    adc h                                         ; $5fa4: $8c
    ld [bc], a                                    ; $5fa5: $02
    ld c, b                                       ; $5fa6: $48
    rst $38                                       ; $5fa7: $ff
    ld b, b                                       ; $5fa8: $40
    cp a                                          ; $5fa9: $bf
    db $10                                        ; $5faa: $10
    inc h                                         ; $5fab: $24
    ld b, d                                       ; $5fac: $42
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    rst $38                                       ; $5faf: $ff
    nop                                           ; $5fb0: $00
    ld c, c                                       ; $5fb1: $49
    ld a, a                                       ; $5fb2: $7f
    ld d, l                                       ; $5fb3: $55
    ld l, a                                       ; $5fb4: $6f
    ld l, b                                       ; $5fb5: $68
    ld d, a                                       ; $5fb6: $57
    ld d, l                                       ; $5fb7: $55
    ld l, e                                       ; $5fb8: $6b
    nop                                           ; $5fb9: $00
    inc l                                         ; $5fba: $2c
    inc sp                                        ; $5fbb: $33
    rla                                           ; $5fbc: $17
    add hl, de                                    ; $5fbd: $19
    jr z, jr_095_5fff                             ; $5fbe: $28 $3f

    inc hl                                        ; $5fc0: $23
    dec a                                         ; $5fc1: $3d
    jr jr_095_6024                                ; $5fc2: $18 $60

    add b                                         ; $5fc4: $80
    ret nz                                        ; $5fc5: $c0

    add b                                         ; $5fc6: $80
    ld e, b                                       ; $5fc7: $58
    ld [bc], a                                    ; $5fc8: $02
    ld h, b                                       ; $5fc9: $60
    ld e, $e1                                     ; $5fca: $1e $e1
    dec hl                                        ; $5fcc: $2b
    nop                                           ; $5fcd: $00
    call nc, $aa55                                ; $5fce: $d4 $55 $aa
    dec bc                                        ; $5fd1: $0b
    db $f4                                        ; $5fd2: $f4
    daa                                           ; $5fd3: $27
    ret c                                         ; $5fd4: $d8

    dec bc                                        ; $5fd5: $0b
    ld b, $f4                                     ; $5fd6: $06 $f4
    dec d                                         ; $5fd8: $15
    ld [$f40b], a                                 ; $5fd9: $ea $0b $f4
    cp [hl]                                       ; $5fdc: $be
    inc a                                         ; $5fdd: $3c
    sbc b                                         ; $5fde: $98
    dec e                                         ; $5fdf: $1d
    dec b                                         ; $5fe0: $05
    ld [hl], d                                    ; $5fe1: $72
    ld a, [$096a]                                 ; $5fe2: $fa $6a $09
    ld l, [hl]                                    ; $5fe5: $6e
    add hl, bc                                    ; $5fe6: $09
    push hl                                       ; $5fe7: $e5
    rrca                                          ; $5fe8: $0f
    ld bc, $d4fe                                  ; $5fe9: $01 $fe $d4
    inc c                                         ; $5fec: $0c
    ld l, a                                       ; $5fed: $6f
    nop                                           ; $5fee: $00
    sub b                                         ; $5fef: $90
    rst $30                                       ; $5ff0: $f7
    ld [$a05f], sp                                ; $5ff1: $08 $5f $a0
    xor e                                         ; $5ff4: $ab
    ld d, h                                       ; $5ff5: $54
    inc d                                         ; $5ff6: $14
    ld b, h                                       ; $5ff7: $44
    db $eb                                        ; $5ff8: $eb
    ld a, b                                       ; $5ff9: $78
    inc b                                         ; $5ffa: $04
    ld bc, $0001                                  ; $5ffb: $01 $01 $00
    inc b                                         ; $5ffe: $04

jr_095_5fff:
    ld c, b                                       ; $5fff: $48
    inc b                                         ; $6000: $04
    ei                                            ; $6001: $fb
    jr nz, jr_095_600c                            ; $6002: $20 $08

    rst $30                                       ; $6004: $f7
    sub d                                         ; $6005: $92
    jr z, jr_095_6009                             ; $6006: $28 $01

    rst $38                                       ; $6008: $ff

jr_095_6009:
    dec b                                         ; $6009: $05
    ei                                            ; $600a: $fb
    nop                                           ; $600b: $00

jr_095_600c:
    nop                                           ; $600c: $00
    ld bc, $0003                                  ; $600d: $01 $03 $00
    ld b, $01                                     ; $6010: $06 $01
    rrca                                          ; $6012: $0f
    nop                                           ; $6013: $00
    inc e                                         ; $6014: $1c
    nop                                           ; $6015: $00
    ld bc, $003b                                  ; $6016: $01 $3b $00
    ld [hl], h                                    ; $6019: $74
    ld bc, $0069                                  ; $601a: $01 $69 $00
    ld bc, $ff2b                                  ; $601d: $01 $2b $ff
    ld [bc], a                                    ; $6020: $02
    ld [bc], a                                    ; $6021: $02
    db $10                                        ; $6022: $10
    inc b                                         ; $6023: $04

jr_095_6024:
    ld h, [hl]                                    ; $6024: $66
    inc bc                                        ; $6025: $03
    inc c                                         ; $6026: $0c
    ld [bc], a                                    ; $6027: $02
    nop                                           ; $6028: $00
    sub b                                         ; $6029: $90
    ld c, l                                       ; $602a: $4d
    add b                                         ; $602b: $80
    inc a                                         ; $602c: $3c
    dec a                                         ; $602d: $3d
    ei                                            ; $602e: $fb
    inc b                                         ; $602f: $04
    or a                                          ; $6030: $b7
    ld c, b                                       ; $6031: $48
    db $eb                                        ; $6032: $eb
    ld d, $de                                     ; $6033: $16 $de
    db $10                                        ; $6035: $10
    cpl                                           ; $6036: $2f
    ld sp, hl                                     ; $6037: $f9
    rra                                           ; $6038: $1f
    ld de, $7f3f                                  ; $6039: $11 $3f $7f
    add b                                         ; $603c: $80
    xor a                                         ; $603d: $af
    ld d, b                                       ; $603e: $50
    add b                                         ; $603f: $80
    ld l, $0e                                     ; $6040: $2e $0e
    cp $01                                        ; $6042: $fe $01
    ei                                            ; $6044: $fb
    rlca                                          ; $6045: $07
    rst $30                                       ; $6046: $f7
    ld c, $eb                                     ; $6047: $0e $eb
    db $10                                        ; $6049: $10
    inc e                                         ; $604a: $1c
    rst $18                                       ; $604b: $df
    jr nc, jr_095_6082                            ; $604c: $30 $34

    ld c, $b6                                     ; $604e: $0e $b6
    ld a, c                                       ; $6050: $79
    rst $18                                       ; $6051: $df
    ldh [rP1], a                                  ; $6052: $e0 $00
    ld a, a                                       ; $6054: $7f
    add b                                         ; $6055: $80
    cp $01                                        ; $6056: $fe $01
    db $fc                                        ; $6058: $fc
    inc bc                                        ; $6059: $03
    ei                                            ; $605a: $fb
    rlca                                          ; $605b: $07
    nop                                           ; $605c: $00
    db $dd                                        ; $605d: $dd
    ld a, $ae                                     ; $605e: $3e $ae
    ld [hl], c                                    ; $6060: $71
    cp e                                          ; $6061: $bb
    ld b, h                                       ; $6062: $44
    ld e, a                                       ; $6063: $5f
    and b                                         ; $6064: $a0
    nop                                           ; $6065: $00
    scf                                           ; $6066: $37
    ret z                                         ; $6067: $c8

    rst $18                                       ; $6068: $df
    and b                                         ; $6069: $a0
    ld l, $d1                                     ; $606a: $2e $d1
    rst $10                                       ; $606c: $d7
    xor b                                         ; $606d: $a8
    inc c                                         ; $606e: $0c
    cpl                                           ; $606f: $2f
    ret nc                                        ; $6070: $d0

    ld d, l                                       ; $6071: $55
    xor d                                         ; $6072: $aa
    sub b                                         ; $6073: $90
    dec a                                         ; $6074: $3d
    ld a, [c]                                     ; $6075: $f2
    dec e                                         ; $6076: $1d
    adc e                                         ; $6077: $8b
    ld [hl], h                                    ; $6078: $74
    nop                                           ; $6079: $00
    ld de, $02ee                                  ; $607a: $11 $ee $02
    db $fd                                        ; $607d: $fd
    ld b, c                                       ; $607e: $41
    cp [hl]                                       ; $607f: $be
    add d                                         ; $6080: $82
    ld a, l                                       ; $6081: $7d

jr_095_6082:
    ld [bc], a                                    ; $6082: $02
    ld bc, $08fe                                  ; $6083: $01 $fe $08
    rst $30                                       ; $6086: $f7
    db $10                                        ; $6087: $10
    rst $28                                       ; $6088: $ef
    inc a                                         ; $6089: $3c
    ld [$00fd], sp                                ; $608a: $08 $fd $00
    ld [bc], a                                    ; $608d: $02
    rst $30                                       ; $608e: $f7
    ld [$55aa], sp                                ; $608f: $08 $aa $55
    ld d, l                                       ; $6092: $55
    xor d                                         ; $6093: $aa
    xor b                                         ; $6094: $a8
    nop                                           ; $6095: $00
    ld d, a                                       ; $6096: $57
    ld d, b                                       ; $6097: $50
    xor a                                         ; $6098: $af
    ei                                            ; $6099: $fb
    inc b                                         ; $609a: $04
    rst $38                                       ; $609b: $ff
    nop                                           ; $609c: $00
    ld a, [$0504]                                 ; $609d: $fa $04 $05
    ld d, l                                       ; $60a0: $55
    xor d                                         ; $60a1: $aa
    and d                                         ; $60a2: $a2
    ld e, l                                       ; $60a3: $5d
    ld e, $08                                     ; $60a4: $1e $08
    ld hl, $00de                                  ; $60a6: $21 $de $00
    ei                                            ; $60a9: $fb
    inc b                                         ; $60aa: $04
    ld d, [hl]                                    ; $60ab: $56
    xor c                                         ; $60ac: $a9
    xor c                                         ; $60ad: $a9
    ld d, [hl]                                    ; $60ae: $56
    ld b, d                                       ; $60af: $42
    cp l                                          ; $60b0: $bd
    ld [$df20], sp                                ; $60b1: $08 $20 $df
    ld b, c                                       ; $60b4: $41
    cp [hl]                                       ; $60b5: $be
    sbc h                                         ; $60b6: $9c
    rrca                                          ; $60b7: $0f
    dec e                                         ; $60b8: $1d
    dec de                                        ; $60b9: $1b
    ld a, [de]                                    ; $60ba: $1a
    nop                                           ; $60bb: $00
    dec a                                         ; $60bc: $3d
    dec d                                         ; $60bd: $15

jr_095_60be:
    dec sp                                        ; $60be: $3b
    ld a, [hl-]                                   ; $60bf: $3a
    dec a                                         ; $60c0: $3d
    dec [hl]                                      ; $60c1: $35
    dec sp                                        ; $60c2: $3b
    dec sp                                        ; $60c3: $3b
    nop                                           ; $60c4: $00
    ccf                                           ; $60c5: $3f
    cp l                                          ; $60c6: $bd
    cp a                                          ; $60c7: $bf
    ld a, e                                       ; $60c8: $7b
    ld a, a                                       ; $60c9: $7f
    rst $28                                       ; $60ca: $ef
    rst $30                                       ; $60cb: $f7
    di                                            ; $60cc: $f3
    jr nz, jr_095_60be                            ; $60cd: $20 $ef

    rst $08                                       ; $60cf: $cf
    inc b                                         ; $60d0: $04
    nop                                           ; $60d1: $00
    rst $00                                       ; $60d2: $c7
    rst $38                                       ; $60d3: $ff
    db $db                                        ; $60d4: $db
    rst $28                                       ; $60d5: $ef
    rst $10                                       ; $60d6: $d7
    ld b, b                                       ; $60d7: $40
    rst $28                                       ; $60d8: $ef
    inc d                                         ; $60d9: $14
    ld [bc], a                                    ; $60da: $02
    cp a                                          ; $60db: $bf
    ld e, l                                       ; $60dc: $5d
    cp e                                          ; $60dd: $bb
    rst $18                                       ; $60de: $df
    cp e                                          ; $60df: $bb
    dec [hl]                                      ; $60e0: $35
    ld b, h                                       ; $60e1: $44
    ei                                            ; $60e2: $fb
    ld b, h                                       ; $60e3: $44
    dec bc                                        ; $60e4: $0b
    dec [hl]                                      ; $60e5: $35
    ei                                            ; $60e6: $fb
    ei                                            ; $60e7: $fb
    ret c                                         ; $60e8: $d8

    rlca                                          ; $60e9: $07
    add b                                         ; $60ea: $80
    rst $38                                       ; $60eb: $ff
    ld de, $ffc4                                  ; $60ec: $11 $c4 $ff
    adc d                                         ; $60ef: $8a
    or b                                          ; $60f0: $b0
    ld b, $a8                                     ; $60f1: $06 $a8
    rst $38                                       ; $60f3: $ff
    sub $94                                       ; $60f4: $d6 $94
    ld b, $c4                                     ; $60f6: $06 $c4
    cp [hl]                                       ; $60f8: $be
    dec a                                         ; $60f9: $3d
    or b                                          ; $60fa: $b0
    dec c                                         ; $60fb: $0d
    and b                                         ; $60fc: $a0
    rst $38                                       ; $60fd: $ff
    add hl, de                                    ; $60fe: $19

Call_095_60ff:
    and $01                                       ; $60ff: $e6 $01
    dec bc                                        ; $6101: $0b
    dec c                                         ; $6102: $0d
    nop                                           ; $6103: $00
    inc c                                         ; $6104: $0c
    dec bc                                        ; $6105: $0b
    dec bc                                        ; $6106: $0b
    dec c                                         ; $6107: $0d
    inc d                                         ; $6108: $14
    dec de                                        ; $6109: $1b
    dec l                                         ; $610a: $2d

jr_095_610b:
    inc sp                                        ; $610b: $33
    inc a                                         ; $610c: $3c
    dec l                                         ; $610d: $2d
    inc sp                                        ; $610e: $33
    inc l                                         ; $610f: $2c
    ld d, d                                       ; $6110: $52
    inc e                                         ; $6111: $1c
    rlca                                          ; $6112: $07
    ld e, l                                       ; $6113: $5d
    ld bc, $075c                                  ; $6114: $01 $5c $07
    ld [bc], a                                    ; $6117: $02
    nop                                           ; $6118: $00
    inc b                                         ; $6119: $04
    dec b                                         ; $611a: $05
    nop                                           ; $611b: $00
    ld a, [bc]                                    ; $611c: $0a
    nop                                           ; $611d: $00
    inc d                                         ; $611e: $14
    jr nz, jr_095_6128                            ; $611f: $20 $07

    scf                                           ; $6121: $37
    ld h, c                                       ; $6122: $61
    nop                                           ; $6123: $00
    ld e, [hl]                                    ; $6124: $5e
    rra                                           ; $6125: $1f
    dec b                                         ; $6126: $05
    ld e, d                                       ; $6127: $5a

jr_095_6128:
    ld e, d                                       ; $6128: $5a
    rra                                           ; $6129: $1f
    or l                                          ; $612a: $b5
    sbc d                                         ; $612b: $9a
    nop                                           ; $612c: $00
    ld e, d                                       ; $612d: $5a
    rra                                           ; $612e: $1f
    dec [hl]                                      ; $612f: $35
    ld e, d                                       ; $6130: $5a
    sbc $97                                       ; $6131: $de $97
    ld [$0015], a                                 ; $6133: $ea $15 $00
    push de                                       ; $6136: $d5
    ld a, [hl+]                                   ; $6137: $2a
    rst $38                                       ; $6138: $ff
    db $10                                        ; $6139: $10
    rst $10                                       ; $613a: $d7
    jr z, @+$01                                   ; $613b: $28 $ff

    db $10                                        ; $613d: $10
    ld [bc], a                                    ; $613e: $02
    push af                                       ; $613f: $f5
    adc b                                         ; $6140: $88
    rst $38                                       ; $6141: $ff
    db $10                                        ; $6142: $10
    db $dd                                        ; $6143: $dd
    xor b                                         ; $6144: $a8
    inc h                                         ; $6145: $24
    inc c                                         ; $6146: $0c
    cp d                                          ; $6147: $ba
    nop                                           ; $6148: $00
    ld d, c                                       ; $6149: $51
    ld d, l                                       ; $614a: $55
    ld a, [hl+]                                   ; $614b: $2a
    cp d                                          ; $614c: $ba
    ld d, l                                       ; $614d: $55
    rst $10                                       ; $614e: $d7
    jr z, jr_095_610b                             ; $614f: $28 $ba

    nop                                           ; $6151: $00
    ld d, b                                       ; $6152: $50
    rst $18                                       ; $6153: $df
    and d                                         ; $6154: $a2
    cp [hl]                                       ; $6155: $be
    db $10                                        ; $6156: $10
    ld e, l                                       ; $6157: $5d
    xor d                                         ; $6158: $aa
    cp d                                          ; $6159: $ba
    nop                                           ; $615a: $00
    dec d                                         ; $615b: $15
    ld d, l                                       ; $615c: $55
    xor d                                         ; $615d: $aa
    cp a                                          ; $615e: $bf
    ld d, l                                       ; $615f: $55
    ld e, l                                       ; $6160: $5d
    ld a, [hl+]                                   ; $6161: $2a
    cp a                                          ; $6162: $bf
    nop                                           ; $6163: $00
    ld d, b                                       ; $6164: $50
    rst $38                                       ; $6165: $ff
    ld a, [hl+]                                   ; $6166: $2a
    ret nc                                        ; $6167: $d0

    ld bc, $00a1                                  ; $6168: $01 $a1 $00
    ld b, b                                       ; $616b: $40
    jr c, jr_095_616f                             ; $616c: $38 $01

    add c                                         ; $616e: $81

jr_095_616f:
    or h                                          ; $616f: $b4
    ld hl, $029c                                  ; $6170: $21 $9c $02
    ld de, $0547                                  ; $6173: $11 $47 $05
    rst $38                                       ; $6176: $ff
    ld e, e                                       ; $6177: $5b
    inc [hl]                                      ; $6178: $34
    rst $38                                       ; $6179: $ff
    ld b, $9a                                     ; $617a: $06 $9a
    inc d                                         ; $617c: $14
    ld [hl], l                                    ; $617d: $75
    rrca                                          ; $617e: $0f
    ld [$051a], sp                                ; $617f: $08 $1a $05
    rst $28                                       ; $6182: $ef
    rst $38                                       ; $6183: $ff
    nop                                           ; $6184: $00
    ld a, [$d715]                                 ; $6185: $fa $15 $d7
    xor b                                         ; $6188: $a8
    cp e                                          ; $6189: $bb
    ld d, l                                       ; $618a: $55
    ld e, l                                       ; $618b: $5d
    and b                                         ; $618c: $a0
    nop                                           ; $618d: $00
    cp e                                          ; $618e: $bb
    dec d                                         ; $618f: $15
    ld e, a                                       ; $6190: $5f
    and b                                         ; $6191: $a0
    cp e                                          ; $6192: $bb
    ld d, c                                       ; $6193: $51
    ld e, l                                       ; $6194: $5d
    and d                                         ; $6195: $a2
    nop                                           ; $6196: $00
    xor $87                                       ; $6197: $ee $87
    ld a, e                                       ; $6199: $7b
    cp $9d                                        ; $619a: $fe $9d
    ld a, e                                       ; $619c: $7b
    ld a, [de]                                    ; $619d: $1a
    or l                                          ; $619e: $b5
    nop                                           ; $619f: $00
    sub l                                         ; $61a0: $95
    ld a, [hl]                                    ; $61a1: $7e
    ld a, [de]                                    ; $61a2: $1a
    push af                                       ; $61a3: $f5
    ld d, [hl]                                    ; $61a4: $56
    cp d                                          ; $61a5: $ba
    sbc d                                         ; $61a6: $9a
    ld [hl], l                                    ; $61a7: $75
    call nz, Call_000_1f60                        ; $61a8: $c4 $60 $1f
    adc h                                         ; $61ab: $8c
    rrca                                          ; $61ac: $0f
    ld [hl], h                                    ; $61ad: $74
    rst $38                                       ; $61ae: $ff
    ld hl, sp+$70                                 ; $61af: $f8 $70
    rlca                                          ; $61b1: $07
    add d                                         ; $61b2: $82
    ld a, l                                       ; $61b3: $7d
    jr nz, jr_095_61be                            ; $61b4: $20 $08

    rst $30                                       ; $61b6: $f7
    ld [hl], h                                    ; $61b7: $74
    rra                                           ; $61b8: $1f
    ld d, l                                       ; $61b9: $55
    rst $38                                       ; $61ba: $ff
    xor a                                         ; $61bb: $af
    rst $38                                       ; $61bc: $ff
    db $fd                                        ; $61bd: $fd

jr_095_61be:
    adc b                                         ; $61be: $88
    cp a                                          ; $61bf: $bf
    daa                                           ; $61c0: $27
    db $10                                        ; $61c1: $10
    rst $38                                       ; $61c2: $ff
    ld [hl+], a                                   ; $61c3: $22
    ld l, b                                       ; $61c4: $68
    dec b                                         ; $61c5: $05
    ei                                            ; $61c6: $fb
    rst $38                                       ; $61c7: $ff
    ld e, a                                       ; $61c8: $5f
    adc b                                         ; $61c9: $88
    ld e, d                                       ; $61ca: $5a
    jr nz, jr_095_61de                            ; $61cb: $20 $11

    rst $38                                       ; $61cd: $ff
    adc e                                         ; $61ce: $8b
    ld a, b                                       ; $61cf: $78
    dec b                                         ; $61d0: $05
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    jp c, $ff00                                   ; $61d3: $da $00 $ff

    db $10                                        ; $61d6: $10
    rrca                                          ; $61d7: $0f
    ld c, a                                       ; $61d8: $4f
    ccf                                           ; $61d9: $3f
    cp a                                          ; $61da: $bf
    ld a, a                                       ; $61db: $7f
    cp a                                          ; $61dc: $bf
    nop                                           ; $61dd: $00

jr_095_61de:
    rst $38                                       ; $61de: $ff
    cp a                                          ; $61df: $bf
    rst $38                                       ; $61e0: $ff
    rst $18                                       ; $61e1: $df
    rst $38                                       ; $61e2: $ff
    and a                                         ; $61e3: $a7
    rst $38                                       ; $61e4: $ff
    cp a                                          ; $61e5: $bf
    nop                                           ; $61e6: $00
    ret c                                         ; $61e7: $d8

    ld [$f2f0], sp                                ; $61e8: $08 $f0 $f2
    db $fc                                        ; $61eb: $fc
    db $fd                                        ; $61ec: $fd
    cp $fd                                        ; $61ed: $fe $fd
    nop                                           ; $61ef: $00
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    db $fd                                        ; $61f2: $fd
    ei                                            ; $61f3: $fb
    ei                                            ; $61f4: $fb
    rst $20                                       ; $61f5: $e7
    rst $20                                       ; $61f6: $e7
    sbc c                                         ; $61f7: $99
    nop                                           ; $61f8: $00
    rra                                           ; $61f9: $1f
    sub a                                         ; $61fa: $97
    rst $28                                       ; $61fb: $ef
    xor [hl]                                      ; $61fc: $ae
    ret nc                                        ; $61fd: $d0

    sub a                                         ; $61fe: $97
    add sp, -$52                                  ; $61ff: $e8 $ae
    nop                                           ; $6201: $00
    ret nc                                        ; $6202: $d0

    ld d, a                                       ; $6203: $57
    add sp, $2e                                   ; $6204: $e8 $2e
    ldh a, [$9f]                                  ; $6206: $f0 $9f
    ld a, b                                       ; $6208: $78
    ld b, a                                       ; $6209: $47
    nop                                           ; $620a: $00
    cp a                                          ; $620b: $bf
    ei                                            ; $620c: $fb
    rst $20                                       ; $620d: $e7
    ld [hl], c                                    ; $620e: $71
    rrca                                          ; $620f: $0f
    dec sp                                        ; $6210: $3b
    rlca                                          ; $6211: $07
    ld [hl], c                                    ; $6212: $71
    nop                                           ; $6213: $00
    rrca                                          ; $6214: $0f
    ld a, [hl-]                                   ; $6215: $3a
    rlca                                          ; $6216: $07
    ld [hl], h                                    ; $6217: $74
    rrca                                          ; $6218: $0f
    add hl, sp                                    ; $6219: $39
    ld e, $e2                                     ; $621a: $1e $e2
    ret nz                                        ; $621c: $c0

    add hl, hl                                    ; $621d: $29
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    dec a                                         ; $6220: $3d
    ld [c], a                                     ; $6221: $e2
    db $dd                                        ; $6222: $dd

jr_095_6223:
    pop de                                        ; $6223: $d1
    xor $ff                                       ; $6224: $ee $ff
    rst $38                                       ; $6226: $ff

jr_095_6227:
    nop                                           ; $6227: $00
    ld [hl+], a                                   ; $6228: $22
    db $fd                                        ; $6229: $fd
    jr z, jr_095_6223                             ; $622a: $28 $f7

    and l                                         ; $622c: $a5
    ld a, d                                       ; $622d: $7a
    jr z, jr_095_6227                             ; $622e: $28 $f7

    nop                                           ; $6230: $00
    inc h                                         ; $6231: $24
    ei                                            ; $6232: $fb
    and d                                         ; $6233: $a2
    ld a, l                                       ; $6234: $7d
    ld c, b                                       ; $6235: $48
    or a                                          ; $6236: $b7
    set 7, h                                      ; $6237: $cb $fc
    nop                                           ; $6239: $00
    reti                                          ; $623a: $d9


    xor $c2                                       ; $623b: $ee $c2
    db $fd                                        ; $623d: $fd
    ret z                                         ; $623e: $c8

    rst $38                                       ; $623f: $ff
    ret c                                         ; $6240: $d8

    rst $28                                       ; $6241: $ef
    nop                                           ; $6242: $00
    jp z, $e1fd                                   ; $6243: $ca $fd $e1

    sbc $d2                                       ; $6246: $de $d2
    db $ed                                        ; $6248: $ed
    add d                                         ; $6249: $82
    ld a, l                                       ; $624a: $7d
    nop                                           ; $624b: $00
    ld hl, $64fe                                  ; $624c: $21 $fe $64
    cp e                                          ; $624f: $bb
    adc d                                         ; $6250: $8a
    ld [hl], l                                    ; $6251: $75
    adc h                                         ; $6252: $8c
    ld [hl], e                                    ; $6253: $73
    nop                                           ; $6254: $00
    ld c, d                                       ; $6255: $4a
    or l                                          ; $6256: $b5
    jr nz, @+$01                                  ; $6257: $20 $ff

    ld a, [hl+]                                   ; $6259: $2a
    push af                                       ; $625a: $f5
    set 7, h                                      ; $625b: $cb $fc
    inc b                                         ; $625d: $04
    jp hl                                         ; $625e: $e9


    sbc $f2                                       ; $625f: $de $f2
    call $1ed0                                    ; $6261: $cd $d0 $1e
    nop                                           ; $6264: $00
    ret c                                         ; $6265: $d8

    rst $28                                       ; $6266: $ef
    nop                                           ; $6267: $00
    jp hl                                         ; $6268: $e9


    sbc $da                                       ; $6269: $de $da
    db $ed                                        ; $626b: $ed
    adc b                                         ; $626c: $88
    rst $38                                       ; $626d: $ff
    ld l, h                                       ; $626e: $6c
    sbc e                                         ; $626f: $9b
    ld [$8dfa], sp                                ; $6270: $08 $fa $8d
    ld a, d                                       ; $6273: $7a
    adc l                                         ; $6274: $8d
    ld h, b                                       ; $6275: $60
    dec h                                         ; $6276: $25
    sbc a                                         ; $6277: $9f
    cp d                                          ; $6278: $ba
    dec d                                         ; $6279: $15
    nop                                           ; $627a: $00
    ld e, a                                       ; $627b: $5f
    xor d                                         ; $627c: $aa
    cp a                                          ; $627d: $bf
    ld d, c                                       ; $627e: $51
    ld e, a                                       ; $627f: $5f
    and b                                         ; $6280: $a0
    cp a                                          ; $6281: $bf
    ld d, h                                       ; $6282: $54
    ld [bc], a                                    ; $6283: $02
    ld e, a                                       ; $6284: $5f
    and b                                         ; $6285: $a0
    cp $10                                        ; $6286: $fe $10
    rst $18                                       ; $6288: $df
    jr nz, @+$7f                                  ; $6289: $20 $7d

    dec hl                                        ; $628b: $2b
    ldh a, [rP1]                                  ; $628c: $f0 $00
    ldh a, [$e8]                                  ; $628e: $f0 $e8
    jr @-$06                                      ; $6290: $18 $f8

    add sp, $38                                   ; $6292: $e8 $38
    jr z, @-$0d                                   ; $6294: $28 $f1

    nop                                           ; $6296: $00
    rst $18                                       ; $6297: $df
    sub $f9                                       ; $6298: $d6 $f9
    rst $18                                       ; $629a: $df
    pop af                                        ; $629b: $f1
    sbc $f1                                       ; $629c: $de $f1
    rst $38                                       ; $629e: $ff
    nop                                           ; $629f: $00
    pop af                                        ; $62a0: $f1
    sub h                                         ; $62a1: $94
    ld a, e                                       ; $62a2: $7b
    db $fd                                        ; $62a3: $fd
    di                                            ; $62a4: $f3
    or $f9                                        ; $62a5: $f6 $f9
    xor b                                         ; $62a7: $a8
    add b                                         ; $62a8: $80
    add b                                         ; $62a9: $80
    ld h, l                                       ; $62aa: $65
    ld a, [$f515]                                 ; $62ab: $fa $15 $f5
    ld a, [bc]                                    ; $62ae: $0a
    ld a, [$d511]                                 ; $62af: $fa $11 $d5
    nop                                           ; $62b2: $00
    ld a, [hl+]                                   ; $62b3: $2a
    ld a, [$fd14]                                 ; $62b4: $fa $14 $fd
    ld [hl+], a                                   ; $62b7: $22
    ei                                            ; $62b8: $fb
    db $10                                        ; $62b9: $10
    ld [hl], a                                    ; $62ba: $77
    ld [bc], a                                    ; $62bb: $02
    adc d                                         ; $62bc: $8a
    rst $38                                       ; $62bd: $ff
    rst $28                                       ; $62be: $ef
    jr c, @-$0f                                   ; $62bf: $38 $ef

    rst $28                                       ; $62c1: $ef
    inc c                                         ; $62c2: $0c
    add hl, bc                                    ; $62c3: $09
    rlca                                          ; $62c4: $07
    ld [hl], b                                    ; $62c5: $70
    db $fd                                        ; $62c6: $fd
    inc bc                                        ; $62c7: $03
    ld b, $04                                     ; $62c8: $06 $04
    nop                                           ; $62ca: $00
    inc h                                         ; $62cb: $24
    inc bc                                        ; $62cc: $03
    add hl, hl                                    ; $62cd: $29
    rst $18                                       ; $62ce: $df
    add hl, bc                                    ; $62cf: $09
    rst $38                                       ; $62d0: $ff
    nop                                           ; $62d1: $00
    ld c, l                                       ; $62d2: $4d
    cp e                                          ; $62d3: $bb
    ld c, c                                       ; $62d4: $49
    cp a                                          ; $62d5: $bf
    dec h                                         ; $62d6: $25
    db $db                                        ; $62d7: $db
    ld b, e                                       ; $62d8: $43
    cp a                                          ; $62d9: $bf
    nop                                           ; $62da: $00
    rst $18                                       ; $62db: $df
    xor a                                         ; $62dc: $af
    or a                                          ; $62dd: $b7
    ret c                                         ; $62de: $d8

    rst $18                                       ; $62df: $df
    or a                                          ; $62e0: $b7
    cp a                                          ; $62e1: $bf
    call nc, $9510                                ; $62e2: $d4 $10 $95
    cp $d4                                        ; $62e5: $fe $d4
    sbc $07                                       ; $62e7: $de $07
    ret nz                                        ; $62e9: $c0

    rst $38                                       ; $62ea: $ff
    dec bc                                        ; $62eb: $0b
    rst $38                                       ; $62ec: $ff
    db $10                                        ; $62ed: $10
    dec hl                                        ; $62ee: $2b
    rst $18                                       ; $62ef: $df
    inc bc                                        ; $62f0: $03
    inc b                                         ; $62f1: $04
    nop                                           ; $62f2: $00
    ld c, e                                       ; $62f3: $4b
    cp a                                          ; $62f4: $bf
    ld l, e                                       ; $62f5: $6b
    sbc a                                         ; $62f6: $9f
    ld b, b                                       ; $62f7: $40
    daa                                           ; $62f8: $27
    jr nz, jr_095_62fb                            ; $62f9: $20 $00

jr_095_62fb:
    ei                                            ; $62fb: $fb
    ld d, l                                       ; $62fc: $55
    push af                                       ; $62fd: $f5
    and b                                         ; $62fe: $a0
    ei                                            ; $62ff: $fb
    ld de, $f500                                  ; $6300: $11 $00 $f5
    and b                                         ; $6303: $a0
    db $eb                                        ; $6304: $eb
    dec d                                         ; $6305: $15
    push af                                       ; $6306: $f5
    ld [$14fa], sp                                ; $6307: $08 $fa $14
    nop                                           ; $630a: $00
    ld [hl], l                                    ; $630b: $75
    adc b                                         ; $630c: $88
    cp d                                          ; $630d: $ba
    dec d                                         ; $630e: $15
    ld e, l                                       ; $630f: $5d
    ld [$50bf], sp                                ; $6310: $08 $bf $50
    nop                                           ; $6313: $00
    ld e, a                                       ; $6314: $5f
    nop                                           ; $6315: $00
    cp a                                          ; $6316: $bf
    ld d, c                                       ; $6317: $51
    ld d, a                                       ; $6318: $57
    ld [$55bf], sp                                ; $6319: $08 $bf $55
    nop                                           ; $631c: $00
    ld d, a                                       ; $631d: $57
    ld [$ff80], sp                                ; $631e: $08 $80 $ff
    rst $08                                       ; $6321: $cf
    ldh a, [$9f]                                  ; $6322: $f0 $9f
    ldh [$a0], a                                  ; $6324: $e0 $a0
    ld [hl], l                                    ; $6326: $75
    ld b, $c0                                     ; $6327: $06 $c0
    inc b                                         ; $6329: $04
    jr jr_095_632d                                ; $632a: $18 $01

    rst $38                                       ; $632c: $ff

jr_095_632d:
    db $d3                                        ; $632d: $d3
    cpl                                           ; $632e: $2f
    ld sp, hl                                     ; $632f: $f9
    inc d                                         ; $6330: $14
    rlca                                          ; $6331: $07
    rst $38                                       ; $6332: $ff
    inc bc                                        ; $6333: $03
    inc b                                         ; $6334: $04
    ld [$24fd], sp                                ; $6335: $08 $fd $24
    inc bc                                        ; $6338: $03
    cp a                                          ; $6339: $bf
    ret nz                                        ; $633a: $c0

    ld [$e0df], sp                                ; $633b: $08 $df $e0
    xor $f1                                       ; $633e: $ee $f1
    ld e, h                                       ; $6340: $5c
    ld [$ffa8], sp                                ; $6341: $08 $a8 $ff
    xor a                                         ; $6344: $af
    nop                                           ; $6345: $00
    ret nc                                        ; $6346: $d0

    rst $18                                       ; $6347: $df
    and b                                         ; $6348: $a0
    push af                                       ; $6349: $f5
    dec bc                                        ; $634a: $0b
    db $eb                                        ; $634b: $eb
    rla                                           ; $634c: $17
    sub e                                         ; $634d: $93
    jr nc, jr_095_63bf                            ; $634e: $30 $6f

    rla                                           ; $6350: $17
    ld c, l                                       ; $6351: $4d
    rlca                                          ; $6352: $07
    sub h                                         ; $6353: $94
    jr nz, @+$01                                  ; $6354: $20 $ff

    adc d                                         ; $6356: $8a
    rst $30                                       ; $6357: $f7
    xor d                                         ; $6358: $aa
    nop                                           ; $6359: $00
    rst $10                                       ; $635a: $d7
    sub b                                         ; $635b: $90
    rst $28                                       ; $635c: $ef
    and d                                         ; $635d: $a2
    rst $18                                       ; $635e: $df
    adc b                                         ; $635f: $88
    rst $30                                       ; $6360: $f7
    jr nz, jr_095_6379                            ; $6361: $20 $16

    rst $18                                       ; $6363: $df
    adc e                                         ; $6364: $8b
    or $a0                                        ; $6365: $f6 $a0
    ld e, b                                       ; $6367: $58
    ld b, c                                       ; $6368: $41
    ld e, h                                       ; $6369: $5c
    ld b, $70                                     ; $636a: $06 $70
    ld c, $ca                                     ; $636c: $0e $ca
    inc c                                         ; $636e: $0c
    db $fd                                        ; $636f: $fd
    jp hl                                         ; $6370: $e9


    sbc $dc                                       ; $6371: $de $dc
    ld [hl], b                                    ; $6373: $70
    ld de, $2960                                  ; $6374: $11 $60 $29
    rst $18                                       ; $6377: $df
    rst $28                                       ; $6378: $ef

jr_095_6379:
    nop                                           ; $6379: $00
    rst $10                                       ; $637a: $d7
    ld hl, sp-$01                                 ; $637b: $f8 $ff
    rst $10                                       ; $637d: $d7
    sbc $f5                                       ; $637e: $de $f5
    sub c                                         ; $6380: $91
    ld a, a                                       ; $6381: $7f
    ld [bc], a                                    ; $6382: $02
    ld [hl], $f9                                  ; $6383: $36 $f9
    ld a, a                                       ; $6385: $7f
    or c                                          ; $6386: $b1
    sbc [hl]                                      ; $6387: $9e
    ld [hl], c                                    ; $6388: $71
    db $10                                        ; $6389: $10
    add hl, de                                    ; $638a: $19
    ld [hl], $02                                  ; $638b: $36 $02
    ld sp, hl                                     ; $638d: $f9
    rst $18                                       ; $638e: $df
    db $f4                                        ; $638f: $f4
    db $fd                                        ; $6390: $fd
    sub $f7                                       ; $6391: $d6 $f7
    halt                                          ; $6393: $76
    rlca                                          ; $6394: $07
    rst $18                                       ; $6395: $df
    ld b, b                                       ; $6396: $40
    ldh [$92], a                                  ; $6397: $e0 $92
    nop                                           ; $6399: $00
    add b                                         ; $639a: $80
    cp a                                          ; $639b: $bf
    ret nz                                        ; $639c: $c0

    push af                                       ; $639d: $f5
    ei                                            ; $639e: $fb
    or e                                          ; $639f: $b3
    nop                                           ; $63a0: $00
    db $dd                                        ; $63a1: $dd
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    ld e, c                                       ; $63a4: $59
    rst $38                                       ; $63a5: $ff
    or l                                          ; $63a6: $b5
    ld a, a                                       ; $63a7: $7f
    db $db                                        ; $63a8: $db
    nop                                           ; $63a9: $00
    ccf                                           ; $63aa: $3f
    pop af                                        ; $63ab: $f1
    rra                                           ; $63ac: $1f
    push de                                       ; $63ad: $d5
    ccf                                           ; $63ae: $3f
    xor b                                         ; $63af: $a8
    ret c                                         ; $63b0: $d8

    ret z                                         ; $63b1: $c8

    ld b, d                                       ; $63b2: $42
    cp b                                          ; $63b3: $b8
    or b                                          ; $63b4: $b0
    ld c, [hl]                                    ; $63b5: $4e
    jr c, @+$2a                                   ; $63b6: $38 $28

    jr c, jr_095_63e2                             ; $63b8: $38 $28

    jr nz, jr_095_6405                            ; $63ba: $20 $49

    ei                                            ; $63bc: $fb
    nop                                           ; $63bd: $00
    rst $38                                       ; $63be: $ff

jr_095_63bf:
    db $dd                                        ; $63bf: $dd
    ccf                                           ; $63c0: $3f
    di                                            ; $63c1: $f3
    rst $38                                       ; $63c2: $ff
    reti                                          ; $63c3: $d9


    ccf                                           ; $63c4: $3f
    ld e, c                                       ; $63c5: $59
    ld sp, $1bbf                                  ; $63c6: $31 $bf $1b
    pop af                                        ; $63c9: $f1
    rlca                                          ; $63ca: $07
    cpl                                           ; $63cb: $2f
    ld bc, $1df7                                  ; $63cc: $01 $f7 $1d
    rst $30                                       ; $63cf: $f7
    ld d, b                                       ; $63d0: $50
    ld c, b                                       ; $63d1: $48
    or b                                          ; $63d2: $b0
    ret nc                                        ; $63d3: $d0

    ld a, $da                                     ; $63d4: $3e $da
    rst $38                                       ; $63d6: $ff
    rlca                                          ; $63d7: $07
    inc bc                                        ; $63d8: $03
    inc bc                                        ; $63d9: $03
    rst $28                                       ; $63da: $ef
    ld a, [hl+]                                   ; $63db: $2a
    rst $10                                       ; $63dc: $d7
    add e                                         ; $63dd: $83
    nop                                           ; $63de: $00
    cp $52                                        ; $63df: $fe $52
    xor a                                         ; $63e1: $af

jr_095_63e2:
    adc c                                         ; $63e2: $89
    or $a0                                        ; $63e3: $f6 $a0
    rst $18                                       ; $63e5: $df
    add b                                         ; $63e6: $80
    db $10                                        ; $63e7: $10
    rst $38                                       ; $63e8: $ff
    xor d                                         ; $63e9: $aa
    rst $10                                       ; $63ea: $d7
    ld b, b                                       ; $63eb: $40
    ld e, b                                       ; $63ec: $58
    adc c                                         ; $63ed: $89
    rst $38                                       ; $63ee: $ff
    rst $18                                       ; $63ef: $df
    cp a                                          ; $63f0: $bf
    dec b                                         ; $63f1: $05
    or l                                          ; $63f2: $b5
    rst $38                                       ; $63f3: $ff
    jp c, $bfbf                                   ; $63f4: $da $bf $bf

    inc b                                         ; $63f7: $04
    nop                                           ; $63f8: $00
    or a                                          ; $63f9: $b7
    ld [$1200], sp                                ; $63fa: $08 $00 $12
    ld hl, sp-$01                                 ; $63fd: $f8 $ff
    ld sp, hl                                     ; $63ff: $f9
    db $f4                                        ; $6400: $f4
    ld [bc], a                                    ; $6401: $02
    xor l                                         ; $6402: $ad
    ei                                            ; $6403: $fb
    inc b                                         ; $6404: $04

jr_095_6405:
    jr z, jr_095_6416                             ; $6405: $28 $0f

jr_095_6407:
    ld [bc], a                                    ; $6407: $02
    rst $38                                       ; $6408: $ff
    ei                                            ; $6409: $fb
    db $fd                                        ; $640a: $fd
    xor a                                         ; $640b: $af
    rst $38                                       ; $640c: $ff
    ld e, e                                       ; $640d: $5b
    inc b                                         ; $640e: $04
    ld b, b                                       ; $640f: $40
    add d                                         ; $6410: $82
    jr nz, @+$7f                                  ; $6411: $20 $7d

    dec hl                                        ; $6413: $2b
    jr nc, jr_095_6418                            ; $6414: $30 $02

jr_095_6416:
    xor d                                         ; $6416: $aa
    rst $38                                       ; $6417: $ff

jr_095_6418:
    adc l                                         ; $6418: $8d
    ld [hl], e                                    ; $6419: $73
    ld [$b705], a                                 ; $641a: $ea $05 $b7
    ld h, h                                       ; $641d: $64
    rst $38                                       ; $641e: $ff
    ld a, [hl+]                                   ; $641f: $2a
    db $fd                                        ; $6420: $fd
    ld b, b                                       ; $6421: $40
    ld [hl+], a                                   ; $6422: $22
    db $fd                                        ; $6423: $fd
    ld b, b                                       ; $6424: $40
    ld [bc], a                                    ; $6425: $02
    ld l, d                                       ; $6426: $6a
    or a                                          ; $6427: $b7
    ld b, b                                       ; $6428: $40
    ld [bc], a                                    ; $6429: $02
    ld [hl], b                                    ; $642a: $70
    jr nz, jr_095_6407                            ; $642b: $20 $da

    ld [hl], b                                    ; $642d: $70
    nop                                           ; $642e: $00
    and d                                         ; $642f: $a2
    ld c, [hl]                                    ; $6430: $4e
    rlca                                          ; $6431: $07
    xor d                                         ; $6432: $aa
    and b                                         ; $6433: $a0
    jp z, Jump_000_2b01                           ; $6434: $ca $01 $2b

    ld [c], a                                     ; $6437: $e2
    rlca                                          ; $6438: $07
    dec hl                                        ; $6439: $2b
    rst $38                                       ; $643a: $ff
    ld c, c                                       ; $643b: $49
    cp a                                          ; $643c: $bf
    db $eb                                        ; $643d: $eb
    add b                                         ; $643e: $80
    ret nc                                        ; $643f: $d0

    ld bc, $bfcb                                  ; $6440: $01 $cb $bf
    ld hl, $eeff                                  ; $6443: $21 $ff $ee
    cp e                                          ; $6446: $bb
    ld h, a                                       ; $6447: $67
    nop                                           ; $6448: $00
    db $fd                                        ; $6449: $fd
    ld [$33bf], a                                 ; $644a: $ea $bf $33
    db $fd                                        ; $644d: $fd
    ld a, [hl+]                                   ; $644e: $2a
    rst $38                                       ; $644f: $ff

jr_095_6450:
    ld [hl], a                                    ; $6450: $77
    jr c, jr_095_6450                             ; $6451: $38 $fd

    xor d                                         ; $6453: $aa
    ldh a, [rHDMA4]                               ; $6454: $f0 $54
    ld h, [hl]                                    ; $6456: $66
    dec c                                         ; $6457: $0d
    sub b                                         ; $6458: $90
    add hl, bc                                    ; $6459: $09
    ld l, a                                       ; $645a: $6f
    ldh a, [$b5]                                  ; $645b: $f0 $b5
    nop                                           ; $645d: $00
    ld a, d                                       ; $645e: $7a
    ld a, [$2dfd]                                 ; $645f: $fa $fd $2d
    sbc $76                                       ; $6462: $de $76
    adc a                                         ; $6464: $8f
    ei                                            ; $6465: $fb
    ld b, b                                       ; $6466: $40
    rlca                                          ; $6467: $07
    xor b                                         ; $6468: $a8
    inc l                                         ; $6469: $2c
    rst $38                                       ; $646a: $ff
    nop                                           ; $646b: $00
    ld e, d                                       ; $646c: $5a
    and l                                         ; $646d: $a5
    xor l                                         ; $646e: $ad
    ld d, d                                       ; $646f: $52
    ld h, b                                       ; $6470: $60
    ld a, [c]                                     ; $6471: $f2
    ld b, c                                       ; $6472: $41
    dec hl                                        ; $6473: $2b
    cp h                                          ; $6474: $bc
    inc d                                         ; $6475: $14
    ei                                            ; $6476: $fb
    inc b                                         ; $6477: $04
    cp $01                                        ; $6478: $fe $01
    ccf                                           ; $647a: $3f
    nop                                           ; $647b: $00
    rst $38                                       ; $647c: $ff
    cp a                                          ; $647d: $bf
    ld b, a                                       ; $647e: $47
    db $fc                                        ; $647f: $fc
    inc bc                                        ; $6480: $03
    add sp, $17                                   ; $6481: $e8 $17
    ld d, b                                       ; $6483: $50
    ld b, b                                       ; $6484: $40
    xor a                                         ; $6485: $af
    xor [hl]                                      ; $6486: $ae
    inc c                                         ; $6487: $0c
    and c                                         ; $6488: $a1
    ld e, a                                       ; $6489: $5f
    push de                                       ; $648a: $d5
    ld a, [hl+]                                   ; $648b: $2a
    xor b                                         ; $648c: $a8
    ld d, a                                       ; $648d: $57
    ld [$bf40], sp                                ; $648e: $08 $40 $bf
    ld de, $47ee                                  ; $6491: $11 $ee $47
    dec l                                         ; $6494: $2d
    db $10                                        ; $6495: $10
    rst $28                                       ; $6496: $ef
    ld bc, $ff10                                  ; $6497: $01 $10 $ff
    add d                                         ; $649a: $82
    ld a, a                                       ; $649b: $7f
    ld h, [hl]                                    ; $649c: $66
    dec c                                         ; $649d: $0d
    ld bc, $12ff                                  ; $649e: $01 $ff $12
    rst $38                                       ; $64a1: $ff
    ld b, l                                       ; $64a2: $45
    daa                                           ; $64a3: $27
    add [hl]                                      ; $64a4: $86
    dec d                                         ; $64a5: $15
    jr nz, @+$01                                  ; $64a6: $20 $ff

    ld b, l                                       ; $64a8: $45
    add d                                         ; $64a9: $82
    ld bc, $f05d                                  ; $64aa: $01 $5d $f0
    rlca                                          ; $64ad: $07
    ld d, c                                       ; $64ae: $51
    cp a                                          ; $64af: $bf
    ld a, b                                       ; $64b0: $78
    inc bc                                        ; $64b1: $03
    rla                                           ; $64b2: $17
    sbc b                                         ; $64b3: $98
    inc bc                                        ; $64b4: $03
    ld e, e                                       ; $64b5: $5b
    rst $38                                       ; $64b6: $ff
    rst $30                                       ; $64b7: $f7
    adc h                                         ; $64b8: $8c
    inc b                                         ; $64b9: $04
    jp nz, Jump_000_0801                          ; $64ba: $c2 $01 $08

    ld b, [hl]                                    ; $64bd: $46
    ld hl, $aaa0                                  ; $64be: $21 $a0 $aa
    push de                                       ; $64c1: $d5
    ret nz                                        ; $64c2: $c0

    cp [hl]                                       ; $64c3: $be
    inc bc                                        ; $64c4: $03
    add b                                         ; $64c5: $80
    ld b, c                                       ; $64c6: $41
    rst $38                                       ; $64c7: $ff
    ld [hl], h                                    ; $64c8: $74

jr_095_64c9:
    ld de, $d505                                  ; $64c9: $11 $05 $d5
    dec hl                                        ; $64cc: $2b
    xor c                                         ; $64cd: $a9
    ld d, a                                       ; $64ce: $57
    sbc e                                         ; $64cf: $9b
    ld [bc], a                                    ; $64d0: $02
    ldh [$0c], a                                  ; $64d1: $e0 $0c
    inc b                                         ; $64d3: $04
    jr nc, jr_095_64ef                            ; $64d4: $30 $19

    inc b                                         ; $64d6: $04
    jr z, jr_095_64c9                             ; $64d7: $28 $f0

    rst $38                                       ; $64d9: $ff
    dec hl                                        ; $64da: $2b
    sub $a2                                       ; $64db: $d6 $a2
    nop                                           ; $64dd: $00
    rst $18                                       ; $64de: $df

jr_095_64df:
    add d                                         ; $64df: $82
    rst $38                                       ; $64e0: $ff
    jp hl                                         ; $64e1: $e9


    sub [hl]                                      ; $64e2: $96
    ld a, [c]                                     ; $64e3: $f2
    rst $38                                       ; $64e4: $ff
    add sp, $00                                   ; $64e5: $e8 $00
    rra                                           ; $64e7: $1f
    ld sp, hl                                     ; $64e8: $f9
    xor $ba                                       ; $64e9: $ee $ba
    rst $28                                       ; $64eb: $ef
    add hl, hl                                    ; $64ec: $29
    rst $18                                       ; $64ed: $df
    adc l                                         ; $64ee: $8d

jr_095_64ef:
    inc b                                         ; $64ef: $04
    ld a, e                                       ; $64f0: $7b
    add l                                         ; $64f1: $85
    ld a, e                                       ; $64f2: $7b
    ld hl, $f0df                                  ; $64f3: $21 $df $f0
    nop                                           ; $64f6: $00
    rra                                           ; $64f7: $1f
    ld c, l                                       ; $64f8: $4d
    inc c                                         ; $64f9: $0c
    cp e                                          ; $64fa: $bb
    xor c                                         ; $64fb: $a9
    ld e, a                                       ; $64fc: $5f
    jr c, jr_095_64df                             ; $64fd: $38 $e0

Jump_095_64ff:
    ld [hl-], a                                   ; $64ff: $32
    ld c, c                                       ; $6500: $49
    inc c                                         ; $6501: $0c
    db $fd                                        ; $6502: $fd
    adc e                                         ; $6503: $8b
    nop                                           ; $6504: $00
    dec b                                         ; $6505: $05
    ei                                            ; $6506: $fb
    ld c, e                                       ; $6507: $4b
    cp a                                          ; $6508: $bf
    and l                                         ; $6509: $a5
    ld e, a                                       ; $650a: $5f
    ld c, e                                       ; $650b: $4b
    cp a                                          ; $650c: $bf
    ret nz                                        ; $650d: $c0

    ld a, [hl-]                                   ; $650e: $3a
    ld a, [bc]                                    ; $650f: $0a
    ld [hl], c                                    ; $6510: $71
    ld [$f5fb], sp                                ; $6511: $08 $fb $f5
    db $ed                                        ; $6514: $ed
    dec sp                                        ; $6515: $3b
    ei                                            ; $6516: $fb
    db $ed                                        ; $6517: $ed
    inc b                                         ; $6518: $04
    db $fd                                        ; $6519: $fd
    dec hl                                        ; $651a: $2b
    xor c                                         ; $651b: $a9
    ld a, a                                       ; $651c: $7f
    dec hl                                        ; $651d: $2b
    ld l, $04                                     ; $651e: $2e $04
    add e                                         ; $6520: $83
    rst $38                                       ; $6521: $ff
    ld b, [hl]                                    ; $6522: $46
    dec d                                         ; $6523: $15
    inc b                                         ; $6524: $04
    dec b                                         ; $6525: $05
    dec d                                         ; $6526: $15
    rst $38                                       ; $6527: $ff
    ld a, [bc]                                    ; $6528: $0a
    ld a, h                                       ; $6529: $7c
    inc b                                         ; $652a: $04
    ld [de], a                                    ; $652b: $12
    inc c                                         ; $652c: $0c
    ld l, $80                                     ; $652d: $2e $80
    sub b                                         ; $652f: $90
    ld sp, $ffaf                                  ; $6530: $31 $af $ff
    rst $10                                       ; $6533: $d7
    ld a, [$f7ff]                                 ; $6534: $fa $ff $f7
    ccf                                           ; $6537: $3f
    ld bc, $f5f7                                  ; $6538: $01 $f7 $f5
    rst $38                                       ; $653b: $ff
    cp a                                          ; $653c: $bf
    ei                                            ; $653d: $fb
    ld a, a                                       ; $653e: $7f
    push de                                       ; $653f: $d5
    ld d, e                                       ; $6540: $53
    inc bc                                        ; $6541: $03
    ld [$b7f5], sp                                ; $6542: $08 $f5 $b7
    ei                                            ; $6545: $fb
    db $fd                                        ; $6546: $fd
    ld a, b                                       ; $6547: $78
    rlca                                          ; $6548: $07
    dec e                                         ; $6549: $1d
    rst $30                                       ; $654a: $f7
    ld a, $c0                                     ; $654b: $3e $c0
    cp h                                          ; $654d: $bc
    nop                                           ; $654e: $00
    ld d, b                                       ; $654f: $50
    ld [bc], a                                    ; $6550: $02
    push af                                       ; $6551: $f5
    cp a                                          ; $6552: $bf
    ld [$ddff], a                                 ; $6553: $ea $ff $dd
    cp a                                          ; $6556: $bf
    ld [$55ea], sp                                ; $6557: $08 $ea $55
    rst $38                                       ; $655a: $ff
    or e                                          ; $655b: $b3
    ret z                                         ; $655c: $c8

    db $10                                        ; $655d: $10
    push af                                       ; $655e: $f5
    ld a, a                                       ; $655f: $7f
    rst $38                                       ; $6560: $ff
    ld [$f7bf], sp                                ; $6561: $08 $bf $f7
    ld e, a                                       ; $6564: $5f
    rst $38                                       ; $6565: $ff
    ldh [rSB], a                                  ; $6566: $e0 $01
    cp a                                          ; $6568: $bf
    ld a, [$0bdf]                                 ; $6569: $fa $df $0b
    rst $30                                       ; $656c: $f7
    cp a                                          ; $656d: $bf
    cp $d5                                        ; $656e: $fe $d5
    sbc $10                                       ; $6570: $de $10
    cp $e3                                        ; $6572: $fe $e3
    db $10                                        ; $6574: $10

jr_095_6575:
    jp hl                                         ; $6575: $e9


    ld [$7f40], sp                                ; $6576: $08 $40 $7f
    ld a, a                                       ; $6579: $7f
    jr @+$01                                      ; $657a: $18 $ff

    adc e                                         ; $657c: $8b
    db $fc                                        ; $657d: $fc
    xor c                                         ; $657e: $a9
    sbc $b2                                       ; $657f: $de $b2
    nop                                           ; $6581: $00
    call $ef90                                    ; $6582: $cd $90 $ef
    adc d                                         ; $6585: $8a
    db $fd                                        ; $6586: $fd
    sbc b                                         ; $6587: $98
    rst $28                                       ; $6588: $ef
    xor c                                         ; $6589: $a9
    nop                                           ; $658a: $00
    sbc $9a                                       ; $658b: $de $9a
    db $ed                                        ; $658d: $ed
    dec hl                                        ; $658e: $2b
    rst $18                                       ; $658f: $df
    adc a                                         ; $6590: $8f
    ld a, e                                       ; $6591: $7b
    add a                                         ; $6592: $87
    jr nz, @+$7d                                  ; $6593: $20 $7b

    inc hl                                        ; $6595: $23
    ld h, b                                       ; $6596: $60
    inc bc                                        ; $6597: $03
    db $eb                                        ; $6598: $eb
    rra                                           ; $6599: $1f
    ld c, a                                       ; $659a: $4f
    cp e                                          ; $659b: $bb
    xor e                                         ; $659c: $ab
    ld [bc], a                                    ; $659d: $02
    ld e, a                                       ; $659e: $5f
    add hl, bc                                    ; $659f: $09
    rst $38                                       ; $65a0: $ff
    add hl, hl                                    ; $65a1: $29
    rst $18                                       ; $65a2: $df
    ld bc, $0004                                  ; $65a3: $01 $04 $00
    ld c, c                                       ; $65a6: $49
    ld a, [de]                                    ; $65a7: $1a
    cp a                                          ; $65a8: $bf
    ld l, c                                       ; $65a9: $69
    sbc a                                         ; $65aa: $9f
    ldh a, [$0a]                                  ; $65ab: $f0 $0a
    or b                                          ; $65ad: $b0
    nop                                           ; $65ae: $00
    dec de                                        ; $65af: $1b
    or b                                          ; $65b0: $b0
    ld c, b                                       ; $65b1: $48
    sbc a                                         ; $65b2: $9f
    sub h                                         ; $65b3: $94
    or h                                          ; $65b4: $b4
    inc b                                         ; $65b5: $04
    or l                                          ; $65b6: $b5
    rst $18                                       ; $65b7: $df
    inc b                                         ; $65b8: $04
    ld [$04fa], sp                                ; $65b9: $08 $fa $04
    db $10                                        ; $65bc: $10
    ei                                            ; $65bd: $fb
    db $fd                                        ; $65be: $fd
    ld l, b                                       ; $65bf: $68
    xor l                                         ; $65c0: $ad
    jr nc, @+$04                                  ; $65c1: $30 $02

    inc b                                         ; $65c3: $04
    jr z, jr_095_6575                             ; $65c4: $28 $af

    ld l, h                                       ; $65c6: $6c
    ld bc, $bbcc                                  ; $65c7: $01 $cc $bb
    ld h, $14                                     ; $65ca: $26 $14
    db $fd                                        ; $65cc: $fd
    ld [$f0b5], a                                 ; $65cd: $ea $b5 $f0
    add hl, de                                    ; $65d0: $19
    jp z, $0130                                   ; $65d1: $ca $30 $01

    xor d                                         ; $65d4: $aa
    rst $38                                       ; $65d5: $ff
    nop                                           ; $65d6: $00
    add $ff                                       ; $65d7: $c6 $ff
    db $eb                                        ; $65d9: $eb
    cp [hl]                                       ; $65da: $be

jr_095_65db:
    or e                                          ; $65db: $b3
    rst $18                                       ; $65dc: $df
    xor d                                         ; $65dd: $aa
    rst $38                                       ; $65de: $ff
    db $10                                        ; $65df: $10
    ld d, l                                       ; $65e0: $55
    cp $ee                                        ; $65e1: $fe $ee
    ld e, [hl]                                    ; $65e3: $5e
    nop                                           ; $65e4: $00
    xor l                                         ; $65e5: $ad
    ei                                            ; $65e6: $fb
    push bc                                       ; $65e7: $c5
    ld a, a                                       ; $65e8: $7f
    ld c, b                                       ; $65e9: $48
    xor e                                         ; $65ea: $ab
    adc [hl]                                      ; $65eb: $8e
    ld bc, $bffb                                  ; $65ec: $01 $fb $bf
    sub d                                         ; $65ef: $92
    add hl, bc                                    ; $65f0: $09
    ccf                                           ; $65f1: $3f
    push af                                       ; $65f2: $f5
    xor [hl]                                      ; $65f3: $ae
    ld [hl], $ff                                  ; $65f4: $36 $ff
    ld [hl], l                                    ; $65f6: $75
    jr nz, jr_095_65fc                            ; $65f7: $20 $03

    and b                                         ; $65f9: $a0
    jr z, jr_095_65db                             ; $65fa: $28 $df

jr_095_65fc:
    call z, Call_095_4808                         ; $65fc: $cc $08 $48
    dec b                                         ; $65ff: $05
    db $fd                                        ; $6600: $fd
    jr c, @-$1f                                   ; $6601: $38 $df

    ei                                            ; $6603: $fb
    ld a, $05                                     ; $6604: $3e $05
    or l                                          ; $6606: $b5
    jr nz, @+$0b                                  ; $6607: $20 $09

    jr nc, @+$01                                  ; $6609: $30 $ff

    rst $38                                       ; $660b: $ff
    and b                                         ; $660c: $a0
    ld a, [de]                                    ; $660d: $1a
    sub d                                         ; $660e: $92
    ld c, $08                                     ; $660f: $0e $08
    ld hl, sp-$0d                                 ; $6611: $f8 $f3
    db $fd                                        ; $6613: $fd
    di                                            ; $6614: $f3
    inc b                                         ; $6615: $04
    ld [$f1fa], sp                                ; $6616: $08 $fa $f1
    db $fd                                        ; $6619: $fd
    nop                                           ; $661a: $00
    ld a, [c]                                     ; $661b: $f2
    ld a, [$ddf1]                                 ; $661c: $fa $f1 $dd
    ld a, [c]                                     ; $661f: $f2
    rst $38                                       ; $6620: $ff
    cp $f7                                        ; $6621: $fe $f7
    ld a, [bc]                                    ; $6623: $0a
    cp $bf                                        ; $6624: $fe $bf
    cp $ff                                        ; $6626: $fe $ff
    inc b                                         ; $6628: $04
    nop                                           ; $6629: $00
    ld [hl], a                                    ; $662a: $77
    ld [$7500], sp                                ; $662b: $08 $00 $75
    nop                                           ; $662e: $00
    cp $5f                                        ; $662f: $fe $5f
    ccf                                           ; $6631: $3f
    sbc a                                         ; $6632: $9f
    ld a, a                                       ; $6633: $7f
    ld e, a                                       ; $6634: $5f
    ccf                                           ; $6635: $3f
    sub a                                         ; $6636: $97

jr_095_6637:
    and b                                         ; $6637: $a0
    inc b                                         ; $6638: $04

jr_095_6639:
    nop                                           ; $6639: $00
    rla                                           ; $663a: $17
    inc b                                         ; $663b: $04
    db $10                                        ; $663c: $10
    ld sp, hl                                     ; $663d: $f9
    di                                            ; $663e: $f3
    cp h                                          ; $663f: $bc
    di                                            ; $6640: $f3
    ld sp, hl                                     ; $6641: $f9
    jr nz, jr_095_6637                            ; $6642: $20 $f3

    db $fc                                        ; $6644: $fc
    inc b                                         ; $6645: $04
    nop                                           ; $6646: $00
    cp [hl]                                       ; $6647: $be
    pop af                                        ; $6648: $f1
    ld sp, hl                                     ; $6649: $f9
    ld a, [c]                                     ; $664a: $f2
    xor [hl]                                      ; $664b: $ae
    ld [hl], c                                    ; $664c: $71

jr_095_664d:
    pop af                                        ; $664d: $f1
    inc [hl]                                      ; $664e: $34
    nop                                           ; $664f: $00
    inc a                                         ; $6650: $3c
    nop                                           ; $6651: $00
    inc b                                         ; $6652: $04
    ld [$f3d9], sp                                ; $6653: $08 $d9 $f3
    ld [$0004], a                                 ; $6656: $ea $04 $00
    ld b, c                                       ; $6659: $41
    rst $38                                       ; $665a: $ff
    inc [hl]                                      ; $665b: $34
    nop                                           ; $665c: $00
    rst $38                                       ; $665d: $ff
    cp $f5                                        ; $665e: $fe $f5
    cp $fb                                        ; $6660: $fe $fb
    inc b                                         ; $6662: $04
    nop                                           ; $6663: $00
    db $ec                                        ; $6664: $ec
    ld [$3808], sp                                ; $6665: $08 $08 $38
    jr z, jr_095_66aa                             ; $6668: $28 $40

    ld [$404f], sp                                ; $666a: $08 $4f $40
    ld [$0034], sp                                ; $666d: $08 $34 $00
    ld sp, hl                                     ; $6670: $f9
    di                                            ; $6671: $f3
    ld b, b                                       ; $6672: $40
    xor [hl]                                      ; $6673: $ae
    ld l, $00                                     ; $6674: $2e $00
    xor [hl]                                      ; $6676: $ae
    pop af                                        ; $6677: $f1
    ld a, c                                       ; $6678: $79
    di                                            ; $6679: $f3
    xor d                                         ; $667a: $aa
    pop af                                        ; $667b: $f1
    ld [$f3e8], sp                                ; $667c: $08 $e8 $f3
    reti                                          ; $667f: $d9


    di                                            ; $6680: $f3
    inc b                                         ; $6681: $04
    jr c, jr_095_664d                             ; $6682: $38 $c9

    di                                            ; $6684: $f3
    ei                                            ; $6685: $fb
    ld [hl-], a                                   ; $6686: $32
    cp $f1                                        ; $6687: $fe $f1
    inc a                                         ; $6689: $3c
    db $10                                        ; $668a: $10
    ld [$f118], sp                                ; $668b: $08 $18 $f1
    cp $34                                        ; $668e: $fe $34
    ld [$c04f], sp                                ; $6690: $08 $4f $c0
    add h                                         ; $6693: $84
    nop                                           ; $6694: $00
    inc b                                         ; $6695: $04
    jr z, @+$5f                                   ; $6696: $28 $5d

    di                                            ; $6698: $f3
    adc d                                         ; $6699: $8a
    pop af                                        ; $669a: $f1
    ld e, c                                       ; $669b: $59
    di                                            ; $669c: $f3
    nop                                           ; $669d: $00
    xor b                                         ; $669e: $a8
    di                                            ; $669f: $f3
    ld e, c                                       ; $66a0: $59
    di                                            ; $66a1: $f3
    adc b                                         ; $66a2: $88
    di                                            ; $66a3: $f3
    ld e, b                                       ; $66a4: $58
    di                                            ; $66a5: $f3
    nop                                           ; $66a6: $00
    ld [$e9f3], sp                                ; $66a7: $08 $f3 $e9

jr_095_66aa:
    di                                            ; $66aa: $f3
    ret z                                         ; $66ab: $c8

    ld a, [c]                                     ; $66ac: $f2
    ld b, c                                       ; $66ad: $41
    ld d, c                                       ; $66ae: $51
    jr nz, jr_095_6639                            ; $66af: $20 $88

    and d                                         ; $66b1: $a2
    inc b                                         ; $66b2: $04
    ld [$5140], sp                                ; $66b3: $08 $40 $51
    call $d1f3                                    ; $66b6: $cd $f3 $d1
    ld bc, $a1d4                                  ; $66b9: $01 $d4 $a1
    xor [hl]                                      ; $66bc: $ae
    ld d, c                                       ; $66bd: $51
    ld d, h                                       ; $66be: $54
    and c                                         ; $66bf: $a1
    xor d                                         ; $66c0: $aa
    inc b                                         ; $66c1: $04
    ld [$5930], sp                                ; $66c2: $08 $30 $59
    ld e, [hl]                                    ; $66c5: $5e
    ld b, b                                       ; $66c6: $40
    ld [$383c], sp                                ; $66c7: $08 $3c $38
    ld c, a                                       ; $66ca: $4f
    ccf                                           ; $66cb: $3f
    rra                                           ; $66cc: $1f
    ld a, a                                       ; $66cd: $7f
    jp nz, $0834                                  ; $66ce: $c2 $34 $08

    jr c, jr_095_66d3                             ; $66d1: $38 $00

jr_095_66d3:
    and e                                         ; $66d3: $a3
    inc d                                         ; $66d4: $14
    ld d, c                                       ; $66d5: $51
    ld [$0030], sp                                ; $66d6: $08 $30 $00
    inc c                                         ; $66d9: $0c
    nop                                           ; $66da: $00
    ld a, [c]                                     ; $66db: $f2
    ld a, a                                       ; $66dc: $7f
    rst $38                                       ; $66dd: $ff
    xor $ff                                       ; $66de: $ee $ff
    ld a, a                                       ; $66e0: $7f
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    ret nz                                        ; $66e3: $c0

    inc b                                         ; $66e4: $04
    nop                                           ; $66e5: $00
    ld [$aa08], sp                                ; $66e6: $08 $08 $aa
    rst $38                                       ; $66e9: $ff
    rst $00                                       ; $66ea: $c7
    ccf                                           ; $66eb: $3f
    xor a                                         ; $66ec: $af
    rra                                           ; $66ed: $1f
    adc [hl]                                      ; $66ee: $8e
    inc b                                         ; $66ef: $04
    ld c, b                                       ; $66f0: $48
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    ei                                            ; $66f3: $fb
    ld e, $00                                     ; $66f4: $1e $00
    inc bc                                        ; $66f6: $03
    ld [$0808], sp                                ; $66f7: $08 $08 $08
    ld [$ff00], a                                 ; $66fa: $ea $00 $ff
    and a                                         ; $66fd: $a7
    rra                                           ; $66fe: $1f
    xor e                                         ; $66ff: $ab
    rra                                           ; $6700: $1f
    and a                                         ; $6701: $a7
    rra                                           ; $6702: $1f
    xor a                                         ; $6703: $af
    nop                                           ; $6704: $00
    rra                                           ; $6705: $1f
    sub a                                         ; $6706: $97
    ccf                                           ; $6707: $3f
    rst $28                                       ; $6708: $ef
    rra                                           ; $6709: $1f
    sub a                                         ; $670a: $97
    cpl                                           ; $670b: $2f
    db $eb                                        ; $670c: $eb
    ld d, l                                       ; $670d: $55
    rra                                           ; $670e: $1f
    inc [hl]                                      ; $670f: $34
    ld [$38ff], sp                                ; $6710: $08 $ff $38
    nop                                           ; $6713: $00
    rst $30                                       ; $6714: $f7
    inc e                                         ; $6715: $1c
    nop                                           ; $6716: $00
    db $fd                                        ; $6717: $fd
    jr nz, jr_095_671a                            ; $6718: $20 $00

jr_095_671a:
    dec b                                         ; $671a: $05
    rst $00                                       ; $671b: $c7
    ccf                                           ; $671c: $3f
    xor [hl]                                      ; $671d: $ae
    rra                                           ; $671e: $1f
    add a                                         ; $671f: $87
    inc b                                         ; $6720: $04
    jr nz, @-$79                                  ; $6721: $20 $85

    inc c                                         ; $6723: $0c
    nop                                           ; $6724: $00
    ret c                                         ; $6725: $d8

    inc [hl]                                      ; $6726: $34
    ld [$0838], sp                                ; $6727: $08 $38 $08
    db $dd                                        ; $672a: $dd
    inc a                                         ; $672b: $3c
    nop                                           ; $672c: $00
    inc h                                         ; $672d: $24
    ld [$3f97], sp                                ; $672e: $08 $97 $3f
    db $db                                        ; $6731: $db
    ld [bc], a                                    ; $6732: $02
    ccf                                           ; $6733: $3f
    or a                                          ; $6734: $b7
    rra                                           ; $6735: $1f
    db $db                                        ; $6736: $db
    ccf                                           ; $6737: $3f
    cp a                                          ; $6738: $bf
    inc b                                         ; $6739: $04
    nop                                           ; $673a: $00
    xor a                                         ; $673b: $af
    nop                                           ; $673c: $00
    rra                                           ; $673d: $1f

jr_095_673e:
    sbc a                                         ; $673e: $9f
    ccf                                           ; $673f: $3f
    push af                                       ; $6740: $f5
    rst $38                                       ; $6741: $ff
    ld [c], a                                     ; $6742: $e2
    rst $38                                       ; $6743: $ff
    push af                                       ; $6744: $f5
    call nz, SerialTransferCompleteInterrupt      ; $6745: $c4 $58 $00
    ld [$e018], sp                                ; $6748: $08 $18 $e0
    rst $38                                       ; $674b: $ff
    add l                                         ; $674c: $85
    ld e, b                                       ; $674d: $58
    nop                                           ; $674e: $00
    sub l                                         ; $674f: $95
    cpl                                           ; $6750: $2f
    jr z, jr_095_673e                             ; $6751: $28 $eb

    rla                                           ; $6753: $17
    ld e, h                                       ; $6754: $5c
    ld [$6487], sp                                ; $6755: $08 $87 $64
    nop                                           ; $6758: $00
    push de                                       ; $6759: $d5
    rst $38                                       ; $675a: $ff
    ret z                                         ; $675b: $c8

    inc sp                                        ; $675c: $33
    rst $38                                       ; $675d: $ff
    push de                                       ; $675e: $d5
    ld a, b                                       ; $675f: $78
    nop                                           ; $6760: $00
    ld [$c018], sp                                ; $6761: $08 $18 $c0
    rst $38                                       ; $6764: $ff
    inc [hl]                                      ; $6765: $34
    ld [$3804], sp                                ; $6766: $08 $04 $38
    ld b, b                                       ; $6769: $40
    sub a                                         ; $676a: $97
    ld b, b                                       ; $676b: $40
    nop                                           ; $676c: $00
    ldh [rIE], a                                  ; $676d: $e0 $ff
    ld d, l                                       ; $676f: $55
    ld d, l                                       ; $6770: $55
    ldh [$fa], a                                  ; $6771: $e0 $fa
    inc b                                         ; $6773: $04
    ld b, h                                       ; $6774: $44
    ld d, l                                       ; $6775: $55
    and b                                         ; $6776: $a0
    xor d                                         ; $6777: $aa
    ld d, c                                       ; $6778: $51
    inc b                                         ; $6779: $04
    nop                                           ; $677a: $00

jr_095_677b:
    add a                                         ; $677b: $87
    ccf                                           ; $677c: $3f
    ld c, c                                       ; $677d: $49
    xor e                                         ; $677e: $ab
    add b                                         ; $677f: $80
    nop                                           ; $6780: $00
    db $eb                                        ; $6781: $eb
    rla                                           ; $6782: $17
    ld b, h                                       ; $6783: $44
    ld [$2f95], sp                                ; $6784: $08 $95 $2f
    ld b, b                                       ; $6787: $40
    ld [$c040], sp                                ; $6788: $08 $40 $c0
    jr c, jr_095_679d                             ; $678b: $38 $10

    pop de                                        ; $678d: $d1
    push de                                       ; $678e: $d5
    ret nz                                        ; $678f: $c0

    db $eb                                        ; $6790: $eb
    call nz, $28d5                                ; $6791: $c4 $d5 $28
    ret nz                                        ; $6794: $c0

    ld [$08ba], a                                 ; $6795: $ea $ba $08
    xor e                                         ; $6798: $ab
    cp d                                          ; $6799: $ba
    nop                                           ; $679a: $00
    ld b, c                                       ; $679b: $41

jr_095_679c:
    dec d                                         ; $679c: $15

jr_095_679d:
    sbc a                                         ; $679d: $9f
    nop                                           ; $679e: $00
    ccf                                           ; $679f: $3f
    ld b, c                                       ; $67a0: $41
    dec d                                         ; $67a1: $15
    adc d                                         ; $67a2: $8a
    ld a, [hl+]                                   ; $67a3: $2a
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    ld [hl], a                                    ; $67a6: $77
    ret nz                                        ; $67a7: $c0

    ldh [rNR41], a                                ; $67a8: $e0 $20
    ld [$5508], sp                                ; $67aa: $08 $08 $55
    rst $38                                       ; $67ad: $ff
    sub d                                         ; $67ae: $92
    cpl                                           ; $67af: $2f
    and l                                         ; $67b0: $a5
    rra                                           ; $67b1: $1f
    ld b, l                                       ; $67b2: $45
    jp nc, Jump_000_0004                          ; $67b3: $d2 $04 $00

    db $d3                                        ; $67b6: $d3
    cpl                                           ; $67b7: $2f
    and a                                         ; $67b8: $a7
    inc b                                         ; $67b9: $04
    nop                                           ; $67ba: $00
    and l                                         ; $67bb: $a5
    nop                                           ; $67bc: $00
    ld bc, $0284                                  ; $67bd: $01 $84 $02
    ld e, b                                       ; $67c0: $58
    push af                                       ; $67c1: $f5
    db $e3                                        ; $67c2: $e3
    ld a, [c]                                     ; $67c3: $f2
    rst $20                                       ; $67c4: $e7
    inc b                                         ; $67c5: $04
    jr c, jr_095_677b                             ; $67c6: $38 $b3

    rst $20                                       ; $67c8: $e7
    call nc, $0834                                ; $67c9: $d4 $34 $08
    jr c, jr_095_67d6                             ; $67cc: $38 $08

    cp e                                          ; $67ce: $bb
    inc a                                         ; $67cf: $3c
    nop                                           ; $67d0: $00
    xor $40                                       ; $67d1: $ee $40
    nop                                           ; $67d3: $00
    sub e                                         ; $67d4: $93
    cpl                                           ; $67d5: $2f

jr_095_67d6:
    add hl, hl                                    ; $67d6: $29
    push hl                                       ; $67d7: $e5
    rra                                           ; $67d8: $1f
    inc b                                         ; $67d9: $04

Jump_095_67da:
    ld [$0492], sp                                ; $67da: $08 $92 $04
    db $10                                        ; $67dd: $10
    rst $20                                       ; $67de: $e7
    rra                                           ; $67df: $1f
    inc h                                         ; $67e0: $24
    ld [$2882], sp                                ; $67e1: $08 $82 $28
    ld [$e771], sp                                ; $67e4: $08 $71 $e7
    or l                                          ; $67e7: $b5
    db $e3                                        ; $67e8: $e3
    pop de                                        ; $67e9: $d1
    inc b                                         ; $67ea: $04
    nop                                           ; $67eb: $00
    xor d                                         ; $67ec: $aa
    dec l                                         ; $67ed: $2d
    rst $38                                       ; $67ee: $ff
    ld de, $0166                                  ; $67ef: $11 $66 $01
    ld d, l                                       ; $67f2: $55
    ld l, d                                       ; $67f3: $6a
    ld bc, $0808                                  ; $67f4: $01 $08 $08
    nop                                           ; $67f7: $00
    ld [hl], b                                    ; $67f8: $70
    nop                                           ; $67f9: $00
    ld e, [hl]                                    ; $67fa: $5e
    and a                                         ; $67fb: $a7

jr_095_67fc:
    inc l                                         ; $67fc: $2c
    nop                                           ; $67fd: $00
    and a                                         ; $67fe: $a7
    inc [hl]                                      ; $67ff: $34
    nop                                           ; $6800: $00
    inc b                                         ; $6801: $04
    jr @+$72                                      ; $6802: $18 $70

    jr c, jr_095_679c                             ; $6804: $38 $96

    add hl, de                                    ; $6806: $19
    ld d, c                                       ; $6807: $51
    ld a, [bc]                                    ; $6808: $0a
    rst $20                                       ; $6809: $e7
    dec [hl]                                      ; $680a: $35
    db $e3                                        ; $680b: $e3
    ld d, e                                       ; $680c: $53
    inc a                                         ; $680d: $3c
    nop                                           ; $680e: $00
    ld e, e                                       ; $680f: $5b
    ld [$5b00], sp                                ; $6810: $08 $00 $5b
    jr z, jr_095_67fc                             ; $6813: $28 $e7

    dec d                                         ; $6815: $15
    ld b, b                                       ; $6816: $40
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    jr c, jr_095_682b                             ; $6819: $38 $10

    ld [hl+], a                                   ; $681b: $22
    ld a, a                                       ; $681c: $7f
    nop                                           ; $681d: $00
    inc b                                         ; $681e: $04
    ld [$5500], a                                 ; $681f: $ea $00 $55
    nop                                           ; $6822: $00
    xor d                                         ; $6823: $aa
    or b                                          ; $6824: $b0
    ld [$3f82], sp                                ; $6825: $08 $82 $3f
    db $10                                        ; $6828: $10
    and l                                         ; $6829: $a5
    rra                                           ; $682a: $1f

jr_095_682b:
    add e                                         ; $682b: $83
    inc b                                         ; $682c: $04
    nop                                           ; $682d: $00
    jp $a73f                                      ; $682e: $c3 $3f $a7


    rra                                           ; $6831: $1f
    ld h, c                                       ; $6832: $61
    cp a                                          ; $6833: $bf
    adc $21                                       ; $6834: $ce $21
    cp b                                          ; $6836: $b8
    jr z, jr_095_6894                             ; $6837: $28 $5b

    rst $20                                       ; $6839: $e7
    inc d                                         ; $683a: $14
    ld [c], a                                     ; $683b: $e2
    jr c, jr_095_6846                             ; $683c: $38 $08

    nop                                           ; $683e: $00
    ld d, c                                       ; $683f: $51
    push hl                                       ; $6840: $e5
    nop                                           ; $6841: $00
    and d                                         ; $6842: $a2
    ld de, $0245                                  ; $6843: $11 $45 $02

jr_095_6846:
    and d                                         ; $6846: $a2

jr_095_6847:
    ld [de], a                                    ; $6847: $12
    jp hl                                         ; $6848: $e9


    di                                            ; $6849: $f3
    adc b                                         ; $684a: $88
    inc b                                         ; $684b: $04
    nop                                           ; $684c: $00
    ret z                                         ; $684d: $c8

    ld [c], a                                     ; $684e: $e2
    jr nc, @+$1c                                  ; $684f: $30 $1a

    adc b                                         ; $6851: $88
    inc e                                         ; $6852: $1c
    and d                                         ; $6853: $a2
    ei                                            ; $6854: $fb
    cp $30                                        ; $6855: $fe $30
    ld a, [hl-]                                   ; $6857: $3a
    jr c, @+$0c                                   ; $6858: $38 $0a

    jr nz, @+$14                                  ; $685a: $20 $12

    ld [hl], c                                    ; $685c: $71
    ld [$a240], sp                                ; $685d: $08 $40 $a2
    jr nz, jr_095_687c                            ; $6860: $20 $1a

    ld [$caa2], sp                                ; $6862: $08 $a2 $ca

jr_095_6865:
    pop af                                        ; $6865: $f1
    call $88f3                                    ; $6866: $cd $f3 $88
    inc b                                         ; $6869: $04
    ld [$f3c8], sp                                ; $686a: $08 $c8 $f3
    call Call_000_02a8                            ; $686d: $cd $a8 $02
    call $f1f3                                    ; $6870: $cd $f3 $f1
    sub $a0                                       ; $6873: $d6 $a0
    ld [bc], a                                    ; $6875: $02
    inc b                                         ; $6876: $04
    ld [$04b1], sp                                ; $6877: $08 $b1 $04
    db $10                                        ; $687a: $10
    ld [hl], c                                    ; $687b: $71

jr_095_687c:
    and b                                         ; $687c: $a0
    ld [hl+], a                                   ; $687d: $22
    call c, Call_095_5b1a                         ; $687e: $dc $1a $5b
    adc b                                         ; $6881: $88
    inc h                                         ; $6882: $24
    inc bc                                        ; $6883: $03
    ld [$0df3], sp                                ; $6884: $08 $f3 $0d
    sub [hl]                                      ; $6887: $96
    ld [bc], a                                    ; $6888: $02
    dec c                                         ; $6889: $0d
    di                                            ; $688a: $f3
    ld a, [bc]                                    ; $688b: $0a
    ld b, h                                       ; $688c: $44
    pop af                                        ; $688d: $f1
    inc b                                         ; $688e: $04
    db $10                                        ; $688f: $10
    ld a, [c]                                     ; $6890: $f2
    ret nz                                        ; $6891: $c0

    push af                                       ; $6892: $f5
    sbc b                                         ; $6893: $98

jr_095_6894:
    ld [bc], a                                    ; $6894: $02
    ld d, l                                       ; $6895: $55
    ld [$a220], sp                                ; $6896: $08 $20 $a2
    nop                                           ; $6899: $00
    inc b                                         ; $689a: $04
    db $10                                        ; $689b: $10
    add hl, bc                                    ; $689c: $09
    and e                                         ; $689d: $a3
    ld de, $7156                                  ; $689e: $11 $56 $71
    inc c                                         ; $68a1: $0c
    cp $51                                        ; $68a2: $fe $51
    ld d, [hl]                                    ; $68a4: $56
    jr nz, jr_095_6847                            ; $68a5: $20 $a0

    ld [bc], a                                    ; $68a7: $02
    or b                                          ; $68a8: $b0
    ld bc, $f054                                  ; $68a9: $01 $54 $f0

jr_095_68ac:
    jr nc, jr_095_68ac                            ; $68ac: $30 $fe

    db $db                                        ; $68ae: $db
    ld e, b                                       ; $68af: $58
    inc bc                                        ; $68b0: $03
    inc b                                         ; $68b1: $04
    ld [$1551], sp                                ; $68b2: $08 $51 $15
    ld [bc], a                                    ; $68b5: $02
    ld a, [hl+]                                   ; $68b6: $2a
    ld a, [bc]                                    ; $68b7: $0a
    dec d                                         ; $68b8: $15
    ld d, l                                       ; $68b9: $55
    ld a, [bc]                                    ; $68ba: $0a
    ld a, [hl+]                                   ; $68bb: $2a
    jr c, jr_095_68c6                             ; $68bc: $38 $08

    ld c, $3c                                     ; $68be: $0e $3c
    nop                                           ; $68c0: $00
    inc b                                         ; $68c1: $04
    add b                                         ; $68c2: $80
    and b                                         ; $68c3: $a0
    ld [bc], a                                    ; $68c4: $02
    inc b                                         ; $68c5: $04

jr_095_68c6:
    ld d, c                                       ; $68c6: $51
    add hl, bc                                    ; $68c7: $09
    and a                                         ; $68c8: $a7
    dec bc                                        ; $68c9: $0b
    rst $30                                       ; $68ca: $f7
    add hl, bc                                    ; $68cb: $09
    jr nz, @+$01                                  ; $68cc: $20 $ff

    dec bc                                        ; $68ce: $0b
    ld [bc], a                                    ; $68cf: $02
    nop                                           ; $68d0: $00
    cpl                                           ; $68d1: $2f
    rst $38                                       ; $68d2: $ff
    rrca                                          ; $68d3: $0f
    rst $38                                       ; $68d4: $ff
    rla                                           ; $68d5: $17
    jr @+$01                                      ; $68d6: $18 $ff

    ld a, [bc]                                    ; $68d8: $0a
    rst $38                                       ; $68d9: $ff
    add b                                         ; $68da: $80
    jr z, jr_095_6865                             ; $68db: $28 $88

    ld [$fee9], sp                                ; $68dd: $08 $e9 $fe
    sub c                                         ; $68e0: $91
    ld bc, $bffe                                  ; $68e1: $01 $fe $bf
    ld a, a                                       ; $68e4: $7f
    sbc a                                         ; $68e5: $9f
    ld a, a                                       ; $68e6: $7f
    ccf                                           ; $68e7: $3f
    rst $38                                       ; $68e8: $ff
    inc b                                         ; $68e9: $04
    jr z, jr_095_690c                             ; $68ea: $28 $20

    cp a                                          ; $68ec: $bf
    ld a, a                                       ; $68ed: $7f
    inc [hl]                                      ; $68ee: $34
    nop                                           ; $68ef: $00
    rst $30                                       ; $68f0: $f7
    ld c, $f3                                     ; $68f1: $0e $f3
    add hl, bc                                    ; $68f3: $09
    rst $30                                       ; $68f4: $f7
    inc b                                         ; $68f5: $04
    dec bc                                        ; $68f6: $0b
    rst $30                                       ; $68f7: $f7
    ld bc, $23ff                                  ; $68f8: $01 $ff $23
    ld a, [hl-]                                   ; $68fb: $3a
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    rst $38                                       ; $68fe: $ff
    ld b, b                                       ; $68ff: $40
    inc b                                         ; $6900: $04
    ld h, [hl]                                    ; $6901: $66
    ld bc, $bf40                                  ; $6902: $01 $40 $bf
    nop                                           ; $6905: $00
    rst $38                                       ; $6906: $ff
    ld [bc], a                                    ; $6907: $02
    db $fd                                        ; $6908: $fd
    nop                                           ; $6909: $00
    db $10                                        ; $690a: $10
    rst $28                                       ; $690b: $ef

jr_095_690c:
    ld b, c                                       ; $690c: $41
    cp [hl]                                       ; $690d: $be
    ld b, c                                       ; $690e: $41
    cp $01                                        ; $690f: $fe $01

jr_095_6911:
    cp $00                                        ; $6911: $fe $00
    inc bc                                        ; $6913: $03
    cp $00                                        ; $6914: $fe $00
    rst $38                                       ; $6916: $ff
    ld c, c                                       ; $6917: $49
    cp a                                          ; $6918: $bf
    ld bc, $06ff                                  ; $6919: $01 $ff $06

jr_095_691c:
    ld [bc], a                                    ; $691c: $02
    rst $38                                       ; $691d: $ff
    ld de, $3fef                                  ; $691e: $11 $ef $3f
    cp $02                                        ; $6921: $fe $02
    inc b                                         ; $6923: $04
    ld [$037f], sp                                ; $6924: $08 $7f $03
    rst $38                                       ; $6927: $ff
    cp $ff                                        ; $6928: $fe $ff
    ld sp, hl                                     ; $692a: $f9
    rst $38                                       ; $692b: $ff
    ld d, h                                       ; $692c: $54
    ld l, b                                       ; $692d: $68
    nop                                           ; $692e: $00
    ld h, [hl]                                    ; $692f: $66
    ld [$4050], sp                                ; $6930: $08 $50 $40
    ld l, $00                                     ; $6933: $2e $00
    ld c, b                                       ; $6935: $48
    inc a                                         ; $6936: $3c
    ld [$e0fb], sp                                ; $6937: $08 $fb $e0
    push af                                       ; $693a: $f5
    ldh [$8a], a                                  ; $693b: $e0 $8a
    sub [hl]                                      ; $693d: $96
    ld [bc], a                                    ; $693e: $02
    ldh [rIE], a                                  ; $693f: $e0 $ff
    and b                                         ; $6941: $a0
    inc b                                         ; $6942: $04
    db $10                                        ; $6943: $10
    ld h, b                                       ; $6944: $60
    and b                                         ; $6945: $a0
    ld [bc], a                                    ; $6946: $02
    xor a                                         ; $6947: $af
    or l                                          ; $6948: $b5
    ret c                                         ; $6949: $d8

    ld [bc], a                                    ; $694a: $02
    xor a                                         ; $694b: $af
    db $e4                                        ; $694c: $e4
    ld [bc], a                                    ; $694d: $02
    inc b                                         ; $694e: $04
    jr jr_095_6911                                ; $694f: $18 $c0

    ld d, h                                       ; $6951: $54
    ld [bc], a                                    ; $6952: $02
    ret nz                                        ; $6953: $c0

    sbc b                                         ; $6954: $98
    ld [bc], a                                    ; $6955: $02
    and d                                         ; $6956: $a2
    inc b                                         ; $6957: $04
    jr z, @+$47                                   ; $6958: $28 $45

    ld d, h                                       ; $695a: $54
    ld [bc], a                                    ; $695b: $02
    push bc                                       ; $695c: $c5
    dec d                                         ; $695d: $15
    sbc e                                         ; $695e: $9b
    ld e, $13                                     ; $695f: $1e $13
    rst $08                                       ; $6961: $cf
    ld [$d73f], sp                                ; $6962: $08 $3f $d7
    ccf                                           ; $6965: $3f
    ldh [$34], a                                  ; $6966: $e0 $34
    nop                                           ; $6968: $00
    ld b, b                                       ; $6969: $40
    ld d, l                                       ; $696a: $55
    ld h, b                                       ; $696b: $60
    nop                                           ; $696c: $00
    cp $40                                        ; $696d: $fe $40
    ld d, l                                       ; $696f: $55
    jr nz, jr_095_691c                            ; $6970: $20 $aa

    ld b, b                                       ; $6972: $40
    ld d, l                                       ; $6973: $55
    ldh [$80], a                                  ; $6974: $e0 $80
    jr nz, @+$15                                  ; $6976: $20 $13

    ld d, a                                       ; $6978: $57
    rlca                                          ; $6979: $07
    xor d                                         ; $697a: $aa
    ld [bc], a                                    ; $697b: $02
    ld b, l                                       ; $697c: $45
    dec d                                         ; $697d: $15
    xor d                                         ; $697e: $aa
    jr nc, @+$0c                                  ; $697f: $30 $0a

    ld c, l                                       ; $6981: $4d
    xor h                                         ; $6982: $ac
    ld [bc], a                                    ; $6983: $02
    ld e, d                                       ; $6984: $5a
    nop                                           ; $6985: $00

jr_095_6986:
    xor d                                         ; $6986: $aa
    ldh [$f5], a                                  ; $6987: $e0 $f5
    and b                                         ; $6989: $a0
    call nz, Call_000_001c                        ; $698a: $c4 $1c $00
    inc b                                         ; $698d: $04
    ld [$ffe0], sp                                ; $698e: $08 $e0 $ff
    ei                                            ; $6991: $fb
    ld l, h                                       ; $6992: $6c
    inc b                                         ; $6993: $04
    ld de, $0455                                  ; $6994: $11 $55 $04
    adc d                                         ; $6997: $8a
    ld a, [hl+]                                   ; $6998: $2a
    ld de, $aa55                                  ; $6999: $11 $55 $aa
    db $10                                        ; $699c: $10
    ld bc, $ff7f                                  ; $699d: $01 $7f $ff
    jr z, jr_095_69e2                             ; $69a0: $28 $40

    ld d, a                                       ; $69a2: $57
    add b                                         ; $69a3: $80
    ld [$02f0], sp                                ; $69a4: $08 $f0 $02
    jr nc, jr_095_6986                            ; $69a7: $30 $dd

    ccf                                           ; $69a9: $3f
    ld c, a                                       ; $69aa: $4f
    inc c                                         ; $69ab: $0c
    cp a                                          ; $69ac: $bf
    rst $18                                       ; $69ad: $df
    ccf                                           ; $69ae: $3f
    ld c, l                                       ; $69af: $4d
    inc b                                         ; $69b0: $04
    nop                                           ; $69b1: $00
    sbc e                                         ; $69b2: $9b

jr_095_69b3:
    inc bc                                        ; $69b3: $03
    cp a                                          ; $69b4: $bf
    cp a                                          ; $69b5: $bf
    and d                                         ; $69b6: $a2
    ld [hl-], a                                   ; $69b7: $32
    inc bc                                        ; $69b8: $03
    ld [c], a                                     ; $69b9: $e2
    ld [hl], $03                                  ; $69ba: $36 $03
    db $e4                                        ; $69bc: $e4
    rst $38                                       ; $69bd: $ff
    pop hl                                        ; $69be: $e1
    and [hl]                                      ; $69bf: $a6
    db $10                                        ; $69c0: $10
    ld [c], a                                     ; $69c1: $e2
    db $10                                        ; $69c2: $10
    db $fd                                        ; $69c3: $fd
    cp l                                          ; $69c4: $bd
    db $fd                                        ; $69c5: $fd
    db $fc                                        ; $69c6: $fc
    add hl, de                                    ; $69c7: $19
    ld a, [hl]                                    ; $69c8: $7e
    rst $38                                       ; $69c9: $ff
    inc d                                         ; $69ca: $14
    rst $38                                       ; $69cb: $ff
    adc b                                         ; $69cc: $88
    jp nz, $f408                                  ; $69cd: $c2 $08 $f4

    rst $38                                       ; $69d0: $ff
    add sp, $72                                   ; $69d1: $e8 $72
    ld [bc], a                                    ; $69d3: $02
    ld bc, $25ff                                  ; $69d4: $01 $ff $25
    add d                                         ; $69d7: $82
    xor $00                                       ; $69d8: $ee $00

jr_095_69da:
    sub c                                         ; $69da: $91
    rst $28                                       ; $69db: $ef
    inc b                                         ; $69dc: $04
    ei                                            ; $69dd: $fb
    cp a                                          ; $69de: $bf
    pop de                                        ; $69df: $d1
    ld b, d                                       ; $69e0: $42
    ccf                                           ; $69e1: $3f

jr_095_69e2:
    jr nz, @+$01                                  ; $69e2: $20 $ff

    ld c, d                                       ; $69e4: $4a
    call c, $e010                                 ; $69e5: $dc $10 $e0
    rst $38                                       ; $69e8: $ff
    pop hl                                        ; $69e9: $e1
    cp $e8                                        ; $69ea: $fe $e8
    ld bc, $d0ff                                  ; $69ec: $01 $ff $d0
    rst $38                                       ; $69ef: $ff
    and c                                         ; $69f0: $a1
    cp $04                                        ; $69f1: $fe $04
    ei                                            ; $69f3: $fb
    ld a, [hl+]                                   ; $69f4: $2a
    add hl, bc                                    ; $69f5: $09
    add a                                         ; $69f6: $87
    ld hl, sp+$08                                 ; $69f7: $f8 $08
    jr nz, jr_095_69da                            ; $69f9: $20 $df

    ld [bc], a                                    ; $69fb: $02
    db $fd                                        ; $69fc: $fd
    jr c, jr_095_6a10                             ; $69fd: $38 $11

    ld h, h                                       ; $69ff: $64
    ld [bc], a                                    ; $6a00: $02
    ld l, b                                       ; $6a01: $68
    ld [bc], a                                    ; $6a02: $02
    inc [hl]                                      ; $6a03: $34
    rst $38                                       ; $6a04: $ff
    add b                                         ; $6a05: $80
    ld [bc], a                                    ; $6a06: $02
    jr nz, jr_095_6a6d                            ; $6a07: $20 $64

    ld a, [bc]                                    ; $6a09: $0a
    rlc h                                         ; $6a0a: $cb $04
    jr nc, jr_095_69b3                            ; $6a0c: $30 $a5

    ld e, a                                       ; $6a0e: $5f
    add b                                         ; $6a0f: $80

jr_095_6a10:
    ld d, h                                       ; $6a10: $54
    ld [bc], a                                    ; $6a11: $02
    xor d                                         ; $6a12: $aa
    dec de                                        ; $6a13: $1b
    rst $20                                       ; $6a14: $e7
    rla                                           ; $6a15: $17
    rst $28                                       ; $6a16: $ef
    inc de                                        ; $6a17: $13

jr_095_6a18:
    rst $28                                       ; $6a18: $ef
    ld d, c                                       ; $6a19: $51
    rlca                                          ; $6a1a: $07
    xor b                                         ; $6a1b: $a8
    ld bc, $2817                                  ; $6a1c: $01 $17 $28
    stop                                          ; $6a1f: $10 $00
    ld d, l                                       ; $6a21: $55
    add b                                         ; $6a22: $80
    inc [hl]                                      ; $6a23: $34
    nop                                           ; $6a24: $00
    and b                                         ; $6a25: $a0
    inc b                                         ; $6a26: $04
    db $10                                        ; $6a27: $10
    ld a, [$0824]                                 ; $6a28: $fa $24 $08
    rst $08                                       ; $6a2b: $cf
    ccf                                           ; $6a2c: $3f
    add l                                         ; $6a2d: $85
    ld a, a                                       ; $6a2e: $7f
    adc $80                                       ; $6a2f: $ce $80
    inc b                                         ; $6a31: $04
    nop                                           ; $6a32: $00
    jp z, $873f                                   ; $6a33: $ca $3f $87

    ld a, a                                       ; $6a36: $7f
    rra                                           ; $6a37: $1f
    rst $38                                       ; $6a38: $ff
    ld a, [hl+]                                   ; $6a39: $2a
    rrca                                          ; $6a3a: $0f
    xor d                                         ; $6a3b: $aa
    ld de, $0255                                  ; $6a3c: $11 $55 $02
    ld d, h                                       ; $6a3f: $54
    ld [$0824], sp                                ; $6a40: $08 $24 $08
    inc l                                         ; $6a43: $2c
    ld [$005c], sp                                ; $6a44: $08 $5c $00
    halt                                          ; $6a47: $76
    and b                                         ; $6a48: $a0
    ld [hl], d                                    ; $6a49: $72
    ld bc, $0038                                  ; $6a4a: $01 $38 $00
    db $10                                        ; $6a4d: $10
    inc bc                                        ; $6a4e: $03
    jp z, Jump_000_056c                           ; $6a4f: $ca $6c $05

    inc b                                         ; $6a52: $04
    ld [$b9cb], sp                                ; $6a53: $08 $cb $b9
    ld [hl], h                                    ; $6a56: $74
    dec b                                         ; $6a57: $05
    rst $08                                       ; $6a58: $cf
    ld a, b                                       ; $6a59: $78
    dec b                                         ; $6a5a: $05
    ld [$d42b], sp                                ; $6a5b: $08 $2b $d4
    ld a, [hl+]                                   ; $6a5e: $2a
    add b                                         ; $6a5f: $80
    xor e                                         ; $6a60: $ab
    adc d                                         ; $6a61: $8a
    jr z, jr_095_6a18                             ; $6a62: $28 $b4

    sub d                                         ; $6a64: $92
    ld [$ca81], sp                                ; $6a65: $08 $81 $ca
    ld bc, $08b4                                  ; $6a68: $01 $b4 $08
    ld [bc], a                                    ; $6a6b: $02
    ld c, d                                       ; $6a6c: $4a

jr_095_6a6d:
    inc bc                                        ; $6a6d: $03
    ld [bc], a                                    ; $6a6e: $02
    rst $38                                       ; $6a6f: $ff
    nop                                           ; $6a70: $00
    add hl, bc                                    ; $6a71: $09
    rst $38                                       ; $6a72: $ff
    sub b                                         ; $6a73: $90
    ld l, a                                       ; $6a74: $6f
    rrca                                          ; $6a75: $0f
    rst $38                                       ; $6a76: $ff
    sub a                                         ; $6a77: $97
    ld a, a                                       ; $6a78: $7f
    ld [$ff0f], sp                                ; $6a79: $08 $0f $ff
    rra                                           ; $6a7c: $1f
    rst $38                                       ; $6a7d: $ff
    ld [$7f0b], sp                                ; $6a7e: $08 $0b $7f
    rst $38                                       ; $6a81: $ff
    sbc a                                         ; $6a82: $9f
    ldh [$bf], a                                  ; $6a83: $e0 $bf
    ld d, e                                       ; $6a85: $53
    ld [c], a                                     ; $6a86: $e2
    add hl, bc                                    ; $6a87: $09
    ret z                                         ; $6a88: $c8

    jr @-$3e                                      ; $6a89: $18 $c0

    rst $38                                       ; $6a8b: $ff
    adc b                                         ; $6a8c: $88
    rst $38                                       ; $6a8d: $ff
    ld [hl+], a                                   ; $6a8e: $22
    nop                                           ; $6a8f: $00
    db $fd                                        ; $6a90: $fd
    sub b                                         ; $6a91: $90
    rst $38                                       ; $6a92: $ff
    ld de, $40ee                                  ; $6a93: $11 $ee $40
    ld d, c                                       ; $6a96: $51
    adc l                                         ; $6a97: $8d
    ld c, b                                       ; $6a98: $48
    or e                                          ; $6a99: $b3
    ldh [rWY], a                                  ; $6a9a: $e0 $4a
    ld [hl], c                                    ; $6a9c: $71
    ld a, [hl]                                    ; $6a9d: $7e
    ldh [$5a], a                                  ; $6a9e: $e0 $5a
    ret z                                         ; $6aa0: $c8

    rst $30                                       ; $6aa1: $f7
    adc c                                         ; $6aa2: $89
    ld d, c                                       ; $6aa3: $51
    and e                                         ; $6aa4: $a3
    ret nz                                        ; $6aa5: $c0

    ld b, d                                       ; $6aa6: $42
    rst $30                                       ; $6aa7: $f7
    db $f4                                        ; $6aa8: $f4
    ld a, [bc]                                    ; $6aa9: $0a
    ld d, c                                       ; $6aaa: $51
    ld e, [hl]                                    ; $6aab: $5e
    ld hl, $3330                                  ; $6aac: $21 $30 $33
    and c                                         ; $6aaf: $a1
    ret nz                                        ; $6ab0: $c0

    ld a, [hl+]                                   ; $6ab1: $2a
    ei                                            ; $6ab2: $fb
    jr nz, jr_095_6abb                            ; $6ab3: $20 $06

    cp a                                          ; $6ab5: $bf
    ld a, a                                       ; $6ab6: $7f
    rra                                           ; $6ab7: $1f
    ld a, a                                       ; $6ab8: $7f
    ld hl, sp+$0a                                 ; $6ab9: $f8 $0a

jr_095_6abb:
    ld [$5104], sp                                ; $6abb: $08 $04 $51
    dec c                                         ; $6abe: $0d
    or e                                          ; $6abf: $b3
    ret nz                                        ; $6ac0: $c0

    ld a, [de]                                    ; $6ac1: $1a
    ld [$01a2], sp                                ; $6ac2: $08 $a2 $01
    ld c, c                                       ; $6ac5: $49
    push af                                       ; $6ac6: $f5
    ret nz                                        ; $6ac7: $c0

    ld e, d                                       ; $6ac8: $5a
    ld d, c                                       ; $6ac9: $51
    ld d, h                                       ; $6aca: $54
    ret nz                                        ; $6acb: $c0

    ld e, d                                       ; $6acc: $5a
    inc b                                         ; $6acd: $04
    pop de                                        ; $6ace: $d1
    or b                                          ; $6acf: $b0
    ld h, d                                       ; $6ad0: $62
    add b                                         ; $6ad1: $80
    ld bc, $4000                                  ; $6ad2: $01 $00 $40
    ld b, b                                       ; $6ad5: $40
    nop                                           ; $6ad6: $00

jr_095_6ad7:
    ld [bc], a                                    ; $6ad7: $02
    nop                                           ; $6ad8: $00
    ld h, $00                                     ; $6ad9: $26 $00
    inc d                                         ; $6adb: $14
    db $db                                        ; $6adc: $db
    nop                                           ; $6add: $00
    rst $30                                       ; $6ade: $f7
    cp d                                          ; $6adf: $ba
    ld [bc], a                                    ; $6ae0: $02
    ld b, b                                       ; $6ae1: $40
    ld [de], a                                    ; $6ae2: $12
    ld [$4404], sp                                ; $6ae3: $08 $04 $44
    ld [bc], a                                    ; $6ae6: $02
    nop                                           ; $6ae7: $00
    and b                                         ; $6ae8: $a0
    nop                                           ; $6ae9: $00
    ld d, b                                       ; $6aea: $50
    nop                                           ; $6aeb: $00
    xor $88                                       ; $6aec: $ee $88
    ld bc, $2080                                  ; $6aee: $01 $80 $20
    ld [bc], a                                    ; $6af1: $02
    ld [bc], a                                    ; $6af2: $02
    inc d                                         ; $6af3: $14

jr_095_6af4:
    ld [$4840], sp                                ; $6af4: $08 $40 $48
    nop                                           ; $6af7: $00
    stop                                          ; $6af8: $10 $00
    inc b                                         ; $6afa: $04
    dec c                                         ; $6afb: $0d
    nop                                           ; $6afc: $00
    ld a, a                                       ; $6afd: $7f
    inc b                                         ; $6afe: $04
    inc b                                         ; $6aff: $04

Jump_095_6b00:
    jr nc, jr_095_6b02                            ; $6b00: $30 $00

jr_095_6b02:
    ld d, b                                       ; $6b02: $50
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    ld [$1400], sp                                ; $6b05: $08 $00 $14
    nop                                           ; $6b08: $00
    cp d                                          ; $6b09: $ba
    nop                                           ; $6b0a: $00
    ld [hl], l                                    ; $6b0b: $75
    nop                                           ; $6b0c: $00
    ld h, b                                       ; $6b0d: $60
    rst $28                                       ; $6b0e: $ef
    db $10                                        ; $6b0f: $10
    ld de, $0458                                  ; $6b10: $11 $58 $04
    jr z, jr_095_6af4                             ; $6b13: $28 $df

    nop                                           ; $6b15: $00
    rst $38                                       ; $6b16: $ff
    jr nz, @-$2a                                  ; $6b17: $20 $d4

    ret nz                                        ; $6b19: $c0

    ld [bc], a                                    ; $6b1a: $02
    ld d, [hl]                                    ; $6b1b: $56
    add hl, bc                                    ; $6b1c: $09

jr_095_6b1d:
    ld [hl+], a                                   ; $6b1d: $22
    jp z, Jump_000_0411                           ; $6b1e: $ca $11 $04

    ld b, $03                                     ; $6b21: $06 $03
    and b                                         ; $6b23: $a0
    ld e, a                                       ; $6b24: $5f
    ld bc, $ff00                                  ; $6b25: $01 $00 $ff
    add h                                         ; $6b28: $84
    ld a, e                                       ; $6b29: $7b
    db $10                                        ; $6b2a: $10
    rst $28                                       ; $6b2b: $ef
    inc b                                         ; $6b2c: $04
    inc e                                         ; $6b2d: $1c
    nop                                           ; $6b2e: $00
    call nz, Call_000_000a                        ; $6b2f: $c4 $0a $00
    add b                                         ; $6b32: $80
    inc b                                         ; $6b33: $04
    db $10                                        ; $6b34: $10
    rst $28                                       ; $6b35: $ef
    jr nz, jr_095_6b62                            ; $6b36: $20 $2a

    nop                                           ; $6b38: $00
    dec b                                         ; $6b39: $05
    cp $21                                        ; $6b3a: $fe $21
    jr nz, jr_095_6b1d                            ; $6b3c: $20 $df

    add b                                         ; $6b3e: $80
    add hl, bc                                    ; $6b3f: $09
    ld [$42f7], sp                                ; $6b40: $08 $f7 $42
    cp l                                          ; $6b43: $bd
    ld b, $08                                     ; $6b44: $06 $08
    ld b, l                                       ; $6b46: $45
    add c                                         ; $6b47: $81
    adc h                                         ; $6b48: $8c
    ld de, $7f80                                  ; $6b49: $11 $80 $7f
    ld [$0004], sp                                ; $6b4c: $08 $04 $00
    jr z, jr_095_6ad7                             ; $6b4f: $28 $86

    nop                                           ; $6b51: $00
    inc bc                                        ; $6b52: $03
    inc b                                         ; $6b53: $04
    ei                                            ; $6b54: $fb
    ld bc, $40fe                                  ; $6b55: $01 $fe $40
    rst $38                                       ; $6b58: $ff
    ld c, $08                                     ; $6b59: $0e $08
    inc d                                         ; $6b5b: $14
    dec bc                                        ; $6b5c: $0b
    inc b                                         ; $6b5d: $04
    ld [$44f7], sp                                ; $6b5e: $08 $f7 $44
    cp e                                          ; $6b61: $bb

jr_095_6b62:
    db $10                                        ; $6b62: $10
    ld l, d                                       ; $6b63: $6a
    nop                                           ; $6b64: $00
    ld bc, $30fe                                  ; $6b65: $01 $fe $30
    db $10                                        ; $6b68: $10
    rst $28                                       ; $6b69: $ef
    ld d, $00                                     ; $6b6a: $16 $00
    and [hl]                                      ; $6b6c: $a6
    nop                                           ; $6b6d: $00
    add b                                         ; $6b6e: $80
    ld a, a                                       ; $6b6f: $7f
    ld d, c                                       ; $6b70: $51
    cp [hl]                                       ; $6b71: $be
    ret nz                                        ; $6b72: $c0

    inc a                                         ; $6b73: $3c
    ld a, [bc]                                    ; $6b74: $0a
    ld b, [hl]                                    ; $6b75: $46
    nop                                           ; $6b76: $00
    add b                                         ; $6b77: $80
    ldh a, [$f0]                                  ; $6b78: $f0 $f0
    ld hl, sp-$08                                 ; $6b7a: $f8 $f8
    db $fd                                        ; $6b7c: $fd
    ld b, b                                       ; $6b7d: $40
    db $fd                                        ; $6b7e: $fd
    ld [hl], b                                    ; $6b7f: $70
    add hl, de                                    ; $6b80: $19
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    jr c, jr_095_6bbd                             ; $6b83: $38 $38

    ld e, h                                       ; $6b85: $5c
    ld a, h                                       ; $6b86: $7c
    nop                                           ; $6b87: $00
    xor h                                         ; $6b88: $ac
    db $fc                                        ; $6b89: $fc
    ld e, [hl]                                    ; $6b8a: $5e
    cp $be                                        ; $6b8b: $fe $be
    cp $7e                                        ; $6b8d: $fe $7e
    cp $ee                                        ; $6b8f: $fe $ee
    sbc h                                         ; $6b91: $9c
    inc c                                         ; $6b92: $0c
    jr c, @+$0a                                   ; $6b93: $38 $08

    ld [bc], a                                    ; $6b95: $02
    jr z, jr_095_6ba9                             ; $6b96: $28 $11

    inc c                                         ; $6b98: $0c
    jr nz, @-$4e                                  ; $6b99: $20 $b0

    ld [$2816], sp                                ; $6b9b: $08 $16 $28
    jr nz, @+$65                                  ; $6b9e: $20 $63

    jr nz, @+$04                                  ; $6ba0: $20 $02

    add hl, bc                                    ; $6ba2: $09
    ld b, $10                                     ; $6ba3: $06 $10
    adc d                                         ; $6ba5: $8a
    nop                                           ; $6ba6: $00
    db $dd                                        ; $6ba7: $dd
    adc h                                         ; $6ba8: $8c

jr_095_6ba9:
    ld [bc], a                                    ; $6ba9: $02
    ld c, $09                                     ; $6baa: $0e $09

jr_095_6bac:
    ld de, $8000                                  ; $6bac: $11 $00 $80
    add h                                         ; $6baf: $84
    ld [c], a                                     ; $6bb0: $e2
    db $10                                        ; $6bb1: $10
    cpl                                           ; $6bb2: $2f
    nop                                           ; $6bb3: $00
    cp $0c                                        ; $6bb4: $fe $0c
    nop                                           ; $6bb6: $00
    db $10                                        ; $6bb7: $10
    add b                                         ; $6bb8: $80
    ld [$2508], sp                                ; $6bb9: $08 $08 $25
    add hl, bc                                    ; $6bbc: $09

jr_095_6bbd:
    nop                                           ; $6bbd: $00
    or b                                          ; $6bbe: $b0
    nop                                           ; $6bbf: $00
    ld l, e                                       ; $6bc0: $6b
    inc c                                         ; $6bc1: $0c
    nop                                           ; $6bc2: $00
    rst $30                                       ; $6bc3: $f7
    db $10                                        ; $6bc4: $10
    db $10                                        ; $6bc5: $10
    db $10                                        ; $6bc6: $10
    add hl, de                                    ; $6bc7: $19
    ld [bc], a                                    ; $6bc8: $02
    ld bc, $0084                                  ; $6bc9: $01 $84 $00
    ld b, c                                       ; $6bcc: $41
    ld e, e                                       ; $6bcd: $5b
    ret nc                                        ; $6bce: $d0

    nop                                           ; $6bcf: $00
    rst $38                                       ; $6bd0: $ff
    add d                                         ; $6bd1: $82
    ld a, a                                       ; $6bd2: $7f
    jr z, jr_095_6bac                             ; $6bd3: $28 $d7

    or $1b                                        ; $6bd5: $f6 $1b
    pop bc                                        ; $6bd7: $c1
    jp c, $0c08                                   ; $6bd8: $da $08 $0c

    add hl, bc                                    ; $6bdb: $09
    adc d                                         ; $6bdc: $8a
    ld [hl], a                                    ; $6bdd: $77
    inc b                                         ; $6bde: $04
    ei                                            ; $6bdf: $fb
    db $10                                        ; $6be0: $10
    inc b                                         ; $6be1: $04
    inc bc                                        ; $6be2: $03
    ld b, h                                       ; $6be3: $44
    add b                                         ; $6be4: $80
    inc b                                         ; $6be5: $04
    inc b                                         ; $6be6: $04
    nop                                           ; $6be7: $00
    rst $38                                       ; $6be8: $ff
    ld b, c                                       ; $6be9: $41
    ld [c], a                                     ; $6bea: $e2
    ld [hl+], a                                   ; $6beb: $22
    add b                                         ; $6bec: $80
    ld a, a                                       ; $6bed: $7f
    ld [hl], a                                    ; $6bee: $77
    ld bc, $1122                                  ; $6bef: $01 $22 $11
    nop                                           ; $6bf2: $00
    add hl, bc                                    ; $6bf3: $09
    ld b, b                                       ; $6bf4: $40
    ld a, [bc]                                    ; $6bf5: $0a
    db $10                                        ; $6bf6: $10
    xor $03                                       ; $6bf7: $ee $03
    sbc h                                         ; $6bf9: $9c
    jr c, jr_095_6c04                             ; $6bfa: $38 $08

    dec de                                        ; $6bfc: $1b
    ldh a, [$30]                                  ; $6bfd: $f0 $30
    add hl, bc                                    ; $6bff: $09
    db $f4                                        ; $6c00: $f4
    ld [$18b4], sp                                ; $6c01: $08 $b4 $18

jr_095_6c04:
    ld c, d                                       ; $6c04: $4a
    inc c                                         ; $6c05: $0c
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    jr nc, jr_095_6c3a                            ; $6c08: $30 $30

    nop                                           ; $6c0a: $00
    ld l, b                                       ; $6c0b: $68
    ld a, b                                       ; $6c0c: $78
    ld a, b                                       ; $6c0d: $78
    ld a, b                                       ; $6c0e: $78
    inc [hl]                                      ; $6c0f: $34
    inc a                                         ; $6c10: $3c
    ld a, [hl-]                                   ; $6c11: $3a
    ld a, $0e                                     ; $6c12: $3e $0e
    ld e, $1e                                     ; $6c14: $1e $1e
    dec e                                         ; $6c16: $1d
    rra                                           ; $6c17: $1f
    adc $38                                       ; $6c18: $ce $38
    ld [$d409], sp                                ; $6c1a: $08 $09 $d4
    nop                                           ; $6c1d: $00
    ld de, $b0c0                                  ; $6c1e: $11 $c0 $b0
    ld de, $0196                                  ; $6c21: $11 $96 $01
    nop                                           ; $6c24: $00
    add c                                         ; $6c25: $81
    nop                                           ; $6c26: $00
    ld c, d                                       ; $6c27: $4a
    nop                                           ; $6c28: $00
    or a                                          ; $6c29: $b7
    and [hl]                                      ; $6c2a: $a6
    inc c                                         ; $6c2b: $0c
    jr nz, jr_095_6c3e                            ; $6c2c: $20 $10

    adc $00                                       ; $6c2e: $ce $00
    ld d, l                                       ; $6c30: $55
    nop                                           ; $6c31: $00
    ld h, b                                       ; $6c32: $60
    ld [$080d], sp                                ; $6c33: $08 $0d $08
    db $10                                        ; $6c36: $10
    or b                                          ; $6c37: $b0
    cp [hl]                                       ; $6c38: $be
    nop                                           ; $6c39: $00

jr_095_6c3a:
    or d                                          ; $6c3a: $b2
    sbc $00                                       ; $6c3b: $de $00
    adc b                                         ; $6c3d: $88

jr_095_6c3e:
    inc b                                         ; $6c3e: $04
    ld b, b                                       ; $6c3f: $40
    ld b, b                                       ; $6c40: $40
    ld [bc], a                                    ; $6c41: $02
    ld [bc], a                                    ; $6c42: $02
    adc a                                         ; $6c43: $8f
    cp [hl]                                       ; $6c44: $be
    ld bc, $002c                                  ; $6c45: $01 $2c $00
    ld d, h                                       ; $6c48: $54
    ret nz                                        ; $6c49: $c0

    ld bc, $311a                                  ; $6c4a: $01 $1a $31
    ld a, h                                       ; $6c4d: $7c
    dec bc                                        ; $6c4e: $0b
    ld c, $11                                     ; $6c4f: $0e $11
    push de                                       ; $6c51: $d5
    add $01                                       ; $6c52: $c6 $01
    jr nc, jr_095_6c6f                            ; $6c54: $30 $19

    db $10                                        ; $6c56: $10
    inc d                                         ; $6c57: $14
    jr nc, jr_095_6c5c                            ; $6c58: $30 $02

    jr nc, jr_095_6c6d                            ; $6c5a: $30 $11

jr_095_6c5c:
    ld bc, $2146                                  ; $6c5c: $01 $46 $21
    db $10                                        ; $6c5f: $10
    ld b, $06                                     ; $6c60: $06 $06
    rrca                                          ; $6c62: $0f
    ld bc, $1a10                                  ; $6c63: $01 $10 $1a
    ld e, $1a                                     ; $6c66: $1e $1a
    ld e, $0c                                     ; $6c68: $1e $0c
    ld [hl-], a                                   ; $6c6a: $32
    ld a, $26                                     ; $6c6b: $3e $26

jr_095_6c6d:
    ld a, $40                                     ; $6c6d: $3e $40

jr_095_6c6f:
    ld a, [bc]                                    ; $6c6f: $0a
    inc b                                         ; $6c70: $04
    jr @+$12                                      ; $6c71: $18 $10

    db $10                                        ; $6c73: $10
    ld a, e                                       ; $6c74: $7b
    jr nz, jr_095_6c78                            ; $6c75: $20 $01

    nop                                           ; $6c77: $00

jr_095_6c78:
    add h                                         ; $6c78: $84
    ld bc, $1e6f                                  ; $6c79: $01 $6f $1e
    inc b                                         ; $6c7c: $04
    jr @+$01                                      ; $6c7d: $18 $ff

    and l                                         ; $6c7f: $a5
    rlca                                          ; $6c80: $07
    db $10                                        ; $6c81: $10
    jr c, jr_095_6c04                             ; $6c82: $38 $80

    ld sp, hl                                     ; $6c84: $f9
    rlca                                          ; $6c85: $07
    ld [$f540], a                                 ; $6c86: $ea $40 $f5
    and b                                         ; $6c89: $a0
    ld a, [$fd50]                                 ; $6c8a: $fa $50 $fd
    ld d, $a8                                     ; $6c8d: $16 $a8
    cp $54                                        ; $6c8f: $fe $54
    ret                                           ; $6c91: $c9


    rla                                           ; $6c92: $17
    ld [$2399], a                                 ; $6c93: $ea $99 $23
    push af                                       ; $6c96: $f5
    inc de                                        ; $6c97: $13
    ld a, [hl+]                                   ; $6c98: $2a
    pop de                                        ; $6c99: $d1
    ld sp, hl                                     ; $6c9a: $f9
    dec bc                                        ; $6c9b: $0b
    jr c, jr_095_6cb1                             ; $6c9c: $38 $13

    ei                                            ; $6c9e: $fb
    call c, $fa07                                 ; $6c9f: $dc $07 $fa
    rst $38                                       ; $6ca2: $ff
    db $ed                                        ; $6ca3: $ed
    ld [$0000], sp                                ; $6ca4: $08 $00 $00
    ldh [$e0], a                                  ; $6ca7: $e0 $e0
    ret nc                                        ; $6ca9: $d0

    ldh a, [$b8]                                  ; $6caa: $f0 $b8
    ld hl, sp+$58                                 ; $6cac: $f8 $58
    ld hl, sp+$01                                 ; $6cae: $f8 $01
    cp h                                          ; $6cb0: $bc

jr_095_6cb1:
    db $fc                                        ; $6cb1: $fc
    cp $fe                                        ; $6cb2: $fe $fe
    or $fe                                        ; $6cb4: $f6 $fe
    rst $28                                       ; $6cb6: $ef
    inc a                                         ; $6cb7: $3c
    rrca                                          ; $6cb8: $0f
    ld a, e                                       ; $6cb9: $7b
    xor e                                         ; $6cba: $ab
    ld h, b                                       ; $6cbb: $60
    jr nc, jr_095_6d08                            ; $6cbc: $30 $4a

    rrca                                          ; $6cbe: $0f
    ld a, [$7009]                                 ; $6cbf: $fa $09 $70
    ld c, b                                       ; $6cc2: $48
    ld d, l                                       ; $6cc3: $55
    ld e, c                                       ; $6cc4: $59
    dec b                                         ; $6cc5: $05
    add b                                         ; $6cc6: $80
    jr c, jr_095_6ce0                             ; $6cc7: $38 $17

    ld [$5fff], a                                 ; $6cc9: $ea $ff $5f
    sub b                                         ; $6ccc: $90
    ld d, b                                       ; $6ccd: $50
    xor [hl]                                      ; $6cce: $ae
    db $fd                                        ; $6ccf: $fd
    rlca                                          ; $6cd0: $07
    ld h, e                                       ; $6cd1: $63
    ld e, a                                       ; $6cd2: $5f
    ld c, a                                       ; $6cd3: $4f
    rrca                                          ; $6cd4: $0f
    push af                                       ; $6cd5: $f5
    ld [hl], l                                    ; $6cd6: $75
    ld c, a                                       ; $6cd7: $4f
    srl [hl]                                      ; $6cd8: $cb $3e
    xor b                                         ; $6cda: $a8
    rla                                           ; $6cdb: $17
    and b                                         ; $6cdc: $a0
    ld c, b                                       ; $6cdd: $48
    xor d                                         ; $6cde: $aa
    dec l                                         ; $6cdf: $2d

jr_095_6ce0:
    inc bc                                        ; $6ce0: $03
    and b                                         ; $6ce1: $a0
    db $10                                        ; $6ce2: $10
    ld d, b                                       ; $6ce3: $50
    nop                                           ; $6ce4: $00
    dec d                                         ; $6ce5: $15
    nop                                           ; $6ce6: $00
    dec c                                         ; $6ce7: $0d
    rrca                                          ; $6ce8: $0f
    ld c, [hl]                                    ; $6ce9: $4e
    rrca                                          ; $6cea: $0f
    xor $47                                       ; $6ceb: $ee $47
    nop                                           ; $6ced: $00
    ld [hl], a                                    ; $6cee: $77
    daa                                           ; $6cef: $27
    cp e                                          ; $6cf0: $bb
    inc de                                        ; $6cf1: $13
    ld d, a                                       ; $6cf2: $57
    inc bc                                        ; $6cf3: $03
    cp e                                          ; $6cf4: $bb
    ld de, $5920                                  ; $6cf5: $11 $20 $59
    add hl, bc                                    ; $6cf8: $09
    add a                                         ; $6cf9: $87
    ld bc, $aa80                                  ; $6cfa: $01 $80 $aa
    add b                                         ; $6cfd: $80
    ld d, l                                       ; $6cfe: $55
    ret nz                                        ; $6cff: $c0

    nop                                           ; $6d00: $00
    ld a, [hl+]                                   ; $6d01: $2a
    ldh [$b5], a                                  ; $6d02: $e0 $b5
    ldh [$da], a                                  ; $6d04: $e0 $da
    ldh a, [$b1]                                  ; $6d06: $f0 $b1

jr_095_6d08:
    ldh a, [rP1]                                  ; $6d08: $f0 $00
    ld [bc], a                                    ; $6d0a: $02
    ld [bc], a                                    ; $6d0b: $02
    rlca                                          ; $6d0c: $07
    rlca                                          ; $6d0d: $07
    ld b, $07                                     ; $6d0e: $06 $07
    rlca                                          ; $6d10: $07
    rlca                                          ; $6d11: $07
    nop                                           ; $6d12: $00
    ld [hl+], a                                   ; $6d13: $22
    inc hl                                        ; $6d14: $23
    inc de                                        ; $6d15: $13
    inc de                                        ; $6d16: $13
    add hl, de                                    ; $6d17: $19
    add hl, de                                    ; $6d18: $19

jr_095_6d19:
    add hl, bc                                    ; $6d19: $09
    add hl, bc                                    ; $6d1a: $09
    ld d, b                                       ; $6d1b: $50
    ld [bc], a                                    ; $6d1c: $02
    ld [hl], c                                    ; $6d1d: $71
    inc bc                                        ; $6d1e: $03
    add b                                         ; $6d1f: $80
    ld bc, $c000                                  ; $6d20: $01 $00 $c0
    ret nz                                        ; $6d23: $c0

    ld h, b                                       ; $6d24: $60
    ldh [rP1], a                                  ; $6d25: $e0 $00
    or b                                          ; $6d27: $b0
    ldh a, [$d0]                                  ; $6d28: $f0 $d0
    ldh a, [$af]                                  ; $6d2a: $f0 $af
    dec c                                         ; $6d2c: $0d
    rlca                                          ; $6d2d: $07
    rlca                                          ; $6d2e: $07
    ld [$0303], sp                                ; $6d2f: $08 $03 $03
    ld bc, $4801                                  ; $6d32: $01 $01 $48
    add hl, hl                                    ; $6d35: $29
    ret c                                         ; $6d36: $d8

    ld hl, sp-$13                                 ; $6d37: $f8 $ed
    ld [bc], a                                    ; $6d39: $02
    ld hl, sp-$08                                 ; $6d3a: $f8 $f8
    ld hl, sp-$14                                 ; $6d3c: $f8 $ec
    db $fc                                        ; $6d3e: $fc
    db $f4                                        ; $6d3f: $f4
    ldh a, [rNR10]                                ; $6d40: $f0 $10
    ld [hl], d                                    ; $6d42: $72
    dec d                                         ; $6d43: $15
    ld a, [hl]                                    ; $6d44: $7e
    rst $38                                       ; $6d45: $ff
    push de                                       ; $6d46: $d5
    or h                                          ; $6d47: $b4
    nop                                           ; $6d48: $00
    ld d, a                                       ; $6d49: $57
    db $f4                                        ; $6d4a: $f4
    nop                                           ; $6d4b: $00
    ld [hl], l                                    ; $6d4c: $75
    ld de, $4001                                  ; $6d4d: $11 $01 $40
    ld a, l                                       ; $6d50: $7d
    ld b, b                                       ; $6d51: $40
    ld bc, $fff8                                  ; $6d52: $01 $f8 $ff
    rst $38                                       ; $6d55: $ff
    rst $30                                       ; $6d56: $f7
    ld a, l                                       ; $6d57: $7d
    ld a, e                                       ; $6d58: $7b
    nop                                           ; $6d59: $00
    ld a, $bc                                     ; $6d5a: $3e $bc
    sbc a                                         ; $6d5c: $9f
    sbc $cf                                       ; $6d5d: $de $cf
    rst $20                                       ; $6d5f: $e7
    ld h, a                                       ; $6d60: $67
    inc sp                                        ; $6d61: $33
    ld b, b                                       ; $6d62: $40
    inc sp                                        ; $6d63: $33
    sub b                                         ; $6d64: $90
    ld [$e0ea], sp                                ; $6d65: $08 $ea $e0
    ld a, l                                       ; $6d68: $7d
    jr c, jr_095_6d19                             ; $6d69: $38 $ae

    adc h                                         ; $6d6b: $8c
    nop                                           ; $6d6c: $00
    ld b, a                                       ; $6d6d: $47
    rst $00                                       ; $6d6e: $c7
    ccf                                           ; $6d6f: $3f
    rst $38                                       ; $6d70: $ff
    sbc b                                         ; $6d71: $98
    ld hl, sp+$7b                                 ; $6d72: $f8 $7b
    ld a, a                                       ; $6d74: $7f
    nop                                           ; $6d75: $00
    ld a, l                                       ; $6d76: $7d
    cpl                                           ; $6d77: $2f
    cp $55                                        ; $6d78: $fe $55
    ld a, a                                       ; $6d7a: $7f
    ld a, [hl+]                                   ; $6d7b: $2a
    cp [hl]                                       ; $6d7c: $be
    dec d                                         ; $6d7d: $15
    nop                                           ; $6d7e: $00
    rst $38                                       ; $6d7f: $ff
    xor e                                         ; $6d80: $ab
    ccf                                           ; $6d81: $3f
    dec d                                         ; $6d82: $15
    dec de                                        ; $6d83: $1b
    ld a, [de]                                    ; $6d84: $1a
    cp c                                          ; $6d85: $b9
    cp c                                          ; $6d86: $b9
    ld bc, $b8b8                                  ; $6d87: $01 $b8 $b8
    db $fc                                        ; $6d8a: $fc
    db $fc                                        ; $6d8b: $fc
    or $fe                                        ; $6d8c: $f6 $fe
    ei                                            ; $6d8e: $fb
    ld sp, hl                                     ; $6d8f: $f9
    nop                                           ; $6d90: $00
    and c                                         ; $6d91: $a1
    ld d, [hl]                                    ; $6d92: $56
    add hl, bc                                    ; $6d93: $09
    db $eb                                        ; $6d94: $eb
    sub c                                         ; $6d95: $91
    ld bc, $7f7f                                  ; $6d96: $01 $7f $7f
    ccf                                           ; $6d99: $3f
    ccf                                           ; $6d9a: $3f
    sub [hl]                                      ; $6d9b: $96
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    ld b, $02                                     ; $6d9e: $06 $02
    ld [bc], a                                    ; $6da0: $02
    inc bc                                        ; $6da1: $03
    inc bc                                        ; $6da2: $03
    inc c                                         ; $6da3: $0c
    inc c                                         ; $6da4: $0c
    ld a, [hl]                                    ; $6da5: $7e

jr_095_6da6:
    jr nc, jr_095_6da6                            ; $6da6: $30 $fe

    xor e                                         ; $6da8: $ab
    dec d                                         ; $6da9: $15
    ld bc, $0b3c                                  ; $6daa: $01 $3c $0b
    ld e, a                                       ; $6dad: $5f
    ld e, a                                       ; $6dae: $5f
    ld b, e                                       ; $6daf: $43
    ld b, e                                       ; $6db0: $43
    ld l, [hl]                                    ; $6db1: $6e
    ld a, [hl+]                                   ; $6db2: $2a
    add hl, de                                    ; $6db3: $19
    ld [bc], a                                    ; $6db4: $02
    sub h                                         ; $6db5: $94
    ld sp, $3a02                                  ; $6db6: $31 $02 $3a
    ld b, $e1                                     ; $6db9: $06 $e1
    ld de, $29a4                                  ; $6dbb: $11 $a4 $29
    ld d, h                                       ; $6dbe: $54
    ldh [rNR22], a                                ; $6dbf: $e0 $17
    inc b                                         ; $6dc1: $04
    ld [hl-], a                                   ; $6dc2: $32
    inc d                                         ; $6dc3: $14
    inc e                                         ; $6dc4: $1c
    nop                                           ; $6dc5: $00
    ld d, l                                       ; $6dc6: $55
    inc b                                         ; $6dc7: $04
    xor [hl]                                      ; $6dc8: $ae
    inc b                                         ; $6dc9: $04
    inc b                                         ; $6dca: $04
    nop                                           ; $6dcb: $00
    inc b                                         ; $6dcc: $04
    ld bc, $0301                                  ; $6dcd: $01 $01 $03
    inc bc                                        ; $6dd0: $03
    xor a                                         ; $6dd1: $af
    rlca                                          ; $6dd2: $07
    rrca                                          ; $6dd3: $0f
    nop                                           ; $6dd4: $00
    rrca                                          ; $6dd5: $0f
    xor d                                         ; $6dd6: $aa
    ld c, $55                                     ; $6dd7: $0e $55
    inc e                                         ; $6dd9: $1c
    or [hl]                                       ; $6dda: $b6
    inc a                                         ; $6ddb: $3c
    inc h                                         ; $6ddc: $24
    ld c, $3c                                     ; $6ddd: $0e $3c
    and a                                         ; $6ddf: $a7
    rlca                                          ; $6de0: $07
    ld d, [hl]                                    ; $6de1: $56
    ret nc                                        ; $6de2: $d0

    nop                                           ; $6de3: $00
    ld e, c                                       ; $6de4: $59
    nop                                           ; $6de5: $00
    inc b                                         ; $6de6: $04
    db $10                                        ; $6de7: $10
    inc bc                                        ; $6de8: $03
    jr nc, @+$05                                  ; $6de9: $30 $03

    ld a, [hl+]                                   ; $6deb: $2a
    db $10                                        ; $6dec: $10
    ld bc, $08f0                                  ; $6ded: $01 $f0 $08
    ld b, b                                       ; $6df0: $40
    ret nz                                        ; $6df1: $c0

    ret nz                                        ; $6df2: $c0

    ret nz                                        ; $6df3: $c0

    add d                                         ; $6df4: $82
    inc b                                         ; $6df5: $04
    ld [$04a4], sp                                ; $6df6: $08 $a4 $04
    ld e, l                                       ; $6df9: $5d
    inc c                                         ; $6dfa: $0c
    add hl, bc                                    ; $6dfb: $09
    ld bc, $0820                                  ; $6dfc: $01 $20 $08
    add b                                         ; $6dff: $80
    ld bc, $4c00                                  ; $6e00: $01 $00 $4c
    ld a, h                                       ; $6e03: $7c
    call nc, $a4f4                                ; $6e04: $d4 $f4 $a4
    db $e4                                        ; $6e07: $e4
    and h                                         ; $6e08: $a4
    nop                                           ; $6e09: $00
    db $e4                                        ; $6e0a: $e4
    and l                                         ; $6e0b: $a5
    push hl                                       ; $6e0c: $e5
    and a                                         ; $6e0d: $a7
    rst $20                                       ; $6e0e: $e7
    and e                                         ; $6e0f: $a3
    db $e3                                        ; $6e10: $e3
    di                                            ; $6e11: $f3
    nop                                           ; $6e12: $00
    di                                            ; $6e13: $f3
    inc bc                                        ; $6e14: $03
    inc bc                                        ; $6e15: $03
    rlca                                          ; $6e16: $07
    rlca                                          ; $6e17: $07
    xor a                                         ; $6e18: $af
    dec b                                         ; $6e19: $05
    ld d, a                                       ; $6e1a: $57
    nop                                           ; $6e1b: $00
    add d                                         ; $6e1c: $82
    xor a                                         ; $6e1d: $af
    ld b, l                                       ; $6e1e: $45
    ld e, a                                       ; $6e1f: $5f
    ld [$5fad], a                                 ; $6e20: $ea $ad $5f
    rst $10                                       ; $6e23: $d7
    nop                                           ; $6e24: $00
    xor d                                         ; $6e25: $aa
    ld b, b                                       ; $6e26: $40
    ret nz                                        ; $6e27: $c0

    push de                                       ; $6e28: $d5
    add b                                         ; $6e29: $80
    ld [$d540], a                                 ; $6e2a: $ea $40 $d5
    nop                                           ; $6e2d: $00
    add b                                         ; $6e2e: $80
    xor [hl]                                      ; $6e2f: $ae
    inc b                                         ; $6e30: $04
    rst $10                                       ; $6e31: $d7
    add d                                         ; $6e32: $82
    add d                                         ; $6e33: $82
    add d                                         ; $6e34: $82
    db $d3                                        ; $6e35: $d3
    ld [bc], a                                    ; $6e36: $02
    add e                                         ; $6e37: $83
    jr jr_095_6e52                                ; $6e38: $18 $18

    ld e, l                                       ; $6e3a: $5d
    jr @-$44                                      ; $6e3b: $18 $ba

    inc b                                         ; $6e3d: $04
    nop                                           ; $6e3e: $00
    xor d                                         ; $6e3f: $aa
    nop                                           ; $6e40: $00
    ld [$085d], sp                                ; $6e41: $08 $5d $08
    xor [hl]                                      ; $6e44: $ae
    inc c                                         ; $6e45: $0c
    inc c                                         ; $6e46: $0c
    inc c                                         ; $6e47: $0c
    rst $30                                       ; $6e48: $f7
    ret nz                                        ; $6e49: $c0

jr_095_6e4a:
    ld bc, $6300                                  ; $6e4a: $01 $00 $63
    ld e, $6f                                     ; $6e4d: $1e $6f
    ld a, a                                       ; $6e4f: $7f
    or $7f                                        ; $6e50: $f6 $7f

jr_095_6e52:
    ld a, e                                       ; $6e52: $7b
    ld a, a                                       ; $6e53: $7f
    ld de, $fffd                                  ; $6e54: $11 $fd $ff
    ld a, [hl]                                    ; $6e57: $7e
    sub c                                         ; $6e58: $91
    ld d, $bf                                     ; $6e59: $16 $bf
    rst $38                                       ; $6e5b: $ff
    rst $10                                       ; $6e5c: $d7
    ld b, [hl]                                    ; $6e5d: $46
    ld [bc], a                                    ; $6e5e: $02
    nop                                           ; $6e5f: $00
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    pop bc                                        ; $6e62: $c1
    pop bc                                        ; $6e63: $c1
    pop hl                                        ; $6e64: $e1
    pop hl                                        ; $6e65: $e1
    ld d, b                                       ; $6e66: $50
    ldh a, [rSB]                                  ; $6e67: $f0 $01
    xor h                                         ; $6e69: $ac
    db $fc                                        ; $6e6a: $fc
    sub $fe                                       ; $6e6b: $d6 $fe
    ld [$fdfe], a                                 ; $6e6d: $ea $fe $fd
    ld [hl], h                                    ; $6e70: $74
    rlca                                          ; $6e71: $07
    ld bc, $0e0e                                  ; $6e72: $01 $0e $0e
    adc d                                         ; $6e75: $8a
    adc d                                         ; $6e76: $8a
    adc a                                         ; $6e77: $8f
    adc a                                         ; $6e78: $8f
    push bc                                       ; $6e79: $c5
    ld bc, $0100                                  ; $6e7a: $01 $00 $01
    add $c6                                       ; $6e7d: $c6 $c6
    add [hl]                                      ; $6e7f: $86
    add [hl]                                      ; $6e80: $86
    add d                                         ; $6e81: $82
    add d                                         ; $6e82: $82
    ld a, l                                       ; $6e83: $7d
    inc [hl]                                      ; $6e84: $34
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    ld a, a                                       ; $6e87: $7f
    ld a, a                                       ; $6e88: $7f
    ei                                            ; $6e89: $fb
    rst $38                                       ; $6e8a: $ff
    rst $30                                       ; $6e8b: $f7
    rst $38                                       ; $6e8c: $ff
    ld a, [$14fe]                                 ; $6e8d: $fa $fe $14
    ld a, [c]                                     ; $6e90: $f2
    cp $eb                                        ; $6e91: $fe $eb
    db $10                                        ; $6e93: $10
    dec b                                         ; $6e94: $05
    add b                                         ; $6e95: $80
    ld c, l                                       ; $6e96: $4d
    ld c, $00                                     ; $6e97: $0e $00
    xor e                                         ; $6e99: $ab
    nop                                           ; $6e9a: $00
    ld bc, $0257                                  ; $6e9b: $01 $57 $02
    cp [hl]                                       ; $6e9e: $be
    inc d                                         ; $6e9f: $14
    dec a                                         ; $6ea0: $3d
    jr z, jr_095_6ea5                             ; $6ea1: $28 $02

    nop                                           ; $6ea3: $00
    ld [bc], a                                    ; $6ea4: $02

jr_095_6ea5:
    inc c                                         ; $6ea5: $0c
    inc c                                         ; $6ea6: $0c
    dec sp                                        ; $6ea7: $3b
    ld sp, $2377                                  ; $6ea8: $31 $77 $23
    rst $28                                       ; $6eab: $ef
    nop                                           ; $6eac: $00
    ld b, a                                       ; $6ead: $47
    ld e, [hl]                                    ; $6eae: $5e
    rra                                           ; $6eaf: $1f
    cp l                                          ; $6eb0: $bd
    ccf                                           ; $6eb1: $3f
    ld l, e                                       ; $6eb2: $6b
    ld a, a                                       ; $6eb3: $7f
    ld l, h                                       ; $6eb4: $6c
    nop                                           ; $6eb5: $00
    ld a, h                                       ; $6eb6: $7c
    ret                                           ; $6eb7: $c9


    ld hl, sp-$26                                 ; $6eb8: $f8 $da
    ldh a, [$b5]                                  ; $6eba: $f0 $b5
    ldh [rOCPD], a                                ; $6ebc: $e0 $6b
    inc bc                                        ; $6ebe: $03
    pop bc                                        ; $6ebf: $c1
    push de                                       ; $6ec0: $d5
    add b                                         ; $6ec1: $80
    xor e                                         ; $6ec2: $ab
    add c                                         ; $6ec3: $81
    ld d, a                                       ; $6ec4: $57
    inc e                                         ; $6ec5: $1c
    dec b                                         ; $6ec6: $05
    and b                                         ; $6ec7: $a0
    jr jr_095_6e4a                                ; $6ec8: $18 $80

    or l                                          ; $6eca: $b5
    ld c, $bb                                     ; $6ecb: $0e $bb
    ld de, $0055                                  ; $6ecd: $11 $55 $00
    ld h, c                                       ; $6ed0: $61
    ld h, c                                       ; $6ed1: $61
    ld h, e                                       ; $6ed2: $63
    nop                                           ; $6ed3: $00
    ld h, e                                       ; $6ed4: $63
    rst $08                                       ; $6ed5: $cf
    rst $08                                       ; $6ed6: $cf
    sbc $df                                       ; $6ed7: $de $df
    cp h                                          ; $6ed9: $bc
    cp a                                          ; $6eda: $bf
    ld sp, hl                                     ; $6edb: $f9
    nop                                           ; $6edc: $00
    rst $38                                       ; $6edd: $ff
    di                                            ; $6ede: $f3
    rst $38                                       ; $6edf: $ff
    and $fe                                       ; $6ee0: $e6 $fe
    sub $fe                                       ; $6ee2: $d6 $fe
    xor h                                         ; $6ee4: $ac
    nop                                           ; $6ee5: $00
    db $fc                                        ; $6ee6: $fc
    ld e, b                                       ; $6ee7: $58
    ld hl, sp+$35                                 ; $6ee8: $f8 $35
    ldh a, [$e0]                                  ; $6eea: $f0 $e0
    ldh [$a1], a                                  ; $6eec: $e0 $a1
    nop                                           ; $6eee: $00
    and c                                         ; $6eef: $a1
    ld b, a                                       ; $6ef0: $47
    ld b, a                                       ; $6ef1: $47
    rst $08                                       ; $6ef2: $cf
    rst $08                                       ; $6ef3: $cf
    ld l, $04                                     ; $6ef4: $2e $04
    inc c                                         ; $6ef6: $0c
    nop                                           ; $6ef7: $00
    inc c                                         ; $6ef8: $0c
    cp d                                          ; $6ef9: $ba
    db $10                                        ; $6efa: $10
    ld [hl], b                                    ; $6efb: $70
    jr nc, @+$62                                  ; $6efc: $30 $60

    ld h, b                                       ; $6efe: $60
    ret nz                                        ; $6eff: $c0

    nop                                           ; $6f00: $00
    ret nz                                        ; $6f01: $c0

    add b                                         ; $6f02: $80
    add b                                         ; $6f03: $80
    ld bc, $ab01                                  ; $6f04: $01 $01 $ab
    ld bc, $0077                                  ; $6f07: $01 $77 $00
    inc hl                                        ; $6f0a: $23
    and e                                         ; $6f0b: $a3
    inc bc                                        ; $6f0c: $03
    ld h, d                                       ; $6f0d: $62
    ld h, e                                       ; $6f0e: $63
    ld b, a                                       ; $6f0f: $47
    ld b, a                                       ; $6f10: $47
    add $00                                       ; $6f11: $c6 $00
    rst $00                                       ; $6f13: $c7
    add a                                         ; $6f14: $87
    add a                                         ; $6f15: $87
    adc l                                         ; $6f16: $8d
    adc a                                         ; $6f17: $8f
    call z, $9dfc                                 ; $6f18: $cc $fc $9d
    nop                                           ; $6f1b: $00
    ld hl, sp-$45                                 ; $6f1c: $f8 $bb
    pop af                                        ; $6f1e: $f1
    ld [hl], a                                    ; $6f1f: $77
    ld [c], a                                     ; $6f20: $e2
    xor $e4                                       ; $6f21: $ee $e4
    ld e, l                                       ; $6f23: $5d
    nop                                           ; $6f24: $00
    ret z                                         ; $6f25: $c8

    reti                                          ; $6f26: $d9


    reti                                          ; $6f27: $d9


    or c                                          ; $6f28: $b1
    or c                                          ; $6f29: $b1
    cp d                                          ; $6f2a: $ba
    db $10                                        ; $6f2b: $10
    or $00                                        ; $6f2c: $f6 $00
    and [hl]                                      ; $6f2e: $a6
    xor $46                                       ; $6f2f: $ee $46
    db $dd                                        ; $6f31: $dd
    adc b                                         ; $6f32: $88
    xor [hl]                                      ; $6f33: $ae
    inc b                                         ; $6f34: $04
    db $dd                                        ; $6f35: $dd
    nop                                           ; $6f36: $00
    adc b                                         ; $6f37: $88
    cp d                                          ; $6f38: $ba
    sub b                                         ; $6f39: $90
    sub c                                         ; $6f3a: $91
    sub c                                         ; $6f3b: $91
    xor e                                         ; $6f3c: $ab
    ld bc, $0001                                  ; $6f3d: $01 $01 $00
    ld bc, $0202                                  ; $6f40: $01 $02 $02
    ld d, a                                       ; $6f43: $57
    ld [bc], a                                    ; $6f44: $02
    xor [hl]                                      ; $6f45: $ae
    ld b, $55                                     ; $6f46: $06 $55
    db $10                                        ; $6f48: $10
    inc b                                         ; $6f49: $04
    xor a                                         ; $6f4a: $af
    dec c                                         ; $6f4b: $0d
    ld bc, $0f00                                  ; $6f4c: $01 $00 $0f
    dec de                                        ; $6f4f: $1b
    rra                                           ; $6f50: $1f
    ld a, $00                                     ; $6f51: $3e $00
    ld a, $7b                                     ; $6f53: $3e $7b
    ld a, [hl]                                    ; $6f55: $7e
    ld a, [c]                                     ; $6f56: $f2
    ld a, [hl]                                    ; $6f57: $7e
    push af                                       ; $6f58: $f5
    db $fc                                        ; $6f59: $fc
    xor $00                                       ; $6f5a: $ee $00
    db $fc                                        ; $6f5c: $fc
    call nc, $f1fc                                ; $6f5d: $d4 $fc $f1
    pop af                                        ; $6f60: $f1
    db $e3                                        ; $6f61: $e3
    db $e3                                        ; $6f62: $e3
    jp $c302                                      ; $6f63: $c3 $02 $c3


    add d                                         ; $6f66: $82
    add d                                         ; $6f67: $82
    ld [bc], a                                    ; $6f68: $02
    ld [bc], a                                    ; $6f69: $02
    ld b, $01                                     ; $6f6a: $06 $01
    nop                                           ; $6f6c: $00
    dec b                                         ; $6f6d: $05
    ld [bc], a                                    ; $6f6e: $02
    dec b                                         ; $6f6f: $05
    ld sp, $3331                                  ; $6f70: $31 $31 $33
    inc sp                                        ; $6f73: $33
    ld h, d                                       ; $6f74: $62
    ld bc, $4200                                  ; $6f75: $01 $00 $42
    ld [hl+], a                                   ; $6f78: $22
    ld b, d                                       ; $6f79: $42
    add $01                                       ; $6f7a: $c6 $01
    nop                                           ; $6f7c: $00
    add h                                         ; $6f7d: $84
    add h                                         ; $6f7e: $84
    dec de                                        ; $6f7f: $1b
    ld bc, $1e00                                  ; $6f80: $01 $00 $1e
    nop                                           ; $6f83: $00
    rra                                           ; $6f84: $1f
    rrca                                          ; $6f85: $0f
    rrca                                          ; $6f86: $0f
    ld c, $0f                                     ; $6f87: $0e $0f
    dec e                                         ; $6f89: $1d
    rra                                           ; $6f8a: $1f
    ld a, $00                                     ; $6f8b: $3e $00
    ccf                                           ; $6f8d: $3f
    dec a                                         ; $6f8e: $3d
    ccf                                           ; $6f8f: $3f
    xor h                                         ; $6f90: $ac
    db $fc                                        ; $6f91: $fc
    ld d, h                                       ; $6f92: $54
    db $f4                                        ; $6f93: $f4
    xor h                                         ; $6f94: $ac
    nop                                           ; $6f95: $00
    db $ec                                        ; $6f96: $ec
    jr z, @-$16                                   ; $6f97: $28 $e8

    ld c, c                                       ; $6f99: $49
    ret                                           ; $6f9a: $c9


    ld c, e                                       ; $6f9b: $4b
    bit 1, a                                      ; $6f9c: $cb $4f
    ld [$5fcf], sp                                ; $6f9e: $08 $cf $5f
    rst $18                                       ; $6fa1: $df
    push af                                       ; $6fa2: $f5
    cp $07                                        ; $6fa3: $fe $07
    ld d, l                                       ; $6fa5: $55
    ld d, l                                       ; $6fa6: $55
    and b                                         ; $6fa7: $a0
    ld [bc], a                                    ; $6fa8: $02
    cp a                                          ; $6fa9: $bf
    ld b, h                                       ; $6faa: $44
    ld d, l                                       ; $6fab: $55
    and b                                         ; $6fac: $a0
    xor d                                         ; $6fad: $aa
    ld d, c                                       ; $6fae: $51
    inc b                                         ; $6faf: $04
    nop                                           ; $6fb0: $00
    push de                                       ; $6fb1: $d5
    pop bc                                        ; $6fb2: $c1
    cp h                                          ; $6fb3: $bc
    ld b, $04                                     ; $6fb4: $06 $04
    ld [$d5d1], sp                                ; $6fb6: $08 $d1 $d5
    ret nz                                        ; $6fb9: $c0

    ld [$04c4], a                                 ; $6fba: $ea $c4 $04
    nop                                           ; $6fbd: $00
    inc b                                         ; $6fbe: $04
    xor a                                         ; $6fbf: $af
    rra                                           ; $6fc0: $1f

jr_095_6fc1:
    add d                                         ; $6fc1: $82
    ld a, [hl+]                                   ; $6fc2: $2a
    xor e                                         ; $6fc3: $ab
    inc b                                         ; $6fc4: $04
    nop                                           ; $6fc5: $00
    ld b, c                                       ; $6fc6: $41
    dec d                                         ; $6fc7: $15
    ld b, b                                       ; $6fc8: $40
    adc d                                         ; $6fc9: $8a
    inc b                                         ; $6fca: $04
    db $10                                        ; $6fcb: $10
    xor d                                         ; $6fcc: $aa
    rst $38                                       ; $6fcd: $ff
    nop                                           ; $6fce: $00
    xor d                                         ; $6fcf: $aa
    add b                                         ; $6fd0: $80
    push de                                       ; $6fd1: $d5
    add b                                         ; $6fd2: $80
    jp $ff33                                      ; $6fd3: $c3 $33 $ff


    ld e, e                                       ; $6fd6: $5b
    rst $20                                       ; $6fd7: $e7
    ld de, $51e3                                  ; $6fd8: $11 $e3 $51
    ld b, l                                       ; $6fdb: $45
    jr nz, jr_095_6fde                            ; $6fdc: $20 $00

jr_095_6fde:
    and d                                         ; $6fde: $a2
    inc b                                         ; $6fdf: $04
    ld [$4511], sp                                ; $6fe0: $08 $11 $45
    inc de                                        ; $6fe3: $13
    rst $20                                       ; $6fe4: $e7
    ld b, b                                       ; $6fe5: $40
    inc d                                         ; $6fe6: $14
    ld d, l                                       ; $6fe7: $55
    ldh [$fa], a                                  ; $6fe8: $e0 $fa
    db $f4                                        ; $6fea: $f4
    rrca                                          ; $6feb: $0f
    and b                                         ; $6fec: $a0
    inc b                                         ; $6fed: $04
    db $10                                        ; $6fee: $10
    ld h, b                                       ; $6fef: $60
    rst $38                                       ; $6ff0: $ff
    ld b, $c0                                     ; $6ff1: $06 $c0
    push de                                       ; $6ff3: $d5
    ret nz                                        ; $6ff4: $c0

    rst $28                                       ; $6ff5: $ef
    ret nz                                        ; $6ff6: $c0

    db $10                                        ; $6ff7: $10
    rlca                                          ; $6ff8: $07
    inc b                                         ; $6ff9: $04
    jr z, jr_095_706b                             ; $6ffa: $28 $6f

    ld [bc], a                                    ; $6ffc: $02
    rra                                           ; $6ffd: $1f
    sbc a                                         ; $6ffe: $9f
    ccf                                           ; $6fff: $3f
    rst $28                                       ; $7000: $ef

Jump_095_7001:
    rra                                           ; $7001: $1f
    sbc e                                         ; $7002: $9b
    inc b                                         ; $7003: $04
    nop                                           ; $7004: $00
    sub a                                         ; $7005: $97
    ld [bc], a                                    ; $7006: $02
    cpl                                           ; $7007: $2f
    rst $08                                       ; $7008: $cf
    ccf                                           ; $7009: $3f
    rst $10                                       ; $700a: $d7
    ccf                                           ; $700b: $3f
    ldh [rNR50], a                                ; $700c: $e0 $24
    nop                                           ; $700e: $00
    ld b, b                                       ; $700f: $40
    ld b, d                                       ; $7010: $42
    ld e, a                                       ; $7011: $5f
    inc b                                         ; $7012: $04
    nop                                           ; $7013: $00
    ld d, a                                       ; $7014: $57
    jr nz, jr_095_6fc1                            ; $7015: $20 $aa

    ld b, b                                       ; $7017: $40
    add h                                         ; $7018: $84
    nop                                           ; $7019: $00
    rst $00                                       ; $701a: $c7
    nop                                           ; $701b: $00
    ccf                                           ; $701c: $3f
    xor [hl]                                      ; $701d: $ae
    rra                                           ; $701e: $1f
    rst $10                                       ; $701f: $d7
    cpl                                           ; $7020: $2f
    xor d                                         ; $7021: $aa
    rla                                           ; $7022: $17
    push bc                                       ; $7023: $c5
    ld bc, $aa35                                  ; $7024: $01 $35 $aa
    ld a, [bc]                                    ; $7027: $0a
    ld b, l                                       ; $7028: $45
    dec d                                         ; $7029: $15
    xor d                                         ; $702a: $aa
    ld a, [bc]                                    ; $702b: $0a
    ld c, h                                       ; $702c: $4c
    ld [$50e2], sp                                ; $702d: $08 $e2 $50
    ld [$0058], sp                                ; $7030: $08 $58 $00
    inc b                                         ; $7033: $04
    nop                                           ; $7034: $00
    and b                                         ; $7035: $a0
    xor d                                         ; $7036: $aa
    ei                                            ; $7037: $fb
    ret nz                                        ; $7038: $c0

    rlca                                          ; $7039: $07
    cp e                                          ; $703a: $bb
    ld [$9f7f], sp                                ; $703b: $08 $7f $9f
    ld a, a                                       ; $703e: $7f
    dec sp                                        ; $703f: $3b
    ld a, a                                       ; $7040: $7f
    rlca                                          ; $7041: $07
    ccf                                           ; $7042: $3f
    ld a, a                                       ; $7043: $7f
    ld a, [hl+]                                   ; $7044: $2a
    add d                                         ; $7045: $82
    inc [hl]                                      ; $7046: $34
    nop                                           ; $7047: $00
    ldh [$ea], a                                  ; $7048: $e0 $ea
    ldh [rIE], a                                  ; $704a: $e0 $ff
    ldh a, [rSC]                                  ; $704c: $f0 $02
    jr nc, jr_095_70a5                            ; $704e: $30 $55

    nop                                           ; $7050: $00
    dec d                                         ; $7051: $15
    ld a, [bc]                                    ; $7052: $0a
    xor d                                         ; $7053: $aa
    rst $18                                       ; $7054: $df
    ccf                                           ; $7055: $3f
    ld c, l                                       ; $7056: $4d
    cp a                                          ; $7057: $bf
    rst $18                                       ; $7058: $df
    jr z, jr_095_709a                             ; $7059: $28 $3f

    rra                                           ; $705b: $1f

jr_095_705c:
    dec d                                         ; $705c: $15
    ld [bc], a                                    ; $705d: $02
    cp a                                          ; $705e: $bf
    jr c, jr_095_7061                             ; $705f: $38 $00

jr_095_7061:
    and d                                         ; $7061: $a2
    xor d                                         ; $7062: $aa
    ldh [$08], a                                  ; $7063: $e0 $08
    rst $38                                       ; $7065: $ff
    db $e4                                        ; $7066: $e4
    rst $38                                       ; $7067: $ff
    pop hl                                        ; $7068: $e1
    ld c, b                                       ; $7069: $48
    db $10                                        ; $706a: $10

jr_095_706b:
    ld [c], a                                     ; $706b: $e2
    db $fd                                        ; $706c: $fd
    dec d                                         ; $706d: $15
    ld h, b                                       ; $706e: $60
    ld d, l                                       ; $706f: $55
    jp $f200                                      ; $7070: $c3 $00 $f2


    rlca                                          ; $7073: $07
    ld a, [hl]                                    ; $7074: $7e
    rst $38                                       ; $7075: $ff
    inc d                                         ; $7076: $14
    rst $38                                       ; $7077: $ff
    ld c, b                                       ; $7078: $48
    ret nz                                        ; $7079: $c0

    jr @+$48                                      ; $707a: $18 $46

    or $2f                                        ; $707c: $f6 $2f
    dec de                                        ; $707e: $1b
    rst $20                                       ; $707f: $e7
    inc de                                        ; $7080: $13
    rst $28                                       ; $7081: $ef
    dec de                                        ; $7082: $1b
    rst $20                                       ; $7083: $e7
    dec b                                         ; $7084: $05
    rla                                           ; $7085: $17
    rst $28                                       ; $7086: $ef
    inc de                                        ; $7087: $13
    rst $28                                       ; $7088: $ef
    rlca                                          ; $7089: $07
    ld e, b                                       ; $708a: $58
    rlca                                          ; $708b: $07
    rla                                           ; $708c: $17
    jr jr_095_70bf                                ; $708d: $18 $30

    add b                                         ; $708f: $80
    ret c                                         ; $7090: $d8

    rlca                                          ; $7091: $07
    cp $00                                        ; $7092: $fe $00
    ld d, l                                       ; $7094: $55
    add b                                         ; $7095: $80
    xor d                                         ; $7096: $aa
    srl a                                         ; $7097: $cb $3f
    nop                                           ; $7099: $00

jr_095_709a:
    and b                                         ; $709a: $a0
    ld c, d                                       ; $709b: $4a
    rst $08                                       ; $709c: $cf
    ccf                                           ; $709d: $3f
    add h                                         ; $709e: $84
    ld a, [hl]                                    ; $709f: $7e
    call nz, $0235                                ; $70a0: $c4 $35 $02
    add b                                         ; $70a3: $80
    ld a, [hl+]                                   ; $70a4: $2a

jr_095_70a5:
    ld b, b                                       ; $70a5: $40
    dec d                                         ; $70a6: $15
    add d                                         ; $70a7: $82
    ld a, [hl+]                                   ; $70a8: $2a
    rst $38                                       ; $70a9: $ff
    inc b                                         ; $70aa: $04
    xor d                                         ; $70ab: $aa
    ld [bc], a                                    ; $70ac: $02
    push af                                       ; $70ad: $f5
    push af                                       ; $70ae: $f5
    xor d                                         ; $70af: $aa
    xor d                                         ; $70b0: $aa
    ld d, l                                       ; $70b1: $55
    ld d, l                                       ; $70b2: $55
    inc b                                         ; $70b3: $04
    jr jr_095_70d5                                ; $70b4: $18 $1f

    inc bc                                        ; $70b6: $03
    rst $38                                       ; $70b7: $ff
    cpl                                           ; $70b8: $2f
    cp a                                          ; $70b9: $bf
    ld de, $0255                                  ; $70ba: $11 $55 $02
    rst $20                                       ; $70bd: $e7
    inc h                                         ; $70be: $24

jr_095_70bf:
    ld e, e                                       ; $70bf: $5b
    ld a, [bc]                                    ; $70c0: $0a
    ld d, $80                                     ; $70c1: $16 $80
    cp a                                          ; $70c3: $bf
    add b                                         ; $70c4: $80
    ld c, $01                                     ; $70c5: $0e $01
    ld b, b                                       ; $70c7: $40
    ld e, $06                                     ; $70c8: $1e $06
    db $f4                                        ; $70ca: $f4
    ld c, $ff                                     ; $70cb: $0e $ff
    ld a, d                                       ; $70cd: $7a
    rst $38                                       ; $70ce: $ff
    add b                                         ; $70cf: $80
    ld [$0c75], sp                                ; $70d0: $08 $75 $0c
    ld a, c                                       ; $70d3: $79
    inc e                                         ; $70d4: $1c

jr_095_70d5:
    ld d, h                                       ; $70d5: $54
    nop                                           ; $70d6: $00
    xor a                                         ; $70d7: $af
    ld h, h                                       ; $70d8: $64
    jr c, jr_095_705c                             ; $70d9: $38 $81

    sub h                                         ; $70db: $94
    add b                                         ; $70dc: $80
    ld b, $54                                     ; $70dd: $06 $54
    nop                                           ; $70df: $00
    inc [hl]                                      ; $70e0: $34
    dec c                                         ; $70e1: $0d
    xor d                                         ; $70e2: $aa
    jr c, jr_095_70ea                             ; $70e3: $38 $05

    ld [$0040], a                                 ; $70e5: $ea $40 $00
    ld d, a                                       ; $70e8: $57
    add d                                         ; $70e9: $82

jr_095_70ea:
    ld b, d                                       ; $70ea: $42
    ld b, b                                       ; $70eb: $40
    ld h, b                                       ; $70ec: $60
    ld h, b                                       ; $70ed: $60
    ld [$0460], a                                 ; $70ee: $ea $60 $04
    ld [hl], a                                    ; $70f1: $77
    ld h, d                                       ; $70f2: $62
    ld [$d760], a                                 ; $70f3: $ea $60 $d7
    inc h                                         ; $70f6: $24
    ld [bc], a                                    ; $70f7: $02
    push de                                       ; $70f8: $d5
    ldh [$d1], a                                  ; $70f9: $e0 $d1
    sub h                                         ; $70fb: $94
    inc c                                         ; $70fc: $0c
    and b                                         ; $70fd: $a0
    ld c, h                                       ; $70fe: $4c
    xor b                                         ; $70ff: $a8
    or b                                          ; $7100: $b0
    ld h, h                                       ; $7101: $64
    and $46                                       ; $7102: $e6 $46
    ld b, [hl]                                    ; $7104: $46
    or $01                                        ; $7105: $f6 $01
    ld bc, $8c8c                                  ; $7107: $01 $8c $8c
    adc l                                         ; $710a: $8d
    adc l                                         ; $710b: $8d
    adc c                                         ; $710c: $89
    adc c                                         ; $710d: $89
    add hl, de                                    ; $710e: $19
    ld bc, $0000                                  ; $710f: $01 $00 $00
    db $e4                                        ; $7112: $e4
    db $e4                                        ; $7113: $e4
    call z, $ecec                                 ; $7114: $cc $ec $ec
    db $ec                                        ; $7117: $ec
    jp hl                                         ; $7118: $e9


    jp hl                                         ; $7119: $e9


    ld b, e                                       ; $711a: $43
    reti                                          ; $711b: $d9


    ld bc, $5300                                  ; $711c: $01 $00 $53
    db $d3                                        ; $711f: $d3
    di                                            ; $7120: $f3
    di                                            ; $7121: $f3
    scf                                           ; $7122: $37
    ld b, $01                                     ; $7123: $06 $01
    jr nz, jr_095_7128                            ; $7125: $20 $01

    add hl, bc                                    ; $7127: $09

jr_095_7128:
    add hl, bc                                    ; $7128: $09
    dec c                                         ; $7129: $0d
    dec c                                         ; $712a: $0d
    dec e                                         ; $712b: $1d
    dec e                                         ; $712c: $1d
    inc sp                                        ; $712d: $33
    ld bc, $2000                                  ; $712e: $01 $00 $20
    inc hl                                        ; $7131: $23
    inc hl                                        ; $7132: $23
    ldh a, [$0a]                                  ; $7133: $f0 $0a
    ld [hl], a                                    ; $7135: $77
    daa                                           ; $7136: $27
    ld h, a                                       ; $7137: $67
    ld h, a                                       ; $7138: $67
    ld l, [hl]                                    ; $7139: $6e
    nop                                           ; $713a: $00
    ld l, a                                       ; $713b: $6f
    ld h, e                                       ; $713c: $63
    db $e3                                        ; $713d: $e3
    ld [c], a                                     ; $713e: $e2
    ld [c], a                                     ; $713f: $e2
    ld b, [hl]                                    ; $7140: $46
    call nz, $00d7                                ; $7141: $c4 $d7 $00
    jp nz, $c46e                                  ; $7144: $c2 $6e $c4

    db $dd                                        ; $7147: $dd
    ret z                                         ; $7148: $c8

    ld e, h                                       ; $7149: $5c
    call c, Call_000_009d                         ; $714a: $dc $9d $00
    adc b                                         ; $714d: $88
    add hl, de                                    ; $714e: $19
    dec e                                         ; $714f: $1d
    dec e                                         ; $7150: $1d
    dec e                                         ; $7151: $1d
    cp e                                          ; $7152: $bb
    dec e                                         ; $7153: $1d
    ld e, l                                       ; $7154: $5d
    nop                                           ; $7155: $00
    inc e                                         ; $7156: $1c
    cp e                                          ; $7157: $bb
    rra                                           ; $7158: $1f
    ld e, e                                       ; $7159: $5b
    ld e, $af                                     ; $715a: $1e $af
    rrca                                          ; $715c: $0f
    ld e, l                                       ; $715d: $5d
    nop                                           ; $715e: $00
    rrca                                          ; $715f: $0f
    inc b                                         ; $7160: $04
    inc b                                         ; $7161: $04
    rrca                                          ; $7162: $0f
    ld a, [bc]                                    ; $7163: $0a
    xor [hl]                                      ; $7164: $ae
    inc b                                         ; $7165: $04
    ld e, l                                       ; $7166: $5d
    nop                                           ; $7167: $00
    ld [$14be], sp                                ; $7168: $08 $be $14
    ld e, l                                       ; $716b: $5d
    ld [$10ba], sp                                ; $716c: $08 $ba $10
    jr c, jr_095_7199                             ; $716f: $38 $28

    jr c, @+$7f                                   ; $7171: $38 $7d

    ld c, [hl]                                    ; $7173: $4e
    inc bc                                        ; $7174: $03
    ld a, l                                       ; $7175: $7d
    ld d, b                                       ; $7176: $50
    inc bc                                        ; $7177: $03
    or $fe                                        ; $7178: $f6 $fe
    xor $00                                       ; $717a: $ee $00
    cp $f5                                        ; $717c: $fe $f5
    db $fd                                        ; $717e: $fd
    db $ed                                        ; $717f: $ed
    db $fd                                        ; $7180: $fd
    cp b                                          ; $7181: $b8
    cp b                                          ; $7182: $b8
    jr z, jr_095_7185                             ; $7183: $28 $00

jr_095_7185:
    jr z, jr_095_71ff                             ; $7185: $28 $78

    ld a, b                                       ; $7187: $78
    ld e, b                                       ; $7188: $58
    ld e, b                                       ; $7189: $58
    ldh a, [$f0]                                  ; $718a: $f0 $f0
    or b                                          ; $718c: $b0
    adc b                                         ; $718d: $88
    ld bc, $6000                                  ; $718e: $01 $00 $60
    ld h, b                                       ; $7191: $60
    dec c                                         ; $7192: $0d
    ccf                                           ; $7193: $3f
    ld b, $15                                     ; $7194: $06 $15

jr_095_7196:
    rla                                           ; $7196: $17

jr_095_7197:
    ld d, $08                                     ; $7197: $16 $08

jr_095_7199:
    rla                                           ; $7199: $17
    rla                                           ; $719a: $17
    rla                                           ; $719b: $17
    ld [hl-], a                                   ; $719c: $32
    ld l, b                                       ; $719d: $68
    nop                                           ; $719e: $00
    daa                                           ; $719f: $27
    daa                                           ; $71a0: $27
    jr c, @+$26                                   ; $71a1: $38 $24

    jr c, jr_095_7197                             ; $71a3: $38 $f2

    ld bc, $6210                                  ; $71a5: $01 $10 $62
    ld [c], a                                     ; $71a8: $e2
    ld [bc], a                                    ; $71a9: $02
    ld [$e2e2], sp                                ; $71aa: $08 $e2 $e2
    cp $8e                                        ; $71ad: $fe $8e
    rrca                                          ; $71af: $0f
    inc d                                         ; $71b0: $14
    ld e, $13                                     ; $71b1: $1e $13
    dec [hl]                                      ; $71b3: $35
    ld h, e                                       ; $71b4: $63
    ld d, $7c                                     ; $71b5: $16 $7c
    inc c                                         ; $71b7: $0c
    ld l, h                                       ; $71b8: $6c

jr_095_71b9:
    ld d, $f8                                     ; $71b9: $16 $f8
    ld b, $40                                     ; $71bb: $06 $40
    jr nz, @+$01                                  ; $71bd: $20 $ff

    ld [$07d4], sp                                ; $71bf: $08 $d4 $07
    add d                                         ; $71c2: $82
    ld a, l                                       ; $71c3: $7d
    ld b, b                                       ; $71c4: $40
    cp a                                          ; $71c5: $bf
    ld [$ff24], sp                                ; $71c6: $08 $24 $ff
    adc b                                         ; $71c9: $88
    sbc h                                         ; $71ca: $9c
    ld d, $88                                     ; $71cb: $16 $88
    ld [hl], a                                    ; $71cd: $77
    or b                                          ; $71ce: $b0
    ld c, $40                                     ; $71cf: $0e $40
    rst $38                                       ; $71d1: $ff
    ld h, b                                       ; $71d2: $60
    ld a, [bc]                                    ; $71d3: $0a
    ret z                                         ; $71d4: $c8

    ld h, $50                                     ; $71d5: $26 $50
    cpl                                           ; $71d7: $2f
    jr nz, jr_095_71b9                            ; $71d8: $20 $df

    ld bc, $08fe                                  ; $71da: $01 $fe $08
    ld d, c                                       ; $71dd: $51
    rst $30                                       ; $71de: $f7
    ld d, d                                       ; $71df: $52
    rrca                                          ; $71e0: $0f
    inc h                                         ; $71e1: $24
    sbc h                                         ; $71e2: $9c
    rlca                                          ; $71e3: $07
    ld hl, $10df                                  ; $71e4: $21 $df $10
    ldh [rTAC], a                                 ; $71e7: $e0 $07
    rst $38                                       ; $71e9: $ff
    ld [hl], b                                    ; $71ea: $70
    ld a, $bc                                     ; $71eb: $3e $bc
    ld e, $0c                                     ; $71ed: $1e $0c
    jr z, jr_095_7201                             ; $71ef: $28 $10

    jr z, jr_095_7243                             ; $71f1: $28 $50

    add hl, bc                                    ; $71f3: $09
    ld bc, $e098                                  ; $71f4: $01 $98 $e0
    ld c, $f2                                     ; $71f7: $0e $f2
    rlca                                          ; $71f9: $07
    inc h                                         ; $71fa: $24
    rst $28                                       ; $71fb: $ef
    add h                                         ; $71fc: $84
    jr nz, jr_095_7196                            ; $71fd: $20 $97

jr_095_71ff:
    sub b                                         ; $71ff: $90
    rst $28                                       ; $7200: $ef

jr_095_7201:
    ld h, $07                                     ; $7201: $26 $07
    cp $10                                        ; $7203: $fe $10
    adc c                                         ; $7205: $89

jr_095_7206:
    ld b, $00                                     ; $7206: $06 $00
    nop                                           ; $7208: $00
    rst $38                                       ; $7209: $ff
    ld b, d                                       ; $720a: $42
    ld d, b                                       ; $720b: $50
    rla                                           ; $720c: $17
    sub c                                         ; $720d: $91
    ld l, a                                       ; $720e: $6f
    jr c, jr_095_7220                             ; $720f: $38 $0f

    sbc c                                         ; $7211: $99
    add sp, $09                                   ; $7212: $e8 $09
    jr nz, @-$1f                                  ; $7214: $20 $df

    or d                                          ; $7216: $b2
    ld [$0018], sp                                ; $7217: $08 $18 $00
    cp a                                          ; $721a: $bf
    ld [hl+], a                                   ; $721b: $22
    ld l, d                                       ; $721c: $6a
    rlca                                          ; $721d: $07
    pop bc                                        ; $721e: $c1
    cp [hl]                                       ; $721f: $be

jr_095_7220:
    ld [$0ff0], sp                                ; $7220: $08 $f0 $0f
    inc b                                         ; $7223: $04
    ei                                            ; $7224: $fb
    jr nz, jr_095_7206                            ; $7225: $20 $df

jr_095_7227:
    jr nz, jr_095_7227                            ; $7227: $20 $fe

    rla                                           ; $7229: $17
    ld b, l                                       ; $722a: $45
    ld b, h                                       ; $722b: $44
    cp $07                                        ; $722c: $fe $07
    ld c, b                                       ; $722e: $48
    or a                                          ; $722f: $b7
    inc b                                         ; $7230: $04
    or b                                          ; $7231: $b0
    rlca                                          ; $7232: $07
    ld [hl+], a                                   ; $7233: $22
    ld a, h                                       ; $7234: $7c
    ld [de], a                                    ; $7235: $12
    rst $30                                       ; $7236: $f7
    sub b                                         ; $7237: $90
    rrca                                          ; $7238: $0f
    inc d                                         ; $7239: $14
    ld [$0038], sp                                ; $723a: $08 $38 $00
    and $17                                       ; $723d: $e6 $17
    ld [hl+], a                                   ; $723f: $22
    ld [$ca00], sp                                ; $7240: $08 $00 $ca

jr_095_7243:
    nop                                           ; $7243: $00
    adc d                                         ; $7244: $8a
    rlca                                          ; $7245: $07
    ld [$ef10], sp                                ; $7246: $08 $10 $ef
    add d                                         ; $7249: $82
    db $fd                                        ; $724a: $fd
    inc [hl]                                      ; $724b: $34
    ld [$ed12], sp                                ; $724c: $08 $12 $ed
    adc b                                         ; $724f: $88
    ld de, $1277                                  ; $7250: $11 $77 $12
    db $ed                                        ; $7253: $ed
    jp nz, Jump_095_500f                          ; $7254: $c2 $0f $50

    xor a                                         ; $7257: $af
    ld b, h                                       ; $7258: $44
    add sp, $07                                   ; $7259: $e8 $07
    sub b                                         ; $725b: $90
    ld [de], a                                    ; $725c: $12
    add hl, bc                                    ; $725d: $09
    adc d                                         ; $725e: $8a
    push af                                       ; $725f: $f5
    or $08                                        ; $7260: $f6 $08
    ld [bc], a                                    ; $7262: $02
    db $fd                                        ; $7263: $fd
    add b                                         ; $7264: $80
    ld a, a                                       ; $7265: $7f
    add a                                         ; $7266: $87
    ld [$4009], sp                                ; $7267: $08 $09 $40
    cp a                                          ; $726a: $bf
    ld [hl+], a                                   ; $726b: $22
    db $dd                                        ; $726c: $dd
    ld [c], a                                     ; $726d: $e2
    rrca                                          ; $726e: $0f
    ld b, d                                       ; $726f: $42
    ld [$011c], sp                                ; $7270: $08 $1c $01
    dec b                                         ; $7273: $05
    cp a                                          ; $7274: $bf
    jr nz, @-$1f                                  ; $7275: $20 $df

    inc b                                         ; $7277: $04
    ei                                            ; $7278: $fb
    jp z, $420f                                   ; $7279: $ca $0f $42

    ld a, [de]                                    ; $727c: $1a
    add hl, de                                    ; $727d: $19
    rst $00                                       ; $727e: $c7
    db $fc                                        ; $727f: $fc
    rla                                           ; $7280: $17
    inc e                                         ; $7281: $1c
    ld bc, $09ff                                  ; $7282: $01 $ff $09
    or $2e                                        ; $7285: $f6 $2e
    ld bc, $1026                                  ; $7287: $01 $26 $10
    call c, $ce08                                 ; $728a: $dc $08 $ce
    ld l, [hl]                                    ; $728d: $6e
    db $10                                        ; $728e: $10
    ld hl, sp+$17                                 ; $728f: $f8 $17
    adc c                                         ; $7291: $89
    ld a, [hl]                                    ; $7292: $7e
    ld b, b                                       ; $7293: $40
    add hl, bc                                    ; $7294: $09
    add b                                         ; $7295: $80
    add hl, sp                                    ; $7296: $39
    jr nz, jr_095_72d2                            ; $7297: $20 $39

    ld [bc], a                                    ; $7299: $02
    sbc $40                                       ; $729a: $de $40
    ld d, c                                       ; $729c: $51
    and b                                         ; $729d: $a0
    add hl, hl                                    ; $729e: $29
    ld b, b                                       ; $729f: $40
    or b                                          ; $72a0: $b0
    ld b, c                                       ; $72a1: $41
    inc l                                         ; $72a2: $2c
    rra                                           ; $72a3: $1f
    inc a                                         ; $72a4: $3c
    ld c, b                                       ; $72a5: $48
    ld d, h                                       ; $72a6: $54
    ld e, c                                       ; $72a7: $59
    ld b, b                                       ; $72a8: $40
    nop                                           ; $72a9: $00
    ld b, b                                       ; $72aa: $40
    jr nz, jr_095_72cd                            ; $72ab: $20 $20

    db $10                                        ; $72ad: $10
    db $10                                        ; $72ae: $10
    jr @+$1a                                      ; $72af: $18 $18

    ld [$087b], sp                                ; $72b1: $08 $7b $08
    sub b                                         ; $72b4: $90
    ld c, c                                       ; $72b5: $49
    ld h, b                                       ; $72b6: $60
    rrca                                          ; $72b7: $0f
    ld e, h                                       ; $72b8: $5c
    jr z, jr_095_7333                             ; $72b9: $28 $78

    rrca                                          ; $72bb: $0f
    add b                                         ; $72bc: $80
    call c, $b052                                 ; $72bd: $dc $52 $b0
    add hl, bc                                    ; $72c0: $09
    ld a, [hl]                                    ; $72c1: $7e
    dec d                                         ; $72c2: $15
    add d                                         ; $72c3: $82
    rlca                                          ; $72c4: $07
    and b                                         ; $72c5: $a0
    ld a, $8c                                     ; $72c6: $3e $8c
    jr jr_095_72ca                                ; $72c8: $18 $00

jr_095_72ca:
    ld e, e                                       ; $72ca: $5b
    jr c, jr_095_72d7                             ; $72cb: $38 $0a

jr_095_72cd:
    and b                                         ; $72cd: $a0
    ld c, a                                       ; $72ce: $4f
    xor h                                         ; $72cf: $ac
    ld h, h                                       ; $72d0: $64
    inc c                                         ; $72d1: $0c

jr_095_72d2:
    sbc b                                         ; $72d2: $98
    ld [bc], a                                    ; $72d3: $02
    inc [hl]                                      ; $72d4: $34
    ld a, $0c                                     ; $72d5: $3e $0c

jr_095_72d7:
    ld a, [bc]                                    ; $72d7: $0a
    add $11                                       ; $72d8: $c6 $11
    jr nz, @+$22                                  ; $72da: $20 $20

    ld b, b                                       ; $72dc: $40
    ld h, b                                       ; $72dd: $60
    ld bc, $4000                                  ; $72de: $01 $00 $40
    ld b, b                                       ; $72e1: $40
    ld b, c                                       ; $72e2: $41
    ld b, c                                       ; $72e3: $41
    xor d                                         ; $72e4: $aa
    nop                                           ; $72e5: $00
    ld de, $3030                                  ; $72e6: $11 $30 $30
    ld h, c                                       ; $72e9: $61
    ld bc, $6300                                  ; $72ea: $01 $00 $63

Jump_095_72ed:
    ld h, e                                       ; $72ed: $63
    rst $00                                       ; $72ee: $c7
    ld bc, $0000                                  ; $72ef: $01 $00 $00
    adc l                                         ; $72f2: $8d
    adc a                                         ; $72f3: $8f
    adc h                                         ; $72f4: $8c
    inc c                                         ; $72f5: $0c
    adc h                                         ; $72f6: $8c
    adc h                                         ; $72f7: $8c
    call z, Call_000_02cc                         ; $72f8: $cc $cc $02
    call nz, $84c4                                ; $72fb: $c4 $c4 $84
    add h                                         ; $72fe: $84
    ld b, $06                                     ; $72ff: $06 $06
    sbc b                                         ; $7301: $98
    rrca                                          ; $7302: $0f
    ld l, $00                                     ; $7303: $2e $00
    inc b                                         ; $7305: $04
    ld d, a                                       ; $7306: $57
    ld b, $aa                                     ; $7307: $06 $aa
    ld [bc], a                                    ; $7309: $02
    ld [hl], l                                    ; $730a: $75
    ld hl, $00bb                                  ; $730b: $21 $bb $00
    ld sp, $7075                                  ; $730e: $31 $75 $70
    ld [$7878], a                                 ; $7311: $ea $78 $78
    ld a, b                                       ; $7314: $78
    jr z, jr_095_7317                             ; $7315: $28 $00

jr_095_7317:
    jr c, jr_095_7351                             ; $7317: $38 $38

    jr c, jr_095_7347                             ; $7319: $38 $2c

    inc a                                         ; $731b: $3c
    inc [hl]                                      ; $731c: $34
    inc a                                         ; $731d: $3c
    inc a                                         ; $731e: $3c
    nop                                           ; $731f: $00
    inc a                                         ; $7320: $3c
    ld [hl], $3e                                  ; $7321: $36 $3e
    ld a, d                                       ; $7323: $7a
    ld a, [hl]                                    ; $7324: $7e
    cp $fe                                        ; $7325: $fe $fe
    rra                                           ; $7327: $1f
    ret nz                                        ; $7328: $c0

    ld c, h                                       ; $7329: $4c
    dec b                                         ; $732a: $05
    xor c                                         ; $732b: $a9
    ld c, d                                       ; $732c: $4a
    db $ed                                        ; $732d: $ed
    db $fd                                        ; $732e: $fd
    db $dd                                        ; $732f: $dd
    db $fd                                        ; $7330: $fd
    cp a                                          ; $7331: $bf
    rst $38                                       ; $7332: $ff

jr_095_7333:
    ld h, c                                       ; $7333: $61
    ld e, a                                       ; $7334: $5f
    add b                                         ; $7335: $80
    ld b, $d0                                     ; $7336: $06 $d0
    dec de                                        ; $7338: $1b
    jr nc, jr_095_736b                            ; $7339: $30 $30

    jr c, @+$3a                                   ; $733b: $38 $38

    scf                                           ; $733d: $37
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    ld a, b                                       ; $7340: $78
    db $fc                                        ; $7341: $fc
    ld e, h                                       ; $7342: $5c
    rst $38                                       ; $7343: $ff
    xor d                                         ; $7344: $aa
    rst $38                                       ; $7345: $ff
    ld d, l                                       ; $7346: $55

jr_095_7347:
    rst $38                                       ; $7347: $ff
    ld [$06aa], sp                                ; $7348: $08 $aa $06
    ld b, $0f                                     ; $734b: $06 $0f
    or d                                          ; $734d: $b2
    dec b                                         ; $734e: $05
    scf                                           ; $734f: $37
    ccf                                           ; $7350: $3f

jr_095_7351:
    cpl                                           ; $7351: $2f
    nop                                           ; $7352: $00
    ccf                                           ; $7353: $3f
    ld h, a                                       ; $7354: $67
    ld a, a                                       ; $7355: $7f
    rst $28                                       ; $7356: $ef
    ld d, l                                       ; $7357: $55
    rst $18                                       ; $7358: $df
    xor a                                         ; $7359: $af
    and e                                         ; $735a: $a3
    nop                                           ; $735b: $00
    db $e3                                        ; $735c: $e3
    rst $00                                       ; $735d: $c7
    rst $20                                       ; $735e: $e7
    xor a                                         ; $735f: $af
    rst $28                                       ; $7360: $ef
    db $fd                                        ; $7361: $fd
    rst $38                                       ; $7362: $ff
    cp d                                          ; $7363: $ba
    ld l, $ff                                     ; $7364: $2e $ff
    or l                                          ; $7366: $b5
    push hl                                       ; $7367: $e5
    rlca                                          ; $7368: $07
    rra                                           ; $7369: $1f
    cp b                                          ; $736a: $b8

jr_095_736b:
    ld b, $04                                     ; $736b: $06 $04
    ld [$0ec3], sp                                ; $736d: $08 $c3 $0e
    rst $18                                       ; $7370: $df
    ld [hl+], a                                   ; $7371: $22
    rst $38                                       ; $7372: $ff
    cp [hl]                                       ; $7373: $be
    jr @+$06                                      ; $7374: $18 $04

    rst $18                                       ; $7376: $df
    rst $38                                       ; $7377: $ff
    sbc a                                         ; $7378: $9f
    call z, $df06                                 ; $7379: $cc $06 $df
    ret c                                         ; $737c: $d8

    ld d, b                                       ; $737d: $50
    db $10                                        ; $737e: $10
    ld d, h                                       ; $737f: $54
    ld [$013b], sp                                ; $7380: $08 $3b $01
    nop                                           ; $7383: $00
    or c                                          ; $7384: $b1
    ld b, $7f                                     ; $7385: $06 $7f
    rst $38                                       ; $7387: $ff
    ld d, a                                       ; $7388: $57
    rst $00                                       ; $7389: $c7
    ld d, b                                       ; $738a: $50
    nop                                           ; $738b: $00
    add sp, $16                                   ; $738c: $e8 $16
    rra                                           ; $738e: $1f
    rst $38                                       ; $738f: $ff
    ld a, $40                                     ; $7390: $3e $40
    inc b                                         ; $7392: $04
    ret nz                                        ; $7393: $c0

    rlca                                          ; $7394: $07
    ld c, b                                       ; $7395: $48
    inc d                                         ; $7396: $14
    dec d                                         ; $7397: $15
    cp [hl]                                       ; $7398: $be
    rst $38                                       ; $7399: $ff
    ld a, l                                       ; $739a: $7d
    ld a, h                                       ; $739b: $7c
    jr z, @-$53                                   ; $739c: $28 $ab

jr_095_739e:
    jr jr_095_73af                                ; $739e: $18 $0f

    ld a, [$07f8]                                 ; $73a0: $fa $f8 $07
    ld d, a                                       ; $73a3: $57
    db $eb                                        ; $73a4: $eb
    inc c                                         ; $73a5: $0c
    rlca                                          ; $73a6: $07
    rst $38                                       ; $73a7: $ff
    db $10                                        ; $73a8: $10

Jump_095_73a9:
    rlca                                          ; $73a9: $07
    xor a                                         ; $73aa: $af
    add hl, hl                                    ; $73ab: $29
    rra                                           ; $73ac: $1f
    ld b, $38                                     ; $73ad: $06 $38

jr_095_73af:
    ld hl, $aa0f                                  ; $73af: $21 $0f $aa
    inc d                                         ; $73b2: $14
    ld c, b                                       ; $73b3: $48
    ld d, l                                       ; $73b4: $55
    ld hl, $fd40                                  ; $73b5: $21 $40 $fd
    or b                                          ; $73b8: $b0
    nop                                           ; $73b9: $00
    ld e, a                                       ; $73ba: $5f
    inc e                                         ; $73bb: $1c
    ld d, b                                       ; $73bc: $50
    xor d                                         ; $73bd: $aa
    pop de                                        ; $73be: $d1
    inc d                                         ; $73bf: $14
    nop                                           ; $73c0: $00
    db $10                                        ; $73c1: $10
    ld e, b                                       ; $73c2: $58
    ld d, a                                       ; $73c3: $57
    inc l                                         ; $73c4: $2c
    ld b, b                                       ; $73c5: $40
    ld d, l                                       ; $73c6: $55
    rst $38                                       ; $73c7: $ff
    xor [hl]                                      ; $73c8: $ae
    or e                                          ; $73c9: $b3
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    rst $38                                       ; $73cc: $ff
    jp $f3c3                                      ; $73cd: $c3 $c3 $f3


    di                                            ; $73d0: $f3
    ei                                            ; $73d1: $fb
    ld d, c                                       ; $73d2: $51
    ei                                            ; $73d3: $fb
    ld b, b                                       ; $73d4: $40
    cp e                                          ; $73d5: $bb

jr_095_73d6:
    jr nc, jr_095_73e8                            ; $73d6: $30 $10

    push de                                       ; $73d8: $d5
    rst $38                                       ; $73d9: $ff
    ld a, [$6060]                                 ; $73da: $fa $60 $60
    jr nz, jr_095_73ff                            ; $73dd: $20 $20

    jr nz, @-$5e                                  ; $73df: $20 $a0

    ld a, [hl-]                                   ; $73e1: $3a
    inc bc                                        ; $73e2: $03
    xor d                                         ; $73e3: $aa
    nop                                           ; $73e4: $00
    push af                                       ; $73e5: $f5
    and b                                         ; $73e6: $a0
    cp [hl]                                       ; $73e7: $be

jr_095_73e8:
    nop                                           ; $73e8: $00
    inc d                                         ; $73e9: $14
    ld [hl], a                                    ; $73ea: $77
    ld [hl+], a                                   ; $73eb: $22
    ld a, d                                       ; $73ec: $7a
    ld [hl], b                                    ; $73ed: $70
    cp d                                          ; $73ee: $ba
    cp d                                          ; $73ef: $ba
    ld a, c                                       ; $73f0: $79
    inc hl                                        ; $73f1: $23
    ld sp, hl                                     ; $73f2: $f9
    cp h                                          ; $73f3: $bc
    xor d                                         ; $73f4: $aa
    ld b, $ee                                     ; $73f5: $06 $ee
    cp $f7                                        ; $73f7: $fe $f7
    sbc d                                         ; $73f9: $9a
    nop                                           ; $73fa: $00
    add a                                         ; $73fb: $87
    jr jr_095_739e                                ; $73fc: $18 $a0

    ld e, c                                       ; $73fe: $59

jr_095_73ff:
    jr c, jr_095_73d6                             ; $73ff: $38 $d5

    daa                                           ; $7401: $27
    ld bc, $fff5                                  ; $7402: $01 $f5 $ff
    ld l, e                                       ; $7405: $6b
    rst $38                                       ; $7406: $ff
    or $80                                        ; $7407: $f6 $80
    push de                                       ; $7409: $d5
    rla                                           ; $740a: $17
    rst $18                                       ; $740b: $df
    rst $38                                       ; $740c: $ff
    ld a, a                                       ; $740d: $7f
    ld a, a                                       ; $740e: $7f
    ccf                                           ; $740f: $3f
    ccf                                           ; $7410: $3f
    rrca                                          ; $7411: $0f
    nop                                           ; $7412: $00
    rrca                                          ; $7413: $0f
    rlca                                          ; $7414: $07
    rlca                                          ; $7415: $07
    cp e                                          ; $7416: $bb
    ld sp, $787d                                  ; $7417: $31 $7d $78
    ld [$f80e], a                                 ; $741a: $ea $0e $f8
    push af                                       ; $741d: $f5
    db $fc                                        ; $741e: $fc
    db $fc                                        ; $741f: $fc
    call nz, $c807                                ; $7420: $c4 $07 $c8
    rrca                                          ; $7423: $0f
    ld c, h                                       ; $7424: $4c
    add hl, bc                                    ; $7425: $09
    cp a                                          ; $7426: $bf
    nop                                           ; $7427: $00
    dec d                                         ; $7428: $15
    ld e, a                                       ; $7429: $5f
    ld a, [bc]                                    ; $742a: $0a
    add e                                         ; $742b: $83
    add e                                         ; $742c: $83

jr_095_742d:
    ld b, c                                       ; $742d: $41
    pop bc                                        ; $742e: $c1
    ld b, c                                       ; $742f: $41
    nop                                           ; $7430: $00
    pop bc                                        ; $7431: $c1
    push af                                       ; $7432: $f5
    and b                                         ; $7433: $a0

Jump_095_7434:
    cp e                                          ; $7434: $bb
    ld d, c                                       ; $7435: $51
    push de                                       ; $7436: $d5
    and c                                         ; $7437: $a1
    db $eb                                        ; $7438: $eb
    dec c                                         ; $7439: $0d
    ld d, c                                       ; $743a: $51
    push af                                       ; $743b: $f5
    xor c                                         ; $743c: $a9
    pop af                                        ; $743d: $f1
    xor $00                                       ; $743e: $ee $00
    inc b                                         ; $7440: $04
    jr jr_095_742d                                ; $7441: $18 $ea

    ld [$0000], sp                                ; $7443: $08 $00 $00
    ld hl, sp-$01                                 ; $7446: $f8 $ff
    xor $7e                                       ; $7448: $ee $7e
    halt                                          ; $744a: $76
    ld a, [hl]                                    ; $744b: $7e
    dec sp                                        ; $744c: $3b
    ccf                                           ; $744d: $3f
    ld [bc], a                                    ; $744e: $02
    db $fd                                        ; $744f: $fd
    rst $38                                       ; $7450: $ff
    ccf                                           ; $7451: $3f
    ccf                                           ; $7452: $3f
    dec e                                         ; $7453: $1d
    rra                                           ; $7454: $1f
    inc h                                         ; $7455: $24
    ld bc, $01ff                                  ; $7456: $01 $ff $01
    rst $28                                       ; $7459: $ef
    ld b, l                                       ; $745a: $45
    sbc a                                         ; $745b: $9f
    adc d                                         ; $745c: $8a
    rlca                                          ; $745d: $07
    dec b                                         ; $745e: $05
    inc bc                                        ; $745f: $03
    ld bc, $0000                                  ; $7460: $01 $00 $00
    add c                                         ; $7463: $81
    add c                                         ; $7464: $81
    pop bc                                        ; $7465: $c1
    pop bc                                        ; $7466: $c1
    ld [hl], c                                    ; $7467: $71
    pop af                                        ; $7468: $f1
    db $d3                                        ; $7469: $d3
    rst $38                                       ; $746a: $ff
    inc c                                         ; $746b: $0c
    db $eb                                        ; $746c: $eb
    cp a                                          ; $746d: $bf
    rst $38                                       ; $746e: $ff
    ld d, l                                       ; $746f: $55
    add d                                         ; $7470: $82
    ld [$0858], sp                                ; $7471: $08 $58 $08
    ld a, a                                       ; $7474: $7f
    ld a, a                                       ; $7475: $7f
    ld de, $fff5                                  ; $7476: $11 $f5 $ff
    add sp, $08                                   ; $7479: $e8 $08
    ld bc, $aff8                                  ; $747b: $01 $f8 $af
    push af                                       ; $747e: $f5
    ld a, [hl-]                                   ; $747f: $3a
    ld bc, $68a8                                  ; $7480: $01 $a8 $68
    ld [$cafe], sp                                ; $7483: $08 $fe $ca
    ld bc, $38ef                                  ; $7486: $01 $ef $38
    ld b, c                                       ; $7489: $41
    jp hl                                         ; $748a: $e9


    jp hl                                         ; $748b: $e9


    ld h, a                                       ; $748c: $67
    rra                                           ; $748d: $1f
    rst $20                                       ; $748e: $e7
    cp l                                          ; $748f: $bd
    db $fd                                        ; $7490: $fd
    xor h                                         ; $7491: $ac
    dec e                                         ; $7492: $1d
    jr c, jr_095_74a3                             ; $7493: $38 $0e

    adc h                                         ; $7495: $8c
    ld de, $00a6                                  ; $7496: $11 $a6 $00
    scf                                           ; $7499: $37
    add hl, sp                                    ; $749a: $39
    ret nz                                        ; $749b: $c0

    ld h, [hl]                                    ; $749c: $66
    ld [$3969], sp                                ; $749d: $08 $69 $39
    rrca                                          ; $74a0: $0f
    dec b                                         ; $74a1: $05
    ld e, a                                       ; $74a2: $5f

jr_095_74a3:
    ld a, [bc]                                    ; $74a3: $0a
    xor a                                         ; $74a4: $af
    dec b                                         ; $74a5: $05
    nop                                           ; $74a6: $00
    rst $18                                       ; $74a7: $df
    adc d                                         ; $74a8: $8a
    xor a                                         ; $74a9: $af
    add l                                         ; $74aa: $85
    rst $10                                       ; $74ab: $d7
    add d                                         ; $74ac: $82
    xor a                                         ; $74ad: $af
    add l                                         ; $74ae: $85
    nop                                           ; $74af: $00
    sbc a                                         ; $74b0: $9f
    adc d                                         ; $74b1: $8a
    xor [hl]                                      ; $74b2: $ae
    inc b                                         ; $74b3: $04
    call z, $ac8c                                 ; $74b4: $cc $8c $ac
    inc c                                         ; $74b7: $0c
    nop                                           ; $74b8: $00
    rst $18                                       ; $74b9: $df
    adc d                                         ; $74ba: $8a
    xor $44                                       ; $74bb: $ee $44
    ld e, a                                       ; $74bd: $5f
    ld a, [bc]                                    ; $74be: $0a
    rst $00                                       ; $74bf: $c7
    ld b, a                                       ; $74c0: $47
    nop                                           ; $74c1: $00
    ld [hl], a                                    ; $74c2: $77
    ld [hl+], a                                   ; $74c3: $22
    cp [hl]                                       ; $74c4: $be
    dec d                                         ; $74c5: $15
    dec a                                         ; $74c6: $3d
    ccf                                           ; $74c7: $3f
    ld a, $3f                                     ; $74c8: $3e $3f
    nop                                           ; $74ca: $00
    ld a, l                                       ; $74cb: $7d
    ccf                                           ; $74cc: $3f
    cp [hl]                                       ; $74cd: $be
    dec d                                         ; $74ce: $15
    ld a, a                                       ; $74cf: $7f
    ld a, [hl+]                                   ; $74d0: $2a
    ld a, $3f                                     ; $74d1: $3e $3f
    inc b                                         ; $74d3: $04
    ld a, a                                       ; $74d4: $7f
    ccf                                           ; $74d5: $3f
    rst $18                                       ; $74d6: $df
    rst $18                                       ; $74d7: $df
    cp a                                          ; $74d8: $bf
    ld bc, $ff00                                  ; $74d9: $01 $00 $ff
    rst $38                                       ; $74dc: $ff
    nop                                           ; $74dd: $00
    cp $55                                        ; $74de: $fe $55
    ld a, a                                       ; $74e0: $7f
    xor a                                         ; $74e1: $af
    cp [hl]                                       ; $74e2: $be
    rst $38                                       ; $74e3: $ff
    ld l, a                                       ; $74e4: $6f
    rst $38                                       ; $74e5: $ff
    nop                                           ; $74e6: $00
    ld c, [hl]                                    ; $74e7: $4e
    adc $df                                       ; $74e8: $ce $df
    rst $18                                       ; $74ea: $df
    rst $18                                       ; $74eb: $df
    ld e, a                                       ; $74ec: $5f
    rst $18                                       ; $74ed: $df
    rst $18                                       ; $74ee: $df
    nop                                           ; $74ef: $00
    ld a, a                                       ; $74f0: $7f
    rst $38                                       ; $74f1: $ff
    rst $30                                       ; $74f2: $f7
    rst $30                                       ; $74f3: $f7
    ld [hl], e                                    ; $74f4: $73
    di                                            ; $74f5: $f3
    or e                                          ; $74f6: $b3
    di                                            ; $74f7: $f3
    ld d, h                                       ; $74f8: $54
    daa                                           ; $74f9: $27
    ld bc, $1310                                  ; $74fa: $01 $10 $13
    ld bc, $9b00                                  ; $74fd: $01 $00 $9b
    ld bc, $8b00                                  ; $7500: $01 $00 $8b
    adc e                                         ; $7503: $8b
    nop                                           ; $7504: $00
    sbc a                                         ; $7505: $9f
    sbc a                                         ; $7506: $9f
    adc a                                         ; $7507: $8f
    adc a                                         ; $7508: $8f
    add a                                         ; $7509: $87
    add a                                         ; $750a: $87
    jp $00c3                                      ; $750b: $c3 $c3 $00


    add e                                         ; $750e: $83
    jp $e3e3                                      ; $750f: $c3 $e3 $e3


    and e                                         ; $7512: $a3
    db $e3                                        ; $7513: $e3
    jp $e0e3                                      ; $7514: $c3 $e3 $e0


    inc l                                         ; $7517: $2c
    ld a, [bc]                                    ; $7518: $0a
    ld a, $1a                                     ; $7519: $3e $1a
    db $ed                                        ; $751b: $ed
    add hl, de                                    ; $751c: $19
    ld [hl], c                                    ; $751d: $71
    pop af                                        ; $751e: $f1
    and c                                         ; $751f: $a1
    pop hl                                        ; $7520: $e1
    ld [hl], c                                    ; $7521: $71
    ld [bc], a                                    ; $7522: $02
    pop af                                        ; $7523: $f1
    or c                                          ; $7524: $b1
    pop af                                        ; $7525: $f1
    call c, $affc                                 ; $7526: $dc $fc $af
    ld d, d                                       ; $7529: $52
    ld [bc], a                                    ; $752a: $02
    rst $28                                       ; $752b: $ef
    inc c                                         ; $752c: $0c
    rst $38                                       ; $752d: $ff
    adc l                                         ; $752e: $8d
    adc l                                         ; $752f: $8d
    call Call_000_0001                            ; $7530: $cd $01 $00
    db $ec                                        ; $7533: $ec
    ld a, [bc]                                    ; $7534: $0a

Jump_095_7535:
    rst $20                                       ; $7535: $e7
    rst $20                                       ; $7536: $e7
    nop                                           ; $7537: $00
    rst $30                                       ; $7538: $f7
    rst $30                                       ; $7539: $f7
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    or a                                          ; $753c: $b7
    rst $30                                       ; $753d: $f7
    rst $10                                       ; $753e: $d7
    rst $30                                       ; $753f: $f7
    nop                                           ; $7540: $00
    or a                                          ; $7541: $b7
    rst $30                                       ; $7542: $f7
    rst $20                                       ; $7543: $e7
    rst $20                                       ; $7544: $e7
    and a                                         ; $7545: $a7
    rst $20                                       ; $7546: $e7
    ld h, a                                       ; $7547: $67
    rst $20                                       ; $7548: $e7
    nop                                           ; $7549: $00
    rst $08                                       ; $754a: $cf
    rst $08                                       ; $754b: $cf

jr_095_754c:
    ld e, a                                       ; $754c: $5f
    rst $18                                       ; $754d: $df
    db $db                                        ; $754e: $db
    ei                                            ; $754f: $fb
    xor d                                         ; $7550: $aa
    ld a, [$de00]                                 ; $7551: $fa $00 $de
    cp $ae                                        ; $7554: $fe $ae
    cp $fe                                        ; $7556: $fe $fe
    ld d, h                                       ; $7558: $54
    cp l                                          ; $7559: $bd
    ld hl, sp+$05                                 ; $755a: $f8 $05
    reti                                          ; $755c: $d9


    ld sp, hl                                     ; $755d: $f9
    cp c                                          ; $755e: $b9
    ld sp, hl                                     ; $755f: $f9
    ld h, d                                       ; $7560: $62
    ld bc, $c400                                  ; $7561: $01 $00 $c4
    ld bc, $1410                                  ; $7564: $01 $10 $14
    db $dd                                        ; $7567: $dd
    adc b                                         ; $7568: $88
    ret                                           ; $7569: $c9


    ld bc, $6700                                  ; $756a: $01 $00 $67
    ld bc, $4f00                                  ; $756d: $01 $00 $4f
    ld c, a                                       ; $7570: $4f
    ld d, b                                       ; $7571: $50
    rst $08                                       ; $7572: $cf
    ld bc, $9f10                                  ; $7573: $01 $10 $9f
    ld bc, $a200                                  ; $7576: $01 $00 $a2
    ld [c], a                                     ; $7579: $e2
    jp nc, $00f2                                  ; $757a: $d2 $f2 $00

    jp nc, $f6f2                                  ; $757d: $d2 $f2 $f6

    or $ec                                        ; $7580: $f6 $ec
    db $fc                                        ; $7582: $fc
    db $f4                                        ; $7583: $f4
    db $fc                                        ; $7584: $fc
    nop                                           ; $7585: $00
    ld a, h                                       ; $7586: $7c
    ld a, h                                       ; $7587: $7c
    ld a, d                                       ; $7588: $7a
    ld a, [hl]                                    ; $7589: $7e
    reti                                          ; $758a: $d9


    ld sp, hl                                     ; $758b: $f9
    xor c                                         ; $758c: $a9
    ld sp, hl                                     ; $758d: $f9
    ld a, [bc]                                    ; $758e: $0a
    reti                                          ; $758f: $d9


    ld sp, hl                                     ; $7590: $f9
    db $ed                                        ; $7591: $ed
    db $fd                                        ; $7592: $fd
    ld l, h                                       ; $7593: $6c
    ld [$3af7], sp                                ; $7594: $08 $f7 $3a
    ld bc, $0093                                  ; $7597: $01 $93 $00
    sub e                                         ; $759a: $93
    and a                                         ; $759b: $a7
    and a                                         ; $759c: $a7
    adc $ce                                       ; $759d: $ce $ce
    sbc $de                                       ; $759f: $de $de
    cp e                                          ; $75a1: $bb
    nop                                           ; $75a2: $00
    cp e                                          ; $75a3: $bb
    ei                                            ; $75a4: $fb
    ei                                            ; $75a5: $fb
    pop af                                        ; $75a6: $f1
    pop af                                        ; $75a7: $f1
    ld h, c                                       ; $75a8: $61
    pop hl                                        ; $75a9: $e1
    sbc a                                         ; $75aa: $9f
    jr z, jr_095_754c                             ; $75ab: $28 $9f

    rra                                           ; $75ad: $1f
    ld bc, $1e10                                  ; $75ae: $01 $10 $1e
    ld bc, $3d20                                  ; $75b1: $01 $20 $3d
    ccf                                           ; $75b4: $3f
    sbc [hl]                                      ; $75b5: $9e
    ld sp, $9e9f                                  ; $75b6: $31 $9f $9e
    call nz, $8010                                ; $75b9: $c4 $10 $80
    dec bc                                        ; $75bc: $0b
    ld c, l                                       ; $75bd: $4d
    ld c, l                                       ; $75be: $4d
    cp $95                                        ; $75bf: $fe $95
    ld [de], a                                    ; $75c1: $12
    ld l, b                                       ; $75c2: $68
    cp $3c                                        ; $75c3: $fe $3c
    nop                                           ; $75c5: $00
    xor l                                         ; $75c6: $ad
    ld a, [de]                                    ; $75c7: $1a
    pop bc                                        ; $75c8: $c1
    sbc $01                                       ; $75c9: $de $01
    ld hl, $90e1                                  ; $75cb: $21 $e1 $90
    ld [bc], a                                    ; $75ce: $02
    ldh a, [rOBP0]                                ; $75cf: $f0 $48
    ld hl, sp-$58                                 ; $75d1: $f8 $a8
    ld hl, sp+$47                                 ; $75d3: $f8 $47
    jp nz, Jump_000_1c02                          ; $75d5: $c2 $02 $1c

    add hl, bc                                    ; $75d8: $09
    ld e, $9f                                     ; $75d9: $1e $9f
    sbc a                                         ; $75db: $9f
    sbc l                                         ; $75dc: $9d
    ld a, c                                       ; $75dd: $79
    nop                                           ; $75de: $00
    db $dd                                        ; $75df: $dd
    rst $18                                       ; $75e0: $df
    ld [$000a], sp                                ; $75e1: $08 $0a $00
    ld a, e                                       ; $75e4: $7b
    rst $38                                       ; $75e5: $ff
    ld l, l                                       ; $75e6: $6d
    ld l, l                                       ; $75e7: $6d
    jr c, jr_095_7622                             ; $75e8: $38 $38

    jr jr_095_7604                                ; $75ea: $18 $18

    nop                                           ; $75ec: $00
    inc c                                         ; $75ed: $0c
    inc c                                         ; $75ee: $0c
    ld b, $06                                     ; $75ef: $06 $06
    add e                                         ; $75f1: $83
    add e                                         ; $75f2: $83
    pop bc                                        ; $75f3: $c1
    pop bc                                        ; $75f4: $c1
    dec de                                        ; $75f5: $1b
    ld [hl], e                                    ; $75f6: $73
    di                                            ; $75f7: $f3
    push de                                       ; $75f8: $d5
    ld c, [hl]                                    ; $75f9: $4e
    ld d, d                                       ; $75fa: $52
    rst $00                                       ; $75fb: $c7
    ld a, [bc]                                    ; $75fc: $0a
    ei                                            ; $75fd: $fb
    sub d                                         ; $75fe: $92
    ld d, c                                       ; $75ff: $51
    sbc h                                         ; $7600: $9c
    dec bc                                        ; $7601: $0b
    xor b                                         ; $7602: $a8
    rlca                                          ; $7603: $07

jr_095_7604:
    ld c, e                                       ; $7604: $4b
    ld [$3001], sp                                ; $7605: $08 $01 $30
    inc c                                         ; $7608: $0c
    ld bc, $4010                                  ; $7609: $01 $10 $40
    ld b, b                                       ; $760c: $40
    ld b, h                                       ; $760d: $44
    jp z, $2001                                   ; $760e: $ca $01 $20

    ld [hl], $0f                                  ; $7611: $36 $0f
    adc h                                         ; $7613: $8c
    adc h                                         ; $7614: $8c
    dec bc                                        ; $7615: $0b
    ld e, [hl]                                    ; $7616: $5e
    ld bc, $3695                                  ; $7617: $01 $95 $36
    stop                                          ; $761a: $10 $00
    db $10                                        ; $761c: $10
    jr nz, jr_095_763f                            ; $761d: $20 $20

    ret nz                                        ; $761f: $c0

    ret nz                                        ; $7620: $c0

    add a                                         ; $7621: $87

jr_095_7622:
    add a                                         ; $7622: $87
    inc c                                         ; $7623: $0c
    jr nz, jr_095_7632                            ; $7624: $20 $0c

    adc [hl]                                      ; $7626: $8e
    ld bc, $4e00                                  ; $7627: $01 $00 $4e
    adc $27                                       ; $762a: $ce $27
    rst $20                                       ; $762c: $e7
    or a                                          ; $762d: $b7
    nop                                           ; $762e: $00
    rst $30                                       ; $762f: $f7
    db $db                                        ; $7630: $db
    ei                                            ; $7631: $fb

jr_095_7632:
    db $ed                                        ; $7632: $ed
    db $fd                                        ; $7633: $fd
    adc b                                         ; $7634: $88
    adc b                                         ; $7635: $88
    ret z                                         ; $7636: $c8

    add b                                         ; $7637: $80
    ld bc, $5800                                  ; $7638: $01 $00 $58
    ld e, b                                       ; $763b: $58
    ld e, c                                       ; $763c: $59

jr_095_763d:
    ld e, c                                       ; $763d: $59
    ld a, c                                       ; $763e: $79

jr_095_763f:
    ld a, c                                       ; $763f: $79
    dec sp                                        ; $7640: $3b
    nop                                           ; $7641: $00
    dec sp                                        ; $7642: $3b
    cp e                                          ; $7643: $bb
    cp e                                          ; $7644: $bb
    rlca                                          ; $7645: $07
    rlca                                          ; $7646: $07
    inc c                                         ; $7647: $0c
    inc c                                         ; $7648: $0c
    jr c, jr_095_764b                             ; $7649: $38 $00

jr_095_764b:
    jr c, jr_095_763d                             ; $764b: $38 $f0

    ldh a, [$c0]                                  ; $764d: $f0 $c0
    ret nz                                        ; $764f: $c0

    jp $8fc3                                      ; $7650: $c3 $c3 $8f


    ld b, b                                       ; $7653: $40
    adc a                                         ; $7654: $8f
    cp $08                                        ; $7655: $fe $08
    ld a, $3f                                     ; $7657: $3e $3f
    dec a                                         ; $7659: $3d
    ccf                                           ; $765a: $3f
    ld a, e                                       ; $765b: $7b
    ld a, a                                       ; $765c: $7f
    dec d                                         ; $765d: $15
    or $fe                                        ; $765e: $f6 $fe
    rst $28                                       ; $7660: $ef
    ld h, $14                                     ; $7661: $26 $14
    rst $10                                       ; $7663: $d7
    inc b                                         ; $7664: $04
    inc de                                        ; $7665: $13
    push af                                       ; $7666: $f5
    adc l                                         ; $7667: $8d
    inc sp                                        ; $7668: $33
    nop                                           ; $7669: $00
    di                                            ; $766a: $f3
    di                                            ; $766b: $f3
    db $e3                                        ; $766c: $e3
    db $e3                                        ; $766d: $e3
    rst $20                                       ; $766e: $e7
    rst $20                                       ; $766f: $e7
    or l                                          ; $7670: $b5
    rst $30                                       ; $7671: $f7
    db $10                                        ; $7672: $10
    cp $ff                                        ; $7673: $fe $ff
    db $ed                                        ; $7675: $ed
    ld b, b                                       ; $7676: $40
    inc d                                         ; $7677: $14
    cp [hl]                                       ; $7678: $be
    cp a                                          ; $7679: $bf
    ld a, a                                       ; $767a: $7f
    ld a, a                                       ; $767b: $7f
    ld h, d                                       ; $767c: $62
    cp $4c                                        ; $767d: $fe $4c
    inc h                                         ; $767f: $24
    ld [de], a                                    ; $7680: $12
    dec de                                        ; $7681: $1b
    ld a, d                                       ; $7682: $7a
    rst $38                                       ; $7683: $ff
    or c                                          ; $7684: $b1
    ld hl, sp+$00                                 ; $7685: $f8 $00
    push af                                       ; $7687: $f5
    ld a, $ff                                     ; $7688: $3e $ff
    ld l, d                                       ; $768a: $6a
    call c, $a910                                 ; $768b: $dc $10 $a9
    dec bc                                        ; $768e: $0b
    rst $10                                       ; $768f: $d7
    ld c, e                                       ; $7690: $4b
    xor [hl]                                      ; $7691: $ae
    ld c, [hl]                                    ; $7692: $4e
    ld [hl], h                                    ; $7693: $74
    rlca                                          ; $7694: $07
    ldh a, [$80]                                  ; $7695: $f0 $80
    cp [hl]                                       ; $7697: $be
    ld e, b                                       ; $7698: $58
    inc bc                                        ; $7699: $03
    inc bc                                        ; $769a: $03
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    ld [$1008], sp                                ; $769d: $08 $08 $10
    inc d                                         ; $76a0: $14
    db $10                                        ; $76a1: $10
    jr nc, @+$32                                  ; $76a2: $30 $30

    cp $0c                                        ; $76a4: $fe $0c
    add b                                         ; $76a6: $80
    ld bc, $e000                                  ; $76a7: $01 $00 $e0
    ldh [rSB], a                                  ; $76aa: $e0 $01
    ret nz                                        ; $76ac: $c0

    ret nz                                        ; $76ad: $c0

    add b                                         ; $76ae: $80
    add b                                         ; $76af: $80
    rlca                                          ; $76b0: $07
    rlca                                          ; $76b1: $07
    rra                                           ; $76b2: $1f
    ld e, $03                                     ; $76b3: $1e $03
    ld h, h                                       ; $76b5: $64
    db $f4                                        ; $76b6: $f4
    add d                                         ; $76b7: $82
    inc b                                         ; $76b8: $04
    add b                                         ; $76b9: $80
    rrca                                          ; $76ba: $0f
    ldh [$e0], a                                  ; $76bb: $e0 $e0
    ld a, [hl-]                                   ; $76bd: $3a
    ld [$f050], sp                                ; $76be: $08 $50 $f0
    nop                                           ; $76c1: $00
    pop hl                                        ; $76c2: $e1
    pop hl                                        ; $76c3: $e1
    inc bc                                        ; $76c4: $03
    inc bc                                        ; $76c5: $03
    rlca                                          ; $76c6: $07
    rlca                                          ; $76c7: $07
    ld a, [bc]                                    ; $76c8: $0a
    ld a, [bc]                                    ; $76c9: $0a
    nop                                           ; $76ca: $00
    inc d                                         ; $76cb: $14
    inc d                                         ; $76cc: $14
    inc a                                         ; $76cd: $3c
    inc a                                         ; $76ce: $3c
    ld a, b                                       ; $76cf: $78
    ld a, b                                       ; $76d0: $78
    ret nc                                        ; $76d1: $d0

    ret nc                                        ; $76d2: $d0

    ld [$a0a0], sp                                ; $76d3: $08 $a0 $a0
    ld hl, $9521                                  ; $76d6: $21 $21 $95
    rra                                           ; $76d9: $1f
    inc a                                         ; $76da: $3c
    inc a                                         ; $76db: $3c
    ld a, h                                       ; $76dc: $7c
    nop                                           ; $76dd: $00
    ld a, h                                       ; $76de: $7c
    db $f4                                        ; $76df: $f4
    db $fc                                        ; $76e0: $fc
    db $ec                                        ; $76e1: $ec
    db $fc                                        ; $76e2: $fc
    db $fc                                        ; $76e3: $fc
    db $fc                                        ; $76e4: $fc
    ld e, h                                       ; $76e5: $5c
    ld h, l                                       ; $76e6: $65
    db $fc                                        ; $76e7: $fc
    call c, Call_095_4a08                         ; $76e8: $dc $08 $4a
    ld [$fcfc], sp                                ; $76eb: $08 $fc $fc
    db $f4                                        ; $76ee: $f4
    inc c                                         ; $76ef: $0c
    ld b, $01                                     ; $76f0: $06 $01
    nop                                           ; $76f2: $00
    add b                                         ; $76f3: $80
    ld c, d                                       ; $76f4: $4a
    add hl, bc                                    ; $76f5: $09
    jr jr_095_7710                                ; $76f6: $18 $18

    ld de, $f111                                  ; $76f8: $11 $11 $f1
    pop af                                        ; $76fb: $f1
    rst $38                                       ; $76fc: $ff
    inc d                                         ; $76fd: $14
    rst $38                                       ; $76fe: $ff
    ld h, e                                       ; $76ff: $63
    ld h, e                                       ; $7700: $63
    jr nc, jr_095_770d                            ; $7701: $30 $0a

    rst $18                                       ; $7703: $df
    adc a                                         ; $7704: $8f
    ld a, [hl+]                                   ; $7705: $2a
    rst $38                                       ; $7706: $ff
    db $ec                                        ; $7707: $ec
    ld b, b                                       ; $7708: $40
    db $fc                                        ; $7709: $fc
    ld [hl+], a                                   ; $770a: $22
    ld a, [bc]                                    ; $770b: $0a
    ret                                           ; $770c: $c9


jr_095_770d:
    ld sp, hl                                     ; $770d: $f9
    sbc e                                         ; $770e: $9b
    ei                                            ; $770f: $fb

jr_095_7710:
    ld e, [hl]                                    ; $7710: $5e
    cp $0d                                        ; $7711: $fe $0d
    cp h                                          ; $7713: $bc
    db $fc                                        ; $7714: $fc
    ld e, c                                       ; $7715: $59
    ld sp, hl                                     ; $7716: $f9
    ldh a, [$09]                                  ; $7717: $f0 $09
    ld d, a                                       ; $7719: $57
    ld c, h                                       ; $771a: $4c
    cp a                                          ; $771b: $bf
    reti                                          ; $771c: $d9


    inc b                                         ; $771d: $04
    rra                                           ; $771e: $1f
    xor a                                         ; $771f: $af
    rst $38                                       ; $7720: $ff
    db $db                                        ; $7721: $db
    ld a, [c]                                     ; $7722: $f2
    jr nc, @+$70                                  ; $7723: $30 $6e

    add hl, hl                                    ; $7725: $29
    ld [bc], a                                    ; $7726: $02
    ld [$1780], sp                                ; $7727: $08 $80 $17
    ld a, h                                       ; $772a: $7c
    ld de, $b6ac                                  ; $772b: $11 $ac $b6
    add hl, bc                                    ; $772e: $09
    inc b                                         ; $772f: $04
    ld bc, $0200                                  ; $7730: $01 $00 $02
    rst $38                                       ; $7733: $ff
    dec c                                         ; $7734: $0d
    inc bc                                        ; $7735: $03
    ret nz                                        ; $7736: $c0

    rrca                                          ; $7737: $0f
    rrca                                          ; $7738: $0f
    sbc c                                         ; $7739: $99
    add sp, $0d                                   ; $773a: $e8 $0d
    ld h, b                                       ; $773c: $60
    ld h, b                                       ; $773d: $60
    call nc, $9809                                ; $773e: $d4 $09 $98
    add hl, bc                                    ; $7741: $09
    ret c                                         ; $7742: $d8

    ret c                                         ; $7743: $d8

    ld a, [$000b]                                 ; $7744: $fa $0b $00
    dec b                                         ; $7747: $05
    dec b                                         ; $7748: $05
    dec c                                         ; $7749: $0d
    dec c                                         ; $774a: $0d
    ld [$1808], sp                                ; $774b: $08 $08 $18
    jr jr_095_7750                                ; $774e: $18 $00

jr_095_7750:
    db $10                                        ; $7750: $10
    db $10                                        ; $7751: $10
    ld sp, $0031                                  ; $7752: $31 $31 $00
    nop                                           ; $7755: $00
    inc bc                                        ; $7756: $03
    inc bc                                        ; $7757: $03
    inc [hl]                                      ; $7758: $34
    adc a                                         ; $7759: $8f
    adc a                                         ; $775a: $8f
    and b                                         ; $775b: $a0
    jr c, @-$34                                   ; $775c: $38 $ca

    dec hl                                        ; $775e: $2b
    db $fd                                        ; $775f: $fd
    ld a, [hl-]                                   ; $7760: $3a
    dec b                                         ; $7761: $05
    rst $20                                       ; $7762: $e7
    rst $38                                       ; $7763: $ff

jr_095_7764:
    ld bc, $fccc                                  ; $7764: $01 $cc $fc
    sbc b                                         ; $7767: $98
    sbc b                                         ; $7768: $98
    sub b                                         ; $7769: $90
    sub b                                         ; $776a: $90
    or b                                          ; $776b: $b0
    ld bc, $0000                                  ; $776c: $01 $00 $00
    jr nz, jr_095_7791                            ; $776f: $20 $20

    ld h, e                                       ; $7771: $63
    ld h, e                                       ; $7772: $63
    ld l, a                                       ; $7773: $6f
    ld l, a                                       ; $7774: $6f
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    sbc l                                         ; $7777: $9d
    ld a, [hl+]                                   ; $7778: $2a
    ld c, $47                                     ; $7779: $0e $47
    ld b, a                                       ; $777b: $47
    ret nc                                        ; $777c: $d0

    jr c, jr_095_7764                             ; $777d: $38 $e5

    dec c                                         ; $777f: $0d
    ld h, $0c                                     ; $7780: $26 $0c
    db $fd                                        ; $7782: $fd
    ld l, h                                       ; $7783: $6c
    inc b                                         ; $7784: $04
    ld b, b                                       ; $7785: $40
    ldh a, [$74]                                  ; $7786: $f0 $74
    inc b                                         ; $7788: $04
    cp b                                          ; $7789: $b8
    ld hl, sp+$70                                 ; $778a: $f8 $70
    ldh a, [$71]                                  ; $778c: $f0 $71
    pop af                                        ; $778e: $f1
    nop                                           ; $778f: $00
    db $e3                                        ; $7790: $e3

jr_095_7791:
    db $e3                                        ; $7791: $e3
    jp $c6c3                                      ; $7792: $c3 $c3 $c6


    add $66                                       ; $7795: $c6 $66
    and $1c                                       ; $7797: $e6 $1c
    db $fc                                        ; $7799: $fc

jr_095_779a:
    db $fc                                        ; $779a: $fc
    push af                                       ; $779b: $f5
    db $10                                        ; $779c: $10
    ld h, h                                       ; $779d: $64
    add $0d                                       ; $779e: $c6 $0d
    or b                                          ; $77a0: $b0
    adc c                                         ; $77a1: $89
    inc bc                                        ; $77a2: $03
    inc bc                                        ; $77a3: $03
    jr nz, jr_095_77c5                            ; $77a4: $20 $1f

    rra                                           ; $77a6: $1f
    ret nz                                        ; $77a7: $c0

    ld c, c                                       ; $77a8: $49
    cp $fe                                        ; $77a9: $fe $fe
    ld d, e                                       ; $77ab: $53
    rst $38                                       ; $77ac: $ff
    db $fc                                        ; $77ad: $fc
    ret z                                         ; $77ae: $c8

    ld b, d                                       ; $77af: $42
    ld b, $da                                     ; $77b0: $06 $da
    ld a, [bc]                                    ; $77b2: $0a
    ld [bc], a                                    ; $77b3: $02
    ld [bc], a                                    ; $77b4: $02
    adc d                                         ; $77b5: $8a
    ld c, $e0                                     ; $77b6: $0e $e0
    ldh [$78], a                                  ; $77b8: $e0 $78
    ld [hl+], a                                   ; $77ba: $22
    ld hl, sp-$71                                 ; $77bb: $f8 $8f
    ldh [$31], a                                  ; $77bd: $e0 $31
    add b                                         ; $77bf: $80
    add b                                         ; $77c0: $80
    ret nz                                        ; $77c1: $c0

    ld bc, $e000                                  ; $77c2: $01 $00 $e0

jr_095_77c5:
    ld d, b                                       ; $77c5: $50
    ldh [$d3], a                                  ; $77c6: $e0 $d3
    dec e                                         ; $77c8: $1d
    rst $30                                       ; $77c9: $f7
    call c, $f605                                 ; $77ca: $dc $05 $f6
    or $8c                                        ; $77cd: $f6 $8c
    adc h                                         ; $77cf: $8c
    ld h, $18                                     ; $77d0: $26 $18
    jr @-$1b                                      ; $77d2: $18 $e3

    dec e                                         ; $77d4: $1d
    adc a                                         ; $77d5: $8f
    adc a                                         ; $77d6: $8f
    ld [$b009], a                                 ; $77d7: $ea $09 $b0
    ld a, [bc]                                    ; $77da: $0a
    ret nc                                        ; $77db: $d0

    ret nz                                        ; $77dc: $c0

    ld [bc], a                                    ; $77dd: $02
    ld b, $f7                                     ; $77de: $06 $f7

jr_095_77e0:
    dec l                                         ; $77e0: $2d
    ld [hl], a                                    ; $77e1: $77
    ld [hl], a                                    ; $77e2: $77
    ret nz                                        ; $77e3: $c0

    ret nz                                        ; $77e4: $c0

    ld a, h                                       ; $77e5: $7c
    db $fc                                        ; $77e6: $fc
    ld a, [hl]                                    ; $77e7: $7e
    xor e                                         ; $77e8: $ab
    ld e, b                                       ; $77e9: $58
    db $10                                        ; $77ea: $10
    and [hl]                                      ; $77eb: $a6
    inc l                                         ; $77ec: $2c
    ld a, [bc]                                    ; $77ed: $0a
    ld a, [bc]                                    ; $77ee: $0a
    ld [bc], a                                    ; $77ef: $02
    ld a, [bc]                                    ; $77f0: $0a
    inc e                                         ; $77f1: $1c
    ld a, [bc]                                    ; $77f2: $0a
    xor $09                                       ; $77f3: $ee $09
    inc bc                                        ; $77f5: $03
    nop                                           ; $77f6: $00
    inc bc                                        ; $77f7: $03
    ld c, $0e                                     ; $77f8: $0e $0e
    ccf                                           ; $77fa: $3f
    ccf                                           ; $77fb: $3f
    ld a, [hl]                                    ; $77fc: $7e
    ld a, [hl]                                    ; $77fd: $7e
    ldh [rNR10], a                                ; $77fe: $e0 $10
    ldh [$c7], a                                  ; $7800: $e0 $c7
    rst $00                                       ; $7802: $c7
    adc b                                         ; $7803: $88
    inc c                                         ; $7804: $0c
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    ccf                                           ; $7807: $3f
    ccf                                           ; $7808: $3f
    dec sp                                        ; $7809: $3b
    ld hl, sp-$08                                 ; $780a: $f8 $f8
    ei                                            ; $780c: $fb
    rrca                                          ; $780d: $0f
    ld a, e                                       ; $780e: $7b
    dec b                                         ; $780f: $05
    ret nc                                        ; $7810: $d0

    inc c                                         ; $7811: $0c
    rrca                                          ; $7812: $0f
    ld e, d                                       ; $7813: $5a
    jr jr_095_779a                                ; $7814: $18 $84

    jr jr_095_77e0                                ; $7816: $18 $c8

    ld a, $0a                                     ; $7818: $3e $0a
    ld c, d                                       ; $781a: $4a
    rrca                                          ; $781b: $0f
    jr nc, @+$32                                  ; $781c: $30 $30

    adc $0f                                       ; $781e: $ce $0f
    dec c                                         ; $7820: $0d
    add hl, bc                                    ; $7821: $09
    dec c                                         ; $7822: $0d
    ld de, $430d                                  ; $7823: $11 $0d $43
    ld b, e                                       ; $7826: $43
    ld c, b                                       ; $7827: $48
    rrca                                          ; $7828: $0f
    adc a                                         ; $7829: $8f
    adc a                                         ; $782a: $8f
    sbc d                                         ; $782b: $9a
    ld bc, $0000                                  ; $782c: $01 $00 $00
    cp [hl]                                       ; $782f: $be
    inc d                                         ; $7830: $14
    db $e4                                        ; $7831: $e4
    db $e4                                        ; $7832: $e4
    adc [hl]                                      ; $7833: $8e
    adc [hl]                                      ; $7834: $8e
    adc h                                         ; $7835: $8c
    adc [hl]                                      ; $7836: $8e
    nop                                           ; $7837: $00
    sbc d                                         ; $7838: $9a
    sbc [hl]                                      ; $7839: $9e
    sbc d                                         ; $783a: $9a
    sbc [hl]                                      ; $783b: $9e
    sub d                                         ; $783c: $92
    sbc h                                         ; $783d: $9c
    push af                                       ; $783e: $f5
    xor b                                         ; $783f: $a8
    ld [$1cb4], sp                                ; $7840: $08 $b4 $1c
    and h                                         ; $7843: $a4
    cp h                                          ; $7844: $bc
    inc l                                         ; $7845: $2c
    cpl                                           ; $7846: $2f
    cp d                                          ; $7847: $ba
    db $10                                        ; $7848: $10
    ld a, l                                       ; $7849: $7d
    nop                                           ; $784a: $00
    jr z, @+$3c                                   ; $784b: $28 $3a

    jr c, @+$2a                                   ; $784d: $38 $28

    jr c, @+$09                                   ; $784f: $38 $07

    rlca                                          ; $7851: $07
    add e                                         ; $7852: $83
    nop                                           ; $7853: $00
    add e                                         ; $7854: $83
    ld b, e                                       ; $7855: $43
    jp $c303                                      ; $7856: $c3 $03 $c3


    and c                                         ; $7859: $a1
    pop hl                                        ; $785a: $e1
    ld d, c                                       ; $785b: $51
    nop                                           ; $785c: $00
    pop af                                        ; $785d: $f1
    xor c                                         ; $785e: $a9
    ld sp, hl                                     ; $785f: $f9
    push de                                       ; $7860: $d5
    db $fd                                        ; $7861: $fd
    ld b, h                                       ; $7862: $44
    ld b, h                                       ; $7863: $44
    call z, $cc00                                 ; $7864: $cc $00 $cc
    adc l                                         ; $7867: $8d
    adc l                                         ; $7868: $8d
    dec e                                         ; $7869: $1d
    dec e                                         ; $786a: $1d
    sbc l                                         ; $786b: $9d
    sbc l                                         ; $786c: $9d
    sub l                                         ; $786d: $95
    nop                                           ; $786e: $00
    sub l                                         ; $786f: $95
    or l                                          ; $7870: $b5
    or l                                          ; $7871: $b5
    and l                                         ; $7872: $a5
    and l                                         ; $7873: $a5
    xor b                                         ; $7874: $a8
    cp b                                          ; $7875: $b8
    add sp, $00                                   ; $7876: $e8 $00
    ld hl, sp-$18                                 ; $7878: $f8 $e8
    ld hl, sp-$24                                 ; $787a: $f8 $dc
    db $fc                                        ; $787c: $fc
    call z, $dcfc                                 ; $787d: $cc $fc $dc
    add b                                         ; $7880: $80
    ld [bc], a                                    ; $7881: $02
    nop                                           ; $7882: $00
    call nc, Call_000_38f4                        ; $7883: $d4 $f4 $38
    jr c, @+$2b                                   ; $7886: $38 $29

    add hl, sp                                    ; $7888: $39
    add hl, sp                                    ; $7889: $39
    nop                                           ; $788a: $00
    add hl, sp                                    ; $788b: $39
    ld sp, $6131                                  ; $788c: $31 $31 $61
    ld [hl], c                                    ; $788f: $71
    ld [hl], b                                    ; $7890: $70
    ld [hl], b                                    ; $7891: $70
    ld h, b                                       ; $7892: $60
    inc b                                         ; $7893: $04
    ld [hl], b                                    ; $7894: $70
    ld [hl], c                                    ; $7895: $71
    ld [hl], c                                    ; $7896: $71
    ld [c], a                                     ; $7897: $e2
    cp $e6                                        ; $7898: $fe $e6
    dec c                                         ; $789a: $0d
    ld [hl], l                                    ; $789b: $75
    ld a, a                                       ; $789c: $7f
    ld h, d                                       ; $789d: $62
    ld a, [hl-]                                   ; $789e: $3a
    ld d, [hl]                                    ; $789f: $56
    inc bc                                        ; $78a0: $03
    pop de                                        ; $78a1: $d1
    ld c, $e5                                     ; $78a2: $0e $e5
    push hl                                       ; $78a4: $e5
    push bc                                       ; $78a5: $c5
    ld bc, $4700                                  ; $78a6: $01 $00 $47
    ret nz                                        ; $78a9: $c0

    sbc $04                                       ; $78aa: $de $04
    ld l, d                                       ; $78ac: $6a
    add hl, de                                    ; $78ad: $19
    or $f6                                        ; $78ae: $f6 $f6
    sub $f6                                       ; $78b0: $d6 $f6
    or [hl]                                       ; $78b2: $b6
    or $00                                        ; $78b3: $f6 $00
    jp nc, $b2f2                                  ; $78b5: $d2 $f2 $b2

    ld a, [c]                                     ; $78b8: $f2
    db $db                                        ; $78b9: $db
    ei                                            ; $78ba: $fb
    xor l                                         ; $78bb: $ad
    db $fd                                        ; $78bc: $fd
    nop                                           ; $78bd: $00
    rst $10                                       ; $78be: $d7
    rst $38                                       ; $78bf: $ff
    ld h, c                                       ; $78c0: $61
    ld [hl], c                                    ; $78c1: $71
    ld [hl], c                                    ; $78c2: $71
    ld [hl], c                                    ; $78c3: $71
    ld l, d                                       ; $78c4: $6a
    ld a, d                                       ; $78c5: $7a
    ld [$7a72], sp                                ; $78c6: $08 $72 $7a
    ld a, d                                       ; $78c9: $7a
    ld a, d                                       ; $78ca: $7a
    call nz, Call_000_370f                        ; $78cb: $c4 $0f $37
    ccf                                           ; $78ce: $3f
    db $eb                                        ; $78cf: $eb
    ret c                                         ; $78d0: $d8

    jr nz, jr_095_78da                            ; $78d1: $20 $07

    or d                                          ; $78d3: $b2
    ld c, l                                       ; $78d4: $4d
    ei                                            ; $78d5: $fb
    ld l, h                                       ; $78d6: $6c
    ld b, e                                       ; $78d7: $43
    pop bc                                        ; $78d8: $c1
    rrca                                          ; $78d9: $0f

jr_095_78da:
    jp c, $ddde                                   ; $78da: $da $de $dd

    nop                                           ; $78dd: $00
    rst $18                                       ; $78de: $df
    rst $08                                       ; $78df: $cf
    rst $08                                       ; $78e0: $cf
    call $eecf                                    ; $78e1: $cd $cf $ee
    ld c, a                                       ; $78e4: $4f
    rst $30                                       ; $78e5: $f7
    nop                                           ; $78e6: $00
    and a                                         ; $78e7: $a7
    db $eb                                        ; $78e8: $eb
    ld b, e                                       ; $78e9: $43
    di                                            ; $78ea: $f3
    di                                            ; $78eb: $f3
    jr @+$1a                                      ; $78ec: $18 $18

    ld c, $00                                     ; $78ee: $0e $00
    ld c, $03                                     ; $78f0: $0e $03
    ld bc, $0055                                  ; $78f2: $01 $55 $00
    xor d                                         ; $78f5: $aa
    add b                                         ; $78f6: $80
    rst $10                                       ; $78f7: $d7
    inc b                                         ; $78f8: $04
    add $6f                                       ; $78f9: $c6 $6f
    rst $08                                       ; $78fb: $cf
    xor a                                         ; $78fc: $af
    rst $28                                       ; $78fd: $ef
    sbc d                                         ; $78fe: $9a
    add hl, bc                                    ; $78ff: $09
    xor e                                         ; $7900: $ab
    ld bc, $c100                                  ; $7901: $01 $00 $c1

jr_095_7904:
    add c                                         ; $7904: $81
    ld [$7540], a                                 ; $7905: $ea $40 $75
    jr nz, jr_095_7904                            ; $7908: $20 $fa

    ret nc                                        ; $790a: $d0

    nop                                           ; $790b: $00
    ld a, l                                       ; $790c: $7d
    ld hl, sp-$0f                                 ; $790d: $f8 $f1
    pop af                                        ; $790f: $f1
    sbc b                                         ; $7910: $98
    sbc b                                         ; $7911: $98
    inc e                                         ; $7912: $1c
    inc e                                         ; $7913: $1c
    db $10                                        ; $7914: $10
    ld c, $0e                                     ; $7915: $0e $0e
    add a                                         ; $7917: $87
    ld bc, $cd10                                  ; $7918: $01 $10 $cd
    call $ffdf                                    ; $791b: $cd $df $ff
    nop                                           ; $791e: $00
    ei                                            ; $791f: $fb
    ei                                            ; $7920: $fb
    ld hl, sp-$08                                 ; $7921: $f8 $f8
    ld [hl], h                                    ; $7923: $74
    ld a, h                                       ; $7924: $7c
    ld a, [hl-]                                   ; $7925: $3a
    ld a, $00                                     ; $7926: $3e $00
    dec e                                         ; $7928: $1d
    rra                                           ; $7929: $1f
    sbc [hl]                                      ; $792a: $9e
    sbc a                                         ; $792b: $9f
    rst $08                                       ; $792c: $cf
    rst $08                                       ; $792d: $cf
    xor [hl]                                      ; $792e: $ae
    cp $60                                        ; $792f: $fe $60
    push af                                       ; $7931: $f5
    call nc, Call_095_4606                        ; $7932: $d4 $06 $46
    add hl, bc                                    ; $7935: $09
    add b                                         ; $7936: $80
    add b                                         ; $7937: $80
    ld h, c                                       ; $7938: $61
    pop hl                                        ; $7939: $e1
    rst $18                                       ; $793a: $df
    ld [bc], a                                    ; $793b: $02
    rst $38                                       ; $793c: $ff
    call z, Call_095_48cc                         ; $793d: $cc $cc $48
    ld c, b                                       ; $7940: $48
    ld l, b                                       ; $7941: $68
    ld bc, $7800                                  ; $7942: $01 $00 $78
    dec bc                                        ; $7945: $0b
    ld a, b                                       ; $7946: $78
    ld sp, $3f31                                  ; $7947: $31 $31 $3f
    jp nz, $e700                                  ; $794a: $c2 $00 $e7

    ld bc, $5400                                  ; $794d: $01 $00 $54
    ld e, $d9                                     ; $7950: $1e $d9
    xor l                                         ; $7952: $ad
    rra                                           ; $7953: $1f
    jr nz, jr_095_798f                            ; $7954: $20 $39

jr_095_7956:
    pop de                                        ; $7956: $d1
    jr nz, jr_095_796a                            ; $7957: $20 $11

    ld b, b                                       ; $7959: $40
    ld l, $ef                                     ; $795a: $2e $ef
    ld b, l                                       ; $795c: $45
    ld b, b                                       ; $795d: $40
    ld e, $0b                                     ; $795e: $1e $0b
    ld a, [hl]                                    ; $7960: $7e
    ld a, a                                       ; $7961: $7f
    ld a, l                                       ; $7962: $7d
    ld a, a                                       ; $7963: $7f
    rst $00                                       ; $7964: $c7
    rla                                           ; $7965: $17
    ld d, l                                       ; $7966: $55
    rst $18                                       ; $7967: $df
    rla                                           ; $7968: $17
    db $f4                                        ; $7969: $f4

jr_095_796a:
    rla                                           ; $796a: $17
    ei                                            ; $796b: $fb
    rst $20                                       ; $796c: $e7
    rla                                           ; $796d: $17
    sbc h                                         ; $796e: $9c
    daa                                           ; $796f: $27
    ld b, b                                       ; $7970: $40
    ld a, $7c                                     ; $7971: $3e $7c
    ld a, [de]                                    ; $7973: $1a
    inc b                                         ; $7974: $04
    jr z, jr_095_7956                             ; $7975: $28 $df

    ld c, h                                       ; $7977: $4c
    dec b                                         ; $7978: $05
    db $10                                        ; $7979: $10
    ld c, $c0                                     ; $797a: $0e $c0
    sub d                                         ; $797c: $92
    ld a, [bc]                                    ; $797d: $0a
    or c                                          ; $797e: $b1
    ld c, [hl]                                    ; $797f: $4e
    ret nz                                        ; $7980: $c0

    ld b, $00                                     ; $7981: $06 $00
    dec b                                         ; $7983: $05
    ld c, h                                       ; $7984: $4c
    rst $38                                       ; $7985: $ff
    ld bc, $b560                                  ; $7986: $01 $60 $b5
    rlc d                                         ; $7989: $cb $02
    ld e, b                                       ; $798b: $58
    jr nz, jr_095_7996                            ; $798c: $20 $08

    cp a                                          ; $798e: $bf

jr_095_798f:
    rst $38                                       ; $798f: $ff
    nop                                           ; $7990: $00
    ld a, a                                       ; $7991: $7f
    rst $38                                       ; $7992: $ff
    db $dd                                        ; $7993: $dd
    rst $38                                       ; $7994: $ff
    ld a, [bc]                                    ; $7995: $0a

jr_095_7996:
    rst $38                                       ; $7996: $ff
    inc b                                         ; $7997: $04
    rst $38                                       ; $7998: $ff
    ld b, b                                       ; $7999: $40
    nop                                           ; $799a: $00
    cpl                                           ; $799b: $2f
    db $10                                        ; $799c: $10
    cp $ff                                        ; $799d: $fe $ff
    push af                                       ; $799f: $f5
    rst $38                                       ; $79a0: $ff
    ld l, e                                       ; $79a1: $6b
    rst $38                                       ; $79a2: $ff
    nop                                           ; $79a3: $00
    or l                                          ; $79a4: $b5
    rst $38                                       ; $79a5: $ff
    ld l, b                                       ; $79a6: $68
    rst $38                                       ; $79a7: $ff
    jr nc, @+$01                                  ; $79a8: $30 $ff

    add b                                         ; $79aa: $80
    rst $38                                       ; $79ab: $ff
    nop                                           ; $79ac: $00
    ld e, e                                       ; $79ad: $5b
    add b                                         ; $79ae: $80
    push af                                       ; $79af: $f5
    add b                                         ; $79b0: $80
    ld h, b                                       ; $79b1: $60
    sbc a                                         ; $79b2: $9f
    rst $28                                       ; $79b3: $ef
    sbc a                                         ; $79b4: $9f
    nop                                           ; $79b5: $00
    ld a, [hl+]                                   ; $79b6: $2a
    sub h                                         ; $79b7: $94
    push bc                                       ; $79b8: $c5
    sbc b                                         ; $79b9: $98
    ld l, d                                       ; $79ba: $6a
    sub c                                         ; $79bb: $91
    nop                                           ; $79bc: $00
    rst $38                                       ; $79bd: $ff
    ld [$006e], sp                                ; $79be: $08 $6e $00
    db $db                                        ; $79c1: $db
    nop                                           ; $79c2: $00
    jr z, @+$0a                                   ; $79c3: $28 $08

    cp e                                          ; $79c5: $bb
    ld b, b                                       ; $79c6: $40
    ld d, l                                       ; $79c7: $55
    nop                                           ; $79c8: $00
    add b                                         ; $79c9: $80
    cp d                                          ; $79ca: $ba
    ld bc, $90ef                                  ; $79cb: $01 $ef $90
    ld b, l                                       ; $79ce: $45
    sbc b                                         ; $79cf: $98
    ld [$9000], a                                 ; $79d0: $ea $00 $90
    ld h, a                                       ; $79d3: $67
    sbc b                                         ; $79d4: $98
    db $eb                                        ; $79d5: $eb
    sub b                                         ; $79d6: $90
    ld b, h                                       ; $79d7: $44
    sub d                                         ; $79d8: $92
    db $ed                                        ; $79d9: $ed
    nop                                           ; $79da: $00
    sub b                                         ; $79db: $90
    ld c, [hl]                                    ; $79dc: $4e
    sub b                                         ; $79dd: $90
    rst $28                                       ; $79de: $ef
    nop                                           ; $79df: $00
    ld d, d                                       ; $79e0: $52
    and h                                         ; $79e1: $a4
    xor l                                         ; $79e2: $ad
    nop                                           ; $79e3: $00
    ld b, b                                       ; $79e4: $40
    ld c, d                                       ; $79e5: $4a
    sub c                                         ; $79e6: $91
    dec [hl]                                      ; $79e7: $35
    ld b, d                                       ; $79e8: $42
    ld a, [$5501]                                 ; $79e9: $fa $01 $55
    nop                                           ; $79ec: $00
    ld [hl+], a                                   ; $79ed: $22
    xor e                                         ; $79ee: $ab
    ld b, h                                       ; $79ef: $44
    push hl                                       ; $79f0: $e5
    sub b                                         ; $79f1: $90
    ld c, d                                       ; $79f2: $4a
    sub l                                         ; $79f3: $95
    rst $20                                       ; $79f4: $e7
    nop                                           ; $79f5: $00
    sbc b                                         ; $79f6: $98
    ld h, [hl]                                    ; $79f7: $66
    sub b                                         ; $79f8: $90
    xor e                                         ; $79f9: $ab
    sub b                                         ; $79fa: $90
    ld h, [hl]                                    ; $79fb: $66
    sub c                                         ; $79fc: $91
    xor l                                         ; $79fd: $ad
    nop                                           ; $79fe: $00
    sub d                                         ; $79ff: $92
    ld l, d                                       ; $7a00: $6a
    sub h                                         ; $7a01: $94
    halt                                          ; $7a02: $76
    adc b                                         ; $7a03: $88
    xor e                                         ; $7a04: $ab
    ld d, b                                       ; $7a05: $50
    ld e, [hl]                                    ; $7a06: $5e
    nop                                           ; $7a07: $00
    ld hl, $43bd                                  ; $7a08: $21 $bd $43
    ld l, d                                       ; $7a0b: $6a
    add a                                         ; $7a0c: $87
    push de                                       ; $7a0d: $d5
    ld c, $6a                                     ; $7a0e: $0e $6a
    db $10                                        ; $7a10: $10
    inc e                                         ; $7a11: $1c
    sub $39                                       ; $7a12: $d6 $39

jr_095_7a14:
    ld [hl], b                                    ; $7a14: $70
    jr jr_095_7a14                                ; $7a15: $18 $fd

    rst $38                                       ; $7a17: $ff
    cp e                                          ; $7a18: $bb
    rst $38                                       ; $7a19: $ff
    dec d                                         ; $7a1a: $15
    ld [hl], h                                    ; $7a1b: $74
    rst $38                                       ; $7a1c: $ff
    xor b                                         ; $7a1d: $a8
    add b                                         ; $7a1e: $80
    jr nz, @+$01                                  ; $7a1f: $20 $ff

    stop                                          ; $7a21: $10 $00
    ld a, [$0080]                                 ; $7a23: $fa $80 $00
    ld l, c                                       ; $7a26: $69
    ld e, d                                       ; $7a27: $5a
    sub d                                         ; $7a28: $92
    nop                                           ; $7a29: $00
    and b                                         ; $7a2a: $a0
    ld c, b                                       ; $7a2b: $48
    dec b                                         ; $7a2c: $05
    and b                                         ; $7a2d: $a0
    nop                                           ; $7a2e: $00
    and l                                         ; $7a2f: $a5
    rlc d                                         ; $7a30: $cb $02
    ld e, b                                       ; $7a32: $58
    inc b                                         ; $7a33: $04
    nop                                           ; $7a34: $00
    rst $38                                       ; $7a35: $ff
    ld d, l                                       ; $7a36: $55
    nop                                           ; $7a37: $00
    xor a                                         ; $7a38: $af
    sub b                                         ; $7a39: $90
    db $10                                        ; $7a3a: $10
    cp d                                          ; $7a3b: $ba
    ld b, l                                       ; $7a3c: $45
    nop                                           ; $7a3d: $00
    ld l, l                                       ; $7a3e: $6d
    add d                                         ; $7a3f: $82
    xor e                                         ; $7a40: $ab
    inc d                                         ; $7a41: $14
    ld bc, $daff                                  ; $7a42: $01 $ff $da
    ld bc, $7f00                                  ; $7a45: $01 $00 $7f
    ld bc, $c136                                  ; $7a48: $01 $36 $c1
    ld l, a                                       ; $7a4b: $6f
    add c                                         ; $7a4c: $81
    call nc, Call_000_0009                        ; $7a4d: $d4 $09 $00
    rst $20                                       ; $7a50: $e7
    add hl, de                                    ; $7a51: $19
    ld d, [hl]                                    ; $7a52: $56
    add hl, sp                                    ; $7a53: $39
    ld bc, $20ff                                  ; $7a54: $01 $ff $20
    rst $18                                       ; $7a57: $df
    nop                                           ; $7a58: $00
    inc de                                        ; $7a59: $13
    db $ed                                        ; $7a5a: $ed
    ld c, b                                       ; $7a5b: $48
    or a                                          ; $7a5c: $b7
    and b                                         ; $7a5d: $a0
    ld e, a                                       ; $7a5e: $5f
    pop de                                        ; $7a5f: $d1
    ld l, $40                                     ; $7a60: $2e $40
    ld a, [$0041]                                 ; $7a62: $fa $41 $00
    or $08                                        ; $7a65: $f6 $08
    xor e                                         ; $7a67: $ab
    db $10                                        ; $7a68: $10
    ld e, [hl]                                    ; $7a69: $5e
    ld hl, $ad00                                  ; $7a6a: $21 $00 $ad
    ld b, e                                       ; $7a6d: $43
    ld e, d                                       ; $7a6e: $5a
    add a                                         ; $7a6f: $87
    push af                                       ; $7a70: $f5
    ld c, $aa                                     ; $7a71: $0e $aa
    dec e                                         ; $7a73: $1d
    nop                                           ; $7a74: $00
    ld d, l                                       ; $7a75: $55
    ld a, [hl-]                                   ; $7a76: $3a
    and e                                         ; $7a77: $a3
    ld a, c                                       ; $7a78: $79
    ld d, [hl]                                    ; $7a79: $56
    jp hl                                         ; $7a7a: $e9


    and l                                         ; $7a7b: $a5
    ret                                           ; $7a7c: $c9


    nop                                           ; $7a7d: $00
    ld d, [hl]                                    ; $7a7e: $56
    adc c                                         ; $7a7f: $89
    and e                                         ; $7a80: $a3
    add hl, de                                    ; $7a81: $19
    ld h, [hl]                                    ; $7a82: $66
    adc c                                         ; $7a83: $89
    push de                                       ; $7a84: $d5

Call_095_7a85:
    add hl, bc                                    ; $7a85: $09
    nop                                           ; $7a86: $00
    ld [hl-], a                                   ; $7a87: $32
    ld c, c                                       ; $7a88: $49
    cp $01                                        ; $7a89: $fe $01
    rst $38                                       ; $7a8b: $ff
    nop                                           ; $7a8c: $00
    ld a, [$0001]                                 ; $7a8d: $fa $01 $00
    rst $30                                       ; $7a90: $f7
    nop                                           ; $7a91: $00
    xor $01                                       ; $7a92: $ee $01
    ld d, a                                       ; $7a94: $57
    nop                                           ; $7a95: $00
    and l                                         ; $7a96: $a5
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    dec bc                                        ; $7a99: $0b
    nop                                           ; $7a9a: $00
    xor d                                         ; $7a9b: $aa
    ld [hl], b                                    ; $7a9c: $70
    ld e, l                                       ; $7a9d: $5d
    ldh [$b6], a                                  ; $7a9e: $e0 $b6

jr_095_7aa0:
    pop bc                                        ; $7aa0: $c1
    nop                                           ; $7aa1: $00
    ld e, c                                       ; $7aa2: $59
    and d                                         ; $7aa3: $a2
    or [hl]                                       ; $7aa4: $b6
    nop                                           ; $7aa5: $00
    dec l                                         ; $7aa6: $2d
    ld b, b                                       ; $7aa7: $40
    push af                                       ; $7aa8: $f5
    ld a, [bc]                                    ; $7aa9: $0a
    nop                                           ; $7aaa: $00
    xor [hl]                                      ; $7aab: $ae
    ld de, $09d7                                  ; $7aac: $11 $d7 $09
    ld h, h                                       ; $7aaf: $64
    sbc c                                         ; $7ab0: $99
    or a                                          ; $7ab1: $b7
    add hl, bc                                    ; $7ab2: $09
    nop                                           ; $7ab3: $00
    ld h, h                                       ; $7ab4: $64
    add hl, de                                    ; $7ab5: $19
    sub a                                         ; $7ab6: $97
    add hl, hl                                    ; $7ab7: $29
    ld h, h                                       ; $7ab8: $64
    add hl, bc                                    ; $7ab9: $09
    ld d, a                                       ; $7aba: $57
    adc c                                         ; $7abb: $89
    inc b                                         ; $7abc: $04
    ld [c], a                                     ; $7abd: $e2
    add hl, de                                    ; $7abe: $19
    dec b                                         ; $7abf: $05
    nop                                           ; $7ac0: $00
    ld bc, $2002                                  ; $7ac1: $01 $02 $20
    add hl, hl                                    ; $7ac4: $29
    nop                                           ; $7ac5: $00
    ld h, b                                       ; $7ac6: $60
    ld a, l                                       ; $7ac7: $7d
    jr jr_095_7acb                                ; $7ac8: $18 $01

    and b                                         ; $7aca: $a0

jr_095_7acb:
    jr z, jr_095_7aa0                             ; $7acb: $28 $d3

    rst $28                                       ; $7acd: $ef
    add c                                         ; $7ace: $81
    rst $38                                       ; $7acf: $ff
    jp $8128                                      ; $7ad0: $c3 $28 $81


    add c                                         ; $7ad3: $81
    ld d, b                                       ; $7ad4: $50
    ld h, c                                       ; $7ad5: $61
    or b                                          ; $7ad6: $b0
    ld h, d                                       ; $7ad7: $62
    ld bc, $ff80                                  ; $7ad8: $01 $80 $ff
    ld [bc], a                                    ; $7adb: $02
    nop                                           ; $7adc: $00
    db $fd                                        ; $7add: $fd
    add h                                         ; $7ade: $84
    ei                                            ; $7adf: $fb
    ld b, c                                       ; $7ae0: $41
    cp [hl]                                       ; $7ae1: $be
    sub e                                         ; $7ae2: $93
    ld l, h                                       ; $7ae3: $6c
    dec l                                         ; $7ae4: $2d
    nop                                           ; $7ae5: $00
    jp nc, $a45b                                  ; $7ae6: $d2 $5b $a4

    jr z, @-$27                                   ; $7ae9: $28 $d7

    inc b                                         ; $7aeb: $04
    ei                                            ; $7aec: $fb
    ld d, b                                       ; $7aed: $50
    nop                                           ; $7aee: $00
    xor a                                         ; $7aef: $af
    cp d                                          ; $7af0: $ba
    ld b, l                                       ; $7af1: $45
    ld l, h                                       ; $7af2: $6c
    add e                                         ; $7af3: $83
    sbc $01                                       ; $7af4: $de $01
    xor l                                         ; $7af6: $ad
    jr nz, jr_095_7afb                            ; $7af7: $20 $02

    ld e, a                                       ; $7af9: $5f
    ld e, d                                       ; $7afa: $5a

jr_095_7afb:
    ld bc, $ff00                                  ; $7afb: $01 $00 $ff
    ld b, h                                       ; $7afe: $44
    cp e                                          ; $7aff: $bb
    dec hl                                        ; $7b00: $2b
    nop                                           ; $7b01: $00
    call nc, $a857                                ; $7b02: $d4 $57 $a8
    cp a                                          ; $7b05: $bf
    ld b, b                                       ; $7b06: $40
    ld a, [hl]                                    ; $7b07: $7e
    add b                                         ; $7b08: $80
    db $fd                                        ; $7b09: $fd
    add b                                         ; $7b0a: $80
    or b                                          ; $7b0b: $b0
    nop                                           ; $7b0c: $00
    ld a, a                                       ; $7b0d: $7f
    add b                                         ; $7b0e: $80
    rst $38                                       ; $7b0f: $ff
    nop                                           ; $7b10: $00
    ld a, [hl]                                    ; $7b11: $7e
    add b                                         ; $7b12: $80
    ld a, [$0000]                                 ; $7b13: $fa $00 $00
    ld d, h                                       ; $7b16: $54
    add b                                         ; $7b17: $80
    xor b                                         ; $7b18: $a8
    nop                                           ; $7b19: $00
    ret c                                         ; $7b1a: $d8

    nop                                           ; $7b1b: $00
    add b                                         ; $7b1c: $80
    nop                                           ; $7b1d: $00
    rst $38                                       ; $7b1e: $ff
    ld a, l                                       ; $7b1f: $7d
    add b                                         ; $7b20: $80
    ret nz                                        ; $7b21: $c0

    cp b                                          ; $7b22: $b8
    ld l, b                                       ; $7b23: $68
    cp b                                          ; $7b24: $b8
    push de                                       ; $7b25: $d5
    nop                                           ; $7b26: $00
    cp b                                          ; $7b27: $b8
    ld a, e                                       ; $7b28: $7b
    or l                                          ; $7b29: $b5
    push hl                                       ; $7b2a: $e5
    cp e                                          ; $7b2b: $bb
    ld a, c                                       ; $7b2c: $79
    cp a                                          ; $7b2d: $bf
    ld bc, $ff00                                  ; $7b2e: $01 $00 $ff
    cp $01                                        ; $7b31: $fe $01
    inc bc                                        ; $7b33: $03
    db $fd                                        ; $7b34: $fd
    xor d                                         ; $7b35: $aa
    db $fd                                        ; $7b36: $fd
    ld d, a                                       ; $7b37: $57
    nop                                           ; $7b38: $00
    db $fd                                        ; $7b39: $fd
    cp $fd                                        ; $7b3a: $fe $fd
    rst $38                                       ; $7b3c: $ff
    db $ed                                        ; $7b3d: $ed

jr_095_7b3e:
    add $85                                       ; $7b3e: $c6 $85
    and b                                         ; $7b40: $a0
    ld a, [bc]                                    ; $7b41: $0a
    nop                                           ; $7b42: $00
    ret nz                                        ; $7b43: $c0

    nop                                           ; $7b44: $00
    add b                                         ; $7b45: $80
    ld [bc], a                                    ; $7b46: $02
    db $10                                        ; $7b47: $10
    sub h                                         ; $7b48: $94
    ld c, e                                       ; $7b49: $4b
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    rst $38                                       ; $7b4d: $ff
    rst $08                                       ; $7b4e: $cf
    xor a                                         ; $7b4f: $af
    ld b, a                                       ; $7b50: $47
    and a                                         ; $7b51: $a7
    rst $10                                       ; $7b52: $d7
    and e                                         ; $7b53: $a3
    ld c, c                                       ; $7b54: $49

jr_095_7b55:
    nop                                           ; $7b55: $00
    or a                                          ; $7b56: $b7
    push de                                       ; $7b57: $d5
    cp e                                          ; $7b58: $bb
    ld c, e                                       ; $7b59: $4b
    cp a                                          ; $7b5a: $bf
    pop bc                                        ; $7b5b: $c1
    cp a                                          ; $7b5c: $bf
    ld a, a                                       ; $7b5d: $7f
    nop                                           ; $7b5e: $00
    add b                                         ; $7b5f: $80
    add e                                         ; $7b60: $83
    add l                                         ; $7b61: $85
    add d                                         ; $7b62: $82
    ld b, l                                       ; $7b63: $45
    ld d, e                                       ; $7b64: $53
    xor l                                         ; $7b65: $ad
    xor d                                         ; $7b66: $aa
    jr nz, jr_095_7b3e                            ; $7b67: $20 $d5

    ld d, e                                       ; $7b69: $53
    inc [hl]                                      ; $7b6a: $34
    nop                                           ; $7b6b: $00
    di                                            ; $7b6c: $f3
    db $fd                                        ; $7b6d: $fd
    cp $01                                        ; $7b6e: $fe $01
    sbc a                                         ; $7b70: $9f
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    cpl                                           ; $7b73: $2f
    nop                                           ; $7b74: $00
    rra                                           ; $7b75: $1f
    nop                                           ; $7b76: $00
    cp a                                          ; $7b77: $bf
    nop                                           ; $7b78: $00
    ld e, a                                       ; $7b79: $5f
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    ld [hl], a                                    ; $7b7c: $77
    nop                                           ; $7b7d: $00
    ld l, l                                       ; $7b7e: $6d
    nop                                           ; $7b7f: $00
    ld d, $00                                     ; $7b80: $16 $00
    db $eb                                        ; $7b82: $eb
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    rst $10                                       ; $7b85: $d7
    nop                                           ; $7b86: $00
    and a                                         ; $7b87: $a7
    nop                                           ; $7b88: $00
    ld c, e                                       ; $7b89: $4b
    nop                                           ; $7b8a: $00
    sub a                                         ; $7b8b: $97
    nop                                           ; $7b8c: $00
    nop                                           ; $7b8d: $00
    rrca                                          ; $7b8e: $0f
    nop                                           ; $7b8f: $00
    ld b, $00                                     ; $7b90: $06 $00
    dec b                                         ; $7b92: $05
    nop                                           ; $7b93: $00
    inc h                                         ; $7b94: $24
    ld de, $4000                                  ; $7b95: $11 $00 $40
    nop                                           ; $7b98: $00
    ld bc, $a018                                  ; $7b99: $01 $18 $a0
    nop                                           ; $7b9c: $00
    db $fc                                        ; $7b9d: $fc
    ld hl, sp+$01                                 ; $7b9e: $f8 $01
    ld [$ffae], sp                                ; $7ba0: $08 $ae $ff
    db $fd                                        ; $7ba3: $fd
    adc [hl]                                      ; $7ba4: $8e
    ld [bc], a                                    ; $7ba5: $02
    jr jr_095_7b55                                ; $7ba6: $18 $ad

    sbc $dc                                       ; $7ba8: $de $dc
    ld bc, $8caf                                  ; $7baa: $01 $af $8c
    rst $38                                       ; $7bad: $ff
    add c                                         ; $7bae: $81
    rst $38                                       ; $7baf: $ff
    ld a, [hl]                                    ; $7bb0: $7e
    add c                                         ; $7bb1: $81
    ld [bc], a                                    ; $7bb2: $02
    jr jr_095_7bf5                                ; $7bb3: $18 $40

    add c                                         ; $7bb5: $81
    inc c                                         ; $7bb6: $0c
    nop                                           ; $7bb7: $00
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    and l                                         ; $7bba: $a5
    sbc b                                         ; $7bbb: $98
    ld l, a                                       ; $7bbc: $6f
    sub b                                         ; $7bbd: $90
    nop                                           ; $7bbe: $00
    cp $81                                        ; $7bbf: $fe $81
    ld d, l                                       ; $7bc1: $55
    add e                                         ; $7bc2: $83
    ld [$5087], a                                 ; $7bc3: $ea $87 $50
    adc a                                         ; $7bc6: $8f
    nop                                           ; $7bc7: $00
    db $fd                                        ; $7bc8: $fd
    add b                                         ; $7bc9: $80
    ld a, d                                       ; $7bca: $7a
    add b                                         ; $7bcb: $80
    xor l                                         ; $7bcc: $ad
    ld [hl], d                                    ; $7bcd: $72
    ld e, d                                       ; $7bce: $5a
    db $e4                                        ; $7bcf: $e4
    nop                                           ; $7bd0: $00
    xor [hl]                                      ; $7bd1: $ae
    pop bc                                        ; $7bd2: $c1
    ld d, e                                       ; $7bd3: $53
    adc b                                         ; $7bd4: $88
    and h                                         ; $7bd5: $a4
    ld [de], a                                    ; $7bd6: $12
    nop                                           ; $7bd7: $00
    rst $38                                       ; $7bd8: $ff
    nop                                           ; $7bd9: $00
    rst $28                                       ; $7bda: $ef
    nop                                           ; $7bdb: $00
    or a                                          ; $7bdc: $b7
    nop                                           ; $7bdd: $00
    jp $95ff                                      ; $7bde: $c3 $ff $95


    db $eb                                        ; $7be1: $eb
    add b                                         ; $7be2: $80
    add h                                         ; $7be3: $84
    ld c, d                                       ; $7be4: $4a
    add b                                         ; $7be5: $80
    rst $38                                       ; $7be6: $ff
    adc c                                         ; $7be7: $89
    or $af                                        ; $7be8: $f6 $af
    rst $18                                       ; $7bea: $df
    add [hl]                                      ; $7beb: $86
    nop                                           ; $7bec: $00
    rst $38                                       ; $7bed: $ff
    adc e                                         ; $7bee: $8b
    rst $30                                       ; $7bef: $f7
    and c                                         ; $7bf0: $a1
    rst $18                                       ; $7bf1: $df
    sub d                                         ; $7bf2: $92
    db $fd                                        ; $7bf3: $fd
    reti                                          ; $7bf4: $d9


jr_095_7bf5:
    nop                                           ; $7bf5: $00
    cp [hl]                                       ; $7bf6: $be
    xor b                                         ; $7bf7: $a8
    ld d, a                                       ; $7bf8: $57
    ld b, b                                       ; $7bf9: $40
    cp a                                          ; $7bfa: $bf
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    ld c, b                                       ; $7bfd: $48
    nop                                           ; $7bfe: $00
    rst $38                                       ; $7bff: $ff
    jr nz, @+$01                                  ; $7c00: $20 $ff

    adc c                                         ; $7c02: $89
    rst $38                                       ; $7c03: $ff
    call nz, Call_095_60ff                        ; $7c04: $c4 $ff $60
    nop                                           ; $7c07: $00
    rst $38                                       ; $7c08: $ff
    or h                                          ; $7c09: $b4
    rst $18                                       ; $7c0a: $df
    sub d                                         ; $7c0b: $92
    rst $38                                       ; $7c0c: $ff
    cp c                                          ; $7c0d: $b9
    rst $18                                       ; $7c0e: $df
    sub b                                         ; $7c0f: $90
    nop                                           ; $7c10: $00
    rst $38                                       ; $7c11: $ff
    sub d                                         ; $7c12: $92
    rst $38                                       ; $7c13: $ff
    or c                                          ; $7c14: $b1
    rst $18                                       ; $7c15: $df
    ret c                                         ; $7c16: $d8

    cp a                                          ; $7c17: $bf
    or h                                          ; $7c18: $b4
    nop                                           ; $7c19: $00
    rst $18                                       ; $7c1a: $df
    or b                                          ; $7c1b: $b0
    ld a, a                                       ; $7c1c: $7f
    jr @+$01                                      ; $7c1d: $18 $ff

    inc c                                         ; $7c1f: $0c
    rst $38                                       ; $7c20: $ff
    and [hl]                                      ; $7c21: $a6
    nop                                           ; $7c22: $00
    rst $18                                       ; $7c23: $df
    ld d, e                                       ; $7c24: $53
    rst $28                                       ; $7c25: $ef
    add hl, hl                                    ; $7c26: $29
    rst $30                                       ; $7c27: $f7
    sub b                                         ; $7c28: $90
    rst $38                                       ; $7c29: $ff
    add hl, bc                                    ; $7c2a: $09
    nop                                           ; $7c2b: $00
    cp $d1                                        ; $7c2c: $fe $d1
    cp a                                          ; $7c2e: $bf
    sub b                                         ; $7c2f: $90
    rst $38                                       ; $7c30: $ff
    jp nc, $f1bf                                  ; $7c31: $d2 $bf $f1

    nop                                           ; $7c34: $00
    sbc a                                         ; $7c35: $9f
    ret c                                         ; $7c36: $d8

    cp a                                          ; $7c37: $bf
    or b                                          ; $7c38: $b0
    rst $18                                       ; $7c39: $df
    jp nc, $91bf                                  ; $7c3a: $d2 $bf $91

    and b                                         ; $7c3d: $a0
    call nz, $8a02                                ; $7c3e: $c4 $02 $8a
    jr z, jr_095_7c45                             ; $7c41: $28 $02

    jr nz, @+$01                                  ; $7c43: $20 $ff

jr_095_7c45:
    ld bc, $88ff                                  ; $7c45: $01 $ff $88
    add b                                         ; $7c48: $80
    ld b, h                                       ; $7c49: $44
    nop                                           ; $7c4a: $00
    ld [de], a                                    ; $7c4b: $12
    rst $38                                       ; $7c4c: $ff
    ld a, c                                       ; $7c4d: $79
    ld [bc], a                                    ; $7c4e: $02
    rst $10                                       ; $7c4f: $d7
    nop                                           ; $7c50: $00
    xor l                                         ; $7c51: $ad
    nop                                           ; $7c52: $00
    ld [bc], a                                    ; $7c53: $02
    ld e, d                                       ; $7c54: $5a
    inc b                                         ; $7c55: $04
    or l                                          ; $7c56: $b5
    ld b, b                                       ; $7c57: $40
    nop                                           ; $7c58: $00
    rst $38                                       ; $7c59: $ff
    ld c, e                                       ; $7c5a: $4b
    ld bc, $ad00                                  ; $7c5b: $01 $00 $ad
    nop                                           ; $7c5e: $00
    ld d, a                                       ; $7c5f: $57
    add hl, hl                                    ; $7c60: $29
    or d                                          ; $7c61: $b2
    ld c, c                                       ; $7c62: $49
    cp b                                          ; $7c63: $b8
    add hl, bc                                    ; $7c64: $09
    nop                                           ; $7c65: $00
    ld d, l                                       ; $7c66: $55
    add hl, hl                                    ; $7c67: $29
    ld [bc], a                                    ; $7c68: $02
    ld sp, hl                                     ; $7c69: $f9
    or a                                          ; $7c6a: $b7
    ld bc, $01ee                                  ; $7c6b: $01 $ee $01
    nop                                           ; $7c6e: $00
    nop                                           ; $7c6f: $00
    ret nz                                        ; $7c70: $c0

    ld a, a                                       ; $7c71: $7f
    add b                                         ; $7c72: $80
    ld a, [hl+]                                   ; $7c73: $2a
    pop bc                                        ; $7c74: $c1
    ld a, l                                       ; $7c75: $7d
    add d                                         ; $7c76: $82
    nop                                           ; $7c77: $00
    scf                                           ; $7c78: $37
    ret nz                                        ; $7c79: $c0

    ld l, l                                       ; $7c7a: $6d
    sub b                                         ; $7c7b: $90
    scf                                           ; $7c7c: $37
    ret nz                                        ; $7c7d: $c0

    ld a, l                                       ; $7c7e: $7d
    add d                                         ; $7c7f: $82
    nop                                           ; $7c80: $00
    add hl, bc                                    ; $7c81: $09
    rlca                                          ; $7c82: $07
    db $fc                                        ; $7c83: $fc
    inc bc                                        ; $7c84: $03
    reti                                          ; $7c85: $d9


    rlca                                          ; $7c86: $07
    ld l, h                                       ; $7c87: $6c
    inc de                                        ; $7c88: $13
    nop                                           ; $7c89: $00
    ret                                           ; $7c8a: $c9


    rlca                                          ; $7c8b: $07
    ld a, h                                       ; $7c8c: $7c
    add e                                         ; $7c8d: $83
    ld c, c                                       ; $7c8e: $49
    daa                                           ; $7c8f: $27
    cp h                                          ; $7c90: $bc
    ld b, e                                       ; $7c91: $43
    nop                                           ; $7c92: $00
    inc b                                         ; $7c93: $04
    ei                                            ; $7c94: $fb
    xor e                                         ; $7c95: $ab
    ld d, h                                       ; $7c96: $54
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    ld [$40ff], sp                                ; $7c99: $08 $ff $40
    ld b, h                                       ; $7c9c: $44
    sub d                                         ; $7c9d: $92
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    rst $38                                       ; $7ca0: $ff
    sub b                                         ; $7ca1: $90
    rst $38                                       ; $7ca2: $ff
    adc c                                         ; $7ca3: $89
    ld [hl], a                                    ; $7ca4: $77
    nop                                           ; $7ca5: $00
    dec d                                         ; $7ca6: $15
    db $eb                                        ; $7ca7: $eb
    ei                                            ; $7ca8: $fb
    db $fd                                        ; $7ca9: $fd
    add hl, bc                                    ; $7caa: $09
    rst $38                                       ; $7cab: $ff
    ld c, e                                       ; $7cac: $4b
    db $fd                                        ; $7cad: $fd
    nop                                           ; $7cae: $00
    dec l                                         ; $7caf: $2d
    ei                                            ; $7cb0: $fb
    adc c                                         ; $7cb1: $89
    rst $38                                       ; $7cb2: $ff
    dec bc                                        ; $7cb3: $0b
    db $fd                                        ; $7cb4: $fd
    dec l                                         ; $7cb5: $2d
    ret nz                                        ; $7cb6: $c0

    nop                                           ; $7cb7: $00
    ld l, d                                       ; $7cb8: $6a
    add l                                         ; $7cb9: $85
    dec sp                                        ; $7cba: $3b
    ret nz                                        ; $7cbb: $c0

    ld l, d                                       ; $7cbc: $6a
    sub h                                         ; $7cbd: $94
    ccf                                           ; $7cbe: $3f
    ret nz                                        ; $7cbf: $c0

    jr nz, jr_095_7d17                            ; $7cc0: $20 $55

    xor d                                         ; $7cc2: $aa
    ld a, $0b                                     ; $7cc3: $3e $0b
    reti                                          ; $7cc5: $d9


    daa                                           ; $7cc6: $27
    xor h                                         ; $7cc7: $ac
    inc bc                                        ; $7cc8: $03
    ld sp, hl                                     ; $7cc9: $f9
    nop                                           ; $7cca: $00
    rlca                                          ; $7ccb: $07
    xor h                                         ; $7ccc: $ac
    inc de                                        ; $7ccd: $13
    ld sp, hl                                     ; $7cce: $f9
    rlca                                          ; $7ccf: $07
    ld d, h                                       ; $7cd0: $54
    xor e                                         ; $7cd1: $ab
    ld bc, $7da2                                  ; $7cd2: $01 $a2 $7d
    inc bc                                        ; $7cd5: $03
    ld c, d                                       ; $7cd6: $4a
    ld [hl+], a                                   ; $7cd7: $22
    ld bc, $ff12                                  ; $7cd8: $01 $12 $ff
    ld b, b                                       ; $7cdb: $40
    ld b, d                                       ; $7cdc: $42
    nop                                           ; $7cdd: $00
    add h                                         ; $7cde: $84
    nop                                           ; $7cdf: $00
    rst $38                                       ; $7ce0: $ff
    jp nz, Jump_095_64ff                          ; $7ce1: $c2 $ff $64

    rst $38                                       ; $7ce4: $ff
    ld c, l                                       ; $7ce5: $4d
    ei                                            ; $7ce6: $fb
    dec hl                                        ; $7ce7: $2b
    xor d                                         ; $7ce8: $aa
    ld a, $00                                     ; $7ce9: $3e $00
    dec e                                         ; $7ceb: $1d
    inc a                                         ; $7cec: $3c
    nop                                           ; $7ced: $00
    ld c, c                                       ; $7cee: $49
    ld a, $00                                     ; $7cef: $3e $00
    adc c                                         ; $7cf1: $89
    and e                                         ; $7cf2: $a3
    add hl, bc                                    ; $7cf3: $09
    nop                                           ; $7cf4: $00
    nop                                           ; $7cf5: $00
    rst $18                                       ; $7cf6: $df
    jr nz, jr_095_7d6c                            ; $7cf7: $20 $73

    add b                                         ; $7cf9: $80
    xor a                                         ; $7cfa: $af
    ld b, b                                       ; $7cfb: $40
    ld a, [$0804]                                 ; $7cfc: $fa $04 $08
    sbc h                                         ; $7cff: $9c
    nop                                           ; $7d00: $00
    ld d, a                                       ; $7d01: $57
    ld [$0880], sp                                ; $7d02: $08 $80 $08
    ld a, c                                       ; $7d05: $79
    add a                                         ; $7d06: $87
    db $fc                                        ; $7d07: $fc
    ld [$2903], sp                                ; $7d08: $08 $03 $29
    rla                                           ; $7d0b: $17
    ld a, h                                       ; $7d0c: $7c
    adc b                                         ; $7d0d: $88
    nop                                           ; $7d0e: $00
    xor h                                         ; $7d0f: $ac
    inc de                                        ; $7d10: $13
    ld sp, $ff00                                  ; $7d11: $31 $00 $ff
    sbc b                                         ; $7d14: $98
    ld a, a                                       ; $7d15: $7f
    ld c, h                                       ; $7d16: $4c

jr_095_7d17:
    cp a                                          ; $7d17: $bf
    add [hl]                                      ; $7d18: $86
    rst $38                                       ; $7d19: $ff
    ld l, e                                       ; $7d1a: $6b
    db $10                                        ; $7d1b: $10
    rst $10                                       ; $7d1c: $d7
    dec h                                         ; $7d1d: $25
    ei                                            ; $7d1e: $fb
    ldh a, [$08]                                  ; $7d1f: $f0 $08
    add hl, hl                                    ; $7d21: $29
    rst $38                                       ; $7d22: $ff
    dec c                                         ; $7d23: $0d
    ei                                            ; $7d24: $fb
    ld d, b                                       ; $7d25: $50
    sbc e                                         ; $7d26: $9b
    add b                                         ; $7d27: $80
    nop                                           ; $7d28: $00
    dec l                                         ; $7d29: $2d
    ld b, $00                                     ; $7d2a: $06 $00
    call $6bfb                                    ; $7d2c: $cd $fb $6b
    db $fd                                        ; $7d2f: $fd
    nop                                           ; $7d30: $00
    jp c, Jump_000_1d04                           ; $7d31: $da $04 $1d

    nop                                           ; $7d34: $00
    or l                                          ; $7d35: $b5
    nop                                           ; $7d36: $00
    ld h, a                                       ; $7d37: $67
    nop                                           ; $7d38: $00
    nop                                           ; $7d39: $00
    jp c, $8c04                                   ; $7d3a: $da $04 $8c

    ld d, b                                       ; $7d3d: $50
    or l                                          ; $7d3e: $b5

Jump_095_7d3f:
    nop                                           ; $7d3f: $00
    xor e                                         ; $7d40: $ab
    nop                                           ; $7d41: $00
    inc b                                         ; $7d42: $04
    ld a, c                                       ; $7d43: $79
    rlca                                          ; $7d44: $07
    sbc h                                         ; $7d45: $9c
    inc bc                                        ; $7d46: $03
    add hl, sp                                    ; $7d47: $39
    ret nz                                        ; $7d48: $c0

    nop                                           ; $7d49: $00
    reti                                          ; $7d4a: $d9


    daa                                           ; $7d4b: $27
    nop                                           ; $7d4c: $00

jr_095_7d4d:
    cp h                                          ; $7d4d: $bc
    inc bc                                        ; $7d4e: $03
    ld hl, $4c07                                  ; $7d4f: $21 $07 $4c
    inc bc                                        ; $7d52: $03
    ld a, $c0                                     ; $7d53: $3e $c0
    nop                                           ; $7d55: $00
    ld [hl], l                                    ; $7d56: $75
    add b                                         ; $7d57: $80
    scf                                           ; $7d58: $37
    ret nz                                        ; $7d59: $c0

    ld l, c                                       ; $7d5a: $69
    sub b                                         ; $7d5b: $90
    inc a                                         ; $7d5c: $3c
    ret nz                                        ; $7d5d: $c0

    nop                                           ; $7d5e: $00
    ld c, e                                       ; $7d5f: $4b
    add b                                         ; $7d60: $80
    dec l                                         ; $7d61: $2d
    ret nz                                        ; $7d62: $c0

    halt                                          ; $7d63: $76
    add b                                         ; $7d64: $80
    add b                                         ; $7d65: $80
    ret nz                                        ; $7d66: $c0

    inc b                                         ; $7d67: $04
    or d                                          ; $7d68: $b2
    call $ff80                                    ; $7d69: $cd $80 $ff

jr_095_7d6c:
    xor d                                         ; $7d6c: $aa
    ret c                                         ; $7d6d: $d8

    inc bc                                        ; $7d6e: $03
    or d                                          ; $7d6f: $b2
    call $a400                                    ; $7d70: $cd $00 $a4
    db $db                                        ; $7d73: $db
    add b                                         ; $7d74: $80
    rst $38                                       ; $7d75: $ff
    ld bc, $4d03                                  ; $7d76: $01 $03 $4d
    or e                                          ; $7d79: $b3
    db $10                                        ; $7d7a: $10
    ld bc, $abff                                  ; $7d7b: $01 $ff $ab
    jr nc, jr_095_7d81                            ; $7d7e: $30 $01

    ld c, l                                       ; $7d80: $4d

jr_095_7d81:
    or e                                          ; $7d81: $b3
    xor c                                         ; $7d82: $a9
    ld d, a                                       ; $7d83: $57
    db $10                                        ; $7d84: $10
    ld bc, $99ff                                  ; $7d85: $01 $ff $99
    nop                                           ; $7d88: $00
    add hl, bc                                    ; $7d89: $09
    daa                                           ; $7d8a: $27
    inc l                                         ; $7d8b: $2c
    inc de                                        ; $7d8c: $13
    ld a, c                                       ; $7d8d: $79
    nop                                           ; $7d8e: $00
    rlca                                          ; $7d8f: $07
    ld e, h                                       ; $7d90: $5c
    inc hl                                        ; $7d91: $23
    ld l, c                                       ; $7d92: $69
    rlca                                          ; $7d93: $07
    call c, Call_000_3903                         ; $7d94: $dc $03 $39
    ld bc, $7bc0                                  ; $7d97: $01 $c0 $7b
    add b                                         ; $7d9a: $80
    ld [hl+], a                                   ; $7d9b: $22
    call nz, $826d                                ; $7d9c: $c4 $6d $82
    ldh [$28], a                                  ; $7d9f: $e0 $28
    ld b, d                                       ; $7da1: $42
    push de                                       ; $7da2: $d5
    ld [de], a                                    ; $7da3: $12
    inc b                                         ; $7da4: $04
    or l                                          ; $7da5: $b5
    jp z, $d5aa                                   ; $7da6: $ca $aa $d5

    ld b, h                                       ; $7da9: $44
    ld [$08b5], sp                                ; $7daa: $08 $b5 $08
    jp z, $ffff                                   ; $7dad: $ca $ff $ff

    ld d, l                                       ; $7db0: $55
    ld l, d                                       ; $7db1: $6a
    ld bc, $c33d                                  ; $7db2: $01 $3d $c3
    ld c, c                                       ; $7db5: $49
    ld b, b                                       ; $7db6: $40
    or a                                          ; $7db7: $b7
    ld b, h                                       ; $7db8: $44
    ld [$6b95], sp                                ; $7db9: $08 $95 $6b
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    add hl, de                                    ; $7dbe: $19
    add a                                         ; $7dbf: $87
    ld [bc], a                                    ; $7dc0: $02
    inc a                                         ; $7dc1: $3c
    inc bc                                        ; $7dc2: $03
    ld l, c                                       ; $7dc3: $69
    rla                                           ; $7dc4: $17
    call c, Call_000_0023                         ; $7dc5: $dc $23 $00
    add hl, hl                                    ; $7dc8: $29
    jr nz, jr_095_7d4d                            ; $7dc9: $20 $82

    ld h, b                                       ; $7dcb: $60
    ld bc, $d12c                                  ; $7dcc: $01 $2c $d1
    ld [hl], l                                    ; $7dcf: $75
    add d                                         ; $7dd0: $82
    cpl                                           ; $7dd1: $2f
    ld c, b                                       ; $7dd2: $48
    nop                                           ; $7dd3: $00
    dec [hl]                                      ; $7dd4: $35
    ld [$6fc8], sp                                ; $7dd5: $08 $c8 $6f
    add b                                         ; $7dd8: $80
    ld bc, $1160                                  ; $7dd9: $01 $60 $11
    xor h                                         ; $7ddc: $ac
    ld b, e                                       ; $7ddd: $43
    ld a, c                                       ; $7dde: $79
    inc c                                         ; $7ddf: $0c
    rlca                                          ; $7de0: $07
    db $ec                                        ; $7de1: $ec

jr_095_7de2:
    inc de                                        ; $7de2: $13
    ld e, c                                       ; $7de3: $59
    inc b                                         ; $7de4: $04
    nop                                           ; $7de5: $00
    add b                                         ; $7de6: $80
    ld de, $7ed1                                  ; $7de7: $11 $d1 $7e
    nop                                           ; $7dea: $00
    add b                                         ; $7deb: $80
    daa                                           ; $7dec: $27
    ret z                                         ; $7ded: $c8

    ld a, [hl]                                    ; $7dee: $7e
    add b                                         ; $7def: $80
    inc sp                                        ; $7df0: $33
    call nz, Call_095_556e                        ; $7df1: $c4 $6e $55
    add b                                         ; $7df4: $80
    add b                                         ; $7df5: $80
    add hl, bc                                    ; $7df6: $09
    cp c                                          ; $7df7: $b9
    inc e                                         ; $7df8: $1c
    nop                                           ; $7df9: $00
    reti                                          ; $7dfa: $d9


    add b                                         ; $7dfb: $80
    ld bc, $80a9                                  ; $7dfc: $01 $a9 $80
    nop                                           ; $7dff: $00
    ld [hl+], a                                   ; $7e00: $22
    ld a, [hl-]                                   ; $7e01: $3a
    pop bc                                        ; $7e02: $c1
    and b                                         ; $7e03: $a0
    ld bc, $77c4                                  ; $7e04: $01 $c4 $77
    add b                                         ; $7e07: $80
    ld h, b                                       ; $7e08: $60
    add hl, hl                                    ; $7e09: $29
    xor c                                         ; $7e0a: $a9
    add [hl]                                      ; $7e0b: $86
    and b                                         ; $7e0c: $a0
    ld bc, $47a9                                  ; $7e0d: $01 $a9 $47
    ld e, h                                       ; $7e10: $5c
    add e                                         ; $7e11: $83
    ld h, b                                       ; $7e12: $60
    add hl, hl                                    ; $7e13: $29
    ld a, h                                       ; $7e14: $7c
    add hl, bc                                    ; $7e15: $09
    cpl                                           ; $7e16: $2f
    db $10                                        ; $7e17: $10
    ret nz                                        ; $7e18: $c0

    ld a, d                                       ; $7e19: $7a
    add c                                         ; $7e1a: $81
    add b                                         ; $7e1b: $80
    add hl, hl                                    ; $7e1c: $29
    cp c                                          ; $7e1d: $b9
    rlca                                          ; $7e1e: $07
    call c, Call_000_1823                         ; $7e1f: $dc $23 $18
    jp hl                                         ; $7e22: $e9


    rlca                                          ; $7e23: $07
    cp h                                          ; $7e24: $bc
    add h                                         ; $7e25: $84
    ld bc, $3880                                  ; $7e26: $01 $80 $38
    dec [hl]                                      ; $7e29: $35
    jp nz, Jump_000_006e                          ; $7e2a: $c2 $6e $00

    sub b                                         ; $7e2d: $90
    add hl, sp                                    ; $7e2e: $39
    ret nz                                        ; $7e2f: $c0

    ld h, a                                       ; $7e30: $67
    sub b                                         ; $7e31: $90

jr_095_7e32:
    ld a, [hl-]                                   ; $7e32: $3a
    pop bc                                        ; $7e33: $c1
    ld [hl], h                                    ; $7e34: $74
    jp nz, $1080                                  ; $7e35: $c2 $80 $10

    ld h, b                                       ; $7e38: $60
    nop                                           ; $7e39: $00
    inc bc                                        ; $7e3a: $03
    cp c                                          ; $7e3b: $b9
    ld b, a                                       ; $7e3c: $47
    inc l                                         ; $7e3d: $2c
    ld h, h                                       ; $7e3e: $64
    nop                                           ; $7e3f: $00
    ld l, h                                       ; $7e40: $6c
    nop                                           ; $7e41: $00
    sub e                                         ; $7e42: $93
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    ret nz                                        ; $7e45: $c0

    add b                                         ; $7e46: $80
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    adc h                                         ; $7e49: $8c
    ld [bc], a                                    ; $7e4a: $02
    rst $38                                       ; $7e4b: $ff
    db $dd                                        ; $7e4c: $dd
    xor [hl]                                      ; $7e4d: $ae
    xor [hl]                                      ; $7e4e: $ae
    db $dd                                        ; $7e4f: $dd
    adc h                                         ; $7e50: $8c
    dec l                                         ; $7e51: $2d
    dec b                                         ; $7e52: $05
    dec l                                         ; $7e53: $2d
    inc bc                                        ; $7e54: $03
    jp nz, $847a                                  ; $7e55: $c2 $7a $84

    dec hl                                        ; $7e58: $2b
    ret nc                                        ; $7e59: $d0

    halt                                          ; $7e5a: $76
    ld [hl], b                                    ; $7e5b: $70
    jr nc, jr_095_7de2                            ; $7e5c: $30 $84

    ld bc, $0304                                  ; $7e5e: $01 $04 $03
    ld e, c                                       ; $7e61: $59
    add a                                         ; $7e62: $87
    xor h                                         ; $7e63: $ac
    ld d, e                                       ; $7e64: $53
    ret nc                                        ; $7e65: $d0

    ld c, b                                       ; $7e66: $48
    ld [hl], $c1                                  ; $7e67: $36 $c1
    nop                                           ; $7e69: $00
    ld l, [hl]                                    ; $7e6a: $6e
    add b                                         ; $7e6b: $80
    ld sp, $7bc8                                  ; $7e6c: $31 $c8 $7b
    add b                                         ; $7e6f: $80
    jr nc, jr_095_7e32                            ; $7e70: $30 $c0

    jr nz, jr_095_7eeb                            ; $7e72: $20 $77

    adc b                                         ; $7e74: $88
    or c                                          ; $7e75: $b1
    dec bc                                        ; $7e76: $0b
    cp [hl]                                       ; $7e77: $be
    ld b, c                                       ; $7e78: $41
    db $d3                                        ; $7e79: $d3
    jr nz, @-$59                                  ; $7e7a: $20 $a5

    nop                                           ; $7e7c: $00
    ld b, b                                       ; $7e7d: $40
    ret                                           ; $7e7e: $c9


    nop                                           ; $7e7f: $00
    jp nc, Jump_095_7f01                          ; $7e80: $d2 $01 $7f

    nop                                           ; $7e83: $00
    dec a                                         ; $7e84: $3d
    nop                                           ; $7e85: $00
    ret nz                                        ; $7e86: $c0

    ld e, e                                       ; $7e87: $5b
    and b                                         ; $7e88: $a0
    dec a                                         ; $7e89: $3d
    ret nz                                        ; $7e8a: $c0

    halt                                          ; $7e8b: $76
    adc b                                         ; $7e8c: $88
    dec sp                                        ; $7e8d: $3b
    ld [$75c4], sp                                ; $7e8e: $08 $c4 $75
    add d                                         ; $7e91: $82
    dec sp                                        ; $7e92: $3b
    ld a, b                                       ; $7e93: $78
    ld bc, $00b4                                  ; $7e94: $01 $b4 $00
    ld l, b                                       ; $7e97: $68
    nop                                           ; $7e98: $00
    nop                                           ; $7e99: $00
    xor h                                         ; $7e9a: $ac
    db $10                                        ; $7e9b: $10
    sub a                                         ; $7e9c: $97
    ld [$0068], sp                                ; $7e9d: $08 $68 $00
    or e                                          ; $7ea0: $b3
    nop                                           ; $7ea1: $00
    nop                                           ; $7ea2: $00
    ld [$cd04], a                                 ; $7ea3: $ea $04 $cd
    nop                                           ; $7ea6: $00
    sub b                                         ; $7ea7: $90
    rst $38                                       ; $7ea8: $ff
    call nc, $bf00                                ; $7ea9: $d4 $00 $bf
    or d                                          ; $7eac: $b2
    rst $18                                       ; $7ead: $df
    rst $18                                       ; $7eae: $df
    cp a                                          ; $7eaf: $bf
    sbc a                                         ; $7eb0: $9f
    rst $38                                       ; $7eb1: $ff
    and h                                         ; $7eb2: $a4
    ld [bc], a                                    ; $7eb3: $02
    db $db                                        ; $7eb4: $db
    adc e                                         ; $7eb5: $8b
    db $f4                                        ; $7eb6: $f4
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    ld hl, $0254                                  ; $7eb9: $21 $54 $02
    add hl, bc                                    ; $7ebc: $09

jr_095_7ebd:
    add b                                         ; $7ebd: $80
    and l                                         ; $7ebe: $a5
    dec d                                         ; $7ebf: $15
    sub l                                         ; $7ec0: $95
    ld l, d                                       ; $7ec1: $6a
    ld c, d                                       ; $7ec2: $4a
    or l                                          ; $7ec3: $b5
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    inc h                                         ; $7ec6: $24
    and b                                         ; $7ec7: $a0
    ld [$4102], a                                 ; $7ec8: $ea $02 $41
    or l                                          ; $7ecb: $b5
    dec d                                         ; $7ecc: $15
    ld e, d                                       ; $7ecd: $5a
    and l                                         ; $7ece: $a5
    ld hl, $ffde                                  ; $7ecf: $21 $de $ff
    nop                                           ; $7ed2: $00
    rst $38                                       ; $7ed3: $ff
    cp l                                          ; $7ed4: $bd
    ld a, e                                       ; $7ed5: $7b
    ld e, c                                       ; $7ed6: $59
    cp a                                          ; $7ed7: $bf
    dec c                                         ; $7ed8: $0d
    ei                                            ; $7ed9: $fb
    and c                                         ; $7eda: $a1
    nop                                           ; $7edb: $00
    rst $18                                       ; $7edc: $df
    push de                                       ; $7edd: $d5
    db $eb                                        ; $7ede: $eb
    adc c                                         ; $7edf: $89
    ld [hl], a                                    ; $7ee0: $77
    dec h                                         ; $7ee1: $25
    db $db                                        ; $7ee2: $db
    rst $38                                       ; $7ee3: $ff
    ld [$76ff], sp                                ; $7ee4: $08 $ff $76
    nop                                           ; $7ee7: $00
    xor [hl]                                      ; $7ee8: $ae
    ld a, b                                       ; $7ee9: $78
    dec b                                         ; $7eea: $05

jr_095_7eeb:
    and l                                         ; $7eeb: $a5
    nop                                           ; $7eec: $00
    xor $00                                       ; $7eed: $ee $00
    nop                                           ; $7eef: $00
    db $db                                        ; $7ef0: $db
    inc b                                         ; $7ef1: $04
    or [hl]                                       ; $7ef2: $b6
    ld [$003c], sp                                ; $7ef3: $08 $3c $00
    dec c                                         ; $7ef6: $0d
    ld hl, $6782                                  ; $7ef7: $21 $82 $67
    sbc b                                         ; $7efa: $98
    inc bc                                        ; $7efb: $03
    rst $18                                       ; $7efc: $df
    jr nz, jr_095_7ebd                            ; $7efd: $20 $be

    ld b, c                                       ; $7eff: $41
    add b                                         ; $7f00: $80

Jump_095_7f01:
    ld a, [de]                                    ; $7f01: $1a
    nop                                           ; $7f02: $00
    ld l, e                                       ; $7f03: $6b
    db $10                                        ; $7f04: $10
    ld e, c                                       ; $7f05: $59

Call_095_7f06:
    ld [hl+], a                                   ; $7f06: $22
    halt                                          ; $7f07: $76
    nop                                           ; $7f08: $00
    ld a, [$2004]                                 ; $7f09: $fa $04 $20
    rst $28                                       ; $7f0c: $ef
    db $10                                        ; $7f0d: $10
    sub b                                         ; $7f0e: $90
    ld a, [de]                                    ; $7f0f: $1a
    ld d, $08                                     ; $7f10: $16 $08
    add [hl]                                      ; $7f12: $86
    nop                                           ; $7f13: $00
    ld e, l                                       ; $7f14: $5d
    nop                                           ; $7f15: $00
    and d                                         ; $7f16: $a2
    ld l, e                                       ; $7f17: $6b
    nop                                           ; $7f18: $00
    sub [hl]                                      ; $7f19: $96
    jr nz, @+$6e                                  ; $7f1a: $20 $6c

    nop                                           ; $7f1c: $00
    ld d, c                                       ; $7f1d: $51
    ld a, $00                                     ; $7f1e: $3e $00
    add $93                                       ; $7f20: $c6 $93
    ld [bc], a                                    ; $7f22: $02
    db $e4                                        ; $7f23: $e4
    dec b                                         ; $7f24: $05
    ld a, [de]                                    ; $7f25: $1a
    inc d                                         ; $7f26: $14
    inc b                                         ; $7f27: $04
    db $10                                        ; $7f28: $10
    ld a, [c]                                     ; $7f29: $f2
    dec b                                         ; $7f2a: $05
    jr nz, jr_095_7f5e                            ; $7f2b: $20 $31

    rst $18                                       ; $7f2d: $df
    ld [de], a                                    ; $7f2e: $12
    jr nz, jr_095_7f76                            ; $7f2f: $20 $45

    add b                                         ; $7f31: $80
    inc c                                         ; $7f32: $0c
    ld [bc], a                                    ; $7f33: $02
    db $fd                                        ; $7f34: $fd
    inc b                                         ; $7f35: $04
    and b                                         ; $7f36: $a0
    inc [hl]                                      ; $7f37: $34
    add b                                         ; $7f38: $80
    inc l                                         ; $7f39: $2c

jr_095_7f3a:
    ld [$00fb], sp                                ; $7f3a: $08 $fb $00
    rst $30                                       ; $7f3d: $f7
    nop                                           ; $7f3e: $00
    rst $28                                       ; $7f3f: $ef
    nop                                           ; $7f40: $00
    ld d, [hl]                                    ; $7f41: $56
    or b                                          ; $7f42: $b0
    db $10                                        ; $7f43: $10
    dec b                                         ; $7f44: $05

jr_095_7f45:
    ld a, [bc]                                    ; $7f45: $0a
    ld b, b                                       ; $7f46: $40
    dec b                                         ; $7f47: $05
    ld a, $08                                     ; $7f48: $3e $08
    cp $00                                        ; $7f4a: $fe $00
    ld a, [$0100]                                 ; $7f4c: $fa $00 $01
    call nc, $a800                                ; $7f4f: $d4 $00 $a8
    nop                                           ; $7f52: $00
    ld e, b                                       ; $7f53: $58
    nop                                           ; $7f54: $00
    xor d                                         ; $7f55: $aa
    ld c, [hl]                                    ; $7f56: $4e
    db $10                                        ; $7f57: $10
    add d                                         ; $7f58: $82
    ld d, d                                       ; $7f59: $52
    ld [$aa55], sp                                ; $7f5a: $08 $55 $aa
    xor d                                         ; $7f5d: $aa

jr_095_7f5e:
    ld d, l                                       ; $7f5e: $55
    ld b, d                                       ; $7f5f: $42
    ld [hl], $06                                  ; $7f60: $36 $06
    cp a                                          ; $7f62: $bf
    ld b, b                                       ; $7f63: $40
    ld [hl], c                                    ; $7f64: $71
    ld [bc], a                                    ; $7f65: $02
    jr jr_095_7f9d                                ; $7f66: $18 $35

    ei                                            ; $7f68: $fb
    cp e                                          ; $7f69: $bb
    ld [hl], l                                    ; $7f6a: $75
    ld sp, $00ff                                  ; $7f6b: $31 $ff $00
    jp $cbc3                                      ; $7f6e: $c3 $c3 $cb


    ld d, d                                       ; $7f71: $52
    rst $10                                       ; $7f72: $d7
    jp $c762                                      ; $7f73: $c3 $62 $c7


jr_095_7f76:
    ld a, [bc]                                    ; $7f76: $0a
    ld l, l                                       ; $7f77: $6d
    or [hl]                                       ; $7f78: $b6
    cp d                                          ; $7f79: $ba
    ld e, l                                       ; $7f7a: $5d
    ld e, [hl]                                    ; $7f7b: $5e
    ld e, $03                                     ; $7f7c: $1e $03
    rla                                           ; $7f7e: $17
    inc bc                                        ; $7f7f: $03
    ld sp, $ff03                                  ; $7f80: $31 $03 $ff
    ld a, e                                       ; $7f83: $7b
    or l                                          ; $7f84: $b5
    or l                                          ; $7f85: $b5
    ld a, e                                       ; $7f86: $7b
    ld sp, $269d                                  ; $7f87: $31 $9d $26
    sub d                                         ; $7f8a: $92
    jr nc, jr_095_7f45                            ; $7f8b: $30 $b8

    dec c                                         ; $7f8d: $0d
    jr jr_095_7f3a                                ; $7f8e: $18 $aa

    ld d, l                                       ; $7f90: $55
    ld [bc], a                                    ; $7f91: $02
    ld d, a                                       ; $7f92: $57
    nop                                           ; $7f93: $00
    ld e, e                                       ; $7f94: $5b
    ld [bc], a                                    ; $7f95: $02
    rst $38                                       ; $7f96: $ff
    rst $38                                       ; $7f97: $ff
    db $db                                        ; $7f98: $db
    ld bc, $ff00                                  ; $7f99: $01 $00 $ff
    ld a, a                                       ; $7f9c: $7f

jr_095_7f9d:
    rrca                                          ; $7f9d: $0f
    ld e, b                                       ; $7f9e: $58
    inc b                                         ; $7f9f: $04
    db $10                                        ; $7fa0: $10
    dec [hl]                                      ; $7fa1: $35
    inc sp                                        ; $7fa2: $33
    jr z, jr_095_7fc7                             ; $7fa3: $28 $22

    ret z                                         ; $7fa5: $c8

    jr nc, @+$45                                  ; $7fa6: $30 $43

    jr @+$60                                      ; $7fa8: $18 $5e

    rrca                                          ; $7faa: $0f
    ld e, $0d                                     ; $7fab: $1e $0d
    ld l, a                                       ; $7fad: $6f
    inc h                                         ; $7fae: $24
    ld bc, $3f1c                                  ; $7faf: $01 $1c $3f
    inc bc                                        ; $7fb2: $03
    rla                                           ; $7fb3: $17
    add hl, bc                                    ; $7fb4: $09
    add c                                         ; $7fb5: $81
    ld h, b                                       ; $7fb6: $60
    ld h, e                                       ; $7fb7: $63
    inc c                                         ; $7fb8: $0c
    dec e                                         ; $7fb9: $1d
    ld b, a                                       ; $7fba: $47
    push de                                       ; $7fbb: $d5
    add hl, hl                                    ; $7fbc: $29
    inc l                                         ; $7fbd: $2c
    dec e                                         ; $7fbe: $1d
    ld b, [hl]                                    ; $7fbf: $46
    inc b                                         ; $7fc0: $04
    ld de, $c967                                  ; $7fc1: $11 $67 $c9
    ld c, c                                       ; $7fc4: $49
    jr z, @+$3f                                   ; $7fc5: $28 $3d

jr_095_7fc7:
    ld b, d                                       ; $7fc7: $42
    inc d                                         ; $7fc8: $14
    inc e                                         ; $7fc9: $1c
    ld e, e                                       ; $7fca: $5b
    ld de, $273e                                  ; $7fcb: $11 $3e $27
    ld sp, $2060                                  ; $7fce: $31 $60 $20
    ld sp, $6c46                                  ; $7fd1: $31 $46 $6c
    ld sp, $20a3                                  ; $7fd4: $31 $a3 $20
    nop                                           ; $7fd7: $00
    db $10                                        ; $7fd8: $10
    rrca                                          ; $7fd9: $0f
    nop                                           ; $7fda: $00
    nop                                           ; $7fdb: $00
    dec d                                         ; $7fdc: $15
    nop                                           ; $7fdd: $00
    ld bc, $0015                                  ; $7fde: $01 $15 $00
    ld bc, $0015                                  ; $7fe1: $01 $15 $00
    ld bc, $0015                                  ; $7fe4: $01 $15 $00
    ld bc, $0002                                  ; $7fe7: $01 $02 $00
    ld e, $00                                     ; $7fea: $1e $00
    adc $00                                       ; $7fec: $ce $00
    ld [bc], a                                    ; $7fee: $02
    ld bc, $0108                                  ; $7fef: $01 $08 $01
    ld [hl], $00                                  ; $7ff2: $36 $00
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
