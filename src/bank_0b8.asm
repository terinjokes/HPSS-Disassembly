; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b8", ROMX[$4000], BANK[$b8]

    db $b8

    nop                                           ; $4001: $00
    jr nz, jr_0b8_4004                            ; $4002: $20 $00

jr_0b8_4004:
    jr nz, jr_0b8_4006                            ; $4004: $20 $00

jr_0b8_4006:
    db $20, $bc                                   ; $4006: $20 $bc
    ld b, d                                       ; $4008: $42
    nop                                           ; $4009: $00
    jr nz, jr_0b8_400c                            ; $400a: $20 $00

jr_0b8_400c:
    jr nz, jr_0b8_400e                            ; $400c: $20 $00

jr_0b8_400e:
    db $20, $bc                                   ; $400e: $20 $bc
    ld b, d                                       ; $4010: $42
    nop                                           ; $4011: $00
    jr nz, jr_0b8_4014                            ; $4012: $20 $00

jr_0b8_4014:
    jr nz, jr_0b8_4016                            ; $4014: $20 $00

jr_0b8_4016:
    db $20, $bc                                   ; $4016: $20 $bc
    ld b, d                                       ; $4018: $42
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    rst $38                                       ; $401b: $ff
    ld a, a                                       ; $401c: $7f
    nop                                           ; $401d: $00
    jr nz, jr_0b8_4049                            ; $401e: $20 $29

    add hl, bc                                    ; $4020: $09
    nop                                           ; $4021: $00
    jr nz, @+$01                                  ; $4022: $20 $ff

    ld a, a                                       ; $4024: $7f
    nop                                           ; $4025: $00
    jr nz, jr_0b8_4051                            ; $4026: $20 $29

    add hl, bc                                    ; $4028: $09
    nop                                           ; $4029: $00
    jr nz, @+$01                                  ; $402a: $20 $ff

    ld a, a                                       ; $402c: $7f
    nop                                           ; $402d: $00
    jr nz, jr_0b8_4059                            ; $402e: $20 $29

    add hl, bc                                    ; $4030: $09
    nop                                           ; $4031: $00
    jr nz, @+$01                                  ; $4032: $20 $ff

jr_0b8_4034:
    ld a, a                                       ; $4034: $7f
    nop                                           ; $4035: $00
    jr nz, @+$2b                                  ; $4036: $20 $29

    add hl, bc                                    ; $4038: $09
    nop                                           ; $4039: $00
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    inc e                                         ; $403c: $1c
    nop                                           ; $403d: $00
    db $20, $bc                                   ; $403e: $20 $bc
    ld b, d                                       ; $4040: $42
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    jr nz, jr_0b8_4046                            ; $4044: $20 $00

jr_0b8_4046:
    jr nz, jr_0b8_4004                            ; $4046: $20 $bc

    ld b, d                                       ; $4048: $42

jr_0b8_4049:
    nop                                           ; $4049: $00
    jr nz, jr_0b8_404c                            ; $404a: $20 $00

jr_0b8_404c:
    jr nz, jr_0b8_404e                            ; $404c: $20 $00

jr_0b8_404e:
    jr nz, jr_0b8_400c                            ; $404e: $20 $bc

    ld b, d                                       ; $4050: $42

jr_0b8_4051:
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    nop                                           ; $4055: $00
    jr nz, jr_0b8_4081                            ; $4056: $20 $29

    add hl, bc                                    ; $4058: $09

jr_0b8_4059:
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    di                                            ; $405b: $f3
    dec c                                         ; $405c: $0d
    nop                                           ; $405d: $00
    jr jr_0b8_4060                                ; $405e: $18 $00

jr_0b8_4060:
    jr nz, jr_0b8_4062                            ; $4060: $20 $00

jr_0b8_4062:
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    jr nz, jr_0b8_4066                            ; $4064: $20 $00

jr_0b8_4066:
    jr jr_0b8_4068                                ; $4066: $18 $00

jr_0b8_4068:
    jr nz, jr_0b8_406a                            ; $4068: $20 $00

jr_0b8_406a:
    jr nz, jr_0b8_406c                            ; $406a: $20 $00

jr_0b8_406c:
    jr nz, jr_0b8_406e                            ; $406c: $20 $00

jr_0b8_406e:
    jr jr_0b8_4070                                ; $406e: $18 $00

jr_0b8_4070:
    jr nz, jr_0b8_4072                            ; $4070: $20 $00

jr_0b8_4072:
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    jr nz, jr_0b8_4076                            ; $4074: $20 $00

jr_0b8_4076:
    jr nz, jr_0b8_4034                            ; $4076: $20 $bc

    ld b, d                                       ; $4078: $42
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    dec bc                                        ; $407b: $0b
    add hl, bc                                    ; $407c: $09
    reti                                          ; $407d: $d9


    ld de, $1c00                                  ; $407e: $11 $00 $1c

jr_0b8_4081:
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    rst $38                                       ; $4083: $ff
    ld a, a                                       ; $4084: $7f
    nop                                           ; $4085: $00
    jr nz, jr_0b8_4088                            ; $4086: $20 $00

jr_0b8_4088:
    inc e                                         ; $4088: $1c
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    rst $38                                       ; $408b: $ff
    ld a, a                                       ; $408c: $7f
    inc sp                                        ; $408d: $33
    ld c, b                                       ; $408e: $48
    nop                                           ; $408f: $00
    jr nz, jr_0b8_4092                            ; $4090: $20 $00

jr_0b8_4092:
    nop                                           ; $4092: $00
    or h                                          ; $4093: $b4
    dec c                                         ; $4094: $0d
    sbc $7b                                       ; $4095: $de $7b
    db $dd                                        ; $4097: $dd
    ld d, $00                                     ; $4098: $16 $00
    nop                                           ; $409a: $00
    dec hl                                        ; $409b: $2b
    dec c                                         ; $409c: $0d
    nop                                           ; $409d: $00
    jr nz, jr_0b8_40d3                            ; $409e: $20 $33

    ld a, [de]                                    ; $40a0: $1a
    nop                                           ; $40a1: $00
    jr nz, jr_0b8_40cf                            ; $40a2: $20 $2b

    dec c                                         ; $40a4: $0d
    nop                                           ; $40a5: $00
    jr nz, @+$35                                  ; $40a6: $20 $33

    ld a, [de]                                    ; $40a8: $1a
    nop                                           ; $40a9: $00
    nop                                           ; $40aa: $00
    push de                                       ; $40ab: $d5
    dec c                                         ; $40ac: $0d
    nop                                           ; $40ad: $00
    jr nz, jr_0b8_40e7                            ; $40ae: $20 $37

    ld [de], a                                    ; $40b0: $12
    ld bc, $9400                                  ; $40b1: $01 $00 $94
    dec c                                         ; $40b4: $0d
    nop                                           ; $40b5: $00
    jr nz, @-$3f                                  ; $40b6: $20 $bf

    ld d, $00                                     ; $40b8: $16 $00
    nop                                           ; $40ba: $00
    rst $38                                       ; $40bb: $ff
    ld a, a                                       ; $40bc: $7f
    nop                                           ; $40bd: $00
    jr nz, @-$3f                                  ; $40be: $20 $bf

    ld d, $00                                     ; $40c0: $16 $00
    nop                                           ; $40c2: $00
    inc sp                                        ; $40c3: $33
    ld c, b                                       ; $40c4: $48
    nop                                           ; $40c5: $00
    jr nz, jr_0b8_40fb                            ; $40c6: $20 $33

jr_0b8_40c8:
    ld a, [de]                                    ; $40c8: $1a
    ld bc, $9100                                  ; $40c9: $01 $00 $91
    dec c                                         ; $40cc: $0d
    ld a, [hl]                                    ; $40cd: $7e
    inc hl                                        ; $40ce: $23

jr_0b8_40cf:
    halt                                          ; $40cf: $76
    ld d, $00                                     ; $40d0: $16 $00
    nop                                           ; $40d2: $00

jr_0b8_40d3:
    dec sp                                        ; $40d3: $3b
    inc hl                                        ; $40d4: $23
    nop                                           ; $40d5: $00
    jr nz, jr_0b8_4101                            ; $40d6: $20 $29

    add hl, bc                                    ; $40d8: $09
    nop                                           ; $40d9: $00
    jr nz, jr_0b8_4117                            ; $40da: $20 $3b

    inc hl                                        ; $40dc: $23
    nop                                           ; $40dd: $00
    jr nz, jr_0b8_4109                            ; $40de: $20 $29

    add hl, bc                                    ; $40e0: $09
    nop                                           ; $40e1: $00
    nop                                           ; $40e2: $00
    adc a                                         ; $40e3: $8f
    add hl, bc                                    ; $40e4: $09
    cp $1a                                        ; $40e5: $fe $1a

jr_0b8_40e7:
    nop                                           ; $40e7: $00
    jr nz, jr_0b8_40ea                            ; $40e8: $20 $00

jr_0b8_40ea:
    inc c                                         ; $40ea: $0c
    or d                                          ; $40eb: $b2
    dec c                                         ; $40ec: $0d
    dec e                                         ; $40ed: $1d
    dec de                                        ; $40ee: $1b
    dec bc                                        ; $40ef: $0b
    add hl, bc                                    ; $40f0: $09
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    rst $38                                       ; $40f3: $ff
    ld a, a                                       ; $40f4: $7f
    inc sp                                        ; $40f5: $33
    ld c, b                                       ; $40f6: $48
    nop                                           ; $40f7: $00
    jr nz, jr_0b8_411c                            ; $40f8: $20 $22

    nop                                           ; $40fa: $00

jr_0b8_40fb:
    inc sp                                        ; $40fb: $33
    ld c, b                                       ; $40fc: $48
    rst $38                                       ; $40fd: $ff
    ld l, $72                                     ; $40fe: $2e $72
    dec c                                         ; $4100: $0d

jr_0b8_4101:
    ld bc, $b700                                  ; $4101: $01 $00 $b7
    add hl, bc                                    ; $4104: $09
    ld a, a                                       ; $4105: $7f
    daa                                           ; $4106: $27
    or b                                          ; $4107: $b0
    nop                                           ; $4108: $00

jr_0b8_4109:
    nop                                           ; $4109: $00
    nop                                           ; $410a: $00
    or h                                          ; $410b: $b4
    dec c                                         ; $410c: $0d
    sbc [hl]                                      ; $410d: $9e
    daa                                           ; $410e: $27
    nop                                           ; $410f: $00
    jr nz, jr_0b8_4112                            ; $4110: $20 $00

jr_0b8_4112:
    jr nz, jr_0b8_40c8                            ; $4112: $20 $b4

    dec c                                         ; $4114: $0d
    sbc [hl]                                      ; $4115: $9e
    daa                                           ; $4116: $27

jr_0b8_4117:
    nop                                           ; $4117: $00
    jr nz, jr_0b8_411b                            ; $4118: $20 $01

    nop                                           ; $411a: $00

jr_0b8_411b:
    sbc d                                         ; $411b: $9a

jr_0b8_411c:
    ld a, [de]                                    ; $411c: $1a
    dec l                                         ; $411d: $2d
    add hl, bc                                    ; $411e: $09
    nop                                           ; $411f: $00
    jr nz, jr_0b8_4164                            ; $4120: $20 $42

    inc b                                         ; $4122: $04

jr_0b8_4123:
    rla                                           ; $4123: $17
    ld [de], a                                    ; $4124: $12
    sbc [hl]                                      ; $4125: $9e
    daa                                           ; $4126: $27
    rst $38                                       ; $4127: $ff
    ld a, a                                       ; $4128: $7f
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    rst $38                                       ; $412b: $ff
    ld a, a                                       ; $412c: $7f
    inc sp                                        ; $412d: $33
    ld c, b                                       ; $412e: $48
    rst $38                                       ; $412f: $ff
    ld a, a                                       ; $4130: $7f
    inc h                                         ; $4131: $24
    nop                                           ; $4132: $00
    or l                                          ; $4133: $b5
    dec d                                         ; $4134: $15
    cp l                                          ; $4135: $bd
    ld [hl-], a                                   ; $4136: $32
    ldh a, [rP1]                                  ; $4137: $f0 $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    or $11                                        ; $413b: $f6 $11
    cp [hl]                                       ; $413d: $be
    ld h, $7f                                     ; $413e: $26 $7f
    ld b, a                                       ; $4140: $47
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    ld [hl], c                                    ; $4143: $71
    add hl, bc                                    ; $4144: $09
    call c, $0016                                 ; $4145: $dc $16 $00
    jr nz, jr_0b8_414a                            ; $4148: $20 $00

jr_0b8_414a:
    jr nz, @+$73                                  ; $414a: $20 $71

    add hl, bc                                    ; $414c: $09
    call c, $0016                                 ; $414d: $dc $16 $00
    jr nz, jr_0b8_4152                            ; $4150: $20 $00

jr_0b8_4152:
    nop                                           ; $4152: $00
    cp h                                          ; $4153: $bc
    ld a, [de]                                    ; $4154: $1a
    ret                                           ; $4155: $c9


    inc b                                         ; $4156: $04
    nop                                           ; $4157: $00
    jr nz, jr_0b8_415a                            ; $4158: $20 $00

jr_0b8_415a:
    nop                                           ; $415a: $00
    dec l                                         ; $415b: $2d
    ld l, c                                       ; $415c: $69
    rst $38                                       ; $415d: $ff
    ld a, a                                       ; $415e: $7f
    or d                                          ; $415f: $b2
    dec c                                         ; $4160: $0d
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    inc sp                                        ; $4163: $33

jr_0b8_4164:
    ld c, b                                       ; $4164: $48
    rst $30                                       ; $4165: $f7
    dec e                                         ; $4166: $1d
    or d                                          ; $4167: $b2
    dec c                                         ; $4168: $0d
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    ld d, b                                       ; $416b: $50
    ld de, $2238                                  ; $416c: $11 $38 $22
    sbc $36                                       ; $416f: $de $36
    ld bc, $ca00                                  ; $4171: $01 $00 $ca
    nop                                           ; $4174: $00
    inc sp                                        ; $4175: $33
    ld bc, $0d50                                  ; $4176: $01 $50 $0d
    nop                                           ; $4179: $00
    db $10                                        ; $417a: $10
    sbc a                                         ; $417b: $9f
    dec de                                        ; $417c: $1b
    jp hl                                         ; $417d: $e9


    ld [$7fff], sp                                ; $417e: $08 $ff $7f
    nop                                           ; $4181: $00
    jr nz, jr_0b8_4123                            ; $4182: $20 $9f

    dec de                                        ; $4184: $1b
    jp hl                                         ; $4185: $e9


    ld [$7fff], sp                                ; $4186: $08 $ff $7f
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    or c                                          ; $418b: $b1
    add hl, bc                                    ; $418c: $09
    nop                                           ; $418d: $00
    jr nz, jr_0b8_41c6                            ; $418e: $20 $36

    ld [de], a                                    ; $4190: $12
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    inc sp                                        ; $4193: $33
    ld b, h                                       ; $4194: $44
    inc de                                        ; $4195: $13
    ld l, d                                       ; $4196: $6a
    ld [bc], a                                    ; $4197: $02
    jr nc, @+$25                                  ; $4198: $30 $23

    inc b                                         ; $419a: $04

jr_0b8_419b:
    inc sp                                        ; $419b: $33
    ld b, h                                       ; $419c: $44
    cp $2e                                        ; $419d: $fe $2e
    ld l, $0d                                     ; $419f: $2e $0d
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    sbc $36                                       ; $41a3: $de $36
    or b                                          ; $41a5: $b0
    nop                                           ; $41a6: $00
    rst $38                                       ; $41a7: $ff
    ld b, [hl]                                    ; $41a8: $46
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    sbc a                                         ; $41ab: $9f
    ld e, $2f                                     ; $41ac: $1e $2f
    ld de, $46ff                                  ; $41ae: $11 $ff $46
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    ld l, a                                       ; $41b3: $6f
    ld b, [hl]                                    ; $41b4: $46
    db $dd                                        ; $41b5: $dd
    ld a, e                                       ; $41b6: $7b
    db $e3                                        ; $41b7: $e3
    add hl, hl                                    ; $41b8: $29
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    jr nz, jr_0b8_419b                            ; $41bc: $20 $dd

    ld a, e                                       ; $41be: $7b
    db $e3                                        ; $41bf: $e3
    add hl, hl                                    ; $41c0: $29
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    jr nz, jr_0b8_41e8                            ; $41c4: $20 $22

jr_0b8_41c6:
    inc d                                         ; $41c6: $14

jr_0b8_41c7:
    nop                                           ; $41c7: $00
    ld [$0000], sp                                ; $41c8: $08 $00 $00
    ld h, [hl]                                    ; $41cb: $66
    inc a                                         ; $41cc: $3c
    ld c, a                                       ; $41cd: $4f
    ld [hl], c                                    ; $41ce: $71
    ld [hl-], a                                   ; $41cf: $32
    ld b, h                                       ; $41d0: $44
    ld [bc], a                                    ; $41d1: $02
    nop                                           ; $41d2: $00
    ld [hl-], a                                   ; $41d3: $32
    ld b, h                                       ; $41d4: $44
    sbc b                                         ; $41d5: $98
    ld bc, $0089                                  ; $41d6: $01 $89 $00
    ld [bc], a                                    ; $41d9: $02
    nop                                           ; $41da: $00
    ld [hl], h                                    ; $41db: $74
    ld de, $46ff                                  ; $41dc: $11 $ff $46
    add a                                         ; $41df: $87
    inc b                                         ; $41e0: $04
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    rst $28                                       ; $41e3: $ef
    ld [$3e9d], sp                                ; $41e4: $08 $9d $3e
    add a                                         ; $41e7: $87

jr_0b8_41e8:
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    add sp, $2d                                   ; $41eb: $e8 $2d
    ld a, c                                       ; $41ed: $79
    ld l, a                                       ; $41ee: $6f
    ld sp, $0040                                  ; $41ef: $31 $40 $00
    nop                                           ; $41f2: $00
    rst $38                                       ; $41f3: $ff
    ld a, a                                       ; $41f4: $7f
    nop                                           ; $41f5: $00
    jr nz, jr_0b8_4229                            ; $41f6: $20 $31

    ld b, b                                       ; $41f8: $40
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    rst $38                                       ; $41fb: $ff
    ld a, a                                       ; $41fc: $7f
    nop                                           ; $41fd: $00
    jr nz, jr_0b8_41c7                            ; $41fe: $20 $c7

    jr nz, jr_0b8_4245                            ; $4200: $20 $43

    inc b                                         ; $4202: $04
    push de                                       ; $4203: $d5
    dec c                                         ; $4204: $0d
    ld sp, $fd40                                  ; $4205: $31 $40 $fd
    ld [de], a                                    ; $4208: $12
    inc h                                         ; $4209: $24
    nop                                           ; $420a: $00
    ld sp, $b840                                  ; $420b: $31 $40 $b8
    dec b                                         ; $420e: $05
    rst $18                                       ; $420f: $df
    ld b, [hl]                                    ; $4210: $46
    ld b, l                                       ; $4211: $45
    inc b                                         ; $4212: $04
    or c                                          ; $4213: $b1
    ld h, d                                       ; $4214: $62
    and a                                         ; $4215: $a7
    ld c, h                                       ; $4216: $4c
    cp h                                          ; $4217: $bc
    ld [hl], a                                    ; $4218: $77
    ld bc, $8c00                                  ; $4219: $01 $00 $8c
    ld d, b                                       ; $421c: $50
    db $f4                                        ; $421d: $f4
    ld e, [hl]                                    ; $421e: $5e
    jr jr_0b8_424b                                ; $421f: $18 $2a

    add [hl]                                      ; $4221: $86
    inc b                                         ; $4222: $04
    ld d, $0e                                     ; $4223: $16 $0e
    jr nc, jr_0b8_4263                            ; $4225: $30 $3c

    ld a, a                                       ; $4227: $7f
    dec de                                        ; $4228: $1b

jr_0b8_4229:
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    rst $38                                       ; $422b: $ff
    ld a, a                                       ; $422c: $7f
    jr nc, jr_0b8_426b                            ; $422d: $30 $3c

    nop                                           ; $422f: $00
    jr nz, jr_0b8_4232                            ; $4230: $20 $00

jr_0b8_4232:
    nop                                           ; $4232: $00
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f
    cpl                                           ; $4235: $2f
    jr c, jr_0b8_4238                             ; $4236: $38 $00

jr_0b8_4238:
    jr nz, jr_0b8_423a                            ; $4238: $20 $00

jr_0b8_423a:
    nop                                           ; $423a: $00
    cp [hl]                                       ; $423b: $be
    ld a, [de]                                    ; $423c: $1a
    cpl                                           ; $423d: $2f
    inc a                                         ; $423e: $3c
    dec c                                         ; $423f: $0d
    dec b                                         ; $4240: $05
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    ld e, h                                       ; $4243: $5c
    ld a, [de]                                    ; $4244: $1a

jr_0b8_4245:
    ld d, b                                       ; $4245: $50
    jr nc, @+$69                                  ; $4246: $30 $67

    inc b                                         ; $4248: $04
    ld b, [hl]                                    ; $4249: $46
    nop                                           ; $424a: $00

jr_0b8_424b:
    ld e, d                                       ; $424b: $5a
    ld a, [hl-]                                   ; $424c: $3a

jr_0b8_424d:
    ld e, a                                       ; $424d: $5f
    ld d, a                                       ; $424e: $57
    cp a                                          ; $424f: $bf
    ld l, e                                       ; $4250: $6b
    inc bc                                        ; $4251: $03
    nop                                           ; $4252: $00
    ld a, h                                       ; $4253: $7c
    ld a, $4e                                     ; $4254: $3e $4e
    jr nc, jr_0b8_42b7                            ; $4256: $30 $5f

    ld d, a                                       ; $4258: $57
    nop                                           ; $4259: $00
    nop                                           ; $425a: $00
    add hl, sp                                    ; $425b: $39
    ld d, $2f                                     ; $425c: $16 $2f
    jr c, jr_0b8_427e                             ; $425e: $38 $1e

    rra                                           ; $4260: $1f
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00

jr_0b8_4263:
    rst $38                                       ; $4263: $ff
    ld a, a                                       ; $4264: $7f
    cpl                                           ; $4265: $2f
    jr c, jr_0b8_4268                             ; $4266: $38 $00

jr_0b8_4268:
    jr nz, jr_0b8_426a                            ; $4268: $20 $00

jr_0b8_426a:
    nop                                           ; $426a: $00

jr_0b8_426b:
    rst $38                                       ; $426b: $ff
    ld a, a                                       ; $426c: $7f
    ld c, $34                                     ; $426d: $0e $34
    cpl                                           ; $426f: $2f
    jr c, jr_0b8_4272                             ; $4270: $38 $00

jr_0b8_4272:
    nop                                           ; $4272: $00
    dec d                                         ; $4273: $15
    ld d, $df                                     ; $4274: $16 $df
    cpl                                           ; $4276: $2f
    ld a, [bc]                                    ; $4277: $0a
    dec c                                         ; $4278: $0d
    ld [hl+], a                                   ; $4279: $22
    nop                                           ; $427a: $00
    rst $18                                       ; $427b: $df
    ld [hl], $0e                                  ; $427c: $36 $0e

jr_0b8_427e:
    inc [hl]                                      ; $427e: $34
    rrca                                          ; $427f: $0f
    dec c                                         ; $4280: $0d
    ld b, h                                       ; $4281: $44
    nop                                           ; $4282: $00
    sbc a                                         ; $4283: $9f
    ld a, $5f                                     ; $4284: $3e $5f
    ld e, e                                       ; $4286: $5b
    rst $18                                       ; $4287: $df
    ld b, [hl]                                    ; $4288: $46
    ld bc, $9500                                  ; $4289: $01 $00 $95
    add hl, de                                    ; $428c: $19
    dec c                                         ; $428d: $0d
    inc [hl]                                      ; $428e: $34
    rst $38                                       ; $428f: $ff
    ld b, [hl]                                    ; $4290: $46
    ld b, d                                       ; $4291: $42
    nop                                           ; $4292: $00
    cp d                                          ; $4293: $ba
    ld a, [de]                                    ; $4294: $1a
    xor [hl]                                      ; $4295: $ae
    inc h                                         ; $4296: $24
    cp a                                          ; $4297: $bf
    dec hl                                        ; $4298: $2b
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    rst $38                                       ; $429b: $ff
    ld a, a                                       ; $429c: $7f
    dec c                                         ; $429d: $0d
    inc [hl]                                      ; $429e: $34
    nop                                           ; $429f: $00
    jr nz, jr_0b8_42a2                            ; $42a0: $20 $00

jr_0b8_42a2:
    nop                                           ; $42a2: $00
    rst $38                                       ; $42a3: $ff
    ld a, a                                       ; $42a4: $7f
    dec c                                         ; $42a5: $0d
    jr nc, jr_0b8_42a8                            ; $42a6: $30 $00

jr_0b8_42a8:
    jr nz, jr_0b8_42aa                            ; $42a8: $20 $00

jr_0b8_42aa:
    nop                                           ; $42aa: $00
    db $d3                                        ; $42ab: $d3
    dec c                                         ; $42ac: $0d
    call c, $0d16                                 ; $42ad: $dc $16 $0d
    jr nc, jr_0b8_42b3                            ; $42b0: $30 $01

    nop                                           ; $42b2: $00

jr_0b8_42b3:
    dec c                                         ; $42b3: $0d
    jr nc, jr_0b8_424d                            ; $42b4: $30 $97

    dec b                                         ; $42b6: $05

jr_0b8_42b7:
    ld b, l                                       ; $42b7: $45
    nop                                           ; $42b8: $00
    ld h, [hl]                                    ; $42b9: $66
    nop                                           ; $42ba: $00
    ld d, [hl]                                    ; $42bb: $56
    dec d                                         ; $42bc: $15
    cp a                                          ; $42bd: $bf
    ld b, d                                       ; $42be: $42
    ei                                            ; $42bf: $fb
    dec e                                         ; $42c0: $1d
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    rra                                           ; $42c3: $1f
    ld c, e                                       ; $42c4: $4b
    inc c                                         ; $42c5: $0c
    jr nc, jr_0b8_432f                            ; $42c6: $30 $67

    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    add hl, sp                                    ; $42cb: $39
    ld [de], a                                    ; $42cc: $12
    call $9f14                                    ; $42cd: $cd $14 $9f
    inc hl                                        ; $42d0: $23
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    rst $38                                       ; $42d3: $ff
    ld a, a                                       ; $42d4: $7f
    inc c                                         ; $42d5: $0c
    jr nc, jr_0b8_42d8                            ; $42d6: $30 $00

jr_0b8_42d8:
    jr nz, jr_0b8_42da                            ; $42d8: $20 $00

jr_0b8_42da:
    nop                                           ; $42da: $00
    rst $38                                       ; $42db: $ff
    ld a, a                                       ; $42dc: $7f
    dec bc                                        ; $42dd: $0b
    inc l                                         ; $42de: $2c
    nop                                           ; $42df: $00
    jr nz, jr_0b8_42e2                            ; $42e0: $20 $00

jr_0b8_42e2:
    nop                                           ; $42e2: $00
    cp e                                          ; $42e3: $bb
    ld [de], a                                    ; $42e4: $12
    jp hl                                         ; $42e5: $e9


    inc b                                         ; $42e6: $04
    dec bc                                        ; $42e7: $0b
    inc l                                         ; $42e8: $2c
    ld bc, $2b04                                  ; $42e9: $01 $04 $2b
    jr nc, jr_0b8_4306                            ; $42ec: $30 $18

    ld a, [hl]                                    ; $42ee: $7e
    rst $08                                       ; $42ef: $cf
    inc b                                         ; $42f0: $04
    inc h                                         ; $42f1: $24
    nop                                           ; $42f2: $00
    db $fc                                        ; $42f3: $fc
    ld hl, $4f1e                                  ; $42f4: $21 $1e $4f
    rst $08                                       ; $42f7: $cf
    inc b                                         ; $42f8: $04
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    sbc a                                         ; $42fb: $9f
    ld h, e                                       ; $42fc: $63
    dec bc                                        ; $42fd: $0b
    inc l                                         ; $42fe: $2c
    rrc b                                         ; $42ff: $cb $08
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    dec hl                                        ; $4303: $2b
    inc h                                         ; $4304: $24
    dec l                                         ; $4305: $2d

jr_0b8_4306:
    ld a, $7a                                     ; $4306: $3e $7a
    ld [de], a                                    ; $4308: $12
    nop                                           ; $4309: $00
    nop                                           ; $430a: $00
    rst $38                                       ; $430b: $ff
    ld a, a                                       ; $430c: $7f
    dec bc                                        ; $430d: $0b
    inc l                                         ; $430e: $2c
    nop                                           ; $430f: $00

Call_0b8_4310:
    jr nz, jr_0b8_4312                            ; $4310: $20 $00

jr_0b8_4312:
    nop                                           ; $4312: $00
    rst $38                                       ; $4313: $ff
    ld a, a                                       ; $4314: $7f
    ld a, [bc]                                    ; $4315: $0a
    jr z, jr_0b8_4318                             ; $4316: $28 $00

jr_0b8_4318:
    jr nz, jr_0b8_431a                            ; $4318: $20 $00

jr_0b8_431a:
    inc b                                         ; $431a: $04
    ld h, a                                       ; $431b: $67
    ld d, b                                       ; $431c: $50
    add hl, bc                                    ; $431d: $09
    inc l                                         ; $431e: $2c
    ld l, a                                       ; $431f: $6f
    ld h, c                                       ; $4320: $61
    ld bc, $3c00                                  ; $4321: $01 $00 $3c
    ld a, a                                       ; $4324: $7f
    ret                                           ; $4325: $c9


    inc l                                         ; $4326: $2c
    dec [hl]                                      ; $4327: $35
    dec c                                         ; $4328: $0d
    inc h                                         ; $4329: $24
    nop                                           ; $432a: $00
    ld a, [$df29]                                 ; $432b: $fa $29 $df
    ld b, [hl]                                    ; $432e: $46

jr_0b8_432f:
    rst $08                                       ; $432f: $cf
    inc b                                         ; $4330: $04
    ld bc, $5f04                                  ; $4331: $01 $04 $5f
    ld a, a                                       ; $4334: $7f
    add hl, bc                                    ; $4335: $09
    inc h                                         ; $4336: $24
    dec hl                                        ; $4337: $2b
    dec [hl]                                      ; $4338: $35
    nop                                           ; $4339: $00
    nop                                           ; $433a: $00
    ld h, a                                       ; $433b: $67
    ld l, $fd                                     ; $433c: $2e $fd
    ld a, a                                       ; $433e: $7f
    add hl, hl                                    ; $433f: $29
    inc h                                         ; $4340: $24
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    rst $38                                       ; $4343: $ff
    ld a, a                                       ; $4344: $7f
    add hl, bc                                    ; $4345: $09
    inc h                                         ; $4346: $24
    nop                                           ; $4347: $00
    jr nz, jr_0b8_434a                            ; $4348: $20 $00

jr_0b8_434a:
    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    ld a, a                                       ; $434c: $7f
    add hl, bc                                    ; $434d: $09
    inc h                                         ; $434e: $24
    nop                                           ; $434f: $00
    jr nz, jr_0b8_4352                            ; $4350: $20 $00

jr_0b8_4352:
    inc b                                         ; $4352: $04
    add hl, bc                                    ; $4353: $09
    jr z, jr_0b8_43a5                             ; $4354: $28 $4f

    dec b                                         ; $4356: $05
    rst $00                                       ; $4357: $c7
    nop                                           ; $4358: $00
    ld bc, $b008                                  ; $4359: $01 $08 $b0
    ld c, l                                       ; $435c: $4d
    dec de                                        ; $435d: $1b
    ld [hl], e                                    ; $435e: $73
    ld e, l                                       ; $435f: $5d
    ld a, [de]                                    ; $4360: $1a
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    dec a                                         ; $4363: $3d
    ld h, $f1                                     ; $4364: $26 $f1
    ld [$46ff], sp                                ; $4366: $08 $ff $46
    ld bc, $6e04                                  ; $4369: $01 $04 $6e
    ld c, c                                       ; $436c: $49
    ld e, h                                       ; $436d: $5c
    ld a, e                                       ; $436e: $7b
    inc a                                         ; $436f: $3c
    dec h                                         ; $4370: $25
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    scf                                           ; $4373: $37
    ld [de], a                                    ; $4374: $12
    jr z, jr_0b8_4393                             ; $4375: $28 $1c

    ld a, [hl]                                    ; $4377: $7e
    rra                                           ; $4378: $1f
    nop                                           ; $4379: $00
    nop                                           ; $437a: $00
    rst $38                                       ; $437b: $ff
    ld a, a                                       ; $437c: $7f
    nop                                           ; $437d: $00
    jr nz, jr_0b8_4388                            ; $437e: $20 $08

    jr nz, jr_0b8_4382                            ; $4380: $20 $00

jr_0b8_4382:
    nop                                           ; $4382: $00
    rst $38                                       ; $4383: $ff
    ld a, a                                       ; $4384: $7f
    nop                                           ; $4385: $00
    jr nz, jr_0b8_438f                            ; $4386: $20 $07

jr_0b8_4388:
    jr nz, jr_0b8_438a                            ; $4388: $20 $00

jr_0b8_438a:
    nop                                           ; $438a: $00
    dec a                                         ; $438b: $3d
    rra                                           ; $438c: $1f
    ld l, [hl]                                    ; $438d: $6e
    dec c                                         ; $438e: $0d

jr_0b8_438f:
    rlca                                          ; $438f: $07
    jr nz, @+$45                                  ; $4390: $20 $43

    db $10                                        ; $4392: $10

jr_0b8_4393:
    sub c                                         ; $4393: $91
    ld e, c                                       ; $4394: $59
    ld e, [hl]                                    ; $4395: $5e
    ld a, a                                       ; $4396: $7f
    ld a, $1f                                     ; $4397: $3e $1f
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    db $f4                                        ; $439b: $f4
    ld h, l                                       ; $439c: $65
    inc e                                         ; $439d: $1c
    ld a, a                                       ; $439e: $7f
    dec bc                                        ; $439f: $0b
    ld b, l                                       ; $43a0: $45
    ld [bc], a                                    ; $43a1: $02
    nop                                           ; $43a2: $00
    cp h                                          ; $43a3: $bc
    db $10                                        ; $43a4: $10

jr_0b8_43a5:
    ld a, a                                       ; $43a5: $7f
    ld a, a                                       ; $43a6: $7f
    jp hl                                         ; $43a7: $e9


    ld b, h                                       ; $43a8: $44
    ld [bc], a                                    ; $43a9: $02
    nop                                           ; $43aa: $00
    inc sp                                        ; $43ab: $33
    ld d, $3e                                     ; $43ac: $16 $3e
    inc hl                                        ; $43ae: $23
    inc l                                         ; $43af: $2c
    dec c                                         ; $43b0: $0d
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    rst $38                                       ; $43b3: $ff
    ld a, a                                       ; $43b4: $7f
    nop                                           ; $43b5: $00
    jr nz, jr_0b8_43e4                            ; $43b6: $20 $2c

    dec c                                         ; $43b8: $0d
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    rst $38                                       ; $43bb: $ff
    ld a, a                                       ; $43bc: $7f
    nop                                           ; $43bd: $00
    jr nz, @+$08                                  ; $43be: $20 $06

    inc e                                         ; $43c0: $1c
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    sub c                                         ; $43c3: $91
    dec d                                         ; $43c4: $15
    ld b, $1c                                     ; $43c5: $06 $1c
    and [hl]                                      ; $43c7: $a6
    nop                                           ; $43c8: $00
    nop                                           ; $43c9: $00
    nop                                           ; $43ca: $00
    db $eb                                        ; $43cb: $eb
    ld b, b                                       ; $43cc: $40
    rlca                                          ; $43cd: $07
    nop                                           ; $43ce: $00
    sub b                                         ; $43cf: $90
    add hl, de                                    ; $43d0: $19
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    ld b, e                                       ; $43d3: $43
    jr jr_0b8_443a                                ; $43d4: $18 $64

    inc h                                         ; $43d6: $24
    dec b                                         ; $43d7: $05
    nop                                           ; $43d8: $00
    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00
    ld [$2e00], sp                                ; $43db: $08 $00 $2e
    inc b                                         ; $43de: $04
    ld d, l                                       ; $43df: $55
    ld [$0000], sp                                ; $43e0: $08 $00 $00
    scf                                           ; $43e3: $37

jr_0b8_43e4:
    inc b                                         ; $43e4: $04
    db $fc                                        ; $43e5: $fc
    ld a, [de]                                    ; $43e6: $1a
    ld h, l                                       ; $43e7: $65
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    rst $38                                       ; $43eb: $ff
    ld a, a                                       ; $43ec: $7f
    nop                                           ; $43ed: $00
    jr nz, jr_0b8_43f5                            ; $43ee: $20 $05

    inc d                                         ; $43f0: $14
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    rst $38                                       ; $43f3: $ff
    ld a, a                                       ; $43f4: $7f

jr_0b8_43f5:
    nop                                           ; $43f5: $00
    jr nz, jr_0b8_4388                            ; $43f6: $20 $90

    add hl, de                                    ; $43f8: $19
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    or c                                          ; $43fb: $b1
    ld [$1805], sp                                ; $43fc: $08 $05 $18
    db $db                                        ; $43ff: $db
    jr jr_0b8_4402                                ; $4400: $18 $00

jr_0b8_4402:
    nop                                           ; $4402: $00
    db $f4                                        ; $4403: $f4
    add hl, hl                                    ; $4404: $29
    rrca                                          ; $4405: $0f
    nop                                           ; $4406: $00
    inc e                                         ; $4407: $1c
    ld b, a                                       ; $4408: $47
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    rst $38                                       ; $440b: $ff
    cpl                                           ; $440c: $2f
    dec c                                         ; $440d: $0d
    nop                                           ; $440e: $00
    ld d, h                                       ; $440f: $54
    inc c                                         ; $4410: $0c
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    sbc b                                         ; $4413: $98
    db $10                                        ; $4414: $10
    ld l, l                                       ; $4415: $6d
    ld b, c                                       ; $4416: $41
    rst $38                                       ; $4417: $ff
    ld a, a                                       ; $4418: $7f
    ld [bc], a                                    ; $4419: $02
    nop                                           ; $441a: $00
    ld a, l                                       ; $441b: $7d
    ld e, a                                       ; $441c: $5f
    adc a                                         ; $441d: $8f
    ld [$0437], sp                                ; $441e: $08 $37 $04
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    rst $38                                       ; $4423: $ff
    ld a, a                                       ; $4424: $7f
    nop                                           ; $4425: $00
    jr nz, @+$39                                  ; $4426: $20 $37

    inc b                                         ; $4428: $04
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    rst $38                                       ; $442b: $ff
    ld a, a                                       ; $442c: $7f
    nop                                           ; $442d: $00
    jr nz, @+$1e                                  ; $442e: $20 $1c

    ld b, a                                       ; $4430: $47
    ld bc, $bc00                                  ; $4431: $01 $00 $bc
    jr jr_0b8_4474                                ; $4434: $18 $3e

    dec h                                         ; $4436: $25
    ld [$0004], sp                                ; $4437: $08 $04 $00

jr_0b8_443a:
    nop                                           ; $443a: $00
    ld d, [hl]                                    ; $443b: $56
    ld [$25f4], sp                                ; $443c: $08 $f4 $25
    ld l, b                                       ; $443f: $68
    ld hl, $0000                                  ; $4440: $21 $00 $00
    db $db                                        ; $4443: $db
    jr @+$01                                      ; $4444: $18 $ff

    cpl                                           ; $4446: $2f
    ld a, d                                       ; $4447: $7a
    ld a, [de]                                    ; $4448: $1a
    nop                                           ; $4449: $00
    ld [$18db], sp                                ; $444a: $08 $db $18
    inc e                                         ; $444d: $1c
    ld [hl], a                                    ; $444e: $77
    cpl                                           ; $444f: $2f
    ld [$0000], sp                                ; $4450: $08 $00 $00
    dec [hl]                                      ; $4453: $35
    inc b                                         ; $4454: $04
    ld e, $21                                     ; $4455: $1e $21
    add hl, bc                                    ; $4457: $09
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    rst $38                                       ; $445b: $ff
    ld a, a                                       ; $445c: $7f
    nop                                           ; $445d: $00
    jr nz, @+$0b                                  ; $445e: $20 $09

    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    rst $38                                       ; $4463: $ff
    ld a, a                                       ; $4464: $7f
    nop                                           ; $4465: $00
    jr nz, @+$6a                                  ; $4466: $20 $68

    ld hl, $0000                                  ; $4468: $21 $00 $00
    halt                                          ; $446b: $76
    inc c                                         ; $446c: $0c
    cp d                                          ; $446d: $ba
    inc d                                         ; $446e: $14
    ld a, a                                       ; $446f: $7f
    inc c                                         ; $4470: $0c
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    ld a, h                                       ; $4473: $7c

jr_0b8_4474:
    db $10                                        ; $4474: $10
    dec [hl]                                      ; $4475: $35
    ld a, [hl+]                                   ; $4476: $2a
    db $ec                                        ; $4477: $ec
    ld [$0000], sp                                ; $4478: $08 $00 $00
    ld a, d                                       ; $447b: $7a
    ld a, [de]                                    ; $447c: $1a
    rst $38                                       ; $447d: $ff
    cpl                                           ; $447e: $2f
    db $fd                                        ; $447f: $fd
    inc e                                         ; $4480: $1c
    dec b                                         ; $4481: $05
    inc b                                         ; $4482: $04
    dec e                                         ; $4483: $1d
    dec h                                         ; $4484: $25
    rst $08                                       ; $4485: $cf
    ld d, c                                       ; $4486: $51
    dec sp                                        ; $4487: $3b
    ld a, a                                       ; $4488: $7f
    jr nz, jr_0b8_448b                            ; $4489: $20 $00

jr_0b8_448b:
    inc e                                         ; $448b: $1c

jr_0b8_448c:
    ld hl, $7fff                                  ; $448c: $21 $ff $7f
    dec bc                                        ; $448f: $0b
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    rst $38                                       ; $4493: $ff
    ld a, a                                       ; $4494: $7f
    nop                                           ; $4495: $00
    jr nz, jr_0b8_44a3                            ; $4496: $20 $0b

    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    rst $38                                       ; $449b: $ff
    ld a, a                                       ; $449c: $7f
    nop                                           ; $449d: $00
    jr nz, jr_0b8_448c                            ; $449e: $20 $ec

    ld [$0021], sp                                ; $44a0: $08 $21 $00

jr_0b8_44a3:
    sbc a                                         ; $44a3: $9f
    ld a, [hl-]                                   ; $44a4: $3a
    ld e, b                                       ; $44a5: $58
    ld [$7fff], sp                                ; $44a6: $08 $ff $7f
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    sbc d                                         ; $44ab: $9a
    ld a, $2c                                     ; $44ac: $3e $2c
    dec e                                         ; $44ae: $1d
    cp [hl]                                       ; $44af: $be
    ld l, e                                       ; $44b0: $6b
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    inc e                                         ; $44b3: $1c
    ld hl, $2fff                                  ; $44b4: $21 $ff $2f
    ld a, d                                       ; $44b7: $7a
    ld a, [de]                                    ; $44b8: $1a
    inc bc                                        ; $44b9: $03
    inc b                                         ; $44ba: $04
    sub c                                         ; $44bb: $91
    ld e, c                                       ; $44bc: $59
    sbc h                                         ; $44bd: $9c
    ld a, a                                       ; $44be: $7f
    inc e                                         ; $44bf: $1c
    ld hl, $0000                                  ; $44c0: $21 $00 $00
    db $fd                                        ; $44c3: $fd
    inc e                                         ; $44c4: $1c
    rst $38                                       ; $44c5: $ff
    ld a, a                                       ; $44c6: $7f
    ld sp, $0004                                  ; $44c7: $31 $04 $00
    nop                                           ; $44ca: $00
    nop                                           ; $44cb: $00
    jr nz, @+$01                                  ; $44cc: $20 $ff

    ld a, a                                       ; $44ce: $7f
    ld sp, $0004                                  ; $44cf: $31 $04 $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    jr nz, jr_0b8_4502                            ; $44d4: $20 $2c

    dec e                                         ; $44d6: $1d
    cp [hl]                                       ; $44d7: $be
    ld l, e                                       ; $44d8: $6b
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    cp a                                          ; $44db: $bf
    ld a, [hl-]                                   ; $44dc: $3a
    inc sp                                        ; $44dd: $33
    inc b                                         ; $44de: $04
    rst $38                                       ; $44df: $ff
    ld a, a                                       ; $44e0: $7f
    nop                                           ; $44e1: $00
    nop                                           ; $44e2: $00
    sbc $46                                       ; $44e3: $de $46
    db $10                                        ; $44e5: $10
    ld de, $67bf                                  ; $44e6: $11 $bf $67
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    ld a, [$ff18]                                 ; $44eb: $fa $18 $ff
    cpl                                           ; $44ee: $2f
    ld de, $0310                                  ; $44ef: $11 $10 $03
    nop                                           ; $44f2: $00
    reti                                          ; $44f3: $d9


    jr jr_0b8_4501                                ; $44f4: $18 $0b

    ld b, c                                       ; $44f6: $41
    ld [hl], h                                    ; $44f7: $74
    ld l, d                                       ; $44f8: $6a
    nop                                           ; $44f9: $00
    nop                                           ; $44fa: $00
    rst $38                                       ; $44fb: $ff
    ld a, a                                       ; $44fc: $7f
    ld [hl-], a                                   ; $44fd: $32
    inc b                                         ; $44fe: $04
    cp e                                          ; $44ff: $bb
    inc d                                         ; $4500: $14

jr_0b8_4501:
    nop                                           ; $4501: $00

jr_0b8_4502:
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    jr nz, jr_0b8_4538                            ; $4504: $20 $32

    inc b                                         ; $4506: $04
    cp e                                          ; $4507: $bb
    inc d                                         ; $4508: $14
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00
    jr nz, jr_0b8_451e                            ; $450c: $20 $10

    ld de, $67bf                                  ; $450e: $11 $bf $67
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    ld e, h                                       ; $4513: $5c
    ld [hl], $d3                                  ; $4514: $36 $d3
    inc c                                         ; $4516: $0c
    rst $38                                       ; $4517: $ff
    ld a, a                                       ; $4518: $7f
    ld [hl+], a                                   ; $4519: $22
    inc b                                         ; $451a: $04
    rst $38                                       ; $451b: $ff
    ld b, [hl]                                    ; $451c: $46
    ld [hl], h                                    ; $451d: $74

jr_0b8_451e:
    dec e                                         ; $451e: $1d
    rst $38                                       ; $451f: $ff
    ld [hl], e                                    ; $4520: $73
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    ld d, e                                       ; $4523: $53
    ld [$14bf], sp                                ; $4524: $08 $bf $14
    halt                                          ; $4527: $76
    inc c                                         ; $4528: $0c
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    ld a, e                                       ; $452b: $7b
    ld a, a                                       ; $452c: $7f
    ld [$5240], a                                 ; $452d: $ea $40 $52
    ld [$0000], sp                                ; $4530: $08 $00 $00
    rst $38                                       ; $4533: $ff
    ld a, a                                       ; $4534: $7f
    ld sp, $5704                                  ; $4535: $31 $04 $57

jr_0b8_4538:
    ld [$2000], sp                                ; $4538: $08 $00 $20
    rst $38                                       ; $453b: $ff
    ld a, a                                       ; $453c: $7f
    ld sp, $5704                                  ; $453d: $31 $04 $57
    ld [$2000], sp                                ; $4540: $08 $00 $20
    rst $38                                       ; $4543: $ff
    ld b, [hl]                                    ; $4544: $46
    ld [hl], h                                    ; $4545: $74
    dec e                                         ; $4546: $1d
    rst $38                                       ; $4547: $ff
    ld [hl], e                                    ; $4548: $73
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    ld e, h                                       ; $454b: $5c
    ld [hl-], a                                   ; $454c: $32
    rst $38                                       ; $454d: $ff
    ld a, a                                       ; $454e: $7f
    rst $08                                       ; $454f: $cf
    db $10                                        ; $4550: $10
    ld bc, $1800                                  ; $4551: $01 $00 $18
    ld l, $ff                                     ; $4554: $2e $ff
    ld b, [hl]                                    ; $4556: $46
    sbc a                                         ; $4557: $9f
    ld l, e                                       ; $4558: $6b
    ld c, $00                                     ; $4559: $0e $00
    stop                                          ; $455b: $10 $00
    dec d                                         ; $455d: $15
    nop                                           ; $455e: $00
    ld de, $0000                                  ; $455f: $11 $00 $00
    nop                                           ; $4562: $00
    adc [hl]                                      ; $4563: $8e
    ld c, l                                       ; $4564: $4d
    ld c, $00                                     ; $4565: $0e $00
    ld h, h                                       ; $4567: $64
    inc d                                         ; $4568: $14
    nop                                           ; $4569: $00
    inc b                                         ; $456a: $04
    rst $38                                       ; $456b: $ff
    ld a, a                                       ; $456c: $7f
    add hl, bc                                    ; $456d: $09
    nop                                           ; $456e: $00
    stop                                          ; $456f: $10 $00
    nop                                           ; $4571: $00
    jr nz, @+$01                                  ; $4572: $20 $ff

    ld a, a                                       ; $4574: $7f
    add hl, bc                                    ; $4575: $09
    nop                                           ; $4576: $00
    stop                                          ; $4577: $10 $00
    nop                                           ; $4579: $00
    jr nz, jr_0b8_4594                            ; $457a: $20 $18

    ld l, $ff                                     ; $457c: $2e $ff
    ld b, [hl]                                    ; $457e: $46
    sbc a                                         ; $457f: $9f
    ld l, e                                       ; $4580: $6b
    nop                                           ; $4581: $00
    ld [$1996], sp                                ; $4582: $08 $96 $19
    cp a                                          ; $4585: $bf
    ld l, a                                       ; $4586: $6f
    ld e, l                                       ; $4587: $5d
    ld [hl-], a                                   ; $4588: $32
    ld bc, $fe00                                  ; $4589: $01 $00 $fe
    ld b, [hl]                                    ; $458c: $46
    inc l                                         ; $458d: $2c
    dec e                                         ; $458e: $1d
    rst $38                                       ; $458f: $ff
    ld a, e                                       ; $4590: $7b
    dec bc                                        ; $4591: $0b
    nop                                           ; $4592: $00
    dec c                                         ; $4593: $0d

jr_0b8_4594:
    nop                                           ; $4594: $00
    ld c, $00                                     ; $4595: $0e $00
    inc c                                         ; $4597: $0c
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    pop af                                        ; $459b: $f1
    ld c, l                                       ; $459c: $4d
    add hl, bc                                    ; $459d: $09
    nop                                           ; $459e: $00
    ld h, e                                       ; $459f: $63
    stop                                          ; $45a0: $10 $00
    nop                                           ; $45a2: $00
    rst $38                                       ; $45a3: $ff
    ld a, a                                       ; $45a4: $7f
    dec bc                                        ; $45a5: $0b
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    jr nz, jr_0b8_45aa                            ; $45a8: $20 $00

jr_0b8_45aa:
    jr nz, @+$01                                  ; $45aa: $20 $ff

    ld a, a                                       ; $45ac: $7f
    dec bc                                        ; $45ad: $0b
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    jr nz, jr_0b8_45b2                            ; $45b0: $20 $00

jr_0b8_45b2:
    jr nz, jr_0b8_45b2                            ; $45b2: $20 $fe

jr_0b8_45b4:
    ld b, [hl]                                    ; $45b4: $46
    inc l                                         ; $45b5: $2c
    dec e                                         ; $45b6: $1d
    rst $38                                       ; $45b7: $ff
    ld a, e                                       ; $45b8: $7b
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    ld e, d                                       ; $45bb: $5a

jr_0b8_45bc:
    ld [hl], $ff                                  ; $45bc: $36 $ff
    ld a, a                                       ; $45be: $7f
    nop                                           ; $45bf: $00

jr_0b8_45c0:
    jr nz, jr_0b8_45c2                            ; $45c0: $20 $00

jr_0b8_45c2:
    nop                                           ; $45c2: $00
    call nc, $cb2d                                ; $45c3: $d4 $2d $cb
    inc d                                         ; $45c6: $14
    cp h                                          ; $45c7: $bc
    ld b, d                                       ; $45c8: $42
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    ld a, a                                       ; $45cc: $7f
    dec bc                                        ; $45cd: $0b
    nop                                           ; $45ce: $00
    nop                                           ; $45cf: $00
    jr nz, jr_0b8_45d2                            ; $45d0: $20 $00

jr_0b8_45d2:
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    ld a, a                                       ; $45d4: $7f
    dec bc                                        ; $45d5: $0b
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    jr nz, jr_0b8_45da                            ; $45d8: $20 $00

jr_0b8_45da:
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    ld a, a                                       ; $45dc: $7f
    nop                                           ; $45dd: $00
    jr nz, jr_0b8_45e0                            ; $45de: $20 $00

jr_0b8_45e0:
    jr nz, jr_0b8_45e2                            ; $45e0: $20 $00

jr_0b8_45e2:
    jr nz, @+$01                                  ; $45e2: $20 $ff

    ld a, a                                       ; $45e4: $7f
    nop                                           ; $45e5: $00
    jr nz, jr_0b8_45e8                            ; $45e6: $20 $00

jr_0b8_45e8:
    jr nz, jr_0b8_45ea                            ; $45e8: $20 $00

jr_0b8_45ea:
    jr nz, jr_0b8_45c0                            ; $45ea: $20 $d4

    dec l                                         ; $45ec: $2d
    rl h                                          ; $45ed: $cb $14
    cp h                                          ; $45ef: $bc
    ld b, d                                       ; $45f0: $42
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld a, a                                       ; $45f4: $7f
    nop                                           ; $45f5: $00
    jr nz, jr_0b8_45b4                            ; $45f6: $20 $bc

    ld b, d                                       ; $45f8: $42
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    rst $38                                       ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    nop                                           ; $45fd: $00
    jr nz, jr_0b8_45bc                            ; $45fe: $20 $bc

    ld b, d                                       ; $4600: $42
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    jr nz, jr_0b8_4606                            ; $4604: $20 $00

jr_0b8_4606:
    jr nz, jr_0b8_4608                            ; $4606: $20 $00

jr_0b8_4608:
    jr nz, jr_0b8_460a                            ; $4608: $20 $00

jr_0b8_460a:
    nop                                           ; $460a: $00
    nop                                           ; $460b: $00
    jr nz, jr_0b8_460e                            ; $460c: $20 $00

jr_0b8_460e:
    jr nz, jr_0b8_4610                            ; $460e: $20 $00

jr_0b8_4610:
    jr nz, jr_0b8_4612                            ; $4610: $20 $00

jr_0b8_4612:
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    jr nz, jr_0b8_4616                            ; $4614: $20 $00

jr_0b8_4616:
    jr nz, jr_0b8_4618                            ; $4616: $20 $00

jr_0b8_4618:
    jr nz, jr_0b8_461a                            ; $4618: $20 $00

jr_0b8_461a:
    jr nz, jr_0b8_461c                            ; $461a: $20 $00

jr_0b8_461c:
    jr nz, jr_0b8_461e                            ; $461c: $20 $00

jr_0b8_461e:
    jr nz, jr_0b8_4620                            ; $461e: $20 $00

jr_0b8_4620:
    jr nz, jr_0b8_4622                            ; $4620: $20 $00

jr_0b8_4622:
    jr nz, jr_0b8_4624                            ; $4622: $20 $00

jr_0b8_4624:
    jr nz, jr_0b8_4626                            ; $4624: $20 $00

jr_0b8_4626:
    jr nz, jr_0b8_468c                            ; $4626: $20 $64

    inc c                                         ; $4628: $0c
    nop                                           ; $4629: $00
    jr nz, jr_0b8_462c                            ; $462a: $20 $00

jr_0b8_462c:
    jr nz, jr_0b8_462e                            ; $462c: $20 $00

jr_0b8_462e:
    jr nz, jr_0b8_4694                            ; $462e: $20 $64

    inc c                                         ; $4630: $0c
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    jr nz, jr_0b8_4636                            ; $4634: $20 $00

jr_0b8_4636:
    jr nz, jr_0b8_469c                            ; $4636: $20 $64

    inc c                                         ; $4638: $0c
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    ld a, a                                       ; $463c: $7f
    nop                                           ; $463d: $00
    jr nz, @+$29                                  ; $463e: $20 $27

    add hl, hl                                    ; $4640: $29
    nop                                           ; $4641: $00
    jr nz, @+$01                                  ; $4642: $20 $ff

    ld a, a                                       ; $4644: $7f
    nop                                           ; $4645: $00
    jr nz, jr_0b8_466f                            ; $4646: $20 $27

    add hl, hl                                    ; $4648: $29
    nop                                           ; $4649: $00
    nop                                           ; $464a: $00
    nop                                           ; $464b: $00
    jr nz, jr_0b8_464e                            ; $464c: $20 $00

jr_0b8_464e:
    jr nz, @+$29                                  ; $464e: $20 $27

    add hl, hl                                    ; $4650: $29
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    jr nz, jr_0b8_4656                            ; $4654: $20 $00

jr_0b8_4656:
    jr nz, @+$29                                  ; $4656: $20 $27

    add hl, hl                                    ; $4658: $29
    nop                                           ; $4659: $00
    jr nz, jr_0b8_465c                            ; $465a: $20 $00

jr_0b8_465c:
    jr nz, jr_0b8_465e                            ; $465c: $20 $00

jr_0b8_465e:
    jr nz, jr_0b8_46c4                            ; $465e: $20 $64

    inc c                                         ; $4660: $0c
    nop                                           ; $4661: $00
    jr nz, jr_0b8_4664                            ; $4662: $20 $00

jr_0b8_4664:
    jr nz, jr_0b8_4666                            ; $4664: $20 $00

jr_0b8_4666:
    jr nz, jr_0b8_46cc                            ; $4666: $20 $64

    inc c                                         ; $4668: $0c
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    jp nc, $ff5e                                  ; $466b: $d2 $5e $ff

jr_0b8_466e:
    ld a, a                                       ; $466e: $7f

jr_0b8_466f:
    nop                                           ; $466f: $00
    jr nz, jr_0b8_4672                            ; $4670: $20 $00

jr_0b8_4672:
    nop                                           ; $4672: $00
    rst $38                                       ; $4673: $ff
    ld a, a                                       ; $4674: $7f
    nop                                           ; $4675: $00
    jr nz, jr_0b8_469f                            ; $4676: $20 $27

    add hl, hl                                    ; $4678: $29
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    rst $38                                       ; $467b: $ff
    ld a, a                                       ; $467c: $7f
    nop                                           ; $467d: $00
    jr nz, jr_0b8_46a7                            ; $467e: $20 $27

    add hl, hl                                    ; $4680: $29
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    rst $38                                       ; $4683: $ff
    ld a, a                                       ; $4684: $7f
    nop                                           ; $4685: $00
    jr jr_0b8_4688                                ; $4686: $18 $00

jr_0b8_4688:
    jr nz, jr_0b8_468a                            ; $4688: $20 $00

jr_0b8_468a:
    nop                                           ; $468a: $00
    cp l                                          ; $468b: $bd

jr_0b8_468c:
    ld [hl], a                                    ; $468c: $77
    nop                                           ; $468d: $00
    jr nz, @+$01                                  ; $468e: $20 $ff

    ld a, a                                       ; $4690: $7f
    nop                                           ; $4691: $00
    jr nz, jr_0b8_4666                            ; $4692: $20 $d2

jr_0b8_4694:
    ld e, [hl]                                    ; $4694: $5e
    rst $38                                       ; $4695: $ff
    ld a, a                                       ; $4696: $7f
    nop                                           ; $4697: $00
    jr nz, jr_0b8_469a                            ; $4698: $20 $00

jr_0b8_469a:
    jr nz, jr_0b8_466e                            ; $469a: $20 $d2

jr_0b8_469c:
    ld e, [hl]                                    ; $469c: $5e
    rst $38                                       ; $469d: $ff

jr_0b8_469e:
    ld a, a                                       ; $469e: $7f

jr_0b8_469f:
    nop                                           ; $469f: $00
    jr nz, jr_0b8_46a2                            ; $46a0: $20 $00

jr_0b8_46a2:
    inc b                                         ; $46a2: $04
    jp nc, $ff5e                                  ; $46a3: $d2 $5e $ff

    ld a, a                                       ; $46a6: $7f

jr_0b8_46a7:
    daa                                           ; $46a7: $27
    add hl, hl                                    ; $46a8: $29
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    ld d, c                                       ; $46ab: $51
    ld a, a                                       ; $46ac: $7f
    rst $38                                       ; $46ad: $ff
    ld a, a                                       ; $46ae: $7f
    rst $38                                       ; $46af: $ff
    ld a, a                                       ; $46b0: $7f
    nop                                           ; $46b1: $00
    inc c                                         ; $46b2: $0c
    jp nc, $fe5e                                  ; $46b3: $d2 $5e $fe

    ld a, a                                       ; $46b6: $7f
    daa                                           ; $46b7: $27
    add hl, hl                                    ; $46b8: $29
    nop                                           ; $46b9: $00
    nop                                           ; $46ba: $00
    rst $38                                       ; $46bb: $ff
    ld a, a                                       ; $46bc: $7f
    nop                                           ; $46bd: $00
    jr nz, jr_0b8_46e7                            ; $46be: $20 $27

    add hl, hl                                    ; $46c0: $29
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    rst $38                                       ; $46c3: $ff

jr_0b8_46c4:
    ld a, a                                       ; $46c4: $7f
    nop                                           ; $46c5: $00
    inc e                                         ; $46c6: $1c
    nop                                           ; $46c7: $00
    jr nz, jr_0b8_46ca                            ; $46c8: $20 $00

jr_0b8_46ca:
    jr nz, jr_0b8_469e                            ; $46ca: $20 $d2

jr_0b8_46cc:
    ld e, [hl]                                    ; $46cc: $5e
    rst $38                                       ; $46cd: $ff
    ld a, a                                       ; $46ce: $7f
    daa                                           ; $46cf: $27
    add hl, hl                                    ; $46d0: $29
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    jp nc, $005e                                  ; $46d3: $d2 $5e $00

jr_0b8_46d6:
    jr nz, @+$01                                  ; $46d6: $20 $ff

    ld a, a                                       ; $46d8: $7f
    nop                                           ; $46d9: $00
    nop                                           ; $46da: $00
    jp nc, Jump_000_275e                          ; $46db: $d2 $5e $27

    add hl, hl                                    ; $46de: $29
    db $fd                                        ; $46df: $fd
    ld a, a                                       ; $46e0: $7f
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    ld d, c                                       ; $46e3: $51
    ld a, a                                       ; $46e4: $7f
    nop                                           ; $46e5: $00
    inc e                                         ; $46e6: $1c

jr_0b8_46e7:
    nop                                           ; $46e7: $00
    jr nz, jr_0b8_46ea                            ; $46e8: $20 $00

jr_0b8_46ea:
    nop                                           ; $46ea: $00
    ld d, c                                       ; $46eb: $51
    ld a, a                                       ; $46ec: $7f
    rst $38                                       ; $46ed: $ff
    ld a, a                                       ; $46ee: $7f
    nop                                           ; $46ef: $00
    jr nz, jr_0b8_46f2                            ; $46f0: $20 $00

jr_0b8_46f2:
    nop                                           ; $46f2: $00
    rst $38                                       ; $46f3: $ff
    ld a, a                                       ; $46f4: $7f
    nop                                           ; $46f5: $00
    jr nz, jr_0b8_46f8                            ; $46f6: $20 $00

jr_0b8_46f8:
    jr nz, jr_0b8_46fa                            ; $46f8: $20 $00

jr_0b8_46fa:
    inc e                                         ; $46fa: $1c
    jp nc, $ff5e                                  ; $46fb: $d2 $5e $ff

    ld a, a                                       ; $46fe: $7f
    daa                                           ; $46ff: $27
    add hl, hl                                    ; $4700: $29
    nop                                           ; $4701: $00
    jr nz, jr_0b8_46d6                            ; $4702: $20 $d2

    ld e, [hl]                                    ; $4704: $5e
    daa                                           ; $4705: $27
    add hl, hl                                    ; $4706: $29
    db $fd                                        ; $4707: $fd
    ld a, a                                       ; $4708: $7f
    nop                                           ; $4709: $00
    ld [$5ed2], sp                                ; $470a: $08 $d2 $5e
    daa                                           ; $470d: $27
    add hl, hl                                    ; $470e: $29
    cp l                                          ; $470f: $bd
    ld [hl], e                                    ; $4710: $73
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    ld d, l                                       ; $4713: $55
    ld b, [hl]                                    ; $4714: $46
    cp [hl]                                       ; $4715: $be
    ld [hl], e                                    ; $4716: $73
    add hl, bc                                    ; $4717: $09
    dec e                                         ; $4718: $1d
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    pop af                                        ; $471b: $f1
    add hl, sp                                    ; $471c: $39
    rst $38                                       ; $471d: $ff
    ld a, a                                       ; $471e: $7f
    ld d, c                                       ; $471f: $51
    ld a, a                                       ; $4720: $7f
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    ld d, c                                       ; $4723: $51
    ld a, a                                       ; $4724: $7f
    rst $38                                       ; $4725: $ff
    ld a, a                                       ; $4726: $7f
    jp nc, $005e                                  ; $4727: $d2 $5e $00

    nop                                           ; $472a: $00
    jp nc, $ff5e                                  ; $472b: $d2 $5e $ff

    ld a, a                                       ; $472e: $7f
    jp nc, $005e                                  ; $472f: $d2 $5e $00

    inc e                                         ; $4732: $1c
    jp nc, $ff5e                                  ; $4733: $d2 $5e $ff

    ld a, a                                       ; $4736: $7f
    daa                                           ; $4737: $27
    add hl, hl                                    ; $4738: $29
    nop                                           ; $4739: $00
    jr jr_0b8_473c                                ; $473a: $18 $00

jr_0b8_473c:
    jr nz, jr_0b8_473e                            ; $473c: $20 $00

jr_0b8_473e:
    inc e                                         ; $473e: $1c
    add hl, bc                                    ; $473f: $09
    dec e                                         ; $4740: $1d
    nop                                           ; $4741: $00
    inc c                                         ; $4742: $0c
    sub a                                         ; $4743: $97
    ld a, $df                                     ; $4744: $3e $df
    ld a, e                                       ; $4746: $7b
    add sp, $1c                                   ; $4747: $e8 $1c
    ld b, e                                       ; $4749: $43
    inc b                                         ; $474a: $04
    rst $18                                       ; $474b: $df
    ld [hl], a                                    ; $474c: $77
    ld [hl], c                                    ; $474d: $71
    dec e                                         ; $474e: $1d
    jp z, Jump_000_0014                           ; $474f: $ca $14 $00

    nop                                           ; $4752: $00
    pop af                                        ; $4753: $f1
    ld l, d                                       ; $4754: $6a
    sbc a                                         ; $4755: $9f
    ld l, e                                       ; $4756: $6b
    rst $00                                       ; $4757: $c7
    inc d                                         ; $4758: $14
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    ld d, c                                       ; $475b: $51
    ld a, a                                       ; $475c: $7f
    rst $38                                       ; $475d: $ff
    ld a, a                                       ; $475e: $7f
    daa                                           ; $475f: $27
    add hl, hl                                    ; $4760: $29
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    jp nc, $ff5e                                  ; $4763: $d2 $5e $ff

    ld a, a                                       ; $4766: $7f
    daa                                           ; $4767: $27
    add hl, hl                                    ; $4768: $29
    nop                                           ; $4769: $00
    inc e                                         ; $476a: $1c
    jp nc, Jump_000_275e                          ; $476b: $d2 $5e $27

    add hl, hl                                    ; $476e: $29
    rst $38                                       ; $476f: $ff
    ld a, a                                       ; $4770: $7f
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    rst $38                                       ; $4773: $ff
    ld a, a                                       ; $4774: $7f
    nop                                           ; $4775: $00
    inc e                                         ; $4776: $1c
    ld h, e                                       ; $4777: $63
    db $10                                        ; $4778: $10
    ld [hl+], a                                   ; $4779: $22
    inc b                                         ; $477a: $04
    reti                                          ; $477b: $d9


    ld b, d                                       ; $477c: $42
    ld c, d                                       ; $477d: $4a
    add hl, hl                                    ; $477e: $29
    rst $38                                       ; $477f: $ff
    ld a, a                                       ; $4780: $7f
    ld [hl+], a                                   ; $4781: $22
    nop                                           ; $4782: $00
    db $f4                                        ; $4783: $f4
    dec h                                         ; $4784: $25
    ld a, a                                       ; $4785: $7f
    ccf                                           ; $4786: $3f
    ld [$0011], sp                                ; $4787: $08 $11 $00
    nop                                           ; $478a: $00
    jr nc, jr_0b8_480c                            ; $478b: $30 $7f

    db $ec                                        ; $478d: $ec
    inc d                                         ; $478e: $14
    ld hl, sp+$2d                                 ; $478f: $f8 $2d
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    jr nc, jr_0b8_4814                            ; $4793: $30 $7f

    daa                                           ; $4795: $27
    add hl, hl                                    ; $4796: $29
    jp nc, $005e                                  ; $4797: $d2 $5e $00

    nop                                           ; $479a: $00
    jp nc, $ff5e                                  ; $479b: $d2 $5e $ff

    ld a, a                                       ; $479e: $7f
    daa                                           ; $479f: $27
    add hl, hl                                    ; $47a0: $29
    nop                                           ; $47a1: $00
    inc e                                         ; $47a2: $1c
    jp nc, Jump_000_275e                          ; $47a3: $d2 $5e $27

    add hl, hl                                    ; $47a6: $29
    rst $38                                       ; $47a7: $ff
    ld a, a                                       ; $47a8: $7f
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    jp nc, $ff5e                                  ; $47ab: $d2 $5e $ff

    ld a, a                                       ; $47ae: $7f
    ld [$0011], sp                                ; $47af: $08 $11 $00
    nop                                           ; $47b2: $00
    sub h                                         ; $47b3: $94
    dec h                                         ; $47b4: $25
    sbc l                                         ; $47b5: $9d
    ld [hl], e                                    ; $47b6: $73
    cp h                                          ; $47b7: $bc
    ld [hl], $00                                  ; $47b8: $36 $00
    nop                                           ; $47ba: $00
    jp nc, $cb5e                                  ; $47bb: $d2 $5e $cb

    inc d                                         ; $47be: $14
    cp a                                          ; $47bf: $bf
    ld a, [hl-]                                   ; $47c0: $3a
    ld bc, $3000                                  ; $47c1: $01 $00 $30
    ld a, a                                       ; $47c4: $7f
    cpl                                           ; $47c5: $2f
    dec e                                         ; $47c6: $1d
    ld hl, sp+$2d                                 ; $47c7: $f8 $2d
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    jr nc, jr_0b8_484c                            ; $47cb: $30 $7f

    cpl                                           ; $47cd: $2f
    dec e                                         ; $47ce: $1d
    ld hl, sp+$2d                                 ; $47cf: $f8 $2d
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    daa                                           ; $47d3: $27
    add hl, hl                                    ; $47d4: $29
    jp nc, $f85e                                  ; $47d5: $d2 $5e $f8

    dec l                                         ; $47d8: $2d
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    ld d, a                                       ; $47db: $57
    ld l, a                                       ; $47dc: $6f
    daa                                           ; $47dd: $27
    add hl, hl                                    ; $47de: $29
    nop                                           ; $47df: $00
    jr nz, jr_0b8_47e2                            ; $47e0: $20 $00

jr_0b8_47e2:
    nop                                           ; $47e2: $00
    jp nc, $ff5e                                  ; $47e3: $d2 $5e $ff

    ld a, a                                       ; $47e6: $7f
    daa                                           ; $47e7: $27
    add hl, hl                                    ; $47e8: $29
    ld bc, $9200                                  ; $47e9: $01 $00 $92
    dec h                                         ; $47ec: $25
    cp e                                          ; $47ed: $bb
    ld [hl], $f7                                  ; $47ee: $36 $f7
    ld e, [hl]                                    ; $47f0: $5e
    ld [hl+], a                                   ; $47f1: $22
    ld [$69cc], sp                                ; $47f2: $08 $cc $69
    sbc a                                         ; $47f5: $9f
    ld l, e                                       ; $47f6: $6b
    cp c                                          ; $47f7: $b9
    dec e                                         ; $47f8: $1d
    ld bc, $3000                                  ; $47f9: $01 $00 $30
    ld a, a                                       ; $47fc: $7f
    ld a, l                                       ; $47fd: $7d
    ld a, $eb                                     ; $47fe: $3e $eb
    inc d                                         ; $4800: $14
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    db $10                                        ; $4803: $10
    ld a, a                                       ; $4804: $7f
    rst $38                                       ; $4805: $ff
    ld a, a                                       ; $4806: $7f
    jp nc, $005e                                  ; $4807: $d2 $5e $00

    nop                                           ; $480a: $00
    db $10                                        ; $480b: $10

jr_0b8_480c:
    ld a, a                                       ; $480c: $7f
    rst $38                                       ; $480d: $ff
    ld a, a                                       ; $480e: $7f
    jp nc, $005e                                  ; $480f: $d2 $5e $00

    nop                                           ; $4812: $00
    rst $38                                       ; $4813: $ff

jr_0b8_4814:
    ld a, a                                       ; $4814: $7f
    nop                                           ; $4815: $00
    inc e                                         ; $4816: $1c
    nop                                           ; $4817: $00
    jr nz, jr_0b8_481a                            ; $4818: $20 $00

jr_0b8_481a:
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    ld a, a                                       ; $481c: $7f
    daa                                           ; $481d: $27
    add hl, hl                                    ; $481e: $29
    nop                                           ; $481f: $00
    jr nz, jr_0b8_4822                            ; $4820: $20 $00

jr_0b8_4822:
    ld [$69cc], sp                                ; $4822: $08 $cc $69
    ld d, c                                       ; $4825: $51
    dec e                                         ; $4826: $1d
    rst $38                                       ; $4827: $ff
    ld a, a                                       ; $4828: $7f
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    xor [hl]                                      ; $482b: $ae
    halt                                          ; $482c: $76
    ld e, l                                       ; $482d: $5d
    ld [hl-], a                                   ; $482e: $32
    rra                                           ; $482f: $1f
    ld d, a                                       ; $4830: $57
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    db $10                                        ; $4833: $10
    ld a, e                                       ; $4834: $7b
    ld e, a                                       ; $4835: $5f
    ld e, e                                       ; $4836: $5b
    jp z, RST_10                                  ; $4837: $ca $10 $00

    nop                                           ; $483a: $00
    ldh a, [rPCM12]                               ; $483b: $f0 $76
    rst $38                                       ; $483d: $ff
    ld a, a                                       ; $483e: $7f
    daa                                           ; $483f: $27
    add hl, hl                                    ; $4840: $29
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    db $10                                        ; $4843: $10
    ld a, e                                       ; $4844: $7b
    rst $38                                       ; $4845: $ff
    ld a, a                                       ; $4846: $7f
    db $10                                        ; $4847: $10
    ld a, a                                       ; $4848: $7f
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    or h                                          ; $484b: $b4

jr_0b8_484c:
    ld e, d                                       ; $484c: $5a
    rst $38                                       ; $484d: $ff
    ld a, a                                       ; $484e: $7f
    nop                                           ; $484f: $00
    jr nz, jr_0b8_4852                            ; $4850: $20 $00

jr_0b8_4852:
    nop                                           ; $4852: $00
    ldh a, [$7a]                                  ; $4853: $f0 $7a
    rst $38                                       ; $4855: $ff
    ld a, a                                       ; $4856: $7f
    nop                                           ; $4857: $00
    jr nz, jr_0b8_485b                            ; $4858: $20 $01

    nop                                           ; $485a: $00

jr_0b8_485b:
    db $10                                        ; $485b: $10
    ld a, e                                       ; $485c: $7b
    xor d                                         ; $485d: $aa
    inc c                                         ; $485e: $0c
    ld [hl], d                                    ; $485f: $72
    ld hl, $10ac                                  ; $4860: $21 $ac $10
    ld a, $57                                     ; $4863: $3e $57
    adc a                                         ; $4865: $8f
    dec l                                         ; $4866: $2d
    rst $38                                       ; $4867: $ff
    ld a, e                                       ; $4868: $7b
    ld h, [hl]                                    ; $4869: $66
    ld [$7af0], sp                                ; $486a: $08 $f0 $7a
    or a                                          ; $486d: $b7
    dec h                                         ; $486e: $25
    cp [hl]                                       ; $486f: $be
    ld a, $00                                     ; $4870: $3e $00
    nop                                           ; $4872: $00
    rst $28                                       ; $4873: $ef
    dec a                                         ; $4874: $3d
    rst $38                                       ; $4875: $ff
    ld a, a                                       ; $4876: $7f
    ldh a, [$7a]                                  ; $4877: $f0 $7a
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    pop de                                        ; $487b: $d1
    ld l, d                                       ; $487c: $6a
    adc e                                         ; $487d: $8b
    ld sp, $7fff                                  ; $487e: $31 $ff $7f
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    pop de                                        ; $4883: $d1
    ld h, [hl]                                    ; $4884: $66
    nop                                           ; $4885: $00
    jr nz, @+$01                                  ; $4886: $20 $ff

    ld a, a                                       ; $4888: $7f
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    rst $28                                       ; $488b: $ef
    ld a, d                                       ; $488c: $7a
    rst $38                                       ; $488d: $ff
    ld a, a                                       ; $488e: $7f
    ldh a, [$7a]                                  ; $488f: $f0 $7a
    ld [hl+], a                                   ; $4891: $22
    inc b                                         ; $4892: $04
    ldh a, [$7a]                                  ; $4893: $f0 $7a
    ccf                                           ; $4895: $3f
    ld l, $ce                                     ; $4896: $2e $ce
    ld [$0000], sp                                ; $4898: $08 $00 $00
    ret c                                         ; $489b: $d8

    ld d, d                                       ; $489c: $52
    rst $38                                       ; $489d: $ff
    ld a, a                                       ; $489e: $7f
    xor d                                         ; $489f: $aa
    stop                                          ; $48a0: $10 $00
    nop                                           ; $48a2: $00
    sbc [hl]                                      ; $48a3: $9e
    ld a, $aa                                     ; $48a4: $3e $aa
    inc c                                         ; $48a6: $0c
    rrca                                          ; $48a7: $0f
    dec d                                         ; $48a8: $15
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    rst $28                                       ; $48ab: $ef
    ld a, d                                       ; $48ac: $7a
    ei                                            ; $48ad: $fb
    add hl, hl                                    ; $48ae: $29
    xor c                                         ; $48af: $a9
    inc c                                         ; $48b0: $0c
    ld b, l                                       ; $48b1: $45
    inc b                                         ; $48b2: $04
    or d                                          ; $48b3: $b2
    ld e, d                                       ; $48b4: $5a
    rst $38                                       ; $48b5: $ff
    ld a, a                                       ; $48b6: $7f
    ld l, c                                       ; $48b7: $69
    dec l                                         ; $48b8: $2d
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    rst $28                                       ; $48bb: $ef
    ld a, d                                       ; $48bc: $7a
    rst $38                                       ; $48bd: $ff
    ld a, a                                       ; $48be: $7f
    nop                                           ; $48bf: $00
    jr nz, jr_0b8_48c2                            ; $48c0: $20 $00

jr_0b8_48c2:
    nop                                           ; $48c2: $00
    rst $08                                       ; $48c3: $cf
    ld a, d                                       ; $48c4: $7a
    rst $38                                       ; $48c5: $ff
    ld a, a                                       ; $48c6: $7f
    nop                                           ; $48c7: $00
    jr nz, jr_0b8_48ca                            ; $48c8: $20 $00

jr_0b8_48ca:
    nop                                           ; $48ca: $00
    rst $08                                       ; $48cb: $cf
    ld a, d                                       ; $48cc: $7a
    cpl                                           ; $48cd: $2f
    dec d                                         ; $48ce: $15
    ld h, h                                       ; $48cf: $64
    inc c                                         ; $48d0: $0c
    ld [bc], a                                    ; $48d1: $02
    nop                                           ; $48d2: $00
    ld d, $25                                     ; $48d3: $16 $25
    ld a, a                                       ; $48d5: $7f
    ld b, d                                       ; $48d6: $42
    ld e, b                                       ; $48d7: $58
    ld l, a                                       ; $48d8: $6f
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    sbc a                                         ; $48db: $9f
    ld a, [hl-]                                   ; $48dc: $3a
    ld [hl], d                                    ; $48dd: $72
    dec e                                         ; $48de: $1d
    cp $4e                                        ; $48df: $fe $4e
    inc a                                         ; $48e1: $3c
    ld [hl], $be                                  ; $48e2: $36 $be
    ld b, [hl]                                    ; $48e4: $46
    ld a, [hl]                                    ; $48e5: $7e
    ld a, [hl-]                                   ; $48e6: $3a
    ccf                                           ; $48e7: $3f
    ld d, a                                       ; $48e8: $57
    xor c                                         ; $48e9: $a9
    ld [$367d], sp                                ; $48ea: $08 $7d $36
    ccf                                           ; $48ed: $3f
    ld d, e                                       ; $48ee: $53
    rst $38                                       ; $48ef: $ff
    ld a, a                                       ; $48f0: $7f
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    rst $08                                       ; $48f3: $cf
    ld a, d                                       ; $48f4: $7a
    rst $38                                       ; $48f5: $ff
    ld a, a                                       ; $48f6: $7f
    nop                                           ; $48f7: $00
    jr nz, jr_0b8_48fa                            ; $48f8: $20 $00

jr_0b8_48fa:
    nop                                           ; $48fa: $00
    rst $08                                       ; $48fb: $cf
    ld a, d                                       ; $48fc: $7a
    ld d, h                                       ; $48fd: $54
    ld [hl+], a                                   ; $48fe: $22
    rst $38                                       ; $48ff: $ff
    ld h, a                                       ; $4900: $67
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    rst $08                                       ; $4903: $cf
    ld a, d                                       ; $4904: $7a
    ld d, h                                       ; $4905: $54
    ld [hl+], a                                   ; $4906: $22
    rst $38                                       ; $4907: $ff
    ld h, a                                       ; $4908: $67
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    rst $08                                       ; $490b: $cf
    ld a, d                                       ; $490c: $7a
    or a                                          ; $490d: $b7
    dec h                                         ; $490e: $25
    sbc a                                         ; $490f: $9f
    ld a, [hl-]                                   ; $4910: $3a
    nop                                           ; $4911: $00

jr_0b8_4912:
    nop                                           ; $4912: $00
    rst $28                                       ; $4913: $ef
    dec a                                         ; $4914: $3d
    xor $10                                       ; $4915: $ee $10
    cp [hl]                                       ; $4917: $be
    ld b, [hl]                                    ; $4918: $46
    daa                                           ; $4919: $27
    add hl, hl                                    ; $491a: $29
    inc a                                         ; $491b: $3c
    ld [hl], $33                                  ; $491c: $36 $33
    dec d                                         ; $491e: $15
    sbc [hl]                                      ; $491f: $9e
    ld a, $27                                     ; $4920: $3e $27
    add hl, hl                                    ; $4922: $29
    sbc [hl]                                      ; $4923: $9e
    ld a, $ff                                     ; $4924: $3e $ff
    ld a, a                                       ; $4926: $7f
    sub l                                         ; $4927: $95
    ld hl, $0000                                  ; $4928: $21 $00 $00
    xor a                                         ; $492b: $af
    halt                                          ; $492c: $76
    rst $38                                       ; $492d: $ff
    ld a, a                                       ; $492e: $7f
    nop                                           ; $492f: $00
    jr nz, jr_0b8_4955                            ; $4930: $20 $23

    nop                                           ; $4932: $00
    ld e, b                                       ; $4933: $58
    ld de, $5a92                                  ; $4934: $11 $92 $5a
    rst $38                                       ; $4937: $ff
    ld e, a                                       ; $4938: $5f
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    xor a                                         ; $493b: $af
    halt                                          ; $493c: $76
    rst $08                                       ; $493d: $cf
    halt                                          ; $493e: $76
    xor a                                         ; $493f: $af
    ld a, d                                       ; $4940: $7a
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    xor a                                         ; $4943: $af
    halt                                          ; $4944: $76
    sub [hl]                                      ; $4945: $96
    ld hl, $10cd                                  ; $4946: $21 $cd $10
    inc h                                         ; $4949: $24
    nop                                           ; $494a: $00
    sbc [hl]                                      ; $494b: $9e
    ld b, d                                       ; $494c: $42
    sub b                                         ; $494d: $90
    add hl, hl                                    ; $494e: $29
    rst $38                                       ; $494f: $ff
    ld a, a                                       ; $4950: $7f
    ld [hl+], a                                   ; $4951: $22
    inc b                                         ; $4952: $04
    jr nc, jr_0b8_499b                            ; $4953: $30 $46

jr_0b8_4955:
    inc a                                         ; $4955: $3c
    ld [hl-], a                                   ; $4956: $32
    daa                                           ; $4957: $27
    add hl, hl                                    ; $4958: $29
    add hl, hl                                    ; $4959: $29
    dec h                                         ; $495a: $25
    db $d3                                        ; $495b: $d3
    ld e, [hl]                                    ; $495c: $5e
    rst $38                                       ; $495d: $ff
    ld a, a                                       ; $495e: $7f
    ld e, l                                       ; $495f: $5d
    ld [hl], $00                                  ; $4960: $36 $00
    nop                                           ; $4962: $00
    rst $18                                       ; $4963: $df
    ld [hl], e                                    ; $4964: $73
    nop                                           ; $4965: $00
    jr nz, jr_0b8_4912                            ; $4966: $20 $aa

    ld [$0801], sp                                ; $4968: $08 $01 $08
    reti                                          ; $496b: $d9


    ld l, $f2                                     ; $496c: $2e $f2
    inc c                                         ; $496e: $0c
    rst $38                                       ; $496f: $ff
    ld [hl], e                                    ; $4970: $73
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    xor a                                         ; $4973: $af
    halt                                          ; $4974: $76
    inc e                                         ; $4975: $1c
    daa                                           ; $4976: $27
    ld h, d                                       ; $4977: $62
    db $10                                        ; $4978: $10
    ld b, e                                       ; $4979: $43
    inc b                                         ; $497a: $04
    xor a                                         ; $497b: $af
    halt                                          ; $497c: $76
    ld a, l                                       ; $497d: $7d
    ld a, $31                                     ; $497e: $3e $31
    dec d                                         ; $4980: $15
    inc hl                                        ; $4981: $23
    nop                                           ; $4982: $00
    ld a, [de]                                    ; $4983: $1a
    ld l, $ec                                     ; $4984: $2e $ec
    db $10                                        ; $4986: $10
    sbc $46                                       ; $4987: $de $46
    rst $28                                       ; $4989: $ef
    dec a                                         ; $498a: $3d
    rst $38                                       ; $498b: $ff
    ld a, a                                       ; $498c: $7f
    ld e, l                                       ; $498d: $5d
    ld [hl], $b7                                  ; $498e: $36 $b7
    dec h                                         ; $4990: $25
    daa                                           ; $4991: $27
    add hl, hl                                    ; $4992: $29
    jp c, $f029                                   ; $4993: $da $29 $f0

    db $10                                        ; $4996: $10
    ld e, [hl]                                    ; $4997: $5e
    ld [hl], $00                                  ; $4998: $36 $00
    nop                                           ; $499a: $00

jr_0b8_499b:
    rst $18                                       ; $499b: $df
    ld c, d                                       ; $499c: $4a
    rst $38                                       ; $499d: $ff
    ld a, a                                       ; $499e: $7f
    nop                                           ; $499f: $00
    jr nz, jr_0b8_49a2                            ; $49a0: $20 $00

jr_0b8_49a2:
    inc c                                         ; $49a2: $0c
    ld c, [hl]                                    ; $49a3: $4e
    nop                                           ; $49a4: $00
    ld a, [$900c]                                 ; $49a5: $fa $0c $90
    add hl, bc                                    ; $49a8: $09
    nop                                           ; $49a9: $00
    inc b                                         ; $49aa: $04
    ld l, a                                       ; $49ab: $6f
    ld h, [hl]                                    ; $49ac: $66
    or [hl]                                       ; $49ad: $b6
    ld c, d                                       ; $49ae: $4a
    sbc h                                         ; $49af: $9c
    ld h, a                                       ; $49b0: $67
    inc hl                                        ; $49b1: $23
    nop                                           ; $49b2: $00
    sub a                                         ; $49b3: $97
    ld hl, $469c                                  ; $49b4: $21 $9c $46
    rst $38                                       ; $49b7: $ff
    ld a, a                                       ; $49b8: $7f
    ld hl, $ff04                                  ; $49b9: $21 $04 $ff
    ld a, a                                       ; $49bc: $7f
    inc c                                         ; $49bd: $0c
    add hl, de                                    ; $49be: $19
    sub l                                         ; $49bf: $95

jr_0b8_49c0:
    ld hl, $0024                                  ; $49c0: $21 $24 $00
    dec sp                                        ; $49c3: $3b
    ld [hl], $33                                  ; $49c4: $36 $33
    dec d                                         ; $49c6: $15
    sbc $46                                       ; $49c7: $de $46
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    ld [hl], l                                    ; $49cb: $75
    dec e                                         ; $49cc: $1d
    ld e, l                                       ; $49cd: $5d
    ld [hl], $0d                                  ; $49ce: $36 $0d
    add hl, de                                    ; $49d0: $19
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    inc e                                         ; $49d3: $1c
    ld l, $ff                                     ; $49d4: $2e $ff
    ld a, a                                       ; $49d6: $7f
    nop                                           ; $49d7: $00
    jr nz, jr_0b8_49da                            ; $49d8: $20 $00

jr_0b8_49da:
    nop                                           ; $49da: $00
    ld a, c                                       ; $49db: $79
    dec d                                         ; $49dc: $15
    ld l, c                                       ; $49dd: $69
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    jr nz, jr_0b8_49e2                            ; $49e0: $20 $00

jr_0b8_49e2:
    nop                                           ; $49e2: $00
    ld [hl], b                                    ; $49e3: $70
    ld e, d                                       ; $49e4: $5a
    sbc $7b                                       ; $49e5: $de $7b
    ld l, l                                       ; $49e7: $6d
    add hl, de                                    ; $49e8: $19
    and a                                         ; $49e9: $a7
    inc d                                         ; $49ea: $14
    or a                                          ; $49eb: $b7
    dec h                                         ; $49ec: $25
    ld a, l                                       ; $49ed: $7d
    ld a, [hl-]                                   ; $49ee: $3a
    xor e                                         ; $49ef: $ab
    dec a                                         ; $49f0: $3d
    add a                                         ; $49f1: $87
    inc c                                         ; $49f2: $0c
    reti                                          ; $49f3: $d9


    add hl, hl                                    ; $49f4: $29
    sbc [hl]                                      ; $49f5: $9e
    ld a, $52                                     ; $49f6: $3e $52
    add hl, de                                    ; $49f8: $19
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    sub [hl]                                      ; $49fb: $96
    ld hl, $46be                                  ; $49fc: $21 $be $46
    rrca                                          ; $49ff: $0f
    dec d                                         ; $4a00: $15
    add a                                         ; $4a01: $87
    ld [$2dfa], sp                                ; $4a02: $08 $fa $2d
    ld [hl], h                                    ; $4a05: $74
    dec e                                         ; $4a06: $1d
    sbc l                                         ; $4a07: $9d
    ld a, $00                                     ; $4a08: $3e $00
    nop                                           ; $4a0a: $00
    rst $38                                       ; $4a0b: $ff
    ld a, a                                       ; $4a0c: $7f
    nop                                           ; $4a0d: $00
    jr nz, jr_0b8_4a55                            ; $4a0e: $20 $45

    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    ld c, [hl]                                    ; $4a13: $4e
    nop                                           ; $4a14: $00
    ld a, [$000c]                                 ; $4a15: $fa $0c $00
    jr nz, jr_0b8_4a1a                            ; $4a18: $20 $00

jr_0b8_4a1a:
    nop                                           ; $4a1a: $00
    ld c, [hl]                                    ; $4a1b: $4e
    ld [hl], d                                    ; $4a1c: $72
    cp l                                          ; $4a1d: $bd
    ld l, a                                       ; $4a1e: $6f
    db $eb                                        ; $4a1f: $eb
    stop                                          ; $4a20: $10 $00
    nop                                           ; $4a22: $00
    or [hl]                                       ; $4a23: $b6
    dec h                                         ; $4a24: $25
    ld e, l                                       ; $4a25: $5d
    ld [hl], $c6                                  ; $4a26: $36 $c6
    jr jr_0b8_49c0                                ; $4a28: $18 $96

    ld hl, $429d                                  ; $4a2a: $21 $9d $42
    inc a                                         ; $4a2d: $3c
    ld [hl], $de                                  ; $4a2e: $36 $de
    ld c, [hl]                                    ; $4a30: $4e
    inc h                                         ; $4a31: $24
    nop                                           ; $4a32: $00
    jp c, $9d25                                   ; $4a33: $da $25 $9d

    ld a, $de                                     ; $4a36: $3e $de
    ld c, [hl]                                    ; $4a38: $4e
    ld [hl+], a                                   ; $4a39: $22
    nop                                           ; $4a3a: $00
    dec de                                        ; $4a3b: $1b
    ld a, [hl+]                                   ; $4a3c: $2a
    cp [hl]                                       ; $4a3d: $be

jr_0b8_4a3e:
    ld b, [hl]                                    ; $4a3e: $46
    ld a, h                                       ; $4a3f: $7c
    ld a, [hl-]                                   ; $4a40: $3a
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    rst $38                                       ; $4a43: $ff
    ld a, a                                       ; $4a44: $7f
    nop                                           ; $4a45: $00
    jr nz, jr_0b8_4ac4                            ; $4a46: $20 $7c

    ld a, [hl-]                                   ; $4a48: $3a
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    ld a, [$000c]                                 ; $4a4b: $fa $0c $00
    jr nz, @-$38                                  ; $4a4e: $20 $c6

    jr jr_0b8_4a52                                ; $4a50: $18 $00

jr_0b8_4a52:
    nop                                           ; $4a52: $00
    ld c, l                                       ; $4a53: $4d
    ld [hl], d                                    ; $4a54: $72

jr_0b8_4a55:
    inc e                                         ; $4a55: $1c
    ld l, $4e                                     ; $4a56: $2e $4e
    nop                                           ; $4a58: $00
    ld [hl+], a                                   ; $4a59: $22
    nop                                           ; $4a5a: $00
    ld a, c                                       ; $4a5b: $79
    ld b, d                                       ; $4a5c: $42
    cp $7f                                        ; $4a5d: $fe $7f
    inc c                                         ; $4a5f: $0c
    add hl, de                                    ; $4a60: $19
    ld l, b                                       ; $4a61: $68
    inc b                                         ; $4a62: $04
    ld a, l                                       ; $4a63: $7d
    ld a, [hl-]                                   ; $4a64: $3a
    sub l                                         ; $4a65: $95
    ld hl, $52fe                                  ; $4a66: $21 $fe $52
    ld h, a                                       ; $4a69: $67
    inc b                                         ; $4a6a: $04
    sbc l                                         ; $4a6b: $9d
    ld b, d                                       ; $4a6c: $42
    ld [hl], e                                    ; $4a6d: $73
    ld hl, $4ade                                  ; $4a6e: $21 $de $4a
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    cp b                                          ; $4a73: $b8
    dec h                                         ; $4a74: $25
    ld a, l                                       ; $4a75: $7d
    ld a, [hl-]                                   ; $4a76: $3a
    cp [hl]                                       ; $4a77: $be
    ld c, d                                       ; $4a78: $4a
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    rst $38                                       ; $4a7b: $ff
    ld a, a                                       ; $4a7c: $7f
    nop                                           ; $4a7d: $00
    jr nz, jr_0b8_4a3e                            ; $4a7e: $20 $be

    ld c, d                                       ; $4a80: $4a
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    jp nc, Jump_000_215e                          ; $4a83: $d2 $5e $21

jr_0b8_4a86:
    jr nz, jr_0b8_4a86                            ; $4a86: $20 $fe

    ld a, a                                       ; $4a88: $7f
    inc h                                         ; $4a89: $24
    nop                                           ; $4a8a: $00
    dec l                                         ; $4a8b: $2d
    ld [hl], d                                    ; $4a8c: $72
    ld e, b                                       ; $4a8d: $58
    add hl, de                                    ; $4a8e: $19
    ld a, [hl]                                    ; $4a8f: $7e
    ld a, [hl-]                                   ; $4a90: $3a
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    jp nc, $7d5e                                  ; $4a93: $d2 $5e $7d

    ld a, [hl-]                                   ; $4a96: $3a
    and a                                         ; $4a97: $a7
    db $10                                        ; $4a98: $10
    ld l, b                                       ; $4a99: $68
    inc b                                         ; $4a9a: $04
    ld e, l                                       ; $4a9b: $5d
    ld a, [hl-]                                   ; $4a9c: $3a
    db $10                                        ; $4a9d: $10
    dec d                                         ; $4a9e: $15
    cp [hl]                                       ; $4a9f: $be
    ld b, [hl]                                    ; $4aa0: $46
    ld l, b                                       ; $4aa1: $68
    inc b                                         ; $4aa2: $04
    or [hl]                                       ; $4aa3: $b6
    add hl, hl                                    ; $4aa4: $29
    ld a, l                                       ; $4aa5: $7d
    ld a, $fc                                     ; $4aa6: $3e $fc
    dec h                                         ; $4aa8: $25
    ld bc, $7600                                  ; $4aa9: $01 $00 $76
    dec e                                         ; $4aac: $1d
    rst $38                                       ; $4aad: $ff
    ld a, a                                       ; $4aae: $7f
    ld a, l                                       ; $4aaf: $7d
    ld a, [hl-]                                   ; $4ab0: $3a
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    rst $38                                       ; $4ab3: $ff
    ld a, a                                       ; $4ab4: $7f
    nop                                           ; $4ab5: $00
    jr nz, @+$7f                                  ; $4ab6: $20 $7d

    ld a, [hl-]                                   ; $4ab8: $3a
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    jp nc, Jump_000_205e                          ; $4abb: $d2 $5e $20

    jr nz, @+$01                                  ; $4abe: $20 $ff

    ld a, a                                       ; $4ac0: $7f
    inc h                                         ; $4ac1: $24
    nop                                           ; $4ac2: $00
    dec c                                         ; $4ac3: $0d

jr_0b8_4ac4:
    ld l, [hl]                                    ; $4ac4: $6e
    jr jr_0b8_4ad8                                ; $4ac5: $18 $11

    rst $38                                       ; $4ac7: $ff
    ld d, d                                       ; $4ac8: $52
    ld l, b                                       ; $4ac9: $68
    inc b                                         ; $4aca: $04
    ld e, l                                       ; $4acb: $5d
    ld a, [hl-]                                   ; $4acc: $3a
    ld [hl], c                                    ; $4acd: $71
    ld hl, $4ede                                  ; $4ace: $21 $de $4e
    ld l, b                                       ; $4ad1: $68
    inc b                                         ; $4ad2: $04
    cp b                                          ; $4ad3: $b8
    ld hl, $323c                                  ; $4ad4: $21 $3c $32
    rst $28                                       ; $4ad7: $ef

jr_0b8_4ad8:
    stop                                          ; $4ad8: $10 $00
    nop                                           ; $4ada: $00
    sbc b                                         ; $4adb: $98
    ld hl, $323c                                  ; $4adc: $21 $3c $32
    ld l, b                                       ; $4adf: $68
    inc b                                         ; $4ae0: $04
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    ld a, [$ff29]                                 ; $4ae3: $fa $29 $ff
    ld a, a                                       ; $4ae6: $7f
    xor h                                         ; $4ae7: $ac
    inc c                                         ; $4ae8: $0c
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    jr nz, @+$01                                  ; $4aec: $20 $ff

    ld a, a                                       ; $4aee: $7f
    xor h                                         ; $4aef: $ac
    inc c                                         ; $4af0: $0c
    nop                                           ; $4af1: $00

jr_0b8_4af2:
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    jr nz, jr_0b8_4b67                            ; $4af4: $20 $71

    ld hl, $4ede                                  ; $4af6: $21 $de $4e
    dec h                                         ; $4af9: $25

jr_0b8_4afa:
    nop                                           ; $4afa: $00
    call z, $3869                                 ; $4afb: $cc $69 $38
    dec d                                         ; $4afe: $15
    rst $38                                       ; $4aff: $ff
    ld a, a                                       ; $4b00: $7f
    ld l, b                                       ; $4b01: $68
    inc b                                         ; $4b02: $04
    ld e, h                                       ; $4b03: $5c
    ld a, [hl-]                                   ; $4b04: $3a
    cp $4e                                        ; $4b05: $fe $4e
    ld [hl], e                                    ; $4b07: $73
    ld hl, $0000                                  ; $4b08: $21 $00 $00
    ld [hl-], a                                   ; $4b0b: $32
    dec d                                         ; $4b0c: $15
    cp b                                          ; $4b0d: $b8
    ld hl, $323b                                  ; $4b0e: $21 $3b $32
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    rrca                                          ; $4b13: $0f
    ld de, $21b9                                  ; $4b14: $11 $b9 $21
    ld b, a                                       ; $4b17: $47
    inc b                                         ; $4b18: $04
    ld bc, $ff00                                  ; $4b19: $01 $00 $ff
    ld a, a                                       ; $4b1c: $7f
    call z, Call_0b8_5410                         ; $4b1d: $cc $10 $54
    add hl, de                                    ; $4b20: $19
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    jr nz, jr_0b8_4af2                            ; $4b24: $20 $cc

    db $10                                        ; $4b26: $10
    ld d, h                                       ; $4b27: $54
    add hl, de                                    ; $4b28: $19
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00

jr_0b8_4b2c:
    jr nz, jr_0b8_4b2c                            ; $4b2c: $20 $fe

    ld c, [hl]                                    ; $4b2e: $4e
    ld [hl], e                                    ; $4b2f: $73
    ld hl, $0000                                  ; $4b30: $21 $00 $00
    call z, $b669                                 ; $4b33: $cc $69 $b6
    ld [$7fff], sp                                ; $4b36: $08 $ff $7f
    ld l, b                                       ; $4b39: $68
    inc b                                         ; $4b3a: $04
    sub [hl]                                      ; $4b3b: $96
    ld hl, $3e7d                                  ; $4b3c: $21 $7d $3e
    ld c, $19                                     ; $4b3f: $0e $19
    adc d                                         ; $4b41: $8a
    ld [$1954], sp                                ; $4b42: $08 $54 $19
    sub [hl]                                      ; $4b45: $96
    dec e                                         ; $4b46: $1d
    reti                                          ; $4b47: $d9


    dec h                                         ; $4b48: $25
    halt                                          ; $4b49: $76
    add hl, de                                    ; $4b4a: $19
    dec de                                        ; $4b4b: $1b
    ld [hl-], a                                   ; $4b4c: $32
    ld e, l                                       ; $4b4d: $5d
    ld [hl], $b8                                  ; $4b4e: $36 $b8
    ld hl, $0001                                  ; $4b50: $21 $01 $00
    ld [hl], e                                    ; $4b53: $73
    ld hl, $7fff                                  ; $4b54: $21 $ff $7f
    ld e, l                                       ; $4b57: $5d
    ld [hl], $00                                  ; $4b58: $36 $00
    inc e                                         ; $4b5a: $1c
    jp nc, Jump_000_275e                          ; $4b5b: $d2 $5e $27

    add hl, hl                                    ; $4b5e: $29
    cp $7f                                        ; $4b5f: $fe $7f
    nop                                           ; $4b61: $00
    jr nz, jr_0b8_4afa                            ; $4b62: $20 $96

    ld hl, $3e7d                                  ; $4b64: $21 $7d $3e

jr_0b8_4b67:
    ld c, $19                                     ; $4b67: $0e $19
    nop                                           ; $4b69: $00

jr_0b8_4b6a:
    nop                                           ; $4b6a: $00
    call z, $b669                                 ; $4b6b: $cc $69 $b6
    ld [$7fff], sp                                ; $4b6e: $08 $ff $7f
    ld bc, $7500                                  ; $4b71: $01 $00 $75
    dec e                                         ; $4b74: $1d
    db $ed                                        ; $4b75: $ed
    db $10                                        ; $4b76: $10
    inc e                                         ; $4b77: $1c
    ld l, $cd                                     ; $4b78: $2e $cd
    db $10                                        ; $4b7a: $10
    reti                                          ; $4b7b: $d9


    add hl, hl                                    ; $4b7c: $29
    ld a, l                                       ; $4b7d: $7d
    ld a, $54                                     ; $4b7e: $3e $54
    add hl, de                                    ; $4b80: $19
    ld [hl], e                                    ; $4b81: $73
    ld hl, $365d                                  ; $4b82: $21 $5d $36
    sbc $4a                                       ; $4b85: $de $4a
    reti                                          ; $4b87: $d9


    add hl, hl                                    ; $4b88: $29
    nop                                           ; $4b89: $00
    inc b                                         ; $4b8a: $04
    dec de                                        ; $4b8b: $1b
    ld l, $ff                                     ; $4b8c: $2e $ff
    ld a, a                                       ; $4b8e: $7f
    xor d                                         ; $4b8f: $aa
    inc c                                         ; $4b90: $0c
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    jp nc, $005e                                  ; $4b93: $d2 $5e $00

    jr nz, @+$29                                  ; $4b96: $20 $27

    add hl, hl                                    ; $4b98: $29
    nop                                           ; $4b99: $00
    jr nz, jr_0b8_4c11                            ; $4b9a: $20 $75

    dec e                                         ; $4b9c: $1d
    db $ed                                        ; $4b9d: $ed
    db $10                                        ; $4b9e: $10
    inc e                                         ; $4b9f: $1c
    ld l, $00                                     ; $4ba0: $2e $00
    ld [$69cc], sp                                ; $4ba2: $08 $cc $69
    or [hl]                                       ; $4ba5: $b6
    ld [$7fff], sp                                ; $4ba6: $08 $ff $7f
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    sub [hl]                                      ; $4bab: $96
    dec e                                         ; $4bac: $1d
    rst $18                                       ; $4bad: $df
    ld b, d                                       ; $4bae: $42
    reti                                          ; $4baf: $d9


    add hl, hl                                    ; $4bb0: $29
    ld b, l                                       ; $4bb1: $45
    inc b                                         ; $4bb2: $04
    ld a, [$be2d]                                 ; $4bb3: $fa $2d $be
    ld c, d                                       ; $4bb6: $4a
    ld de, $6815                                  ; $4bb7: $11 $15 $68
    ld [$2195], sp                                ; $4bba: $08 $95 $21
    dec sp                                        ; $4bbd: $3b
    ld [hl], $be                                  ; $4bbe: $36 $be
    ld b, [hl]                                    ; $4bc0: $46
    nop                                           ; $4bc1: $00
    ld [$7fff], sp                                ; $4bc2: $08 $ff $7f
    ld [hl-], a                                   ; $4bc5: $32
    add hl, de                                    ; $4bc6: $19
    ld b, a                                       ; $4bc7: $47
    inc b                                         ; $4bc8: $04
    nop                                           ; $4bc9: $00
    jr nz, @+$01                                  ; $4bca: $20 $ff

    ld a, a                                       ; $4bcc: $7f
    ld [hl-], a                                   ; $4bcd: $32
    add hl, de                                    ; $4bce: $19
    ld b, a                                       ; $4bcf: $47
    inc b                                         ; $4bd0: $04
    nop                                           ; $4bd1: $00
    jr nz, jr_0b8_4b6a                            ; $4bd2: $20 $96

    dec e                                         ; $4bd4: $1d
    rst $18                                       ; $4bd5: $df
    ld b, d                                       ; $4bd6: $42
    reti                                          ; $4bd7: $d9


    add hl, hl                                    ; $4bd8: $29
    nop                                           ; $4bd9: $00
    ld [$69cc], sp                                ; $4bda: $08 $cc $69
    ld a, [$ff0c]                                 ; $4bdd: $fa $0c $ff
    ld a, a                                       ; $4be0: $7f
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    sub l                                         ; $4be3: $95
    dec h                                         ; $4be4: $25
    sbc l                                         ; $4be5: $9d
    ld b, d                                       ; $4be6: $42
    ld h, h                                       ; $4be7: $64
    inc c                                         ; $4be8: $0c
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    ld a, a                                       ; $4bec: $7f
    ld [hl-], a                                   ; $4bed: $32
    add hl, de                                    ; $4bee: $19
    ld b, a                                       ; $4bef: $47
    inc b                                         ; $4bf0: $04
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    ld a, a                                       ; $4bf4: $7f
    ld [hl-], a                                   ; $4bf5: $32
    add hl, de                                    ; $4bf6: $19
    ld b, a                                       ; $4bf7: $47
    inc b                                         ; $4bf8: $04
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    rst $38                                       ; $4bfb: $ff
    ld a, a                                       ; $4bfc: $7f
    nop                                           ; $4bfd: $00
    jr nz, @+$49                                  ; $4bfe: $20 $47

    inc b                                         ; $4c00: $04
    nop                                           ; $4c01: $00
    jr nz, @+$01                                  ; $4c02: $20 $ff

    ld a, a                                       ; $4c04: $7f
    nop                                           ; $4c05: $00
    jr nz, @+$49                                  ; $4c06: $20 $47

    inc b                                         ; $4c08: $04
    nop                                           ; $4c09: $00
    jr nz, @-$69                                  ; $4c0a: $20 $95

    dec h                                         ; $4c0c: $25
    sbc l                                         ; $4c0d: $9d
    ld b, d                                       ; $4c0e: $42
    ld h, h                                       ; $4c0f: $64
    inc c                                         ; $4c10: $0c

jr_0b8_4c11:
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    rst $38                                       ; $4c13: $ff
    ld a, a                                       ; $4c14: $7f
    nop                                           ; $4c15: $00
    jr nz, jr_0b8_4c7c                            ; $4c16: $20 $64

    inc c                                         ; $4c18: $0c
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    rst $38                                       ; $4c1b: $ff
    ld a, a                                       ; $4c1c: $7f
    nop                                           ; $4c1d: $00
    jr nz, jr_0b8_4c84                            ; $4c1e: $20 $64

    inc c                                         ; $4c20: $0c
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    jr nz, jr_0b8_4c26                            ; $4c24: $20 $00

jr_0b8_4c26:
    jr nz, @+$49                                  ; $4c26: $20 $47

    inc b                                         ; $4c28: $04
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    jr nz, jr_0b8_4c2e                            ; $4c2c: $20 $00

jr_0b8_4c2e:
    jr nz, @+$49                                  ; $4c2e: $20 $47

    inc b                                         ; $4c30: $04
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    jr nz, jr_0b8_4c36                            ; $4c34: $20 $00

jr_0b8_4c36:
    jr nz, @+$49                                  ; $4c36: $20 $47

    inc b                                         ; $4c38: $04
    nop                                           ; $4c39: $00
    jr nz, jr_0b8_4c3c                            ; $4c3a: $20 $00

jr_0b8_4c3c:
    jr nz, jr_0b8_4c3e                            ; $4c3c: $20 $00

jr_0b8_4c3e:
    jr nz, @+$49                                  ; $4c3e: $20 $47

    inc b                                         ; $4c40: $04
    nop                                           ; $4c41: $00
    jr nz, jr_0b8_4c44                            ; $4c42: $20 $00

jr_0b8_4c44:
    jr nz, jr_0b8_4c46                            ; $4c44: $20 $00

jr_0b8_4c46:
    jr nz, @+$05                                  ; $4c46: $20 $03

    inc b                                         ; $4c48: $04
    nop                                           ; $4c49: $00
    jr nz, jr_0b8_4c4c                            ; $4c4a: $20 $00

jr_0b8_4c4c:
    jr nz, jr_0b8_4c4e                            ; $4c4c: $20 $00

jr_0b8_4c4e:
    jr nz, @+$05                                  ; $4c4e: $20 $03

    inc b                                         ; $4c50: $04
    nop                                           ; $4c51: $00
    jr nz, jr_0b8_4c54                            ; $4c52: $20 $00

jr_0b8_4c54:
    jr nz, jr_0b8_4c56                            ; $4c54: $20 $00

jr_0b8_4c56:
    jr nz, jr_0b8_4c5b                            ; $4c56: $20 $03

    inc b                                         ; $4c58: $04
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00

jr_0b8_4c5b:
    rst $38                                       ; $4c5b: $ff
    ld a, a                                       ; $4c5c: $7f
    nop                                           ; $4c5d: $00
    jr nz, @+$01                                  ; $4c5e: $20 $ff

    ld a, a                                       ; $4c60: $7f
    nop                                           ; $4c61: $00
    jr nz, @+$01                                  ; $4c62: $20 $ff

    ld a, a                                       ; $4c64: $7f
    nop                                           ; $4c65: $00
    jr nz, @+$01                                  ; $4c66: $20 $ff

    ld a, a                                       ; $4c68: $7f
    nop                                           ; $4c69: $00
    jr nz, @+$01                                  ; $4c6a: $20 $ff

    ld a, a                                       ; $4c6c: $7f
    nop                                           ; $4c6d: $00
    jr nz, @+$01                                  ; $4c6e: $20 $ff

    ld a, a                                       ; $4c70: $7f
    nop                                           ; $4c71: $00
    jr nz, @+$01                                  ; $4c72: $20 $ff

    ld a, a                                       ; $4c74: $7f
    nop                                           ; $4c75: $00
    jr nz, @+$01                                  ; $4c76: $20 $ff

    ld a, a                                       ; $4c78: $7f
    nop                                           ; $4c79: $00
    jr nz, jr_0b8_4c7c                            ; $4c7a: $20 $00

jr_0b8_4c7c:
    jr nz, jr_0b8_4c7e                            ; $4c7c: $20 $00

jr_0b8_4c7e:
    jr nz, @+$05                                  ; $4c7e: $20 $03

    inc b                                         ; $4c80: $04
    nop                                           ; $4c81: $00
    jr nz, jr_0b8_4c84                            ; $4c82: $20 $00

jr_0b8_4c84:
    jr nz, jr_0b8_4c86                            ; $4c84: $20 $00

jr_0b8_4c86:
    jr nz, @+$05                                  ; $4c86: $20 $03

    inc b                                         ; $4c88: $04
    nop                                           ; $4c89: $00
    jr nz, jr_0b8_4c8c                            ; $4c8a: $20 $00

jr_0b8_4c8c:
    jr nz, jr_0b8_4c8e                            ; $4c8c: $20 $00

jr_0b8_4c8e:
    jr nz, jr_0b8_4c93                            ; $4c8e: $20 $03

    inc b                                         ; $4c90: $04
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00

jr_0b8_4c93:
    rst $38                                       ; $4c93: $ff
    ld a, a                                       ; $4c94: $7f
    nop                                           ; $4c95: $00
    jr nz, @+$01                                  ; $4c96: $20 $ff

    ld a, a                                       ; $4c98: $7f
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    jr nz, jr_0b8_4c9e                            ; $4c9c: $20 $00

jr_0b8_4c9e:
    jr nz, @+$01                                  ; $4c9e: $20 $ff

    ld a, a                                       ; $4ca0: $7f
    nop                                           ; $4ca1: $00
    jr nz, jr_0b8_4ca4                            ; $4ca2: $20 $00

jr_0b8_4ca4:
    jr nz, jr_0b8_4ca6                            ; $4ca4: $20 $00

jr_0b8_4ca6:
    jr nz, @+$01                                  ; $4ca6: $20 $ff

    ld a, a                                       ; $4ca8: $7f
    nop                                           ; $4ca9: $00
    jr nz, jr_0b8_4cac                            ; $4caa: $20 $00

jr_0b8_4cac:
    jr nz, jr_0b8_4cae                            ; $4cac: $20 $00

jr_0b8_4cae:
    jr nz, @+$01                                  ; $4cae: $20 $ff

    ld a, a                                       ; $4cb0: $7f
    nop                                           ; $4cb1: $00
    jr nz, jr_0b8_4cb4                            ; $4cb2: $20 $00

jr_0b8_4cb4:
    jr nz, jr_0b8_4cb6                            ; $4cb4: $20 $00

jr_0b8_4cb6:
    jr nz, @+$05                                  ; $4cb6: $20 $03

    inc b                                         ; $4cb8: $04
    nop                                           ; $4cb9: $00
    jr nz, jr_0b8_4cbc                            ; $4cba: $20 $00

jr_0b8_4cbc:
    jr nz, jr_0b8_4cbe                            ; $4cbc: $20 $00

jr_0b8_4cbe:
    jr nz, jr_0b8_4cc3                            ; $4cbe: $20 $03

    inc b                                         ; $4cc0: $04
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00

jr_0b8_4cc3:
    rst $38                                       ; $4cc3: $ff
    ld a, a                                       ; $4cc4: $7f
    nop                                           ; $4cc5: $00
    jr nz, jr_0b8_4ccb                            ; $4cc6: $20 $03

jr_0b8_4cc8:
    inc b                                         ; $4cc8: $04
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00

jr_0b8_4ccb:
    ld d, b                                       ; $4ccb: $50
    ld [hl], d                                    ; $4ccc: $72
    rst $38                                       ; $4ccd: $ff
    ld a, a                                       ; $4cce: $7f
    rst $38                                       ; $4ccf: $ff

jr_0b8_4cd0:
    ld a, a                                       ; $4cd0: $7f
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    rst $38                                       ; $4cd3: $ff
    ld a, a                                       ; $4cd4: $7f
    nop                                           ; $4cd5: $00
    jr nz, @+$01                                  ; $4cd6: $20 $ff

    ld a, a                                       ; $4cd8: $7f
    nop                                           ; $4cd9: $00
    jr nz, @+$01                                  ; $4cda: $20 $ff

    ld a, a                                       ; $4cdc: $7f
    nop                                           ; $4cdd: $00
    jr nz, @+$01                                  ; $4cde: $20 $ff

    ld a, a                                       ; $4ce0: $7f
    nop                                           ; $4ce1: $00
    jr nz, @+$01                                  ; $4ce2: $20 $ff

    ld a, a                                       ; $4ce4: $7f
    nop                                           ; $4ce5: $00
    jr nz, @+$01                                  ; $4ce6: $20 $ff

    ld a, a                                       ; $4ce8: $7f
    nop                                           ; $4ce9: $00
    jr nz, @+$01                                  ; $4cea: $20 $ff

    ld a, a                                       ; $4cec: $7f
    nop                                           ; $4ced: $00
    jr nz, @+$05                                  ; $4cee: $20 $03

    inc b                                         ; $4cf0: $04
    nop                                           ; $4cf1: $00
    jr nz, @+$01                                  ; $4cf2: $20 $ff

    ld a, a                                       ; $4cf4: $7f
    nop                                           ; $4cf5: $00
    jr nz, jr_0b8_4cfb                            ; $4cf6: $20 $03

    inc b                                         ; $4cf8: $04
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00

jr_0b8_4cfb:
    rst $38                                       ; $4cfb: $ff
    ld a, a                                       ; $4cfc: $7f
    nop                                           ; $4cfd: $00
    jr nz, jr_0b8_4d03                            ; $4cfe: $20 $03

    inc b                                         ; $4d00: $04
    ld d, b                                       ; $4d01: $50
    ld [hl], d                                    ; $4d02: $72

jr_0b8_4d03:
    rst $38                                       ; $4d03: $ff
    ld a, a                                       ; $4d04: $7f
    nop                                           ; $4d05: $00
    jr nz, @+$01                                  ; $4d06: $20 $ff

    ld a, a                                       ; $4d08: $7f
    nop                                           ; $4d09: $00
    db $10                                        ; $4d0a: $10
    or h                                          ; $4d0b: $b4
    ld l, d                                       ; $4d0c: $6a
    adc h                                         ; $4d0d: $8c
    ld sp, $7fff                                  ; $4d0e: $31 $ff $7f
    nop                                           ; $4d11: $00
    jr nz, jr_0b8_4cc8                            ; $4d12: $20 $b4

    ld l, d                                       ; $4d14: $6a
    adc h                                         ; $4d15: $8c
    ld sp, $7fff                                  ; $4d16: $31 $ff $7f
    nop                                           ; $4d19: $00
    jr nz, jr_0b8_4cd0                            ; $4d1a: $20 $b4

    ld l, d                                       ; $4d1c: $6a
    adc h                                         ; $4d1d: $8c
    ld sp, $7fff                                  ; $4d1e: $31 $ff $7f
    nop                                           ; $4d21: $00
    jr nz, @+$01                                  ; $4d22: $20 $ff

    ld a, a                                       ; $4d24: $7f
    nop                                           ; $4d25: $00
    jr nz, @+$05                                  ; $4d26: $20 $03

    inc b                                         ; $4d28: $04
    nop                                           ; $4d29: $00
    jr nz, @+$01                                  ; $4d2a: $20 $ff

    ld a, a                                       ; $4d2c: $7f
    nop                                           ; $4d2d: $00
    jr nz, jr_0b8_4d33                            ; $4d2e: $20 $03

    inc b                                         ; $4d30: $04
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00

jr_0b8_4d33:
    ld d, b                                       ; $4d33: $50
    ld [hl], d                                    ; $4d34: $72
    rst $38                                       ; $4d35: $ff
    ld a, a                                       ; $4d36: $7f
    nop                                           ; $4d37: $00
    jr nz, jr_0b8_4d62                            ; $4d38: $20 $28

    add hl, sp                                    ; $4d3a: $39
    ld d, b                                       ; $4d3b: $50
    ld [hl], d                                    ; $4d3c: $72
    rst $18                                       ; $4d3d: $df
    ld [hl], a                                    ; $4d3e: $77
    jr z, jr_0b8_4d6e                             ; $4d3f: $28 $2d

    ld h, d                                       ; $4d41: $62
    db $10                                        ; $4d42: $10
    jp nc, $295f                                  ; $4d43: $d2 $5f $29

    ld [hl-], a                                   ; $4d46: $32
    rst $38                                       ; $4d47: $ff
    ld a, a                                       ; $4d48: $7f
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    jr nz, jr_0b8_4d77                            ; $4d4c: $20 $29

    ld [hl-], a                                   ; $4d4e: $32
    rst $38                                       ; $4d4f: $ff
    ld a, a                                       ; $4d50: $7f
    nop                                           ; $4d51: $00
    jr nz, jr_0b8_4d54                            ; $4d52: $20 $00

jr_0b8_4d54:
    jr nz, jr_0b8_4d7f                            ; $4d54: $20 $29

    ld [hl-], a                                   ; $4d56: $32
    rst $38                                       ; $4d57: $ff
    ld a, a                                       ; $4d58: $7f
    nop                                           ; $4d59: $00
    jr nz, @+$52                                  ; $4d5a: $20 $50

    ld [hl], d                                    ; $4d5c: $72
    rst $38                                       ; $4d5d: $ff
    ld a, a                                       ; $4d5e: $7f
    nop                                           ; $4d5f: $00
    jr nz, jr_0b8_4d62                            ; $4d60: $20 $00

jr_0b8_4d62:
    nop                                           ; $4d62: $00
    rst $38                                       ; $4d63: $ff
    ld a, a                                       ; $4d64: $7f
    nop                                           ; $4d65: $00
    jr nz, jr_0b8_4d68                            ; $4d66: $20 $00

jr_0b8_4d68:
    jr nz, jr_0b8_4d6a                            ; $4d68: $20 $00

jr_0b8_4d6a:
    nop                                           ; $4d6a: $00
    ld d, b                                       ; $4d6b: $50
    ld [hl], d                                    ; $4d6c: $72
    rst $38                                       ; $4d6d: $ff

jr_0b8_4d6e:
    ld a, a                                       ; $4d6e: $7f
    nop                                           ; $4d6f: $00
    jr nz, jr_0b8_4dd7                            ; $4d70: $20 $65

    add hl, de                                    ; $4d72: $19
    db $ed                                        ; $4d73: $ed
    ld c, a                                       ; $4d74: $4f
    ld d, b                                       ; $4d75: $50
    ld [hl], d                                    ; $4d76: $72

jr_0b8_4d77:
    adc e                                         ; $4d77: $8b
    ld c, l                                       ; $4d78: $4d
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    adc a                                         ; $4d7b: $8f
    ld d, e                                       ; $4d7c: $53
    and a                                         ; $4d7d: $a7
    dec h                                         ; $4d7e: $25

jr_0b8_4d7f:
    rst $38                                       ; $4d7f: $ff
    ld a, a                                       ; $4d80: $7f
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    rst $38                                       ; $4d83: $ff
    ld a, a                                       ; $4d84: $7f
    nop                                           ; $4d85: $00
    jr nz, @+$01                                  ; $4d86: $20 $ff

    ld a, a                                       ; $4d88: $7f
    nop                                           ; $4d89: $00
    jr nz, @+$01                                  ; $4d8a: $20 $ff

    ld a, a                                       ; $4d8c: $7f
    nop                                           ; $4d8d: $00
    jr nz, @+$01                                  ; $4d8e: $20 $ff

    ld a, a                                       ; $4d90: $7f
    nop                                           ; $4d91: $00
    jr nz, jr_0b8_4de4                            ; $4d92: $20 $50

    ld [hl], d                                    ; $4d94: $72
    rst $38                                       ; $4d95: $ff
    ld a, a                                       ; $4d96: $7f
    nop                                           ; $4d97: $00
    jr nz, jr_0b8_4d9a                            ; $4d98: $20 $00

jr_0b8_4d9a:
    nop                                           ; $4d9a: $00
    rst $38                                       ; $4d9b: $ff
    ld a, a                                       ; $4d9c: $7f
    nop                                           ; $4d9d: $00
    jr nz, jr_0b8_4da0                            ; $4d9e: $20 $00

jr_0b8_4da0:
    jr nz, jr_0b8_4da2                            ; $4da0: $20 $00

jr_0b8_4da2:
    nop                                           ; $4da2: $00
    cpl                                           ; $4da3: $2f
    ld l, [hl]                                    ; $4da4: $6e
    sbc $47                                       ; $4da5: $de $47
    ld [$620d], sp                                ; $4da7: $08 $0d $62
    ld [$6e2f], sp                                ; $4daa: $08 $2f $6e
    db $e3                                        ; $4dad: $e3
    dec h                                         ; $4dae: $25
    xor [hl]                                      ; $4daf: $ae
    dec e                                         ; $4db0: $1d
    ld b, d                                       ; $4db1: $42
    inc b                                         ; $4db2: $04
    db $10                                        ; $4db3: $10
    ld d, [hl]                                    ; $4db4: $56
    adc l                                         ; $4db5: $8d
    ld c, e                                       ; $4db6: $4b
    ld h, $1d                                     ; $4db7: $26 $1d
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    rst $38                                       ; $4dbb: $ff
    ld a, a                                       ; $4dbc: $7f
    ld l, c                                       ; $4dbd: $69
    ld b, l                                       ; $4dbe: $45
    nop                                           ; $4dbf: $00
    jr nz, jr_0b8_4dc2                            ; $4dc0: $20 $00

jr_0b8_4dc2:
    jr nz, @+$01                                  ; $4dc2: $20 $ff

    ld a, a                                       ; $4dc4: $7f
    ld l, c                                       ; $4dc5: $69
    ld b, l                                       ; $4dc6: $45
    nop                                           ; $4dc7: $00
    jr nz, jr_0b8_4dca                            ; $4dc8: $20 $00

jr_0b8_4dca:
    jr nz, jr_0b8_4dfb                            ; $4dca: $20 $2f

    ld l, [hl]                                    ; $4dcc: $6e
    sbc $47                                       ; $4dcd: $de $47
    ld [$000d], sp                                ; $4dcf: $08 $0d $00
    ld [$53de], sp                                ; $4dd2: $08 $de $53
    adc $21                                       ; $4dd5: $ce $21

jr_0b8_4dd7:
    rst $38                                       ; $4dd7: $ff
    ld a, a                                       ; $4dd8: $7f
    add h                                         ; $4dd9: $84
    inc c                                         ; $4dda: $0c
    ld c, a                                       ; $4ddb: $4f
    ld [hl], d                                    ; $4ddc: $72

jr_0b8_4ddd:
    rst $30                                       ; $4ddd: $f7
    ld [hl], $ff                                  ; $4dde: $36 $ff
    ld d, e                                       ; $4de0: $53
    rst $20                                       ; $4de1: $e7
    jr nc, jr_0b8_4dc2                            ; $4de2: $30 $de

jr_0b8_4de4:
    ld b, a                                       ; $4de4: $47
    ld d, b                                       ; $4de5: $50
    ld [hl], d                                    ; $4de6: $72
    sub h                                         ; $4de7: $94
    ld a, [hl+]                                   ; $4de8: $2a
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    xor $55                                       ; $4deb: $ee $55
    ld c, c                                       ; $4ded: $49
    ccf                                           ; $4dee: $3f
    ld b, l                                       ; $4def: $45
    dec e                                         ; $4df0: $1d
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    sub [hl]                                      ; $4df3: $96
    ld e, d                                       ; $4df4: $5a
    rst $18                                       ; $4df5: $df
    ld [hl], a                                    ; $4df6: $77
    jr z, jr_0b8_4e26                             ; $4df7: $28 $2d

    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00

jr_0b8_4dfb:
    nop                                           ; $4dfb: $00
    jr nz, jr_0b8_4ddd                            ; $4dfc: $20 $df

    ld [hl], a                                    ; $4dfe: $77
    jr z, jr_0b8_4e2e                             ; $4dff: $28 $2d

    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    rst $38                                       ; $4e03: $ff
    ld a, a                                       ; $4e04: $7f
    nop                                           ; $4e05: $00
    jr nz, @+$01                                  ; $4e06: $20 $ff

    ld d, e                                       ; $4e08: $53
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    sbc h                                         ; $4e0b: $9c
    ld b, a                                       ; $4e0c: $47
    xor l                                         ; $4e0d: $ad
    dec e                                         ; $4e0e: $1d
    rst $38                                       ; $4e0f: $ff
    ld [hl], a                                    ; $4e10: $77
    and [hl]                                      ; $4e11: $a6
    ld [$3f33], sp                                ; $4e12: $08 $33 $3f
    ld c, h                                       ; $4e15: $4c
    ld l, $ff                                     ; $4e16: $2e $ff
    ld d, a                                       ; $4e18: $57
    ld [$ad0d], sp                                ; $4e19: $08 $0d $ad
    ld d, e                                       ; $4e1c: $53
    ld [hl], h                                    ; $4e1d: $74
    ld d, $7b                                     ; $4e1e: $16 $7b
    cpl                                           ; $4e20: $2f
    ld b, e                                       ; $4e21: $43
    inc b                                         ; $4e22: $04
    sbc a                                         ; $4e23: $9f
    ld b, a                                       ; $4e24: $47
    add [hl]                                      ; $4e25: $86

jr_0b8_4e26:
    ld l, $6c                                     ; $4e26: $2e $6c
    ld hl, $0001                                  ; $4e28: $21 $01 $00
    jr nc, @+$44                                  ; $4e2b: $30 $42

    sbc a                                         ; $4e2d: $9f

jr_0b8_4e2e:
    ld h, a                                       ; $4e2e: $67
    ret z                                         ; $4e2f: $c8

    jr jr_0b8_4e32                                ; $4e30: $18 $00

jr_0b8_4e32:
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    ld a, a                                       ; $4e34: $7f
    nop                                           ; $4e35: $00
    jr nz, @-$36                                  ; $4e36: $20 $c8

    jr jr_0b8_4e3a                                ; $4e38: $18 $00

jr_0b8_4e3a:
    nop                                           ; $4e3a: $00
    rst $38                                       ; $4e3b: $ff
    ld a, a                                       ; $4e3c: $7f
    nop                                           ; $4e3d: $00
    jr nz, @+$01                                  ; $4e3e: $20 $ff

    ld d, a                                       ; $4e40: $57
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    or $36                                        ; $4e43: $f6 $36
    db $10                                        ; $4e45: $10
    ld [de], a                                    ; $4e46: $12
    rst $38                                       ; $4e47: $ff
    ld d, e                                       ; $4e48: $53
    ld b, c                                       ; $4e49: $41
    inc b                                         ; $4e4a: $04
    sub [hl]                                      ; $4e4b: $96
    ld c, $06                                     ; $4e4c: $0e $06
    ld a, [hl+]                                   ; $4e4e: $2a
    sbc h                                         ; $4e4f: $9c
    ccf                                           ; $4e50: $3f
    ld [hl+], a                                   ; $4e51: $22
    nop                                           ; $4e52: $00
    adc d                                         ; $4e53: $8a
    ld b, e                                       ; $4e54: $43
    ld bc, $e711                                  ; $4e55: $01 $11 $e7
    inc b                                         ; $4e58: $04
    jr nz, jr_0b8_4e5b                            ; $4e59: $20 $00

jr_0b8_4e5b:
    ret nc                                        ; $4e5b: $d0

    ld a, [hl+]                                   ; $4e5c: $2a
    sbc h                                         ; $4e5d: $9c
    inc sp                                        ; $4e5e: $33
    rst $28                                       ; $4e5f: $ef
    ld [$0422], sp                                ; $4e60: $08 $22 $04
    ld e, h                                       ; $4e63: $5c
    ld e, e                                       ; $4e64: $5b
    ld c, a                                       ; $4e65: $4f
    dec d                                         ; $4e66: $15
    adc d                                         ; $4e67: $8a
    ld c, l                                       ; $4e68: $4d
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    rst $38                                       ; $4e6b: $ff
    ld a, a                                       ; $4e6c: $7f
    nop                                           ; $4e6d: $00
    jr nz, @-$17                                  ; $4e6e: $20 $e7

    jr z, jr_0b8_4e72                             ; $4e70: $28 $00

jr_0b8_4e72:
    inc b                                         ; $4e72: $04
    rst $30                                       ; $4e73: $f7
    ld [de], a                                    ; $4e74: $12
    rst $38                                       ; $4e75: $ff
    ld a, a                                       ; $4e76: $7f
    adc h                                         ; $4e77: $8c
    add hl, bc                                    ; $4e78: $09
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    rst $30                                       ; $4e7b: $f7
    ld a, [de]                                    ; $4e7c: $1a
    ld a, e                                       ; $4e7d: $7b
    ccf                                           ; $4e7e: $3f
    cp h                                          ; $4e7f: $bc
    rra                                           ; $4e80: $1f
    ld b, c                                       ; $4e81: $41
    nop                                           ; $4e82: $00
    rst $10                                       ; $4e83: $d7
    ld d, $44                                     ; $4e84: $16 $44
    ld de, $3bbd                                  ; $4e86: $11 $bd $3b
    jr nz, jr_0b8_4e8b                            ; $4e89: $20 $00

jr_0b8_4e8b:
    db $e4                                        ; $4e8b: $e4
    ld hl, $0084                                  ; $4e8c: $21 $84 $00
    ld c, d                                       ; $4e8f: $4a
    add hl, bc                                    ; $4e90: $09
    inc bc                                        ; $4e91: $03
    nop                                           ; $4e92: $00
    ld l, e                                       ; $4e93: $6b
    ld c, e                                       ; $4e94: $4b
    ld c, d                                       ; $4e95: $4a
    dec c                                         ; $4e96: $0d
    ld [hl], h                                    ; $4e97: $74
    ld [de], a                                    ; $4e98: $12
    ld [hl+], a                                   ; $4e99: $22
    nop                                           ; $4e9a: $00
    sub h                                         ; $4e9b: $94
    ld a, [bc]                                    ; $4e9c: $0a
    call z, $dd04                                 ; $4e9d: $cc $04 $dd
    rra                                           ; $4ea0: $1f
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    sbc h                                         ; $4ea3: $9c
    inc hl                                        ; $4ea4: $23
    sbc $5b                                       ; $4ea5: $de $5b
    nop                                           ; $4ea7: $00
    jr nz, jr_0b8_4eaa                            ; $4ea8: $20 $00

jr_0b8_4eaa:
    nop                                           ; $4eaa: $00
    rst $38                                       ; $4eab: $ff
    ld a, a                                       ; $4eac: $7f
    ld l, e                                       ; $4ead: $6b
    add hl, bc                                    ; $4eae: $09
    ld [hl], e                                    ; $4eaf: $73
    ld c, $00                                     ; $4eb0: $0e $00
    nop                                           ; $4eb2: $00
    sbc $2f                                       ; $4eb3: $de $2f
    db $10                                        ; $4eb5: $10
    ld c, $c6                                     ; $4eb6: $0e $c6
    inc b                                         ; $4eb8: $04
    jr nz, jr_0b8_4ebb                            ; $4eb9: $20 $00

jr_0b8_4ebb:
    sub $2e                                       ; $4ebb: $d6 $2e
    rst $20                                       ; $4ebd: $e7
    ld [$4bff], sp                                ; $4ebe: $08 $ff $4b
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    and l                                         ; $4ec3: $a5
    nop                                           ; $4ec4: $00
    ld [$4105], sp                                ; $4ec5: $08 $05 $41
    nop                                           ; $4ec8: $00
    inc hl                                        ; $4ec9: $23
    nop                                           ; $4eca: $00
    ret                                           ; $4ecb: $c9


    ld [hl], $cd                                  ; $4ecc: $36 $cd
    ld d, e                                       ; $4ece: $53
    inc hl                                        ; $4ecf: $23
    ld de, $0821                                  ; $4ed0: $11 $21 $08
    inc a                                         ; $4ed3: $3c
    ld h, a                                       ; $4ed4: $67
    rst $20                                       ; $4ed5: $e7
    ld sp, $152f                                  ; $4ed6: $31 $2f $15
    ld b, c                                       ; $4ed9: $41
    inc b                                         ; $4eda: $04
    xor d                                         ; $4edb: $aa
    dec d                                         ; $4edc: $15
    ld l, d                                       ; $4edd: $6a
    ld c, a                                       ; $4ede: $4f
    nop                                           ; $4edf: $00
    inc e                                         ; $4ee0: $1c
    nop                                           ; $4ee1: $00
    ld [$7fff], sp                                ; $4ee2: $08 $ff $7f
    rlca                                          ; $4ee5: $07
    add hl, sp                                    ; $4ee6: $39
    ld l, e                                       ; $4ee7: $6b
    add hl, bc                                    ; $4ee8: $09
    add l                                         ; $4ee9: $85
    inc b                                         ; $4eea: $04
    db $10                                        ; $4eeb: $10
    ld [de], a                                    ; $4eec: $12
    ld c, d                                       ; $4eed: $4a
    dec b                                         ; $4eee: $05
    jr jr_0b8_4f18                                ; $4eef: $18 $27

    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    sub h                                         ; $4ef3: $94
    ld l, $de                                     ; $4ef4: $2e $de
    ld d, e                                       ; $4ef6: $53
    ld c, d                                       ; $4ef7: $4a
    dec d                                         ; $4ef8: $15
    ld hl, $ef00                                  ; $4ef9: $21 $00 $ef
    add hl, de                                    ; $4efc: $19
    add hl, sp                                    ; $4efd: $39
    inc sp                                        ; $4efe: $33
    dec hl                                        ; $4eff: $2b
    dec c                                         ; $4f00: $0d
    ld h, b                                       ; $4f01: $60
    inc b                                         ; $4f02: $04
    jr z, jr_0b8_4f40                             ; $4f03: $28 $3b

    ld a, [hl]                                    ; $4f05: $7e
    ld l, e                                       ; $4f06: $6b
    rst $10                                       ; $4f07: $d7
    dec l                                         ; $4f08: $2d
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    sub a                                         ; $4f0b: $97
    add hl, hl                                    ; $4f0c: $29
    ld a, $5b                                     ; $4f0d: $3e $5b
    ld h, $19                                     ; $4f0f: $26 $19
    nop                                           ; $4f11: $00
    inc b                                         ; $4f12: $04
    ld [$0037], sp                                ; $4f13: $08 $37 $00
    jr nz, jr_0b8_4f18                            ; $4f16: $20 $00

jr_0b8_4f18:
    dec c                                         ; $4f18: $0d
    nop                                           ; $4f19: $00
    inc c                                         ; $4f1a: $0c
    rst $38                                       ; $4f1b: $ff
    ld a, a                                       ; $4f1c: $7f
    adc d                                         ; $4f1d: $8a
    ld c, l                                       ; $4f1e: $4d
    ld c, d                                       ; $4f1f: $4a
    add hl, bc                                    ; $4f20: $09
    ld b, d                                       ; $4f21: $42
    nop                                           ; $4f22: $00
    xor l                                         ; $4f23: $ad
    add hl, bc                                    ; $4f24: $09
    ld [$5205], sp                                ; $4f25: $08 $05 $52
    ld [de], a                                    ; $4f28: $12
    ld b, d                                       ; $4f29: $42
    inc b                                         ; $4f2a: $04
    sub h                                         ; $4f2b: $94
    ld a, [hl+]                                   ; $4f2c: $2a
    sbc $4b                                       ; $4f2d: $de $4b
    ld l, e                                       ; $4f2f: $6b
    dec d                                         ; $4f30: $15
    add l                                         ; $4f31: $85
    nop                                           ; $4f32: $00
    sub $1e                                       ; $4f33: $d6 $1e
    cp h                                          ; $4f35: $bc
    inc sp                                        ; $4f36: $33
    xor l                                         ; $4f37: $ad
    dec c                                         ; $4f38: $0d
    inc h                                         ; $4f39: $24
    inc b                                         ; $4f3a: $04
    ld e, $53                                     ; $4f3b: $1e $53
    inc hl                                        ; $4f3d: $23
    ld h, $6d                                     ; $4f3e: $26 $6d

jr_0b8_4f40:
    add hl, hl                                    ; $4f40: $29
    ld [bc], a                                    ; $4f41: $02
    nop                                           ; $4f42: $00
    ld d, h                                       ; $4f43: $54
    ld c, d                                       ; $4f44: $4a
    ccf                                           ; $4f45: $3f
    ld e, e                                       ; $4f46: $5b
    cpl                                           ; $4f47: $2f
    ld hl, $0881                                  ; $4f48: $21 $81 $08
    ld d, l                                       ; $4f4b: $55
    ld a, [hl-]                                   ; $4f4c: $3a
    nop                                           ; $4f4d: $00
    jr nz, @-$40                                  ; $4f4e: $20 $be

    ld d, e                                       ; $4f50: $53
    nop                                           ; $4f51: $00
    db $10                                        ; $4f52: $10
    sbc c                                         ; $4f53: $99
    ld b, [hl]                                    ; $4f54: $46
    rst $38                                       ; $4f55: $ff
    ld a, a                                       ; $4f56: $7f
    add sp, $1c                                   ; $4f57: $e8 $1c
    ld b, d                                       ; $4f59: $42
    nop                                           ; $4f5a: $00
    jr z, @+$3f                                   ; $4f5b: $28 $3d

    call z, $3261                                 ; $4f5d: $cc $61 $32
    ld b, d                                       ; $4f60: $42
    ld h, e                                       ; $4f61: $63
    nop                                           ; $4f62: $00
    or l                                          ; $4f63: $b5
    ld e, $de                                     ; $4f64: $1e $de
    daa                                           ; $4f66: $27
    adc e                                         ; $4f67: $8b
    add hl, bc                                    ; $4f68: $09
    add e                                         ; $4f69: $83
    nop                                           ; $4f6a: $00
    ldh a, [rNR24]                                ; $4f6b: $f0 $19
    rst $38                                       ; $4f6d: $ff
    ld a, a                                       ; $4f6e: $7f
    cp l                                          ; $4f6f: $bd
    rra                                           ; $4f70: $1f
    ld hl, $d400                                  ; $4f71: $21 $00 $d4
    dec l                                         ; $4f74: $2d
    ld b, e                                       ; $4f75: $43
    ld de, $4a9e                                  ; $4f76: $11 $9e $4a
    ld b, e                                       ; $4f79: $43
    inc b                                         ; $4f7a: $04
    pop de                                        ; $4f7b: $d1
    dec [hl]                                      ; $4f7c: $35
    cp $52                                        ; $4f7d: $fe $52
    ld e, e                                       ; $4f7f: $5b
    ld bc, $0485                                  ; $4f80: $01 $85 $04
    ld [hl], e                                    ; $4f83: $73
    ld h, $00                                     ; $4f84: $26 $00

jr_0b8_4f86:
    jr nz, jr_0b8_4f86                            ; $4f86: $20 $fe

    ld b, a                                       ; $4f88: $47
    nop                                           ; $4f89: $00
    nop                                           ; $4f8a: $00
    rst $38                                       ; $4f8b: $ff
    ld a, a                                       ; $4f8c: $7f
    nop                                           ; $4f8d: $00
    jr nz, @-$32                                  ; $4f8e: $20 $cc

    ld [$0463], sp                                ; $4f90: $08 $63 $04
    ld l, $19                                     ; $4f93: $2e $19
    adc e                                         ; $4f95: $8b
    ld e, c                                       ; $4f96: $59
    ret nc                                        ; $4f97: $d0

    ld sp, $0842                                  ; $4f98: $31 $42 $08
    call z, $1865                                 ; $4f9b: $cc $65 $18
    inc de                                        ; $4f9e: $13
    adc h                                         ; $4f9f: $8c
    add hl, bc                                    ; $4fa0: $09
    ld b, d                                       ; $4fa1: $42
    nop                                           ; $4fa2: $00
    dec [hl]                                      ; $4fa3: $35
    ld b, [hl]                                    ; $4fa4: $46
    ld e, [hl]                                    ; $4fa5: $5e
    ld h, e                                       ; $4fa6: $63
    rst $38                                       ; $4fa7: $ff
    ld a, a                                       ; $4fa8: $7f
    ld h, b                                       ; $4fa9: $60
    nop                                           ; $4faa: $00
    ld d, b                                       ; $4fab: $50
    ld hl, $1a1a                                  ; $4fac: $21 $1a $1a
    inc hl                                        ; $4faf: $23
    inc b                                         ; $4fb0: $04
    ld h, l                                       ; $4fb1: $65
    inc b                                         ; $4fb2: $04
    sub h                                         ; $4fb3: $94
    add hl, hl                                    ; $4fb4: $29
    adc a                                         ; $4fb5: $8f
    dec d                                         ; $4fb6: $15
    ld e, e                                       ; $4fb7: $5b
    ld a, $00                                     ; $4fb8: $3e $00
    inc e                                         ; $4fba: $1c
    call $bb2d                                    ; $4fbb: $cd $2d $bb
    dec sp                                        ; $4fbe: $3b
    ld a, b                                       ; $4fbf: $78
    jr jr_0b8_4fc2                                ; $4fc0: $18 $00

jr_0b8_4fc2:
    nop                                           ; $4fc2: $00
    xor h                                         ; $4fc3: $ac
    ld h, l                                       ; $4fc4: $65
    rst $38                                       ; $4fc5: $ff
    ld a, a                                       ; $4fc6: $7f
    nop                                           ; $4fc7: $00

jr_0b8_4fc8:
    jr nz, jr_0b8_4fca                            ; $4fc8: $20 $00

jr_0b8_4fca:
    nop                                           ; $4fca: $00
    adc e                                         ; $4fcb: $8b
    ld e, l                                       ; $4fcc: $5d
    adc l                                         ; $4fcd: $8d
    add hl, bc                                    ; $4fce: $09
    push bc                                       ; $4fcf: $c5
    db $10                                        ; $4fd0: $10
    ld hl, $8b08                                  ; $4fd1: $21 $08 $8b

jr_0b8_4fd4:
    ld h, c                                       ; $4fd4: $61
    ld e, d                                       ; $4fd5: $5a
    inc de                                        ; $4fd6: $13
    inc c                                         ; $4fd7: $0c
    ld b, e                                       ; $4fd8: $43
    ld b, c                                       ; $4fd9: $41
    inc b                                         ; $4fda: $04
    cp l                                          ; $4fdb: $bd
    ld c, [hl]                                    ; $4fdc: $4e
    rst $18                                       ; $4fdd: $df
    ld [hl], a                                    ; $4fde: $77
    ld b, $19                                     ; $4fdf: $06 $19
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    ld d, e                                       ; $4fe3: $53
    ld de, $469d                                  ; $4fe4: $11 $9d $46
    ld h, [hl]                                    ; $4fe7: $66
    nop                                           ; $4fe8: $00
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    ld sp, $d911                                  ; $4feb: $31 $11 $d9
    ld a, [hl+]                                   ; $4fee: $2a
    and a                                         ; $4fef: $a7
    db $10                                        ; $4ff0: $10
    inc hl                                        ; $4ff1: $23
    inc b                                         ; $4ff2: $04
    push de                                       ; $4ff3: $d5
    jr jr_0b8_4fd4                                ; $4ff4: $18 $de

    ld l, e                                       ; $4ff6: $6b
    nop                                           ; $4ff7: $00
    jr nz, jr_0b8_4ffa                            ; $4ff8: $20 $00

jr_0b8_4ffa:
    nop                                           ; $4ffa: $00
    pop af                                        ; $4ffb: $f1
    ld h, e                                       ; $4ffc: $63
    nop                                           ; $4ffd: $00
    jr nz, @+$01                                  ; $4ffe: $20 $ff

    ld a, a                                       ; $5000: $7f
    ld b, d                                       ; $5001: $42
    inc b                                         ; $5002: $04
    adc d                                         ; $5003: $8a
    ld a, [hl-]                                   ; $5004: $3a
    daa                                           ; $5005: $27
    dec c                                         ; $5006: $0d
    ld d, d                                       ; $5007: $52
    ld c, $43                                     ; $5008: $0e $43
    ld [$2e10], sp                                ; $500a: $08 $10 $2e
    ld d, d                                       ; $500d: $52
    ld d, a                                       ; $500e: $57
    cp l                                          ; $500f: $bd
    rla                                           ; $5010: $17
    add b                                         ; $5011: $80
    inc b                                         ; $5012: $04
    ld d, d                                       ; $5013: $52
    ld hl, $363c                                  ; $5014: $21 $3c $36
    sbc a                                         ; $5017: $9f
    ld h, a                                       ; $5018: $67
    ld hl, $5300                                  ; $5019: $21 $00 $53
    dec d                                         ; $501c: $15
    ret                                           ; $501d: $c9


    nop                                           ; $501e: $00
    cp b                                          ; $501f: $b8
    add hl, hl                                    ; $5020: $29
    inc hl                                        ; $5021: $23
    nop                                           ; $5022: $00
    db $10                                        ; $5023: $10
    add hl, bc                                    ; $5024: $09
    rla                                           ; $5025: $17
    dec hl                                        ; $5026: $2b
    sub e                                         ; $5027: $93
    add hl, de                                    ; $5028: $19
    ld b, d                                       ; $5029: $42
    inc b                                         ; $502a: $04
    db $10                                        ; $502b: $10
    ld l, $00                                     ; $502c: $2e $00
    inc e                                         ; $502e: $1c

Jump_0b8_502f:
    rst $38                                       ; $502f: $ff
    ld a, a                                       ; $5030: $7f
    nop                                           ; $5031: $00
    jr jr_0b8_4fc8                                ; $5032: $18 $94

    ld d, d                                       ; $5034: $52
    rlca                                          ; $5035: $07
    ld a, [hl+]                                   ; $5036: $2a
    rst $38                                       ; $5037: $ff
    ld a, a                                       ; $5038: $7f
    add d                                         ; $5039: $82
    inc b                                         ; $503a: $04
    ld h, $2a                                     ; $503b: $26 $2a
    ld e, d                                       ; $503d: $5a
    rla                                           ; $503e: $17
    rst $28                                       ; $503f: $ef
    add hl, bc                                    ; $5040: $09
    ld h, l                                       ; $5041: $65
    ld [$11ad], sp                                ; $5042: $08 $ad $11
    rst $38                                       ; $5045: $ff
    scf                                           ; $5046: $37
    ld l, e                                       ; $5047: $6b
    ld h, c                                       ; $5048: $61
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    inc [hl]                                      ; $504b: $34
    ld e, $08                                     ; $504c: $1e $08
    dec c                                         ; $504e: $0d
    cp l                                          ; $504f: $bd
    dec sp                                        ; $5050: $3b
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    ld [$6b05], sp                                ; $5053: $08 $05 $6b
    add hl, bc                                    ; $5056: $09
    and h                                         ; $5057: $a4
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    ld [$934d], sp                                ; $505b: $08 $4d $93
    ld e, $08                                     ; $505e: $1e $08
    ld bc, $0000                                  ; $5060: $01 $00 $00
    rst $38                                       ; $5063: $ff
    ld a, a                                       ; $5064: $7f
    nop                                           ; $5065: $00
    jr nz, jr_0b8_5070                            ; $5066: $20 $08

    ld bc, $0000                                  ; $5068: $01 $00 $00
    rst $38                                       ; $506b: $ff
    ld a, a                                       ; $506c: $7f
    nop                                           ; $506d: $00
    jr nz, jr_0b8_50db                            ; $506e: $20 $6b

jr_0b8_5070:
    ld h, c                                       ; $5070: $61
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    add $3c                                       ; $5073: $c6 $3c
    inc sp                                        ; $5075: $33
    dec e                                         ; $5076: $1d
    ld c, d                                       ; $5077: $4a
    ld e, l                                       ; $5078: $5d
    ld h, d                                       ; $5079: $62
    nop                                           ; $507a: $00
    ld sp, $4912                                  ; $507b: $31 $12 $49

jr_0b8_507e:
    ld e, l                                       ; $507e: $5d
    sub $2a                                       ; $507f: $d6 $2a
    ld [hl+], a                                   ; $5081: $22
    nop                                           ; $5082: $00
    or b                                          ; $5083: $b0
    dec e                                         ; $5084: $1d
    ret c                                         ; $5085: $d8

    ld [hl], $ea                                  ; $5086: $36 $ea
    inc e                                         ; $5088: $1c
    jr nz, jr_0b8_508b                            ; $5089: $20 $00

jr_0b8_508b:
    ld l, e                                       ; $508b: $6b
    add hl, bc                                    ; $508c: $09
    or b                                          ; $508d: $b0
    add hl, sp                                    ; $508e: $39
    jp $2004                                      ; $508f: $c3 $04 $20


    nop                                           ; $5092: $00
    add $40                                       ; $5093: $c6 $40
    ld b, b                                       ; $5095: $40
    ld de, $616a                                  ; $5096: $11 $6a $61
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    rst $38                                       ; $509b: $ff
    ld a, a                                       ; $509c: $7f
    nop                                           ; $509d: $00
    jr nz, @+$6c                                  ; $509e: $20 $6a

    ld h, c                                       ; $50a0: $61
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    rst $38                                       ; $50a3: $ff
    ld a, a                                       ; $50a4: $7f
    nop                                           ; $50a5: $00
    jr nz, jr_0b8_507e                            ; $50a6: $20 $d6

    ld a, [hl+]                                   ; $50a8: $2a
    ld b, d                                       ; $50a9: $42
    inc c                                         ; $50aa: $0c
    ld c, c                                       ; $50ab: $49
    ld e, l                                       ; $50ac: $5d
    ld a, [hl-]                                   ; $50ad: $3a
    ld a, [hl-]                                   ; $50ae: $3a
    rst $18                                       ; $50af: $df
    ld l, a                                       ; $50b0: $6f
    ld h, e                                       ; $50b1: $63
    nop                                           ; $50b2: $00
    add h                                         ; $50b3: $84
    inc h                                         ; $50b4: $24
    adc $0d                                       ; $50b5: $ce $0d
    ld c, c                                       ; $50b7: $49
    ld e, l                                       ; $50b8: $5d
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    ld d, d                                       ; $50bb: $52
    ld [de], a                                    ; $50bc: $12
    dec sp                                        ; $50bd: $3b
    rla                                           ; $50be: $17
    and c                                         ; $50bf: $a1
    inc b                                         ; $50c0: $04
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    dec hl                                        ; $50c3: $2b
    ld hl, $3a13                                  ; $50c4: $21 $13 $3a
    nop                                           ; $50c7: $00
    dec c                                         ; $50c8: $0d
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    ld [$ff55], sp                                ; $50cb: $08 $55 $ff
    ld a, a                                       ; $50ce: $7f
    jr nz, jr_0b8_50de                            ; $50cf: $20 $0d

    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    ld a, a                                       ; $50d4: $7f
    nop                                           ; $50d5: $00
    jr nz, jr_0b8_50f8                            ; $50d6: $20 $20

    dec c                                         ; $50d8: $0d
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00

jr_0b8_50db:
    rst $38                                       ; $50db: $ff
    ld a, a                                       ; $50dc: $7f
    nop                                           ; $50dd: $00

jr_0b8_50de:
    jr nz, jr_0b8_5129                            ; $50de: $20 $49

    ld e, l                                       ; $50e0: $5d
    ld hl, $350c                                  ; $50e1: $21 $0c $35
    ld a, $7f                                     ; $50e4: $3e $7f
    ld h, a                                       ; $50e6: $67
    cp h                                          ; $50e7: $bc
    ld c, d                                       ; $50e8: $4a
    nop                                           ; $50e9: $00
    inc b                                         ; $50ea: $04
    ld l, e                                       ; $50eb: $6b
    add hl, bc                                    ; $50ec: $09
    ld l, [hl]                                    ; $50ed: $6e
    dec [hl]                                      ; $50ee: $35
    push bc                                       ; $50ef: $c5
    inc b                                         ; $50f0: $04
    jr nz, @+$0a                                  ; $50f1: $20 $08

    rst $20                                       ; $50f3: $e7
    ld d, b                                       ; $50f4: $50
    ld d, d                                       ; $50f5: $52
    ld c, $44                                     ; $50f6: $0e $44

jr_0b8_50f8:
    dec c                                         ; $50f8: $0d
    ld bc, $2800                                  ; $50f9: $01 $00 $28
    ld c, l                                       ; $50fc: $4d
    ld [hl], $26                                  ; $50fd: $36 $26
    add [hl]                                      ; $50ff: $86
    jr jr_0b8_5144                                ; $5100: $18 $42

    db $10                                        ; $5102: $10
    rst $38                                       ; $5103: $ff
    ld a, a                                       ; $5104: $7f
    jr z, @+$5f                                   ; $5105: $28 $5d

    xor a                                         ; $5107: $af
    ld sp, $0000                                  ; $5108: $31 $00 $00
    nop                                           ; $510b: $00
    jr nz, jr_0b8_5136                            ; $510c: $20 $28

    ld e, l                                       ; $510e: $5d
    xor a                                         ; $510f: $af
    ld sp, $0000                                  ; $5110: $31 $00 $00
    nop                                           ; $5113: $00
    jr nz, jr_0b8_5184                            ; $5114: $20 $6e

    dec [hl]                                      ; $5116: $35
    push bc                                       ; $5117: $c5
    inc b                                         ; $5118: $04
    inc c                                         ; $5119: $0c
    dec e                                         ; $511a: $1d
    cp [hl]                                       ; $511b: $be
    ld b, [hl]                                    ; $511c: $46
    ld a, a                                       ; $511d: $7f
    ld h, a                                       ; $511e: $67
    ld sp, $6546                                  ; $511f: $31 $46 $65
    ld [$30fe], sp                                ; $5122: $08 $fe $30
    db $fd                                        ; $5125: $fd
    ld h, d                                       ; $5126: $62
    rst $20                                       ; $5127: $e7
    ld d, b                                       ; $5128: $50

jr_0b8_5129:
    ld [$0859], sp                                ; $5129: $08 $59 $08
    ld e, l                                       ; $512c: $5d
    jr z, jr_0b8_518c                             ; $512d: $28 $5d

    xor a                                         ; $512f: $af
    ld sp, $0000                                  ; $5130: $31 $00 $00
    rst $20                                       ; $5133: $e7
    ld d, b                                       ; $5134: $50
    ld e, c                                       ; $5135: $59

jr_0b8_5136:
    ld [hl+], a                                   ; $5136: $22
    ret                                           ; $5137: $c9


    inc c                                         ; $5138: $0c
    ld h, e                                       ; $5139: $63
    inc b                                         ; $513a: $04
    ld sp, hl                                     ; $513b: $f9
    ld b, [hl]                                    ; $513c: $46
    ld l, h                                       ; $513d: $6c
    dec h                                         ; $513e: $25
    rst $38                                       ; $513f: $ff
    ld a, a                                       ; $5140: $7f
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00

jr_0b8_5144:
    jr nz, jr_0b8_51b2                            ; $5144: $20 $6c

    dec h                                         ; $5146: $25

jr_0b8_5147:
    rst $38                                       ; $5147: $ff
    ld a, a                                       ; $5148: $7f
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00

jr_0b8_514b:
    nop                                           ; $514b: $00
    jr nz, jr_0b8_514b                            ; $514c: $20 $fd

    ld h, d                                       ; $514e: $62
    rst $20                                       ; $514f: $e7
    ld d, b                                       ; $5150: $50
    ld bc, $cf00                                  ; $5151: $01 $00 $cf
    add hl, sp                                    ; $5154: $39
    sbc h                                         ; $5155: $9c
    ld c, d                                       ; $5156: $4a
    ld l, c                                       ; $5157: $69
    inc c                                         ; $5158: $0c
    ld b, h                                       ; $5159: $44
    ld [$1858], sp                                ; $515a: $08 $58 $18
    ld [hl], a                                    ; $515d: $77
    ld a, $c7                                     ; $515e: $3e $c7
    ld c, h                                       ; $5160: $4c
    rst $20                                       ; $5161: $e7
    ld e, b                                       ; $5162: $58
    add sp, $58                                   ; $5163: $e8 $58
    rlca                                          ; $5165: $07
    ld e, c                                       ; $5166: $59
    rst $38                                       ; $5167: $ff
    ld a, a                                       ; $5168: $7f
    add [hl]                                      ; $5169: $86
    inc c                                         ; $516a: $0c
    or d                                          ; $516b: $b2
    add hl, de                                    ; $516c: $19
    rst $00                                       ; $516d: $c7
    ld d, h                                       ; $516e: $54
    halt                                          ; $516f: $76
    ld a, [hl-]                                   ; $5170: $3a
    ld hl, $6f00                                  ; $5171: $21 $00 $6f
    add hl, de                                    ; $5174: $19
    ld e, c                                       ; $5175: $59
    ld [hl+], a                                   ; $5176: $22
    add a                                         ; $5177: $87

jr_0b8_5178:
    ld [$0400], sp                                ; $5178: $08 $00 $04
    rst $00                                       ; $517b: $c7
    jr jr_0b8_517e                                ; $517c: $18 $00

jr_0b8_517e:
    inc e                                         ; $517e: $1c
    ld c, l                                       ; $517f: $4d
    ld hl, $2000                                  ; $5180: $21 $00 $20
    ld e, b                                       ; $5183: $58

jr_0b8_5184:
    jr @+$79                                      ; $5184: $18 $77

    ld a, $c7                                     ; $5186: $3e $c7
    ld c, h                                       ; $5188: $4c
    inc hl                                        ; $5189: $23
    inc b                                         ; $518a: $04
    ccf                                           ; $518b: $3f

jr_0b8_518c:
    ld d, a                                       ; $518c: $57
    ld l, $0c                                     ; $518d: $2e $0c
    ld l, h                                       ; $518f: $6c
    add hl, hl                                    ; $5190: $29
    ld a, [bc]                                    ; $5191: $0a
    ld [$2c63], sp                                ; $5192: $08 $63 $2c
    ld sp, $e710                                  ; $5195: $31 $10 $e7
    ld e, b                                       ; $5198: $58
    rst $20                                       ; $5199: $e7
    ld e, b                                       ; $519a: $58
    nop                                           ; $519b: $00
    jr nz, jr_0b8_519e                            ; $519c: $20 $00

jr_0b8_519e:
    jr nz, jr_0b8_51a0                            ; $519e: $20 $00

jr_0b8_51a0:
    jr nz, jr_0b8_5147                            ; $51a0: $20 $a5

    ld b, h                                       ; $51a2: $44
    rst $20                                       ; $51a3: $e7
    ld e, b                                       ; $51a4: $58
    add $48                                       ; $51a5: $c6 $48
    add $4c                                       ; $51a7: $c6 $4c
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    add $50                                       ; $51ab: $c6 $50
    rst $38                                       ; $51ad: $ff
    ld a, a                                       ; $51ae: $7f
    and a                                         ; $51af: $a7
    stop                                          ; $51b0: $10 $00

jr_0b8_51b2:
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    jr nz, jr_0b8_521b                            ; $51b4: $20 $65

    inc b                                         ; $51b6: $04
    inc hl                                        ; $51b7: $23
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    jr nz, @+$65                                  ; $51ba: $20 $63

    inc l                                         ; $51bc: $2c
    ld sp, $e710                                  ; $51bd: $31 $10 $e7
    ld e, b                                       ; $51c0: $58
    ld bc, $d708                                  ; $51c1: $01 $08 $d7
    dec l                                         ; $51c4: $2d
    jp hl                                         ; $51c5: $e9


    jr jr_0b8_5207                                ; $51c6: $18 $3f

    ld d, a                                       ; $51c8: $57
    inc bc                                        ; $51c9: $03
    nop                                           ; $51ca: $00
    add h                                         ; $51cb: $84
    inc [hl]                                      ; $51cc: $34
    rlca                                          ; $51cd: $07
    inc b                                         ; $51ce: $04
    rst $20                                       ; $51cf: $e7
    ld e, b                                       ; $51d0: $58

jr_0b8_51d1:
    rst $20                                       ; $51d1: $e7
    ld e, b                                       ; $51d2: $58
    nop                                           ; $51d3: $00
    jr nz, jr_0b8_523b                            ; $51d4: $20 $65

    inc b                                         ; $51d6: $04
    inc hl                                        ; $51d7: $23
    nop                                           ; $51d8: $00
    rst $20                                       ; $51d9: $e7
    ld e, b                                       ; $51da: $58
    nop                                           ; $51db: $00
    jr nz, jr_0b8_5243                            ; $51dc: $20 $65

    inc b                                         ; $51de: $04
    inc hl                                        ; $51df: $23
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    rst $38                                       ; $51e3: $ff
    ld a, a                                       ; $51e4: $7f
    rst $20                                       ; $51e5: $e7
    ld e, b                                       ; $51e6: $58
    nop                                           ; $51e7: $00
    jr nz, jr_0b8_51ea                            ; $51e8: $20 $00

jr_0b8_51ea:
    inc c                                         ; $51ea: $0c
    nop                                           ; $51eb: $00
    jr nz, jr_0b8_5210                            ; $51ec: $20 $22

    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    jr nz, jr_0b8_51f2                            ; $51f0: $20 $00

jr_0b8_51f2:
    jr nz, jr_0b8_5178                            ; $51f2: $20 $84

    inc [hl]                                      ; $51f4: $34
    rlca                                          ; $51f5: $07
    inc b                                         ; $51f6: $04
    rst $20                                       ; $51f7: $e7
    ld e, b                                       ; $51f8: $58
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    or d                                          ; $51fb: $b2
    ld sp, $2000                                  ; $51fc: $31 $00 $20
    add sp, $18                                   ; $51ff: $e8 $18
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    and l                                         ; $5203: $a5
    ld b, h                                       ; $5204: $44
    rst $20                                       ; $5205: $e7
    ld e, b                                       ; $5206: $58

jr_0b8_5207:
    inc bc                                        ; $5207: $03
    inc b                                         ; $5208: $04
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    rst $38                                       ; $520b: $ff
    ld a, a                                       ; $520c: $7f
    ld [hl+], a                                   ; $520d: $22
    nop                                           ; $520e: $00
    nop                                           ; $520f: $00

jr_0b8_5210:
    jr nz, jr_0b8_5212                            ; $5210: $20 $00

jr_0b8_5212:
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    ld a, a                                       ; $5214: $7f
    ld [hl+], a                                   ; $5215: $22
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    jr nz, jr_0b8_521a                            ; $5218: $20 $00

jr_0b8_521a:
    nop                                           ; $521a: $00

jr_0b8_521b:
    rst $38                                       ; $521b: $ff
    ld a, a                                       ; $521c: $7f
    nop                                           ; $521d: $00
    jr nz, jr_0b8_5220                            ; $521e: $20 $00

jr_0b8_5220:
    jr nz, jr_0b8_5222                            ; $5220: $20 $00

jr_0b8_5222:
    jr nz, @+$01                                  ; $5222: $20 $ff

    ld a, a                                       ; $5224: $7f
    nop                                           ; $5225: $00
    jr nz, jr_0b8_5228                            ; $5226: $20 $00

jr_0b8_5228:
    jr nz, jr_0b8_522a                            ; $5228: $20 $00

jr_0b8_522a:
    jr nz, jr_0b8_51d1                            ; $522a: $20 $a5

    ld b, h                                       ; $522c: $44
    rst $20                                       ; $522d: $e7
    ld e, b                                       ; $522e: $58
    inc bc                                        ; $522f: $03
    inc b                                         ; $5230: $04
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    ld a, a                                       ; $5234: $7f
    nop                                           ; $5235: $00
    jr nz, jr_0b8_523b                            ; $5236: $20 $03

    inc b                                         ; $5238: $04
    nop                                           ; $5239: $00
    nop                                           ; $523a: $00

jr_0b8_523b:
    rst $38                                       ; $523b: $ff
    ld a, a                                       ; $523c: $7f
    nop                                           ; $523d: $00
    jr nz, jr_0b8_5243                            ; $523e: $20 $03

    inc b                                         ; $5240: $04
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00

jr_0b8_5243:
    nop                                           ; $5243: $00
    jr nz, jr_0b8_5246                            ; $5244: $20 $00

jr_0b8_5246:
    jr nz, jr_0b8_5248                            ; $5246: $20 $00

jr_0b8_5248:
    jr nz, jr_0b8_524a                            ; $5248: $20 $00

jr_0b8_524a:
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    jr nz, jr_0b8_524e                            ; $524c: $20 $00

jr_0b8_524e:
    jr nz, jr_0b8_5250                            ; $524e: $20 $00

jr_0b8_5250:
    jr nz, jr_0b8_5252                            ; $5250: $20 $00

jr_0b8_5252:
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    jr nz, jr_0b8_5256                            ; $5254: $20 $00

jr_0b8_5256:
    jr nz, jr_0b8_5258                            ; $5256: $20 $00

jr_0b8_5258:
    jr nz, jr_0b8_525a                            ; $5258: $20 $00

jr_0b8_525a:
    jr nz, jr_0b8_525c                            ; $525a: $20 $00

jr_0b8_525c:
    jr nz, jr_0b8_525e                            ; $525c: $20 $00

jr_0b8_525e:
    jr nz, jr_0b8_5260                            ; $525e: $20 $00

jr_0b8_5260:
    jr nz, jr_0b8_5262                            ; $5260: $20 $00

jr_0b8_5262:
    jr nz, jr_0b8_5264                            ; $5262: $20 $00

jr_0b8_5264:
    jr nz, jr_0b8_527e                            ; $5264: $20 $18

    ld [hl], a                                    ; $5266: $77
    ld c, b                                       ; $5267: $48
    ld b, l                                       ; $5268: $45
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    db $dd                                        ; $526b: $dd
    daa                                           ; $526c: $27
    rst $38                                       ; $526d: $ff
    ld h, a                                       ; $526e: $67
    nop                                           ; $526f: $00
    inc e                                         ; $5270: $1c
    nop                                           ; $5271: $00
    inc b                                         ; $5272: $04
    ld d, d                                       ; $5273: $52
    ld b, [hl]                                    ; $5274: $46
    nop                                           ; $5275: $00
    jr nz, jr_0b8_5278                            ; $5276: $20 $00

jr_0b8_5278:
    stop                                          ; $5278: $10 $00
    inc d                                         ; $527a: $14
    jr jr_0b8_5294                                ; $527b: $18 $17

jr_0b8_527d:
    rst $28                                       ; $527d: $ef

jr_0b8_527e:
    add hl, de                                    ; $527e: $19
    ld a, e                                       ; $527f: $7b
    ld [hl], a                                    ; $5280: $77
    nop                                           ; $5281: $00
    jr nz, jr_0b8_529c                            ; $5282: $20 $18

    rla                                           ; $5284: $17

jr_0b8_5285:
    rst $28                                       ; $5285: $ef
    add hl, de                                    ; $5286: $19
    ld a, e                                       ; $5287: $7b
    ld [hl], a                                    ; $5288: $77
    nop                                           ; $5289: $00
    inc e                                         ; $528a: $1c
    nop                                           ; $528b: $00
    jr nz, jr_0b8_527d                            ; $528c: $20 $ef

    add hl, de                                    ; $528e: $19
    ld a, e                                       ; $528f: $7b
    ld [hl], a                                    ; $5290: $77
    nop                                           ; $5291: $00
    jr nz, jr_0b8_5294                            ; $5292: $20 $00

jr_0b8_5294:
    jr nz, jr_0b8_5285                            ; $5294: $20 $ef

    add hl, de                                    ; $5296: $19
    ld a, e                                       ; $5297: $7b
    ld [hl], a                                    ; $5298: $77
    nop                                           ; $5299: $00
    jr nz, jr_0b8_52d6                            ; $529a: $20 $3a

jr_0b8_529c:
    dec de                                        ; $529c: $1b
    cp l                                          ; $529d: $bd
    ld l, e                                       ; $529e: $6b
    ld hl, $0000                                  ; $529f: $21 $00 $00

jr_0b8_52a2:
    ld [$198c], sp                                ; $52a2: $08 $8c $19
    ld a, e                                       ; $52a5: $7b
    rrca                                          ; $52a6: $0f
    inc sp                                        ; $52a7: $33
    inc h                                         ; $52a8: $24

jr_0b8_52a9:
    nop                                           ; $52a9: $00
    db $10                                        ; $52aa: $10
    jr jr_0b8_5304                                ; $52ab: $18 $57

    adc e                                         ; $52ad: $8b
    add hl, sp                                    ; $52ae: $39
    cp l                                          ; $52af: $bd
    ld [hl], e                                    ; $52b0: $73

jr_0b8_52b1:
    ld hl, $8b04                                  ; $52b1: $21 $04 $8b
    ld c, l                                       ; $52b4: $4d
    cp l                                          ; $52b5: $bd
    scf                                           ; $52b6: $37
    sub h                                         ; $52b7: $94
    ld [hl], d                                    ; $52b8: $72
    nop                                           ; $52b9: $00
    jr nz, jr_0b8_52c2                            ; $52ba: $20 $06

    dec a                                         ; $52bc: $3d
    call $9459                                    ; $52bd: $cd $59 $94
    ld [hl], d                                    ; $52c0: $72
    nop                                           ; $52c1: $00

jr_0b8_52c2:
    nop                                           ; $52c2: $00
    sub $46                                       ; $52c3: $d6 $46
    nop                                           ; $52c5: $00
    jr nz, jr_0b8_52e9                            ; $52c6: $20 $21

    inc c                                         ; $52c8: $0c

jr_0b8_52c9:
    nop                                           ; $52c9: $00
    jr nz, jr_0b8_52a2                            ; $52ca: $20 $d6

    ld b, [hl]                                    ; $52cc: $46
    nop                                           ; $52cd: $00
    jr nz, jr_0b8_52f1                            ; $52ce: $20 $21

    inc c                                         ; $52d0: $0c
    nop                                           ; $52d1: $00
    jr nz, jr_0b8_52c9                            ; $52d2: $20 $f5

    ld c, $21                                     ; $52d4: $0e $21

jr_0b8_52d6:
    nop                                           ; $52d6: $00
    rst $38                                       ; $52d7: $ff
    rla                                           ; $52d8: $17
    ld b, d                                       ; $52d9: $42
    ld [$0f7b], sp                                ; $52da: $08 $7b $0f
    sub d                                         ; $52dd: $92
    ld d, d                                       ; $52de: $52
    db $fd                                        ; $52df: $fd
    ld a, a                                       ; $52e0: $7f
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    rst $28                                       ; $52e3: $ef
    ld d, l                                       ; $52e4: $55
    rst $38                                       ; $52e5: $ff
    ld e, e                                       ; $52e6: $5b
    push hl                                       ; $52e7: $e5
    inc a                                         ; $52e8: $3c

jr_0b8_52e9:
    ld hl, $0700                                  ; $52e9: $21 $00 $07
    add hl, sp                                    ; $52ec: $39
    ld d, c                                       ; $52ed: $51
    ld a, [hl+]                                   ; $52ee: $2a
    add hl, sp                                    ; $52ef: $39
    dec l                                         ; $52f0: $2d

jr_0b8_52f1:
    nop                                           ; $52f1: $00
    jr @+$29                                      ; $52f2: $18 $27

    ld b, c                                       ; $52f4: $41
    call z, $934d                                 ; $52f5: $cc $4d $93
    ld e, [hl]                                    ; $52f8: $5e
    nop                                           ; $52f9: $00
    jr jr_0b8_52a9                                ; $52fa: $18 $ad

    add hl, sp                                    ; $52fc: $39
    sbc $63                                       ; $52fd: $de $63
    ld [hl], e                                    ; $52ff: $73
    ld [bc], a                                    ; $5300: $02
    nop                                           ; $5301: $00
    jr nz, jr_0b8_52b1                            ; $5302: $20 $ad

jr_0b8_5304:
    add hl, sp                                    ; $5304: $39
    sbc $63                                       ; $5305: $de $63
    ld [hl], e                                    ; $5307: $73
    ld [bc], a                                    ; $5308: $02
    nop                                           ; $5309: $00
    jr nz, jr_0b8_531c                            ; $530a: $20 $10

    ld [$0002], sp                                ; $530c: $08 $02 $00
    jr jr_0b8_5325                                ; $530f: $18 $14

    nop                                           ; $5311: $00
    nop                                           ; $5312: $00

jr_0b8_5313:
    ld d, c                                       ; $5313: $51
    ld d, [hl]                                    ; $5314: $56
    xor e                                         ; $5315: $ab
    ld hl, $7bbc                                  ; $5316: $21 $bc $7b
    ld bc, $1804                                  ; $5319: $01 $04 $18

jr_0b8_531c:
    dec hl                                        ; $531c: $2b
    ld a, e                                       ; $531d: $7b
    ld l, a                                       ; $531e: $6f
    xor a                                         ; $531f: $af
    jr jr_0b8_5382                                ; $5320: $18 $60

    nop                                           ; $5322: $00
    ld e, a                                       ; $5323: $5f
    ld [hl], a                                    ; $5324: $77

jr_0b8_5325:
    ld d, a                                       ; $5325: $57
    inc d                                         ; $5326: $14
    ld l, l                                       ; $5327: $6d
    dec l                                         ; $5328: $2d
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    sub e                                         ; $532b: $93
    ld e, [hl]                                    ; $532c: $5e
    ld a, d                                       ; $532d: $7a
    ld [hl], e                                    ; $532e: $73
    adc $01                                       ; $532f: $ce $01
    nop                                           ; $5331: $00
    jr @-$27                                      ; $5332: $18 $d7

    ld [bc], a                                    ; $5334: $02
    rst $38                                       ; $5335: $ff
    ld a, a                                       ; $5336: $7f
    rst $18                                       ; $5337: $df
    dec de                                        ; $5338: $1b
    nop                                           ; $5339: $00
    jr nz, jr_0b8_5313                            ; $533a: $20 $d7

    ld [bc], a                                    ; $533c: $02

jr_0b8_533d:
    rst $38                                       ; $533d: $ff
    ld a, a                                       ; $533e: $7f
    rst $18                                       ; $533f: $df
    dec de                                        ; $5340: $1b
    nop                                           ; $5341: $00
    jr nz, jr_0b8_533d                            ; $5342: $20 $f9

    inc h                                         ; $5344: $24
    ld hl, $9b00                                  ; $5345: $21 $00 $9b
    dec a                                         ; $5348: $3d
    add e                                         ; $5349: $83
    db $10                                        ; $534a: $10
    push de                                       ; $534b: $d5
    ld h, d                                       ; $534c: $62
    call $de3d                                    ; $534d: $cd $3d $de
    ld a, a                                       ; $5350: $7f
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    add hl, sp                                    ; $5353: $39
    rlca                                          ; $5354: $07
    sbc h                                         ; $5355: $9c
    ld [hl], a                                    ; $5356: $77
    adc a                                         ; $5357: $8f
    nop                                           ; $5358: $00
    ld bc, $bf00                                  ; $5359: $01 $00 $bf
    ld a, a                                       ; $535c: $7f
    inc d                                         ; $535d: $14
    ld [$203a], sp                                ; $535e: $08 $3a $20
    ld bc, $5a00                                  ; $5361: $01 $00 $5a
    ld c, a                                       ; $5364: $4f
    or h                                          ; $5365: $b4
    dec d                                         ; $5366: $15
    cp [hl]                                       ; $5367: $be
    ld a, e                                       ; $5368: $7b
    nop                                           ; $5369: $00
    jr @+$7e                                      ; $536a: $18 $7c

    rla                                           ; $536c: $17
    rst $38                                       ; $536d: $ff
    ld a, a                                       ; $536e: $7f
    ld c, d                                       ; $536f: $4a
    add hl, bc                                    ; $5370: $09
    nop                                           ; $5371: $00
    jr nz, jr_0b8_53f0                            ; $5372: $20 $7c

    rla                                           ; $5374: $17
    rst $38                                       ; $5375: $ff
    ld a, a                                       ; $5376: $7f
    ld c, d                                       ; $5377: $4a
    add hl, bc                                    ; $5378: $09
    nop                                           ; $5379: $00
    jr nz, @+$31                                  ; $537a: $20 $2f

    ld [$28da], sp                                ; $537c: $08 $da $28
    ld hl, $0000                                  ; $537f: $21 $00 $00

jr_0b8_5382:
    nop                                           ; $5382: $00
    rrca                                          ; $5383: $0f
    ld c, [hl]                                    ; $5384: $4e
    sbc $77                                       ; $5385: $de $77
    ld h, e                                       ; $5387: $63
    inc c                                         ; $5388: $0c
    ld b, c                                       ; $5389: $41
    nop                                           ; $538a: $00
    ld d, c                                       ; $538b: $51
    ld d, [hl]                                    ; $538c: $56
    scf                                           ; $538d: $37
    ld l, a                                       ; $538e: $6f
    rst $38                                       ; $538f: $ff
    ld a, a                                       ; $5390: $7f
    ld hl, $f404                                  ; $5391: $21 $04 $f4
    ld h, d                                       ; $5394: $62
    ld l, c                                       ; $5395: $69
    dec l                                         ; $5396: $2d
    rst $38                                       ; $5397: $ff
    ld a, a                                       ; $5398: $7f
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    sbc h                                         ; $539b: $9c
    dec bc                                        ; $539c: $0b
    ld d, d                                       ; $539d: $52
    dec d                                         ; $539e: $15
    rst $38                                       ; $539f: $ff
    ld [hl], e                                    ; $53a0: $73
    nop                                           ; $53a1: $00
    db $10                                        ; $53a2: $10
    ld a, [hl-]                                   ; $53a3: $3a
    inc de                                        ; $53a4: $13
    rst $00                                       ; $53a5: $c7
    inc b                                         ; $53a6: $04
    rst $38                                       ; $53a7: $ff
    ld a, a                                       ; $53a8: $7f
    nop                                           ; $53a9: $00
    jr nz, jr_0b8_53e6                            ; $53aa: $20 $3a

    inc de                                        ; $53ac: $13
    rst $00                                       ; $53ad: $c7
    inc b                                         ; $53ae: $04
    rst $38                                       ; $53af: $ff
    ld a, a                                       ; $53b0: $7f
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    ld l, $4a                                     ; $53b3: $2e $4a
    inc d                                         ; $53b5: $14
    inc c                                         ; $53b6: $0c
    nop                                           ; $53b7: $00
    inc e                                         ; $53b8: $1c
    ld hl, $1804                                  ; $53b9: $21 $04 $18
    ld c, e                                       ; $53bc: $4b
    call z, $de35                                 ; $53bd: $cc $35 $de
    ld a, a                                       ; $53c0: $7f
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    rrca                                          ; $53c3: $0f
    ld b, [hl]                                    ; $53c4: $46
    cp h                                          ; $53c5: $bc
    ld a, e                                       ; $53c6: $7b
    ld [$001d], sp                                ; $53c7: $08 $1d $00
    inc b                                         ; $53ca: $04
    cp l                                          ; $53cb: $bd
    ld [hl], a                                    ; $53cc: $77
    adc h                                         ; $53cd: $8c
    add hl, sp                                    ; $53ce: $39
    rst $20                                       ; $53cf: $e7
    stop                                          ; $53d0: $10 $00
    nop                                           ; $53d2: $00
    add hl, de                                    ; $53d3: $19
    rrca                                          ; $53d4: $0f
    sbc h                                         ; $53d5: $9c
    ld e, e                                       ; $53d6: $5b
    ld de, $0009                                  ; $53d7: $11 $09 $00
    nop                                           ; $53da: $00
    sbc h                                         ; $53db: $9c
    ld [hl], a                                    ; $53dc: $77
    add hl, bc                                    ; $53dd: $09
    ld bc, $2000                                  ; $53de: $01 $00 $20
    nop                                           ; $53e1: $00
    jr nz, @-$62                                  ; $53e2: $20 $9c

    ld [hl], a                                    ; $53e4: $77
    add hl, bc                                    ; $53e5: $09

jr_0b8_53e6:
    ld bc, $2000                                  ; $53e6: $01 $00 $20
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    sub $5e                                       ; $53eb: $d6 $5e
    nop                                           ; $53ed: $00
    inc e                                         ; $53ee: $1c

jr_0b8_53ef:
    rst $38                                       ; $53ef: $ff

jr_0b8_53f0:
    ld a, a                                       ; $53f0: $7f
    ld b, d                                       ; $53f1: $42
    inc b                                         ; $53f2: $04
    cp l                                          ; $53f3: $bd
    rra                                           ; $53f4: $1f
    add hl, de                                    ; $53f5: $19
    ld e, e                                       ; $53f6: $5b
    ld l, h                                       ; $53f7: $6c
    ld hl, $0000                                  ; $53f8: $21 $00 $00
    ld e, c                                       ; $53fb: $59
    jr @-$6a                                      ; $53fc: $18 $94

    ld [hl-], a                                   ; $53fe: $32
    rst $38                                       ; $53ff: $ff
    ld a, a                                       ; $5400: $7f
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    ld a, h                                       ; $5403: $7c
    rla                                           ; $5404: $17
    cp a                                          ; $5405: $bf
    ld [hl], a                                    ; $5406: $77
    rrca                                          ; $5407: $0f
    add hl, bc                                    ; $5408: $09

jr_0b8_5409:
    nop                                           ; $5409: $00
    inc b                                         ; $540a: $04
    ld a, e                                       ; $540b: $7b
    rrca                                          ; $540c: $0f
    sbc e                                         ; $540d: $9b
    ld [hl], a                                    ; $540e: $77
    ld l, b                                       ; $540f: $68

Call_0b8_5410:
    ld sp, $0060                                  ; $5410: $31 $60 $00
    ld d, c                                       ; $5413: $51
    ld d, [hl]                                    ; $5414: $56
    sbc $7b                                       ; $5415: $de $7b
    adc b                                         ; $5417: $88
    jr jr_0b8_541a                                ; $5418: $18 $00

jr_0b8_541a:
    jr nz, jr_0b8_5409                            ; $541a: $20 $ed

    ld d, c                                       ; $541c: $51
    or h                                          ; $541d: $b4
    ld h, d                                       ; $541e: $62
    rst $30                                       ; $541f: $f7
    ld l, d                                       ; $5420: $6a
    nop                                           ; $5421: $00
    jr @+$53                                      ; $5422: $18 $51

    ld [bc], a                                    ; $5424: $02
    sbc h                                         ; $5425: $9c
    ld e, e                                       ; $5426: $5b
    rst $38                                       ; $5427: $ff
    inc de                                        ; $5428: $13
    ld hl, $d504                                  ; $5429: $21 $04 $d5
    ld [hl+], a                                   ; $542c: $22
    jr jr_0b8_5447                                ; $542d: $18 $18

    rst $38                                       ; $542f: $ff
    ld a, a                                       ; $5430: $7f
    ld hl, $1e04                                  ; $5431: $21 $04 $1e
    jr nz, jr_0b8_53ef                            ; $5434: $20 $b9

    ld e, [hl]                                    ; $5436: $5e
    ld c, a                                       ; $5437: $4f
    db $10                                        ; $5438: $10
    ld b, d                                       ; $5439: $42
    inc c                                         ; $543a: $0c
    cp l                                          ; $543b: $bd
    inc de                                        ; $543c: $13
    sub e                                         ; $543d: $93
    inc d                                         ; $543e: $14
    rst $38                                       ; $543f: $ff
    ld h, a                                       ; $5440: $67
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    or l                                          ; $5443: $b5
    ld c, [hl]                                    ; $5444: $4e
    db $dd                                        ; $5445: $dd
    ld a, a                                       ; $5446: $7f

jr_0b8_5447:
    rst $20                                       ; $5447: $e7
    jr nz, jr_0b8_54ab                            ; $5448: $20 $61

    nop                                           ; $544a: $00
    ld [hl], d                                    ; $544b: $72
    ld d, d                                       ; $544c: $52
    cp l                                          ; $544d: $bd
    ld a, e                                       ; $544e: $7b
    adc e                                         ; $544f: $8b
    ld sp, $2000                                  ; $5450: $31 $00 $20
    ld c, c                                       ; $5453: $49
    ld c, c                                       ; $5454: $49
    ld [hl], d                                    ; $5455: $72
    ld e, [hl]                                    ; $5456: $5e
    dec b                                         ; $5457: $05
    dec a                                         ; $5458: $3d
    nop                                           ; $5459: $00
    jr nz, @+$01                                  ; $545a: $20 $ff

    inc de                                        ; $545c: $13
    ld h, a                                       ; $545d: $67
    dec c                                         ; $545e: $0d
    ld hl, $2000                                  ; $545f: $21 $00 $20
    nop                                           ; $5462: $00
    ld d, c                                       ; $5463: $51
    ld d, d                                       ; $5464: $52
    ld l, d                                       ; $5465: $6a
    db $10                                        ; $5466: $10
    rst $38                                       ; $5467: $ff
    ld a, a                                       ; $5468: $7f
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    ld d, b                                       ; $546b: $50
    ld d, d                                       ; $546c: $52
    db $d3                                        ; $546d: $d3
    jr nz, @+$01                                  ; $546e: $20 $ff

    ld a, a                                       ; $5470: $7f
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    jp nc, $d60c                                  ; $5473: $d2 $0c $d6

    ld a, [bc]                                    ; $5476: $0a
    xor b                                         ; $5477: $a8
    inc b                                         ; $5478: $04
    ld bc, $6a00                                  ; $5479: $01 $00 $6a
    ld hl, $32f6                                  ; $547c: $21 $f6 $32
    ld d, [hl]                                    ; $547f: $56
    inc d                                         ; $5480: $14
    pop bc                                        ; $5481: $c1
    nop                                           ; $5482: $00
    sub e                                         ; $5483: $93
    ld d, d                                       ; $5484: $52
    ld l, d                                       ; $5485: $6a
    dec l                                         ; $5486: $2d
    sbc $7b                                       ; $5487: $de $7b
    ld b, b                                       ; $5489: $40
    nop                                           ; $548a: $00
    ld c, b                                       ; $548b: $48
    ld b, l                                       ; $548c: $45
    ld sp, $0062                                  ; $548d: $31 $62 $00
    jr nz, jr_0b8_5492                            ; $5490: $20 $00

jr_0b8_5492:
    inc b                                         ; $5492: $04
    ld a, h                                       ; $5493: $7c
    rrca                                          ; $5494: $0f
    ld b, e                                       ; $5495: $43
    ld bc, $6f39                                  ; $5496: $01 $39 $6f
    nop                                           ; $5499: $00

jr_0b8_549a:
    nop                                           ; $549a: $00
    cp h                                          ; $549b: $bc
    ld a, a                                       ; $549c: $7f
    adc e                                         ; $549d: $8b
    dec [hl]                                      ; $549e: $35
    ld b, d                                       ; $549f: $42
    ld bc, $0800                                  ; $54a0: $01 $00 $08
    sbc h                                         ; $54a3: $9c
    ld [hl], a                                    ; $54a4: $77
    ret nc                                        ; $54a5: $d0

    jr nz, @+$49                                  ; $54a6: $20 $47

    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00

jr_0b8_54ab:
    sub [hl]                                      ; $54ab: $96
    add hl, de                                    ; $54ac: $19
    db $ec                                        ; $54ad: $ec
    ld [$325a], sp                                ; $54ae: $08 $5a $32
    ld bc, $7700                                  ; $54b1: $01 $00 $77
    ld [hl+], a                                   ; $54b4: $22
    rst $38                                       ; $54b5: $ff
    ld d, e                                       ; $54b6: $53
    call Call_0b8_6110                            ; $54b7: $cd $10 $61
    nop                                           ; $54ba: $00
    or h                                          ; $54bb: $b4
    ld d, [hl]                                    ; $54bc: $56
    xor $24                                       ; $54bd: $ee $24
    cp h                                          ; $54bf: $bc
    ld [hl], a                                    ; $54c0: $77
    nop                                           ; $54c1: $00
    inc e                                         ; $54c2: $1c
    db $10                                        ; $54c3: $10
    ld h, d                                       ; $54c4: $62
    ld b, d                                       ; $54c5: $42
    dec b                                         ; $54c6: $05
    sbc h                                         ; $54c7: $9c
    ld a, e                                       ; $54c8: $7b
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    ld [hl], e                                    ; $54cb: $73
    ld l, [hl]                                    ; $54cc: $6e
    inc h                                         ; $54cd: $24
    add hl, bc                                    ; $54ce: $09
    cp l                                          ; $54cf: $bd
    ld a, e                                       ; $54d0: $7b
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    ld h, d                                       ; $54d3: $62
    dec b                                         ; $54d4: $05
    ld l, e                                       ; $54d5: $6b
    dec [hl]                                      ; $54d6: $35
    and l                                         ; $54d7: $a5
    jr jr_0b8_54da                                ; $54d8: $18 $00

jr_0b8_54da:
    nop                                           ; $54da: $00
    sbc l                                         ; $54db: $9d
    inc bc                                        ; $54dc: $03
    xor $14                                       ; $54dd: $ee $14
    ld a, e                                       ; $54df: $7b
    ld e, e                                       ; $54e0: $5b
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    sub a                                         ; $54e3: $97
    dec e                                         ; $54e4: $1d
    adc $08                                       ; $54e5: $ce $08
    sbc [hl]                                      ; $54e7: $9e
    ld a, [hl-]                                   ; $54e8: $3a
    ld bc, $0c00                                  ; $54e9: $01 $00 $0c
    add hl, bc                                    ; $54ec: $09
    scf                                           ; $54ed: $37
    ld l, $22                                     ; $54ee: $2e $22
    dec b                                         ; $54f0: $05
    ld h, c                                       ; $54f1: $61
    nop                                           ; $54f2: $00
    ld e, e                                       ; $54f3: $5b
    ld l, e                                       ; $54f4: $6b
    dec hl                                        ; $54f5: $2b
    add hl, hl                                    ; $54f6: $29
    ld d, e                                       ; $54f7: $53
    stop                                          ; $54f8: $10 $00
    inc e                                         ; $54fa: $1c
    sub h                                         ; $54fb: $94
    ld l, [hl]                                    ; $54fc: $6e
    ld h, e                                       ; $54fd: $63
    dec b                                         ; $54fe: $05
    ld b, $41                                     ; $54ff: $06 $41
    ld bc, $f904                                  ; $5501: $01 $04 $f9
    jr z, jr_0b8_549a                             ; $5504: $28 $94

    ld l, [hl]                                    ; $5506: $6e
    adc l                                         ; $5507: $8d
    jr jr_0b8_550a                                ; $5508: $18 $00

jr_0b8_550a:
    nop                                           ; $550a: $00
    rst $38                                       ; $550b: $ff
    dec de                                        ; $550c: $1b
    ld l, [hl]                                    ; $550d: $6e
    dec b                                         ; $550e: $05
    sbc h                                         ; $550f: $9c
    ld e, e                                       ; $5510: $5b
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    sub e                                         ; $5513: $93
    ld e, d                                       ; $5514: $5a
    rst $38                                       ; $5515: $ff
    ld a, a                                       ; $5516: $7f
    ld l, e                                       ; $5517: $6b
    ld hl, $0889                                  ; $5518: $21 $89 $08
    inc a                                         ; $551b: $3c
    ld [hl-], a                                   ; $551c: $32
    ld a, [hl-]                                   ; $551d: $3a
    ld e, e                                       ; $551e: $5b
    rst $38                                       ; $551f: $ff
    ld a, a                                       ; $5520: $7f
    ld h, [hl]                                    ; $5521: $66
    inc b                                         ; $5522: $04
    ld e, c                                       ; $5523: $59
    ld l, e                                       ; $5524: $6b
    ld [hl+], a                                   ; $5525: $22
    jr nc, jr_0b8_54ab                            ; $5526: $30 $83

    dec b                                         ; $5528: $05
    ld b, c                                       ; $5529: $41
    nop                                           ; $552a: $00
    db $fc                                        ; $552b: $fc
    ld d, l                                       ; $552c: $55
    rst $38                                       ; $552d: $ff
    rrca                                          ; $552e: $0f
    rl b                                          ; $552f: $cb $10
    nop                                           ; $5531: $00
    inc e                                         ; $5532: $1c
    add e                                         ; $5533: $83
    dec b                                         ; $5534: $05
    push hl                                       ; $5535: $e5
    inc a                                         ; $5536: $3c
    adc $59                                       ; $5537: $ce $59
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    ld l, c                                       ; $553b: $69
    ld c, c                                       ; $553c: $49
    rst $30                                       ; $553d: $f7
    ld [hl], d                                    ; $553e: $72
    nop                                           ; $553f: $00
    jr nz, jr_0b8_5542                            ; $5540: $20 $00

jr_0b8_5542:
    nop                                           ; $5542: $00
    sbc h                                         ; $5543: $9c
    rla                                           ; $5544: $17
    adc l                                         ; $5545: $8d
    ld bc, $20d7                                  ; $5546: $01 $d7 $20
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    or l                                          ; $554b: $b5
    ld e, d                                       ; $554c: $5a
    ld c, d                                       ; $554d: $4a
    ld hl, $77bd                                  ; $554e: $21 $bd $77
    ld l, c                                       ; $5551: $69
    inc b                                         ; $5552: $04
    inc e                                         ; $5553: $1c
    ld h, $1e                                     ; $5554: $26 $1e
    ld d, e                                       ; $5556: $53
    sbc l                                         ; $5557: $9d
    ld a, [hl-]                                   ; $5558: $3a
    inc hl                                        ; $5559: $23
    inc b                                         ; $555a: $04
    push af                                       ; $555b: $f5
    dec e                                         ; $555c: $1d
    add h                                         ; $555d: $84
    add hl, bc                                    ; $555e: $09
    ccf                                           ; $555f: $3f
    ld c, a                                       ; $5560: $4f
    ld [c], a                                     ; $5561: $e2
    nop                                           ; $5562: $00
    jp c, Jump_0b8_502f                           ; $5563: $da $2f $50

    inc b                                         ; $5566: $04
    rst $38                                       ; $5567: $ff
    ld a, a                                       ; $5568: $7f
    nop                                           ; $5569: $00
    inc e                                         ; $556a: $1c
    and e                                         ; $556b: $a3
    dec b                                         ; $556c: $05
    ld h, $3d                                     ; $556d: $26 $3d
    cpl                                           ; $556f: $2f
    ld d, [hl]                                    ; $5570: $56
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    adc d                                         ; $5573: $8a
    ld c, c                                       ; $5574: $49
    and e                                         ; $5575: $a3
    add hl, bc                                    ; $5576: $09
    nop                                           ; $5577: $00
    jr nz, jr_0b8_557a                            ; $5578: $20 $00

jr_0b8_557a:
    nop                                           ; $557a: $00
    ld d, a                                       ; $557b: $57
    db $10                                        ; $557c: $10
    cp $2b                                        ; $557d: $fe $2b
    ld hl, sp+$28                                 ; $557f: $f8 $28
    ld hl, $7204                                  ; $5581: $21 $04 $72
    ld d, d                                       ; $5584: $52
    cp l                                          ; $5585: $bd
    ld [hl], a                                    ; $5586: $77
    ld l, e                                       ; $5587: $6b
    ld sp, $0000                                  ; $5588: $31 $00 $00
    sub a                                         ; $558b: $97
    dec e                                         ; $558c: $1d
    sbc [hl]                                      ; $558d: $9e
    ld a, [hl-]                                   ; $558e: $3a
    ld l, b                                       ; $558f: $68
    nop                                           ; $5590: $00
    ld [hl+], a                                   ; $5591: $22
    nop                                           ; $5592: $00
    call nc, $c421                                ; $5593: $d4 $21 $c4
    add hl, bc                                    ; $5596: $09
    cp [hl]                                       ; $5597: $be
    ld a, $06                                     ; $5598: $3e $06
    inc b                                         ; $559a: $04
    ld a, d                                       ; $559b: $7a
    rla                                           ; $559c: $17
    push bc                                       ; $559d: $c5
    dec b                                         ; $559e: $05
    rst $38                                       ; $559f: $ff
    ld l, a                                       ; $55a0: $6f
    jr nz, jr_0b8_55a3                            ; $55a1: $20 $00

jr_0b8_55a3:
    rrca                                          ; $55a3: $0f
    ld e, d                                       ; $55a4: $5a
    nop                                           ; $55a5: $00
    jr nz, @+$5c                                  ; $55a6: $20 $5a

    ld [hl], e                                    ; $55a8: $73
    nop                                           ; $55a9: $00
    db $10                                        ; $55aa: $10
    ld c, b                                       ; $55ab: $48
    ld b, l                                       ; $55ac: $45
    call nz, $5109                                ; $55ad: $c4 $09 $51
    ld e, d                                       ; $55b0: $5a
    inc bc                                        ; $55b1: $03
    nop                                           ; $55b2: $00
    ld [de], a                                    ; $55b3: $12
    inc b                                         ; $55b4: $04
    rst $10                                       ; $55b5: $d7
    jr nz, jr_0b8_55cc                            ; $55b6: $20 $14

    inc c                                         ; $55b8: $0c
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    cp l                                          ; $55bb: $bd
    ld a, e                                       ; $55bc: $7b
    ld c, h                                       ; $55bd: $4c
    ld sp, $20f7                                  ; $55be: $31 $f7 $20
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    sub c                                         ; $55c3: $91
    add hl, hl                                    ; $55c4: $29
    ld a, l                                       ; $55c5: $7d
    ld [hl], $ab                                  ; $55c6: $36 $ab
    ld [$0000], sp                                ; $55c8: $08 $00 $00
    sbc h                                         ; $55cb: $9c

jr_0b8_55cc:
    ld a, [hl-]                                   ; $55cc: $3a
    add l                                         ; $55cd: $85
    dec c                                         ; $55ce: $0d
    sbc $5b                                       ; $55cf: $de $5b
    jr nz, jr_0b8_55d3                            ; $55d1: $20 $00

jr_0b8_55d3:
    ld [hl], h                                    ; $55d3: $74
    ld [bc], a                                    ; $55d4: $02
    call nz, $9c09                                ; $55d5: $c4 $09 $9c
    dec bc                                        ; $55d8: $0b
    ld b, d                                       ; $55d9: $42
    nop                                           ; $55da: $00
    jr nc, jr_0b8_5637                            ; $55db: $30 $5a

    nop                                           ; $55dd: $00

jr_0b8_55de:
    jr nz, jr_0b8_5639                            ; $55de: $20 $59

    ld l, a                                       ; $55e0: $6f
    nop                                           ; $55e1: $00
    db $10                                        ; $55e2: $10
    daa                                           ; $55e3: $27
    ld b, c                                       ; $55e4: $41
    ld [hl], d                                    ; $55e5: $72
    ld e, [hl]                                    ; $55e6: $5e
    and h                                         ; $55e7: $a4
    add hl, bc                                    ; $55e8: $09
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    xor e                                         ; $55eb: $ab
    ld de, $1a0e                                  ; $55ec: $11 $0e $1a
    inc bc                                        ; $55ef: $03
    inc b                                         ; $55f0: $04
    nop                                           ; $55f1: $00
    nop                                           ; $55f2: $00
    inc l                                         ; $55f3: $2c
    ld hl, $1cb6                                  ; $55f4: $21 $b6 $1c
    ld b, a                                       ; $55f7: $47
    stop                                          ; $55f8: $10 $00
    nop                                           ; $55fa: $00
    or e                                          ; $55fb: $b3
    db $10                                        ; $55fc: $10
    ccf                                           ; $55fd: $3f
    ld c, a                                       ; $55fe: $4f
    jr jr_0b8_5622                                ; $55ff: $18 $21

    jr nz, jr_0b8_5607                            ; $5601: $20 $04

    ld [hl], $2d                                  ; $5603: $36 $2d
    rst $38                                       ; $5605: $ff
    ld b, a                                       ; $5606: $47

jr_0b8_5607:
    ld [hl-], a                                   ; $5607: $32
    ld a, [bc]                                    ; $5608: $0a
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    db $e4                                        ; $560b: $e4
    add hl, bc                                    ; $560c: $09
    sub e                                         ; $560d: $93
    ld b, [hl]                                    ; $560e: $46
    ld [hl], h                                    ; $560f: $74
    ld [bc], a                                    ; $5610: $02
    nop                                           ; $5611: $00
    inc e                                         ; $5612: $1c
    or h                                          ; $5613: $b4
    ld h, d                                       ; $5614: $62
    adc l                                         ; $5615: $8d
    ld bc, $7fff                                  ; $5616: $01 $ff $7f
    nop                                           ; $5619: $00
    inc d                                         ; $561a: $14
    xor e                                         ; $561b: $ab
    ld c, l                                       ; $561c: $4d
    rst $38                                       ; $561d: $ff
    rla                                           ; $561e: $17
    sub $66                                       ; $561f: $d6 $66
    rst $08                                       ; $5621: $cf

jr_0b8_5622:
    add hl, bc                                    ; $5622: $09
    ld a, [hl-]                                   ; $5623: $3a
    inc de                                        ; $5624: $13
    sbc $1b                                       ; $5625: $de $1b
    rst $38                                       ; $5627: $ff
    scf                                           ; $5628: $37
    ld b, d                                       ; $5629: $42
    ld [$46d6], sp                                ; $562a: $08 $d6 $46
    rst $38                                       ; $562d: $ff
    ld e, a                                       ; $562e: $5f
    cp [hl]                                       ; $562f: $be
    inc sp                                        ; $5630: $33
    ld bc, $1300                                  ; $5631: $01 $00 $13
    inc c                                         ; $5634: $0c
    rst $38                                       ; $5635: $ff
    ld l, a                                       ; $5636: $6f

jr_0b8_5637:
    ld [hl], a                                    ; $5637: $77
    inc d                                         ; $5638: $14

jr_0b8_5639:
    ld b, d                                       ; $5639: $42
    nop                                           ; $563a: $00
    ld d, l                                       ; $563b: $55
    db $10                                        ; $563c: $10
    or [hl]                                       ; $563d: $b6
    ld a, [bc]                                    ; $563e: $0a
    dec b                                         ; $563f: $05
    ld c, $00                                     ; $5640: $0e $00
    nop                                           ; $5642: $00
    ld a, d                                       ; $5643: $7a
    ld a, [hl-]                                   ; $5644: $3a
    and $11                                       ; $5645: $e6 $11
    rst $38                                       ; $5647: $ff
    ld [hl], a                                    ; $5648: $77
    nop                                           ; $5649: $00
    inc e                                         ; $564a: $1c
    or h                                          ; $564b: $b4
    ld h, d                                       ; $564c: $62
    ldh a, [rSB]                                  ; $564d: $f0 $01

jr_0b8_564f:
    cp l                                          ; $564f: $bd
    ld [hl], a                                    ; $5650: $77
    nop                                           ; $5651: $00
    jr jr_0b8_55de                                ; $5652: $18 $8a

    ld c, c                                       ; $5654: $49
    ld a, d                                       ; $5655: $7a
    ld [hl], e                                    ; $5656: $73
    ld [hl], d                                    ; $5657: $72
    ld e, d                                       ; $5658: $5a
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    adc $09                                       ; $565b: $ce $09
    sub $0e                                       ; $565d: $d6 $0e
    rst $20                                       ; $565f: $e7
    inc b                                         ; $5660: $04
    ld b, d                                       ; $5661: $42
    nop                                           ; $5662: $00
    or h                                          ; $5663: $b4
    ld [de], a                                    ; $5664: $12
    sbc $5f                                       ; $5665: $de $5f
    cp [hl]                                       ; $5667: $be
    cpl                                           ; $5668: $2f
    ld bc, $de00                                  ; $5669: $01 $00 $de
    ld l, a                                       ; $566c: $6f
    ld de, $e704                                  ; $566d: $11 $04 $e7
    inc e                                         ; $5670: $1c
    ld hl, $2500                                  ; $5671: $21 $00 $25
    ld c, $10                                     ; $5674: $0e $10
    inc b                                         ; $5676: $04
    xor l                                         ; $5677: $ad
    ld bc, $0000                                  ; $5678: $01 $00 $00
    sub [hl]                                      ; $567b: $96
    ld sp, $0e05                                  ; $567c: $31 $05 $0e
    ld a, [hl]                                    ; $567f: $7e
    dec sp                                        ; $5680: $3b
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    rla                                           ; $5683: $17
    ld l, e                                       ; $5684: $6b
    nop                                           ; $5685: $00
    jr nz, @-$20                                  ; $5686: $20 $de

    ld a, a                                       ; $5688: $7f
    nop                                           ; $5689: $00
    inc e                                         ; $568a: $1c
    xor h                                         ; $568b: $ac
    ld c, l                                       ; $568c: $4d
    or h                                          ; $568d: $b4
    ld h, d                                       ; $568e: $62
    sbc e                                         ; $568f: $9b
    ld [hl], a                                    ; $5690: $77
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    inc bc                                        ; $5693: $03
    inc b                                         ; $5694: $04
    ld bc, $0400                                  ; $5695: $01 $00 $04
    inc b                                         ; $5698: $04
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    sub e                                         ; $569b: $93
    ld [de], a                                    ; $569c: $12
    inc c                                         ; $569d: $0c
    inc b                                         ; $569e: $04
    cp l                                          ; $569f: $bd
    inc sp                                        ; $56a0: $33
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    sbc h                                         ; $56a3: $9c
    ccf                                           ; $56a4: $3f
    rst $38                                       ; $56a5: $ff
    ld [hl], e                                    ; $56a6: $73
    ld [$001d], sp                                ; $56a7: $08 $1d $00
    nop                                           ; $56aa: $00
    ld d, d                                       ; $56ab: $52
    dec h                                         ; $56ac: $25
    and [hl]                                      ; $56ad: $a6
    dec d                                         ; $56ae: $15
    add hl, sp                                    ; $56af: $39
    ld e, a                                       ; $56b0: $5f
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    sub e                                         ; $56b3: $93
    ld hl, $46ff                                  ; $56b4: $21 $ff $46
    ld e, b                                       ; $56b7: $58
    jr jr_0b8_56ba                                ; $56b8: $18 $00

jr_0b8_56ba:
    jr nz, jr_0b8_564f                            ; $56ba: $20 $93

    ld e, [hl]                                    ; $56bc: $5e
    db $dd                                        ; $56bd: $dd
    ld a, e                                       ; $56be: $7b
    jr jr_0b8_572c                                ; $56bf: $18 $6b

    nop                                           ; $56c1: $00
    jr nz, jr_0b8_564f                            ; $56c2: $20 $8b

    ld c, c                                       ; $56c4: $49
    push de                                       ; $56c5: $d5
    ld h, [hl]                                    ; $56c6: $66
    cpl                                           ; $56c7: $2f
    ld d, [hl]                                    ; $56c8: $56
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    ld de, $0804                                  ; $56cb: $11 $04 $08
    ld [$0403], sp                                ; $56ce: $08 $03 $04
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    ld d, c                                       ; $56d3: $51
    ld [de], a                                    ; $56d4: $12
    ld [de], a                                    ; $56d5: $12
    inc b                                         ; $56d6: $04
    rlca                                          ; $56d7: $07
    inc c                                         ; $56d8: $0c
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    ld a, h                                       ; $56db: $7c
    scf                                           ; $56dc: $37
    sbc $73                                       ; $56dd: $de $73
    call z, Call_000_0005                         ; $56df: $cc $05 $00
    nop                                           ; $56e2: $00
    dec a                                         ; $56e3: $3d
    ld e, e                                       ; $56e4: $5b
    ld a, [bc]                                    ; $56e5: $0a
    add hl, de                                    ; $56e6: $19
    ld d, [hl]                                    ; $56e7: $56
    db $10                                        ; $56e8: $10
    ld bc, $d300                                  ; $56e9: $01 $00 $d3
    ld sp, $369f                                  ; $56ec: $31 $9f $36
    rra                                           ; $56ef: $1f
    ld c, a                                       ; $56f0: $4f
    nop                                           ; $56f1: $00
    jr nz, @+$53                                  ; $56f2: $20 $51

    ld e, d                                       ; $56f4: $5a
    rst $30                                       ; $56f5: $f7
    ld l, d                                       ; $56f6: $6a
    sbc h                                         ; $56f7: $9c
    ld [hl], a                                    ; $56f8: $77
    nop                                           ; $56f9: $00
    jr nz, jr_0b8_5744                            ; $56fa: $20 $48

    ld b, c                                       ; $56fc: $41
    cpl                                           ; $56fd: $2f
    ld d, [hl]                                    ; $56fe: $56
    adc e                                         ; $56ff: $8b
    ld c, c                                       ; $5700: $49
    ld bc, $b400                                  ; $5701: $01 $00 $b4
    ld h, d                                       ; $5704: $62
    ld [de], a                                    ; $5705: $12
    ld [$0808], sp                                ; $5706: $08 $08 $08
    inc [hl]                                      ; $5709: $34
    inc c                                         ; $570a: $0c
    ld d, h                                       ; $570b: $54
    db $10                                        ; $570c: $10
    ld d, [hl]                                    ; $570d: $56
    db $10                                        ; $570e: $10
    dec [hl]                                      ; $570f: $35
    inc c                                         ; $5710: $0c
    inc hl                                        ; $5711: $23
    ld [$2719], sp                                ; $5712: $08 $19 $27
    rst $18                                       ; $5715: $df
    ld h, a                                       ; $5716: $67
    inc [hl]                                      ; $5717: $34
    inc c                                         ; $5718: $0c
    ld [hl+], a                                   ; $5719: $22
    nop                                           ; $571a: $00
    ld hl, sp+$12                                 ; $571b: $f8 $12
    ld [de], a                                    ; $571d: $12
    ld [$5fff], sp                                ; $571e: $08 $ff $5f
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    sub h                                         ; $5723: $94
    ld hl, $4b1f                                  ; $5724: $21 $1f $4b
    adc b                                         ; $5727: $88
    ld [$2000], sp                                ; $5728: $08 $00 $20
    db $ed                                        ; $572b: $ed

jr_0b8_572c:
    ld d, c                                       ; $572c: $51
    ld [hl], d                                    ; $572d: $72
    ld e, [hl]                                    ; $572e: $5e
    cpl                                           ; $572f: $2f
    ld d, [hl]                                    ; $5730: $56
    nop                                           ; $5731: $00
    jr nz, jr_0b8_573a                            ; $5732: $20 $06

    ld b, c                                       ; $5734: $41
    ld h, $41                                     ; $5735: $26 $41
    dec [hl]                                      ; $5737: $35
    inc c                                         ; $5738: $0c
    nop                                           ; $5739: $00

jr_0b8_573a:
    nop                                           ; $573a: $00
    ld [de], a                                    ; $573b: $12
    ld [$498a], sp                                ; $573c: $08 $8a $49
    dec [hl]                                      ; $573f: $35
    db $10                                        ; $5740: $10
    ld [hl], l                                    ; $5741: $75
    db $10                                        ; $5742: $10
    sub a                                         ; $5743: $97

jr_0b8_5744:
    jr jr_0b8_57bc                                ; $5744: $18 $76

jr_0b8_5746:
    jr jr_0b8_57be                                ; $5746: $18 $76

    inc d                                         ; $5748: $14

jr_0b8_5749:
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    add hl, de                                    ; $574b: $19
    daa                                           ; $574c: $27
    sub h                                         ; $574d: $94
    db $10                                        ; $574e: $10
    sbc $67                                       ; $574f: $de $67
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    ld c, b                                       ; $5753: $48
    ld a, [de]                                    ; $5754: $1a
    sbc l                                         ; $5755: $9d
    cpl                                           ; $5756: $2f
    and $1c                                       ; $5757: $e6 $1c
    ld [hl+], a                                   ; $5759: $22

jr_0b8_575a:
    nop                                           ; $575a: $00
    sbc b                                         ; $575b: $98
    add hl, de                                    ; $575c: $19
    ld e, a                                       ; $575d: $5f
    ld d, e                                       ; $575e: $53
    ld a, [hl]                                    ; $575f: $7e
    ld [hl-], a                                   ; $5760: $32
    nop                                           ; $5761: $00
    jr nz, jr_0b8_5749                            ; $5762: $20 $e5

    inc a                                         ; $5764: $3c
    ld c, b                                       ; $5765: $48
    ld b, l                                       ; $5766: $45
    ld a, [hl]                                    ; $5767: $7e
    ld [hl-], a                                   ; $5768: $32
    nop                                           ; $5769: $00
    jr nz, jr_0b8_575a                            ; $576a: $20 $ee

    ld e, l                                       ; $576c: $5d
    halt                                          ; $576d: $76
    jr jr_0b8_57e6                                ; $576e: $18 $76

    inc d                                         ; $5770: $14
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    ld d, l                                       ; $5773: $55
    db $10                                        ; $5774: $10
    push hl                                       ; $5775: $e5
    inc a                                         ; $5776: $3c
    adc d                                         ; $5777: $8a
    ld c, l                                       ; $5778: $4d
    or a                                          ; $5779: $b7
    inc e                                         ; $577a: $1c
    ld hl, sp+$24                                 ; $577b: $f8 $24
    jr jr_0b8_57a8                                ; $577d: $18 $29

    rst $10                                       ; $577f: $d7
    jr nz, jr_0b8_57a5                            ; $5780: $20 $23

    nop                                           ; $5782: $00
    add hl, sp                                    ; $5783: $39
    inc hl                                        ; $5784: $23
    ld [hl], a                                    ; $5785: $77
    jr jr_0b8_5746                                ; $5786: $18 $be

    ld b, a                                       ; $5788: $47
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    cp l                                          ; $578b: $bd
    ld l, e                                       ; $578c: $6b
    ld h, $0e                                     ; $578d: $26 $0e
    ld l, l                                       ; $578f: $6d
    add hl, hl                                    ; $5790: $29
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    xor h                                         ; $5793: $ac
    ld d, l                                       ; $5794: $55
    cp [hl]                                       ; $5795: $be
    ld b, d                                       ; $5796: $42
    cp b                                          ; $5797: $b8
    dec e                                         ; $5798: $1d
    nop                                           ; $5799: $00
    jr nz, @-$19                                  ; $579a: $20 $e5

jr_0b8_579c:
    inc a                                         ; $579c: $3c
    cp [hl]                                       ; $579d: $be
    ld b, d                                       ; $579e: $42
    cp b                                          ; $579f: $b8
    dec e                                         ; $57a0: $1d
    nop                                           ; $57a1: $00
    jr nz, jr_0b8_579c                            ; $57a2: $20 $f8

    inc h                                         ; $57a4: $24

jr_0b8_57a5:
    jr jr_0b8_57d0                                ; $57a5: $18 $29

    rst $10                                       ; $57a7: $d7

jr_0b8_57a8:
    jr nz, jr_0b8_57aa                            ; $57a8: $20 $00

jr_0b8_57aa:
    nop                                           ; $57aa: $00
    xor h                                         ; $57ab: $ac
    ld d, l                                       ; $57ac: $55
    sub [hl]                                      ; $57ad: $96
    jr jr_0b8_5744                                ; $57ae: $18 $94

    ld l, [hl]                                    ; $57b0: $6e
    ld hl, sp+$24                                 ; $57b1: $f8 $24
    ld e, c                                       ; $57b3: $59
    dec l                                         ; $57b4: $2d
    ld a, c                                       ; $57b5: $79
    dec [hl]                                      ; $57b6: $35
    jr c, jr_0b8_57e6                             ; $57b7: $38 $2d

    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    sub a                                         ; $57bb: $97

jr_0b8_57bc:
    jr @+$5d                                      ; $57bc: $18 $5b

jr_0b8_57be:
    rra                                           ; $57be: $1f
    add $00                                       ; $57bf: $c6 $00
    jr nz, jr_0b8_57c3                            ; $57c1: $20 $00

jr_0b8_57c3:
    and a                                         ; $57c3: $a7
    ld [de], a                                    ; $57c4: $12
    sbc e                                         ; $57c5: $9b
    ld c, e                                       ; $57c6: $4b
    ld [hl], e                                    ; $57c7: $73
    dec d                                         ; $57c8: $15
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    db $10                                        ; $57cb: $10
    ld h, d                                       ; $57cc: $62
    sbc b                                         ; $57cd: $98

jr_0b8_57ce:
    add hl, de                                    ; $57ce: $19
    db $dd                                        ; $57cf: $dd

jr_0b8_57d0:
    ld c, d                                       ; $57d0: $4a
    nop                                           ; $57d1: $00
    jr nz, @+$12                                  ; $57d2: $20 $10

    ld h, d                                       ; $57d4: $62
    sbc b                                         ; $57d5: $98
    add hl, de                                    ; $57d6: $19
    db $dd                                        ; $57d7: $dd
    ld c, d                                       ; $57d8: $4a
    nop                                           ; $57d9: $00
    jr nz, jr_0b8_5835                            ; $57da: $20 $59

    dec l                                         ; $57dc: $2d
    ld a, c                                       ; $57dd: $79
    dec [hl]                                      ; $57de: $35
    jr c, jr_0b8_580e                             ; $57df: $38 $2d

    nop                                           ; $57e1: $00
    ld [$72f7], sp                                ; $57e2: $08 $f7 $72

jr_0b8_57e5:
    rst $10                                       ; $57e5: $d7

jr_0b8_57e6:
    jr nz, @+$01                                  ; $57e6: $20 $ff

    ld a, a                                       ; $57e8: $7f
    jr c, @+$2f                                   ; $57e9: $38 $2d

    cp d                                          ; $57eb: $ba
    add hl, sp                                    ; $57ec: $39
    ld a, c                                       ; $57ed: $79
    dec [hl]                                      ; $57ee: $35
    jp c, Jump_000_023d                           ; $57ef: $da $3d $02

    nop                                           ; $57f2: $00
    ret c                                         ; $57f3: $d8

    jr nz, jr_0b8_5830                            ; $57f4: $20 $3a

    inc de                                        ; $57f6: $13
    inc c                                         ; $57f7: $0c
    dec c                                         ; $57f8: $0d
    ld b, b                                       ; $57f9: $40
    nop                                           ; $57fa: $00
    ld a, e                                       ; $57fb: $7b
    dec de                                        ; $57fc: $1b
    pop de                                        ; $57fd: $d1
    inc d                                         ; $57fe: $14
    jp hl                                         ; $57ff: $e9


    dec c                                         ; $5800: $0d
    nop                                           ; $5801: $00
    inc c                                         ; $5802: $0c
    add hl, de                                    ; $5803: $19
    ld a, [hl+]                                   ; $5804: $2a
    sub h                                         ; $5805: $94
    ld [hl], d                                    ; $5806: $72
    ld e, h                                       ; $5807: $5c
    ld l, a                                       ; $5808: $6f
    nop                                           ; $5809: $00
    jr nz, @+$1b                                  ; $580a: $20 $19

    ld a, [hl+]                                   ; $580c: $2a
    sub h                                         ; $580d: $94

jr_0b8_580e:
    ld [hl], d                                    ; $580e: $72
    ld e, h                                       ; $580f: $5c
    ld l, a                                       ; $5810: $6f
    nop                                           ; $5811: $00
    jr nz, jr_0b8_57ce                            ; $5812: $20 $ba

    add hl, sp                                    ; $5814: $39
    ld a, c                                       ; $5815: $79
    dec [hl]                                      ; $5816: $35
    jp c, $003d                                   ; $5817: $da $3d $00

    nop                                           ; $581a: $00
    ld e, b                                       ; $581b: $58
    dec l                                         ; $581c: $2d
    sbc h                                         ; $581d: $9c
    ld [hl], a                                    ; $581e: $77
    nop                                           ; $581f: $00
    jr nz, jr_0b8_5822                            ; $5820: $20 $00

jr_0b8_5822:
    nop                                           ; $5822: $00
    sbc c                                         ; $5823: $99
    ld sp, $3dda                                  ; $5824: $31 $da $3d
    ld a, [de]                                    ; $5827: $1a
    ld b, d                                       ; $5828: $42
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    rrca                                          ; $582b: $0f
    ld h, d                                       ; $582c: $62
    sbc h                                         ; $582d: $9c
    ld a, e                                       ; $582e: $7b
    or l                                          ; $582f: $b5

jr_0b8_5830:
    ld l, [hl]                                    ; $5830: $6e
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    push hl                                       ; $5833: $e5
    inc a                                         ; $5834: $3c

jr_0b8_5835:
    rrca                                          ; $5835: $0f
    ld e, d                                       ; $5836: $5a
    ld c, c                                       ; $5837: $49
    ld c, c                                       ; $5838: $49
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00

jr_0b8_583b:
    rst $30                                       ; $583b: $f7
    ld [hl], d                                    ; $583c: $72
    sbc $7b                                       ; $583d: $de $7b
    nop                                           ; $583f: $00
    jr nz, jr_0b8_5842                            ; $5840: $20 $00

jr_0b8_5842:
    jr nz, jr_0b8_583b                            ; $5842: $20 $f7

    ld [hl], d                                    ; $5844: $72
    sbc $7b                                       ; $5845: $de $7b
    nop                                           ; $5847: $00
    jr nz, jr_0b8_584a                            ; $5848: $20 $00

jr_0b8_584a:
    jr nz, jr_0b8_57e5                            ; $584a: $20 $99

    ld sp, $3dda                                  ; $584c: $31 $da $3d
    ld a, [de]                                    ; $584f: $1a
    ld b, d                                       ; $5850: $42
    nop                                           ; $5851: $00
    jr nz, @-$6b                                  ; $5852: $20 $93

    ld h, d                                       ; $5854: $62
    sbc h                                         ; $5855: $9c
    ld [hl], a                                    ; $5856: $77
    ld l, c                                       ; $5857: $69
    ld b, l                                       ; $5858: $45
    push hl                                       ; $5859: $e5
    inc a                                         ; $585a: $3c
    ld sp, $f766                                  ; $585b: $31 $66 $f7
    ld [hl], d                                    ; $585e: $72
    ld c, c                                       ; $585f: $49
    ld c, l                                       ; $5860: $4d
    daa                                           ; $5861: $27
    ld b, l                                       ; $5862: $45
    sub l                                         ; $5863: $95
    ld [hl], d                                    ; $5864: $72
    sbc h                                         ; $5865: $9c
    ld a, e                                       ; $5866: $7b
    adc $5d                                       ; $5867: $ce $5d
    ld l, d                                       ; $5869: $6a
    ld c, l                                       ; $586a: $4d
    sub h                                         ; $586b: $94
    ld l, [hl]                                    ; $586c: $6e
    jr nc, @+$60                                  ; $586d: $30 $5e

    ld e, d                                       ; $586f: $5a
    ld [hl], e                                    ; $5870: $73
    nop                                           ; $5871: $00
    jr nz, jr_0b8_58e7                            ; $5872: $20 $73

    ld e, [hl]                                    ; $5874: $5e
    cp h                                          ; $5875: $bc
    ld a, e                                       ; $5876: $7b
    push hl                                       ; $5877: $e5
    inc a                                         ; $5878: $3c
    nop                                           ; $5879: $00
    jr nz, @+$75                                  ; $587a: $20 $73

    ld e, [hl]                                    ; $587c: $5e
    cp h                                          ; $587d: $bc
    ld a, e                                       ; $587e: $7b
    push hl                                       ; $587f: $e5
    inc a                                         ; $5880: $3c
    nop                                           ; $5881: $00
    jr nz, jr_0b8_5884                            ; $5882: $20 $00

jr_0b8_5884:
    jr nz, jr_0b8_5886                            ; $5884: $20 $00

jr_0b8_5886:
    jr nz, jr_0b8_58d1                            ; $5886: $20 $49

    dec h                                         ; $5888: $25
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    jr jr_0b8_588e                                ; $588c: $18 $00

jr_0b8_588e:
    jr nz, @+$4b                                  ; $588e: $20 $49

    dec h                                         ; $5890: $25
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    jr nz, jr_0b8_5896                            ; $5894: $20 $00

jr_0b8_5896:
    jr nz, jr_0b8_58e1                            ; $5896: $20 $49

    dec h                                         ; $5898: $25
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    rst $38                                       ; $589b: $ff
    ld a, a                                       ; $589c: $7f
    nop                                           ; $589d: $00
    jr nz, jr_0b8_58df                            ; $589e: $20 $3f

    daa                                           ; $58a0: $27
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    jr nz, jr_0b8_58a6                            ; $58a4: $20 $00

jr_0b8_58a6:
    jr nz, jr_0b8_58e7                            ; $58a6: $20 $3f

    daa                                           ; $58a8: $27
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    jr nc, jr_0b8_58b6                            ; $58ab: $30 $09

    nop                                           ; $58ad: $00
    inc e                                         ; $58ae: $1c
    nop                                           ; $58af: $00
    jr nz, jr_0b8_58b2                            ; $58b0: $20 $00

jr_0b8_58b2:
    jr nz, jr_0b8_58e4                            ; $58b2: $20 $30

    add hl, bc                                    ; $58b4: $09
    nop                                           ; $58b5: $00

jr_0b8_58b6:
    inc e                                         ; $58b6: $1c
    nop                                           ; $58b7: $00
    jr nz, jr_0b8_58ba                            ; $58b8: $20 $00

jr_0b8_58ba:
    jr nz, jr_0b8_58bc                            ; $58ba: $20 $00

jr_0b8_58bc:
    jr nz, jr_0b8_58be                            ; $58bc: $20 $00

jr_0b8_58be:
    jr nz, jr_0b8_5909                            ; $58be: $20 $49

    dec h                                         ; $58c0: $25
    ld [hl+], a                                   ; $58c1: $22
    nop                                           ; $58c2: $00
    sub b                                         ; $58c3: $90
    ld bc, $031c                                  ; $58c4: $01 $1c $03
    nop                                           ; $58c7: $00
    inc e                                         ; $58c8: $1c
    ld bc, $d700                                  ; $58c9: $01 $00 $d7
    ld bc, $2000                                  ; $58cc: $01 $00 $20
    ld a, a                                       ; $58cf: $7f
    inc bc                                        ; $58d0: $03

jr_0b8_58d1:
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    rst $38                                       ; $58d3: $ff
    ld a, a                                       ; $58d4: $7f
    nop                                           ; $58d5: $00
    jr nz, jr_0b8_58d8                            ; $58d6: $20 $00

jr_0b8_58d8:
    jr nz, jr_0b8_58da                            ; $58d8: $20 $00

jr_0b8_58da:
    nop                                           ; $58da: $00
    inc sp                                        ; $58db: $33
    dec b                                         ; $58dc: $05
    ld e, a                                       ; $58dd: $5f
    dec hl                                        ; $58de: $2b

jr_0b8_58df:
    nop                                           ; $58df: $00
    inc e                                         ; $58e0: $1c

jr_0b8_58e1:
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    halt                                          ; $58e3: $76

jr_0b8_58e4:
    dec c                                         ; $58e4: $0d
    rra                                           ; $58e5: $1f
    ld [de], a                                    ; $58e6: $12

jr_0b8_58e7:
    sbc $26                                       ; $58e7: $de $26
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    inc e                                         ; $58ec: $1c
    nop                                           ; $58ed: $00
    jr nz, @-$20                                  ; $58ee: $20 $de

    ld h, $00                                     ; $58f0: $26 $00
    jr nz, @-$27                                  ; $58f2: $20 $d7

    ld bc, $2000                                  ; $58f4: $01 $00 $20
    ld a, a                                       ; $58f7: $7f
    inc bc                                        ; $58f8: $03
    nop                                           ; $58f9: $00
    ld [$0250], sp                                ; $58fa: $08 $50 $02
    ld a, [hl]                                    ; $58fd: $7e
    inc bc                                        ; $58fe: $03
    db $ed                                        ; $58ff: $ed
    ld bc, $0042                                  ; $5900: $01 $42 $00
    ld [de], a                                    ; $5903: $12
    ld [bc], a                                    ; $5904: $02
    cp l                                          ; $5905: $bd
    inc bc                                        ; $5906: $03
    ld a, e                                       ; $5907: $7b
    ld [bc], a                                    ; $5908: $02

jr_0b8_5909:
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    ld l, h                                       ; $590b: $6c
    ld e, d                                       ; $590c: $5a
    add a                                         ; $590d: $87
    add hl, sp                                    ; $590e: $39
    or a                                          ; $590f: $b7
    ld [hl], a                                    ; $5910: $77
    nop                                           ; $5911: $00
    inc b                                         ; $5912: $04
    add hl, sp                                    ; $5913: $39
    ld c, $97                                     ; $5914: $0e $97
    ld [hl], a                                    ; $5916: $77
    sbc [hl]                                      ; $5917: $9e
    inc de                                        ; $5918: $13
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    sbc l                                         ; $591b: $9d
    inc bc                                        ; $591c: $03
    rst $08                                       ; $591d: $cf
    dec c                                         ; $591e: $0d
    cp l                                          ; $591f: $bd
    dec de                                        ; $5920: $1b
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    jr nz, @-$2f                                  ; $5924: $20 $cf

    dec c                                         ; $5926: $0d
    cp l                                          ; $5927: $bd
    dec de                                        ; $5928: $1b
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    cp l                                          ; $592b: $bd
    ld [bc], a                                    ; $592c: $02
    nop                                           ; $592d: $00
    jr nz, jr_0b8_59ab                            ; $592e: $20 $7b

    ld [bc], a                                    ; $5930: $02
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    inc a                                         ; $5933: $3c
    ld [bc], a                                    ; $5934: $02
    rst $38                                       ; $5935: $ff
    inc bc                                        ; $5936: $03
    add l                                         ; $5937: $85
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    ld a, a                                       ; $593b: $7f
    ld [bc], a                                    ; $593c: $02
    rst $38                                       ; $593d: $ff
    inc bc                                        ; $593e: $03
    cp $02                                        ; $593f: $fe $02
    ld bc, $4600                                  ; $5941: $01 $00 $46
    ld d, [hl]                                    ; $5944: $56
    and a                                         ; $5945: $a7
    add hl, sp                                    ; $5946: $39
    call nc, $007f                                ; $5947: $d4 $7f $00
    nop                                           ; $594a: $00
    ld [hl], h                                    ; $594b: $74
    ld a, a                                       ; $594c: $7f
    ld a, $03                                     ; $594d: $3e $03
    ei                                            ; $594f: $fb
    ld a, a                                       ; $5950: $7f
    ld d, [hl]                                    ; $5951: $56
    dec b                                         ; $5952: $05
    ld a, [hl]                                    ; $5953: $7e
    ld [bc], a                                    ; $5954: $02
    ld e, [hl]                                    ; $5955: $5e
    inc hl                                        ; $5956: $23
    ld e, l                                       ; $5957: $5d
    inc bc                                        ; $5958: $03
    ld [bc], a                                    ; $5959: $02
    nop                                           ; $595a: $00
    ld d, l                                       ; $595b: $55
    add hl, bc                                    ; $595c: $09
    nop                                           ; $595d: $00
    jr nz, jr_0b8_599f                            ; $595e: $20 $3f

    daa                                           ; $5960: $27
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    jr nz, @+$01                                  ; $5964: $20 $ff

    inc bc                                        ; $5966: $03
    cp $02                                        ; $5967: $fe $02
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    ld d, h                                       ; $596b: $54
    ld [bc], a                                    ; $596c: $02
    di                                            ; $596d: $f3
    ld a, a                                       ; $596e: $7f
    ld e, $03                                     ; $596f: $1e $03
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    ld l, c                                       ; $5973: $69
    ld h, d                                       ; $5974: $62
    or d                                          ; $5975: $b2
    ld a, a                                       ; $5976: $7f
    ld h, [hl]                                    ; $5977: $66
    dec [hl]                                      ; $5978: $35
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    ld l, h                                       ; $597b: $6c
    ld a, e                                       ; $597c: $7b
    dec de                                        ; $597d: $1b
    ld e, a                                       ; $597e: $5f
    adc [hl]                                      ; $597f: $8e
    ld sp, $0001                                  ; $5980: $31 $01 $00
    add hl, hl                                    ; $5983: $29
    ld l, [hl]                                    ; $5984: $6e
    ret c                                         ; $5985: $d8

    ld a, a                                       ; $5986: $7f
    ld b, a                                       ; $5987: $47
    add hl, hl                                    ; $5988: $29
    ld hl, $fa00                                  ; $5989: $21 $00 $fa
    ld bc, $010d                                  ; $598c: $01 $0d $01
    dec e                                         ; $598f: $1d
    inc bc                                        ; $5990: $03
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    ld [hl], b                                    ; $5993: $70
    dec b                                         ; $5994: $05
    call c, $001e                                 ; $5995: $dc $1e $00
    jr nz, jr_0b8_599a                            ; $5998: $20 $00

jr_0b8_599a:
    nop                                           ; $599a: $00
    rrca                                          ; $599b: $0f
    ld bc, $2000                                  ; $599c: $01 $00 $20

jr_0b8_599f:
    ld h, [hl]                                    ; $599f: $66
    dec [hl]                                      ; $59a0: $35
    jr nz, jr_0b8_59a3                            ; $59a1: $20 $00

jr_0b8_59a3:
    db $10                                        ; $59a3: $10
    ld [bc], a                                    ; $59a4: $02
    dec a                                         ; $59a5: $3d
    inc bc                                        ; $59a6: $03
    dec b                                         ; $59a7: $05
    dec d                                         ; $59a8: $15
    jr nz, jr_0b8_59b7                            ; $59a9: $20 $0c

jr_0b8_59ab:
    ld l, h                                       ; $59ab: $6c
    ld e, [hl]                                    ; $59ac: $5e
    adc [hl]                                      ; $59ad: $8e
    ld a, e                                       ; $59ae: $7b
    or c                                          ; $59af: $b1
    ld de, $0000                                  ; $59b0: $11 $00 $00
    ld bc, $5d7f                                  ; $59b3: $01 $7f $5d
    ld h, a                                       ; $59b6: $67

jr_0b8_59b7:
    ld [de], a                                    ; $59b7: $12
    ld a, $00                                     ; $59b8: $3e $00
    nop                                           ; $59ba: $00
    jr z, jr_0b8_5a38                             ; $59bb: $28 $7b

    adc a                                         ; $59bd: $8f
    ld a, e                                       ; $59be: $7b
    sub l                                         ; $59bf: $95
    ld a, e                                       ; $59c0: $7b
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    sbc d                                         ; $59c3: $9a
    ld [bc], a                                    ; $59c4: $02
    rst $30                                       ; $59c5: $f7
    ld a, a                                       ; $59c6: $7f
    ld c, c                                       ; $59c7: $49
    ld bc, $0000                                  ; $59c8: $01 $00 $00
    ld [hl], l                                    ; $59cb: $75
    ld bc, $2000                                  ; $59cc: $01 $00 $20
    ld a, a                                       ; $59cf: $7f
    ld [bc], a                                    ; $59d0: $02
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    rst $38                                       ; $59d3: $ff
    ld [bc], a                                    ; $59d4: $02
    nop                                           ; $59d5: $00
    jr nz, @+$01                                  ; $59d6: $20 $ff

    inc bc                                        ; $59d8: $03
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    rrca                                          ; $59db: $0f
    ld bc, $3541                                  ; $59dc: $01 $41 $35
    or [hl]                                       ; $59df: $b6
    ld [bc], a                                    ; $59e0: $02

jr_0b8_59e1:
    jr nz, jr_0b8_59ef                            ; $59e1: $20 $0c

    inc hl                                        ; $59e3: $23
    ld a, a                                       ; $59e4: $7f
    db $d3                                        ; $59e5: $d3
    ld bc, $5fff                                  ; $59e6: $01 $ff $5f
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    ld sp, $5942                                  ; $59eb: $31 $42 $59
    ld l, e                                       ; $59ee: $6b

jr_0b8_59ef:
    rst $38                                       ; $59ef: $ff
    ld a, a                                       ; $59f0: $7f
    ld bc, $a000                                  ; $59f1: $01 $00 $a0
    ld [hl], d                                    ; $59f4: $72
    sub b                                         ; $59f5: $90
    dec l                                         ; $59f6: $2d
    dec de                                        ; $59f7: $1b
    ld e, a                                       ; $59f8: $5f
    ld b, c                                       ; $59f9: $41
    nop                                           ; $59fa: $00
    daa                                           ; $59fb: $27
    ld d, [hl]                                    ; $59fc: $56
    ld a, l                                       ; $59fd: $7d
    inc bc                                        ; $59fe: $03
    or d                                          ; $59ff: $b2
    ld a, a                                       ; $5a00: $7f
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    ccf                                           ; $5a03: $3f
    ld [bc], a                                    ; $5a04: $02
    nop                                           ; $5a05: $00
    jr nz, jr_0b8_5a87                            ; $5a06: $20 $7f

    ld [bc], a                                    ; $5a08: $02
    nop                                           ; $5a09: $00
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    jr nz, jr_0b8_59e1                            ; $5a0c: $20 $d3

    ld bc, $5fff                                  ; $5a0e: $01 $ff $5f
    nop                                           ; $5a11: $00

jr_0b8_5a12:
    nop                                           ; $5a12: $00
    bit 5, [hl]                                   ; $5a13: $cb $6e
    inc c                                         ; $5a15: $0c
    ld bc, $7fff                                  ; $5a16: $01 $ff $7f
    nop                                           ; $5a19: $00
    ld [$0158], sp                                ; $5a1a: $08 $58 $01
    db $fc                                        ; $5a1d: $fc
    ld a, a                                       ; $5a1e: $7f
    jp z, Jump_000_2100                           ; $5a1f: $ca $00 $21

    inc b                                         ; $5a22: $04
    sub $5a                                       ; $5a23: $d6 $5a
    ld l, e                                       ; $5a25: $6b
    dec l                                         ; $5a26: $2d
    cp l                                          ; $5a27: $bd
    ld [hl], a                                    ; $5a28: $77
    nop                                           ; $5a29: $00
    nop                                           ; $5a2a: $00
    ld hl, $7b5a                                  ; $5a2b: $21 $5a $7b
    ld l, a                                       ; $5a2e: $6f
    adc $39                                       ; $5a2f: $ce $39
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    add c                                         ; $5a33: $81
    ld b, l                                       ; $5a34: $45
    ld sp, $c402                                  ; $5a35: $31 $02 $c4

jr_0b8_5a38:
    ld l, [hl]                                    ; $5a38: $6e
    nop                                           ; $5a39: $00
    nop                                           ; $5a3a: $00
    dec l                                         ; $5a3b: $2d
    ld bc, $025e                                  ; $5a3c: $01 $5e $02
    nop                                           ; $5a3f: $00
    jr nz, jr_0b8_5a42                            ; $5a40: $20 $00

jr_0b8_5a42:
    nop                                           ; $5a42: $00
    rst $38                                       ; $5a43: $ff
    ld a, a                                       ; $5a44: $7f
    nop                                           ; $5a45: $00
    jr nz, jr_0b8_5a12                            ; $5a46: $20 $ca

Jump_0b8_5a48:
    nop                                           ; $5a48: $00

Jump_0b8_5a49:
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    ld b, [hl]                                    ; $5a4b: $46
    ld d, [hl]                                    ; $5a4c: $56
    rst $38                                       ; $5a4d: $ff
    ld a, a                                       ; $5a4e: $7f
    db $ed                                        ; $5a4f: $ed
    ld l, d                                       ; $5a50: $6a
    nop                                           ; $5a51: $00
    ld [$2a98], sp                                ; $5a52: $08 $98 $2a
    rst $38                                       ; $5a55: $ff
    ld [hl], a                                    ; $5a56: $77
    xor h                                         ; $5a57: $ac
    dec d                                         ; $5a58: $15
    add hl, hl                                    ; $5a59: $29
    dec h                                         ; $5a5a: $25
    sub $5a                                       ; $5a5b: $d6 $5a
    sbc $7b                                       ; $5a5d: $de $7b

jr_0b8_5a5f:
    xor l                                         ; $5a5f: $ad
    dec [hl]                                      ; $5a60: $35
    ld hl, $5404                                  ; $5a61: $21 $04 $54
    ld c, d                                       ; $5a64: $4a
    ld [$7c21], sp                                ; $5a65: $08 $21 $7c
    ld l, a                                       ; $5a68: $6f
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    ld bc, $cf56                                  ; $5a6b: $01 $56 $cf
    ld bc, $72c2                                  ; $5a6e: $01 $c2 $72
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    nop                                           ; $5a73: $00
    jr nz, jr_0b8_5a5f                            ; $5a74: $20 $e9

    nop                                           ; $5a76: $00
    jp nz, Jump_000_0072                          ; $5a77: $c2 $72 $00

    nop                                           ; $5a7a: $00
    rst $38                                       ; $5a7b: $ff
    ld a, a                                       ; $5a7c: $7f
    nop                                           ; $5a7d: $00
    jr nz, @-$52                                  ; $5a7e: $20 $ac

    dec d                                         ; $5a80: $15
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    adc $39                                       ; $5a83: $ce $39
    or [hl]                                       ; $5a85: $b6
    ld d, [hl]                                    ; $5a86: $56

jr_0b8_5a87:
    add $18                                       ; $5a87: $c6 $18
    jr nz, jr_0b8_5a97                            ; $5a89: $20 $0c

    sbc b                                         ; $5a8b: $98
    ld [bc], a                                    ; $5a8c: $02
    adc b                                         ; $5a8d: $88
    add hl, sp                                    ; $5a8e: $39
    cp h                                          ; $5a8f: $bc
    ld e, e                                       ; $5a90: $5b
    xor l                                         ; $5a91: $ad
    dec [hl]                                      ; $5a92: $35
    add hl, sp                                    ; $5a93: $39
    ld h, a                                       ; $5a94: $67
    sub h                                         ; $5a95: $94
    ld d, d                                       ; $5a96: $52

jr_0b8_5a97:
    sbc $7b                                       ; $5a97: $de $7b
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    adc $39                                       ; $5a9b: $ce $39
    rst $30                                       ; $5a9d: $f7
    ld e, [hl]                                    ; $5a9e: $5e
    and [hl]                                      ; $5a9f: $a6
    stop                                          ; $5aa0: $10 $00
    nop                                           ; $5aa2: $00
    jp nz, $8772                                  ; $5aa3: $c2 $72 $87

    nop                                           ; $5aa6: $00
    ret nz                                        ; $5aa7: $c0

    jr nz, jr_0b8_5aaa                            ; $5aa8: $20 $00

jr_0b8_5aaa:
    nop                                           ; $5aaa: $00
    rst $38                                       ; $5aab: $ff
    ld a, a                                       ; $5aac: $7f
    nop                                           ; $5aad: $00
    jr nz, @-$3e                                  ; $5aae: $20 $c0

    jr nz, jr_0b8_5ab2                            ; $5ab0: $20 $00

jr_0b8_5ab2:
    ld [$3def], sp                                ; $5ab2: $08 $ef $3d
    rlca                                          ; $5ab5: $07
    ld hl, $5ad7                                  ; $5ab6: $21 $d7 $5a
    add h                                         ; $5ab9: $84
    db $10                                        ; $5aba: $10
    jr jr_0b8_5b1c                                ; $5abb: $18 $5f

    xor l                                         ; $5abd: $ad
    dec [hl]                                      ; $5abe: $35
    sbc $7b                                       ; $5abf: $de $7b
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    ld [hl-], a                                   ; $5ac3: $32
    ld [bc], a                                    ; $5ac4: $02
    ld sp, $9d4a                                  ; $5ac5: $31 $4a $9d
    ld [hl], a                                    ; $5ac8: $77
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    sub $5a                                       ; $5acb: $d6 $5a
    and l                                         ; $5acd: $a5
    inc d                                         ; $5ace: $14
    cp l                                          ; $5acf: $bd
    ld [hl], a                                    ; $5ad0: $77
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    rla                                           ; $5ad3: $17
    ld h, e                                       ; $5ad4: $63
    ld h, d                                       ; $5ad5: $62
    ld b, c                                       ; $5ad6: $41
    rst $20                                       ; $5ad7: $e7
    inc e                                         ; $5ad8: $1c
    ld b, b                                       ; $5ad9: $40
    inc c                                         ; $5ada: $0c
    pop hl                                        ; $5adb: $e1
    ld c, c                                       ; $5adc: $49
    call nz, $8209                                ; $5add: $c4 $09 $82
    ld h, [hl]                                    ; $5ae0: $66
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    rst $38                                       ; $5ae3: $ff
    ld a, a                                       ; $5ae4: $7f
    call nz, Call_000_0009                        ; $5ae5: $c4 $09 $00
    jr nz, jr_0b8_5aea                            ; $5ae8: $20 $00

jr_0b8_5aea:
    nop                                           ; $5aea: $00
    or [hl]                                       ; $5aeb: $b6
    ld d, [hl]                                    ; $5aec: $56
    sbc h                                         ; $5aed: $9c
    ld [hl], e                                    ; $5aee: $73
    rst $38                                       ; $5aef: $ff
    ld a, a                                       ; $5af0: $7f
    ld b, d                                       ; $5af1: $42
    ld [$6739], sp                                ; $5af2: $08 $39 $67
    ld sp, $de46                                  ; $5af5: $31 $46 $de
    ld a, e                                       ; $5af8: $7b
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    ld [hl], e                                    ; $5afb: $73
    ld c, d                                       ; $5afc: $4a
    sub d                                         ; $5afd: $92
    dec e                                         ; $5afe: $1d
    sbc h                                         ; $5aff: $9c
    ld [hl], a                                    ; $5b00: $77
    ld hl, $6e00                                  ; $5b01: $21 $00 $6e
    dec h                                         ; $5b04: $25
    call c, $ea4a                                 ; $5b05: $dc $4a $ea
    inc d                                         ; $5b08: $14
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    ld hl, $d95a                                  ; $5b0b: $21 $5a $d9
    ld d, [hl]                                    ; $5b0e: $56
    ld c, e                                       ; $5b0f: $4b
    add hl, hl                                    ; $5b10: $29
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    ld [hl+], a                                   ; $5b13: $22
    ld e, d                                       ; $5b14: $5a
    db $e4                                        ; $5b15: $e4
    add hl, bc                                    ; $5b16: $09
    ldh [rNR50], a                                ; $5b17: $e0 $24
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    rst $38                                       ; $5b1b: $ff

jr_0b8_5b1c:
    ld a, a                                       ; $5b1c: $7f
    db $e4                                        ; $5b1d: $e4
    add hl, bc                                    ; $5b1e: $09
    nop                                           ; $5b1f: $00
    jr nz, jr_0b8_5b22                            ; $5b20: $20 $00

jr_0b8_5b22:
    nop                                           ; $5b22: $00
    ld [hl-], a                                   ; $5b23: $32
    ld b, [hl]                                    ; $5b24: $46
    rst $38                                       ; $5b25: $ff
    ld a, a                                       ; $5b26: $7f
    ld b, d                                       ; $5b27: $42
    inc e                                         ; $5b28: $1c
    ld b, d                                       ; $5b29: $42
    ld [$6318], sp                                ; $5b2a: $08 $18 $63
    adc h                                         ; $5b2d: $8c
    ld sp, $77bd                                  ; $5b2e: $31 $bd $77
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    ld l, h                                       ; $5b33: $6c
    dec h                                         ; $5b34: $25
    sub h                                         ; $5b35: $94
    ld e, d                                       ; $5b36: $5a
    ret c                                         ; $5b37: $d8

    ld bc, $0420                                  ; $5b38: $01 $20 $04
    ld c, e                                       ; $5b3b: $4b
    ld a, e                                       ; $5b3c: $7b
    inc e                                         ; $5b3d: $1c
    ld d, a                                       ; $5b3e: $57
    add sp, $20                                   ; $5b3f: $e8 $20
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    adc $3d                                       ; $5b43: $ce $3d
    db $dd                                        ; $5b45: $dd
    ld c, d                                       ; $5b46: $4a
    add sp, $18                                   ; $5b47: $e8 $18
    jr nz, jr_0b8_5b4f                            ; $5b49: $20 $04

    ld b, d                                       ; $5b4b: $42
    ld e, [hl]                                    ; $5b4c: $5e
    push hl                                       ; $5b4d: $e5
    dec c                                         ; $5b4e: $0d

jr_0b8_5b4f:
    ldh [$28], a                                  ; $5b4f: $e0 $28
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    rst $38                                       ; $5b53: $ff
    ld a, a                                       ; $5b54: $7f
    push hl                                       ; $5b55: $e5
    dec c                                         ; $5b56: $0d
    nop                                           ; $5b57: $00
    jr nz, jr_0b8_5b5a                            ; $5b58: $20 $00

jr_0b8_5b5a:
    nop                                           ; $5b5a: $00
    sub l                                         ; $5b5b: $95
    ld d, d                                       ; $5b5c: $52
    ld h, [hl]                                    ; $5b5d: $66
    dec d                                         ; $5b5e: $15
    rst $38                                       ; $5b5f: $ff
    ld a, a                                       ; $5b60: $7f
    ld hl, $b504                                  ; $5b61: $21 $04 $b5
    ld d, [hl]                                    ; $5b64: $56
    ld l, h                                       ; $5b65: $6c
    add hl, hl                                    ; $5b66: $29
    rst $38                                       ; $5b67: $ff
    ld a, a                                       ; $5b68: $7f
    ld b, d                                       ; $5b69: $42
    inc b                                         ; $5b6a: $04
    ld c, e                                       ; $5b6b: $4b
    ld a, e                                       ; $5b6c: $7b
    cp h                                          ; $5b6d: $bc
    ld b, [hl]                                    ; $5b6e: $46
    rst $38                                       ; $5b6f: $ff
    ld a, a                                       ; $5b70: $7f
    nop                                           ; $5b71: $00
    nop                                           ; $5b72: $00
    ld e, a                                       ; $5b73: $5f
    ld d, a                                       ; $5b74: $57
    rrc h                                         ; $5b75: $cb $0c
    rst $38                                       ; $5b77: $ff
    ld a, e                                       ; $5b78: $7b
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    jp $9445                                      ; $5b7b: $c3 $45 $94


    ld d, [hl]                                    ; $5b7e: $56
    rst $00                                       ; $5b7f: $c7
    inc d                                         ; $5b80: $14
    jr nz, @+$06                                  ; $5b81: $20 $04

    ld hl, $2056                                  ; $5b83: $21 $56 $20
    ld sp, $1206                                  ; $5b86: $31 $06 $12
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    rst $38                                       ; $5b8b: $ff
    ld a, a                                       ; $5b8c: $7f
    ld b, $12                                     ; $5b8d: $06 $12
    nop                                           ; $5b8f: $00
    jr nz, jr_0b8_5b92                            ; $5b90: $20 $00

jr_0b8_5b92:
    nop                                           ; $5b92: $00
    rst $10                                       ; $5b93: $d7
    ld e, d                                       ; $5b94: $5a
    rst $20                                       ; $5b95: $e7
    inc e                                         ; $5b96: $1c
    rst $38                                       ; $5b97: $ff
    ld a, a                                       ; $5b98: $7f
    jr nz, jr_0b8_5ba3                            ; $5b99: $20 $08

    ld b, c                                       ; $5b9b: $41
    ld h, d                                       ; $5b9c: $62
    rst $30                                       ; $5b9d: $f7
    ld e, [hl]                                    ; $5b9e: $5e
    xor l                                         ; $5b9f: $ad
    dec [hl]                                      ; $5ba0: $35
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00

jr_0b8_5ba3:
    ld e, a                                       ; $5ba3: $5f
    ld d, a                                       ; $5ba4: $57
    db $eb                                        ; $5ba5: $eb
    db $10                                        ; $5ba6: $10
    ldh [$3c], a                                  ; $5ba7: $e0 $3c
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    call $7839                                    ; $5bab: $cd $39 $78
    ld b, d                                       ; $5bae: $42
    add sp, $1c                                   ; $5baf: $e8 $1c
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    pop bc                                        ; $5bb3: $c1
    ld c, l                                       ; $5bb4: $4d
    ld [hl], e                                    ; $5bb5: $73
    ld c, [hl]                                    ; $5bb6: $4e
    ld e, d                                       ; $5bb7: $5a
    ld l, e                                       ; $5bb8: $6b
    jr nz, jr_0b8_5bbf                            ; $5bb9: $20 $04

    ld h, h                                       ; $5bbb: $64
    ld e, [hl]                                    ; $5bbc: $5e
    ld sp, hl                                     ; $5bbd: $f9
    ld a, a                                       ; $5bbe: $7f

jr_0b8_5bbf:
    ld [hl+], a                                   ; $5bbf: $22
    dec h                                         ; $5bc0: $25
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    ld [hl], d                                    ; $5bc3: $72
    ld bc, $029e                                  ; $5bc4: $01 $9e $02
    nop                                           ; $5bc7: $00
    jr nz, jr_0b8_5bca                            ; $5bc8: $20 $00

jr_0b8_5bca:
    nop                                           ; $5bca: $00
    or [hl]                                       ; $5bcb: $b6
    ld d, [hl]                                    ; $5bcc: $56
    ld hl, $ff20                                  ; $5bcd: $21 $20 $ff
    ld a, a                                       ; $5bd0: $7f
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    ld h, d                                       ; $5bd3: $62
    ld h, [hl]                                    ; $5bd4: $66
    adc e                                         ; $5bd5: $8b
    ld sp, $20e0                                  ; $5bd6: $31 $e0 $20
    ld [hl+], a                                   ; $5bd9: $22
    inc b                                         ; $5bda: $04
    inc de                                        ; $5bdb: $13
    ld [hl], $3e                                  ; $5bdc: $36 $3e
    ld d, e                                       ; $5bde: $53
    ld c, d                                       ; $5bdf: $4a
    dec h                                         ; $5be0: $25
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    ld a, h                                       ; $5be3: $7c
    ld l, e                                       ; $5be4: $6b
    adc l                                         ; $5be5: $8d
    ld sp, $18c6                                  ; $5be6: $31 $c6 $18
    ld bc, $e100                                  ; $5be9: $01 $00 $e1
    ld d, c                                       ; $5bec: $51
    ld e, d                                       ; $5bed: $5a
    ld l, e                                       ; $5bee: $6b
    add hl, hl                                    ; $5bef: $29
    dec h                                         ; $5bf0: $25
    jr nz, jr_0b8_5bf7                            ; $5bf1: $20 $04

    cp b                                          ; $5bf3: $b8
    ld a, e                                       ; $5bf4: $7b
    db $e4                                        ; $5bf5: $e4
    ld c, l                                       ; $5bf6: $4d

jr_0b8_5bf7:
    nop                                           ; $5bf7: $00
    dec l                                         ; $5bf8: $2d
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    ld d, c                                       ; $5bfb: $51
    ld bc, $1c00                                  ; $5bfc: $01 $00 $1c
    ld e, e                                       ; $5bff: $5b
    ld [bc], a                                    ; $5c00: $02
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    or [hl]                                       ; $5c03: $b6
    ld d, [hl]                                    ; $5c04: $56
    rst $38                                       ; $5c05: $ff
    ld a, a                                       ; $5c06: $7f
    nop                                           ; $5c07: $00
    jr nz, jr_0b8_5c0a                            ; $5c08: $20 $00

jr_0b8_5c0a:
    nop                                           ; $5c0a: $00
    jr nz, jr_0b8_5c3e                            ; $5c0b: $20 $31

    ld bc, $c956                                  ; $5c0d: $01 $56 $c9
    ld hl, $0000                                  ; $5c10: $21 $00 $00
    adc h                                         ; $5c13: $8c
    ld sp, $5af6                                  ; $5c14: $31 $f6 $5a
    ld h, l                                       ; $5c17: $65
    ld [$0000], sp                                ; $5c18: $08 $00 $00
    ld d, d                                       ; $5c1b: $52
    ld c, d                                       ; $5c1c: $4a

jr_0b8_5c1d:
    cp l                                          ; $5c1d: $bd
    ld [hl], a                                    ; $5c1e: $77
    rst $20                                       ; $5c1f: $e7
    inc e                                         ; $5c20: $1c
    ld b, [hl]                                    ; $5c21: $46
    nop                                           ; $5c22: $00
    ld a, [$6221]                                 ; $5c23: $fa $21 $62
    dec a                                         ; $5c26: $3d
    rst $38                                       ; $5c27: $ff
    ld a, a                                       ; $5c28: $7f
    ret nz                                        ; $5c29: $c0

    jr nz, jr_0b8_5c1d                            ; $5c2a: $20 $f1

    ld l, d                                       ; $5c2c: $6a
    inc hl                                        ; $5c2d: $23
    ld d, [hl]                                    ; $5c2e: $56
    cp c                                          ; $5c2f: $b9
    ld a, a                                       ; $5c30: $7f
    nop                                           ; $5c31: $00
    inc e                                         ; $5c32: $1c
    ld e, d                                       ; $5c33: $5a
    ld [bc], a                                    ; $5c34: $02
    db $f4                                        ; $5c35: $f4
    ld h, d                                       ; $5c36: $62
    ld b, h                                       ; $5c37: $44
    dec l                                         ; $5c38: $2d
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    ld c, b                                       ; $5c3b: $48
    ld a, [de]                                    ; $5c3c: $1a
    or [hl]                                       ; $5c3d: $b6

jr_0b8_5c3e:
    ld d, [hl]                                    ; $5c3e: $56
    nop                                           ; $5c3f: $00
    jr nz, jr_0b8_5c42                            ; $5c40: $20 $00

jr_0b8_5c42:
    nop                                           ; $5c42: $00
    add b                                         ; $5c43: $80
    ld b, c                                       ; $5c44: $41
    ld c, b                                       ; $5c45: $48
    ld a, [de]                                    ; $5c46: $1a
    ld h, d                                       ; $5c47: $62
    ld h, d                                       ; $5c48: $62
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    ld sp, $c446                                  ; $5c4b: $31 $46 $c4

jr_0b8_5c4e:
    inc e                                         ; $5c4e: $1c
    sub $5a                                       ; $5c4f: $d6 $5a
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    ld d, d                                       ; $5c53: $52
    ld c, d                                       ; $5c54: $4a
    sub $5a                                       ; $5c55: $d6 $5a
    add $18                                       ; $5c57: $c6 $18
    ld b, c                                       ; $5c59: $41
    inc b                                         ; $5c5a: $04
    ld e, c                                       ; $5c5b: $59
    ld d, $bd                                     ; $5c5c: $16 $bd
    ld [hl], a                                    ; $5c5e: $77
    jr z, jr_0b8_5c8a                             ; $5c5f: $28 $29

    ld b, b                                       ; $5c61: $40
    inc c                                         ; $5c62: $0c
    dec b                                         ; $5c63: $05
    ld d, d                                       ; $5c64: $52
    pop af                                        ; $5c65: $f1
    ld h, [hl]                                    ; $5c66: $66
    ld b, l                                       ; $5c67: $45
    ld sp, $1c00                                  ; $5c68: $31 $00 $1c
    or h                                          ; $5c6b: $b4
    ld a, a                                       ; $5c6c: $7f
    ccf                                           ; $5c6d: $3f
    inc bc                                        ; $5c6e: $03
    ld c, d                                       ; $5c6f: $4a
    dec b                                         ; $5c70: $05
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    rst $38                                       ; $5c73: $ff
    ld a, a                                       ; $5c74: $7f
    nop                                           ; $5c75: $00
    jr nz, jr_0b8_5c4e                            ; $5c76: $20 $d6

    ld e, d                                       ; $5c78: $5a
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    ld hl, $ff5e                                  ; $5c7b: $21 $5e $ff
    ld a, a                                       ; $5c7e: $7f
    ld b, l                                       ; $5c7f: $45
    add hl, de                                    ; $5c80: $19
    ld hl, $9400                                  ; $5c81: $21 $00 $94
    ld d, [hl]                                    ; $5c84: $56
    ld e, a                                       ; $5c85: $5f
    ld [bc], a                                    ; $5c86: $02
    ld [$0021], sp                                ; $5c87: $08 $21 $00

jr_0b8_5c8a:
    nop                                           ; $5c8a: $00
    db $10                                        ; $5c8b: $10
    ld b, d                                       ; $5c8c: $42
    add $18                                       ; $5c8d: $c6 $18
    or l                                          ; $5c8f: $b5
    ld d, [hl]                                    ; $5c90: $56
    ld b, c                                       ; $5c91: $41
    ld [$356a], sp                                ; $5c92: $08 $6a $35
    ld a, [hl-]                                   ; $5c95: $3a
    ld h, a                                       ; $5c96: $67
    rst $10                                       ; $5c97: $d7
    ld bc, $24c0                                  ; $5c98: $01 $c0 $24
    inc bc                                        ; $5c9b: $03
    ld d, [hl]                                    ; $5c9c: $56
    di                                            ; $5c9d: $f3
    ld h, d                                       ; $5c9e: $62
    adc [hl]                                      ; $5c9f: $8e
    dec l                                         ; $5ca0: $2d
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    rst $30                                       ; $5ca3: $f7
    ld bc, $037f                                  ; $5ca4: $01 $7f $03
    nop                                           ; $5ca7: $00
    jr nz, jr_0b8_5caa                            ; $5ca8: $20 $00

jr_0b8_5caa:
    nop                                           ; $5caa: $00
    push de                                       ; $5cab: $d5
    ld bc, $039f                                  ; $5cac: $01 $9f $03
    nop                                           ; $5caf: $00
    jr nz, jr_0b8_5cf3                            ; $5cb0: $20 $41

    ld [$02da], sp                                ; $5cb2: $08 $da $02
    ret c                                         ; $5cb5: $d8

    ld d, [hl]                                    ; $5cb6: $56
    ldh [rHDMA1], a                               ; $5cb7: $e0 $51
    ld b, e                                       ; $5cb9: $43
    inc b                                         ; $5cba: $04
    rst $30                                       ; $5cbb: $f7
    ld e, [hl]                                    ; $5cbc: $5e
    ld [hl], c                                    ; $5cbd: $71
    dec d                                         ; $5cbe: $15
    rst $18                                       ; $5cbf: $df
    ld [bc], a                                    ; $5cc0: $02
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    ld c, d                                       ; $5cc3: $4a
    add hl, hl                                    ; $5cc4: $29
    rst $28                                       ; $5cc5: $ef
    dec a                                         ; $5cc6: $3d
    ld h, e                                       ; $5cc7: $63
    inc c                                         ; $5cc8: $0c
    ld b, c                                       ; $5cc9: $41
    inc b                                         ; $5cca: $04
    or [hl]                                       ; $5ccb: $b6
    ld [bc], a                                    ; $5ccc: $02
    pop af                                        ; $5ccd: $f1
    ld h, [hl]                                    ; $5cce: $66
    ld [$4031], sp                                ; $5ccf: $08 $31 $40
    inc d                                         ; $5cd2: $14
    ld bc, $3456                                  ; $5cd3: $01 $56 $34
    ld a, $9f                                     ; $5cd6: $3e $9f
    ld [bc], a                                    ; $5cd8: $02
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    ld a, l                                       ; $5cdb: $7d
    inc bc                                        ; $5cdc: $03
    nop                                           ; $5cdd: $00
    jr nz, jr_0b8_5ce8                            ; $5cde: $20 $08

    ld bc, $0000                                  ; $5ce0: $01 $00 $00
    sbc c                                         ; $5ce3: $99
    ld [bc], a                                    ; $5ce4: $02
    nop                                           ; $5ce5: $00
    jr nz, jr_0b8_5d26                            ; $5ce6: $20 $3e

jr_0b8_5ce8:
    inc bc                                        ; $5ce8: $03
    ld hl, $7808                                  ; $5ce9: $21 $08 $78
    ld [bc], a                                    ; $5cec: $02
    ld a, [hl-]                                   ; $5ced: $3a
    ld h, a                                       ; $5cee: $67
    nop                                           ; $5cef: $00
    dec l                                         ; $5cf0: $2d
    ld b, d                                       ; $5cf1: $42
    nop                                           ; $5cf2: $00

jr_0b8_5cf3:
    db $db                                        ; $5cf3: $db
    ld a, [de]                                    ; $5cf4: $1a
    dec hl                                        ; $5cf5: $2b
    ld hl, $6f7b                                  ; $5cf6: $21 $7b $6f
    ld hl, $ce04                                  ; $5cf9: $21 $04 $ce
    add hl, sp                                    ; $5cfc: $39

jr_0b8_5cfd:
    or l                                          ; $5cfd: $b5
    ld d, [hl]                                    ; $5cfe: $56
    cp l                                          ; $5cff: $bd
    ld [hl], a                                    ; $5d00: $77
    ld hl, $b500                                  ; $5d01: $21 $00 $b5
    ld [bc], a                                    ; $5d04: $02
    jp nz, Jump_0b8_5a49                          ; $5d05: $c2 $49 $5a

    ld l, e                                       ; $5d08: $6b
    ld [hl+], a                                   ; $5d09: $22
    inc b                                         ; $5d0a: $04
    cp $02                                        ; $5d0b: $fe $02

jr_0b8_5d0d:
    ld h, d                                       ; $5d0d: $62
    ld l, d                                       ; $5d0e: $6a
    inc h                                         ; $5d0f: $24
    ld sp, $0042                                  ; $5d10: $31 $42 $00
    adc $01                                       ; $5d13: $ce $01
    db $dd                                        ; $5d15: $dd
    inc bc                                        ; $5d16: $03
    nop                                           ; $5d17: $00
    jr nz, jr_0b8_5d7d                            ; $5d18: $20 $63

    nop                                           ; $5d1a: $00
    ld l, e                                       ; $5d1b: $6b
    ld bc, $2000                                  ; $5d1c: $01 $00 $20
    add hl, sp                                    ; $5d1f: $39
    ld [bc], a                                    ; $5d20: $02
    ld hl, $7204                                  ; $5d21: $21 $04 $72
    ld [bc], a                                    ; $5d24: $02
    ld a, [hl-]                                   ; $5d25: $3a

jr_0b8_5d26:
    ld h, a                                       ; $5d26: $67
    cp l                                          ; $5d27: $bd
    ld [bc], a                                    ; $5d28: $02
    ld b, d                                       ; $5d29: $42
    inc b                                         ; $5d2a: $04
    ldh a, [$29]                                  ; $5d2b: $f0 $29
    sbc $7b                                       ; $5d2d: $de $7b
    rst $38                                       ; $5d2f: $ff
    inc bc                                        ; $5d30: $03
    ld hl, $9400                                  ; $5d31: $21 $00 $94
    ld d, d                                       ; $5d34: $52
    ld [$bd2d], sp                                ; $5d35: $08 $2d $bd
    ld [hl], a                                    ; $5d38: $77
    ld h, d                                       ; $5d39: $62
    inc c                                         ; $5d3a: $0c
    ld a, [hl-]                                   ; $5d3b: $3a
    inc bc                                        ; $5d3c: $03
    ld a, [hl-]                                   ; $5d3d: $3a
    ld h, a                                       ; $5d3e: $67
    ld hl, $005a                                  ; $5d3f: $21 $5a $00
    nop                                           ; $5d42: $00
    ld d, a                                       ; $5d43: $57
    ld bc, $7f41                                  ; $5d44: $01 $41 $7f
    ld a, l                                       ; $5d47: $7d
    inc bc                                        ; $5d48: $03
    ld b, d                                       ; $5d49: $42
    nop                                           ; $5d4a: $00
    ld sp, $0002                                  ; $5d4b: $31 $02 $00
    jr nz, jr_0b8_5d0d                            ; $5d4e: $20 $bd

    inc bc                                        ; $5d50: $03
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    ld e, b                                       ; $5d53: $58
    ld [bc], a                                    ; $5d54: $02
    nop                                           ; $5d55: $00
    jr nz, jr_0b8_5cfd                            ; $5d56: $20 $a5

    nop                                           ; $5d58: $00
    ld b, d                                       ; $5d59: $42
    inc c                                         ; $5d5a: $0c
    ld e, a                                       ; $5d5b: $5f
    ld [bc], a                                    ; $5d5c: $02
    ld a, [hl-]                                   ; $5d5d: $3a
    ld h, a                                       ; $5d5e: $67
    ld a, [de]                                    ; $5d5f: $1a
    inc bc                                        ; $5d60: $03
    ld hl, $ef04                                  ; $5d61: $21 $04 $ef
    ld bc, $3124                                  ; $5d64: $01 $24 $31
    rst $38                                       ; $5d67: $ff
    inc bc                                        ; $5d68: $03
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    db $10                                        ; $5d6b: $10
    ld b, d                                       ; $5d6c: $42
    sbc h                                         ; $5d6d: $9c
    ld [hl], e                                    ; $5d6e: $73
    ld l, e                                       ; $5d6f: $6b
    dec l                                         ; $5d70: $2d
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    add hl, sp                                    ; $5d73: $39
    inc bc                                        ; $5d74: $03
    sbc $7b                                       ; $5d75: $de $7b
    daa                                           ; $5d77: $27
    add hl, de                                    ; $5d78: $19
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    db $10                                        ; $5d7b: $10
    ld [bc], a                                    ; $5d7c: $02

jr_0b8_5d7d:
    ld a, h                                       ; $5d7d: $7c
    inc bc                                        ; $5d7e: $03
    cp h                                          ; $5d7f: $bc
    ld bc, $0000                                  ; $5d80: $01 $00 $00
    ld c, d                                       ; $5d83: $4a
    ld bc, $0318                                  ; $5d84: $01 $18 $03
    nop                                           ; $5d87: $00
    jr nz, jr_0b8_5dab                            ; $5d88: $20 $21

    nop                                           ; $5d8a: $00
    sbc e                                         ; $5d8b: $9b
    inc bc                                        ; $5d8c: $03
    ld c, d                                       ; $5d8d: $4a
    ld bc, $2000                                  ; $5d8e: $01 $00 $20
    and a                                         ; $5d91: $a7
    nop                                           ; $5d92: $00
    jr nc, @+$50                                  ; $5d93: $30 $4e

    ld a, d                                       ; $5d95: $7a
    ld [bc], a                                    ; $5d96: $02
    ld a, e                                       ; $5d97: $7b

jr_0b8_5d98:
    ld [hl], e                                    ; $5d98: $73
    nop                                           ; $5d99: $00
    inc b                                         ; $5d9a: $04
    db $fc                                        ; $5d9b: $fc
    ld [bc], a                                    ; $5d9c: $02
    add h                                         ; $5d9d: $84
    inc b                                         ; $5d9e: $04
    ld c, e                                       ; $5d9f: $4b
    ld bc, $0000                                  ; $5da0: $01 $00 $00
    or l                                          ; $5da3: $b5
    ld d, [hl]                                    ; $5da4: $56
    sbc $7b                                       ; $5da5: $de $7b
    ld [$0121], sp                                ; $5da7: $08 $21 $01
    inc b                                         ; $5daa: $04

jr_0b8_5dab:
    cp l                                          ; $5dab: $bd
    ld [hl], a                                    ; $5dac: $77
    call $d239                                    ; $5dad: $cd $39 $d2
    ld bc, $0021                                  ; $5db0: $01 $21 $00
    sbc l                                         ; $5db3: $9d
    inc bc                                        ; $5db4: $03
    ld c, d                                       ; $5db5: $4a
    ld bc, $0231                                  ; $5db6: $01 $31 $02
    ld hl, $d600                                  ; $5db9: $21 $00 $d6
    ld [bc], a                                    ; $5dbc: $02
    nop                                           ; $5dbd: $00
    jr nz, @+$01                                  ; $5dbe: $20 $ff

    rlca                                          ; $5dc0: $07
    nop                                           ; $5dc1: $00
    inc d                                         ; $5dc2: $14
    adc $01                                       ; $5dc3: $ce $01
    ld [$5a01], sp                                ; $5dc5: $08 $01 $5a
    inc bc                                        ; $5dc8: $03
    ld b, d                                       ; $5dc9: $42
    inc b                                         ; $5dca: $04
    ld e, c                                       ; $5dcb: $59
    inc bc                                        ; $5dcc: $03
    ld a, e                                       ; $5dcd: $7b
    ld l, a                                       ; $5dce: $6f
    ld c, e                                       ; $5dcf: $4b
    ld bc, $0025                                  ; $5dd0: $01 $25 $00
    cp $02                                        ; $5dd3: $fe $02
    sbc d                                         ; $5dd5: $9a
    ld [hl], a                                    ; $5dd6: $77
    ld b, $35                                     ; $5dd7: $06 $35
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    rst $30                                       ; $5ddb: $f7
    ld e, [hl]                                    ; $5ddc: $5e
    ld c, d                                       ; $5ddd: $4a
    add hl, hl                                    ; $5dde: $29
    cp l                                          ; $5ddf: $bd
    ld [hl], a                                    ; $5de0: $77
    ld hl, $ff00                                  ; $5de1: $21 $00 $ff
    inc bc                                        ; $5de4: $03
    adc $45                                       ; $5de5: $ce $45
    ld a, e                                       ; $5de7: $7b
    ld l, a                                       ; $5de8: $6f
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    jr nc, @+$04                                  ; $5deb: $30 $02

    ld [$f701], sp                                ; $5ded: $08 $01 $f7
    ld [bc], a                                    ; $5df0: $02
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    adc $01                                       ; $5df3: $ce $01
    nop                                           ; $5df5: $00
    jr nz, @+$01                                  ; $5df6: $20 $ff

    inc bc                                        ; $5df8: $03
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    jr nz, jr_0b8_5d98                            ; $5dfc: $20 $9a

    ld [hl], a                                    ; $5dfe: $77
    ld b, $35                                     ; $5dff: $06 $35

Call_0b8_5e01:
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    sub $02                                       ; $5e03: $d6 $02
    ld [$bd09], sp                                ; $5e05: $08 $09 $bd
    inc bc                                        ; $5e08: $03
    ld b, e                                       ; $5e09: $43
    ld [$22b8], sp                                ; $5e0a: $08 $b8 $22
    cp l                                          ; $5e0d: $bd
    ld [hl], a                                    ; $5e0e: $77
    xor h                                         ; $5e0f: $ac
    add hl, sp                                    ; $5e10: $39
    ld b, d                                       ; $5e11: $42
    inc b                                         ; $5e12: $04
    jr nc, jr_0b8_5e57                            ; $5e13: $30 $42

    jr z, jr_0b8_5e38                             ; $5e15: $28 $21

    jr jr_0b8_5e7c                                ; $5e17: $18 $63

    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    ld d, c                                       ; $5e1b: $51
    ld b, [hl]                                    ; $5e1c: $46
    jr z, @+$03                                   ; $5e1d: $28 $01

    jr jr_0b8_5e84                                ; $5e1f: $18 $63

    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    rst $28                                       ; $5e23: $ef
    ld bc, $037b                                  ; $5e24: $01 $7b $03
    rlca                                          ; $5e27: $07
    ld bc, $0000                                  ; $5e28: $01 $00 $00
    nop                                           ; $5e2b: $00
    jr nz, jr_0b8_5ea9                            ; $5e2c: $20 $7b

    inc bc                                        ; $5e2e: $03
    rlca                                          ; $5e2f: $07
    ld bc, $2000                                  ; $5e30: $01 $00 $20
    cp b                                          ; $5e33: $b8
    ld [hl+], a                                   ; $5e34: $22
    cp l                                          ; $5e35: $bd
    ld [hl], a                                    ; $5e36: $77
    xor h                                         ; $5e37: $ac

jr_0b8_5e38:
    add hl, sp                                    ; $5e38: $39
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    ld e, c                                       ; $5e3b: $59
    rlca                                          ; $5e3c: $07
    rst $38                                       ; $5e3d: $ff
    ld a, a                                       ; $5e3e: $7f
    nop                                           ; $5e3f: $00
    jr nz, jr_0b8_5e42                            ; $5e40: $20 $00

jr_0b8_5e42:
    nop                                           ; $5e42: $00
    jr nc, @+$44                                  ; $5e43: $30 $42

    db $dd                                        ; $5e45: $dd
    ld [hl], a                                    ; $5e46: $77
    ld c, c                                       ; $5e47: $49
    dec h                                         ; $5e48: $25
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rst $38                                       ; $5e4b: $ff
    ld a, a                                       ; $5e4c: $7f
    ld a, e                                       ; $5e4d: $7b
    inc bc                                        ; $5e4e: $03
    rlca                                          ; $5e4f: $07
    ld bc, $0000                                  ; $5e50: $01 $00 $00
    rst $38                                       ; $5e53: $ff
    ld a, a                                       ; $5e54: $7f
    ld a, e                                       ; $5e55: $7b
    inc bc                                        ; $5e56: $03

jr_0b8_5e57:
    rlca                                          ; $5e57: $07
    ld bc, $0000                                  ; $5e58: $01 $00 $00
    rst $38                                       ; $5e5b: $ff
    ld a, a                                       ; $5e5c: $7f
    nop                                           ; $5e5d: $00
    jr nz, @+$09                                  ; $5e5e: $20 $07

    ld bc, $2000                                  ; $5e60: $01 $00 $20
    rst $38                                       ; $5e63: $ff
    ld a, a                                       ; $5e64: $7f
    nop                                           ; $5e65: $00
    jr nz, jr_0b8_5e6f                            ; $5e66: $20 $07

    ld bc, $2000                                  ; $5e68: $01 $00 $20
    jr nc, @+$44                                  ; $5e6b: $30 $42

    db $dd                                        ; $5e6d: $dd
    ld [hl], a                                    ; $5e6e: $77

jr_0b8_5e6f:
    ld c, c                                       ; $5e6f: $49
    dec h                                         ; $5e70: $25
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    rst $38                                       ; $5e73: $ff
    ld a, a                                       ; $5e74: $7f
    nop                                           ; $5e75: $00
    jr nz, jr_0b8_5ec1                            ; $5e76: $20 $49

    dec h                                         ; $5e78: $25
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff

jr_0b8_5e7c:
    ld a, a                                       ; $5e7c: $7f
    nop                                           ; $5e7d: $00
    jr nz, jr_0b8_5ec9                            ; $5e7e: $20 $49

    dec h                                         ; $5e80: $25
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00

jr_0b8_5e84:
    jr nz, jr_0b8_5e86                            ; $5e84: $20 $00

jr_0b8_5e86:
    jr nz, @+$09                                  ; $5e86: $20 $07

    ld bc, $0000                                  ; $5e88: $01 $00 $00
    nop                                           ; $5e8b: $00
    jr nz, jr_0b8_5e8e                            ; $5e8c: $20 $00

jr_0b8_5e8e:
    jr nz, @+$09                                  ; $5e8e: $20 $07

    ld bc, $0000                                  ; $5e90: $01 $00 $00
    nop                                           ; $5e93: $00
    jr nz, jr_0b8_5e96                            ; $5e94: $20 $00

jr_0b8_5e96:
    jr nz, @+$09                                  ; $5e96: $20 $07

    ld bc, $2000                                  ; $5e98: $01 $00 $20
    nop                                           ; $5e9b: $00
    jr nz, jr_0b8_5e9e                            ; $5e9c: $20 $00

jr_0b8_5e9e:
    jr nz, @+$09                                  ; $5e9e: $20 $07

    ld bc, $2000                                  ; $5ea0: $01 $00 $20
    nop                                           ; $5ea3: $00
    jr nz, jr_0b8_5ea6                            ; $5ea4: $20 $00

jr_0b8_5ea6:
    jr nz, jr_0b8_5e96                            ; $5ea6: $20 $ee

    dec c                                         ; $5ea8: $0d

jr_0b8_5ea9:
    nop                                           ; $5ea9: $00
    jr nz, jr_0b8_5eac                            ; $5eaa: $20 $00

jr_0b8_5eac:
    jr nz, jr_0b8_5eae                            ; $5eac: $20 $00

jr_0b8_5eae:
    jr nz, jr_0b8_5e9e                            ; $5eae: $20 $ee

    dec c                                         ; $5eb0: $0d
    nop                                           ; $5eb1: $00
    jr nz, jr_0b8_5eb4                            ; $5eb2: $20 $00

jr_0b8_5eb4:
    jr nz, jr_0b8_5eb6                            ; $5eb4: $20 $00

jr_0b8_5eb6:
    jr nz, jr_0b8_5ea6                            ; $5eb6: $20 $ee

    dec c                                         ; $5eb8: $0d
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    jr nz, jr_0b8_5e42                            ; $5ebc: $20 $84

jr_0b8_5ebe:
    db $10                                        ; $5ebe: $10
    and l                                         ; $5ebf: $a5
    inc d                                         ; $5ec0: $14

jr_0b8_5ec1:
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00

jr_0b8_5ec3:
    rst $30                                       ; $5ec3: $f7
    ld a, [hl+]                                   ; $5ec4: $2a
    nop                                           ; $5ec5: $00
    jr nz, jr_0b8_5eae                            ; $5ec6: $20 $e6

    inc c                                         ; $5ec8: $0c

jr_0b8_5ec9:
    nop                                           ; $5ec9: $00
    jr nz, jr_0b8_5ec3                            ; $5eca: $20 $f7

    ld a, [hl+]                                   ; $5ecc: $2a
    nop                                           ; $5ecd: $00

jr_0b8_5ece:
    jr nz, jr_0b8_5eb6                            ; $5ece: $20 $e6

    inc c                                         ; $5ed0: $0c
    nop                                           ; $5ed1: $00
    jr nz, @-$07                                  ; $5ed2: $20 $f7

    ld a, [hl+]                                   ; $5ed4: $2a
    nop                                           ; $5ed5: $00

jr_0b8_5ed6:
    jr nz, jr_0b8_5ebe                            ; $5ed6: $20 $e6

    inc c                                         ; $5ed8: $0c
    nop                                           ; $5ed9: $00
    jr nz, jr_0b8_5edc                            ; $5eda: $20 $00

jr_0b8_5edc:
    jr nz, jr_0b8_5ede                            ; $5edc: $20 $00

jr_0b8_5ede:
    jr nz, jr_0b8_5ece                            ; $5ede: $20 $ee

    dec c                                         ; $5ee0: $0d
    nop                                           ; $5ee1: $00
    jr nz, jr_0b8_5ee4                            ; $5ee2: $20 $00

jr_0b8_5ee4:
    jr nz, jr_0b8_5ee6                            ; $5ee4: $20 $00

jr_0b8_5ee6:
    jr nz, jr_0b8_5ed6                            ; $5ee6: $20 $ee

    dec c                                         ; $5ee8: $0d
    nop                                           ; $5ee9: $00
    jr nz, jr_0b8_5eec                            ; $5eea: $20 $00

jr_0b8_5eec:
    jr nz, jr_0b8_5eee                            ; $5eec: $20 $00

jr_0b8_5eee:
    jr nz, jr_0b8_5ede                            ; $5eee: $20 $ee

    dec c                                         ; $5ef0: $0d

jr_0b8_5ef1:
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    sub h                                         ; $5ef3: $94
    ld a, [bc]                                    ; $5ef4: $0a
    rst $38                                       ; $5ef5: $ff
    rla                                           ; $5ef6: $17
    ld [$0005], sp                                ; $5ef7: $08 $05 $00
    nop                                           ; $5efa: $00
    rst $38                                       ; $5efb: $ff
    rra                                           ; $5efc: $1f
    nop                                           ; $5efd: $00
    jr nz, @+$01                                  ; $5efe: $20 $ff

    ld b, a                                       ; $5f00: $47
    nop                                           ; $5f01: $00
    jr nz, @+$01                                  ; $5f02: $20 $ff

    rra                                           ; $5f04: $1f
    nop                                           ; $5f05: $00

jr_0b8_5f06:
    jr nz, @+$01                                  ; $5f06: $20 $ff

    ld b, a                                       ; $5f08: $47
    nop                                           ; $5f09: $00
    jr nz, @+$01                                  ; $5f0a: $20 $ff

    rra                                           ; $5f0c: $1f
    nop                                           ; $5f0d: $00

jr_0b8_5f0e:
    jr nz, @+$01                                  ; $5f0e: $20 $ff

    ld b, a                                       ; $5f10: $47
    nop                                           ; $5f11: $00
    jr nz, jr_0b8_5f14                            ; $5f12: $20 $00

jr_0b8_5f14:
    jr nz, jr_0b8_5f16                            ; $5f14: $20 $00

jr_0b8_5f16:
    jr nz, jr_0b8_5f06                            ; $5f16: $20 $ee

    dec c                                         ; $5f18: $0d
    nop                                           ; $5f19: $00
    jr nz, jr_0b8_5f1c                            ; $5f1a: $20 $00

jr_0b8_5f1c:
    jr nz, jr_0b8_5f1e                            ; $5f1c: $20 $00

jr_0b8_5f1e:
    jr nz, jr_0b8_5f0e                            ; $5f1e: $20 $ee

    dec c                                         ; $5f20: $0d
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    rst $38                                       ; $5f23: $ff
    ld a, a                                       ; $5f24: $7f
    nop                                           ; $5f25: $00
    jr nz, jr_0b8_5f16                            ; $5f26: $20 $ee

    dec c                                         ; $5f28: $0d

jr_0b8_5f29:
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    db $10                                        ; $5f2b: $10
    ld a, [bc]                                    ; $5f2c: $0a
    ld e, d                                       ; $5f2d: $5a
    rrca                                          ; $5f2e: $0f
    sbc $13                                       ; $5f2f: $de $13

jr_0b8_5f31:
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    or l                                          ; $5f33: $b5
    ld c, $bd                                     ; $5f34: $0e $bd
    inc de                                        ; $5f36: $13
    nop                                           ; $5f37: $00
    jr nz, jr_0b8_5f3a                            ; $5f38: $20 $00

jr_0b8_5f3a:
    jr nz, jr_0b8_5ef1                            ; $5f3a: $20 $b5

    ld c, $bd                                     ; $5f3c: $0e $bd

jr_0b8_5f3e:
    inc de                                        ; $5f3e: $13
    nop                                           ; $5f3f: $00
    jr nz, jr_0b8_5f42                            ; $5f40: $20 $00

jr_0b8_5f42:
    jr nz, @-$49                                  ; $5f42: $20 $b5

    ld c, $bd                                     ; $5f44: $0e $bd

jr_0b8_5f46:
    inc de                                        ; $5f46: $13
    nop                                           ; $5f47: $00
    jr nz, jr_0b8_5f4a                            ; $5f48: $20 $00

jr_0b8_5f4a:
    jr nz, @+$01                                  ; $5f4a: $20 $ff

    ld a, a                                       ; $5f4c: $7f
    nop                                           ; $5f4d: $00
    jr nz, jr_0b8_5f3e                            ; $5f4e: $20 $ee

    dec c                                         ; $5f50: $0d
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    rst $38                                       ; $5f53: $ff
    rla                                           ; $5f54: $17
    nop                                           ; $5f55: $00
    jr nz, jr_0b8_5f46                            ; $5f56: $20 $ee

    dec c                                         ; $5f58: $0d
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    ld a, a                                       ; $5f5c: $7f
    call Call_000_0005                            ; $5f5d: $cd $05 $00
    jr nz, jr_0b8_5fa3                            ; $5f60: $20 $41

    nop                                           ; $5f62: $00
    adc [hl]                                      ; $5f63: $8e
    ld c, $68                                     ; $5f64: $0e $68
    ld bc, $0f7b                                  ; $5f66: $01 $7b $0f
    nop                                           ; $5f69: $00
    inc c                                         ; $5f6a: $0c
    or l                                          ; $5f6b: $b5
    ld c, $e8                                     ; $5f6c: $0e $e8
    inc b                                         ; $5f6e: $04
    rst $38                                       ; $5f6f: $ff
    dec de                                        ; $5f70: $1b
    nop                                           ; $5f71: $00
    jr nz, jr_0b8_5f29                            ; $5f72: $20 $b5

    ld c, $e8                                     ; $5f74: $0e $e8
    inc b                                         ; $5f76: $04
    rst $38                                       ; $5f77: $ff
    dec de                                        ; $5f78: $1b
    nop                                           ; $5f79: $00
    jr nz, jr_0b8_5f31                            ; $5f7a: $20 $b5

    ld c, $e8                                     ; $5f7c: $0e $e8
    inc b                                         ; $5f7e: $04
    rst $38                                       ; $5f7f: $ff
    dec de                                        ; $5f80: $1b
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    adc h                                         ; $5f83: $8c
    dec b                                         ; $5f84: $05
    nop                                           ; $5f85: $00
    jr nz, jr_0b8_5f88                            ; $5f86: $20 $00

jr_0b8_5f88:
    jr nz, jr_0b8_5f8a                            ; $5f88: $20 $00

jr_0b8_5f8a:
    nop                                           ; $5f8a: $00
    inc e                                         ; $5f8b: $1c
    inc de                                        ; $5f8c: $13
    nop                                           ; $5f8d: $00
    jr nz, @-$3f                                  ; $5f8e: $20 $bf

    rla                                           ; $5f90: $17
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    rst $38                                       ; $5f93: $ff
    ld a, a                                       ; $5f94: $7f
    nop                                           ; $5f95: $00
    jr nz, @-$3f                                  ; $5f96: $20 $bf

    rla                                           ; $5f98: $17
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    ld b, d                                       ; $5f9b: $42
    ld bc, $05c5                                  ; $5f9c: $01 $c5 $05
    add c                                         ; $5f9f: $81
    nop                                           ; $5fa0: $00

jr_0b8_5fa1:
    ld b, d                                       ; $5fa1: $42
    inc b                                         ; $5fa2: $04

jr_0b8_5fa3:
    dec l                                         ; $5fa3: $2d
    cpl                                           ; $5fa4: $2f
    rst $38                                       ; $5fa5: $ff
    ld a, a                                       ; $5fa6: $7f
    ld e, d                                       ; $5fa7: $5a
    dec bc                                        ; $5fa8: $0b
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    jr nz, @+$01                                  ; $5fac: $20 $ff

    ld a, a                                       ; $5fae: $7f
    ld e, d                                       ; $5faf: $5a
    dec bc                                        ; $5fb0: $0b
    nop                                           ; $5fb1: $00
    jr nz, jr_0b8_5fb4                            ; $5fb2: $20 $00

jr_0b8_5fb4:
    jr nz, @+$01                                  ; $5fb4: $20 $ff

    ld a, a                                       ; $5fb6: $7f
    ld e, d                                       ; $5fb7: $5a
    dec bc                                        ; $5fb8: $0b
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    ld a, d                                       ; $5fbb: $7a
    inc de                                        ; $5fbc: $13
    nop                                           ; $5fbd: $00
    jr nz, @+$01                                  ; $5fbe: $20 $ff

    inc de                                        ; $5fc0: $13
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    ldh a, [$09]                                  ; $5fc3: $f0 $09
    nop                                           ; $5fc5: $00
    jr nz, jr_0b8_5fa1                            ; $5fc6: $20 $d9

    ld c, $00                                     ; $5fc8: $0e $00
    nop                                           ; $5fca: $00
    sbc $17                                       ; $5fcb: $de $17
    rst $38                                       ; $5fcd: $ff
    ld a, a                                       ; $5fce: $7f
    adc $09                                       ; $5fcf: $ce $09
    jr nz, jr_0b8_5fd3                            ; $5fd1: $20 $00

jr_0b8_5fd3:
    sbc h                                         ; $5fd3: $9c
    inc de                                        ; $5fd4: $13
    and e                                         ; $5fd5: $a3
    ld bc, $09ce                                  ; $5fd6: $01 $ce $09
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    jr nc, jr_0b8_6010                            ; $5fdb: $30 $33

    rst $38                                       ; $5fdd: $ff
    ld a, a                                       ; $5fde: $7f
    ld c, b                                       ; $5fdf: $48
    ld [de], a                                    ; $5fe0: $12
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    rst $38                                       ; $5fe3: $ff
    ld a, a                                       ; $5fe4: $7f
    nop                                           ; $5fe5: $00
    jr nz, jr_0b8_6030                            ; $5fe6: $20 $48

    ld [de], a                                    ; $5fe8: $12
    nop                                           ; $5fe9: $00
    jr nz, @+$01                                  ; $5fea: $20 $ff

    ld a, a                                       ; $5fec: $7f
    nop                                           ; $5fed: $00
    jr nz, jr_0b8_6038                            ; $5fee: $20 $48

    ld [de], a                                    ; $5ff0: $12
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    ld l, e                                       ; $5ff3: $6b
    ld de, $2000                                  ; $5ff4: $11 $00 $20
    xor $09                                       ; $5ff7: $ee $09
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    sub [hl]                                      ; $5ffb: $96
    ld c, $ff                                     ; $5ffc: $0e $ff
    ld a, a                                       ; $5ffe: $7f
    cp [hl]                                       ; $5fff: $be
    rla                                           ; $6000: $17
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    rst $28                                       ; $6003: $ef
    ld bc, $0108                                  ; $6004: $01 $08 $01
    sbc h                                         ; $6007: $9c
    inc de                                        ; $6008: $13
    pop bc                                        ; $6009: $c1
    nop                                           ; $600a: $00
    ld d, e                                       ; $600b: $53
    ld a, [bc]                                    ; $600c: $0a
    cp l                                          ; $600d: $bd
    inc de                                        ; $600e: $13

jr_0b8_600f:
    rst $20                                       ; $600f: $e7

jr_0b8_6010:
    dec b                                         ; $6010: $05
    jr nz, jr_0b8_6013                            ; $6011: $20 $00

jr_0b8_6013:
    adc [hl]                                      ; $6013: $8e
    ld a, [hl+]                                   ; $6014: $2a
    rst $30                                       ; $6015: $f7
    scf                                           ; $6016: $37
    add sp, $05                                   ; $6017: $e8 $05
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    jp nc, $ff41                                  ; $601b: $d2 $41 $ff

    ld a, a                                       ; $601e: $7f
    nop                                           ; $601f: $00
    jr nz, jr_0b8_6022                            ; $6020: $20 $00

jr_0b8_6022:
    jr nz, @-$2c                                  ; $6022: $20 $d2

    ld b, c                                       ; $6024: $41
    rst $38                                       ; $6025: $ff
    ld a, a                                       ; $6026: $7f
    nop                                           ; $6027: $00
    jr nz, jr_0b8_602a                            ; $6028: $20 $00

jr_0b8_602a:
    inc d                                         ; $602a: $14
    ld d, d                                       ; $602b: $52
    ld c, $9c                                     ; $602c: $0e $9c
    inc hl                                        ; $602e: $23
    rst $38                                       ; $602f: $ff

jr_0b8_6030:
    ld b, e                                       ; $6030: $43
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    ld l, a                                       ; $6033: $6f
    add hl, bc                                    ; $6034: $09
    ld a, [$000e]                                 ; $6035: $fa $0e $00

jr_0b8_6038:
    ld bc, $0000                                  ; $6038: $01 $00 $00
    ld bc, $8301                                  ; $603b: $01 $01 $83
    ld bc, $0060                                  ; $603e: $01 $60 $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    sub a                                         ; $6043: $97
    ld a, [bc]                                    ; $6044: $0a
    ld h, a                                       ; $6045: $67
    ld bc, $13df                                  ; $6046: $01 $df $13

jr_0b8_6049:
    add c                                         ; $6049: $81
    nop                                           ; $604a: $00
    ld d, [hl]                                    ; $604b: $56
    daa                                           ; $604c: $27
    adc c                                         ; $604d: $89
    dec c                                         ; $604e: $0d
    rst $38                                       ; $604f: $ff
    ld c, e                                       ; $6050: $4b
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    rst $38                                       ; $6053: $ff
    ld a, a                                       ; $6054: $7f
    or c                                          ; $6055: $b1
    dec a                                         ; $6056: $3d
    pop de                                        ; $6057: $d1
    dec a                                         ; $6058: $3d
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    jr nz, jr_0b8_600f                            ; $605c: $20 $b1

    dec a                                         ; $605e: $3d
    pop de                                        ; $605f: $d1
    dec a                                         ; $6060: $3d
    ld hl, $ce00                                  ; $6061: $21 $00 $ce
    ld bc, $177b                                  ; $6064: $01 $7b $17
    nop                                           ; $6067: $00
    inc e                                         ; $6068: $1c
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    sub c                                         ; $606b: $91
    add hl, bc                                    ; $606c: $09
    jr jr_0b8_607d                                ; $606d: $18 $0e

    ld b, b                                       ; $606f: $40
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    add e                                         ; $6073: $83
    ld bc, $00c0                                  ; $6074: $01 $c0 $00
    jp $2101                                      ; $6077: $c3 $01 $21


    inc b                                         ; $607a: $04
    dec sp                                        ; $607b: $3b
    ld l, a                                       ; $607c: $6f

jr_0b8_607d:
    ld h, c                                       ; $607d: $61
    ld bc, $0204                                  ; $607e: $01 $04 $02
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    adc l                                         ; $6083: $8d
    ld bc, $0b5b                                  ; $6084: $01 $5b $0b
    or c                                          ; $6087: $b1
    dec a                                         ; $6088: $3d
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    or c                                          ; $608b: $b1
    dec a                                         ; $608c: $3d
    rst $38                                       ; $608d: $ff
    ld a, a                                       ; $608e: $7f
    or c                                          ; $608f: $b1
    dec a                                         ; $6090: $3d
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    ld a, a                                       ; $6094: $7f
    nop                                           ; $6095: $00
    jr nz, jr_0b8_6049                            ; $6096: $20 $b1

    dec a                                         ; $6098: $3d
    ld hl, $cf00                                  ; $6099: $21 $00 $cf
    dec b                                         ; $609c: $05
    ld e, d                                       ; $609d: $5a
    ld l, e                                       ; $609e: $6b
    nop                                           ; $609f: $00
    jr nz, jr_0b8_60a2                            ; $60a0: $20 $00

jr_0b8_60a2:
    nop                                           ; $60a2: $00
    inc c                                         ; $60a3: $0c
    dec b                                         ; $60a4: $05
    ld [hl], d                                    ; $60a5: $72
    ld a, [bc]                                    ; $60a6: $0a
    inc hl                                        ; $60a7: $23
    ld bc, $0000                                  ; $60a8: $01 $00 $00
    add hl, bc                                    ; $60ab: $09
    dec l                                         ; $60ac: $2d
    rst $28                                       ; $60ad: $ef
    ld b, c                                       ; $60ae: $41
    add h                                         ; $60af: $84
    inc d                                         ; $60b0: $14
    ld b, d                                       ; $60b1: $42
    ld [$56b6], sp                                ; $60b2: $08 $b6 $56
    dec b                                         ; $60b5: $05
    ld b, $2a                                     ; $60b6: $06 $2a
    add hl, hl                                    ; $60b8: $29
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    adc [hl]                                      ; $60bb: $8e
    dec [hl]                                      ; $60bc: $35
    db $e3                                        ; $60bd: $e3
    ld bc, $6efa                                  ; $60be: $01 $fa $6e
    sub b                                         ; $60c1: $90
    add hl, sp                                    ; $60c2: $39
    sub c                                         ; $60c3: $91
    dec a                                         ; $60c4: $3d
    db $e3                                        ; $60c5: $e3
    ld bc, $6efa                                  ; $60c6: $01 $fa $6e
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    rst $38                                       ; $60cb: $ff
    ld a, a                                       ; $60cc: $7f
    sub b                                         ; $60cd: $90
    add hl, sp                                    ; $60ce: $39
    nop                                           ; $60cf: $00
    jr nz, jr_0b8_60d2                            ; $60d0: $20 $00

jr_0b8_60d2:
    inc b                                         ; $60d2: $04
    rst $38                                       ; $60d3: $ff
    rla                                           ; $60d4: $17
    rst $38                                       ; $60d5: $ff
    ld a, a                                       ; $60d6: $7f
    db $10                                        ; $60d7: $10
    ld a, [bc]                                    ; $60d8: $0a
    nop                                           ; $60d9: $00
    nop                                           ; $60da: $00
    and e                                         ; $60db: $a3
    ld bc, $09ce                                  ; $60dc: $01 $ce $09
    ld [hl], e                                    ; $60df: $73
    dec c                                         ; $60e0: $0d
    jr nz, jr_0b8_60e3                            ; $60e1: $20 $00

jr_0b8_60e3:
    ld d, e                                       ; $60e3: $53
    add hl, de                                    ; $60e4: $19
    sbc e                                         ; $60e5: $9b
    ld b, [hl]                                    ; $60e6: $46
    rlca                                          ; $60e7: $07
    dec h                                         ; $60e8: $25
    jr nz, jr_0b8_60ef                            ; $60e9: $20 $04

    ld sp, $2946                                  ; $60eb: $31 $46 $29
    dec h                                         ; $60ee: $25

jr_0b8_60ef:
    ld e, e                                       ; $60ef: $5b
    ld [hl], e                                    ; $60f0: $73
    add c                                         ; $60f1: $81
    inc b                                         ; $60f2: $04
    ld c, e                                       ; $60f3: $4b
    dec l                                         ; $60f4: $2d
    rst $10                                       ; $60f5: $d7
    ld e, [hl]                                    ; $60f6: $5e
    ret                                           ; $60f7: $c9


    ld [de], a                                    ; $60f8: $12
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    ld [hl], b                                    ; $60fb: $70
    add hl, sp                                    ; $60fc: $39
    add [hl]                                      ; $60fd: $86
    ld de, $12c9                                  ; $60fe: $11 $c9 $12
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    ld [hl], b                                    ; $6103: $70
    add hl, sp                                    ; $6104: $39
    rst $38                                       ; $6105: $ff
    ld a, a                                       ; $6106: $7f
    nop                                           ; $6107: $00
    jr nz, jr_0b8_610a                            ; $6108: $20 $00

jr_0b8_610a:
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    ld a, a                                       ; $610c: $7f
    ld d, b                                       ; $610d: $50
    add hl, sp                                    ; $610e: $39
    ld d, d                                       ; $610f: $52

Call_0b8_6110:
    ld a, [bc]                                    ; $6110: $0a
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    inc c                                         ; $6113: $0c
    add hl, bc                                    ; $6114: $09
    ld d, b                                       ; $6115: $50
    add hl, sp                                    ; $6116: $39
    ld [hl], d                                    ; $6117: $72
    dec c                                         ; $6118: $0d
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    ld hl, sp+$2d                                 ; $611b: $f8 $2d
    ld a, c                                       ; $611d: $79
    ld [hl], e                                    ; $611e: $73
    and a                                         ; $611f: $a7
    stop                                          ; $6120: $10 $00
    nop                                           ; $6122: $00
    or d                                          ; $6123: $b2
    ld e, [hl]                                    ; $6124: $5e
    xor c                                         ; $6125: $a9
    inc c                                         ; $6126: $0c
    rst $38                                       ; $6127: $ff
    ld a, a                                       ; $6128: $7f
    ld b, c                                       ; $6129: $41
    inc b                                         ; $612a: $04
    jp hl                                         ; $612b: $e9


    ld [de], a                                    ; $612c: $12
    cp a                                          ; $612d: $bf
    ld l, e                                       ; $612e: $6b
    ld de, $003e                                  ; $612f: $11 $3e $00
    nop                                           ; $6132: $00
    or b                                          ; $6133: $b0
    cpl                                           ; $6134: $2f
    ld c, b                                       ; $6135: $48
    ld [de], a                                    ; $6136: $12
    ld c, a                                       ; $6137: $4f
    dec [hl]                                      ; $6138: $35
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    ld c, a                                       ; $613b: $4f
    dec [hl]                                      ; $613c: $35
    rst $38                                       ; $613d: $ff
    ld a, a                                       ; $613e: $7f
    nop                                           ; $613f: $00
    jr nz, jr_0b8_6142                            ; $6140: $20 $00

jr_0b8_6142:
    nop                                           ; $6142: $00
    rst $38                                       ; $6143: $ff
    ld a, a                                       ; $6144: $7f
    cpl                                           ; $6145: $2f
    dec [hl]                                      ; $6146: $35
    nop                                           ; $6147: $00
    jr nz, jr_0b8_614a                            ; $6148: $20 $00

jr_0b8_614a:
    nop                                           ; $614a: $00
    ld c, $09                                     ; $614b: $0e $09
    ld l, $35                                     ; $614d: $2e $35
    ld [hl], d                                    ; $614f: $72
    dec c                                         ; $6150: $0d
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    xor l                                         ; $6153: $ad
    dec [hl]                                      ; $6154: $35
    cp $7f                                        ; $6155: $fe $7f
    or l                                          ; $6157: $b5
    ld d, [hl]                                    ; $6158: $56
    jr nz, jr_0b8_6163                            ; $6159: $20 $08

    ret nc                                        ; $615b: $d0

    ld l, d                                       ; $615c: $6a
    or d                                          ; $615d: $b2
    dec l                                         ; $615e: $2d
    rst $38                                       ; $615f: $ff
    ld [hl], e                                    ; $6160: $73
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00

jr_0b8_6163:
    ld hl, sp+$31                                 ; $6163: $f8 $31
    cp l                                          ; $6165: $bd
    ld a, e                                       ; $6166: $7b
    call nz, RST_18                               ; $6167: $c4 $18 $00
    nop                                           ; $616a: $00
    dec bc                                        ; $616b: $0b
    inc hl                                        ; $616c: $23
    ld d, b                                       ; $616d: $50
    dec [hl]                                      ; $616e: $35
    db $e3                                        ; $616f: $e3
    inc b                                         ; $6170: $04
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    cpl                                           ; $6173: $2f
    dec [hl]                                      ; $6174: $35
    rst $38                                       ; $6175: $ff
    ld a, a                                       ; $6176: $7f
    nop                                           ; $6177: $00
    jr nz, jr_0b8_617b                            ; $6178: $20 $01

    nop                                           ; $617a: $00

jr_0b8_617b:
    rst $38                                       ; $617b: $ff
    ld a, a                                       ; $617c: $7f
    cpl                                           ; $617d: $2f
    dec [hl]                                      ; $617e: $35
    nop                                           ; $617f: $00
    jr nz, jr_0b8_6182                            ; $6180: $20 $00

jr_0b8_6182:
    nop                                           ; $6182: $00
    ld [hl], c                                    ; $6183: $71
    ld sp, $5b5f                                  ; $6184: $31 $5f $5b
    xor b                                         ; $6187: $a8
    inc c                                         ; $6188: $0c
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    dec hl                                        ; $618b: $2b
    dec l                                         ; $618c: $2d
    ld d, d                                       ; $618d: $52
    ld c, [hl]                                    ; $618e: $4e
    and $20                                       ; $618f: $e6 $20
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    ldh a, [rPCM12]                               ; $6193: $f0 $76
    ld a, [hl]                                    ; $6195: $7e
    ld a, [hl-]                                   ; $6196: $3a
    pop bc                                        ; $6197: $c1
    jr nc, jr_0b8_619a                            ; $6198: $30 $00

jr_0b8_619a:
    nop                                           ; $619a: $00
    sub e                                         ; $619b: $93
    dec h                                         ; $619c: $25
    ld e, d                                       ; $619d: $5a
    ld l, a                                       ; $619e: $6f
    and $20                                       ; $619f: $e6 $20
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    push de                                       ; $61a3: $d5
    dec a                                         ; $61a4: $3d
    sbc c                                         ; $61a5: $99
    ld c, a                                       ; $61a6: $4f
    ld b, $12                                     ; $61a7: $06 $12
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    ld c, $31                                     ; $61ab: $0e $31
    rst $38                                       ; $61ad: $ff
    ld a, a                                       ; $61ae: $7f
    nop                                           ; $61af: $00
    jr nz, jr_0b8_61b2                            ; $61b0: $20 $00

jr_0b8_61b2:
    inc c                                         ; $61b2: $0c
    cp $29                                        ; $61b3: $fe $29
    rst $38                                       ; $61b5: $ff
    ld a, a                                       ; $61b6: $7f
    call z, RST_18                                ; $61b7: $cc $18 $00
    nop                                           ; $61ba: $00
    jr c, jr_0b8_61f7                             ; $61bb: $38 $3a

    ccf                                           ; $61bd: $3f
    ld d, a                                       ; $61be: $57
    db $ed                                        ; $61bf: $ed
    jr nz, jr_0b8_6204                            ; $61c0: $20 $42

    ld [$4a52], sp                                ; $61c2: $08 $52 $4a
    dec c                                         ; $61c5: $0d
    dec l                                         ; $61c6: $2d
    ld a, e                                       ; $61c7: $7b
    ld l, a                                       ; $61c8: $6f
    ld hl, $3004                                  ; $61c9: $21 $04 $30
    ld c, d                                       ; $61cc: $4a
    ccf                                           ; $61cd: $3f
    ld [hl-], a                                   ; $61ce: $32
    ld e, e                                       ; $61cf: $5b
    ld h, e                                       ; $61d0: $63
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    ld d, l                                       ; $61d3: $55
    ld c, d                                       ; $61d4: $4a
    xor $30                                       ; $61d5: $ee $30
    ld a, d                                       ; $61d7: $7a
    ld l, a                                       ; $61d8: $6f
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    or h                                          ; $61db: $b4
    dec l                                         ; $61dc: $2d
    ld e, h                                       ; $61dd: $5c
    ld c, a                                       ; $61de: $4f
    rlca                                          ; $61df: $07
    dec c                                         ; $61e0: $0d
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    xor a                                         ; $61e3: $af
    dec d                                         ; $61e4: $15
    push af                                       ; $61e5: $f5
    dec sp                                        ; $61e6: $3b
    nop                                           ; $61e7: $00
    jr nz, jr_0b8_61ea                            ; $61e8: $20 $00

jr_0b8_61ea:
    db $10                                        ; $61ea: $10
    ccf                                           ; $61eb: $3f
    ld l, $ff                                     ; $61ec: $2e $ff
    ld a, a                                       ; $61ee: $7f
    adc d                                         ; $61ef: $8a
    inc b                                         ; $61f0: $04
    ld b, b                                       ; $61f1: $40
    nop                                           ; $61f2: $00
    or [hl]                                       ; $61f3: $b6
    dec h                                         ; $61f4: $25
    dec e                                         ; $61f5: $1d
    ld c, a                                       ; $61f6: $4f

jr_0b8_61f7:
    xor h                                         ; $61f7: $ac
    ld [$0020], sp                                ; $61f8: $08 $20 $00
    or l                                          ; $61fb: $b5
    ld d, [hl]                                    ; $61fc: $56
    add hl, hl                                    ; $61fd: $29
    add hl, hl                                    ; $61fe: $29
    rst $38                                       ; $61ff: $ff
    ld a, a                                       ; $6200: $7f
    add $18                                       ; $6201: $c6 $18
    rst $30                                       ; $6203: $f7

jr_0b8_6204:
    ld e, [hl]                                    ; $6204: $5e
    adc h                                         ; $6205: $8c
    ld sp, $7bdc                                  ; $6206: $31 $dc $7b
    ld hl, $2e04                                  ; $6209: $21 $04 $2e
    dec l                                         ; $620c: $2d
    sub h                                         ; $620d: $94
    ld d, d                                       ; $620e: $52
    rst $38                                       ; $620f: $ff
    ld c, [hl]                                    ; $6210: $4e
    ld hl, $f500                                  ; $6211: $21 $00 $f5
    dec [hl]                                      ; $6214: $35
    adc [hl]                                      ; $6215: $8e
    dec e                                         ; $6216: $1d
    cp $4e                                        ; $6217: $fe $4e
    jr nz, jr_0b8_621b                            ; $6219: $20 $00

jr_0b8_621b:
    rrc l                                         ; $621b: $cb $0d
    cp b                                          ; $621d: $b8
    dec de                                        ; $621e: $1b
    nop                                           ; $621f: $00
    jr nz, jr_0b8_6224                            ; $6220: $20 $02

    nop                                           ; $6222: $00
    db $fd                                        ; $6223: $fd

jr_0b8_6224:
    add hl, hl                                    ; $6224: $29
    rst $38                                       ; $6225: $ff
    ld a, a                                       ; $6226: $7f
    nop                                           ; $6227: $00
    jr nz, jr_0b8_626b                            ; $6228: $20 $41

    nop                                           ; $622a: $00
    halt                                          ; $622b: $76
    dec h                                         ; $622c: $25
    rra                                           ; $622d: $1f
    ld d, e                                       ; $622e: $53
    db $eb                                        ; $622f: $eb
    jr jr_0b8_6294                                ; $6230: $18 $62

    nop                                           ; $6232: $00
    ld d, d                                       ; $6233: $52
    ld c, [hl]                                    ; $6234: $4e
    and e                                         ; $6235: $a3
    ld bc, $06f6                                  ; $6236: $01 $f6 $06
    dec h                                         ; $6239: $25
    inc b                                         ; $623a: $04
    ld d, c                                       ; $623b: $51
    ld c, d                                       ; $623c: $4a
    rst $38                                       ; $623d: $ff
    ld a, a                                       ; $623e: $7f
    add hl, bc                                    ; $623f: $09
    ld hl, $0000                                  ; $6240: $21 $00 $00
    jr nc, jr_0b8_627f                            ; $6243: $30 $3a

    dec a                                         ; $6245: $3d
    ld d, a                                       ; $6246: $57
    db $eb                                        ; $6247: $eb
    inc h                                         ; $6248: $24
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    sub l                                         ; $624b: $95
    ld hl, $469c                                  ; $624c: $21 $9c $46
    ld l, d                                       ; $624f: $6a
    ld de, $0020                                  ; $6250: $11 $20 $00
    ld [$9c09], a                                 ; $6253: $ea $09 $9c
    rrca                                          ; $6256: $0f
    nop                                           ; $6257: $00
    jr nz, jr_0b8_625a                            ; $6258: $20 $00

jr_0b8_625a:
    nop                                           ; $625a: $00
    dec sp                                        ; $625b: $3b
    ld [hl], $ff                                  ; $625c: $36 $ff
    ld a, a                                       ; $625e: $7f
    nop                                           ; $625f: $00
    jr nz, jr_0b8_6284                            ; $6260: $20 $22

    nop                                           ; $6262: $00
    sbc [hl]                                      ; $6263: $9e
    ld b, d                                       ; $6264: $42

jr_0b8_6265:
    ld c, $19                                     ; $6265: $0e $19
    sbc a                                         ; $6267: $9f
    ld e, a                                       ; $6268: $5f
    jr nz, jr_0b8_626b                            ; $6269: $20 $00

jr_0b8_626b:
    rst $38                                       ; $626b: $ff
    ld a, a                                       ; $626c: $7f
    push hl                                       ; $626d: $e5
    dec b                                         ; $626e: $05
    ld c, d                                       ; $626f: $4a
    add hl, hl                                    ; $6270: $29
    ld hl, $1004                                  ; $6271: $21 $04 $10
    ld b, d                                       ; $6274: $42
    db $dd                                        ; $6275: $dd
    ld a, e                                       ; $6276: $7b
    ld [$0021], sp                                ; $6277: $08 $21 $00
    nop                                           ; $627a: $00
    rst $30                                       ; $627b: $f7
    ld e, [hl]                                    ; $627c: $5e

jr_0b8_627d:
    rst $38                                       ; $627d: $ff
    dec sp                                        ; $627e: $3b

jr_0b8_627f:
    ld l, d                                       ; $627f: $6a
    dec d                                         ; $6280: $15
    ld bc, $ac00                                  ; $6281: $01 $00 $ac

jr_0b8_6284:
    inc l                                         ; $6284: $2c
    or h                                          ; $6285: $b4
    dec d                                         ; $6286: $15
    cp a                                          ; $6287: $bf
    ld b, [hl]                                    ; $6288: $46
    nop                                           ; $6289: $00
    inc e                                         ; $628a: $1c
    ld d, e                                       ; $628b: $53
    ld b, $23                                     ; $628c: $06 $23
    add hl, bc                                    ; $628e: $09
    rst $38                                       ; $628f: $ff
    inc de                                        ; $6290: $13
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    rst $38                                       ; $6293: $ff

jr_0b8_6294:
    ld a, a                                       ; $6294: $7f
    nop                                           ; $6295: $00
    jr nz, jr_0b8_62e2                            ; $6296: $20 $4a

    add hl, hl                                    ; $6298: $29
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    ld sp, $a80a                                  ; $629b: $31 $0a $a8
    nop                                           ; $629e: $00
    ld a, d                                       ; $629f: $7a
    add hl, de                                    ; $62a0: $19
    ld b, c                                       ; $62a1: $41
    nop                                           ; $62a2: $00
    sub h                                         ; $62a3: $94
    ld e, d                                       ; $62a4: $5a
    ld b, a                                       ; $62a5: $47
    ld c, $ff                                     ; $62a6: $0e $ff
    ld a, a                                       ; $62a8: $7f
    ld b, d                                       ; $62a9: $42
    ld [$0e93], sp                                ; $62aa: $08 $93 $0e
    cp [hl]                                       ; $62ad: $be
    ld a, a                                       ; $62ae: $7f
    xor l                                         ; $62af: $ad
    add hl, sp                                    ; $62b0: $39
    jr nz, jr_0b8_62b3                            ; $62b1: $20 $00

jr_0b8_62b3:
    rst $38                                       ; $62b3: $ff
    dec de                                        ; $62b4: $1b
    ld h, d                                       ; $62b5: $62
    ld bc, $0a46                                  ; $62b6: $01 $46 $0a
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    or $0a                                        ; $62bb: $f6 $0a
    adc h                                         ; $62bd: $8c
    jr z, jr_0b8_627d                             ; $62be: $28 $bd

    inc de                                        ; $62c0: $13
    ld b, d                                       ; $62c1: $42
    nop                                           ; $62c2: $00
    rst $28                                       ; $62c3: $ef
    add hl, bc                                    ; $62c4: $09
    nop                                           ; $62c5: $00
    jr nz, jr_0b8_6265                            ; $62c6: $20 $9d

    rrca                                          ; $62c8: $0f
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    rst $38                                       ; $62cb: $ff
    ld a, a                                       ; $62cc: $7f
    nop                                           ; $62cd: $00
    jr nz, @+$01                                  ; $62ce: $20 $ff

jr_0b8_62d0:
    ld a, a                                       ; $62d0: $7f
    ld b, b                                       ; $62d1: $40
    nop                                           ; $62d2: $00
    jr c, @+$25                                   ; $62d3: $38 $23

    jr z, jr_0b8_62dc                             ; $62d5: $28 $05

    rst $38                                       ; $62d7: $ff
    dec hl                                        ; $62d8: $2b
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    ld l, b                                       ; $62db: $68

jr_0b8_62dc:
    ld [de], a                                    ; $62dc: $12
    jp z, $841a                                   ; $62dd: $ca $1a $84

    nop                                           ; $62e0: $00
    ld h, e                                       ; $62e1: $63

jr_0b8_62e2:
    nop                                           ; $62e2: $00
    ld [de], a                                    ; $62e3: $12
    ld b, $18                                     ; $62e4: $06 $18
    rlca                                          ; $62e6: $07
    cp $23                                        ; $62e7: $fe $23
    ld b, b                                       ; $62e9: $40
    nop                                           ; $62ea: $00
    and [hl]                                      ; $62eb: $a6
    dec b                                         ; $62ec: $05
    ld e, d                                       ; $62ed: $5a
    rrca                                          ; $62ee: $0f
    ld h, a                                       ; $62ef: $67
    ld c, $00                                     ; $62f0: $0e $00
    nop                                           ; $62f2: $00
    ld l, e                                       ; $62f3: $6b
    inc h                                         ; $62f4: $24
    rst $28                                       ; $62f5: $ef
    ld bc, $00a5                                  ; $62f6: $01 $a5 $00
    ld hl, $1000                                  ; $62f9: $21 $00 $10
    ld a, [bc]                                    ; $62fc: $0a
    nop                                           ; $62fd: $00
    inc e                                         ; $62fe: $1c
    db $dd                                        ; $62ff: $dd
    rrca                                          ; $6300: $0f
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    jr nz, jr_0b8_62d0                            ; $6304: $20 $ca

    ld a, [de]                                    ; $6306: $1a
    add h                                         ; $6307: $84
    nop                                           ; $6308: $00
    ld hl, $0d00                                  ; $6309: $21 $00 $0d
    ld b, $ff                                     ; $630c: $06 $ff
    inc de                                        ; $630e: $13
    ld b, d                                       ; $630f: $42
    dec b                                         ; $6310: $05
    ld b, c                                       ; $6311: $41
    nop                                           ; $6312: $00
    xor d                                         ; $6313: $aa
    ld a, [de]                                    ; $6314: $1a
    add hl, hl                                    ; $6315: $29
    ld bc, $2b8f                                  ; $6316: $01 $8f $2b
    ld b, e                                       ; $6319: $43
    nop                                           ; $631a: $00
    ld d, h                                       ; $631b: $54
    ld b, $de                                     ; $631c: $06 $de
    cpl                                           ; $631e: $2f
    cp c                                          ; $631f: $b9
    ld c, $20                                     ; $6320: $0e $20
    nop                                           ; $6322: $00
    ld l, c                                       ; $6323: $69
    ld c, $4d                                     ; $6324: $0e $4d

jr_0b8_6326:
    rra                                           ; $6326: $1f
    push hl                                       ; $6327: $e5
    inc b                                         ; $6328: $04
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    rst $38                                       ; $632b: $ff
    ld a, a                                       ; $632c: $7f
    add hl, hl                                    ; $632d: $29
    ld bc, $244b                                  ; $632e: $01 $4b $24
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    sub $0a                                       ; $6333: $d6 $0a
    rst $38                                       ; $6335: $ff
    ld a, a                                       ; $6336: $7f
    nop                                           ; $6337: $00
    jr nz, jr_0b8_633a                            ; $6338: $20 $00

jr_0b8_633a:
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    jr nz, jr_0b8_6367                            ; $633c: $20 $29

    ld bc, $2b8f                                  ; $633e: $01 $8f $2b
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    and h                                         ; $6343: $a4
    dec b                                         ; $6344: $05
    ret                                           ; $6345: $c9


    ld [de], a                                    ; $6346: $12
    jp nz, RST_00                                 ; $6347: $c2 $00 $00

    nop                                           ; $634a: $00
    xor d                                         ; $634b: $aa
    ld a, [de]                                    ; $634c: $1a
    or b                                          ; $634d: $b0
    cpl                                           ; $634e: $2f
    ld h, $09                                     ; $634f: $26 $09
    ld bc, $7500                                  ; $6351: $01 $00 $75
    ld a, [bc]                                    ; $6354: $0a
    rst $38                                       ; $6355: $ff
    scf                                           ; $6356: $37
    rst $00                                       ; $6357: $c7
    inc b                                         ; $6358: $04
    and e                                         ; $6359: $a3
    inc b                                         ; $635a: $04
    adc d                                         ; $635b: $8a
    ld d, $17                                     ; $635c: $16 $17
    rlca                                          ; $635e: $07
    ld l, [hl]                                    ; $635f: $6e
    daa                                           ; $6360: $27
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    rst $38                                       ; $6363: $ff
    ld a, a                                       ; $6364: $7f
    dec hl                                        ; $6365: $2b
    inc h                                         ; $6366: $24

jr_0b8_6367:
    ld l, [hl]                                    ; $6367: $6e
    daa                                           ; $6368: $27
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    jr nz, jr_0b8_6399                            ; $636c: $20 $2b

    inc h                                         ; $636e: $24
    ld l, [hl]                                    ; $636f: $6e
    daa                                           ; $6370: $27
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, jr_0b8_6326                            ; $6374: $20 $b0

    cpl                                           ; $6376: $2f
    ld h, $09                                     ; $6377: $26 $09
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    ld b, h                                       ; $637b: $44
    dec b                                         ; $637c: $05
    ld b, a                                       ; $637d: $47
    ld c, $e9                                     ; $637e: $0e $e9
    ld [de], a                                    ; $6380: $12
    ld h, d                                       ; $6381: $62
    nop                                           ; $6382: $00
    ld h, [hl]                                    ; $6383: $66
    dec d                                         ; $6384: $15
    ld l, [hl]                                    ; $6385: $6e
    dec hl                                        ; $6386: $2b
    ld c, b                                       ; $6387: $48
    ld [de], a                                    ; $6388: $12
    ld h, e                                       ; $6389: $63
    nop                                           ; $638a: $00
    cp l                                          ; $638b: $bd
    inc de                                        ; $638c: $13
    rst $28                                       ; $638d: $ef
    dec b                                         ; $638e: $05
    rst $38                                       ; $638f: $ff
    dec sp                                        ; $6390: $3b
    ld b, c                                       ; $6391: $41
    nop                                           ; $6392: $00
    jp z, $d61a                                   ; $6393: $ca $1a $d6

    ld b, $de                                     ; $6396: $06 $de
    inc de                                        ; $6398: $13

jr_0b8_6399:
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    rst $38                                       ; $639b: $ff
    ld a, a                                       ; $639c: $7f
    ld a, [bc]                                    ; $639d: $0a
    jr nz, jr_0b8_63ca                            ; $639e: $20 $2a

    jr nz, jr_0b8_63a2                            ; $63a0: $20 $00

jr_0b8_63a2:
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    jr nz, jr_0b8_63b0                            ; $63a4: $20 $0a

    jr nz, @+$2c                                  ; $63a6: $20 $2a

    jr nz, jr_0b8_63aa                            ; $63a8: $20 $00

jr_0b8_63aa:
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    jr nz, jr_0b8_641c                            ; $63ac: $20 $6e

    dec hl                                        ; $63ae: $2b
    ld c, b                                       ; $63af: $48

jr_0b8_63b0:
    ld [de], a                                    ; $63b0: $12
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    add e                                         ; $63b3: $83
    ld bc, $09e6                                  ; $63b4: $01 $e6 $09
    ld b, a                                       ; $63b7: $47
    ld a, [bc]                                    ; $63b8: $0a
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    rr [hl]                                       ; $63bb: $cb $1e
    ld b, $05                                     ; $63bd: $06 $05
    push bc                                       ; $63bf: $c5
    dec c                                         ; $63c0: $0d
    ld h, e                                       ; $63c1: $63
    nop                                           ; $63c2: $00
    reti                                          ; $63c3: $d9


    ld c, $b0                                     ; $63c4: $0e $b0
    add hl, bc                                    ; $63c6: $09
    sbc $23                                       ; $63c7: $de $23
    ld b, e                                       ; $63c9: $43

jr_0b8_63ca:
    nop                                           ; $63ca: $00
    cp h                                          ; $63cb: $bc
    rrca                                          ; $63cc: $0f
    xor c                                         ; $63cd: $a9
    ld d, $ce                                     ; $63ce: $16 $ce
    ld bc, $0000                                  ; $63d0: $01 $00 $00
    rst $38                                       ; $63d3: $ff
    ld a, a                                       ; $63d4: $7f
    rst $20                                       ; $63d5: $e7
    ld de, $200a                                  ; $63d6: $11 $0a $20
    nop                                           ; $63d9: $00
    jr nz, @+$01                                  ; $63da: $20 $ff

    ld a, a                                       ; $63dc: $7f
    rst $20                                       ; $63dd: $e7
    ld de, $200a                                  ; $63de: $11 $0a $20
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    jr nz, jr_0b8_63ec                            ; $63e4: $20 $06

    dec b                                         ; $63e6: $05
    push bc                                       ; $63e7: $c5
    dec c                                         ; $63e8: $0d
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    ld [bc], a                                    ; $63eb: $02

jr_0b8_63ec:
    ld bc, $0081                                  ; $63ec: $01 $81 $00
    ld h, e                                       ; $63ef: $63
    ld bc, $0040                                  ; $63f0: $01 $40 $00
    add l                                         ; $63f3: $85
    add hl, bc                                    ; $63f4: $09
    ld l, c                                       ; $63f5: $69
    ld d, $4b                                     ; $63f6: $16 $4b
    ld bc, $0043                                  ; $63f8: $01 $43 $00
    halt                                          ; $63fb: $76
    ld c, $df                                     ; $63fc: $0e $df
    inc sp                                        ; $63fe: $33
    ld c, a                                       ; $63ff: $4f
    dec c                                         ; $6400: $0d
    jr nz, jr_0b8_6403                            ; $6401: $20 $00

jr_0b8_6403:
    sbc h                                         ; $6403: $9c
    rla                                           ; $6404: $17
    ld c, b                                       ; $6405: $48
    ld [de], a                                    ; $6406: $12
    ret nc                                        ; $6407: $d0

    add hl, bc                                    ; $6408: $09
    nop                                           ; $6409: $00
    inc b                                         ; $640a: $04
    dec l                                         ; $640b: $2d
    inc hl                                        ; $640c: $23
    rst $38                                       ; $640d: $ff
    ld a, a                                       ; $640e: $7f
    ld a, [bc]                                    ; $640f: $0a
    jr nz, jr_0b8_6412                            ; $6410: $20 $00

jr_0b8_6412:
    jr nz, @+$2f                                  ; $6412: $20 $2d

    inc hl                                        ; $6414: $23
    rst $38                                       ; $6415: $ff
    ld a, a                                       ; $6416: $7f
    ld a, [bc]                                    ; $6417: $0a
    jr nz, jr_0b8_641a                            ; $6418: $20 $00

jr_0b8_641a:
    jr nz, @-$79                                  ; $641a: $20 $85

jr_0b8_641c:
    add hl, bc                                    ; $641c: $09
    ld l, c                                       ; $641d: $69
    ld d, $4b                                     ; $641e: $16 $4b
    ld bc, $0000                                  ; $6420: $01 $00 $00
    pop hl                                        ; $6423: $e1
    ld [$2000], sp                                ; $6424: $08 $00 $20
    ld h, e                                       ; $6427: $63
    ld bc, $0020                                  ; $6428: $01 $20 $00
    and l                                         ; $642b: $a5
    add hl, bc                                    ; $642c: $09
    dec hl                                        ; $642d: $2b
    ld [de], a                                    ; $642e: $12
    rst $20                                       ; $642f: $e7
    nop                                           ; $6430: $00
    ld h, e                                       ; $6431: $63
    nop                                           ; $6432: $00
    sub l                                         ; $6433: $95
    ld c, $ff                                     ; $6434: $0e $ff
    rra                                           ; $6436: $1f
    rst $38                                       ; $6437: $ff
    ld c, a                                       ; $6438: $4f
    add b                                         ; $6439: $80
    inc b                                         ; $643a: $04
    cp h                                          ; $643b: $bc
    rla                                           ; $643c: $17
    ld [$1116], sp                                ; $643d: $08 $16 $11
    ld c, $00                                     ; $6440: $0e $00
    ld [$7fff], sp                                ; $6442: $08 $ff $7f
    ld a, [bc]                                    ; $6445: $0a
    jr nz, jr_0b8_6451                            ; $6446: $20 $09

    ld a, [de]                                    ; $6448: $1a
    nop                                           ; $6449: $00
    jr nz, @+$01                                  ; $644a: $20 $ff

    ld a, a                                       ; $644c: $7f
    ld a, [bc]                                    ; $644d: $0a
    jr nz, jr_0b8_6459                            ; $644e: $20 $09

    ld a, [de]                                    ; $6450: $1a

jr_0b8_6451:
    nop                                           ; $6451: $00
    jr nz, @-$59                                  ; $6452: $20 $a5

    add hl, bc                                    ; $6454: $09
    dec hl                                        ; $6455: $2b
    ld [de], a                                    ; $6456: $12
    rst $20                                       ; $6457: $e7
    nop                                           ; $6458: $00

jr_0b8_6459:
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    rst $00                                       ; $645d: $c7
    ld de, $2000                                  ; $645e: $11 $00 $20
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    rlca                                          ; $6463: $07
    ld [de], a                                    ; $6464: $12
    rst $20                                       ; $6465: $e7
    nop                                           ; $6466: $00
    xor $0d                                       ; $6467: $ee $0d
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    rst $38                                       ; $646b: $ff
    ld a, a                                       ; $646c: $7f
    ld a, [bc]                                    ; $646d: $0a
    jr nz, jr_0b8_6479                            ; $646e: $20 $09

    ld a, [de]                                    ; $6470: $1a
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    ld a, [bc]                                    ; $6475: $0a
    jr nz, jr_0b8_6481                            ; $6476: $20 $09

    ld a, [de]                                    ; $6478: $1a

jr_0b8_6479:
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, jr_0b8_6489                            ; $647e: $20 $09

    ld a, [de]                                    ; $6480: $1a

jr_0b8_6481:
    nop                                           ; $6481: $00
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f
    nop                                           ; $6485: $00

jr_0b8_6486:
    jr nz, jr_0b8_6491                            ; $6486: $20 $09

    ld a, [de]                                    ; $6488: $1a

jr_0b8_6489:
    nop                                           ; $6489: $00
    jr nz, jr_0b8_6493                            ; $648a: $20 $07

    ld [de], a                                    ; $648c: $12
    rst $20                                       ; $648d: $e7

jr_0b8_648e:
    nop                                           ; $648e: $00
    xor $0d                                       ; $648f: $ee $0d

jr_0b8_6491:
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00

jr_0b8_6493:
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00
    jr nz, jr_0b8_6486                            ; $6496: $20 $ee

    dec c                                         ; $6498: $0d
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f
    nop                                           ; $649d: $00
    jr nz, jr_0b8_648e                            ; $649e: $20 $ee

    dec c                                         ; $64a0: $0d
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b8_64a6                            ; $64a4: $20 $00

jr_0b8_64a6:
    jr nz, jr_0b8_64b1                            ; $64a6: $20 $09

    ld a, [de]                                    ; $64a8: $1a
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    jr nz, jr_0b8_64ae                            ; $64ac: $20 $00

jr_0b8_64ae:
    jr nz, jr_0b8_64b9                            ; $64ae: $20 $09

    ld a, [de]                                    ; $64b0: $1a

jr_0b8_64b1:
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    jr nz, jr_0b8_64b6                            ; $64b4: $20 $00

jr_0b8_64b6:
    jr nz, jr_0b8_64c1                            ; $64b6: $20 $09

    ld a, [de]                                    ; $64b8: $1a

jr_0b8_64b9:
    nop                                           ; $64b9: $00
    jr nz, jr_0b8_64bc                            ; $64ba: $20 $00

jr_0b8_64bc:
    jr nz, jr_0b8_64be                            ; $64bc: $20 $00

jr_0b8_64be:
    jr nz, jr_0b8_64c9                            ; $64be: $20 $09

    ld a, [de]                                    ; $64c0: $1a

jr_0b8_64c1:
    nop                                           ; $64c1: $00
    jr nz, jr_0b8_64c4                            ; $64c2: $20 $00

jr_0b8_64c4:
    jr nz, jr_0b8_64c6                            ; $64c4: $20 $00

jr_0b8_64c6:
    jr nz, jr_0b8_652c                            ; $64c6: $20 $64

    inc c                                         ; $64c8: $0c

jr_0b8_64c9:
    nop                                           ; $64c9: $00
    jr nz, jr_0b8_64cc                            ; $64ca: $20 $00

jr_0b8_64cc:
    jr nz, jr_0b8_64ce                            ; $64cc: $20 $00

jr_0b8_64ce:
    jr nz, jr_0b8_6534                            ; $64ce: $20 $64

    inc c                                         ; $64d0: $0c
    nop                                           ; $64d1: $00
    jr nz, jr_0b8_64d4                            ; $64d2: $20 $00

jr_0b8_64d4:
    jr nz, jr_0b8_64d6                            ; $64d4: $20 $00

jr_0b8_64d6:
    jr nz, jr_0b8_653c                            ; $64d6: $20 $64

    inc c                                         ; $64d8: $0c
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    jr nz, jr_0b8_64e4                            ; $64dc: $20 $06

    nop                                           ; $64de: $00
    ld d, c                                       ; $64df: $51
    inc c                                         ; $64e0: $0c
    nop                                           ; $64e1: $00
    jr nz, jr_0b8_64e4                            ; $64e2: $20 $00

jr_0b8_64e4:
    jr nz, jr_0b8_64ec                            ; $64e4: $20 $06

    nop                                           ; $64e6: $00
    ld d, c                                       ; $64e7: $51
    inc c                                         ; $64e8: $0c
    nop                                           ; $64e9: $00
    jr nz, jr_0b8_64ec                            ; $64ea: $20 $00

jr_0b8_64ec:
    jr nz, jr_0b8_64f4                            ; $64ec: $20 $06

    nop                                           ; $64ee: $00
    ld d, c                                       ; $64ef: $51
    inc c                                         ; $64f0: $0c
    nop                                           ; $64f1: $00
    jr nz, jr_0b8_64f4                            ; $64f2: $20 $00

jr_0b8_64f4:
    jr nz, jr_0b8_64fc                            ; $64f4: $20 $06

    nop                                           ; $64f6: $00
    ld d, c                                       ; $64f7: $51
    inc c                                         ; $64f8: $0c
    nop                                           ; $64f9: $00
    jr nz, jr_0b8_64fc                            ; $64fa: $20 $00

jr_0b8_64fc:
    jr nz, jr_0b8_64fe                            ; $64fc: $20 $00

jr_0b8_64fe:
    jr nz, jr_0b8_6564                            ; $64fe: $20 $64

    inc c                                         ; $6500: $0c
    nop                                           ; $6501: $00

jr_0b8_6502:
    jr nz, jr_0b8_6504                            ; $6502: $20 $00

jr_0b8_6504:
    jr nz, jr_0b8_6506                            ; $6504: $20 $00

jr_0b8_6506:
    jr nz, jr_0b8_656c                            ; $6506: $20 $64

    inc c                                         ; $6508: $0c
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    jr nz, jr_0b8_6514                            ; $650c: $20 $06

    nop                                           ; $650e: $00
    ld h, h                                       ; $650f: $64
    inc c                                         ; $6510: $0c
    ld [bc], a                                    ; $6511: $02
    nop                                           ; $6512: $00
    cp a                                          ; $6513: $bf

jr_0b8_6514:
    dec a                                         ; $6514: $3d
    ei                                            ; $6515: $fb
    ld a, d                                       ; $6516: $7a
    inc de                                        ; $6517: $13
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    jr nz, jr_0b8_6522                            ; $651a: $20 $06

    nop                                           ; $651c: $00
    ei                                            ; $651d: $fb
    ld a, d                                       ; $651e: $7a
    inc de                                        ; $651f: $13
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00

jr_0b8_6522:
    jr nz, jr_0b8_652a                            ; $6522: $20 $06

    nop                                           ; $6524: $00
    ei                                            ; $6525: $fb
    ld a, d                                       ; $6526: $7a
    inc de                                        ; $6527: $13
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00

jr_0b8_652a:
    jr nz, jr_0b8_6532                            ; $652a: $20 $06

jr_0b8_652c:
    nop                                           ; $652c: $00
    ei                                            ; $652d: $fb
    ld a, d                                       ; $652e: $7a
    inc de                                        ; $652f: $13
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00

jr_0b8_6532:
    jr nz, jr_0b8_6534                            ; $6532: $20 $00

jr_0b8_6534:
    jr nz, jr_0b8_653c                            ; $6534: $20 $06

    nop                                           ; $6536: $00
    ld h, h                                       ; $6537: $64
    inc c                                         ; $6538: $0c
    nop                                           ; $6539: $00
    jr nz, jr_0b8_653c                            ; $653a: $20 $00

jr_0b8_653c:
    jr nz, jr_0b8_6544                            ; $653c: $20 $06

    nop                                           ; $653e: $00
    ld h, h                                       ; $653f: $64
    inc c                                         ; $6540: $0c
    inc bc                                        ; $6541: $03
    nop                                           ; $6542: $00
    rla                                           ; $6543: $17

jr_0b8_6544:
    halt                                          ; $6544: $76
    nop                                           ; $6545: $00
    jr nz, jr_0b8_6502                            ; $6546: $20 $ba

    ld d, [hl]                                    ; $6548: $56
    ld b, $00                                     ; $6549: $06 $00
    ld d, $3d                                     ; $654b: $16 $3d
    ld a, c                                       ; $654d: $79
    halt                                          ; $654e: $76
    ld de, $0000                                  ; $654f: $11 $00 $00

jr_0b8_6552:
    jr nz, jr_0b8_65cb                            ; $6552: $20 $77

    ld c, [hl]                                    ; $6554: $4e
    ld b, $00                                     ; $6555: $06 $00
    xor a                                         ; $6557: $af
    jr jr_0b8_655a                                ; $6558: $18 $00

jr_0b8_655a:
    jr nz, @+$79                                  ; $655a: $20 $77

    ld c, [hl]                                    ; $655c: $4e
    ld b, $00                                     ; $655d: $06 $00
    xor a                                         ; $655f: $af
    jr jr_0b8_6562                                ; $6560: $18 $00

jr_0b8_6562:
    jr nz, @+$79                                  ; $6562: $20 $77

jr_0b8_6564:
    ld c, [hl]                                    ; $6564: $4e
    ld b, $00                                     ; $6565: $06 $00
    xor a                                         ; $6567: $af
    jr jr_0b8_656a                                ; $6568: $18 $00

jr_0b8_656a:
    jr nz, jr_0b8_6583                            ; $656a: $20 $17

jr_0b8_656c:
    halt                                          ; $656c: $76
    nop                                           ; $656d: $00
    jr nz, jr_0b8_652a                            ; $656e: $20 $ba

    ld d, [hl]                                    ; $6570: $56
    nop                                           ; $6571: $00
    jr nz, @+$19                                  ; $6572: $20 $17

    halt                                          ; $6574: $76
    nop                                           ; $6575: $00
    jr nz, jr_0b8_6532                            ; $6576: $20 $ba

    ld d, [hl]                                    ; $6578: $56
    inc b                                         ; $6579: $04
    ld [$4ced], sp                                ; $657a: $08 $ed $4c
    ld sp, hl                                     ; $657d: $f9
    ld a, d                                       ; $657e: $7a

jr_0b8_657f:
    adc a                                         ; $657f: $8f
    inc d                                         ; $6580: $14
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00

jr_0b8_6583:
    db $ed                                        ; $6583: $ed
    ld c, h                                       ; $6584: $4c
    ld de, $0604                                  ; $6585: $11 $04 $06
    nop                                           ; $6588: $00
    ld bc, $b610                                  ; $6589: $01 $10 $b6
    add hl, sp                                    ; $658c: $39
    cp e                                          ; $658d: $bb
    ld a, e                                       ; $658e: $7b
    ld d, c                                       ; $658f: $51
    inc c                                         ; $6590: $0c

jr_0b8_6591:
    nop                                           ; $6591: $00
    jr nz, @-$48                                  ; $6592: $20 $b6

    add hl, sp                                    ; $6594: $39
    cp e                                          ; $6595: $bb
    ld a, e                                       ; $6596: $7b
    ld d, c                                       ; $6597: $51
    inc c                                         ; $6598: $0c

jr_0b8_6599:
    nop                                           ; $6599: $00
    jr nz, jr_0b8_6552                            ; $659a: $20 $b6

    add hl, sp                                    ; $659c: $39
    cp e                                          ; $659d: $bb
    ld a, e                                       ; $659e: $7b
    ld d, c                                       ; $659f: $51
    inc c                                         ; $65a0: $0c
    nop                                           ; $65a1: $00
    jr nz, jr_0b8_6591                            ; $65a2: $20 $ed

    ld c, h                                       ; $65a4: $4c
    ld sp, hl                                     ; $65a5: $f9
    ld a, d                                       ; $65a6: $7a
    adc a                                         ; $65a7: $8f
    inc d                                         ; $65a8: $14
    nop                                           ; $65a9: $00
    jr nz, jr_0b8_6599                            ; $65aa: $20 $ed

    ld c, h                                       ; $65ac: $4c
    ld sp, hl                                     ; $65ad: $f9
    ld a, d                                       ; $65ae: $7a
    adc a                                         ; $65af: $8f
    inc d                                         ; $65b0: $14
    inc bc                                        ; $65b1: $03
    ld [$4ced], sp                                ; $65b2: $08 $ed $4c
    ld d, b                                       ; $65b5: $50
    inc c                                         ; $65b6: $0c
    pop af                                        ; $65b7: $f1
    ld l, [hl]                                    ; $65b8: $6e
    inc b                                         ; $65b9: $04
    inc b                                         ; $65ba: $04
    rst $38                                       ; $65bb: $ff
    ld a, a                                       ; $65bc: $7f
    inc d                                         ; $65bd: $14
    ld [$0c1f], sp                                ; $65be: $08 $1f $0c
    ld bc, $8b08                                  ; $65c1: $01 $08 $8b
    ld h, [hl]                                    ; $65c4: $66
    or c                                          ; $65c5: $b1
    jr @+$01                                      ; $65c6: $18 $ff

    ld a, a                                       ; $65c8: $7f

jr_0b8_65c9:
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00

jr_0b8_65cb:
    nop                                           ; $65cb: $00
    jr nz, jr_0b8_657f                            ; $65cc: $20 $b1

    jr @+$01                                      ; $65ce: $18 $ff

    ld a, a                                       ; $65d0: $7f
    nop                                           ; $65d1: $00
    jr nz, jr_0b8_65d4                            ; $65d2: $20 $00

jr_0b8_65d4:
    jr nz, @-$4d                                  ; $65d4: $20 $b1

    jr @+$01                                      ; $65d6: $18 $ff

    ld a, a                                       ; $65d8: $7f

jr_0b8_65d9:
    nop                                           ; $65d9: $00
    jr nz, jr_0b8_65c9                            ; $65da: $20 $ed

    ld c, h                                       ; $65dc: $4c
    ld d, b                                       ; $65dd: $50
    inc c                                         ; $65de: $0c
    pop af                                        ; $65df: $f1
    ld l, [hl]                                    ; $65e0: $6e
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    rst $38                                       ; $65e3: $ff
    ld a, a                                       ; $65e4: $7f
    nop                                           ; $65e5: $00
    jr nz, jr_0b8_65d9                            ; $65e6: $20 $f1

    ld l, [hl]                                    ; $65e8: $6e
    inc b                                         ; $65e9: $04
    nop                                           ; $65ea: $00
    cp l                                          ; $65eb: $bd
    ld [hl], a                                    ; $65ec: $77
    ld l, [hl]                                    ; $65ed: $6e
    db $10                                        ; $65ee: $10
    ret nz                                        ; $65ef: $c0

    inc h                                         ; $65f0: $24
    ld b, h                                       ; $65f1: $44
    ld [$72b7], sp                                ; $65f2: $08 $b7 $72
    sbc $20                                       ; $65f5: $de $20
    ld d, b                                       ; $65f7: $50
    inc e                                         ; $65f8: $1c
    ld bc, $ff00                                  ; $65f9: $01 $00 $ff
    ld a, a                                       ; $65fc: $7f
    add [hl]                                      ; $65fd: $86
    ld [de], a                                    ; $65fe: $12
    ld d, c                                       ; $65ff: $51
    inc c                                         ; $6600: $0c
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    rst $38                                       ; $6603: $ff
    ld a, a                                       ; $6604: $7f
    nop                                           ; $6605: $00
    jr nz, jr_0b8_6659                            ; $6606: $20 $51

    inc c                                         ; $6608: $0c
    nop                                           ; $6609: $00
    jr nz, @+$01                                  ; $660a: $20 $ff

    ld a, a                                       ; $660c: $7f
    nop                                           ; $660d: $00
    jr nz, jr_0b8_6661                            ; $660e: $20 $51

    inc c                                         ; $6610: $0c
    nop                                           ; $6611: $00
    jr jr_0b8_6614                                ; $6612: $18 $00

jr_0b8_6614:
    jr nz, jr_0b8_6684                            ; $6614: $20 $6e

    db $10                                        ; $6616: $10
    ret nz                                        ; $6617: $c0

    inc h                                         ; $6618: $24
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    rst $38                                       ; $661b: $ff
    ld a, a                                       ; $661c: $7f
    nop                                           ; $661d: $00
    jr nz, jr_0b8_6623                            ; $661e: $20 $03

    nop                                           ; $6620: $00
    add hl, bc                                    ; $6621: $09
    nop                                           ; $6622: $00

jr_0b8_6623:
    sub a                                         ; $6623: $97
    ld l, d                                       ; $6624: $6a
    ld l, [hl]                                    ; $6625: $6e
    dec a                                         ; $6626: $3d
    rst $38                                       ; $6627: $ff
    ld a, e                                       ; $6628: $7b
    inc hl                                        ; $6629: $23
    inc c                                         ; $662a: $0c
    rla                                           ; $662b: $17
    halt                                          ; $662c: $76
    ld [de], a                                    ; $662d: $12
    inc b                                         ; $662e: $04
    rra                                           ; $662f: $1f
    dec l                                         ; $6630: $2d
    inc bc                                        ; $6631: $03
    nop                                           ; $6632: $00
    cp l                                          ; $6633: $bd
    ld e, a                                       ; $6634: $5f
    ld e, $08                                     ; $6635: $1e $08
    ld h, [hl]                                    ; $6637: $66
    ld [de], a                                    ; $6638: $12
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    rst $38                                       ; $663b: $ff
    ld a, a                                       ; $663c: $7f
    ld h, [hl]                                    ; $663d: $66
    ld [de], a                                    ; $663e: $12
    nop                                           ; $663f: $00
    jr nz, jr_0b8_6642                            ; $6640: $20 $00

jr_0b8_6642:
    jr nz, @+$01                                  ; $6642: $20 $ff

    ld a, a                                       ; $6644: $7f
    ld h, [hl]                                    ; $6645: $66
    ld [de], a                                    ; $6646: $12
    nop                                           ; $6647: $00
    jr nz, jr_0b8_664c                            ; $6648: $20 $02

    nop                                           ; $664a: $00
    sub [hl]                                      ; $664b: $96

jr_0b8_664c:
    ld d, d                                       ; $664c: $52
    nop                                           ; $664d: $00
    inc e                                         ; $664e: $1c
    rst $38                                       ; $664f: $ff
    ld a, a                                       ; $6650: $7f
    ld [bc], a                                    ; $6651: $02
    nop                                           ; $6652: $00
    dec a                                         ; $6653: $3d
    ld [hl], $ff                                  ; $6654: $36 $ff
    ld a, e                                       ; $6656: $7b
    add sp, $15                                   ; $6657: $e8 $15

jr_0b8_6659:
    inc bc                                        ; $6659: $03
    ld [$6553], sp                                ; $665a: $08 $53 $65
    add hl, de                                    ; $665d: $19
    nop                                           ; $665e: $00
    rst $38                                       ; $665f: $ff
    ld [hl], e                                    ; $6660: $73

jr_0b8_6661:
    ld bc, $5b00                                  ; $6661: $01 $00 $5b
    ld l, e                                       ; $6664: $6b
    dec de                                        ; $6665: $1b
    ld [$0c4c], sp                                ; $6666: $08 $4c $0c
    ld a, [bc]                                    ; $6669: $0a
    nop                                           ; $666a: $00
    rst $18                                       ; $666b: $df
    ld b, e                                       ; $666c: $43
    ld c, d                                       ; $666d: $4a
    ld c, $ff                                     ; $666e: $0e $ff
    ld a, a                                       ; $6670: $7f
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    rst $38                                       ; $6673: $ff
    ld a, a                                       ; $6674: $7f
    ld b, [hl]                                    ; $6675: $46
    ld c, $66                                     ; $6676: $0e $66
    ld c, $00                                     ; $6678: $0e $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    jr nz, jr_0b8_66c4                            ; $667c: $20 $46

    ld c, $66                                     ; $667e: $0e $66
    ld c, $01                                     ; $6680: $0e $01
    db $10                                        ; $6682: $10
    sbc l                                         ; $6683: $9d

jr_0b8_6684:
    ld b, d                                       ; $6684: $42
    ld d, $0d                                     ; $6685: $16 $0d
    rst $38                                       ; $6687: $ff
    ld a, a                                       ; $6688: $7f
    dec b                                         ; $6689: $05
    nop                                           ; $668a: $00
    sbc d                                         ; $668b: $9a
    ld a, $28                                     ; $668c: $3e $28
    ld d, $7f                                     ; $668e: $16 $7f
    ld h, e                                       ; $6690: $63
    inc b                                         ; $6691: $04
    nop                                           ; $6692: $00
    sbc $57                                       ; $6693: $de $57
    inc l                                         ; $6695: $2c
    inc c                                         ; $6696: $0c
    rst $38                                       ; $6697: $ff
    ld [hl], e                                    ; $6698: $73
    jr nz, jr_0b8_669f                            ; $6699: $20 $04

    sub $7f                                       ; $669b: $d6 $7f
    dec bc                                        ; $669d: $0b
    inc b                                         ; $669e: $04

jr_0b8_669f:
    add hl, sp                                    ; $669f: $39
    db $10                                        ; $66a0: $10
    ld b, l                                       ; $66a1: $45
    nop                                           ; $66a2: $00
    sbc l                                         ; $66a3: $9d
    dec sp                                        ; $66a4: $3b
    ld a, [hl+]                                   ; $66a5: $2a
    ld c, $ff                                     ; $66a6: $0e $ff
    ld e, a                                       ; $66a8: $5f
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    rst $38                                       ; $66ab: $ff
    ld a, a                                       ; $66ac: $7f
    ld b, l                                       ; $66ad: $45
    ld c, $03                                     ; $66ae: $0e $03
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    rst $38                                       ; $66b3: $ff
    ld a, a                                       ; $66b4: $7f
    nop                                           ; $66b5: $00
    jr nz, @+$05                                  ; $66b6: $20 $03

    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    ld [$2594], sp                                ; $66ba: $08 $94 $25
    cp l                                          ; $66bd: $bd
    ld c, d                                       ; $66be: $4a
    rst $38                                       ; $66bf: $ff
    ld a, e                                       ; $66c0: $7b
    inc b                                         ; $66c1: $04
    nop                                           ; $66c2: $00
    cp e                                          ; $66c3: $bb

jr_0b8_66c4:
    ld a, $ff                                     ; $66c4: $3e $ff
    ld a, a                                       ; $66c6: $7f
    xor $14                                       ; $66c7: $ee $14
    ld h, h                                       ; $66c9: $64
    nop                                           ; $66ca: $00
    rst $18                                       ; $66cb: $df
    ld c, a                                       ; $66cc: $4f
    ld a, d                                       ; $66cd: $7a
    ld [hl], e                                    ; $66ce: $73
    ld b, $25                                     ; $66cf: $06 $25
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    ld [hl], c                                    ; $66d3: $71
    ld hl, $77bc                                  ; $66d4: $21 $bc $77
    rst $00                                       ; $66d7: $c7
    jr @+$47                                      ; $66d8: $18 $45

    nop                                           ; $66da: $00
    sub e                                         ; $66db: $93
    ld h, d                                       ; $66dc: $62
    sbc h                                         ; $66dd: $9c
    scf                                           ; $66de: $37
    dec h                                         ; $66df: $25
    ld c, $03                                     ; $66e0: $0e $03
    nop                                           ; $66e2: $00
    rra                                           ; $66e3: $1f
    ld d, e                                       ; $66e4: $53
    dec h                                         ; $66e5: $25

jr_0b8_66e6:
    ld c, $df                                     ; $66e6: $0e $df
    ld [hl], a                                    ; $66e8: $77
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    rst $38                                       ; $66eb: $ff
    ld a, a                                       ; $66ec: $7f
    nop                                           ; $66ed: $00
    jr nz, jr_0b8_6715                            ; $66ee: $20 $25

    ld c, $02                                     ; $66f0: $0e $02
    nop                                           ; $66f2: $00
    dec a                                         ; $66f3: $3d
    ld [hl-], a                                   ; $66f4: $32
    cp a                                          ; $66f5: $bf
    ld l, e                                       ; $66f6: $6b
    nop                                           ; $66f7: $00
    inc e                                         ; $66f8: $1c
    ld b, l                                       ; $66f9: $45
    inc b                                         ; $66fa: $04
    call nc, $ff39                                ; $66fb: $d4 $39 $ff
    ld a, a                                       ; $66fe: $7f
    cp a                                          ; $66ff: $bf
    ld b, [hl]                                    ; $6700: $46
    ld b, d                                       ; $6701: $42
    nop                                           ; $6702: $00
    sbc h                                         ; $6703: $9c
    inc sp                                        ; $6704: $33
    or c                                          ; $6705: $b1
    ld l, d                                       ; $6706: $6a
    ld [$0021], sp                                ; $6707: $08 $21 $00
    nop                                           ; $670a: $00
    rra                                           ; $670b: $1f
    ld d, e                                       ; $670c: $53
    inc b                                         ; $670d: $04
    dec l                                         ; $670e: $2d
    call z, Call_0b8_4310                         ; $670f: $cc $10 $43
    nop                                           ; $6712: $00
    ld l, [hl]                                    ; $6713: $6e
    ld h, [hl]                                    ; $6714: $66

jr_0b8_6715:
    ld [hl-], a                                   ; $6715: $32
    ld a, [bc]                                    ; $6716: $0a
    inc h                                         ; $6717: $24
    ld b, c                                       ; $6718: $41
    ld [bc], a                                    ; $6719: $02
    nop                                           ; $671a: $00
    sbc a                                         ; $671b: $9f
    ld b, d                                       ; $671c: $42
    dec b                                         ; $671d: $05
    ld c, $ff                                     ; $671e: $0e $ff
    ld a, a                                       ; $6720: $7f
    ld bc, $7c00                                  ; $6721: $01 $00 $7c
    ld l, e                                       ; $6724: $6b
    dec b                                         ; $6725: $05
    ld c, $00                                     ; $6726: $0e $00
    jr nz, jr_0b8_672b                            ; $6728: $20 $01

    nop                                           ; $672a: $00

jr_0b8_672b:
    rst $38                                       ; $672b: $ff
    ld a, e                                       ; $672c: $7b
    and h                                         ; $672d: $a4
    add hl, bc                                    ; $672e: $09
    inc c                                         ; $672f: $0c
    add hl, de                                    ; $6730: $19
    ld h, a                                       ; $6731: $67
    inc b                                         ; $6732: $04
    rst $38                                       ; $6733: $ff
    ld d, d                                       ; $6734: $52
    cp c                                          ; $6735: $b9
    ld hl, $77ff                                  ; $6736: $21 $ff $77
    ld bc, $7b00                                  ; $6739: $01 $00 $7b
    ld [hl], a                                    ; $673c: $77
    and c                                         ; $673d: $a1
    jr z, jr_0b8_66e6                             ; $673e: $28 $a6

    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    ld [$666e], sp                                ; $6742: $08 $6e $66
    call c, $bc4a                                 ; $6745: $dc $4a $bc
    ld a, e                                       ; $6748: $7b
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    ld [hl], h                                    ; $674b: $74
    ld a, [bc]                                    ; $674c: $0a
    sub $6a                                       ; $674d: $d6 $6a
    rst $38                                       ; $674f: $ff
    ld a, a                                       ; $6750: $7f
    ld [bc], a                                    ; $6751: $02
    nop                                           ; $6752: $00
    sbc e                                         ; $6753: $9b
    ld c, d                                       ; $6754: $4a
    adc d                                         ; $6755: $8a
    add hl, bc                                    ; $6756: $09
    rst $38                                       ; $6757: $ff
    ld a, e                                       ; $6758: $7b
    nop                                           ; $6759: $00
    inc e                                         ; $675a: $1c
    push de                                       ; $675b: $d5
    dec l                                         ; $675c: $2d
    dec b                                         ; $675d: $05
    ld a, [bc]                                    ; $675e: $0a
    cp a                                          ; $675f: $bf
    ld [hl], e                                    ; $6760: $73
    ld bc, $bd08                                  ; $6761: $01 $08 $bd
    ld b, [hl]                                    ; $6764: $46
    inc sp                                        ; $6765: $33
    dec d                                         ; $6766: $15
    rst $18                                       ; $6767: $df
    ld a, e                                       ; $6768: $7b
    inc bc                                        ; $6769: $03
    nop                                           ; $676a: $00
    ld a, c                                       ; $676b: $79
    add hl, de                                    ; $676c: $19
    ld a, [bc]                                    ; $676d: $0a
    add hl, bc                                    ; $676e: $09
    sbc [hl]                                      ; $676f: $9e
    ld a, $22                                     ; $6770: $3e $22
    nop                                           ; $6772: $00
    rst $38                                       ; $6773: $ff
    ld a, a                                       ; $6774: $7f
    sub c                                         ; $6775: $91
    ld de, $49d0                                  ; $6776: $11 $d0 $49
    inc b                                         ; $6779: $04
    nop                                           ; $677a: $00
    sub h                                         ; $677b: $94
    dec e                                         ; $677c: $1d
    inc e                                         ; $677d: $1c
    ld l, $dd                                     ; $677e: $2e $dd
    ld c, d                                       ; $6780: $4a
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    ld d, h                                       ; $6783: $54
    ld d, d                                       ; $6784: $52
    rst $18                                       ; $6785: $df
    ld a, a                                       ; $6786: $7f
    adc $29                                       ; $6787: $ce $29
    ld bc, $5f00                                  ; $6789: $01 $00 $5f
    ld [hl], $ff                                  ; $678c: $36 $ff
    ld a, e                                       ; $678e: $7b
    xor c                                         ; $678f: $a9
    db $10                                        ; $6790: $10
    ld [bc], a                                    ; $6791: $02
    nop                                           ; $6792: $00
    ld e, h                                       ; $6793: $5c
    ld a, [hl-]                                   ; $6794: $3a
    rst $18                                       ; $6795: $df
    ld [hl], a                                    ; $6796: $77
    nop                                           ; $6797: $00
    inc e                                         ; $6798: $1c
    ld bc, $ff00                                  ; $6799: $01 $00 $ff
    ld a, a                                       ; $679c: $7f
    db $e4                                        ; $679d: $e4
    add hl, bc                                    ; $679e: $09
    nop                                           ; $679f: $00
    jr nz, jr_0b8_67a2                            ; $67a0: $20 $00

jr_0b8_67a2:
    nop                                           ; $67a2: $00
    db $d3                                        ; $67a3: $d3
    ld h, l                                       ; $67a4: $65
    jr z, jr_0b8_67b8                             ; $67a5: $28 $11

    ld a, [hl]                                    ; $67a7: $7e
    ld [hl], e                                    ; $67a8: $73
    ld bc, $7900                                  ; $67a9: $01 $00 $79
    ld [hl-], a                                   ; $67ac: $32
    ld a, [hl]                                    ; $67ad: $7e
    ld h, e                                       ; $67ae: $63
    or b                                          ; $67af: $b0
    ld d, l                                       ; $67b0: $55
    dec b                                         ; $67b1: $05
    nop                                           ; $67b2: $00
    ld d, $3a                                     ; $67b3: $16 $3a
    cp c                                          ; $67b5: $b9
    ld h, e                                       ; $67b6: $63
    dec a                                         ; $67b7: $3d

jr_0b8_67b8:
    inc d                                         ; $67b8: $14
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    ld e, b                                       ; $67bb: $58
    halt                                          ; $67bc: $76
    inc l                                         ; $67bd: $2c
    dec [hl]                                      ; $67be: $35
    sbc [hl]                                      ; $67bf: $9e
    ld l, a                                       ; $67c0: $6f
    ld [bc], a                                    ; $67c1: $02
    nop                                           ; $67c2: $00
    cp [hl]                                       ; $67c3: $be
    ld b, d                                       ; $67c4: $42
    ldh a, [$0c]                                  ; $67c5: $f0 $0c
    rst $18                                       ; $67c7: $df
    ld [hl], a                                    ; $67c8: $77
    nop                                           ; $67c9: $00
    jr nz, @-$42                                  ; $67ca: $20 $bc

    ld c, d                                       ; $67cc: $4a
    dec h                                         ; $67cd: $25
    nop                                           ; $67ce: $00
    cp a                                          ; $67cf: $bf
    ld [hl], e                                    ; $67d0: $73
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    rst $38                                       ; $67d3: $ff
    ld a, a                                       ; $67d4: $7f
    call nz, Call_000_0009                        ; $67d5: $c4 $09 $00
    jr nz, jr_0b8_67db                            ; $67d8: $20 $01

    nop                                           ; $67da: $00

jr_0b8_67db:
    sbc [hl]                                      ; $67db: $9e
    ld a, $12                                     ; $67dc: $3e $12
    ld sp, $737e                                  ; $67de: $31 $7e $73
    ld [bc], a                                    ; $67e1: $02

jr_0b8_67e2:
    inc b                                         ; $67e2: $04
    add hl, sp                                    ; $67e3: $39
    ld a, [hl]                                    ; $67e4: $7e
    ld e, a                                       ; $67e5: $5f
    scf                                           ; $67e6: $37
    db $10                                        ; $67e7: $10
    ld de, $0001                                  ; $67e8: $11 $01 $00
    ld d, l                                       ; $67eb: $55
    ld l, $55                                     ; $67ec: $2e $55
    inc b                                         ; $67ee: $04
    ccf                                           ; $67ef: $3f
    ld b, e                                       ; $67f0: $43
    ld [hl+], a                                   ; $67f1: $22
    nop                                           ; $67f2: $00
    ccf                                           ; $67f3: $3f
    ld h, $ff                                     ; $67f4: $26 $ff
    ld a, a                                       ; $67f6: $7f
    xor c                                         ; $67f7: $a9
    jr c, jr_0b8_67fd                             ; $67f8: $38 $03

    nop                                           ; $67fa: $00
    sbc [hl]                                      ; $67fb: $9e
    ld b, d                                       ; $67fc: $42

jr_0b8_67fd:
    rst $18                                       ; $67fd: $df
    ld [hl], a                                    ; $67fe: $77

jr_0b8_67ff:
    ccf                                           ; $67ff: $3f
    ld e, e                                       ; $6800: $5b
    ld [bc], a                                    ; $6801: $02
    nop                                           ; $6802: $00
    ld sp, hl                                     ; $6803: $f9
    ld sp, $5f5f                                  ; $6804: $31 $5f $5f
    nop                                           ; $6807: $00
    inc e                                         ; $6808: $1c
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    rst $38                                       ; $680b: $ff
    ld a, a                                       ; $680c: $7f
    and e                                         ; $680d: $a3
    add hl, bc                                    ; $680e: $09
    nop                                           ; $680f: $00
    jr nz, jr_0b8_6814                            ; $6810: $20 $02

    nop                                           ; $6812: $00
    dec e                                         ; $6813: $1d

jr_0b8_6814:
    ld a, [hl+]                                   ; $6814: $2a
    dec a                                         ; $6815: $3d
    ld l, a                                       ; $6816: $6f
    ld [hl], $11                                  ; $6817: $36 $11
    ld bc, $9508                                  ; $6819: $01 $08 $95
    ld [hl], l                                    ; $681c: $75
    rra                                           ; $681d: $1f
    dec hl                                        ; $681e: $2b
    ld l, $0d                                     ; $681f: $2e $0d
    ld b, d                                       ; $6821: $42
    inc c                                         ; $6822: $0c
    cp c                                          ; $6823: $b9
    halt                                          ; $6824: $76
    db $ec                                        ; $6825: $ec
    ld b, b                                       ; $6826: $40
    rrca                                          ; $6827: $0f
    ld [bc], a                                    ; $6828: $02
    ld bc, $9f00                                  ; $6829: $01 $00 $9f
    ld a, $5f                                     ; $682c: $3e $5f
    ld h, a                                       ; $682e: $67
    ld h, [hl]                                    ; $682f: $66
    inc e                                         ; $6830: $1c
    inc bc                                        ; $6831: $03
    nop                                           ; $6832: $00
    add hl, sp                                    ; $6833: $39
    ld a, [hl-]                                   ; $6834: $3a
    rst $18                                       ; $6835: $df
    ld c, d                                       ; $6836: $4a
    ld e, a                                       ; $6837: $5f
    ld e, a                                       ; $6838: $5f
    nop                                           ; $6839: $00
    jr nz, jr_0b8_6858                            ; $683a: $20 $1c

    ld l, $7f                                     ; $683c: $2e $7f
    ld h, a                                       ; $683e: $67
    inc bc                                        ; $683f: $03
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    rst $38                                       ; $6843: $ff
    ld a, a                                       ; $6844: $7f
    and e                                         ; $6845: $a3
    dec b                                         ; $6846: $05
    nop                                           ; $6847: $00
    jr nz, jr_0b8_684a                            ; $6848: $20 $00

jr_0b8_684a:
    nop                                           ; $684a: $00
    cp d                                          ; $684b: $ba
    ld a, d                                       ; $684c: $7a
    ld h, [hl]                                    ; $684d: $66
    inc h                                         ; $684e: $24
    ccf                                           ; $684f: $3f
    ld a, [hl+]                                   ; $6850: $2a
    ld bc, $d704                                  ; $6851: $01 $04 $d7
    ld a, c                                       ; $6854: $79
    ld h, a                                       ; $6855: $67
    jr z, jr_0b8_67e2                             ; $6856: $28 $8a

jr_0b8_6858:
    add hl, bc                                    ; $6858: $09
    ld bc, $8e04                                  ; $6859: $01 $04 $8e
    dec a                                         ; $685c: $3d
    ld c, $04                                     ; $685d: $0e $04
    add [hl]                                      ; $685f: $86
    ld [$0002], sp                                ; $6860: $08 $02 $00
    sbc b                                         ; $6863: $98
    dec e                                         ; $6864: $1d
    ld d, d                                       ; $6865: $52
    ld l, c                                       ; $6866: $69
    ld h, l                                       ; $6867: $65
    inc e                                         ; $6868: $1c
    ld [bc], a                                    ; $6869: $02
    nop                                           ; $686a: $00
    ld de, $5e15                                  ; $686b: $11 $15 $5e
    ld [hl], $97                                  ; $686e: $36 $97
    ld hl, $0001                                  ; $6870: $21 $01 $00
    rst $38                                       ; $6873: $ff
    ld a, a                                       ; $6874: $7f
    nop                                           ; $6875: $00
    jr nz, jr_0b8_67ff                            ; $6876: $20 $87

    jr c, jr_0b8_687a                             ; $6878: $38 $00

jr_0b8_687a:
    nop                                           ; $687a: $00
    rst $38                                       ; $687b: $ff
    ld a, a                                       ; $687c: $7f
    add e                                         ; $687d: $83
    dec b                                         ; $687e: $05
    nop                                           ; $687f: $00
    jr nz, jr_0b8_6882                            ; $6880: $20 $00

jr_0b8_6882:
    nop                                           ; $6882: $00
    ld c, [hl]                                    ; $6883: $4e
    ld b, l                                       ; $6884: $45
    inc [hl]                                      ; $6885: $34
    ld e, d                                       ; $6886: $5a
    inc h                                         ; $6887: $24
    jr jr_0b8_688c                                ; $6888: $18 $02

    inc b                                         ; $688a: $04
    sub e                                         ; $688b: $93

jr_0b8_688c:
    ld h, l                                       ; $688c: $65
    add hl, de                                    ; $688d: $19
    ld [$0145], sp                                ; $688e: $08 $45 $01
    inc bc                                        ; $6891: $03
    nop                                           ; $6892: $00
    inc d                                         ; $6893: $14
    ld [$0c1d], sp                                ; $6894: $08 $1d $0c
    ld a, [bc]                                    ; $6897: $0a

jr_0b8_6898:
    nop                                           ; $6898: $00
    ld [hl+], a                                   ; $6899: $22
    ld [$3089], sp                                ; $689a: $08 $89 $30
    ld [hl], e                                    ; $689d: $73
    ld h, l                                       ; $689e: $65
    call z, $0044                                 ; $689f: $cc $44 $00
    nop                                           ; $68a2: $00
    inc h                                         ; $68a3: $24
    jr @+$75                                      ; $68a4: $18 $73

    ld h, l                                       ; $68a6: $65
    call z, $0044                                 ; $68a7: $cc $44 $00
    nop                                           ; $68aa: $00
    or c                                          ; $68ab: $b1
    ld c, l                                       ; $68ac: $4d
    rst $38                                       ; $68ad: $ff
    ld a, a                                       ; $68ae: $7f
    nop                                           ; $68af: $00
    jr nz, jr_0b8_68b2                            ; $68b0: $20 $00

jr_0b8_68b2:
    nop                                           ; $68b2: $00
    rst $38                                       ; $68b3: $ff
    ld a, a                                       ; $68b4: $7f
    nop                                           ; $68b5: $00
    jr nz, jr_0b8_68fd                            ; $68b6: $20 $45

    ld bc, $0000                                  ; $68b8: $01 $00 $00
    jp nc, Jump_0b8_7a55                          ; $68bb: $d2 $55 $7a

    ld a, [hl]                                    ; $68be: $7e
    inc h                                         ; $68bf: $24
    jr jr_0b8_68c2                                ; $68c0: $18 $00

jr_0b8_68c2:
    nop                                           ; $68c2: $00
    sub $71                                       ; $68c3: $d6 $71
    ld l, $01                                     ; $68c5: $2e $01

jr_0b8_68c7:
    dec b                                         ; $68c7: $05
    stop                                          ; $68c8: $10 $00
    nop                                           ; $68ca: $00
    inc d                                         ; $68cb: $14
    ld [$0c3e], sp                                ; $68cc: $08 $3e $0c
    add [hl]                                      ; $68cf: $86
    nop                                           ; $68d0: $00
    ld hl, $ed00                                  ; $68d1: $21 $00 $ed
    ld b, h                                       ; $68d4: $44
    ld sp, $245d                                  ; $68d5: $31 $5d $24
    jr jr_0b8_68da                                ; $68d8: $18 $00

jr_0b8_68da:
    nop                                           ; $68da: $00
    inc h                                         ; $68db: $24
    jr jr_0b8_68c7                                ; $68dc: $18 $e9

    jr z, jr_0b8_6904                             ; $68de: $28 $24

    jr jr_0b8_68e2                                ; $68e0: $18 $00

jr_0b8_68e2:
    nop                                           ; $68e2: $00
    ld c, h                                       ; $68e3: $4c
    add hl, sp                                    ; $68e4: $39
    nop                                           ; $68e5: $00
    jr nz, jr_0b8_6898                            ; $68e6: $20 $b0

    ld c, c                                       ; $68e8: $49
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    rst $38                                       ; $68eb: $ff
    ld a, a                                       ; $68ec: $7f
    nop                                           ; $68ed: $00
    jr nz, jr_0b8_68f5                            ; $68ee: $20 $05

    stop                                          ; $68f0: $10 $00
    nop                                           ; $68f2: $00
    ld l, $49                                     ; $68f3: $2e $49

jr_0b8_68f5:
    ld a, a                                       ; $68f5: $7f
    ld a, a                                       ; $68f6: $7f
    inc h                                         ; $68f7: $24
    jr jr_0b8_68fa                                ; $68f8: $18 $00

jr_0b8_68fa:
    inc b                                         ; $68fa: $04
    db $eb                                        ; $68fb: $eb
    inc a                                         ; $68fc: $3c

jr_0b8_68fd:
    scf                                           ; $68fd: $37
    ld l, d                                       ; $68fe: $6a
    ld [hl], e                                    ; $68ff: $73
    ld d, $00                                     ; $6900: $16 $00
    nop                                           ; $6902: $00
    add a                                         ; $6903: $87

jr_0b8_6904:
    jr z, @+$0b                                   ; $6904: $28 $09

    inc b                                         ; $6906: $04
    xor $48                                       ; $6907: $ee $48
    ld bc, $0f04                                  ; $6909: $01 $04 $0f
    ld d, c                                       ; $690c: $51
    adc h                                         ; $690d: $8c
    ld bc, $1c45                                  ; $690e: $01 $45 $1c
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    ld a, [c]                                     ; $6913: $f2
    ld d, c                                       ; $6914: $51
    ld e, a                                       ; $6915: $5f
    ld a, a                                       ; $6916: $7f
    inc h                                         ; $6917: $24
    jr jr_0b8_691a                                ; $6918: $18 $00

jr_0b8_691a:
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    jr nz, jr_0b8_6949                            ; $691c: $20 $2b

    dec [hl]                                      ; $691e: $35
    inc h                                         ; $691f: $24
    jr jr_0b8_6922                                ; $6920: $18 $00

jr_0b8_6922:
    nop                                           ; $6922: $00
    rst $38                                       ; $6923: $ff
    ld a, a                                       ; $6924: $7f
    nop                                           ; $6925: $00
    jr nz, jr_0b8_699b                            ; $6926: $20 $73

    ld d, $00                                     ; $6928: $16 $00
    nop                                           ; $692a: $00
    ld sp, $7f59                                  ; $692b: $31 $59 $7f
    ld a, a                                       ; $692e: $7f
    srl b                                         ; $692f: $cb $38
    nop                                           ; $6931: $00
    inc b                                         ; $6932: $04
    db $ec                                        ; $6933: $ec

jr_0b8_6934:
    ld b, b                                       ; $6934: $40
    or l                                          ; $6935: $b5
    ld a, [de]                                    ; $6936: $1a
    add a                                         ; $6937: $87
    jr z, jr_0b8_693d                             ; $6938: $28 $03

    nop                                           ; $693a: $00
    push de                                       ; $693b: $d5
    ld h, c                                       ; $693c: $61

jr_0b8_693d:
    inc e                                         ; $693d: $1c
    inc b                                         ; $693e: $04
    rst $38                                       ; $693f: $ff
    ld a, a                                       ; $6940: $7f
    ld bc, $cb04                                  ; $6941: $01 $04 $cb
    jr c, jr_0b8_6934                             ; $6944: $38 $ee

    dec b                                         ; $6946: $05
    db $10                                        ; $6947: $10
    ld d, l                                       ; $6948: $55

jr_0b8_6949:
    inc bc                                        ; $6949: $03
    inc d                                         ; $694a: $14
    ld a, [c]                                     ; $694b: $f2
    ld d, c                                       ; $694c: $51
    call z, Call_000_3d3c                         ; $694d: $cc $3c $3d
    ld a, e                                       ; $6950: $7b
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    jr nz, jr_0b8_6922                            ; $6954: $20 $cc

    inc a                                         ; $6956: $3c
    dec a                                         ; $6957: $3d
    ld a, e                                       ; $6958: $7b
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    rst $38                                       ; $695b: $ff
    ld a, a                                       ; $695c: $7f
    nop                                           ; $695d: $00
    jr nz, @-$77                                  ; $695e: $20 $87

    jr z, jr_0b8_6962                             ; $6960: $28 $00

jr_0b8_6962:
    nop                                           ; $6962: $00
    rst $38                                       ; $6963: $ff
    ld a, a                                       ; $6964: $7f
    xor c                                         ; $6965: $a9
    jr nc, jr_0b8_698a                            ; $6966: $30 $22

    ld bc, $0000                                  ; $6968: $01 $00 $00
    db $ec                                        ; $696b: $ec
    inc a                                         ; $696c: $3c
    rst $28                                       ; $696d: $ef
    add hl, bc                                    ; $696e: $09
    ld hl, sp+$16                                 ; $696f: $f8 $16
    inc b                                         ; $6971: $04
    nop                                           ; $6972: $00
    ld sp, hl                                     ; $6973: $f9
    halt                                          ; $6974: $76
    rra                                           ; $6975: $1f
    ld [$3cec], sp                                ; $6976: $08 $ec $3c
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    push de                                       ; $697b: $d5
    ld a, [de]                                    ; $697c: $1a
    srl h                                         ; $697d: $cb $3c
    ld b, l                                       ; $697f: $45
    jr jr_0b8_6982                                ; $6980: $18 $00

jr_0b8_6982:
    nop                                           ; $6982: $00
    reti                                          ; $6983: $d9


    ld [hl], d                                    ; $6984: $72

jr_0b8_6985:
    inc c                                         ; $6985: $0c
    dec a                                         ; $6986: $3d
    dec a                                         ; $6987: $3d
    ld a, a                                       ; $6988: $7f
    nop                                           ; $6989: $00

jr_0b8_698a:
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    jr nz, jr_0b8_699a                            ; $698c: $20 $0c

    dec a                                         ; $698e: $3d
    dec a                                         ; $698f: $3d
    ld a, a                                       ; $6990: $7f
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    jr nz, jr_0b8_6985                            ; $6994: $20 $ef

    add hl, bc                                    ; $6996: $09
    ld hl, sp+$16                                 ; $6997: $f8 $16
    nop                                           ; $6999: $00

jr_0b8_699a:
    nop                                           ; $699a: $00

jr_0b8_699b:
    rst $38                                       ; $699b: $ff
    ld a, a                                       ; $699c: $7f
    ld hl, $2201                                  ; $699d: $21 $01 $22
    ld bc, $0000                                  ; $69a0: $01 $00 $00
    ld c, a                                       ; $69a3: $4f
    ld c, c                                       ; $69a4: $49
    ld [hl-], a                                   ; $69a5: $32
    ld c, $18                                     ; $69a6: $0e $18
    inc hl                                        ; $69a8: $23
    ld [bc], a                                    ; $69a9: $02
    ld [$5951], sp                                ; $69aa: $08 $51 $59
    dec de                                        ; $69ad: $1b
    ld [$6e77], sp                                ; $69ae: $08 $77 $6e
    ld b, b                                       ; $69b1: $40
    nop                                           ; $69b2: $00
    ld e, b                                       ; $69b3: $58
    inc hl                                        ; $69b4: $23
    adc e                                         ; $69b5: $8b
    dec d                                         ; $69b6: $15
    sbc $3f                                       ; $69b7: $de $3f
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    rst $38                                       ; $69bb: $ff
    ld a, a                                       ; $69bc: $7f
    ld bc, $2101                                  ; $69bd: $01 $01 $21
    ld bc, $0000                                  ; $69c0: $01 $00 $00
    nop                                           ; $69c3: $00
    jr nz, @+$03                                  ; $69c4: $20 $01

    ld bc, $0121                                  ; $69c6: $01 $21 $01
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    jr nz, jr_0b8_6a00                            ; $69cc: $20 $32

    ld c, $18                                     ; $69ce: $0e $18
    inc hl                                        ; $69d0: $23
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    rst $38                                       ; $69d3: $ff
    ld a, a                                       ; $69d4: $7f
    ld bc, $1801                                  ; $69d5: $01 $01 $18
    inc hl                                        ; $69d8: $23
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    ld [hl], b                                    ; $69db: $70
    ld d, c                                       ; $69dc: $51
    sbc l                                         ; $69dd: $9d
    ccf                                           ; $69de: $3f
    ld [hl], e                                    ; $69df: $73
    ld [hl+], a                                   ; $69e0: $22
    inc bc                                        ; $69e1: $03
    nop                                           ; $69e2: $00
    ld [hl], $6a                                  ; $69e3: $36 $6a
    inc e                                         ; $69e5: $1c
    ld [$40aa], sp                                ; $69e6: $08 $aa $40
    and b                                         ; $69e9: $a0
    nop                                           ; $69ea: $00
    db $10                                        ; $69eb: $10
    ld [hl-], a                                   ; $69ec: $32
    sbc $67                                       ; $69ed: $de $67
    jr c, jr_0b8_6a18                             ; $69ef: $38 $27

    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    rst $38                                       ; $69f3: $ff
    ld a, a                                       ; $69f4: $7f
    ld bc, $3801                                  ; $69f5: $01 $01 $38
    daa                                           ; $69f8: $27
    nop                                           ; $69f9: $00
    jr nz, @+$01                                  ; $69fa: $20 $ff

    ld a, a                                       ; $69fc: $7f
    ld bc, $3801                                  ; $69fd: $01 $01 $38

jr_0b8_6a00:
    daa                                           ; $6a00: $27
    nop                                           ; $6a01: $00
    jr nz, jr_0b8_6a74                            ; $6a02: $20 $70

    ld d, c                                       ; $6a04: $51
    sbc l                                         ; $6a05: $9d
    ccf                                           ; $6a06: $3f
    ld [hl], e                                    ; $6a07: $73
    ld [hl+], a                                   ; $6a08: $22
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    rst $38                                       ; $6a0b: $ff
    ld a, a                                       ; $6a0c: $7f
    ld bc, $7301                                  ; $6a0d: $01 $01 $73
    ld [hl+], a                                   ; $6a10: $22
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    ld d, c                                       ; $6a13: $51
    ld e, c                                       ; $6a14: $59
    sbc $53                                       ; $6a15: $de $53
    ld l, e                                       ; $6a17: $6b

Call_0b8_6a18:
jr_0b8_6a18:
    dec c                                         ; $6a18: $0d
    inc b                                         ; $6a19: $04
    nop                                           ; $6a1a: $00
    ret c                                         ; $6a1b: $d8

    ld l, d                                       ; $6a1c: $6a
    ld e, $00                                     ; $6a1d: $1e $00
    swap h                                        ; $6a1f: $cb $34
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    push de                                       ; $6a23: $d5
    ld l, $de                                     ; $6a24: $2e $de
    ld h, e                                       ; $6a26: $63
    ld bc, $0001                                  ; $6a27: $01 $01 $00
    nop                                           ; $6a2a: $00
    rst $38                                       ; $6a2b: $ff
    ld a, a                                       ; $6a2c: $7f
    ld bc, $0001                                  ; $6a2d: $01 $01 $00
    jr nz, jr_0b8_6a32                            ; $6a30: $20 $00

jr_0b8_6a32:
    jr nz, @+$01                                  ; $6a32: $20 $ff

    ld a, a                                       ; $6a34: $7f
    ld bc, $0001                                  ; $6a35: $01 $01 $00
    jr nz, jr_0b8_6a3a                            ; $6a38: $20 $00

jr_0b8_6a3a:
    jr nz, jr_0b8_6a8d                            ; $6a3a: $20 $51

    ld e, c                                       ; $6a3c: $59
    sbc $53                                       ; $6a3d: $de $53
    ld l, e                                       ; $6a3f: $6b
    dec c                                         ; $6a40: $0d
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    rst $38                                       ; $6a43: $ff
    ld a, a                                       ; $6a44: $7f
    pop hl                                        ; $6a45: $e1
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    jr nz, jr_0b8_6a4a                            ; $6a48: $20 $00

jr_0b8_6a4a:
    inc b                                         ; $6a4a: $04
    ld c, [hl]                                    ; $6a4b: $4e
    ld c, l                                       ; $6a4c: $4d
    ld e, e                                       ; $6a4d: $5b
    cpl                                           ; $6a4e: $2f
    rst $38                                       ; $6a4f: $ff
    ld l, e                                       ; $6a50: $6b
    inc bc                                        ; $6a51: $03
    nop                                           ; $6a52: $00
    dec [hl]                                      ; $6a53: $35
    ld h, [hl]                                    ; $6a54: $66
    dec de                                        ; $6a55: $1b
    inc c                                         ; $6a56: $0c
    ret z                                         ; $6a57: $c8

    inc [hl]                                      ; $6a58: $34
    ld h, b                                       ; $6a59: $60
    nop                                           ; $6a5a: $00
    or d                                          ; $6a5b: $b2
    ld e, $de                                     ; $6a5c: $1e $de
    ld e, a                                       ; $6a5e: $5f
    ld d, l                                       ; $6a5f: $55
    ld e, [hl]                                    ; $6a60: $5e

jr_0b8_6a61:
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    rst $38                                       ; $6a63: $ff
    ld a, a                                       ; $6a64: $7f
    pop hl                                        ; $6a65: $e1
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    jr nz, jr_0b8_6a6a                            ; $6a68: $20 $00

jr_0b8_6a6a:
    jr nz, @+$01                                  ; $6a6a: $20 $ff

    ld a, a                                       ; $6a6c: $7f
    pop hl                                        ; $6a6d: $e1
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    jr nz, jr_0b8_6a72                            ; $6a70: $20 $00

jr_0b8_6a72:
    jr nz, jr_0b8_6ac2                            ; $6a72: $20 $4e

jr_0b8_6a74:
    ld c, l                                       ; $6a74: $4d
    ld e, e                                       ; $6a75: $5b
    cpl                                           ; $6a76: $2f
    rst $38                                       ; $6a77: $ff
    ld l, e                                       ; $6a78: $6b
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    ld a, a                                       ; $6a7c: $7f
    nop                                           ; $6a7d: $00
    jr nz, jr_0b8_6a61                            ; $6a7e: $20 $e1

    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    ld l, [hl]                                    ; $6a83: $6e
    ld b, c                                       ; $6a84: $41
    ld [hl], a                                    ; $6a85: $77
    ld l, d                                       ; $6a86: $6a
    ld h, h                                       ; $6a87: $64
    inc c                                         ; $6a88: $0c
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    rst $38                                       ; $6a8b: $ff
    ld a, a                                       ; $6a8c: $7f

jr_0b8_6a8d:
    pop hl                                        ; $6a8d: $e1
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    jr nz, jr_0b8_6a92                            ; $6a90: $20 $00

jr_0b8_6a92:
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ld a, a                                       ; $6a94: $7f
    pop hl                                        ; $6a95: $e1
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    jr nz, jr_0b8_6a9a                            ; $6a98: $20 $00

jr_0b8_6a9a:
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, jr_0b8_6aa0                            ; $6a9e: $20 $00

jr_0b8_6aa0:
    jr nz, jr_0b8_6aa2                            ; $6aa0: $20 $00

jr_0b8_6aa2:
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, jr_0b8_6aa8                            ; $6aa6: $20 $00

jr_0b8_6aa8:
    jr nz, jr_0b8_6aaa                            ; $6aa8: $20 $00

jr_0b8_6aaa:
    jr nz, jr_0b8_6b1a                            ; $6aaa: $20 $6e

    ld b, c                                       ; $6aac: $41
    ld [hl], a                                    ; $6aad: $77
    ld l, d                                       ; $6aae: $6a

jr_0b8_6aaf:
    ld h, h                                       ; $6aaf: $64
    inc c                                         ; $6ab0: $0c
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    rst $38                                       ; $6ab3: $ff
    ld a, a                                       ; $6ab4: $7f
    nop                                           ; $6ab5: $00
    jr nz, jr_0b8_6b1c                            ; $6ab6: $20 $64

    inc c                                         ; $6ab8: $0c
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    nop                                           ; $6abd: $00
    jr nz, jr_0b8_6b24                            ; $6abe: $20 $64

    inc c                                         ; $6ac0: $0c
    nop                                           ; $6ac1: $00

jr_0b8_6ac2:
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b8_6ac6                            ; $6ac4: $20 $00

jr_0b8_6ac6:
    jr nz, jr_0b8_6ac8                            ; $6ac6: $20 $00

jr_0b8_6ac8:
    jr nz, jr_0b8_6aca                            ; $6ac8: $20 $00

jr_0b8_6aca:
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    jr nz, jr_0b8_6ace                            ; $6acc: $20 $00

jr_0b8_6ace:
    jr nz, jr_0b8_6ad0                            ; $6ace: $20 $00

jr_0b8_6ad0:
    jr nz, jr_0b8_6ad2                            ; $6ad0: $20 $00

jr_0b8_6ad2:
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b8_6ad6                            ; $6ad4: $20 $00

jr_0b8_6ad6:
    jr nz, jr_0b8_6ad8                            ; $6ad6: $20 $00

jr_0b8_6ad8:
    jr nz, jr_0b8_6ada                            ; $6ad8: $20 $00

jr_0b8_6ada:
    jr nz, jr_0b8_6adc                            ; $6ada: $20 $00

jr_0b8_6adc:
    jr nz, jr_0b8_6ade                            ; $6adc: $20 $00

jr_0b8_6ade:
    jr nz, jr_0b8_6ae0                            ; $6ade: $20 $00

jr_0b8_6ae0:
    jr nz, jr_0b8_6ae2                            ; $6ae0: $20 $00

jr_0b8_6ae2:
    jr nz, jr_0b8_6ae4                            ; $6ae2: $20 $00

jr_0b8_6ae4:
    jr nz, jr_0b8_6ae6                            ; $6ae4: $20 $00

jr_0b8_6ae6:
    jr nz, jr_0b8_6aaf                            ; $6ae6: $20 $c7

    inc d                                         ; $6ae8: $14
    nop                                           ; $6ae9: $00
    jr nz, jr_0b8_6aec                            ; $6aea: $20 $00

jr_0b8_6aec:
    jr nz, jr_0b8_6aee                            ; $6aec: $20 $00

jr_0b8_6aee:
    jr nz, @-$37                                  ; $6aee: $20 $c7

    inc d                                         ; $6af0: $14
    nop                                           ; $6af1: $00
    jr nz, jr_0b8_6af4                            ; $6af2: $20 $00

jr_0b8_6af4:
    jr nz, jr_0b8_6af6                            ; $6af4: $20 $00

jr_0b8_6af6:
    jr nz, @-$37                                  ; $6af6: $20 $c7

    inc d                                         ; $6af8: $14
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    rst $38                                       ; $6afb: $ff
    ld a, a                                       ; $6afc: $7f
    nop                                           ; $6afd: $00
    jr nz, jr_0b8_6b00                            ; $6afe: $20 $00

jr_0b8_6b00:
    jr nz, jr_0b8_6b02                            ; $6b00: $20 $00

jr_0b8_6b02:
    jr nz, @+$01                                  ; $6b02: $20 $ff

    ld a, a                                       ; $6b04: $7f
    nop                                           ; $6b05: $00
    jr nz, jr_0b8_6b08                            ; $6b06: $20 $00

jr_0b8_6b08:
    jr nz, jr_0b8_6b0a                            ; $6b08: $20 $00

jr_0b8_6b0a:
    jr nz, @+$01                                  ; $6b0a: $20 $ff

    ld a, a                                       ; $6b0c: $7f
    nop                                           ; $6b0d: $00
    jr nz, jr_0b8_6b10                            ; $6b0e: $20 $00

jr_0b8_6b10:
    jr nz, jr_0b8_6b12                            ; $6b10: $20 $00

jr_0b8_6b12:
    jr nz, @+$01                                  ; $6b12: $20 $ff

    ld a, a                                       ; $6b14: $7f
    nop                                           ; $6b15: $00
    jr nz, jr_0b8_6b18                            ; $6b16: $20 $00

jr_0b8_6b18:
    jr nz, jr_0b8_6b1a                            ; $6b18: $20 $00

jr_0b8_6b1a:
    jr nz, jr_0b8_6b1c                            ; $6b1a: $20 $00

jr_0b8_6b1c:
    jr nz, jr_0b8_6b1e                            ; $6b1c: $20 $00

jr_0b8_6b1e:
    jr nz, @-$37                                  ; $6b1e: $20 $c7

    inc d                                         ; $6b20: $14
    nop                                           ; $6b21: $00
    jr nz, jr_0b8_6b24                            ; $6b22: $20 $00

jr_0b8_6b24:
    jr nz, jr_0b8_6b26                            ; $6b24: $20 $00

jr_0b8_6b26:
    jr nz, @-$37                                  ; $6b26: $20 $c7

    inc d                                         ; $6b28: $14
    nop                                           ; $6b29: $00
    jr nz, jr_0b8_6b2c                            ; $6b2a: $20 $00

jr_0b8_6b2c:
    jr nz, jr_0b8_6b2e                            ; $6b2c: $20 $00

jr_0b8_6b2e:
    jr nz, @-$37                                  ; $6b2e: $20 $c7

    inc d                                         ; $6b30: $14
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    rst $38                                       ; $6b33: $ff
    ld a, a                                       ; $6b34: $7f
    nop                                           ; $6b35: $00
    jr nz, jr_0b8_6b38                            ; $6b36: $20 $00

jr_0b8_6b38:
    jr nz, jr_0b8_6b3a                            ; $6b38: $20 $00

jr_0b8_6b3a:
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    jr nz, jr_0b8_6b3e                            ; $6b3c: $20 $00

jr_0b8_6b3e:
    jr nz, jr_0b8_6b40                            ; $6b3e: $20 $00

jr_0b8_6b40:
    jr nz, jr_0b8_6b42                            ; $6b40: $20 $00

jr_0b8_6b42:
    jr nz, jr_0b8_6b44                            ; $6b42: $20 $00

jr_0b8_6b44:
    jr nz, jr_0b8_6b46                            ; $6b44: $20 $00

jr_0b8_6b46:
    jr nz, jr_0b8_6b48                            ; $6b46: $20 $00

jr_0b8_6b48:
    jr nz, jr_0b8_6b4a                            ; $6b48: $20 $00

jr_0b8_6b4a:
    jr nz, jr_0b8_6b4c                            ; $6b4a: $20 $00

jr_0b8_6b4c:
    jr nz, jr_0b8_6b4e                            ; $6b4c: $20 $00

jr_0b8_6b4e:
    jr nz, jr_0b8_6b50                            ; $6b4e: $20 $00

jr_0b8_6b50:
    jr nz, jr_0b8_6b52                            ; $6b50: $20 $00

jr_0b8_6b52:
    jr nz, jr_0b8_6b54                            ; $6b52: $20 $00

jr_0b8_6b54:
    jr nz, jr_0b8_6b56                            ; $6b54: $20 $00

jr_0b8_6b56:
    jr nz, @-$37                                  ; $6b56: $20 $c7

jr_0b8_6b58:
    inc d                                         ; $6b58: $14
    nop                                           ; $6b59: $00
    jr nz, jr_0b8_6b5c                            ; $6b5a: $20 $00

jr_0b8_6b5c:
    jr nz, jr_0b8_6b5e                            ; $6b5c: $20 $00

jr_0b8_6b5e:
    jr nz, @-$37                                  ; $6b5e: $20 $c7

    inc d                                         ; $6b60: $14
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    rst $38                                       ; $6b63: $ff
    ld a, a                                       ; $6b64: $7f
    nop                                           ; $6b65: $00
    jr nz, @-$37                                  ; $6b66: $20 $c7

    inc d                                         ; $6b68: $14
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    rst $38                                       ; $6b6b: $ff
    ld a, a                                       ; $6b6c: $7f
    ld [hl], h                                    ; $6b6d: $74
    ld bc, $2000                                  ; $6b6e: $01 $00 $20
    nop                                           ; $6b71: $00
    nop                                           ; $6b72: $00
    rst $38                                       ; $6b73: $ff
    ld a, a                                       ; $6b74: $7f
    nop                                           ; $6b75: $00
    jr nz, jr_0b8_6b78                            ; $6b76: $20 $00

jr_0b8_6b78:
    jr nz, jr_0b8_6b7a                            ; $6b78: $20 $00

jr_0b8_6b7a:
    jr nz, @+$01                                  ; $6b7a: $20 $ff

    ld a, a                                       ; $6b7c: $7f
    nop                                           ; $6b7d: $00
    jr nz, jr_0b8_6b80                            ; $6b7e: $20 $00

jr_0b8_6b80:
    jr nz, jr_0b8_6b82                            ; $6b80: $20 $00

jr_0b8_6b82:
    jr nz, @+$01                                  ; $6b82: $20 $ff

    ld a, a                                       ; $6b84: $7f
    nop                                           ; $6b85: $00
    jr nz, jr_0b8_6b88                            ; $6b86: $20 $00

jr_0b8_6b88:
    jr nz, jr_0b8_6b8a                            ; $6b88: $20 $00

jr_0b8_6b8a:
    jr nz, @+$01                                  ; $6b8a: $20 $ff

    ld a, a                                       ; $6b8c: $7f
    nop                                           ; $6b8d: $00
    jr nz, @-$37                                  ; $6b8e: $20 $c7

jr_0b8_6b90:
    inc d                                         ; $6b90: $14
    nop                                           ; $6b91: $00
    jr nz, @+$01                                  ; $6b92: $20 $ff

    ld a, a                                       ; $6b94: $7f
    nop                                           ; $6b95: $00
    jr nz, @-$37                                  ; $6b96: $20 $c7

    inc d                                         ; $6b98: $14
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    rst $38                                       ; $6b9b: $ff
    ld a, a                                       ; $6b9c: $7f
    nop                                           ; $6b9d: $00
    jr nz, @-$37                                  ; $6b9e: $20 $c7

    inc d                                         ; $6ba0: $14
    ld [hl], e                                    ; $6ba1: $73
    ld bc, $0193                                  ; $6ba2: $01 $93 $01
    nop                                           ; $6ba5: $00
    jr nz, jr_0b8_6ba8                            ; $6ba6: $20 $00

jr_0b8_6ba8:
    jr nz, jr_0b8_6baa                            ; $6ba8: $20 $00

jr_0b8_6baa:
    nop                                           ; $6baa: $00
    rst $38                                       ; $6bab: $ff
    ld a, a                                       ; $6bac: $7f
    ld [hl], e                                    ; $6bad: $73
    ld bc, $2000                                  ; $6bae: $01 $00 $20
    nop                                           ; $6bb1: $00
    jr nz, @+$01                                  ; $6bb2: $20 $ff

    ld a, a                                       ; $6bb4: $7f
    ld [hl], e                                    ; $6bb5: $73
    ld bc, $2000                                  ; $6bb6: $01 $00 $20
    nop                                           ; $6bb9: $00
    jr nz, @+$01                                  ; $6bba: $20 $ff

    ld a, a                                       ; $6bbc: $7f
    ld [hl], e                                    ; $6bbd: $73
    ld bc, $2000                                  ; $6bbe: $01 $00 $20
    nop                                           ; $6bc1: $00
    jr nz, jr_0b8_6b58                            ; $6bc2: $20 $94

    ld a, [hl]                                    ; $6bc4: $7e
    ld a, e                                       ; $6bc5: $7b
    ld a, a                                       ; $6bc6: $7f
    cp l                                          ; $6bc7: $bd
    ld a, a                                       ; $6bc8: $7f
    nop                                           ; $6bc9: $00
    jr nz, @-$41                                  ; $6bca: $20 $bd

    ld a, a                                       ; $6bcc: $7f
    sbc $7f                                       ; $6bcd: $de $7f
    cp l                                          ; $6bcf: $bd
    ld a, a                                       ; $6bd0: $7f
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    rst $38                                       ; $6bd3: $ff
    ld a, a                                       ; $6bd4: $7f
    ld [hl], d                                    ; $6bd5: $72

jr_0b8_6bd6:
    ld bc, $2000                                  ; $6bd6: $01 $00 $20
    sub d                                         ; $6bd9: $92
    ld bc, $2000                                  ; $6bda: $01 $00 $20
    call $ce01                                    ; $6bdd: $cd $01 $ce
    ld bc, $0000                                  ; $6be0: $01 $00 $00
    rst $38                                       ; $6be3: $ff
    ld a, a                                       ; $6be4: $7f
    sub d                                         ; $6be5: $92
    ld bc, $2000                                  ; $6be6: $01 $00 $20
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    jr nz, jr_0b8_6b80                            ; $6bec: $20 $92

    ld bc, $2000                                  ; $6bee: $01 $00 $20
    nop                                           ; $6bf1: $00
    jr nz, jr_0b8_6bf4                            ; $6bf2: $20 $00

jr_0b8_6bf4:
    jr nz, jr_0b8_6b88                            ; $6bf4: $20 $92

    ld bc, $2000                                  ; $6bf6: $01 $00 $20
    nop                                           ; $6bf9: $00
    jr nz, jr_0b8_6b90                            ; $6bfa: $20 $94

    ld a, [hl]                                    ; $6bfc: $7e
    jp Jump_0b8_5a48                              ; $6bfd: $c3 $48 $5a


    ld a, a                                       ; $6c00: $7f
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    ld sp, $7b7e                                  ; $6c03: $31 $7e $7b
    ld a, a                                       ; $6c06: $7f
    nop                                           ; $6c07: $00
    jr nz, jr_0b8_6c0a                            ; $6c08: $20 $00

jr_0b8_6c0a:
    nop                                           ; $6c0a: $00
    rst $38                                       ; $6c0b: $ff
    ld a, a                                       ; $6c0c: $7f
    sub c                                         ; $6c0d: $91
    ld bc, $0192                                  ; $6c0e: $01 $92 $01
    add hl, bc                                    ; $6c11: $09
    inc e                                         ; $6c12: $1c
    ld e, [hl]                                    ; $6c13: $5e
    ld a, d                                       ; $6c14: $7a
    sub b                                         ; $6c15: $90
    ld bc, $7f7f                                  ; $6c16: $01 $7f $7f
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00

jr_0b8_6c1b:
    rra                                           ; $6c1b: $1f
    ld a, e                                       ; $6c1c: $7b
    sub b                                         ; $6c1d: $90
    ld bc, $2009                                  ; $6c1e: $01 $09 $20
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    rst $38                                       ; $6c23: $ff
    ld a, a                                       ; $6c24: $7f
    nop                                           ; $6c25: $00
    jr nz, @+$0b                                  ; $6c26: $20 $09

    jr nz, jr_0b8_6c2a                            ; $6c28: $20 $00

jr_0b8_6c2a:
    jr nz, @+$01                                  ; $6c2a: $20 $ff

    ld a, a                                       ; $6c2c: $7f
    nop                                           ; $6c2d: $00
    jr nz, @+$0b                                  ; $6c2e: $20 $09

    jr nz, jr_0b8_6c32                            ; $6c30: $20 $00

jr_0b8_6c32:
    jr nz, jr_0b8_6bd6                            ; $6c32: $20 $a2

    ld b, b                                       ; $6c34: $40
    ld b, a                                       ; $6c35: $47
    ld e, c                                       ; $6c36: $59
    sub d                                         ; $6c37: $92
    ld bc, $0000                                  ; $6c38: $01 $00 $00
    cp $7f                                        ; $6c3b: $fe $7f
    jp LCDCInterrupt                              ; $6c3d: $c3 $48 $00


    jr nz, jr_0b8_6c42                            ; $6c40: $20 $00

jr_0b8_6c42:
    nop                                           ; $6c42: $00
    xor a                                         ; $6c43: $af
    ld bc, $01b0                                  ; $6c44: $01 $b0 $01
    nop                                           ; $6c47: $00

jr_0b8_6c48:
    jr nz, jr_0b8_6c50                            ; $6c48: $20 $06

    jr jr_0b8_6c48                                ; $6c4a: $18 $fc

    ld [hl], b                                    ; $6c4c: $70
    ld e, a                                       ; $6c4d: $5f
    ld a, d                                       ; $6c4e: $7a
    xor a                                         ; $6c4f: $af

jr_0b8_6c50:
    ld bc, $2009                                  ; $6c50: $01 $09 $20
    ld a, $79                                     ; $6c53: $3e $79
    xor a                                         ; $6c55: $af
    ld bc, $7e7e                                  ; $6c56: $01 $7e $7e
    nop                                           ; $6c59: $00

jr_0b8_6c5a:
    nop                                           ; $6c5a: $00
    rst $38                                       ; $6c5b: $ff
    ld a, a                                       ; $6c5c: $7f
    rst $08                                       ; $6c5d: $cf
    ld bc, $2000                                  ; $6c5e: $01 $00 $20
    nop                                           ; $6c61: $00
    jr nz, @+$01                                  ; $6c62: $20 $ff

    ld a, a                                       ; $6c64: $7f
    rst $08                                       ; $6c65: $cf
    ld bc, $2000                                  ; $6c66: $01 $00 $20
    nop                                           ; $6c69: $00
    jr nz, jr_0b8_6c1b                            ; $6c6a: $20 $af

    ld bc, $01b0                                  ; $6c6c: $01 $b0 $01
    nop                                           ; $6c6f: $00
    jr nz, jr_0b8_6c72                            ; $6c70: $20 $00

jr_0b8_6c72:
    nop                                           ; $6c72: $00
    or a                                          ; $6c73: $b7
    ld a, a                                       ; $6c74: $7f
    cp $7f                                        ; $6c75: $fe $7f
    nop                                           ; $6c77: $00
    jr nz, @+$0a                                  ; $6c78: $20 $08

    jr nz, jr_0b8_6c5a                            ; $6c7a: $20 $de

    ld a, a                                       ; $6c7c: $7f
    adc $01                                       ; $6c7d: $ce $01
    xor a                                         ; $6c7f: $af
    ld bc, $2008                                  ; $6c80: $01 $08 $20
    sbc a                                         ; $6c83: $9f
    ld a, l                                       ; $6c84: $7d
    ld [hl], e                                    ; $6c85: $73
    ld c, b                                       ; $6c86: $48
    ld a, [hl]                                    ; $6c87: $7e
    ld a, e                                       ; $6c88: $7b
    dec hl                                        ; $6c89: $2b
    inc l                                         ; $6c8a: $2c
    db $fd                                        ; $6c8b: $fd
    ld [hl], h                                    ; $6c8c: $74
    sbc [hl]                                      ; $6c8d: $9e
    ld a, d                                       ; $6c8e: $7a

jr_0b8_6c8f:
    call Call_000_0001                            ; $6c8f: $cd $01 $00
    nop                                           ; $6c92: $00
    rst $38                                       ; $6c93: $ff
    ld a, a                                       ; $6c94: $7f

jr_0b8_6c95:
    call $ce01                                    ; $6c95: $cd $01 $ce
    ld bc, $0000                                  ; $6c98: $01 $00 $00
    nop                                           ; $6c9b: $00
    jr nz, @-$31                                  ; $6c9c: $20 $cd

    ld bc, $01ce                                  ; $6c9e: $01 $ce $01
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    rst $38                                       ; $6ca3: $ff
    ld a, a                                       ; $6ca4: $7f
    nop                                           ; $6ca5: $00
    jr nz, @-$4f                                  ; $6ca6: $20 $af

jr_0b8_6ca8:
    ld bc, $7f34                                  ; $6ca8: $01 $34 $7f
    ld a, [$977f]                                 ; $6cab: $fa $7f $97
    ld a, a                                       ; $6cae: $7f
    cp $7f                                        ; $6caf: $fe $7f
    ld b, a                                       ; $6cb1: $47
    jr nz, @+$39                                  ; $6cb2: $20 $37

    ld a, a                                       ; $6cb4: $7f
    call Call_0b8_5e01                            ; $6cb5: $cd $01 $5e
    ld a, d                                       ; $6cb8: $7a
    add [hl]                                      ; $6cb9: $86
    jr nz, jr_0b8_6c95                            ; $6cba: $20 $d9

    ld h, h                                       ; $6cbc: $64
    inc e                                         ; $6cbd: $1c
    halt                                          ; $6cbe: $76
    ld e, $7b                                     ; $6cbf: $1e $7b
    ld [$db1c], sp                                ; $6cc1: $08 $1c $db
    ld l, b                                       ; $6cc4: $68

jr_0b8_6cc5:
    cp a                                          ; $6cc5: $bf
    ld a, [hl]                                    ; $6cc6: $7e
    ld d, b                                       ; $6cc7: $50
    inc a                                         ; $6cc8: $3c
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    rst $38                                       ; $6ccb: $ff
    ld a, a                                       ; $6ccc: $7f
    db $ec                                        ; $6ccd: $ec
    ld bc, $01ed                                  ; $6cce: $01 $ed $01
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    rst $38                                       ; $6cd3: $ff
    ld a, a                                       ; $6cd4: $7f
    nop                                           ; $6cd5: $00
    jr nz, jr_0b8_6cc5                            ; $6cd6: $20 $ed

    ld bc, $0000                                  ; $6cd8: $01 $00 $00
    rst $38                                       ; $6cdb: $ff
    ld a, a                                       ; $6cdc: $7f

jr_0b8_6cdd:
    nop                                           ; $6cdd: $00
    jr nz, jr_0b8_6d3e                            ; $6cde: $20 $5e

    ld a, d                                       ; $6ce0: $7a
    ld b, c                                       ; $6ce1: $41
    jr nz, jr_0b8_6c8f                            ; $6ce2: $20 $ab

    ld h, l                                       ; $6ce4: $65
    db $eb                                        ; $6ce5: $eb
    ld bc, $7f34                                  ; $6ce6: $01 $34 $7f
    push hl                                       ; $6ce9: $e5
    jr nz, jr_0b8_6cfb                            ; $6cea: $20 $0f

    ld a, $0d                                     ; $6cec: $3e $0d
    ld l, [hl]                                    ; $6cee: $6e
    jp c, $e568                                   ; $6cef: $da $68 $e5

    jr nz, jr_0b8_6ca8                            ; $6cf2: $20 $b4

    ld d, b                                       ; $6cf4: $50
    ld e, [hl]                                    ; $6cf5: $5e
    halt                                          ; $6cf6: $76
    db $10                                        ; $6cf7: $10
    ld a, $0a                                     ; $6cf8: $3e $0a
    inc h                                         ; $6cfa: $24

jr_0b8_6cfb:
    jp c, $9568                                   ; $6cfb: $da $68 $95

    ld d, h                                       ; $6cfe: $54
    ld e, l                                       ; $6cff: $5d
    ld a, d                                       ; $6d00: $7a
    add hl, bc                                    ; $6d01: $09
    jr nz, jr_0b8_6d0e                            ; $6d02: $20 $0a

    ld [bc], a                                    ; $6d04: $02
    db $eb                                        ; $6d05: $eb
    ld bc, $7a5d                                  ; $6d06: $01 $5d $7a
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    rst $38                                       ; $6d0b: $ff
    ld a, a                                       ; $6d0c: $7f
    nop                                           ; $6d0d: $00

jr_0b8_6d0e:
    jr nz, jr_0b8_6d1a                            ; $6d0e: $20 $0a

    ld [bc], a                                    ; $6d10: $02
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    sub h                                         ; $6d13: $94
    ld a, [hl]                                    ; $6d14: $7e
    sbc $7f                                       ; $6d15: $de $7f
    nop                                           ; $6d17: $00
    jr nz, jr_0b8_6cdd                            ; $6d18: $20 $c3

jr_0b8_6d1a:
    ld b, h                                       ; $6d1a: $44
    xor e                                         ; $6d1b: $ab
    ld h, l                                       ; $6d1c: $65
    ld a, [bc]                                    ; $6d1d: $0a
    ld [bc], a                                    ; $6d1e: $02
    dec d                                         ; $6d1f: $15
    ld a, a                                       ; $6d20: $7f
    call nz, $a224                                ; $6d21: $c4 $24 $a2
    ld [hl], d                                    ; $6d24: $72
    adc e                                         ; $6d25: $8b
    ld bc, $6f7f                                  ; $6d26: $01 $7f $6f
    add a                                         ; $6d29: $87
    inc d                                         ; $6d2a: $14
    and d                                         ; $6d2b: $a2
    ld [hl], d                                    ; $6d2c: $72
    ld a, a                                       ; $6d2d: $7f
    ld a, a                                       ; $6d2e: $7f
    or [hl]                                       ; $6d2f: $b6
    ld e, b                                       ; $6d30: $58
    dec hl                                        ; $6d31: $2b
    jr z, jr_0b8_6d8e                             ; $6d32: $28 $5a

jr_0b8_6d34:
    ld l, c                                       ; $6d34: $69
    sub l                                         ; $6d35: $95
    ld d, b                                       ; $6d36: $50
    sbc l                                         ; $6d37: $9d
    halt                                          ; $6d38: $76

jr_0b8_6d39:
    add hl, bc                                    ; $6d39: $09
    jr nz, jr_0b8_6d9a                            ; $6d3a: $20 $5e

    ld a, d                                       ; $6d3c: $7a
    add hl, bc                                    ; $6d3d: $09

jr_0b8_6d3e:
    ld [bc], a                                    ; $6d3e: $02
    ld a, [bc]                                    ; $6d3f: $0a
    ld [bc], a                                    ; $6d40: $02
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    rst $38                                       ; $6d43: $ff
    ld a, a                                       ; $6d44: $7f
    add hl, bc                                    ; $6d45: $09
    ld [bc], a                                    ; $6d46: $02
    nop                                           ; $6d47: $00
    jr nz, jr_0b8_6d4a                            ; $6d48: $20 $00

jr_0b8_6d4a:
    nop                                           ; $6d4a: $00
    sub h                                         ; $6d4b: $94
    ld a, [hl]                                    ; $6d4c: $7e
    cp l                                          ; $6d4d: $bd
    ld a, a                                       ; $6d4e: $7f
    and d                                         ; $6d4f: $a2
    ld b, b                                       ; $6d50: $40
    and d                                         ; $6d51: $a2
    ld b, b                                       ; $6d52: $40
    db $10                                        ; $6d53: $10
    ld a, [hl]                                    ; $6d54: $7e
    ld [$1802], sp                                ; $6d55: $08 $02 $18
    ld a, a                                       ; $6d58: $7f
    ld b, h                                       ; $6d59: $44
    jr z, jr_0b8_6d34                             ; $6d5a: $28 $d8

    ld h, b                                       ; $6d5c: $60
    inc l                                         ; $6d5d: $2c
    ld bc, $72be                                  ; $6d5e: $01 $be $72
    ld l, c                                       ; $6d61: $69
    inc b                                         ; $6d62: $04
    ld b, d                                       ; $6d63: $42
    ld d, c                                       ; $6d64: $51
    dec d                                         ; $6d65: $15
    dec a                                         ; $6d66: $3d
    ld e, h                                       ; $6d67: $5c
    ld h, d                                       ; $6d68: $62
    add hl, bc                                    ; $6d69: $09
    inc h                                         ; $6d6a: $24
    ret c                                         ; $6d6b: $d8

    ld e, h                                       ; $6d6c: $5c
    ld e, h                                       ; $6d6d: $5c
    ld [hl], l                                    ; $6d6e: $75
    ld [hl], d                                    ; $6d6f: $72
    ld c, b                                       ; $6d70: $48
    daa                                           ; $6d71: $27
    ld [bc], a                                    ; $6d72: $02
    ld [hl], d                                    ; $6d73: $72
    ld c, b                                       ; $6d74: $48
    add hl, bc                                    ; $6d75: $09
    jr nz, @+$60                                  ; $6d76: $20 $5e

    ld a, d                                       ; $6d78: $7a
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    rst $38                                       ; $6d7b: $ff
    ld a, a                                       ; $6d7c: $7f
    daa                                           ; $6d7d: $27
    ld [bc], a                                    ; $6d7e: $02
    nop                                           ; $6d7f: $00
    jr nz, jr_0b8_6d82                            ; $6d80: $20 $00

jr_0b8_6d82:
    ld [$7fff], sp                                ; $6d82: $08 $ff $7f
    daa                                           ; $6d85: $27
    ld [bc], a                                    ; $6d86: $02
    and d                                         ; $6d87: $a2
    ld b, b                                       ; $6d88: $40
    daa                                           ; $6d89: $27
    ld [bc], a                                    ; $6d8a: $02
    ld a, e                                       ; $6d8b: $7b
    ld a, a                                       ; $6d8c: $7f
    add hl, bc                                    ; $6d8d: $09

jr_0b8_6d8e:
    jr nz, jr_0b8_6def                            ; $6d8e: $20 $5f

    ld a, [hl]                                    ; $6d90: $7e
    ld l, e                                       ; $6d91: $6b
    db $10                                        ; $6d92: $10
    ret c                                         ; $6d93: $d8

    ld h, b                                       ; $6d94: $60
    ld a, e                                       ; $6d95: $7b
    ld b, [hl]                                    ; $6d96: $46
    ld e, $7b                                     ; $6d97: $1e $7b
    nop                                           ; $6d99: $00

jr_0b8_6d9a:
    nop                                           ; $6d9a: $00
    sub $31                                       ; $6d9b: $d6 $31
    ld a, e                                       ; $6d9d: $7b
    ld c, d                                       ; $6d9e: $4a
    ld l, e                                       ; $6d9f: $6b
    db $10                                        ; $6da0: $10
    add hl, bc                                    ; $6da1: $09
    jr nz, jr_0b8_6d39                            ; $6da2: $20 $95

    ld d, h                                       ; $6da4: $54
    cp [hl]                                       ; $6da5: $be
    ld a, c                                       ; $6da6: $79
    db $db                                        ; $6da7: $db
    ld l, h                                       ; $6da8: $6c
    rlca                                          ; $6da9: $07
    inc e                                         ; $6daa: $1c
    sub h                                         ; $6dab: $94
    ld d, b                                       ; $6dac: $50
    ld h, $02                                     ; $6dad: $26 $02
    ld a, a                                       ; $6daf: $7f
    ld a, [hl]                                    ; $6db0: $7e
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    rst $38                                       ; $6db3: $ff
    ld a, a                                       ; $6db4: $7f
    ld h, $02                                     ; $6db5: $26 $02
    nop                                           ; $6db7: $00
    jr nz, jr_0b8_6dba                            ; $6db8: $20 $00

jr_0b8_6dba:
    nop                                           ; $6dba: $00
    rst $38                                       ; $6dbb: $ff
    ld a, a                                       ; $6dbc: $7f
    ld b, [hl]                                    ; $6dbd: $46
    ld [bc], a                                    ; $6dbe: $02
    nop                                           ; $6dbf: $00
    jr nz, jr_0b8_6de9                            ; $6dc0: $20 $27

    jr z, jr_0b8_6dd4                             ; $6dc2: $28 $10

    ld a, [hl]                                    ; $6dc4: $7e
    ld b, [hl]                                    ; $6dc5: $46
    ld [bc], a                                    ; $6dc6: $02
    add hl, sp                                    ; $6dc7: $39
    ld a, a                                       ; $6dc8: $7f
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    ld a, h                                       ; $6dcb: $7c
    ld l, l                                       ; $6dcc: $6d
    cp c                                          ; $6dcd: $b9
    ld d, d                                       ; $6dce: $52
    ld c, e                                       ; $6dcf: $4b

jr_0b8_6dd0:
    inc e                                         ; $6dd0: $1c
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    rst $30                                       ; $6dd3: $f7

jr_0b8_6dd4:
    ld sp, $52b9                                  ; $6dd4: $31 $b9 $52

jr_0b8_6dd7:
    add $18                                       ; $6dd7: $c6 $18
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    db $db                                        ; $6ddb: $db
    ld l, b                                       ; $6ddc: $68
    ld hl, sp+$35                                 ; $6ddd: $f8 $35
    ld a, [bc]                                    ; $6ddf: $0a
    inc h                                         ; $6de0: $24
    inc b                                         ; $6de1: $04
    db $10                                        ; $6de2: $10
    inc de                                        ; $6de3: $13
    ld c, l                                       ; $6de4: $4d
    ld b, l                                       ; $6de5: $45
    ld [bc], a                                    ; $6de6: $02
    cp $7e                                        ; $6de7: $fe $7e

jr_0b8_6de9:
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    rst $38                                       ; $6deb: $ff
    ld a, a                                       ; $6dec: $7f
    ld b, l                                       ; $6ded: $45
    ld [bc], a                                    ; $6dee: $02

jr_0b8_6def:
    nop                                           ; $6def: $00
    jr nz, jr_0b8_6df2                            ; $6df0: $20 $00

jr_0b8_6df2:
    inc c                                         ; $6df2: $0c
    rst $38                                       ; $6df3: $ff
    ld a, a                                       ; $6df4: $7f
    ld b, l                                       ; $6df5: $45
    ld [bc], a                                    ; $6df6: $02
    ld a, b                                       ; $6df7: $78
    ld [bc], a                                    ; $6df8: $02
    ld b, e                                       ; $6df9: $43
    jr jr_0b8_6dd7                                ; $6dfa: $18 $db

    ld [bc], a                                    ; $6dfc: $02
    sbc $79                                       ; $6dfd: $de $79
    ld b, l                                       ; $6dff: $45
    ld [bc], a                                    ; $6e00: $02
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    ld d, l                                       ; $6e03: $55
    ld c, d                                       ; $6e04: $4a
    sbc l                                         ; $6e05: $9d
    ld [hl], l                                    ; $6e06: $75
    ld l, b                                       ; $6e07: $68
    jr jr_0b8_6dd0                                ; $6e08: $18 $c6

    jr jr_0b8_6e1b                                ; $6e0a: $18 $0f

    ld b, d                                       ; $6e0c: $42
    or h                                          ; $6e0d: $b4
    ld d, d                                       ; $6e0e: $52
    ld e, d                                       ; $6e0f: $5a
    ld b, [hl]                                    ; $6e10: $46
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    or a                                          ; $6e13: $b7
    ld e, h                                       ; $6e14: $5c
    rla                                           ; $6e15: $17
    ld [hl], $48                                  ; $6e16: $36 $48
    inc e                                         ; $6e18: $1c
    inc h                                         ; $6e19: $24
    inc c                                         ; $6e1a: $0c

jr_0b8_6e1b:
    or e                                          ; $6e1b: $b3
    ld c, l                                       ; $6e1c: $4d
    ld b, l                                       ; $6e1d: $45
    ld [bc], a                                    ; $6e1e: $02
    jr c, @+$69                                   ; $6e1f: $38 $67

    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    rst $38                                       ; $6e23: $ff
    ld a, a                                       ; $6e24: $7f
    ld b, l                                       ; $6e25: $45
    ld [bc], a                                    ; $6e26: $02
    nop                                           ; $6e27: $00
    jr nz, jr_0b8_6e2c                            ; $6e28: $20 $02

    nop                                           ; $6e2a: $00
    rst $38                                       ; $6e2b: $ff

jr_0b8_6e2c:
    ld a, a                                       ; $6e2c: $7f
    ld b, l                                       ; $6e2d: $45
    ld [bc], a                                    ; $6e2e: $02
    nop                                           ; $6e2f: $00
    jr nz, @+$48                                  ; $6e30: $20 $46

    nop                                           ; $6e32: $00
    or c                                          ; $6e33: $b1
    ld bc, $0278                                  ; $6e34: $01 $78 $02
    ld e, a                                       ; $6e37: $5f
    inc bc                                        ; $6e38: $03
    ld b, [hl]                                    ; $6e39: $46
    nop                                           ; $6e3a: $00
    ld d, a                                       ; $6e3b: $57
    ld [bc], a                                    ; $6e3c: $02
    ld e, a                                       ; $6e3d: $5f
    inc bc                                        ; $6e3e: $03
    ld [hl], b                                    ; $6e3f: $70
    ld bc, $14a6                                  ; $6e40: $01 $a6 $14
    or [hl]                                       ; $6e43: $b6
    dec l                                         ; $6e44: $2d
    ld e, d                                       ; $6e45: $5a
    ld b, [hl]                                    ; $6e46: $46
    xor h                                         ; $6e47: $ac
    dec [hl]                                      ; $6e48: $35
    ld b, d                                       ; $6e49: $42
    ld [$4212], sp                                ; $6e4a: $08 $12 $42
    jr jr_0b8_6eb6                                ; $6e4d: $18 $67

    db $dd                                        ; $6e4f: $dd
    ld a, e                                       ; $6e50: $7b
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    ld b, l                                       ; $6e53: $45
    ld [bc], a                                    ; $6e54: $02
    rrca                                          ; $6e55: $0f
    ld b, d                                       ; $6e56: $42
    adc c                                         ; $6e57: $89
    inc c                                         ; $6e58: $0c
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    rst $38                                       ; $6e5b: $ff
    ld a, a                                       ; $6e5c: $7f
    ld b, l                                       ; $6e5d: $45
    ld [bc], a                                    ; $6e5e: $02
    nop                                           ; $6e5f: $00
    jr nz, jr_0b8_6e62                            ; $6e60: $20 $00

jr_0b8_6e62:
    nop                                           ; $6e62: $00
    rst $38                                       ; $6e63: $ff
    ld a, a                                       ; $6e64: $7f
    ld b, l                                       ; $6e65: $45
    ld [bc], a                                    ; $6e66: $02
    nop                                           ; $6e67: $00
    jr nz, @+$26                                  ; $6e68: $20 $24

    nop                                           ; $6e6a: $00
    ld b, l                                       ; $6e6b: $45
    ld [bc], a                                    ; $6e6c: $02
    ld b, [hl]                                    ; $6e6d: $46
    nop                                           ; $6e6e: $00
    ld h, a                                       ; $6e6f: $67
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    ld d, $36                                     ; $6e73: $16 $36
    add sp, $14                                   ; $6e75: $e8 $14
    jp c, $8452                                   ; $6e77: $da $52 $84

    db $10                                        ; $6e7a: $10
    rst $10                                       ; $6e7b: $d7
    ld sp, $7bdd                                  ; $6e7c: $31 $dd $7b
    cp l                                          ; $6e7f: $bd
    ld d, d                                       ; $6e80: $52
    ld hl, $5104                                  ; $6e81: $21 $04 $51
    ld c, d                                       ; $6e84: $4a
    jr c, jr_0b8_6eee                             ; $6e85: $38 $67

    jr z, jr_0b8_6eae                             ; $6e87: $28 $25

    inc hl                                        ; $6e89: $23
    nop                                           ; $6e8a: $00
    ld b, l                                       ; $6e8b: $45
    ld [bc], a                                    ; $6e8c: $02
    xor $04                                       ; $6e8d: $ee $04
    ld [hl], e                                    ; $6e8f: $73
    add hl, de                                    ; $6e90: $19
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    rst $38                                       ; $6e93: $ff
    ld a, a                                       ; $6e94: $7f
    ld b, l                                       ; $6e95: $45
    ld [bc], a                                    ; $6e96: $02
    nop                                           ; $6e97: $00
    jr nz, jr_0b8_6e9a                            ; $6e98: $20 $00

jr_0b8_6e9a:
    nop                                           ; $6e9a: $00
    rst $38                                       ; $6e9b: $ff
    ld a, a                                       ; $6e9c: $7f
    ld b, l                                       ; $6e9d: $45
    ld [bc], a                                    ; $6e9e: $02
    nop                                           ; $6e9f: $00
    jr nz, jr_0b8_6ee7                            ; $6ea0: $20 $45

    nop                                           ; $6ea2: $00
    dec sp                                        ; $6ea3: $3b
    ld a, [hl+]                                   ; $6ea4: $2a
    ld b, l                                       ; $6ea5: $45
    ld [bc], a                                    ; $6ea6: $02
    call RST_08                                   ; $6ea7: $cd $08 $00
    nop                                           ; $6eaa: $00
    ld d, b                                       ; $6eab: $50
    ld c, d                                       ; $6eac: $4a
    ret z                                         ; $6ead: $c8

jr_0b8_6eae:
    inc d                                         ; $6eae: $14

jr_0b8_6eaf:
    rst $10                                       ; $6eaf: $d7
    add hl, hl                                    ; $6eb0: $29
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    sub e                                         ; $6eb3: $93
    ld d, d                                       ; $6eb4: $52
    ld a, e                                       ; $6eb5: $7b

jr_0b8_6eb6:
    ld [hl], e                                    ; $6eb6: $73
    xor b                                         ; $6eb7: $a8
    inc d                                         ; $6eb8: $14
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    db $10                                        ; $6ebb: $10
    ld b, [hl]                                    ; $6ebc: $46
    adc d                                         ; $6ebd: $8a
    nop                                           ; $6ebe: $00
    add $18                                       ; $6ebf: $c6 $18
    adc $04                                       ; $6ec1: $ce $04
    jr jr_0b8_6eeb                                ; $6ec3: $18 $26

    or l                                          ; $6ec5: $b5
    add hl, de                                    ; $6ec6: $19
    sbc l                                         ; $6ec7: $9d
    ld [hl], $00                                  ; $6ec8: $36 $00
    nop                                           ; $6eca: $00
    rst $38                                       ; $6ecb: $ff
    ld a, a                                       ; $6ecc: $7f
    nop                                           ; $6ecd: $00
    jr nz, jr_0b8_6ef3                            ; $6ece: $20 $23

    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    rst $38                                       ; $6ed3: $ff
    ld a, a                                       ; $6ed4: $7f
    nop                                           ; $6ed5: $00
    jr nz, jr_0b8_6eaf                            ; $6ed6: $20 $d7

    add hl, hl                                    ; $6ed8: $29
    ld b, [hl]                                    ; $6ed9: $46
    nop                                           ; $6eda: $00
    or [hl]                                       ; $6edb: $b6
    dec e                                         ; $6edc: $1d
    ld b, l                                       ; $6edd: $45
    ld [bc], a                                    ; $6ede: $02
    dec sp                                        ; $6edf: $3b
    ld a, [hl+]                                   ; $6ee0: $2a
    ld [hl+], a                                   ; $6ee1: $22
    inc b                                         ; $6ee2: $04
    sub e                                         ; $6ee3: $93
    ld d, d                                       ; $6ee4: $52
    cp $2d                                        ; $6ee5: $fe $2d

jr_0b8_6ee7:
    ld e, c                                       ; $6ee7: $59
    ld l, a                                       ; $6ee8: $6f
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00

jr_0b8_6eeb:
    ld l, d                                       ; $6eeb: $6a
    dec l                                         ; $6eec: $2d

jr_0b8_6eed:
    ld [hl], d                                    ; $6eed: $72

jr_0b8_6eee:
    ld c, [hl]                                    ; $6eee: $4e
    ld [$0121], sp                                ; $6eef: $08 $21 $01
    nop                                           ; $6ef2: $00

jr_0b8_6ef3:
    ld l, d                                       ; $6ef3: $6a
    dec l                                         ; $6ef4: $2d
    ld [hl], d                                    ; $6ef5: $72
    add hl, de                                    ; $6ef6: $19
    and a                                         ; $6ef7: $a7
    inc c                                         ; $6ef8: $0c
    rst $08                                       ; $6ef9: $cf
    inc b                                         ; $6efa: $04
    add hl, de                                    ; $6efb: $19
    ld h, $9e                                     ; $6efc: $26 $9e
    ld [hl-], a                                   ; $6efe: $32
    ld [hl], h                                    ; $6eff: $74
    dec d                                         ; $6f00: $15
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    rst $38                                       ; $6f03: $ff
    ld a, a                                       ; $6f04: $7f
    nop                                           ; $6f05: $00
    jr nz, jr_0b8_6f7c                            ; $6f06: $20 $74

    dec d                                         ; $6f08: $15
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    rst $38                                       ; $6f0b: $ff
    ld a, a                                       ; $6f0c: $7f
    nop                                           ; $6f0d: $00
    jr nz, @+$5b                                  ; $6f0e: $20 $59

    ld l, a                                       ; $6f10: $6f
    inc h                                         ; $6f11: $24
    nop                                           ; $6f12: $00
    ld d, d                                       ; $6f13: $52
    ld de, $0245                                  ; $6f14: $11 $45 $02
    ld a, l                                       ; $6f17: $7d
    add hl, de                                    ; $6f18: $19
    inc bc                                        ; $6f19: $03
    nop                                           ; $6f1a: $00
    call $9e39                                    ; $6f1b: $cd $39 $9e
    ld hl, $6737                                  ; $6f1e: $21 $37 $67
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    push bc                                       ; $6f23: $c5
    jr jr_0b8_6f91                                ; $6f24: $18 $6b

    dec l                                         ; $6f26: $2d
    add h                                         ; $6f27: $84
    db $10                                        ; $6f28: $10
    ld [bc], a                                    ; $6f29: $02
    nop                                           ; $6f2a: $00
    sub h                                         ; $6f2b: $94
    add hl, de                                    ; $6f2c: $19
    ld e, h                                       ; $6f2d: $5c
    ld a, [hl+]                                   ; $6f2e: $2a
    call RST_00                                   ; $6f2f: $cd $00 $00
    nop                                           ; $6f32: $00
    sub l                                         ; $6f33: $95
    add hl, de                                    ; $6f34: $19
    ld e, l                                       ; $6f35: $5d
    ld l, $ad                                     ; $6f36: $2e $ad
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    rst $38                                       ; $6f3b: $ff
    ld a, a                                       ; $6f3c: $7f
    nop                                           ; $6f3d: $00
    jr nz, jr_0b8_6eed                            ; $6f3e: $20 $ad

    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    rst $38                                       ; $6f43: $ff
    ld a, a                                       ; $6f44: $7f
    nop                                           ; $6f45: $00
    jr nz, @+$39                                  ; $6f46: $20 $37

    ld h, a                                       ; $6f48: $67

jr_0b8_6f49:
    ld bc, $1c00                                  ; $6f49: $01 $00 $1c
    add hl, bc                                    ; $6f4c: $09
    adc $04                                       ; $6f4d: $ce $04
    daa                                           ; $6f4f: $27
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    ld a, [c]                                     ; $6f53: $f2
    dec [hl]                                      ; $6f54: $35
    ld d, a                                       ; $6f55: $57
    ld l, a                                       ; $6f56: $6f
    ret                                           ; $6f57: $c9


    inc d                                         ; $6f58: $14
    ld [bc], a                                    ; $6f59: $02
    nop                                           ; $6f5a: $00
    xor $04                                       ; $6f5b: $ee $04
    xor l                                         ; $6f5d: $ad
    dec [hl]                                      ; $6f5e: $35
    or l                                          ; $6f5f: $b5
    ld hl, $0023                                  ; $6f60: $21 $23 $00

jr_0b8_6f63:
    or l                                          ; $6f63: $b5

jr_0b8_6f64:
    add hl, de                                    ; $6f64: $19
    rst $28                                       ; $6f65: $ef
    inc b                                         ; $6f66: $04
    ld sp, hl                                     ; $6f67: $f9
    ld hl, $0046                                  ; $6f68: $21 $46 $00
    ld [hl], e                                    ; $6f6b: $73
    dec d                                         ; $6f6c: $15
    rst $38                                       ; $6f6d: $ff
    ld a, a                                       ; $6f6e: $7f
    ld e, h                                       ; $6f6f: $5c
    ld a, [hl+]                                   ; $6f70: $2a
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    ld a, a                                       ; $6f74: $7f
    nop                                           ; $6f75: $00
    jr nz, @+$5e                                  ; $6f76: $20 $5c

    ld a, [hl+]                                   ; $6f78: $2a
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    rst $38                                       ; $6f7b: $ff

jr_0b8_6f7c:
    ld a, a                                       ; $6f7c: $7f
    nop                                           ; $6f7d: $00
    jr nz, jr_0b8_6f49                            ; $6f7e: $20 $c9

    inc d                                         ; $6f80: $14
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    rst $38                                       ; $6f83: $ff
    ld a, a                                       ; $6f84: $7f
    db $db                                        ; $6f85: $db
    nop                                           ; $6f86: $00
    ld l, d                                       ; $6f87: $6a
    nop                                           ; $6f88: $00
    ld [hl+], a                                   ; $6f89: $22
    nop                                           ; $6f8a: $00
    sub d                                         ; $6f8b: $92
    ld d, d                                       ; $6f8c: $52
    xor l                                         ; $6f8d: $ad
    ld sp, $7fda                                  ; $6f8e: $31 $da $7f

jr_0b8_6f91:
    ld h, $00                                     ; $6f91: $26 $00
    sub [hl]                                      ; $6f93: $96
    dec e                                         ; $6f94: $1d
    ld e, l                                       ; $6f95: $5d
    ld [hl-], a                                   ; $6f96: $32
    xor e                                         ; $6f97: $ab
    ld [$0023], sp                                ; $6f98: $08 $23 $00
    rst $28                                       ; $6f9b: $ef
    ld [$0d53], sp                                ; $6f9c: $08 $53 $0d
    sub l                                         ; $6f9f: $95
    dec d                                         ; $6fa0: $15
    ld bc, $ff00                                  ; $6fa1: $01 $00 $ff
    ld a, a                                       ; $6fa4: $7f
    or [hl]                                       ; $6fa5: $b6
    add hl, de                                    ; $6fa6: $19
    adc d                                         ; $6fa7: $8a
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    jr nz, jr_0b8_6f64                            ; $6fac: $20 $b6

    add hl, de                                    ; $6fae: $19
    adc d                                         ; $6faf: $8a
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00

jr_0b8_6fb3:
    nop                                           ; $6fb3: $00
    jr nz, jr_0b8_6f63                            ; $6fb4: $20 $ad

    ld sp, $7fda                                  ; $6fb6: $31 $da $7f
    ld [bc], a                                    ; $6fb9: $02
    nop                                           ; $6fba: $00
    rst $38                                       ; $6fbb: $ff
    ld a, a                                       ; $6fbc: $7f
    cp d                                          ; $6fbd: $ba
    nop                                           ; $6fbe: $00
    ld c, e                                       ; $6fbf: $4b
    nop                                           ; $6fc0: $00
    xor h                                         ; $6fc1: $ac
    ld sp, $5ab3                                  ; $6fc2: $31 $b3 $5a
    db $db                                        ; $6fc5: $db
    ld a, e                                       ; $6fc6: $7b
    inc d                                         ; $6fc7: $14
    ld a, [bc]                                    ; $6fc8: $0a

jr_0b8_6fc9:
    ld h, $00                                     ; $6fc9: $26 $00
    sub h                                         ; $6fcb: $94
    dec d                                         ; $6fcc: $15
    cp [hl]                                       ; $6fcd: $be
    dec h                                         ; $6fce: $25
    ld a, l                                       ; $6fcf: $7d
    ld l, $46                                     ; $6fd0: $2e $46
    nop                                           ; $6fd2: $00
    ld sp, $b509                                  ; $6fd3: $31 $09 $b5
    add hl, de                                    ; $6fd6: $19
    xor h                                         ; $6fd7: $ac
    inc b                                         ; $6fd8: $04
    ld bc, $ff00                                  ; $6fd9: $01 $00 $ff
    ld a, a                                       ; $6fdc: $7f
    call Call_000_3104                            ; $6fdd: $cd $04 $31
    dec c                                         ; $6fe0: $0d
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    jr nz, jr_0b8_6fb3                            ; $6fe4: $20 $cd

    inc b                                         ; $6fe6: $04
    ld sp, $000d                                  ; $6fe7: $31 $0d $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    jr nz, jr_0b8_6fc9                            ; $6fec: $20 $db

    ld a, e                                       ; $6fee: $7b
    inc d                                         ; $6fef: $14
    ld a, [bc]                                    ; $6ff0: $0a
    inc b                                         ; $6ff1: $04
    nop                                           ; $6ff2: $00
    cp h                                          ; $6ff3: $bc
    ld [hl], a                                    ; $6ff4: $77
    rrca                                          ; $6ff5: $0f
    ld a, $bb                                     ; $6ff6: $3e $bb
    nop                                           ; $6ff8: $00
    add [hl]                                      ; $6ff9: $86
    ld [$4a51], sp                                ; $6ffa: $08 $51 $4a
    cp c                                          ; $6ffd: $b9
    ld [bc], a                                    ; $6ffe: $02
    sbc c                                         ; $6fff: $99
    ld [hl], a                                    ; $7000: $77
    jr z, jr_0b8_7003                             ; $7001: $28 $00

jr_0b8_7003:
    dec sp                                        ; $7003: $3b
    ld de, $2a5b                                  ; $7004: $11 $5b $2a
    xor [hl]                                      ; $7007: $ae
    inc b                                         ; $7008: $04
    inc hl                                        ; $7009: $23
    nop                                           ; $700a: $00
    or a                                          ; $700b: $b7
    dec e                                         ; $700c: $1d
    adc $00                                       ; $700d: $ce $00
    ld l, b                                       ; $700f: $68
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    rst $38                                       ; $7013: $ff
    ld a, a                                       ; $7014: $7f
    xor h                                         ; $7015: $ac
    nop                                           ; $7016: $00
    inc hl                                        ; $7017: $23
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    jr nz, @+$01                                  ; $701a: $20 $ff

    ld a, a                                       ; $701c: $7f
    xor h                                         ; $701d: $ac
    nop                                           ; $701e: $00
    inc hl                                        ; $701f: $23
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    jr nz, jr_0b8_7075                            ; $7022: $20 $51

    ld c, d                                       ; $7024: $4a
    cp c                                          ; $7025: $b9
    ld [bc], a                                    ; $7026: $02
    sbc c                                         ; $7027: $99
    ld [hl], a                                    ; $7028: $77
    inc bc                                        ; $7029: $03
    nop                                           ; $702a: $00
    db $dd                                        ; $702b: $dd
    ld a, e                                       ; $702c: $7b
    adc $39                                       ; $702d: $ce $39
    db $dd                                        ; $702f: $dd
    nop                                           ; $7030: $00
    inc hl                                        ; $7031: $23
    nop                                           ; $7032: $00
    ld d, c                                       ; $7033: $51
    ld b, [hl]                                    ; $7034: $46
    inc d                                         ; $7035: $14
    ld [bc], a                                    ; $7036: $02
    sbc b                                         ; $7037: $98
    ld [hl], e                                    ; $7038: $73
    dec h                                         ; $7039: $25
    nop                                           ; $703a: $00
    jp c, $9504                                   ; $703b: $da $04 $95

    add hl, de                                    ; $703e: $19
    adc $04                                       ; $703f: $ce $04
    ld b, [hl]                                    ; $7041: $46
    nop                                           ; $7042: $00
    ld d, e                                       ; $7043: $53
    ld de, $008b                                  ; $7044: $11 $8b $00
    ld hl, sp+$21                                 ; $7047: $f8 $21
    ld bc, $ff00                                  ; $7049: $01 $00 $ff
    ld a, a                                       ; $704c: $7f
    xor h                                         ; $704d: $ac
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    jr nz, jr_0b8_7052                            ; $7050: $20 $00

jr_0b8_7052:
    jr nz, @+$01                                  ; $7052: $20 $ff

    ld a, a                                       ; $7054: $7f
    xor h                                         ; $7055: $ac
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    jr nz, jr_0b8_705a                            ; $7058: $20 $00

jr_0b8_705a:
    jr nz, jr_0b8_70ad                            ; $705a: $20 $51

    ld b, [hl]                                    ; $705c: $46
    inc d                                         ; $705d: $14
    ld [bc], a                                    ; $705e: $02
    sbc b                                         ; $705f: $98
    ld [hl], e                                    ; $7060: $73
    nop                                           ; $7061: $00

jr_0b8_7062:
    ld [$5ad4], sp                                ; $7062: $08 $d4 $5a
    cp c                                          ; $7065: $b9
    nop                                           ; $7066: $00
    call c, $227b                                 ; $7067: $dc $7b $22
    inc b                                         ; $706a: $04
    adc $35                                       ; $706b: $ce $35
    or h                                          ; $706d: $b4
    ld d, [hl]                                    ; $706e: $56
    ld d, $63                                     ; $706f: $16 $63
    inc h                                         ; $7071: $24
    nop                                           ; $7072: $00
    sub h                                         ; $7073: $94
    nop                                           ; $7074: $00

jr_0b8_7075:
    adc h                                         ; $7075: $8c
    nop                                           ; $7076: $00
    call c, $2300                                 ; $7077: $dc $00 $23
    nop                                           ; $707a: $00
    adc e                                         ; $707b: $8b
    nop                                           ; $707c: $00
    rst $28                                       ; $707d: $ef
    ld [$0046], sp                                ; $707e: $08 $46 $00
    ld bc, $ff00                                  ; $7081: $01 $00 $ff
    ld a, a                                       ; $7084: $7f
    adc d                                         ; $7085: $8a
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    jr nz, jr_0b8_708a                            ; $7088: $20 $00

jr_0b8_708a:
    jr nz, @+$01                                  ; $708a: $20 $ff

    ld a, a                                       ; $708c: $7f
    adc d                                         ; $708d: $8a
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    jr nz, jr_0b8_7092                            ; $7090: $20 $00

jr_0b8_7092:
    jr nz, jr_0b8_7062                            ; $7092: $20 $ce

    dec [hl]                                      ; $7094: $35
    or h                                          ; $7095: $b4
    ld d, [hl]                                    ; $7096: $56
    ld d, $63                                     ; $7097: $16 $63
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    jp c, Jump_000_007b                           ; $709b: $da $7b $00

    jr nz, @+$01                                  ; $709e: $20 $ff

    ld a, a                                       ; $70a0: $7f
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    ld l, e                                       ; $70a3: $6b
    dec l                                         ; $70a4: $2d
    or h                                          ; $70a5: $b4
    ld d, [hl]                                    ; $70a6: $56

jr_0b8_70a7:
    rst $00                                       ; $70a7: $c7
    inc d                                         ; $70a8: $14
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    rst $38                                       ; $70ab: $ff
    ld a, a                                       ; $70ac: $7f

jr_0b8_70ad:
    adc d                                         ; $70ad: $8a
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00

jr_0b8_70b0:
    jr nz, jr_0b8_70b2                            ; $70b0: $20 $00

jr_0b8_70b2:
    nop                                           ; $70b2: $00
    rst $38                                       ; $70b3: $ff
    ld a, a                                       ; $70b4: $7f
    adc d                                         ; $70b5: $8a
    nop                                           ; $70b6: $00
    nop                                           ; $70b7: $00

jr_0b8_70b8:
    jr nz, jr_0b8_70ba                            ; $70b8: $20 $00

jr_0b8_70ba:
    nop                                           ; $70ba: $00
    rst $38                                       ; $70bb: $ff
    ld a, a                                       ; $70bc: $7f
    nop                                           ; $70bd: $00
    jr nz, jr_0b8_70c0                            ; $70be: $20 $00

jr_0b8_70c0:
    jr nz, jr_0b8_70c2                            ; $70c0: $20 $00

jr_0b8_70c2:
    jr nz, @+$01                                  ; $70c2: $20 $ff

    ld a, a                                       ; $70c4: $7f
    nop                                           ; $70c5: $00
    jr nz, jr_0b8_70c8                            ; $70c6: $20 $00

jr_0b8_70c8:
    jr nz, jr_0b8_70ca                            ; $70c8: $20 $00

jr_0b8_70ca:
    jr nz, jr_0b8_7137                            ; $70ca: $20 $6b

    dec l                                         ; $70cc: $2d
    or h                                          ; $70cd: $b4
    ld d, [hl]                                    ; $70ce: $56
    rst $00                                       ; $70cf: $c7
    inc d                                         ; $70d0: $14
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    rst $38                                       ; $70d3: $ff
    ld a, a                                       ; $70d4: $7f
    nop                                           ; $70d5: $00
    jr nz, @-$37                                  ; $70d6: $20 $c7

    inc d                                         ; $70d8: $14
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    rst $38                                       ; $70db: $ff
    ld a, a                                       ; $70dc: $7f
    nop                                           ; $70dd: $00
    jr nz, jr_0b8_70a7                            ; $70de: $20 $c7

    inc d                                         ; $70e0: $14
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    jr nz, jr_0b8_70e6                            ; $70e4: $20 $00

jr_0b8_70e6:
    jr nz, jr_0b8_70e8                            ; $70e6: $20 $00

jr_0b8_70e8:
    jr nz, jr_0b8_70ea                            ; $70e8: $20 $00

jr_0b8_70ea:
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    jr nz, jr_0b8_70ee                            ; $70ec: $20 $00

jr_0b8_70ee:
    jr nz, jr_0b8_70f0                            ; $70ee: $20 $00

jr_0b8_70f0:
    jr nz, jr_0b8_70f2                            ; $70f0: $20 $00

jr_0b8_70f2:
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    jr nz, jr_0b8_70f6                            ; $70f4: $20 $00

jr_0b8_70f6:
    jr nz, jr_0b8_70f8                            ; $70f6: $20 $00

jr_0b8_70f8:
    jr nz, jr_0b8_70fa                            ; $70f8: $20 $00

jr_0b8_70fa:
    jr nz, jr_0b8_70fc                            ; $70fa: $20 $00

jr_0b8_70fc:
    jr nz, jr_0b8_70fe                            ; $70fc: $20 $00

jr_0b8_70fe:
    jr nz, jr_0b8_7100                            ; $70fe: $20 $00

jr_0b8_7100:
    jr nz, jr_0b8_7102                            ; $7100: $20 $00

jr_0b8_7102:
    jr nz, jr_0b8_7104                            ; $7102: $20 $00

jr_0b8_7104:
    jr nz, jr_0b8_711e                            ; $7104: $20 $18

    ld [hl], a                                    ; $7106: $77
    ld c, b                                       ; $7107: $48
    ld b, l                                       ; $7108: $45
    nop                                           ; $7109: $00
    jr nz, jr_0b8_710c                            ; $710a: $20 $00

jr_0b8_710c:
    jr nz, jr_0b8_7126                            ; $710c: $20 $18

    ld [hl], a                                    ; $710e: $77
    ld c, b                                       ; $710f: $48
    ld b, l                                       ; $7110: $45
    nop                                           ; $7111: $00
    jr nz, jr_0b8_7114                            ; $7112: $20 $00

jr_0b8_7114:
    jr nz, jr_0b8_712e                            ; $7114: $20 $18

    ld [hl], a                                    ; $7116: $77
    ld c, b                                       ; $7117: $48
    ld b, l                                       ; $7118: $45
    nop                                           ; $7119: $00
    jr nz, jr_0b8_70b0                            ; $711a: $20 $94

    ld [hl], d                                    ; $711c: $72
    sbc h                                         ; $711d: $9c

jr_0b8_711e:
    ld a, e                                       ; $711e: $7b
    cp l                                          ; $711f: $bd
    ld a, e                                       ; $7120: $7b
    nop                                           ; $7121: $00
    jr nz, jr_0b8_70b8                            ; $7122: $20 $94

    ld [hl], d                                    ; $7124: $72
    sbc h                                         ; $7125: $9c

jr_0b8_7126:
    ld a, e                                       ; $7126: $7b
    cp l                                          ; $7127: $bd
    ld a, e                                       ; $7128: $7b
    nop                                           ; $7129: $00
    jr nz, jr_0b8_70c0                            ; $712a: $20 $94

    ld [hl], d                                    ; $712c: $72
    sbc h                                         ; $712d: $9c

jr_0b8_712e:
    ld a, e                                       ; $712e: $7b
    cp l                                          ; $712f: $bd
    ld a, e                                       ; $7130: $7b
    nop                                           ; $7131: $00
    jr nz, jr_0b8_70c8                            ; $7132: $20 $94

    ld [hl], d                                    ; $7134: $72
    sbc h                                         ; $7135: $9c
    ld a, e                                       ; $7136: $7b

jr_0b8_7137:
    cp l                                          ; $7137: $bd
    ld a, e                                       ; $7138: $7b
    nop                                           ; $7139: $00
    jr nz, jr_0b8_713c                            ; $713a: $20 $00

jr_0b8_713c:
    jr nz, jr_0b8_7156                            ; $713c: $20 $18

    ld [hl], a                                    ; $713e: $77
    ld c, b                                       ; $713f: $48
    ld b, l                                       ; $7140: $45
    nop                                           ; $7141: $00
    jr nz, jr_0b8_7144                            ; $7142: $20 $00

jr_0b8_7144:
    jr nz, @+$1a                                  ; $7144: $20 $18

    ld [hl], a                                    ; $7146: $77
    ld c, b                                       ; $7147: $48
    ld b, l                                       ; $7148: $45
    nop                                           ; $7149: $00
    jr nz, jr_0b8_714c                            ; $714a: $20 $00

jr_0b8_714c:
    jr nz, @+$1a                                  ; $714c: $20 $18

    ld [hl], a                                    ; $714e: $77
    ld c, b                                       ; $714f: $48
    ld b, l                                       ; $7150: $45
    ld bc, $8b00                                  ; $7151: $01 $00 $8b
    ld d, c                                       ; $7154: $51
    sub [hl]                                      ; $7155: $96

jr_0b8_7156:
    ld l, d                                       ; $7156: $6a
    sbc [hl]                                      ; $7157: $9e
    ld l, a                                       ; $7158: $6f
    nop                                           ; $7159: $00
    jr nz, jr_0b8_7162                            ; $715a: $20 $06

    dec a                                         ; $715c: $3d
    call $9e59                                    ; $715d: $cd $59 $9e
    ld l, a                                       ; $7160: $6f
    nop                                           ; $7161: $00

jr_0b8_7162:
    jr nz, jr_0b8_716a                            ; $7162: $20 $06

jr_0b8_7164:
    dec a                                         ; $7164: $3d
    call $9e59                                    ; $7165: $cd $59 $9e
    ld l, a                                       ; $7168: $6f

jr_0b8_7169:
    nop                                           ; $7169: $00

jr_0b8_716a:
    jr nz, jr_0b8_7172                            ; $716a: $20 $06

jr_0b8_716c:
    dec a                                         ; $716c: $3d
    call $9e59                                    ; $716d: $cd $59 $9e
    ld l, a                                       ; $7170: $6f
    nop                                           ; $7171: $00

jr_0b8_7172:
    jr nz, jr_0b8_7174                            ; $7172: $20 $00

jr_0b8_7174:
    jr nz, jr_0b8_718e                            ; $7174: $20 $18

    ld [hl], a                                    ; $7176: $77
    ld c, b                                       ; $7177: $48
    ld b, l                                       ; $7178: $45
    nop                                           ; $7179: $00
    jr nz, jr_0b8_717c                            ; $717a: $20 $00

jr_0b8_717c:
    jr nz, jr_0b8_7196                            ; $717c: $20 $18

    ld [hl], a                                    ; $717e: $77
    ld c, b                                       ; $717f: $48
    ld b, l                                       ; $7180: $45
    nop                                           ; $7181: $00
    jr nz, jr_0b8_7169                            ; $7182: $20 $e5

    inc a                                         ; $7184: $3c
    rst $28                                       ; $7185: $ef
    ld h, c                                       ; $7186: $61
    dec b                                         ; $7187: $05
    dec a                                         ; $7188: $3d
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    ld a, [bc]                                    ; $718b: $0a
    dec l                                         ; $718c: $2d
    ld a, [de]                                    ; $718d: $1a

jr_0b8_718e:
    ld h, e                                       ; $718e: $63
    cp a                                          ; $718f: $bf
    nop                                           ; $7190: $00

jr_0b8_7191:
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    dec b                                         ; $7193: $05
    dec a                                         ; $7194: $3d
    nop                                           ; $7195: $00

jr_0b8_7196:
    jr nz, jr_0b8_7164                            ; $7196: $20 $cc

    ld c, l                                       ; $7198: $4d

jr_0b8_7199:
    nop                                           ; $7199: $00
    jr nz, jr_0b8_71a1                            ; $719a: $20 $05

    dec a                                         ; $719c: $3d
    nop                                           ; $719d: $00
    jr nz, jr_0b8_716c                            ; $719e: $20 $cc

    ld c, l                                       ; $71a0: $4d

jr_0b8_71a1:
    nop                                           ; $71a1: $00
    jr nz, jr_0b8_71a9                            ; $71a2: $20 $05

    dec a                                         ; $71a4: $3d
    nop                                           ; $71a5: $00
    jr nz, jr_0b8_7174                            ; $71a6: $20 $cc

    ld c, l                                       ; $71a8: $4d

jr_0b8_71a9:
    nop                                           ; $71a9: $00
    jr nz, jr_0b8_7191                            ; $71aa: $20 $e5

    inc a                                         ; $71ac: $3c
    rst $28                                       ; $71ad: $ef
    ld h, c                                       ; $71ae: $61
    dec b                                         ; $71af: $05
    dec a                                         ; $71b0: $3d
    nop                                           ; $71b1: $00
    jr nz, jr_0b8_7199                            ; $71b2: $20 $e5

    inc a                                         ; $71b4: $3c
    rst $28                                       ; $71b5: $ef
    ld h, c                                       ; $71b6: $61
    dec b                                         ; $71b7: $05
    dec a                                         ; $71b8: $3d
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    ld l, d                                       ; $71bb: $6a
    ld b, l                                       ; $71bc: $45
    jr nc, @+$58                                  ; $71bd: $30 $56

    nop                                           ; $71bf: $00
    jr nz, @+$04                                  ; $71c0: $20 $02

    nop                                           ; $71c2: $00
    jr c, jr_0b8_71f3                             ; $71c3: $38 $2e

    cp a                                          ; $71c5: $bf
    ld e, a                                       ; $71c6: $5f
    ld a, b                                       ; $71c7: $78
    nop                                           ; $71c8: $00
    ld [bc], a                                    ; $71c9: $02
    inc b                                         ; $71ca: $04
    rra                                           ; $71cb: $1f
    dec de                                        ; $71cc: $1b
    or l                                          ; $71cd: $b5
    ld e, d                                       ; $71ce: $5a
    rst $38                                       ; $71cf: $ff
    ld [hl], a                                    ; $71d0: $77
    nop                                           ; $71d1: $00
    jr nz, jr_0b8_71f7                            ; $71d2: $20 $23

    inc b                                         ; $71d4: $04
    or l                                          ; $71d5: $b5
    ld e, d                                       ; $71d6: $5a
    rst $38                                       ; $71d7: $ff
    ld [hl], a                                    ; $71d8: $77
    nop                                           ; $71d9: $00
    jr nz, jr_0b8_71ff                            ; $71da: $20 $23

    inc b                                         ; $71dc: $04
    or l                                          ; $71dd: $b5
    ld e, d                                       ; $71de: $5a
    rst $38                                       ; $71df: $ff
    ld [hl], a                                    ; $71e0: $77
    nop                                           ; $71e1: $00
    jr nz, @+$6c                                  ; $71e2: $20 $6a

    ld b, l                                       ; $71e4: $45
    jr nc, @+$58                                  ; $71e5: $30 $56

    nop                                           ; $71e7: $00
    jr nz, jr_0b8_71ea                            ; $71e8: $20 $00

jr_0b8_71ea:
    jr nz, jr_0b8_7256                            ; $71ea: $20 $6a

    ld b, l                                       ; $71ec: $45
    jr nc, jr_0b8_7245                            ; $71ed: $30 $56

    nop                                           ; $71ef: $00
    jr nz, jr_0b8_71f2                            ; $71f0: $20 $00

jr_0b8_71f2:
    inc b                                         ; $71f2: $04

jr_0b8_71f3:
    ld d, c                                       ; $71f3: $51
    ld e, d                                       ; $71f4: $5a
    sub $6a                                       ; $71f5: $d6 $6a

jr_0b8_71f7:
    ld e, c                                       ; $71f7: $59
    ld [hl], e                                    ; $71f8: $73
    ld [bc], a                                    ; $71f9: $02
    nop                                           ; $71fa: $00
    ld d, e                                       ; $71fb: $53
    add hl, de                                    ; $71fc: $19
    ld l, d                                       ; $71fd: $6a
    nop                                           ; $71fe: $00

jr_0b8_71ff:
    ccf                                           ; $71ff: $3f
    ld e, $00                                     ; $7200: $1e $00
    nop                                           ; $7202: $00
    ld a, e                                       ; $7203: $7b
    ld d, $cb                                     ; $7204: $16 $cb
    ld [$473f], sp                                ; $7206: $08 $3f $47
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    jr jr_0b8_720e                                ; $720c: $18 $00

jr_0b8_720e:
    jr nz, jr_0b8_7232                            ; $720e: $20 $22

    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    jr nz, jr_0b8_7214                            ; $7212: $20 $00

jr_0b8_7214:
    jr jr_0b8_7216                                ; $7214: $18 $00

jr_0b8_7216:
    jr nz, jr_0b8_723a                            ; $7216: $20 $22

    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    jr nz, jr_0b8_726d                            ; $721a: $20 $51

    ld e, d                                       ; $721c: $5a
    sub $6a                                       ; $721d: $d6 $6a
    ld e, c                                       ; $721f: $59
    ld [hl], e                                    ; $7220: $73
    nop                                           ; $7221: $00
    jr nz, @+$74                                  ; $7222: $20 $72

    ld e, [hl]                                    ; $7224: $5e
    ld e, d                                       ; $7225: $5a
    ld [hl], e                                    ; $7226: $73
    or h                                          ; $7227: $b4
    ld h, d                                       ; $7228: $62
    ld bc, $f700                                  ; $7229: $01 $00 $f7
    halt                                          ; $722c: $76
    rst $38                                       ; $722d: $ff
    ld h, a                                       ; $722e: $67
    sbc $7b                                       ; $722f: $de $7b
    inc h                                         ; $7231: $24

jr_0b8_7232:
    nop                                           ; $7232: $00
    cp l                                          ; $7233: $bd
    ld c, [hl]                                    ; $7234: $4e
    inc sp                                        ; $7235: $33
    ld de, $6fbf                                  ; $7236: $11 $bf $6f
    inc hl                                        ; $7239: $23

jr_0b8_723a:
    nop                                           ; $723a: $00
    sub [hl]                                      ; $723b: $96
    ld de, $2e9e                                  ; $723c: $11 $9e $2e
    ldh a, [rDIV]                                 ; $723f: $f0 $04
    nop                                           ; $7241: $00
    jr nz, jr_0b8_725c                            ; $7242: $20 $18

    ld l, e                                       ; $7244: $6b

jr_0b8_7245:
    sbc $7b                                       ; $7245: $de $7b
    inc hl                                        ; $7247: $23
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    jr nz, @+$1a                                  ; $724a: $20 $18

    ld l, e                                       ; $724c: $6b
    sbc $7b                                       ; $724d: $de $7b
    inc hl                                        ; $724f: $23
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    jr nz, @-$07                                  ; $7252: $20 $f7

    halt                                          ; $7254: $76
    rst $38                                       ; $7255: $ff

jr_0b8_7256:
    ld h, a                                       ; $7256: $67
    sbc $7b                                       ; $7257: $de $7b
    nop                                           ; $7259: $00

jr_0b8_725a:
    jr jr_0b8_728c                                ; $725a: $18 $30

jr_0b8_725c:
    ld e, d                                       ; $725c: $5a
    sbc $7b                                       ; $725d: $de $7b
    or $66                                        ; $725f: $f6 $66
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    ld hl, sp+$76                                 ; $7263: $f8 $76
    ld a, [bc]                                    ; $7265: $0a
    ld de, $0d55                                  ; $7266: $11 $55 $0d
    ld [hl+], a                                   ; $7269: $22
    nop                                           ; $726a: $00
    sbc a                                         ; $726b: $9f
    ld [bc], a                                    ; $726c: $02

jr_0b8_726d:
    or c                                          ; $726d: $b1
    inc b                                         ; $726e: $04
    ld e, $47                                     ; $726f: $1e $47
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    inc c                                         ; $7273: $0c
    dec d                                         ; $7274: $15
    ld h, a                                       ; $7275: $67
    inc b                                         ; $7276: $04
    ld a, [c]                                     ; $7277: $f2
    add hl, hl                                    ; $7278: $29
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    sub $66                                       ; $727b: $d6 $66
    sbc $7b                                       ; $727d: $de $7b
    nop                                           ; $727f: $00
    jr nz, jr_0b8_7282                            ; $7280: $20 $00

jr_0b8_7282:
    jr nz, jr_0b8_725a                            ; $7282: $20 $d6

    ld h, [hl]                                    ; $7284: $66
    sbc $7b                                       ; $7285: $de $7b
    nop                                           ; $7287: $00
    jr nz, jr_0b8_728a                            ; $7288: $20 $00

jr_0b8_728a:
    jr nz, jr_0b8_72d4                            ; $728a: $20 $48

jr_0b8_728c:
    ld b, l                                       ; $728c: $45
    ld a, [bc]                                    ; $728d: $0a
    ld de, $0d55                                  ; $728e: $11 $55 $0d
    nop                                           ; $7291: $00
    ld [$560f], sp                                ; $7292: $08 $0f $56
    jr jr_0b8_730e                                ; $7295: $18 $77

    ld c, b                                       ; $7297: $48
    ld b, l                                       ; $7298: $45
    ld bc, $fd00                                  ; $7299: $01 $00 $fd
    ld [hl+], a                                   ; $729c: $22
    ld e, d                                       ; $729d: $5a
    ld [hl], a                                    ; $729e: $77
    ld d, e                                       ; $729f: $53
    ld bc, $0001                                  ; $72a0: $01 $01 $00
    or c                                          ; $72a3: $b1
    inc b                                         ; $72a4: $04
    ld e, l                                       ; $72a5: $5d
    dec e                                         ; $72a6: $1d
    jr z, jr_0b8_72ad                             ; $72a7: $28 $04

jr_0b8_72a9:
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    adc h                                         ; $72ab: $8c
    inc b                                         ; $72ac: $04

jr_0b8_72ad:
    rra                                           ; $72ad: $1f
    inc bc                                        ; $72ae: $03
    rst $08                                       ; $72af: $cf
    inc d                                         ; $72b0: $14
    inc bc                                        ; $72b1: $03
    nop                                           ; $72b2: $00
    sbc a                                         ; $72b3: $9f
    ld a, [bc]                                    ; $72b4: $0a
    sub l                                         ; $72b5: $95
    ld l, d                                       ; $72b6: $6a
    sbc $7b                                       ; $72b7: $de $7b
    nop                                           ; $72b9: $00
    jr nz, jr_0b8_72a9                            ; $72ba: $20 $ed

    ld d, c                                       ; $72bc: $51
    or h                                          ; $72bd: $b4
    ld h, d                                       ; $72be: $62
    rst $30                                       ; $72bf: $f7
    ld l, d                                       ; $72c0: $6a
    nop                                           ; $72c1: $00
    jr nz, jr_0b8_72a9                            ; $72c2: $20 $e5

    inc a                                         ; $72c4: $3c
    adc e                                         ; $72c5: $8b
    ld c, c                                       ; $72c6: $49
    daa                                           ; $72c7: $27
    ld b, c                                       ; $72c8: $41
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    ld d, c                                       ; $72cb: $51
    ld e, d                                       ; $72cc: $5a
    sub $7a                                       ; $72cd: $d6 $7a
    sbc h                                         ; $72cf: $9c
    ld [hl], a                                    ; $72d0: $77
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    add hl, sp                                    ; $72d3: $39

jr_0b8_72d4:
    dec e                                         ; $72d4: $1d
    ld [hl], a                                    ; $72d5: $77
    ld d, [hl]                                    ; $72d6: $56
    xor l                                         ; $72d7: $ad
    stop                                          ; $72d8: $10 $00
    nop                                           ; $72da: $00
    ld l, e                                       ; $72db: $6b
    inc b                                         ; $72dc: $04
    inc d                                         ; $72dd: $14
    add hl, de                                    ; $72de: $19
    dec a                                         ; $72df: $3d
    dec e                                         ; $72e0: $1d
    ld bc, $db00                                  ; $72e1: $01 $00 $db
    ld c, d                                       ; $72e4: $4a
    or d                                          ; $72e5: $b2
    nop                                           ; $72e6: $00

jr_0b8_72e7:
    sub $7a                                       ; $72e7: $d6 $7a

jr_0b8_72e9:
    nop                                           ; $72e9: $00
    nop                                           ; $72ea: $00
    sub $7a                                       ; $72eb: $d6 $7a
    ld e, d                                       ; $72ed: $5a
    ld [hl], e                                    ; $72ee: $73
    sub $7a                                       ; $72ef: $d6 $7a
    nop                                           ; $72f1: $00
    jr nz, jr_0b8_733d                            ; $72f2: $20 $49

    ld c, c                                       ; $72f4: $49
    ld [hl], d                                    ; $72f5: $72
    ld e, [hl]                                    ; $72f6: $5e
    dec b                                         ; $72f7: $05
    dec a                                         ; $72f8: $3d
    nop                                           ; $72f9: $00
    jr jr_0b8_72e9                                ; $72fa: $18 $ed

    ld d, l                                       ; $72fc: $55
    daa                                           ; $72fd: $27
    ld b, c                                       ; $72fe: $41
    sub h                                         ; $72ff: $94
    ld l, [hl]                                    ; $7300: $6e
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    or [hl]                                       ; $7303: $b6
    halt                                          ; $7304: $76
    sub $7a                                       ; $7305: $d6 $7a
    or [hl]                                       ; $7307: $b6
    ld a, d                                       ; $7308: $7a
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    sub e                                         ; $730b: $93
    add hl, hl                                    ; $730c: $29
    sub l                                         ; $730d: $95

jr_0b8_730e:
    halt                                          ; $730e: $76
    jp z, $2218                                   ; $730f: $ca $18 $22

    inc b                                         ; $7312: $04
    cp a                                          ; $7313: $bf
    ld [hl], e                                    ; $7314: $73
    rst $20                                       ; $7315: $e7
    ld e, b                                       ; $7316: $58
    sub l                                         ; $7317: $95
    ld hl, $0421                                  ; $7318: $21 $21 $04
    ld e, a                                       ; $731b: $5f
    ld d, a                                       ; $731c: $57
    or l                                          ; $731d: $b5
    nop                                           ; $731e: $00
    sub l                                         ; $731f: $95
    ld hl, $0000                                  ; $7320: $21 $00 $00
    or l                                          ; $7323: $b5
    halt                                          ; $7324: $76
    sbc h                                         ; $7325: $9c
    ld b, d                                       ; $7326: $42
    ld b, d                                       ; $7327: $42
    ld [$0000], sp                                ; $7328: $08 $00 $00
    adc d                                         ; $732b: $8a
    ld c, l                                       ; $732c: $4d
    nop                                           ; $732d: $00
    jr nz, jr_0b8_72e7                            ; $732e: $20 $b7

    ld d, [hl]                                    ; $7330: $56
    nop                                           ; $7331: $00
    ld [$7273], sp                                ; $7332: $08 $73 $72
    ld c, c                                       ; $7335: $49
    ld c, l                                       ; $7336: $4d
    ld e, e                                       ; $7337: $5b
    ld [hl], a                                    ; $7338: $77
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    or l                                          ; $733b: $b5
    halt                                          ; $733c: $76

jr_0b8_733d:
    ld b, d                                       ; $733d: $42
    ld [$0400], sp                                ; $733e: $08 $00 $04
    inc hl                                        ; $7341: $23
    inc b                                         ; $7342: $04
    push af                                       ; $7343: $f5
    ld sp, $679f                                  ; $7344: $31 $9f $67
    sub h                                         ; $7347: $94
    halt                                          ; $7348: $76
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    rst $38                                       ; $734b: $ff
    ld d, d                                       ; $734c: $52
    sub l                                         ; $734d: $95
    ld hl, $0447                                  ; $734e: $21 $47 $04
    ld [hl+], a                                   ; $7351: $22
    inc b                                         ; $7352: $04
    or h                                          ; $7353: $b4
    nop                                           ; $7354: $00
    ld a, [hl]                                    ; $7355: $7e
    ld c, d                                       ; $7356: $4a
    or c                                          ; $7357: $b1
    dec h                                         ; $7358: $25
    ld [bc], a                                    ; $7359: $02
    nop                                           ; $735a: $00
    call nc, Call_000_1f29                        ; $735b: $d4 $29 $1f
    ld d, a                                       ; $735e: $57
    rst $18                                       ; $735f: $df
    ld l, e                                       ; $7360: $6b
    ld bc, $5d00                                  ; $7361: $01 $00 $5d
    ld [bc], a                                    ; $7364: $02
    ld e, [hl]                                    ; $7365: $5e
    ld e, a                                       ; $7366: $5f
    nop                                           ; $7367: $00
    jr nz, jr_0b8_736a                            ; $7368: $20 $00

jr_0b8_736a:
    nop                                           ; $736a: $00
    sub h                                         ; $736b: $94
    ld [hl], d                                    ; $736c: $72
    ld a, e                                       ; $736d: $7b

jr_0b8_736e:
    ld [hl], a                                    ; $736e: $77
    sbc $7b                                       ; $736f: $de $7b
    ld [hl+], a                                   ; $7371: $22
    inc b                                         ; $7372: $04
    sub h                                         ; $7373: $94
    halt                                          ; $7374: $76
    sub l                                         ; $7375: $95
    ld hl, $5b5e                                  ; $7376: $21 $5e $5b
    ld hl, $9100                                  ; $7379: $21 $00 $91
    dec h                                         ; $737c: $25
    or a                                          ; $737d: $b7
    ld l, d                                       ; $737e: $6a
    cp a                                          ; $737f: $bf
    ld e, $00                                     ; $7380: $1e $00
    nop                                           ; $7382: $00
    sub l                                         ; $7383: $95
    ld hl, $52ff                                  ; $7384: $21 $ff $52
    cp a                                          ; $7387: $bf
    ld d, e                                       ; $7388: $53
    ld bc, $b300                                  ; $7389: $01 $00 $b3
    dec h                                         ; $738c: $25
    ld [hl-], a                                   ; $738d: $32
    nop                                           ; $738e: $00
    ei                                            ; $738f: $fb
    add hl, de                                    ; $7390: $19
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    sub l                                         ; $7393: $95
    dec h                                         ; $7394: $25
    ei                                            ; $7395: $fb
    add hl, de                                    ; $7396: $19
    inc bc                                        ; $7397: $03
    nop                                           ; $7398: $00
    ld bc, $5200                                  ; $7399: $01 $00 $52
    ld de, $2b3f                                  ; $739c: $11 $3f $2b
    nop                                           ; $739f: $00
    jr nz, @+$05                                  ; $73a0: $20 $03

    nop                                           ; $73a2: $00
    sub e                                         ; $73a3: $93
    ld hl, $673b                                  ; $73a4: $21 $3b $67
    sbc a                                         ; $73a7: $9f
    nop                                           ; $73a8: $00
    inc bc                                        ; $73a9: $03
    nop                                           ; $73aa: $00
    or e                                          ; $73ab: $b3
    dec h                                         ; $73ac: $25
    ccf                                           ; $73ad: $3f
    ld d, a                                       ; $73ae: $57
    ei                                            ; $73af: $fb
    add hl, de                                    ; $73b0: $19
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    sbc b                                         ; $73b3: $98
    dec d                                         ; $73b4: $15
    ld a, a                                       ; $73b5: $7f
    inc sp                                        ; $73b6: $33
    ld b, [hl]                                    ; $73b7: $46
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    sub l                                         ; $73bb: $95
    ld hl, $4eff                                  ; $73bc: $21 $ff $4e
    xor d                                         ; $73bf: $aa
    ld [$0000], sp                                ; $73c0: $08 $00 $00
    ld a, [hl-]                                   ; $73c3: $3a
    ld bc, $431f                                  ; $73c4: $01 $1f $43
    xor b                                         ; $73c7: $a8
    inc c                                         ; $73c8: $0c
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    ld [hl], e                                    ; $73cb: $73
    halt                                          ; $73cc: $76
    rst $38                                       ; $73cd: $ff
    ld h, a                                       ; $73ce: $67
    db $eb                                        ; $73cf: $eb
    inc d                                         ; $73d0: $14
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    rst $28                                       ; $73d3: $ef
    ld e, l                                       ; $73d4: $5d
    nop                                           ; $73d5: $00
    jr nz, jr_0b8_736e                            ; $73d6: $20 $96

    ld hl, $0004                                  ; $73d8: $21 $04 $00
    ld a, e                                       ; $73db: $7b
    nop                                           ; $73dc: $00
    ld [hl], e                                    ; $73dd: $73
    ld de, $2619                                  ; $73de: $11 $19 $26
    ld bc, $9500                                  ; $73e1: $01 $00 $95
    ld hl, $7694                                  ; $73e4: $21 $94 $76
    ld a, a                                       ; $73e7: $7f
    dec sp                                        ; $73e8: $3b
    ld b, d                                       ; $73e9: $42
    ld [$1a3b], sp                                ; $73ea: $08 $3b $1a
    db $ec                                        ; $73ed: $ec
    ld [$4bbf], sp                                ; $73ee: $08 $bf $4b
    ld [hl+], a                                   ; $73f1: $22
    nop                                           ; $73f2: $00
    inc d                                         ; $73f3: $14
    ld [hl], $97                                  ; $73f4: $36 $97
    ld [$73ff], sp                                ; $73f6: $08 $ff $73
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    ld a, l                                       ; $73fb: $7d
    add hl, bc                                    ; $73fc: $09
    sbc d                                         ; $73fd: $9a
    ld b, d                                       ; $73fe: $42
    ldh a, [rDIV]                                 ; $73ff: $f0 $04
    ld hl, $5204                                  ; $7401: $21 $04 $52
    ld [hl], d                                    ; $7404: $72
    db $dd                                        ; $7405: $dd
    ld b, [hl]                                    ; $7406: $46
    db $ec                                        ; $7407: $ec
    inc d                                         ; $7408: $14
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    ld sp, $266a                                  ; $740b: $31 $6a $26
    dec a                                         ; $740e: $3d
    nop                                           ; $740f: $00
    jr nz, jr_0b8_7412                            ; $7410: $20 $00

jr_0b8_7412:
    inc b                                         ; $7412: $04
    or l                                          ; $7413: $b5
    halt                                          ; $7414: $76
    xor d                                         ; $7415: $aa
    nop                                           ; $7416: $00
    cp b                                          ; $7417: $b8
    ld bc, $0000                                  ; $7418: $01 $00 $00
    rst $30                                       ; $741b: $f7
    ld sp, $7694                                  ; $741c: $31 $94 $76
    rst $38                                       ; $741f: $ff
    ld [de], a                                    ; $7420: $12
    ld bc, $7c00                                  ; $7421: $01 $00 $7c
    ld h, $cb                                     ; $7424: $26 $cb
    inc b                                         ; $7426: $04
    rst $38                                       ; $7427: $ff
    ld h, a                                       ; $7428: $67
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    sbc d                                         ; $742b: $9a
    ld e, $0d                                     ; $742c: $1e $0d
    dec c                                         ; $742e: $0d
    ld a, a                                       ; $742f: $7f
    ld c, e                                       ; $7430: $4b
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    sbc d                                         ; $7433: $9a
    ld [hl], $ec                                  ; $7434: $36 $ec
    inc c                                         ; $7436: $0c
    rst $38                                       ; $7437: $ff
    ld l, a                                       ; $7438: $6f
    ld bc, $5200                                  ; $7439: $01 $00 $52
    ld [hl], d                                    ; $743c: $72
    ld e, c                                       ; $743d: $59
    ld a, $fe                                     ; $743e: $3e $fe
    ld c, d                                       ; $7440: $4a
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    jr nc, jr_0b8_74a7                            ; $7443: $30 $62

    nop                                           ; $7445: $00
    jr nz, @+$5c                                  ; $7446: $20 $5a

    ld [hl], e                                    ; $7448: $73
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    db $fc                                        ; $744b: $fc
    ld c, d                                       ; $744c: $4a
    adc d                                         ; $744d: $8a
    inc b                                         ; $744e: $04
    nop                                           ; $744f: $00
    inc e                                         ; $7450: $1c
    ld hl, $3100                                  ; $7451: $21 $00 $31
    dec h                                         ; $7454: $25
    ld [hl-], a                                   ; $7455: $32
    ld [hl], d                                    ; $7456: $72
    sbc $4e                                       ; $7457: $de $4e
    ld bc, $ff00                                  ; $7459: $01 $00 $ff
    ld h, e                                       ; $745c: $63
    ld [$6f10], a                                 ; $745d: $ea $10 $6f
    dec e                                         ; $7460: $1d
    ld hl, $f404                                  ; $7461: $21 $04 $f4
    add hl, hl                                    ; $7464: $29
    ld a, a                                       ; $7465: $7f
    ld d, a                                       ; $7466: $57
    cp c                                          ; $7467: $b9
    ld a, $00                                     ; $7468: $3e $00
    nop                                           ; $746a: $00
    rra                                           ; $746b: $1f
    ccf                                           ; $746c: $3f
    cp a                                          ; $746d: $bf
    ld e, e                                       ; $746e: $5b
    ld b, [hl]                                    ; $746f: $46
    inc b                                         ; $7470: $04
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    ld d, d                                       ; $7473: $52
    ld [hl], d                                    ; $7474: $72
    sub $2d                                       ; $7475: $d6 $2d
    cp [hl]                                       ; $7477: $be
    ld c, d                                       ; $7478: $4a
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    ld sp, $5966                                  ; $747b: $31 $66 $59
    ld l, a                                       ; $747e: $6f
    nop                                           ; $747f: $00
    jr nz, jr_0b8_7482                            ; $7480: $20 $00

jr_0b8_7482:
    inc d                                         ; $7482: $14
    sub l                                         ; $7483: $95
    dec d                                         ; $7484: $15
    db $dd                                        ; $7485: $dd
    ld a, $8a                                     ; $7486: $3e $8a
    inc b                                         ; $7488: $04
    inc hl                                        ; $7489: $23
    nop                                           ; $748a: $00
    ld [hl-], a                                   ; $748b: $32
    ld [hl], d                                    ; $748c: $72
    ld a, a                                       ; $748d: $7f
    ld hl, $4edf                                  ; $748e: $21 $df $4e
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    or l                                          ; $7493: $b5
    dec e                                         ; $7494: $1d
    cp $42                                        ; $7495: $fe $42
    xor b                                         ; $7497: $a8
    ld [$0000], sp                                ; $7498: $08 $00 $00
    add hl, de                                    ; $749b: $19
    ld a, [hl+]                                   ; $749c: $2a
    db $dd                                        ; $749d: $dd
    ld b, d                                       ; $749e: $42
    ld c, $11                                     ; $749f: $0e $11
    ld hl, $7204                                  ; $74a1: $21 $04 $72
    dec d                                         ; $74a4: $15
    ccf                                           ; $74a5: $3f
    ld c, e                                       ; $74a6: $4b

jr_0b8_74a7:
    ld a, e                                       ; $74a7: $7b
    ld h, $02                                     ; $74a8: $26 $02
    nop                                           ; $74aa: $00
    ld a, l                                       ; $74ab: $7d
    ld [hl], $ec                                  ; $74ac: $36 $ec
    inc c                                         ; $74ae: $0c
    cp [hl]                                       ; $74af: $be
    ld b, [hl]                                    ; $74b0: $46
    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    or h                                          ; $74b3: $b4
    ld h, d                                       ; $74b4: $62
    rst $38                                       ; $74b5: $ff
    ld a, a                                       ; $74b6: $7f
    nop                                           ; $74b7: $00
    jr nz, jr_0b8_74bb                            ; $74b8: $20 $01

    inc b                                         ; $74ba: $04

jr_0b8_74bb:
    or [hl]                                       ; $74bb: $b6
    add hl, de                                    ; $74bc: $19
    xor h                                         ; $74bd: $ac
    inc b                                         ; $74be: $04
    ld e, h                                       ; $74bf: $5c
    ld l, $01                                     ; $74c0: $2e $01
    nop                                           ; $74c2: $00
    sub c                                         ; $74c3: $91
    dec h                                         ; $74c4: $25
    cp [hl]                                       ; $74c5: $be
    ld b, [hl]                                    ; $74c6: $46
    cp d                                          ; $74c7: $ba
    inc c                                         ; $74c8: $0c
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    sub e                                         ; $74cb: $93
    add hl, de                                    ; $74cc: $19
    add a                                         ; $74cd: $87
    nop                                           ; $74ce: $00
    inc e                                         ; $74cf: $1c
    ld [hl+], a                                   ; $74d0: $22
    ld hl, $7304                                  ; $74d1: $21 $04 $73
    ld de, $25f7                                  ; $74d4: $11 $f7 $25
    xor e                                         ; $74d7: $ab
    nop                                           ; $74d8: $00
    ld hl, $5a00                                  ; $74d9: $21 $00 $5a
    ld [hl+], a                                   ; $74dc: $22
    ld c, $05                                     ; $74dd: $0e $05
    sbc a                                         ; $74df: $9f
    ld d, a                                       ; $74e0: $57
    ld b, l                                       ; $74e1: $45
    inc c                                         ; $74e2: $0c
    ld d, a                                       ; $74e3: $57
    ld [hl-], a                                   ; $74e4: $32
    rrca                                          ; $74e5: $0f
    ld de, $3a9d                                  ; $74e6: $11 $9d $3a
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    or h                                          ; $74eb: $b4
    ld h, d                                       ; $74ec: $62
    cp l                                          ; $74ed: $bd
    ld [hl], a                                    ; $74ee: $77

jr_0b8_74ef:
    nop                                           ; $74ef: $00
    jr nz, jr_0b8_74f3                            ; $74f0: $20 $01

    nop                                           ; $74f2: $00

jr_0b8_74f3:
    adc e                                         ; $74f3: $8b
    nop                                           ; $74f4: $00
    nop                                           ; $74f5: $00
    jr nz, jr_0b8_750a                            ; $74f6: $20 $12

    ld bc, $0001                                  ; $74f8: $01 $01 $00
    ld [hl], b                                    ; $74fb: $70
    ld hl, $044f                                  ; $74fc: $21 $4f $04
    ld e, l                                       ; $74ff: $5d
    ld a, [hl-]                                   ; $7500: $3a
    ld bc, $cd00                                  ; $7501: $01 $00 $cd
    inc b                                         ; $7504: $04
    cp c                                          ; $7505: $b9

jr_0b8_7506:
    ld sp, $0d54                                  ; $7506: $31 $54 $0d
    nop                                           ; $7509: $00

jr_0b8_750a:
    nop                                           ; $750a: $00
    adc c                                         ; $750b: $89
    nop                                           ; $750c: $00
    db $10                                        ; $750d: $10
    add hl, bc                                    ; $750e: $09
    call $0100                                    ; $750f: $cd $00 $01
    nop                                           ; $7512: $00
    sbc h                                         ; $7513: $9c
    ld h, $df                                     ; $7514: $26 $df
    ld h, a                                       ; $7516: $67
    db $10                                        ; $7517: $10
    ld bc, $0000                                  ; $7518: $01 $00 $00
    push de                                       ; $751b: $d5
    add hl, de                                    ; $751c: $19
    add hl, de                                    ; $751d: $19
    ld l, $3f                                     ; $751e: $2e $3f
    ld a, [hl-]                                   ; $7520: $3a
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    rla                                           ; $7523: $17
    ld l, e                                       ; $7524: $6b
    nop                                           ; $7525: $00
    jr nz, jr_0b8_7506                            ; $7526: $20 $de

    ld a, a                                       ; $7528: $7f
    ld bc, $f700                                  ; $7529: $01 $00 $f7
    ld e, [hl]                                    ; $752c: $5e
    nop                                           ; $752d: $00
    jr nz, @-$75                                  ; $752e: $20 $89

    nop                                           ; $7530: $00
    ld hl, $eb04                                  ; $7531: $21 $04 $eb
    inc d                                         ; $7534: $14
    ld e, a                                       ; $7535: $5f
    ld [hl], $93                                  ; $7536: $36 $93
    ld [$0000], sp                                ; $7538: $08 $00 $00
    inc l                                         ; $753b: $2c
    dec d                                         ; $753c: $15
    xor e                                         ; $753d: $ab
    nop                                           ; $753e: $00
    sub [hl]                                      ; $753f: $96
    add hl, hl                                    ; $7540: $29
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    ld h, a                                       ; $7543: $67
    nop                                           ; $7544: $00
    adc e                                         ; $7545: $8b
    nop                                           ; $7546: $00
    ld hl, HeaderLogo                             ; $7547: $21 $04 $01
    nop                                           ; $754a: $00
    dec a                                         ; $754b: $3d
    ld b, $ee                                     ; $754c: $06 $ee
    nop                                           ; $754e: $00
    ld e, a                                       ; $754f: $5f
    ld b, a                                       ; $7550: $47
    ld bc, $d200                                  ; $7551: $01 $00 $d2
    ld sp, $259f                                  ; $7554: $31 $9f $25
    call c, Call_000_002e                         ; $7557: $dc $2e $00
    jr nz, jr_0b8_74ef                            ; $755a: $20 $93

    ld e, [hl]                                    ; $755c: $5e
    db $dd                                        ; $755d: $dd
    ld a, e                                       ; $755e: $7b
    jr jr_0b8_75cc                                ; $755f: $18 $6b

    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    sub e                                         ; $7563: $93
    ld h, d                                       ; $7564: $62
    nop                                           ; $7565: $00
    jr nz, jr_0b8_757f                            ; $7566: $20 $17

    ld l, e                                       ; $7568: $6b
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    xor $18                                       ; $756b: $ee $18
    cp b                                          ; $756d: $b8
    ld [$14a8], sp                                ; $756e: $08 $a8 $14
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    dec [hl]                                      ; $7573: $35
    ld a, [hl+]                                   ; $7574: $2a
    ld l, b                                       ; $7575: $68
    nop                                           ; $7576: $00
    xor l                                         ; $7577: $ad
    jr jr_0b8_757a                                ; $7578: $18 $00

jr_0b8_757a:
    nop                                           ; $757a: $00
    reti                                          ; $757b: $d9


    ld bc, $0088                                  ; $757c: $01 $88 $00

jr_0b8_757f:
    ld [hl+], a                                   ; $757f: $22
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    ld d, d                                       ; $7583: $52
    ld bc, $021c                                  ; $7584: $01 $1c $02
    adc c                                         ; $7587: $89
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    ld a, $3e                                     ; $758b: $3e $3e
    ld [de], a                                    ; $758d: $12
    add hl, de                                    ; $758e: $19
    sbc $67                                       ; $758f: $de $67
    nop                                           ; $7591: $00
    jr nz, jr_0b8_75e5                            ; $7592: $20 $51

    ld e, d                                       ; $7594: $5a
    rst $30                                       ; $7595: $f7
    ld l, d                                       ; $7596: $6a
    sbc h                                         ; $7597: $9c
    ld [hl], a                                    ; $7598: $77
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    ld l, c                                       ; $759b: $69
    ld b, l                                       ; $759c: $45
    nop                                           ; $759d: $00
    inc e                                         ; $759e: $1c
    cpl                                           ; $759f: $2f
    ld d, [hl]                                    ; $75a0: $56
    ld [bc], a                                    ; $75a1: $02
    nop                                           ; $75a2: $00
    ld [hl], h                                    ; $75a3: $74
    inc b                                         ; $75a4: $04
    or h                                          ; $75a5: $b4
    ld h, d                                       ; $75a6: $62
    ld a, d                                       ; $75a7: $7a
    dec h                                         ; $75a8: $25
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    cpl                                           ; $75ab: $2f
    add hl, bc                                    ; $75ac: $09
    jp c, $d43a                                   ; $75ad: $da $3a $d4

    ld hl, $0000                                  ; $75b0: $21 $00 $00
    ld [hl], h                                    ; $75b3: $74
    ld bc, $023d                                  ; $75b4: $01 $3d $02
    rlc b                                         ; $75b7: $cb $00

jr_0b8_75b9:
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    sub [hl]                                      ; $75bb: $96
    ld bc, $435f                                  ; $75bc: $01 $5f $43
    adc b                                         ; $75bf: $88
    nop                                           ; $75c0: $00
    nop                                           ; $75c1: $00
    inc b                                         ; $75c2: $04
    ret c                                         ; $75c3: $d8

    dec l                                         ; $75c4: $2d
    ld d, [hl]                                    ; $75c5: $56
    nop                                           ; $75c6: $00
    ld e, c                                       ; $75c7: $59
    ld l, e                                       ; $75c8: $6b
    nop                                           ; $75c9: $00
    jr nz, jr_0b8_75b9                            ; $75ca: $20 $ed

jr_0b8_75cc:
    ld d, c                                       ; $75cc: $51
    ld [hl], d                                    ; $75cd: $72
    ld e, [hl]                                    ; $75ce: $5e
    cpl                                           ; $75cf: $2f
    ld d, [hl]                                    ; $75d0: $56
    nop                                           ; $75d1: $00
    jr nz, jr_0b8_75da                            ; $75d2: $20 $06

    ld b, c                                       ; $75d4: $41
    ld h, $41                                     ; $75d5: $26 $41
    call nc, Call_000_0021                        ; $75d7: $d4 $21 $00

jr_0b8_75da:
    nop                                           ; $75da: $00
    ld d, [hl]                                    ; $75db: $56
    nop                                           ; $75dc: $00
    ld hl, sp+$3d                                 ; $75dd: $f8 $3d
    xor b                                         ; $75df: $a8
    inc e                                         ; $75e0: $1c
    ld bc, $7c00                                  ; $75e1: $01 $00 $7c
    ld a, [de]                                    ; $75e4: $1a

jr_0b8_75e5:
    db $ec                                        ; $75e5: $ec
    inc b                                         ; $75e6: $04
    ld e, a                                       ; $75e7: $5f
    scf                                           ; $75e8: $37

jr_0b8_75e9:
    inc hl                                        ; $75e9: $23
    nop                                           ; $75ea: $00
    ei                                            ; $75eb: $fb
    ld bc, $2f1f                                  ; $75ec: $01 $1f $2f
    db $10                                        ; $75ef: $10
    ld bc, $0000                                  ; $75f0: $01 $00 $00
    dec de                                        ; $75f3: $1b
    ld a, [bc]                                    ; $75f4: $0a
    ld a, $43                                     ; $75f5: $3e $43
    xor c                                         ; $75f7: $a9
    nop                                           ; $75f8: $00
    ld bc, $ed00                                  ; $75f9: $01 $00 $ed
    ld d, c                                       ; $75fc: $51
    jr nc, jr_0b8_75ff                            ; $75fd: $30 $00

jr_0b8_75ff:
    ld a, d                                       ; $75ff: $7a
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    jr nz, jr_0b8_75e9                            ; $7602: $20 $e5

    inc a                                         ; $7604: $3c
    ld c, b                                       ; $7605: $48
    ld b, l                                       ; $7606: $45
    ld a, d                                       ; $7607: $7a
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    jr nz, @-$10                                  ; $760a: $20 $ee

    ld e, l                                       ; $760c: $5d
    db $ec                                        ; $760d: $ec
    inc b                                         ; $760e: $04
    ld e, a                                       ; $760f: $5f
    scf                                           ; $7610: $37
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    sbc b                                         ; $7613: $98
    inc b                                         ; $7614: $04
    daa                                           ; $7615: $27
    ld b, l                                       ; $7616: $45
    add hl, bc                                    ; $7617: $09
    nop                                           ; $7618: $00
    ld bc, $5000                                  ; $7619: $01 $00 $50
    ld de, $26be                                  ; $761c: $11 $be $26
    cp b                                          ; $761f: $b8
    ld bc, $0044                                  ; $7620: $01 $44 $00
    ret c                                         ; $7623: $d8

    dec b                                         ; $7624: $05
    cp $2e                                        ; $7625: $fe $2e
    rst $18                                       ; $7627: $df
    ld h, e                                       ; $7628: $63
    ld bc, $5d00                                  ; $7629: $01 $00 $5d
    ld b, $9f                                     ; $762c: $06 $9f
    ld d, a                                       ; $762e: $57
    ld d, b                                       ; $762f: $50
    add hl, bc                                    ; $7630: $09
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    push hl                                       ; $7633: $e5
    inc a                                         ; $7634: $3c
    add hl, bc                                    ; $7635: $09
    nop                                           ; $7636: $00
    adc e                                         ; $7637: $8b
    ld c, l                                       ; $7638: $4d
    nop                                           ; $7639: $00
    jr nz, @-$19                                  ; $763a: $20 $e5

    inc a                                         ; $763c: $3c
    add hl, bc                                    ; $763d: $09
    nop                                           ; $763e: $00
    adc e                                         ; $763f: $8b
    ld c, l                                       ; $7640: $4d
    nop                                           ; $7641: $00
    jr nz, jr_0b8_7694                            ; $7642: $20 $50

    ld de, $26be                                  ; $7644: $11 $be $26
    cp b                                          ; $7647: $b8
    ld bc, $0000                                  ; $7648: $01 $00 $00
    xor h                                         ; $764b: $ac
    ld d, l                                       ; $764c: $55
    ld [hl], h                                    ; $764d: $74
    ld [hl], d                                    ; $764e: $72
    ld l, c                                       ; $764f: $69
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    reti                                          ; $7653: $d9


    ld bc, $3f7f                                  ; $7654: $01 $7f $3f
    rlc h                                         ; $7657: $cb $04

jr_0b8_7659:
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    reti                                          ; $765b: $d9


    add hl, bc                                    ; $765c: $09
    ld a, a                                       ; $765d: $7f
    ld c, e                                       ; $765e: $4b
    xor d                                         ; $765f: $aa
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    inc e                                         ; $7663: $1c
    ld [bc], a                                    ; $7664: $02
    sbc a                                         ; $7665: $9f
    ld d, e                                       ; $7666: $53
    rlc b                                         ; $7667: $cb $00
    ld bc, $e500                                  ; $7669: $01 $00 $e5
    inc a                                         ; $766c: $3c
    ld [hl], e                                    ; $766d: $73
    ld l, [hl]                                    ; $766e: $6e
    adc e                                         ; $766f: $8b
    ld e, l                                       ; $7670: $5d
    nop                                           ; $7671: $00
    jr nz, jr_0b8_7659                            ; $7672: $20 $e5

    inc a                                         ; $7674: $3c
    ld [hl], e                                    ; $7675: $73
    ld l, [hl]                                    ; $7676: $6e
    adc e                                         ; $7677: $8b
    ld e, l                                       ; $7678: $5d
    nop                                           ; $7679: $00
    jr nz, @-$25                                  ; $767a: $20 $d9

    ld bc, $3f7f                                  ; $767c: $01 $7f $3f
    rlc h                                         ; $767f: $cb $04
    nop                                           ; $7681: $00
    inc b                                         ; $7682: $04
    ld [hl-], a                                   ; $7683: $32
    ld [hl], d                                    ; $7684: $72
    sub [hl]                                      ; $7685: $96
    ld bc, $775a                                  ; $7686: $01 $5a $77
    ld bc, $b600                                  ; $7689: $01 $00 $b6
    add hl, bc                                    ; $768c: $09
    ld e, a                                       ; $768d: $5f
    ccf                                           ; $768e: $3f
    ld [$000c], a                                 ; $768f: $ea $0c $00
    nop                                           ; $7692: $00
    ld a, [de]                                    ; $7693: $1a

jr_0b8_7694:
    ld [de], a                                    ; $7694: $12
    ld a, [hl]                                    ; $7695: $7e
    ld d, a                                       ; $7696: $57
    ld de, $2305                                  ; $7697: $11 $05 $23
    nop                                           ; $769a: $00
    call c, $9636                                 ; $769b: $dc $36 $96
    ld bc, $73de                                  ; $769e: $01 $de $73
    nop                                           ; $76a1: $00
    db $10                                        ; $76a2: $10
    ld l, h                                       ; $76a3: $6c
    ld l, c                                       ; $76a4: $69
    sub h                                         ; $76a5: $94
    ld [hl], d                                    ; $76a6: $72
    ld a, e                                       ; $76a7: $7b
    ld [hl], a                                    ; $76a8: $77
    nop                                           ; $76a9: $00
    jr nz, jr_0b8_7718                            ; $76aa: $20 $6c

    ld l, c                                       ; $76ac: $69
    sub h                                         ; $76ad: $94
    ld [hl], d                                    ; $76ae: $72
    ld a, e                                       ; $76af: $7b
    ld [hl], a                                    ; $76b0: $77
    nop                                           ; $76b1: $00
    jr nz, @-$48                                  ; $76b2: $20 $b6

    add hl, bc                                    ; $76b4: $09
    ld e, a                                       ; $76b5: $5f
    ccf                                           ; $76b6: $3f
    ld [$000c], a                                 ; $76b7: $ea $0c $00
    nop                                           ; $76ba: $00
    sbc h                                         ; $76bb: $9c
    ld [hl], a                                    ; $76bc: $77
    sub h                                         ; $76bd: $94
    add hl, bc                                    ; $76be: $09
    nop                                           ; $76bf: $00
    jr nz, jr_0b8_76c2                            ; $76c0: $20 $00

jr_0b8_76c2:
    nop                                           ; $76c2: $00
    ld a, d                                       ; $76c3: $7a
    ld [hl-], a                                   ; $76c4: $32
    ld h, l                                       ; $76c5: $65
    ld [$0a3e], sp                                ; $76c6: $08 $3e $0a
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    rrca                                          ; $76cb: $0f
    ld h, d                                       ; $76cc: $62
    sbc h                                         ; $76cd: $9c
    ld a, e                                       ; $76ce: $7b
    or l                                          ; $76cf: $b5
    ld l, [hl]                                    ; $76d0: $6e
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    push hl                                       ; $76d3: $e5
    inc a                                         ; $76d4: $3c
    rrca                                          ; $76d5: $0f
    ld e, d                                       ; $76d6: $5a
    ld c, c                                       ; $76d7: $49
    ld c, c                                       ; $76d8: $49
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00

jr_0b8_76db:
    rst $30                                       ; $76db: $f7
    ld [hl], d                                    ; $76dc: $72
    sbc $7b                                       ; $76dd: $de $7b
    nop                                           ; $76df: $00
    jr nz, jr_0b8_76e2                            ; $76e0: $20 $00

jr_0b8_76e2:
    jr nz, jr_0b8_76db                            ; $76e2: $20 $f7

    ld [hl], d                                    ; $76e4: $72
    sbc $7b                                       ; $76e5: $de $7b
    nop                                           ; $76e7: $00
    jr nz, jr_0b8_76ea                            ; $76e8: $20 $00

jr_0b8_76ea:
    jr nz, jr_0b8_7766                            ; $76ea: $20 $7a

    ld [hl-], a                                   ; $76ec: $32
    ld h, l                                       ; $76ed: $65
    ld [$0a3e], sp                                ; $76ee: $08 $3e $0a
    nop                                           ; $76f1: $00
    jr nz, @-$6b                                  ; $76f2: $20 $93

    ld h, d                                       ; $76f4: $62
    sbc h                                         ; $76f5: $9c
    ld [hl], a                                    ; $76f6: $77
    ld l, c                                       ; $76f7: $69
    ld b, l                                       ; $76f8: $45
    push hl                                       ; $76f9: $e5
    inc a                                         ; $76fa: $3c
    ld sp, $f766                                  ; $76fb: $31 $66 $f7
    ld [hl], d                                    ; $76fe: $72
    ld c, c                                       ; $76ff: $49
    ld c, l                                       ; $7700: $4d
    daa                                           ; $7701: $27
    ld b, l                                       ; $7702: $45
    sub l                                         ; $7703: $95
    ld [hl], d                                    ; $7704: $72
    sbc h                                         ; $7705: $9c
    ld a, e                                       ; $7706: $7b
    adc $5d                                       ; $7707: $ce $5d
    ld l, d                                       ; $7709: $6a
    ld c, l                                       ; $770a: $4d
    sub h                                         ; $770b: $94
    ld l, [hl]                                    ; $770c: $6e
    jr nc, @+$60                                  ; $770d: $30 $5e

    ld e, d                                       ; $770f: $5a
    ld [hl], e                                    ; $7710: $73
    nop                                           ; $7711: $00
    jr nz, jr_0b8_7787                            ; $7712: $20 $73

    ld e, [hl]                                    ; $7714: $5e
    cp h                                          ; $7715: $bc
    ld a, e                                       ; $7716: $7b
    push hl                                       ; $7717: $e5

jr_0b8_7718:
    inc a                                         ; $7718: $3c
    nop                                           ; $7719: $00
    jr nz, jr_0b8_778f                            ; $771a: $20 $73

    ld e, [hl]                                    ; $771c: $5e
    cp h                                          ; $771d: $bc
    ld a, e                                       ; $771e: $7b
    push hl                                       ; $771f: $e5
    inc a                                         ; $7720: $3c
    nop                                           ; $7721: $00
    jr nz, jr_0b8_7724                            ; $7722: $20 $00

jr_0b8_7724:
    jr nz, @+$01                                  ; $7724: $20 $ff

    ld l, a                                       ; $7726: $6f
    cp [hl]                                       ; $7727: $be
    dec hl                                        ; $7728: $2b
    nop                                           ; $7729: $00
    jr nz, jr_0b8_772c                            ; $772a: $20 $00

jr_0b8_772c:
    jr nz, @+$01                                  ; $772c: $20 $ff

    ld l, a                                       ; $772e: $6f
    cp [hl]                                       ; $772f: $be
    dec hl                                        ; $7730: $2b
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    jr nz, @+$01                                  ; $7734: $20 $ff

    ld l, a                                       ; $7736: $6f
    cp [hl]                                       ; $7737: $be
    dec hl                                        ; $7738: $2b
    nop                                           ; $7739: $00
    inc b                                         ; $773a: $04
    sub d                                         ; $773b: $92
    nop                                           ; $773c: $00
    adc l                                         ; $773d: $8d
    nop                                           ; $773e: $00
    ld e, $01                                     ; $773f: $1e $01
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    ret c                                         ; $7743: $d8

    nop                                           ; $7744: $00
    ccf                                           ; $7745: $3f
    ld bc, $2000                                  ; $7746: $01 $00 $20
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    rst $10                                       ; $774b: $d7
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    jr nz, jr_0b8_776f                            ; $774e: $20 $1f

    ld bc, $2000                                  ; $7750: $01 $00 $20
    rst $10                                       ; $7753: $d7
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    jr nz, jr_0b8_7777                            ; $7756: $20 $1f

    ld bc, $2000                                  ; $7758: $01 $00 $20
    nop                                           ; $775b: $00
    jr nz, @+$01                                  ; $775c: $20 $ff

    ld l, a                                       ; $775e: $6f
    cp [hl]                                       ; $775f: $be
    dec hl                                        ; $7760: $2b
    nop                                           ; $7761: $00
    jr nz, jr_0b8_7764                            ; $7762: $20 $00

jr_0b8_7764:
    jr nz, @+$01                                  ; $7764: $20 $ff

jr_0b8_7766:
    ld l, a                                       ; $7766: $6f
    cp [hl]                                       ; $7767: $be
    dec hl                                        ; $7768: $2b
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    jr nz, @+$01                                  ; $776c: $20 $ff

    ld l, a                                       ; $776e: $6f

jr_0b8_776f:
    cp [hl]                                       ; $776f: $be
    dec hl                                        ; $7770: $2b
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    or h                                          ; $7773: $b4
    nop                                           ; $7774: $00
    db $fc                                        ; $7775: $fc
    nop                                           ; $7776: $00

jr_0b8_7777:
    ld c, d                                       ; $7777: $4a
    nop                                           ; $7778: $00
    ld bc, $9000                                  ; $7779: $01 $00 $90
    nop                                           ; $777c: $00
    push af                                       ; $777d: $f5
    nop                                           ; $777e: $00
    dec de                                        ; $777f: $1b
    ld bc, $0001                                  ; $7780: $01 $01 $00
    ld l, [hl]                                    ; $7783: $6e
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    inc e                                         ; $7786: $1c

jr_0b8_7787:
    db $db                                        ; $7787: $db
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    jr nz, jr_0b8_77fa                            ; $778a: $20 $6e

jr_0b8_778c:
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    inc e                                         ; $778e: $1c

jr_0b8_778f:
    db $db                                        ; $778f: $db
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    jr nz, jr_0b8_7794                            ; $7792: $20 $00

jr_0b8_7794:
    jr nz, @+$01                                  ; $7794: $20 $ff

    ld l, a                                       ; $7796: $6f
    cp [hl]                                       ; $7797: $be
    dec hl                                        ; $7798: $2b
    nop                                           ; $7799: $00
    jr nz, jr_0b8_779c                            ; $779a: $20 $00

jr_0b8_779c:
    jr nz, @+$01                                  ; $779c: $20 $ff

    ld l, a                                       ; $779e: $6f
    cp [hl]                                       ; $779f: $be
    dec hl                                        ; $77a0: $2b
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    ld l, a                                       ; $77a3: $6f
    nop                                           ; $77a4: $00
    nop                                           ; $77a5: $00
    jr nz, jr_0b8_77cd                            ; $77a6: $20 $25

    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    xor [hl]                                      ; $77ab: $ae
    nop                                           ; $77ac: $00
    ld hl, sp+$00                                 ; $77ad: $f8 $00
    ld l, d                                       ; $77af: $6a
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    sub c                                         ; $77b3: $91
    nop                                           ; $77b4: $00
    ei                                            ; $77b5: $fb
    nop                                           ; $77b6: $00

jr_0b8_77b7:
    adc d                                         ; $77b7: $8a
    nop                                           ; $77b8: $00
    ld bc, $d800                                  ; $77b9: $01 $00 $d8
    nop                                           ; $77bc: $00
    ld e, $01                                     ; $77bd: $1e $01

jr_0b8_77bf:
    ld l, h                                       ; $77bf: $6c
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    jr nz, jr_0b8_779c                            ; $77c2: $20 $d8

    nop                                           ; $77c4: $00
    ld e, $01                                     ; $77c5: $1e $01
    ld l, h                                       ; $77c7: $6c
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    jr nz, @+$71                                  ; $77ca: $20 $6f

    nop                                           ; $77cc: $00

jr_0b8_77cd:
    nop                                           ; $77cd: $00
    jr nz, jr_0b8_77f5                            ; $77ce: $20 $25

    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    jr nz, @+$71                                  ; $77d2: $20 $6f

    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    jr nz, jr_0b8_77fd                            ; $77d6: $20 $25

    nop                                           ; $77d8: $00

jr_0b8_77d9:
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    or e                                          ; $77db: $b3
    nop                                           ; $77dc: $00
    ei                                            ; $77dd: $fb
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    jr nz, jr_0b8_77e2                            ; $77e0: $20 $00

jr_0b8_77e2:
    nop                                           ; $77e2: $00
    or [hl]                                       ; $77e3: $b6
    nop                                           ; $77e4: $00
    dec e                                         ; $77e5: $1d
    ld bc, $006c                                  ; $77e6: $01 $6c $00
    nop                                           ; $77e9: $00
    nop                                           ; $77ea: $00
    call nc, $8c00                                ; $77eb: $d4 $00 $8c
    nop                                           ; $77ee: $00
    dec e                                         ; $77ef: $1d
    ld bc, $0c00                                  ; $77f0: $01 $00 $0c
    sub b                                         ; $77f3: $90
    nop                                           ; $77f4: $00

jr_0b8_77f5:
    ld l, e                                       ; $77f5: $6b
    nop                                           ; $77f6: $00
    db $fc                                        ; $77f7: $fc
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00

jr_0b8_77fa:
    jr nz, jr_0b8_778c                            ; $77fa: $20 $90

    nop                                           ; $77fc: $00

jr_0b8_77fd:
    ld l, e                                       ; $77fd: $6b
    nop                                           ; $77fe: $00
    db $fc                                        ; $77ff: $fc
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    jr nz, jr_0b8_77b7                            ; $7802: $20 $b3

    nop                                           ; $7804: $00
    ei                                            ; $7805: $fb
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    jr nz, jr_0b8_780a                            ; $7808: $20 $00

jr_0b8_780a:
    jr nz, jr_0b8_77bf                            ; $780a: $20 $b3

    nop                                           ; $780c: $00
    ei                                            ; $780d: $fb
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    jr nz, jr_0b8_7812                            ; $7810: $20 $00

jr_0b8_7812:
    ld [$00f8], sp                                ; $7812: $08 $f8 $00
    ld c, c                                       ; $7815: $49
    nop                                           ; $7816: $00
    ld hl, sp+$06                                 ; $7817: $f8 $06
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    ret c                                         ; $781b: $d8

    nop                                           ; $781c: $00
    sbc d                                         ; $781d: $9a
    ld b, d                                       ; $781e: $42
    ld l, c                                       ; $781f: $69
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    adc h                                         ; $7823: $8c
    dec l                                         ; $7824: $2d
    cp c                                          ; $7825: $b9
    ld b, [hl]                                    ; $7826: $46
    or c                                          ; $7827: $b1
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    ld c, h                                       ; $782b: $4c
    nop                                           ; $782c: $00
    push de                                       ; $782d: $d5
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    jr nz, jr_0b8_7832                            ; $7830: $20 $00

jr_0b8_7832:
    jr nz, jr_0b8_7880                            ; $7832: $20 $4c

jr_0b8_7834:
    nop                                           ; $7834: $00
    push de                                       ; $7835: $d5
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    jr nz, jr_0b8_783a                            ; $7838: $20 $00

jr_0b8_783a:
    jr nz, jr_0b8_7834                            ; $783a: $20 $f8

    nop                                           ; $783c: $00
    ld c, c                                       ; $783d: $49
    nop                                           ; $783e: $00
    ld hl, sp+$06                                 ; $783f: $f8 $06
    nop                                           ; $7841: $00
    jr nz, jr_0b8_77d9                            ; $7842: $20 $95

    ld c, $7c                                     ; $7844: $0e $7c
    inc bc                                        ; $7846: $03
    ret c                                         ; $7847: $d8

    ld a, [bc]                                    ; $7848: $0a
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    ld a, l                                       ; $784b: $7d
    dec bc                                        ; $784c: $0b
    rst $30                                       ; $784d: $f7
    nop                                           ; $784e: $00
    sbc $43                                       ; $784f: $de $43
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    sbc a                                         ; $7853: $9f
    ld e, a                                       ; $7854: $5f
    ld c, h                                       ; $7855: $4c
    ld hl, $00f8                                  ; $7856: $21 $f8 $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    di                                            ; $785b: $f3
    ld sp, $2590                                  ; $785c: $31 $90 $25

jr_0b8_785f:
    ld a, $57                                     ; $785f: $3e $57
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    db $fc                                        ; $7863: $fc
    nop                                           ; $7864: $00
    ld c, b                                       ; $7865: $48
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00

jr_0b8_7868:
    jr nz, jr_0b8_786a                            ; $7868: $20 $00

jr_0b8_786a:
    jr nz, jr_0b8_7868                            ; $786a: $20 $fc

    nop                                           ; $786c: $00
    ld c, b                                       ; $786d: $48
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    jr nz, jr_0b8_7872                            ; $7870: $20 $00

jr_0b8_7872:
    jr nz, jr_0b8_78f1                            ; $7872: $20 $7d

    dec bc                                        ; $7874: $0b
    rst $30                                       ; $7875: $f7
    nop                                           ; $7876: $00
    sbc $43                                       ; $7877: $de $43
    nop                                           ; $7879: $00
    inc e                                         ; $787a: $1c
    ld d, e                                       ; $787b: $53
    ld c, $be                                     ; $787c: $0e $be
    inc sp                                        ; $787e: $33
    ld e, e                                       ; $787f: $5b

jr_0b8_7880:
    inc bc                                        ; $7880: $03
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    or e                                          ; $7883: $b3
    nop                                           ; $7884: $00
    ld e, a                                       ; $7885: $5f
    ld e, e                                       ; $7886: $5b
    dec e                                         ; $7887: $1d
    ld bc, $0000                                  ; $7888: $01 $00 $00
    cp a                                          ; $788b: $bf
    ld h, a                                       ; $788c: $67
    ld a, [bc]                                    ; $788d: $0a
    dec e                                         ; $788e: $1d
    ld [hl], a                                    ; $788f: $77
    dec d                                         ; $7890: $15
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    rst $30                                       ; $7893: $f7
    dec h                                         ; $7894: $25
    cp $4e                                        ; $7895: $fe $4e
    cp a                                          ; $7897: $bf
    ld l, e                                       ; $7898: $6b
    nop                                           ; $7899: $00
    db $10                                        ; $789a: $10
    dec e                                         ; $789b: $1d
    ld bc, $004c                                  ; $789c: $01 $4c $00
    ld a, [de]                                    ; $789f: $1a
    inc bc                                        ; $78a0: $03
    nop                                           ; $78a1: $00
    jr nz, @+$1f                                  ; $78a2: $20 $1d

    ld bc, $004c                                  ; $78a4: $01 $4c $00
    ld a, [de]                                    ; $78a7: $1a
    inc bc                                        ; $78a8: $03
    nop                                           ; $78a9: $00
    jr nz, jr_0b8_785f                            ; $78aa: $20 $b3

    nop                                           ; $78ac: $00
    ld e, a                                       ; $78ad: $5f
    ld e, e                                       ; $78ae: $5b
    dec e                                         ; $78af: $1d
    ld bc, $0800                                  ; $78b0: $01 $00 $08
    pop bc                                        ; $78b3: $c1
    rlca                                          ; $78b4: $07
    rra                                           ; $78b5: $1f
    ld bc, $135a                                  ; $78b6: $01 $5a $13
    inc h                                         ; $78b9: $24
    nop                                           ; $78ba: $00
    ld e, a                                       ; $78bb: $5f
    ld e, e                                       ; $78bc: $5b
    di                                            ; $78bd: $f3
    inc b                                         ; $78be: $04
    dec e                                         ; $78bf: $1d
    ld bc, $1c20                                  ; $78c0: $01 $20 $1c
    rla                                           ; $78c3: $17
    ld h, a                                       ; $78c4: $67
    or d                                          ; $78c5: $b2
    inc b                                         ; $78c6: $04
    ld a, [hl+]                                   ; $78c7: $2a
    dec e                                         ; $78c8: $1d
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    ld a, [hl-]                                   ; $78cb: $3a

jr_0b8_78cc:
    ld e, e                                       ; $78cc: $5b
    adc $08                                       ; $78cd: $ce $08
    ld b, b                                       ; $78cf: $40
    inc [hl]                                      ; $78d0: $34
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    ld e, c                                       ; $78d3: $59
    dec b                                         ; $78d4: $05
    ld e, h                                       ; $78d5: $5c
    rrca                                          ; $78d6: $0f
    sub d                                         ; $78d7: $92
    nop                                           ; $78d8: $00
    nop                                           ; $78d9: $00
    jr nz, jr_0b8_78cc                            ; $78da: $20 $f0

    dec d                                         ; $78dc: $15
    ld [hl-], a                                   ; $78dd: $32
    ld [de], a                                    ; $78de: $12
    sub d                                         ; $78df: $92
    nop                                           ; $78e0: $00
    ld hl, $f900                                  ; $78e1: $21 $00 $f9
    rrca                                          ; $78e4: $0f
    nop                                           ; $78e5: $00
    inc e                                         ; $78e6: $1c
    ld h, e                                       ; $78e7: $63
    nop                                           ; $78e8: $00
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    db $ec                                        ; $78eb: $ec
    daa                                           ; $78ec: $27
    ld hl, sp+$1f                                 ; $78ed: $f8 $1f
    ld a, [c]                                     ; $78ef: $f2
    ccf                                           ; $78f0: $3f

jr_0b8_78f1:
    ld [bc], a                                    ; $78f1: $02
    nop                                           ; $78f2: $00
    sub d                                         ; $78f3: $92
    nop                                           ; $78f4: $00
    ld [hl], b                                    ; $78f5: $70
    dec e                                         ; $78f6: $1d
    dec a                                         ; $78f7: $3d
    ld bc, $0c22                                  ; $78f8: $01 $22 $0c
    dec e                                         ; $78fb: $1d
    ld d, e                                       ; $78fc: $53
    xor h                                         ; $78fd: $ac
    ld d, c                                       ; $78fe: $51
    rst $38                                       ; $78ff: $ff
    ld a, a                                       ; $7900: $7f
    add l                                         ; $7901: $85
    inc d                                         ; $7902: $14
    db $dd                                        ; $7903: $dd
    ld c, d                                       ; $7904: $4a
    adc c                                         ; $7905: $89
    ld l, l                                       ; $7906: $6d
    rst $18                                       ; $7907: $df
    ld [hl], e                                    ; $7908: $73
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    dec e                                         ; $790b: $1d
    ld bc, $004b                                  ; $790c: $01 $4b $00
    ld e, h                                       ; $790f: $5c
    inc bc                                        ; $7910: $03
    nop                                           ; $7911: $00
    jr nz, @-$2f                                  ; $7912: $20 $cf

    dec d                                         ; $7914: $15
    ld e, h                                       ; $7915: $5c
    inc bc                                        ; $7916: $03
    ld d, e                                       ; $7917: $53
    ld c, $00                                     ; $7918: $0e $00
    inc e                                         ; $791a: $1c
    ld b, h                                       ; $791b: $44
    rlca                                          ; $791c: $07
    rst $30                                       ; $791d: $f7
    rra                                           ; $791e: $1f
    adc e                                         ; $791f: $8b
    inc de                                        ; $7920: $13
    ld bc, $ee00                                  ; $7921: $01 $00 $ee
    daa                                           ; $7924: $27
    ld a, [$f400]                                 ; $7925: $fa $00 $f4
    daa                                           ; $7928: $27
    nop                                           ; $7929: $00
    nop                                           ; $792a: $00
    or [hl]                                       ; $792b: $b6
    nop                                           ; $792c: $00
    ld c, c                                       ; $792d: $49
    nop                                           ; $792e: $00
    ld e, $01                                     ; $792f: $1e $01
    ld e, c                                       ; $7931: $59
    ld a, [hl-]                                   ; $7932: $3a
    cp $4e                                        ; $7933: $fe $4e
    cp h                                          ; $7935: $bc
    ld b, [hl]                                    ; $7936: $46
    ld e, a                                       ; $7937: $5f
    ld e, e                                       ; $7938: $5b
    inc b                                         ; $7939: $04
    nop                                           ; $793a: $00
    cp b                                          ; $793b: $b8
    ld c, d                                       ; $793c: $4a
    ld a, [bc]                                    ; $793d: $0a
    add hl, de                                    ; $793e: $19
    ld a, a                                       ; $793f: $7f
    ld e, a                                       ; $7940: $5f
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    adc [hl]                                      ; $7943: $8e
    nop                                           ; $7944: $00
    db $db                                        ; $7945: $db
    nop                                           ; $7946: $00
    ccf                                           ; $7947: $3f
    ld bc, $1c00                                  ; $7948: $01 $00 $1c
    ld d, h                                       ; $794b: $54
    ld c, $be                                     ; $794c: $0e $be
    rra                                           ; $794e: $1f
    rst $38                                       ; $794f: $ff
    ld h, e                                       ; $7950: $63
    ld bc, $2114                                  ; $7951: $01 $14 $21
    inc bc                                        ; $7954: $03
    rst $30                                       ; $7955: $f7
    inc hl                                        ; $7956: $23
    rl a                                          ; $7957: $cb $17
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    cp c                                          ; $795b: $b9
    ld b, [hl]                                    ; $795c: $46
    ld l, l                                       ; $795d: $6d
    nop                                           ; $795e: $00
    dec l                                         ; $795f: $2d
    add hl, de                                    ; $7960: $19
    ld bc, $d700                                  ; $7961: $01 $00 $d7
    nop                                           ; $7964: $00
    adc d                                         ; $7965: $8a
    nop                                           ; $7966: $00
    ccf                                           ; $7967: $3f
    ld bc, $1973                                  ; $7968: $01 $73 $19
    cp e                                          ; $796b: $bb
    ld b, [hl]                                    ; $796c: $46
    scf                                           ; $796d: $37
    ld [hl], $5f                                  ; $796e: $36 $5f
    ld e, e                                       ; $7970: $5b
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    sbc b                                         ; $7973: $98
    ld b, d                                       ; $7974: $42
    ld a, [bc]                                    ; $7975: $0a
    dec e                                         ; $7976: $1d
    ld e, a                                       ; $7977: $5f
    ld e, e                                       ; $7978: $5b
    ld [bc], a                                    ; $7979: $02
    nop                                           ; $797a: $00
    ld a, [$ff00]                                 ; $797b: $fa $00 $ff
    ld [hl], e                                    ; $797e: $73
    pop hl                                        ; $797f: $e1
    inc [hl]                                      ; $7980: $34
    nop                                           ; $7981: $00
    inc e                                         ; $7982: $1c
    sbc l                                         ; $7983: $9d
    daa                                           ; $7984: $27
    rst $38                                       ; $7985: $ff
    ld a, e                                       ; $7986: $7b
    pop hl                                        ; $7987: $e1
    jr c, jr_0b8_79cc                             ; $7988: $38 $42

    inc b                                         ; $798a: $04
    rl e                                          ; $798b: $cb $13
    ld d, a                                       ; $798d: $57
    ld a, $f9                                     ; $798e: $3e $f9
    rra                                           ; $7990: $1f
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    sbc d                                         ; $7993: $9a
    ld b, [hl]                                    ; $7994: $46
    dec l                                         ; $7995: $2d
    dec e                                         ; $7996: $1d
    ld a, a                                       ; $7997: $7f
    ld h, e                                       ; $7998: $63
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    sub h                                         ; $799b: $94
    nop                                           ; $799c: $00
    ccf                                           ; $799d: $3f
    ld bc, $0028                                  ; $799e: $01 $28 $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    cp h                                          ; $79a3: $bc
    ld b, [hl]                                    ; $79a4: $46
    ld [$3f14], a                                 ; $79a5: $ea $14 $3f
    ld d, a                                       ; $79a8: $57
    ld [bc], a                                    ; $79a9: $02
    nop                                           ; $79aa: $00
    ld [hl], h                                    ; $79ab: $74
    ld c, d                                       ; $79ac: $4a
    inc de                                        ; $79ad: $13
    dec e                                         ; $79ae: $1d
    sbc a                                         ; $79af: $9f
    ld h, a                                       ; $79b0: $67
    ld bc, $f500                                  ; $79b1: $01 $00 $f5
    dec l                                         ; $79b4: $2d
    ld [hl], b                                    ; $79b5: $70
    nop                                           ; $79b6: $00
    ld e, l                                       ; $79b7: $5d
    ld e, e                                       ; $79b8: $5b
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    dec sp                                        ; $79bb: $3b
    ld [bc], a                                    ; $79bc: $02
    rst $18                                       ; $79bd: $df
    ld c, e                                       ; $79be: $4b
    nop                                           ; $79bf: $00
    jr nz, jr_0b8_79c4                            ; $79c0: $20 $02

    nop                                           ; $79c2: $00
    rst $28                                       ; $79c3: $ef

jr_0b8_79c4:
    rla                                           ; $79c4: $17
    dec a                                         ; $79c5: $3d
    ld e, e                                       ; $79c6: $5b
    ld c, a                                       ; $79c7: $4f
    add hl, de                                    ; $79c8: $19
    ld b, l                                       ; $79c9: $45
    inc b                                         ; $79ca: $04
    cp h                                          ; $79cb: $bc

jr_0b8_79cc:
    ld b, d                                       ; $79cc: $42
    sbc $00                                       ; $79cd: $de $00
    rst $18                                       ; $79cf: $df
    ld l, a                                       ; $79d0: $6f
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    db $fc                                        ; $79d3: $fc
    nop                                           ; $79d4: $00
    cp a                                          ; $79d5: $bf
    ld c, [hl]                                    ; $79d6: $4e
    call Call_000_000c                            ; $79d7: $cd $0c $00
    nop                                           ; $79da: $00
    ld a, c                                       ; $79db: $79
    ld a, $2d                                     ; $79dc: $3e $2d
    dec d                                         ; $79de: $15
    ld a, a                                       ; $79df: $7f
    ld e, a                                       ; $79e0: $5f
    inc bc                                        ; $79e1: $03
    nop                                           ; $79e2: $00
    ld e, $53                                     ; $79e3: $1e $53
    dec bc                                        ; $79e5: $0b
    dec e                                         ; $79e6: $1d
    rst $38                                       ; $79e7: $ff
    ld [hl], a                                    ; $79e8: $77
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    cp a                                          ; $79eb: $bf
    ld l, e                                       ; $79ec: $6b
    ld l, a                                       ; $79ed: $6f
    nop                                           ; $79ee: $00
    or d                                          ; $79ef: $b2
    add hl, hl                                    ; $79f0: $29
    nop                                           ; $79f1: $00
    inc e                                         ; $79f2: $1c
    inc e                                         ; $79f3: $1c
    ld bc, $0a95                                  ; $79f4: $01 $95 $0a
    cp [hl]                                       ; $79f7: $be
    daa                                           ; $79f8: $27
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    rl e                                          ; $79fb: $cb $13
    sbc d                                         ; $79fd: $9a
    ld d, a                                       ; $79fe: $57
    or $27                                        ; $79ff: $f6 $27
    ld [hl+], a                                   ; $7a01: $22
    inc b                                         ; $7a02: $04
    ld a, [$df21]                                 ; $7a03: $fa $21 $df
    ld [hl], e                                    ; $7a06: $73
    sub a                                         ; $7a07: $97
    nop                                           ; $7a08: $00
    ld bc, $df00                                  ; $7a09: $01 $00 $df
    ld d, d                                       ; $7a0c: $52
    dec c                                         ; $7a0d: $0d
    add hl, de                                    ; $7a0e: $19
    sub $00                                       ; $7a0f: $d6 $00
    nop                                           ; $7a11: $00
    nop                                           ; $7a12: $00
    or $2d                                        ; $7a13: $f6 $2d
    inc c                                         ; $7a15: $0c
    dec d                                         ; $7a16: $15
    ccf                                           ; $7a17: $3f
    ld d, e                                       ; $7a18: $53
    ld [bc], a                                    ; $7a19: $02
    nop                                           ; $7a1a: $00
    ld [hl], $3a                                  ; $7a1b: $36 $3a
    sbc a                                         ; $7a1d: $9f
    ld l, e                                       ; $7a1e: $6b
    dec hl                                        ; $7a1f: $2b
    ld hl, $0000                                  ; $7a20: $21 $00 $00
    ld a, h                                       ; $7a23: $7c
    ld b, d                                       ; $7a24: $42
    cp a                                          ; $7a25: $bf
    ld l, a                                       ; $7a26: $6f
    ld [hl], h                                    ; $7a27: $74
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    ld a, [$9500]                                 ; $7a2b: $fa $00 $95
    ld [de], a                                    ; $7a2e: $12
    nop                                           ; $7a2f: $00
    jr nz, jr_0b8_7a33                            ; $7a30: $20 $01

    nop                                           ; $7a32: $00

jr_0b8_7a33:
    db $f4                                        ; $7a33: $f4
    daa                                           ; $7a34: $27
    cp e                                          ; $7a35: $bb
    ld b, [hl]                                    ; $7a36: $46
    ld hl, $021c                                  ; $7a37: $21 $1c $02
    nop                                           ; $7a3a: $00
    ld a, d                                       ; $7a3b: $7a
    ld a, $6e                                     ; $7a3c: $3e $6e
    dec h                                         ; $7a3e: $25
    ld a, a                                       ; $7a3f: $7f
    ld h, e                                       ; $7a40: $63
    ld bc, $9300                                  ; $7a41: $01 $00 $93
    ld sp, $08ac                                  ; $7a44: $31 $ac $08
    cp a                                          ; $7a47: $bf
    ld c, [hl]                                    ; $7a48: $4e
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    add hl, sp                                    ; $7a4b: $39
    ld [hl-], a                                   ; $7a4c: $32
    sbc $4e                                       ; $7a4d: $de $4e
    ld e, a                                       ; $7a4f: $5f
    ld e, e                                       ; $7a50: $5b
    ld bc, $f800                                  ; $7a51: $01 $00 $f8
    add hl, hl                                    ; $7a54: $29

Jump_0b8_7a55:
    cp l                                          ; $7a55: $bd
    ld b, [hl]                                    ; $7a56: $46
    ld a, a                                       ; $7a57: $7f
    ld e, a                                       ; $7a58: $5f
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    rst $18                                       ; $7a5b: $df
    ld d, d                                       ; $7a5c: $52
    rst $18                                       ; $7a5d: $df
    ld l, a                                       ; $7a5e: $6f
    ld a, $5b                                     ; $7a5f: $3e $5b
    nop                                           ; $7a61: $00
    inc e                                         ; $7a62: $1c
    cp b                                          ; $7a63: $b8
    nop                                           ; $7a64: $00
    ld d, d                                       ; $7a65: $52
    ld c, $7c                                     ; $7a66: $0e $7c
    inc bc                                        ; $7a68: $03
    nop                                           ; $7a69: $00
    inc d                                         ; $7a6a: $14
    push af                                       ; $7a6b: $f5
    inc hl                                        ; $7a6c: $23
    cp d                                          ; $7a6d: $ba
    ld b, [hl]                                    ; $7a6e: $46
    cp a                                          ; $7a6f: $bf
    ld l, e                                       ; $7a70: $6b
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    sbc e                                         ; $7a73: $9b
    ld b, d                                       ; $7a74: $42
    cp a                                          ; $7a75: $bf
    ld h, e                                       ; $7a76: $63
    ld c, l                                       ; $7a77: $4d
    dec e                                         ; $7a78: $1d
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    sub e                                         ; $7a7b: $93
    add hl, hl                                    ; $7a7c: $29
    rst $18                                       ; $7a7d: $df
    ld d, d                                       ; $7a7e: $52
    rrc h                                         ; $7a7f: $cb $0c
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    sbc [hl]                                      ; $7a83: $9e
    ld b, [hl]                                    ; $7a84: $46
    ld e, a                                       ; $7a85: $5f
    ld e, e                                       ; $7a86: $5b
    ld l, $21                                     ; $7a87: $2e $21
    ld bc, $b900                                  ; $7a89: $01 $00 $b9
    add hl, de                                    ; $7a8c: $19
    ld e, a                                       ; $7a8d: $5f
    ld e, e                                       ; $7a8e: $5b
    ld a, e                                       ; $7a8f: $7b
    ld a, [hl-]                                   ; $7a90: $3a
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    sub e                                         ; $7a93: $93
    ld sp, $4abf                                  ; $7a94: $31 $bf $4a
    rst $38                                       ; $7a97: $ff
    ld d, d                                       ; $7a98: $52
    nop                                           ; $7a99: $00
    inc e                                         ; $7a9a: $1c
    reti                                          ; $7a9b: $d9


    nop                                           ; $7a9c: $00
    ld d, e                                       ; $7a9d: $53
    ld c, $5c                                     ; $7a9e: $0e $5c
    inc bc                                        ; $7aa0: $03
    nop                                           ; $7aa1: $00
    inc d                                         ; $7aa2: $14
    ld h, a                                       ; $7aa3: $67
    dec bc                                        ; $7aa4: $0b
    rst $30                                       ; $7aa5: $f7
    inc hl                                        ; $7aa6: $23
    db $dd                                        ; $7aa7: $dd
    ld e, [hl]                                    ; $7aa8: $5e
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    ldh a, [$37]                                  ; $7aab: $f0 $37

jr_0b8_7aad:
    sbc e                                         ; $7aad: $9b
    ld b, d                                       ; $7aae: $42
    ld a, a                                       ; $7aaf: $7f
    ld e, a                                       ; $7ab0: $5f
    ld [hl+], a                                   ; $7ab1: $22
    nop                                           ; $7ab2: $00
    ld sp, $bf15                                  ; $7ab3: $31 $15 $bf
    ld c, [hl]                                    ; $7ab6: $4e
    sub e                                         ; $7ab7: $93
    ld sp, $0000                                  ; $7ab8: $31 $00 $00
    ld l, $21                                     ; $7abb: $2e $21
    cp a                                          ; $7abd: $bf
    ld c, [hl]                                    ; $7abe: $4e
    jr jr_0b8_7af3                                ; $7abf: $18 $32

    ld bc, $2e00                                  ; $7ac1: $01 $00 $2e
    dec h                                         ; $7ac4: $25
    ld sp, hl                                     ; $7ac5: $f9
    dec h                                         ; $7ac6: $25
    cp a                                          ; $7ac7: $bf
    ld c, d                                       ; $7ac8: $4a
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    ld [hl], d                                    ; $7acb: $72
    dec l                                         ; $7acc: $2d
    cp a                                          ; $7acd: $bf
    ld c, d                                       ; $7ace: $4a
    jp z, Jump_000_0014                           ; $7acf: $ca $14 $00

    nop                                           ; $7ad2: $00
    ld [hl], l                                    ; $7ad3: $75
    ld a, [bc]                                    ; $7ad4: $0a
    rst $18                                       ; $7ad5: $df
    ld d, [hl]                                    ; $7ad6: $56
    nop                                           ; $7ad7: $00
    jr nz, jr_0b8_7ada                            ; $7ad8: $20 $00

jr_0b8_7ada:
    jr @+$67                                      ; $7ada: $18 $65

    dec bc                                        ; $7adc: $0b
    ret c                                         ; $7add: $d8

    inc hl                                        ; $7ade: $23
    ldh a, [$15]                                  ; $7adf: $f0 $15
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    rst $28                                       ; $7ae3: $ef
    daa                                           ; $7ae4: $27
    cp $4a                                        ; $7ae5: $fe $4a
    ld hl, sp+$27                                 ; $7ae7: $f8 $27
    ld hl, $9304                                  ; $7ae9: $21 $04 $93
    dec l                                         ; $7aec: $2d
    rst $38                                       ; $7aed: $ff
    ld d, [hl]                                    ; $7aee: $56
    db $ed                                        ; $7aef: $ed
    inc c                                         ; $7af0: $0c
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00

jr_0b8_7af3:
    sbc a                                         ; $7af3: $9f
    ld c, [hl]                                    ; $7af4: $4e
    db $eb                                        ; $7af5: $eb
    jr jr_0b8_7b48                                ; $7af6: $18 $50

    dec h                                         ; $7af8: $25
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    sub $35                                       ; $7afb: $d6 $35
    cp a                                          ; $7afd: $bf
    ld c, d                                       ; $7afe: $4a
    ret                                           ; $7aff: $c9


    jr jr_0b8_7b02                                ; $7b00: $18 $00

jr_0b8_7b02:
    nop                                           ; $7b02: $00
    sub e                                         ; $7b03: $93
    ld sp, $4abf                                  ; $7b04: $31 $bf $4a
    rl h                                          ; $7b07: $cb $14
    ld [hl+], a                                   ; $7b09: $22
    nop                                           ; $7b0a: $00

jr_0b8_7b0b:
    or [hl]                                       ; $7b0b: $b6
    ld a, [bc]                                    ; $7b0c: $0a
    nop                                           ; $7b0d: $00
    jr nz, jr_0b8_7aad                            ; $7b0e: $20 $9d

    ld c, d                                       ; $7b10: $4a
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    ld [hl-], a                                   ; $7b13: $32
    ld c, $7c                                     ; $7b14: $0e $7c
    inc bc                                        ; $7b16: $03
    nop                                           ; $7b17: $00
    jr nz, jr_0b8_7b1a                            ; $7b18: $20 $00

jr_0b8_7b1a:
    nop                                           ; $7b1a: $00
    adc a                                         ; $7b1b: $8f
    ld a, $d7                                     ; $7b1c: $3e $d7
    daa                                           ; $7b1e: $27
    sbc h                                         ; $7b1f: $9c
    ld a, $22                                     ; $7b20: $3e $22
    nop                                           ; $7b22: $00
    or l                                          ; $7b23: $b5
    dec l                                         ; $7b24: $2d
    cp [hl]                                       ; $7b25: $be
    ld c, [hl]                                    ; $7b26: $4e
    cp a                                          ; $7b27: $bf
    ld h, a                                       ; $7b28: $67
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    rst $28                                       ; $7b2b: $ef
    dec a                                         ; $7b2c: $3d
    rrca                                          ; $7b2d: $0f
    add hl, de                                    ; $7b2e: $19
    ld a, a                                       ; $7b2f: $7f
    ld c, d                                       ; $7b30: $4a
    ld bc, $ee00                                  ; $7b31: $01 $00 $ee
    jr jr_0b8_7b0b                                ; $7b34: $18 $d5

    dec [hl]                                      ; $7b36: $35
    ld a, [hl]                                    ; $7b37: $7e
    ld b, [hl]                                    ; $7b38: $46
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    sub e                                         ; $7b3b: $93
    ld sp, $469e                                  ; $7b3c: $31 $9e $46
    dec c                                         ; $7b3f: $0d
    ld hl, $0000                                  ; $7b40: $21 $00 $00
    or [hl]                                       ; $7b43: $b6
    ld a, [bc]                                    ; $7b44: $0a
    ld a, a                                       ; $7b45: $7f
    ld c, d                                       ; $7b46: $4a
    nop                                           ; $7b47: $00

jr_0b8_7b48:
    jr nz, jr_0b8_7b4a                            ; $7b48: $20 $00

jr_0b8_7b4a:
    nop                                           ; $7b4a: $00
    ldh a, [rNR11]                                ; $7b4b: $f0 $11
    add hl, de                                    ; $7b4d: $19
    rlca                                          ; $7b4e: $07
    nop                                           ; $7b4f: $00
    jr nz, jr_0b8_7b52                            ; $7b50: $20 $00

jr_0b8_7b52:
    nop                                           ; $7b52: $00

jr_0b8_7b53:
    ld [$b741], a                                 ; $7b53: $ea $41 $b7
    ld a, [hl+]                                   ; $7b56: $2a
    sbc h                                         ; $7b57: $9c
    ld b, d                                       ; $7b58: $42
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    ld a, $57                                     ; $7b5b: $3e $57
    db $eb                                        ; $7b5d: $eb
    db $10                                        ; $7b5e: $10
    or d                                          ; $7b5f: $b2
    add hl, hl                                    ; $7b60: $29
    nop                                           ; $7b61: $00
    inc b                                         ; $7b62: $04
    rst $28                                       ; $7b63: $ef
    dec a                                         ; $7b64: $3d
    rst $38                                       ; $7b65: $ff
    ld a, a                                       ; $7b66: $7f
    ld e, [hl]                                    ; $7b67: $5e
    ld b, d                                       ; $7b68: $42
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    cp a                                          ; $7b6b: $bf
    ld c, d                                       ; $7b6c: $4a
    ret nc                                        ; $7b6d: $d0

jr_0b8_7b6e:
    add hl, sp                                    ; $7b6e: $39
    rst $38                                       ; $7b6f: $ff
    ld a, a                                       ; $7b70: $7f
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    sub $31                                       ; $7b73: $d6 $31
    ld e, e                                       ; $7b75: $5b
    ld b, d                                       ; $7b76: $42
    cp a                                          ; $7b77: $bf
    ld c, [hl]                                    ; $7b78: $4e
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    or [hl]                                       ; $7b7b: $b6
    ld a, [bc]                                    ; $7b7c: $0a
    nop                                           ; $7b7d: $00
    jr nz, @+$5d                                  ; $7b7e: $20 $5b

    ld b, d                                       ; $7b80: $42
    nop                                           ; $7b81: $00
    jr nz, jr_0b8_7b53                            ; $7b82: $20 $cf

    dec d                                         ; $7b84: $15
    ld hl, sp+$06                                 ; $7b85: $f8 $06
    ld d, e                                       ; $7b87: $53
    ld [de], a                                    ; $7b88: $12

jr_0b8_7b89:
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00

jr_0b8_7b8b:
    ret z                                         ; $7b8b: $c8

    ld c, c                                       ; $7b8c: $49
    cp b                                          ; $7b8d: $b8
    add hl, de                                    ; $7b8e: $19
    ld a, d                                       ; $7b8f: $7a
    ld a, [hl-]                                   ; $7b90: $3a
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    push af                                       ; $7b93: $f5
    dec [hl]                                      ; $7b94: $35
    db $dd                                        ; $7b95: $dd
    ld c, d                                       ; $7b96: $4a
    cp a                                          ; $7b97: $bf
    ld h, e                                       ; $7b98: $63
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    cp a                                          ; $7b9b: $bf
    ld c, [hl]                                    ; $7b9c: $4e
    ld [hl], a                                    ; $7b9d: $77
    ld bc, $7fff                                  ; $7b9e: $01 $ff $7f
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    cp a                                          ; $7ba3: $bf
    ld c, d                                       ; $7ba4: $4a
    sub a                                         ; $7ba5: $97
    ld de, $7fff                                  ; $7ba6: $11 $ff $7f
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    ld [hl], c                                    ; $7bab: $71
    add hl, hl                                    ; $7bac: $29
    ld e, e                                       ; $7bad: $5b
    ld b, d                                       ; $7bae: $42
    ld [$001c], a                                 ; $7baf: $ea $1c $00
    nop                                           ; $7bb2: $00
    ld [hl-], a                                   ; $7bb3: $32
    ld [de], a                                    ; $7bb4: $12
    nop                                           ; $7bb5: $00
    jr nz, jr_0b8_7b6e                            ; $7bb6: $20 $b6

    ld a, [bc]                                    ; $7bb8: $0a
    nop                                           ; $7bb9: $00
    jr nz, jr_0b8_7b8b                            ; $7bba: $20 $cf

    dec d                                         ; $7bbc: $15
    sub l                                         ; $7bbd: $95
    ld c, $32                                     ; $7bbe: $0e $32
    ld [de], a                                    ; $7bc0: $12
    nop                                           ; $7bc1: $00
    nop                                           ; $7bc2: $00
    ret z                                         ; $7bc3: $c8

    ld c, l                                       ; $7bc4: $4d
    ld sp, $5911                                  ; $7bc5: $31 $11 $59
    ld [hl+], a                                   ; $7bc8: $22
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    ld hl, sp+$39                                 ; $7bcb: $f8 $39
    sbc [hl]                                      ; $7bcd: $9e
    ld b, [hl]                                    ; $7bce: $46
    ld e, a                                       ; $7bcf: $5f
    ld e, e                                       ; $7bd0: $5b
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    ld [hl], a                                    ; $7bd3: $77
    ld bc, $4ebf                                  ; $7bd4: $01 $bf $4e
    or l                                          ; $7bd7: $b5
    dec [hl]                                      ; $7bd8: $35
    ld hl, $5c04                                  ; $7bd9: $21 $04 $5c
    ld b, [hl]                                    ; $7bdc: $46
    ld c, h                                       ; $7bdd: $4c
    dec h                                         ; $7bde: $25
    rst $38                                       ; $7bdf: $ff
    ld a, a                                       ; $7be0: $7f
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    sub e                                         ; $7be3: $93
    add hl, hl                                    ; $7be4: $29
    sbc a                                         ; $7be5: $9f
    ld c, d                                       ; $7be6: $4a
    ld hl, sp+$39                                 ; $7be7: $f8 $39
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    db $10                                        ; $7beb: $10
    ld d, $00                                     ; $7bec: $16 $00
    jr nz, @+$34                                  ; $7bee: $20 $32

    ld [de], a                                    ; $7bf0: $12
    nop                                           ; $7bf1: $00
    jr nz, jr_0b8_7b89                            ; $7bf2: $20 $95

    ld c, $7c                                     ; $7bf4: $0e $7c
    inc bc                                        ; $7bf6: $03
    ld e, a                                       ; $7bf7: $5f
    ld e, e                                       ; $7bf8: $5b
    nop                                           ; $7bf9: $00
    nop                                           ; $7bfa: $00
    ret z                                         ; $7bfb: $c8

    ld d, c                                       ; $7bfc: $51
    ldh a, [rNR11]                                ; $7bfd: $f0 $11
    sub a                                         ; $7bff: $97
    add hl, de                                    ; $7c00: $19
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    add hl, sp                                    ; $7c03: $39
    ld [hl], $bc                                  ; $7c04: $36 $bc
    ld b, d                                       ; $7c06: $42
    ccf                                           ; $7c07: $3f
    ld b, [hl]                                    ; $7c08: $46
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    ld [hl], c                                    ; $7c0b: $71
    add hl, hl                                    ; $7c0c: $29
    cp a                                          ; $7c0d: $bf
    ld c, [hl]                                    ; $7c0e: $4e
    call nc, Call_000_0031                        ; $7c0f: $d4 $31 $00
    nop                                           ; $7c12: $00
    sub e                                         ; $7c13: $93
    dec l                                         ; $7c14: $2d
    ld a, a                                       ; $7c15: $7f
    ld b, [hl]                                    ; $7c16: $46
    ld hl, sp+$39                                 ; $7c17: $f8 $39
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    db $10                                        ; $7c1b: $10
    ld [de], a                                    ; $7c1c: $12
    ld e, a                                       ; $7c1d: $5f
    ld b, [hl]                                    ; $7c1e: $46
    or l                                          ; $7c1f: $b5
    ld sp, $2000                                  ; $7c20: $31 $00 $20
    ld de, $1a12                                  ; $7c23: $11 $12 $1a
    inc bc                                        ; $7c26: $03
    or l                                          ; $7c27: $b5
    ld sp, $2000                                  ; $7c28: $31 $00 $20
    cp [hl]                                       ; $7c2b: $be
    dec hl                                        ; $7c2c: $2b
    rst $38                                       ; $7c2d: $ff
    ld e, a                                       ; $7c2e: $5f
    ccf                                           ; $7c2f: $3f
    ld b, [hl]                                    ; $7c30: $46
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00

jr_0b8_7c33:
    jp hl                                         ; $7c33: $e9


    ld d, c                                       ; $7c34: $51
    sub h                                         ; $7c35: $94
    ld de, $0b3a                                  ; $7c36: $11 $3a $0b
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    ld [hl], h                                    ; $7c3b: $74
    add hl, de                                    ; $7c3c: $19
    ld e, [hl]                                    ; $7c3d: $5e
    ld b, [hl]                                    ; $7c3e: $46
    ld hl, sp+$31                                 ; $7c3f: $f8 $31
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    di                                            ; $7c43: $f3
    inc d                                         ; $7c44: $14
    sbc [hl]                                      ; $7c45: $9e
    ld c, d                                       ; $7c46: $4a
    ld d, b                                       ; $7c47: $50
    dec h                                         ; $7c48: $25
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    rst $30                                       ; $7c4b: $f7
    dec [hl]                                      ; $7c4c: $35
    db $ec                                        ; $7c4d: $ec
    inc e                                         ; $7c4e: $1c
    ld a, a                                       ; $7c4f: $7f
    ld c, d                                       ; $7c50: $4a
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    or l                                          ; $7c53: $b5
    ld sp, $0b5b                                  ; $7c54: $31 $5b $0b
    ld a, a                                       ; $7c57: $7f
    ld c, d                                       ; $7c58: $4a
    nop                                           ; $7c59: $00
    jr nz, jr_0b8_7c76                            ; $7c5a: $20 $1a

    inc bc                                        ; $7c5c: $03
    ld e, e                                       ; $7c5d: $5b
    dec bc                                        ; $7c5e: $0b
    ld a, a                                       ; $7c5f: $7f
    ld c, d                                       ; $7c60: $4a
    nop                                           ; $7c61: $00
    jr nz, jr_0b8_7cd8                            ; $7c62: $20 $74

    add hl, de                                    ; $7c64: $19
    ld e, [hl]                                    ; $7c65: $5e
    ld b, [hl]                                    ; $7c66: $46
    ld hl, sp+$31                                 ; $7c67: $f8 $31
    ld [hl+], a                                   ; $7c69: $22

jr_0b8_7c6a:
    nop                                           ; $7c6a: $00
    cp [hl]                                       ; $7c6b: $be
    inc de                                        ; $7c6c: $13
    add sp, $51                                   ; $7c6d: $e8 $51
    rst $18                                       ; $7c6f: $df
    ld h, e                                       ; $7c70: $63
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    sub a                                         ; $7c73: $97
    add hl, de                                    ; $7c74: $19
    sbc a                                         ; $7c75: $9f

jr_0b8_7c76:
    ld c, d                                       ; $7c76: $4a
    db $10                                        ; $7c77: $10
    dec c                                         ; $7c78: $0d
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    or e                                          ; $7c7b: $b3
    dec l                                         ; $7c7c: $2d
    call z, $7e14                                 ; $7c7d: $cc $14 $7e
    ld b, [hl]                                    ; $7c80: $46
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    sub $31                                       ; $7c83: $d6 $31
    sbc a                                         ; $7c85: $9f
    ld c, d                                       ; $7c86: $4a
    ld hl, sp+$39                                 ; $7c87: $f8 $39
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    sub $35                                       ; $7c8b: $d6 $35
    cp [hl]                                       ; $7c8d: $be
    inc de                                        ; $7c8e: $13
    ccf                                           ; $7c8f: $3f
    ld d, e                                       ; $7c90: $53
    nop                                           ; $7c91: $00
    jr nz, jr_0b8_7c6a                            ; $7c92: $20 $d6

    dec [hl]                                      ; $7c94: $35
    cp [hl]                                       ; $7c95: $be
    inc de                                        ; $7c96: $13
    ccf                                           ; $7c97: $3f
    ld d, e                                       ; $7c98: $53
    nop                                           ; $7c99: $00
    jr nz, jr_0b8_7c33                            ; $7c9a: $20 $97

    add hl, de                                    ; $7c9c: $19
    sbc a                                         ; $7c9d: $9f
    ld c, d                                       ; $7c9e: $4a
    db $10                                        ; $7c9f: $10
    dec c                                         ; $7ca0: $0d
    nop                                           ; $7ca1: $00
    ld [$37be], sp                                ; $7ca2: $08 $be $37
    add hl, bc                                    ; $7ca5: $09
    ld d, [hl]                                    ; $7ca6: $56
    rst $38                                       ; $7ca7: $ff
    ld l, e                                       ; $7ca8: $6b
    inc hl                                        ; $7ca9: $23
    nop                                           ; $7caa: $00
    add hl, bc                                    ; $7cab: $09
    ld d, [hl]                                    ; $7cac: $56
    ld a, [$bf29]                                 ; $7cad: $fa $29 $bf
    ld c, d                                       ; $7cb0: $4a
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    ld a, [hl-]                                   ; $7cb3: $3a
    ld b, d                                       ; $7cb4: $42
    db $ec                                        ; $7cb5: $ec
    inc e                                         ; $7cb6: $1c
    ld a, [hl]                                    ; $7cb7: $7e
    ld b, [hl]                                    ; $7cb8: $46
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    or [hl]                                       ; $7cbb: $b6
    ld sp, $4a9e                                  ; $7cbc: $31 $9e $4a
    jp z, $0118                                   ; $7cbf: $ca $18 $01

    inc c                                         ; $7cc2: $0c
    ld hl, sp+$39                                 ; $7cc3: $f8 $39
    rst $38                                       ; $7cc5: $ff
    ld l, e                                       ; $7cc6: $6b
    cp [hl]                                       ; $7cc7: $be
    rra                                           ; $7cc8: $1f
    nop                                           ; $7cc9: $00
    jr nz, @-$06                                  ; $7cca: $20 $f8

    add hl, sp                                    ; $7ccc: $39
    rst $38                                       ; $7ccd: $ff
    ld l, e                                       ; $7cce: $6b
    cp [hl]                                       ; $7ccf: $be
    rra                                           ; $7cd0: $1f
    nop                                           ; $7cd1: $00
    jr nz, jr_0b8_7cdd                            ; $7cd2: $20 $09

    ld d, [hl]                                    ; $7cd4: $56
    ld a, [$bf29]                                 ; $7cd5: $fa $29 $bf

jr_0b8_7cd8:
    ld c, d                                       ; $7cd8: $4a
    nop                                           ; $7cd9: $00
    ld [$0f7d], sp                                ; $7cda: $08 $7d $0f

jr_0b8_7cdd:
    add hl, bc                                    ; $7cdd: $09
    ld d, [hl]                                    ; $7cde: $56
    rst $38                                       ; $7cdf: $ff
    ld h, e                                       ; $7ce0: $63
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    add hl, bc                                    ; $7ce3: $09
    ld d, [hl]                                    ; $7ce4: $56
    ld hl, sp+$39                                 ; $7ce5: $f8 $39
    cp a                                          ; $7ce7: $bf
    ld c, d                                       ; $7ce8: $4a
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    ld d, c                                       ; $7ceb: $51
    dec h                                         ; $7cec: $25
    ld a, [hl-]                                   ; $7ced: $3a
    ld b, d                                       ; $7cee: $42
    ld de, $0012                                  ; $7cef: $11 $12 $00
    nop                                           ; $7cf2: $00
    or b                                          ; $7cf3: $b0
    add hl, de                                    ; $7cf4: $19
    dec sp                                        ; $7cf5: $3b
    rrca                                          ; $7cf6: $0f
    jp z, RST_18                                  ; $7cf7: $ca $18 $00

    ld [$0b3b], sp                                ; $7cfa: $08 $3b $0b
    cp [hl]                                       ; $7cfd: $be
    ld b, a                                       ; $7cfe: $47
    rst $38                                       ; $7cff: $ff
    ld [hl], e                                    ; $7d00: $73
    nop                                           ; $7d01: $00
    jr nz, jr_0b8_7d3f                            ; $7d02: $20 $3b

    dec bc                                        ; $7d04: $0b
    cp [hl]                                       ; $7d05: $be
    ld b, a                                       ; $7d06: $47
    rst $38                                       ; $7d07: $ff
    ld [hl], e                                    ; $7d08: $73
    nop                                           ; $7d09: $00
    jr nz, jr_0b8_7d15                            ; $7d0a: $20 $09

    ld d, [hl]                                    ; $7d0c: $56
    ld hl, sp+$39                                 ; $7d0d: $f8 $39
    cp a                                          ; $7d0f: $bf
    ld c, d                                       ; $7d10: $4a
    nop                                           ; $7d11: $00
    jr nz, @+$55                                  ; $7d12: $20 $53

    ld [de], a                                    ; $7d14: $12

jr_0b8_7d15:
    sbc $57                                       ; $7d15: $de $57
    ld a, l                                       ; $7d17: $7d
    rlca                                          ; $7d18: $07
    ld de, $be12                                  ; $7d19: $11 $12 $be
    ld b, a                                       ; $7d1c: $47
    ld a, h                                       ; $7d1d: $7c
    dec bc                                        ; $7d1e: $0b
    rst $38                                       ; $7d1f: $ff
    ld l, a                                       ; $7d20: $6f
    nop                                           ; $7d21: $00
    nop                                           ; $7d22: $00
    ld de, $ca12                                  ; $7d23: $11 $12 $ca
    jr @+$76                                      ; $7d26: $18 $74

    ld a, [bc]                                    ; $7d28: $0a
    rst $10                                       ; $7d29: $d7
    ld b, $be                                     ; $7d2a: $06 $be
    dec sp                                        ; $7d2c: $3b
    rst $38                                       ; $7d2d: $ff
    ld l, a                                       ; $7d2e: $6f
    ld a, l                                       ; $7d2f: $7d
    dec bc                                        ; $7d30: $0b
    nop                                           ; $7d31: $00
    jr nz, @+$55                                  ; $7d32: $20 $53

    ld a, [bc]                                    ; $7d34: $0a
    sbc $53                                       ; $7d35: $de $53
    ld a, l                                       ; $7d37: $7d
    dec bc                                        ; $7d38: $0b
    nop                                           ; $7d39: $00
    jr nz, @+$55                                  ; $7d3a: $20 $53

    ld a, [bc]                                    ; $7d3c: $0a
    sbc $53                                       ; $7d3d: $de $53

jr_0b8_7d3f:
    ld a, l                                       ; $7d3f: $7d
    dec bc                                        ; $7d40: $0b

    db $d0, $01, $0f, $01, $20, $00, $ff, $02, $58, $40, $bf, $c0, $3f, $50, $04, $bf
    db $50, $ef, $f0, $0f, $1a, $38, $1f, $f0, $00, $30, $ef, $30, $cf, $38, $cf, $3f
    db $e1, $03, $0f, $f8, $00, $ff, $80, $7f, $02, $08, $16, $08, $08, $04, $fb, $c5
    db $7b, $40, $18, $20, $ff, $20, $01, $df, $ef, $18, $22, $dd, $22, $fd, $50, $38
    db $48, $9f, $20, $00, $05, $fb, $20, $38, $e7, $1c, $2e, $10, $db, $2c, $f3, $70
    db $18, $08, $ff, $28, $d7, $04, $ef, $10, $28, $d7, $08, $7e, $20, $08, $ff, $01
    db $08, $f7, $f8, $07, $88, $77, $88, $58, $00, $00, $00, $ff, $03, $fe, $00, $ff
    db $01, $ff, $04, $01, $fe, $03, $fe, $03, $50, $10, $f0, $1f, $00, $c0, $3f, $e0
    db $3f, $60, $df, $30, $df, $21, $30, $cf, $b0, $08, $0f, $f8, $03, $fc, $02, $28
    db $00, $04, $ff, $04, $fb, $fc, $03, $07, $fa, $60, $04, $bc, $08, $be, $00, $20
    db $ff, $60, $df, $70, $00, $9f, $dc, $67, $b0, $6f, $f3, $9e, $d0, $40, $6f, $de
    db $48, $e7, $3c, $81, $7e, $81, $7e, $8a, $70, $48, $08, $f7, $48, $6c, $00, $21
    db $bc, $00, $31, $04, $df, $3f, $c6, $3f, $f0, $0c, $09, $c5, $3a, $00, $c7, $38
    db $c5, $3a, $c5, $3b, $df, $70, $40, $80, $1a, $11, $02, $fd, $02, $fd, $42, $fd
    db $08, $42, $bd, $cf, $38, $2a, $19, $05, $fa, $07, $00, $f8, $45, $fa, $45, $bb
    db $df, $30, $40, $20, $bf, $40, $3c, $01, $0c, $f3, $0c, $f3, $4c, $06, $f3, $4e
    db $bb, $c7, $3d, $b6, $08, $4e, $39, $63, $19, $de, $e0, $3f, $5c, $09, $2e, $19
    db $80, $7f, $0e, $18, $80, $dc, $00, $fc, $06, $fd, $06, $fb, $04, $fb, $20, $1f
    db $f1, $7a, $19, $f0, $0f, $18, $ef, $18, $00, $e7, $18, $f7, $0c, $f7, $0c, $f3
    db $3f, $79, $e1, $20, $08, $dc, $18, $6a, $09, $9c, $09, $c0, $3f, $68, $18, $40
    db $c0, $1a, $11, $00, $ff, $f8, $8f, $20, $df, $98, $02, $08, $fb, $8e, $ba, $19
    db $d4, $08, $91, $7e, $91, $02, $6e, $f7, $0c, $10, $ef, $10, $cc, $01

    ret nc                                        ; $7e9f: $d0

    ld bc, $010f                                  ; $7ea0: $01 $0f $01
    jr nz, jr_0b8_7ea5                            ; $7ea3: $20 $00

jr_0b8_7ea5:
    rst $38                                       ; $7ea5: $ff
    ld [bc], a                                    ; $7ea6: $02
    ld e, b                                       ; $7ea7: $58
    ld b, b                                       ; $7ea8: $40

jr_0b8_7ea9:
    cp a                                          ; $7ea9: $bf
    ret nz                                        ; $7eaa: $c0

    ccf                                           ; $7eab: $3f
    ld d, b                                       ; $7eac: $50
    inc b                                         ; $7ead: $04
    cp a                                          ; $7eae: $bf
    ld d, b                                       ; $7eaf: $50
    rst $28                                       ; $7eb0: $ef
    ldh a, [rIF]                                  ; $7eb1: $f0 $0f
    ld a, [de]                                    ; $7eb3: $1a
    jr c, @+$21                                   ; $7eb4: $38 $1f

    ldh a, [rP1]                                  ; $7eb6: $f0 $00
    jr nc, jr_0b8_7ea9                            ; $7eb8: $30 $ef

    jr nc, @-$2f                                  ; $7eba: $30 $cf

    jr c, @-$2f                                   ; $7ebc: $38 $cf

    ccf                                           ; $7ebe: $3f
    pop hl                                        ; $7ebf: $e1
    inc bc                                        ; $7ec0: $03
    rrca                                          ; $7ec1: $0f
    ld hl, sp+$00                                 ; $7ec2: $f8 $00
    rst $38                                       ; $7ec4: $ff
    add b                                         ; $7ec5: $80
    ld a, a                                       ; $7ec6: $7f
    ld [bc], a                                    ; $7ec7: $02
    ld [$0816], sp                                ; $7ec8: $08 $16 $08

jr_0b8_7ecb:
    ld [$fb04], sp                                ; $7ecb: $08 $04 $fb
    push bc                                       ; $7ece: $c5
    ld a, e                                       ; $7ecf: $7b

jr_0b8_7ed0:
    ld b, b                                       ; $7ed0: $40
    jr @+$22                                      ; $7ed1: $18 $20

    rst $38                                       ; $7ed3: $ff
    jr nz, jr_0b8_7ed7                            ; $7ed4: $20 $01

    rst $18                                       ; $7ed6: $df

jr_0b8_7ed7:
    rst $28                                       ; $7ed7: $ef
    jr jr_0b8_7efc                                ; $7ed8: $18 $22

    db $dd                                        ; $7eda: $dd
    ld [hl+], a                                   ; $7edb: $22
    db $fd                                        ; $7edc: $fd
    ld d, b                                       ; $7edd: $50
    jr c, jr_0b8_7f28                             ; $7ede: $38 $48

    sbc a                                         ; $7ee0: $9f
    jr nz, jr_0b8_7ee3                            ; $7ee1: $20 $00

jr_0b8_7ee3:
    dec b                                         ; $7ee3: $05
    ei                                            ; $7ee4: $fb
    jr nz, @+$3a                                  ; $7ee5: $20 $38

    rst $20                                       ; $7ee7: $e7
    inc e                                         ; $7ee8: $1c
    ld l, $10                                     ; $7ee9: $2e $10
    db $db                                        ; $7eeb: $db
    inc l                                         ; $7eec: $2c
    di                                            ; $7eed: $f3
    ld [hl], b                                    ; $7eee: $70
    jr jr_0b8_7ef9                                ; $7eef: $18 $08

    rst $38                                       ; $7ef1: $ff
    jr z, jr_0b8_7ecb                             ; $7ef2: $28 $d7

    inc b                                         ; $7ef4: $04
    rst $28                                       ; $7ef5: $ef
    db $10                                        ; $7ef6: $10
    jr z, jr_0b8_7ed0                             ; $7ef7: $28 $d7

jr_0b8_7ef9:
    ld [$207e], sp                                ; $7ef9: $08 $7e $20

jr_0b8_7efc:
    ld [$01ff], sp                                ; $7efc: $08 $ff $01
    ld [$f8f7], sp                                ; $7eff: $08 $f7 $f8
    rlca                                          ; $7f02: $07

jr_0b8_7f03:
    adc b                                         ; $7f03: $88
    ld [hl], a                                    ; $7f04: $77
    adc b                                         ; $7f05: $88
    ld e, b                                       ; $7f06: $58
    nop                                           ; $7f07: $00
    nop                                           ; $7f08: $00
    nop                                           ; $7f09: $00
    rst $38                                       ; $7f0a: $ff
    inc bc                                        ; $7f0b: $03
    cp $00                                        ; $7f0c: $fe $00
    rst $38                                       ; $7f0e: $ff
    ld bc, $04ff                                  ; $7f0f: $01 $ff $04
    ld bc, $03fe                                  ; $7f12: $01 $fe $03
    cp $03                                        ; $7f15: $fe $03
    ld d, b                                       ; $7f17: $50
    db $10                                        ; $7f18: $10
    ldh a, [$1f]                                  ; $7f19: $f0 $1f
    nop                                           ; $7f1b: $00
    ret nz                                        ; $7f1c: $c0

    ccf                                           ; $7f1d: $3f
    ldh [$3f], a                                  ; $7f1e: $e0 $3f
    ld h, b                                       ; $7f20: $60
    rst $18                                       ; $7f21: $df
    jr nc, jr_0b8_7f03                            ; $7f22: $30 $df

    ld hl, $cf30                                  ; $7f24: $21 $30 $cf
    or b                                          ; $7f27: $b0

jr_0b8_7f28:
    ld [$f80f], sp                                ; $7f28: $08 $0f $f8
    inc bc                                        ; $7f2b: $03
    db $fc                                        ; $7f2c: $fc
    ld [bc], a                                    ; $7f2d: $02
    jr z, jr_0b8_7f30                             ; $7f2e: $28 $00

jr_0b8_7f30:
    inc b                                         ; $7f30: $04
    rst $38                                       ; $7f31: $ff
    inc b                                         ; $7f32: $04
    ei                                            ; $7f33: $fb
    db $fc                                        ; $7f34: $fc

jr_0b8_7f35:
    inc bc                                        ; $7f35: $03
    rlca                                          ; $7f36: $07
    ld a, [$0460]                                 ; $7f37: $fa $60 $04
    cp h                                          ; $7f3a: $bc
    ld [$00be], sp                                ; $7f3b: $08 $be $00
    jr nz, @+$01                                  ; $7f3e: $20 $ff

    ld h, b                                       ; $7f40: $60
    rst $18                                       ; $7f41: $df
    ld [hl], b                                    ; $7f42: $70
    nop                                           ; $7f43: $00
    sbc a                                         ; $7f44: $9f
    call c, $b067                                 ; $7f45: $dc $67 $b0
    ld l, a                                       ; $7f48: $6f
    di                                            ; $7f49: $f3
    sbc [hl]                                      ; $7f4a: $9e
    ret nc                                        ; $7f4b: $d0

    ld b, b                                       ; $7f4c: $40
    ld l, a                                       ; $7f4d: $6f
    sbc $48                                       ; $7f4e: $de $48
    rst $20                                       ; $7f50: $e7
    inc a                                         ; $7f51: $3c
    add c                                         ; $7f52: $81

jr_0b8_7f53:
    ld a, [hl]                                    ; $7f53: $7e
    add c                                         ; $7f54: $81
    ld a, [hl]                                    ; $7f55: $7e
    adc d                                         ; $7f56: $8a
    ld [hl], b                                    ; $7f57: $70
    ld c, b                                       ; $7f58: $48
    ld [$48f7], sp                                ; $7f59: $08 $f7 $48
    ld l, h                                       ; $7f5c: $6c
    nop                                           ; $7f5d: $00
    ld hl, $00bc                                  ; $7f5e: $21 $bc $00
    ld sp, $df04                                  ; $7f61: $31 $04 $df
    ccf                                           ; $7f64: $3f
    add $3f                                       ; $7f65: $c6 $3f
    ldh a, [$0c]                                  ; $7f67: $f0 $0c
    add hl, bc                                    ; $7f69: $09
    push bc                                       ; $7f6a: $c5
    ld a, [hl-]                                   ; $7f6b: $3a
    nop                                           ; $7f6c: $00
    rst $00                                       ; $7f6d: $c7
    jr c, jr_0b8_7f35                             ; $7f6e: $38 $c5

    ld a, [hl-]                                   ; $7f70: $3a
    push bc                                       ; $7f71: $c5
    dec sp                                        ; $7f72: $3b
    rst $18                                       ; $7f73: $df
    ld [hl], b                                    ; $7f74: $70
    ld b, b                                       ; $7f75: $40
    add b                                         ; $7f76: $80
    ld a, [de]                                    ; $7f77: $1a
    ld de, $fd02                                  ; $7f78: $11 $02 $fd
    ld [bc], a                                    ; $7f7b: $02
    db $fd                                        ; $7f7c: $fd
    ld b, d                                       ; $7f7d: $42
    db $fd                                        ; $7f7e: $fd
    ld [$bd42], sp                                ; $7f7f: $08 $42 $bd
    rst $08                                       ; $7f82: $cf
    jr c, jr_0b8_7faf                             ; $7f83: $38 $2a

    add hl, de                                    ; $7f85: $19
    dec b                                         ; $7f86: $05
    ld a, [$0007]                                 ; $7f87: $fa $07 $00
    ld hl, sp+$45                                 ; $7f8a: $f8 $45
    ld a, [$bb45]                                 ; $7f8c: $fa $45 $bb
    rst $18                                       ; $7f8f: $df
    jr nc, jr_0b8_7fd2                            ; $7f90: $30 $40

    jr nz, jr_0b8_7f53                            ; $7f92: $20 $bf

    ld b, b                                       ; $7f94: $40
    inc a                                         ; $7f95: $3c
    ld bc, $f30c                                  ; $7f96: $01 $0c $f3
    inc c                                         ; $7f99: $0c
    di                                            ; $7f9a: $f3
    ld c, h                                       ; $7f9b: $4c
    ld b, $f3                                     ; $7f9c: $06 $f3
    ld c, [hl]                                    ; $7f9e: $4e
    cp e                                          ; $7f9f: $bb
    rst $00                                       ; $7fa0: $c7
    dec a                                         ; $7fa1: $3d
    or [hl]                                       ; $7fa2: $b6
    ld [$394e], sp                                ; $7fa3: $08 $4e $39
    ld h, e                                       ; $7fa6: $63
    add hl, de                                    ; $7fa7: $19
    sbc $e0                                       ; $7fa8: $de $e0
    ccf                                           ; $7faa: $3f
    ld e, h                                       ; $7fab: $5c
    add hl, bc                                    ; $7fac: $09
    ld l, $19                                     ; $7fad: $2e $19

jr_0b8_7faf:
    add b                                         ; $7faf: $80
    ld a, a                                       ; $7fb0: $7f
    ld c, $18                                     ; $7fb1: $0e $18
    add b                                         ; $7fb3: $80
    call c, $fc00                                 ; $7fb4: $dc $00 $fc
    ld b, $fd                                     ; $7fb7: $06 $fd
    ld b, $fb                                     ; $7fb9: $06 $fb
    inc b                                         ; $7fbb: $04
    ei                                            ; $7fbc: $fb
    jr nz, @+$21                                  ; $7fbd: $20 $1f

    pop af                                        ; $7fbf: $f1
    ld a, d                                       ; $7fc0: $7a
    add hl, de                                    ; $7fc1: $19

jr_0b8_7fc2:
    ldh a, [rIF]                                  ; $7fc2: $f0 $0f
    jr @-$0f                                      ; $7fc4: $18 $ef

    jr jr_0b8_7fc8                                ; $7fc6: $18 $00

jr_0b8_7fc8:
    rst $20                                       ; $7fc8: $e7
    jr jr_0b8_7fc2                                ; $7fc9: $18 $f7

    inc c                                         ; $7fcb: $0c
    rst $30                                       ; $7fcc: $f7
    inc c                                         ; $7fcd: $0c
    di                                            ; $7fce: $f3
    ccf                                           ; $7fcf: $3f
    ld a, c                                       ; $7fd0: $79
    pop hl                                        ; $7fd1: $e1

jr_0b8_7fd2:
    jr nz, jr_0b8_7fdc                            ; $7fd2: $20 $08

    call c, Call_0b8_6a18                         ; $7fd4: $dc $18 $6a
    add hl, bc                                    ; $7fd7: $09
    sbc h                                         ; $7fd8: $9c
    add hl, bc                                    ; $7fd9: $09
    ret nz                                        ; $7fda: $c0

    ccf                                           ; $7fdb: $3f

jr_0b8_7fdc:
    ld l, b                                       ; $7fdc: $68
    jr @+$42                                      ; $7fdd: $18 $40

    ret nz                                        ; $7fdf: $c0

    ld a, [de]                                    ; $7fe0: $1a
    ld de, $ff00                                  ; $7fe1: $11 $00 $ff
    ld hl, sp-$71                                 ; $7fe4: $f8 $8f
    jr nz, @-$1f                                  ; $7fe6: $20 $df

    sbc b                                         ; $7fe8: $98
    ld [bc], a                                    ; $7fe9: $02
    ld [$8efb], sp                                ; $7fea: $08 $fb $8e
    cp d                                          ; $7fed: $ba
    add hl, de                                    ; $7fee: $19
    call nc, $9108                                ; $7fef: $d4 $08 $91
    ld a, [hl]                                    ; $7ff2: $7e
    sub c                                         ; $7ff3: $91
    ld [bc], a                                    ; $7ff4: $02
    ld l, [hl]                                    ; $7ff5: $6e
    rst $30                                       ; $7ff6: $f7
    inc c                                         ; $7ff7: $0c
    db $10                                        ; $7ff8: $10
    rst $28                                       ; $7ff9: $ef
    db $10                                        ; $7ffa: $10
    call z, $ff01                                 ; $7ffb: $cc $01 $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
