; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e3", ROMX[$4000], BANK[$e3]

    db $e3                                        ; $4000: $e3
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld hl, sp+$07                                 ; $4003: $f8 $07
    ld hl, sp+$07                                 ; $4005: $f8 $07
    rst $28                                       ; $4007: $ef
    ld hl, sp-$10                                 ; $4008: $f8 $f0
    cp $ff                                        ; $400a: $fe $ff
    ld hl, sp-$01                                 ; $400c: $f8 $ff
    cp $02                                        ; $400e: $fe $02
    dec a                                         ; $4010: $3d

jr_0e3_4011:
    sbc [hl]                                      ; $4011: $9e
    ld a, a                                       ; $4012: $7f
    ld b, d                                       ; $4013: $42
    rst $38                                       ; $4014: $ff
    and a                                         ; $4015: $a7
    rst $38                                       ; $4016: $ff
    reti                                          ; $4017: $d9


    rst $38                                       ; $4018: $ff
    or $ff                                        ; $4019: $f6 $ff
    ret nc                                        ; $401b: $d0

    ld a, a                                       ; $401c: $7f
    ld [hl], b                                    ; $401d: $70
    ccf                                           ; $401e: $3f
    ld [hl-], a                                   ; $401f: $32
    rra                                           ; $4020: $1f
    add hl, de                                    ; $4021: $19

jr_0e3_4022:
    cpl                                           ; $4022: $2f
    ccf                                           ; $4023: $3f
    ld [hl+], a                                   ; $4024: $22
    ld a, $4a                                     ; $4025: $3e $4a
    ld a, [hl]                                    ; $4027: $7e
    ld l, e                                       ; $4028: $6b
    ld a, a                                       ; $4029: $7f
    ld [hl], c                                    ; $402a: $71
    ld e, a                                       ; $402b: $5f
    ld [hl], c                                    ; $402c: $71
    ld e, a                                       ; $402d: $5f
    rst $20                                       ; $402e: $e7
    cp [hl]                                       ; $402f: $be
    inc b                                         ; $4030: $04
    jr nz, jr_0e3_4035                            ; $4031: $20 $02

    nop                                           ; $4033: $00
    ld [bc], a                                    ; $4034: $02

jr_0e3_4035:
    db $20, $82                                   ; $4035: $20 $82
    jr nc, jr_0e3_4049                            ; $4037: $30 $10

    ld b, $20                                     ; $4039: $06 $20
    ld [$0200], sp                                ; $403b: $08 $00 $02
    ld a, [hl-]                                   ; $403e: $3a
    add d                                         ; $403f: $82
    dec a                                         ; $4040: $3d
    daa                                           ; $4041: $27
    ld [bc], a                                    ; $4042: $02
    ccf                                           ; $4043: $3f
    add [hl]                                      ; $4044: $86
    cp $0e                                        ; $4045: $fe $0e
    db $fc                                        ; $4047: $fc
    cp h                                          ; $4048: $bc

jr_0e3_4049:
    rst $38                                       ; $4049: $ff
    sbc a                                         ; $404a: $9f
    ld [bc], a                                    ; $404b: $02
    ldh [rNR32], a                                ; $404c: $e0 $1c
    nop                                           ; $404e: $00
    add h                                         ; $404f: $84
    dec a                                         ; $4050: $3d
    daa                                           ; $4051: $27
    ld a, [hl-]                                   ; $4052: $3a
    ld a, $02                                     ; $4053: $3e $02
    inc c                                         ; $4055: $0c
    jr jr_0e3_4058                                ; $4056: $18 $00

jr_0e3_4058:
    rst $38                                       ; $4058: $ff
    dec c                                         ; $4059: $0d
    inc b                                         ; $405a: $04
    ld hl, sp+$07                                 ; $405b: $f8 $07
    ld hl, sp+$07                                 ; $405d: $f8 $07
    rst $28                                       ; $405f: $ef
    ld hl, sp-$10                                 ; $4060: $f8 $f0
    cp $ff                                        ; $4062: $fe $ff
    ld hl, sp-$01                                 ; $4064: $f8 $ff
    db $fd                                        ; $4066: $fd
    ld [bc], a                                    ; $4067: $02

jr_0e3_4068:
    dec a                                         ; $4068: $3d
    sbc [hl]                                      ; $4069: $9e
    ld a, a                                       ; $406a: $7f
    ld b, d                                       ; $406b: $42
    rst $38                                       ; $406c: $ff
    and a                                         ; $406d: $a7
    rst $38                                       ; $406e: $ff
    reti                                          ; $406f: $d9


    rst $38                                       ; $4070: $ff

jr_0e3_4071:
    or $ff                                        ; $4071: $f6 $ff
    ret nc                                        ; $4073: $d0

    ld a, a                                       ; $4074: $7f
    ld [hl], b                                    ; $4075: $70
    ccf                                           ; $4076: $3f
    ld [hl-], a                                   ; $4077: $32
    rra                                           ; $4078: $1f
    add hl, de                                    ; $4079: $19
    cpl                                           ; $407a: $2f
    ccf                                           ; $407b: $3f
    ld [hl+], a                                   ; $407c: $22
    ld a, $4a                                     ; $407d: $3e $4a
    ld a, [hl]                                    ; $407f: $7e
    ld l, e                                       ; $4080: $6b
    ld a, a                                       ; $4081: $7f
    ld [hl], c                                    ; $4082: $71
    ld e, a                                       ; $4083: $5f
    ld [hl], c                                    ; $4084: $71
    ld e, a                                       ; $4085: $5f
    rst $20                                       ; $4086: $e7
    cp [hl]                                       ; $4087: $be
    inc b                                         ; $4088: $04
    jr nz, jr_0e3_408d                            ; $4089: $20 $02

    nop                                           ; $408b: $00
    ld [bc], a                                    ; $408c: $02

jr_0e3_408d:
    jr nz, jr_0e3_4011                            ; $408d: $20 $82

    jr nc, jr_0e3_40a1                            ; $408f: $30 $10

    ld b, $20                                     ; $4091: $06 $20
    ld [$0200], sp                                ; $4093: $08 $00 $02
    jr c, jr_0e3_4022                             ; $4096: $38 $8a

    ld a, $26                                     ; $4098: $3e $26
    dec sp                                        ; $409a: $3b
    ccf                                           ; $409b: $3f
    db $fd                                        ; $409c: $fd
    rlca                                          ; $409d: $07
    db $fc                                        ; $409e: $fc
    cp h                                          ; $409f: $bc
    rst $38                                       ; $40a0: $ff

jr_0e3_40a1:
    sbc a                                         ; $40a1: $9f
    ld [bc], a                                    ; $40a2: $02
    ldh [rNR32], a                                ; $40a3: $e0 $1c
    nop                                           ; $40a5: $00
    add d                                         ; $40a6: $82
    dec e                                         ; $40a7: $1d
    rla                                           ; $40a8: $17
    ld [bc], a                                    ; $40a9: $02
    ld e, $02                                     ; $40aa: $1e $02
    inc b                                         ; $40ac: $04
    jr jr_0e3_40af                                ; $40ad: $18 $00

jr_0e3_40af:
    rst $38                                       ; $40af: $ff
    dec c                                         ; $40b0: $0d
    inc b                                         ; $40b1: $04
    ld hl, sp+$07                                 ; $40b2: $f8 $07
    ld hl, sp+$07                                 ; $40b4: $f8 $07
    rst $28                                       ; $40b6: $ef
    ld hl, sp-$10                                 ; $40b7: $f8 $f0
    cp $ff                                        ; $40b9: $fe $ff
    ld hl, sp-$01                                 ; $40bb: $f8 $ff
    db $fd                                        ; $40bd: $fd
    ld [bc], a                                    ; $40be: $02
    dec a                                         ; $40bf: $3d

jr_0e3_40c0:
    sbc [hl]                                      ; $40c0: $9e
    ld a, a                                       ; $40c1: $7f
    ld b, d                                       ; $40c2: $42
    rst $38                                       ; $40c3: $ff
    and a                                         ; $40c4: $a7
    rst $38                                       ; $40c5: $ff
    reti                                          ; $40c6: $d9


    rst $38                                       ; $40c7: $ff
    or $ff                                        ; $40c8: $f6 $ff
    ret nc                                        ; $40ca: $d0

    ld a, a                                       ; $40cb: $7f
    ld [hl], b                                    ; $40cc: $70
    ccf                                           ; $40cd: $3f
    ld [hl-], a                                   ; $40ce: $32
    rra                                           ; $40cf: $1f
    add hl, de                                    ; $40d0: $19

jr_0e3_40d1:
    cpl                                           ; $40d1: $2f
    ccf                                           ; $40d2: $3f
    ld [hl+], a                                   ; $40d3: $22
    ld a, $4a                                     ; $40d4: $3e $4a
    ld a, [hl]                                    ; $40d6: $7e
    ld l, e                                       ; $40d7: $6b
    ld a, a                                       ; $40d8: $7f
    ld [hl], c                                    ; $40d9: $71
    ld e, a                                       ; $40da: $5f
    ld [hl], c                                    ; $40db: $71
    ld e, a                                       ; $40dc: $5f
    rst $20                                       ; $40dd: $e7
    cp [hl]                                       ; $40de: $be
    inc b                                         ; $40df: $04
    jr nz, jr_0e3_40e4                            ; $40e0: $20 $02

    nop                                           ; $40e2: $00
    ld [bc], a                                    ; $40e3: $02

jr_0e3_40e4:
    jr nz, jr_0e3_4068                            ; $40e4: $20 $82

    jr nc, jr_0e3_40f8                            ; $40e6: $30 $10

    ld b, $20                                     ; $40e8: $06 $20
    ld [$0200], sp                                ; $40ea: $08 $00 $02
    jr c, jr_0e3_4071                             ; $40ed: $38 $82

    inc a                                         ; $40ef: $3c
    inc l                                         ; $40f0: $2c
    ld [bc], a                                    ; $40f1: $02
    ccf                                           ; $40f2: $3f
    add [hl]                                      ; $40f3: $86
    db $fd                                        ; $40f4: $fd
    rlca                                          ; $40f5: $07
    db $fc                                        ; $40f6: $fc
    cp h                                          ; $40f7: $bc

jr_0e3_40f8:
    rst $38                                       ; $40f8: $ff
    sbc a                                         ; $40f9: $9f
    ld [bc], a                                    ; $40fa: $02
    ldh [rNR32], a                                ; $40fb: $e0 $1c
    nop                                           ; $40fd: $00
    add d                                         ; $40fe: $82
    dec e                                         ; $40ff: $1d
    rla                                           ; $4100: $17
    ld [bc], a                                    ; $4101: $02
    ld e, $02                                     ; $4102: $1e $02
    inc b                                         ; $4104: $04
    jr jr_0e3_4107                                ; $4105: $18 $00

jr_0e3_4107:
    rst $38                                       ; $4107: $ff
    dec c                                         ; $4108: $0d
    inc b                                         ; $4109: $04
    ld hl, sp+$07                                 ; $410a: $f8 $07
    ld hl, sp+$07                                 ; $410c: $f8 $07
    rst $28                                       ; $410e: $ef
    ld hl, sp-$10                                 ; $410f: $f8 $f0
    cp $ff                                        ; $4111: $fe $ff
    ld hl, sp-$01                                 ; $4113: $f8 $ff
    db $fd                                        ; $4115: $fd
    ld [bc], a                                    ; $4116: $02
    dec a                                         ; $4117: $3d
    sbc [hl]                                      ; $4118: $9e
    ld a, a                                       ; $4119: $7f
    ld b, d                                       ; $411a: $42
    rst $38                                       ; $411b: $ff
    and a                                         ; $411c: $a7
    rst $38                                       ; $411d: $ff
    reti                                          ; $411e: $d9


    rst $38                                       ; $411f: $ff
    or $ff                                        ; $4120: $f6 $ff
    ret nc                                        ; $4122: $d0

    ld a, a                                       ; $4123: $7f
    ld [hl], b                                    ; $4124: $70
    ccf                                           ; $4125: $3f
    ld [hl-], a                                   ; $4126: $32
    rra                                           ; $4127: $1f
    add hl, de                                    ; $4128: $19
    cpl                                           ; $4129: $2f
    ccf                                           ; $412a: $3f
    ld [hl+], a                                   ; $412b: $22
    ld a, $4a                                     ; $412c: $3e $4a
    ld a, [hl]                                    ; $412e: $7e
    ld l, e                                       ; $412f: $6b
    ld a, a                                       ; $4130: $7f
    ld [hl], c                                    ; $4131: $71
    ld e, a                                       ; $4132: $5f
    ld [hl], c                                    ; $4133: $71
    ld e, a                                       ; $4134: $5f
    rst $20                                       ; $4135: $e7
    cp [hl]                                       ; $4136: $be
    inc b                                         ; $4137: $04
    jr nz, jr_0e3_413c                            ; $4138: $20 $02

    nop                                           ; $413a: $00
    ld [bc], a                                    ; $413b: $02

jr_0e3_413c:
    jr nz, jr_0e3_40c0                            ; $413c: $20 $82

    jr nc, jr_0e3_4150                            ; $413e: $30 $10

    ld b, $20                                     ; $4140: $06 $20
    ld [$0200], sp                                ; $4142: $08 $00 $02
    jr c, jr_0e3_40d1                             ; $4145: $38 $8a

    ld a, $26                                     ; $4147: $3e $26
    dec sp                                        ; $4149: $3b
    ccf                                           ; $414a: $3f
    db $fd                                        ; $414b: $fd
    rlca                                          ; $414c: $07
    db $fc                                        ; $414d: $fc
    cp h                                          ; $414e: $bc
    rst $38                                       ; $414f: $ff

jr_0e3_4150:
    sbc a                                         ; $4150: $9f
    ld [bc], a                                    ; $4151: $02
    ldh [rNR32], a                                ; $4152: $e0 $1c
    nop                                           ; $4154: $00
    add d                                         ; $4155: $82
    dec e                                         ; $4156: $1d
    rla                                           ; $4157: $17
    ld [bc], a                                    ; $4158: $02
    ld e, $02                                     ; $4159: $1e $02
    inc b                                         ; $415b: $04
    jr jr_0e3_415e                                ; $415c: $18 $00

jr_0e3_415e:
    rst $38                                       ; $415e: $ff
    dec c                                         ; $415f: $0d
    inc b                                         ; $4160: $04
    ld hl, sp+$07                                 ; $4161: $f8 $07
    ld hl, sp+$07                                 ; $4163: $f8 $07
    rst $28                                       ; $4165: $ef
    ld hl, sp-$12                                 ; $4166: $f8 $ee
    nop                                           ; $4168: $00
    cp $f8                                        ; $4169: $fe $f8
    cp $fe                                        ; $416b: $fe $fe
    ld [bc], a                                    ; $416d: $02
    ld bc, $0283                                  ; $416e: $01 $83 $02
    inc bc                                        ; $4171: $03
    ld [bc], a                                    ; $4172: $02
    inc bc                                        ; $4173: $03
    inc bc                                        ; $4174: $03
    add c                                         ; $4175: $81
    ld [bc], a                                    ; $4176: $02
    dec b                                         ; $4177: $05
    inc bc                                        ; $4178: $03
    add d                                         ; $4179: $82
    ld [bc], a                                    ; $417a: $02
    inc bc                                        ; $417b: $03
    ld [bc], a                                    ; $417c: $02
    add hl, de                                    ; $417d: $19
    adc [hl]                                      ; $417e: $8e
    cpl                                           ; $417f: $2f
    ld [hl], $16                                  ; $4180: $36 $16
    add hl, de                                    ; $4182: $19
    dec a                                         ; $4183: $3d
    cpl                                           ; $4184: $2f
    sbc $df                                       ; $4185: $de $df
    cp a                                          ; $4187: $bf
    rst $30                                       ; $4188: $f7
    ld a, [hl]                                    ; $4189: $7e
    ld l, l                                       ; $418a: $6d
    cp a                                          ; $418b: $bf
    ei                                            ; $418c: $fb
    ld [bc], a                                    ; $418d: $02
    ld hl, sp-$62                                 ; $418e: $f8 $9e
    or h                                          ; $4190: $b4
    db $fc                                        ; $4191: $fc
    ld c, d                                       ; $4192: $4a
    cp $e3                                        ; $4193: $fe $e3
    cp a                                          ; $4195: $bf
    pop af                                        ; $4196: $f1
    rra                                           ; $4197: $1f
    jp hl                                         ; $4198: $e9


    cp a                                          ; $4199: $bf
    ld sp, hl                                     ; $419a: $f9
    rrca                                          ; $419b: $0f
    db $fd                                        ; $419c: $fd
    ld c, a                                       ; $419d: $4f
    db $fd                                        ; $419e: $fd
    sbc a                                         ; $419f: $9f
    ld [$7efe], a                                 ; $41a0: $ea $fe $7e
    adc $fe                                       ; $41a3: $ce $fe
    xor d                                         ; $41a5: $aa
    cp $1a                                        ; $41a6: $fe $1a
    cp $8a                                        ; $41a8: $fe $8a
    cp $f6                                        ; $41aa: $fe $f6
    xor $da                                       ; $41ac: $ee $da
    ld [bc], a                                    ; $41ae: $02
    nop                                           ; $41af: $00
    add h                                         ; $41b0: $84
    sbc $f7                                       ; $41b1: $de $f7
    ld e, e                                       ; $41b3: $5b
    ld a, e                                       ; $41b4: $7b
    ld [bc], a                                    ; $41b5: $02
    jr nc, @+$1a                                  ; $41b6: $30 $18

    nop                                           ; $41b8: $00
    add h                                         ; $41b9: $84
    rrca                                          ; $41ba: $0f
    dec sp                                        ; $41bb: $3b
    ld b, $3e                                     ; $41bc: $06 $3e
    ld [bc], a                                    ; $41be: $02
    jr c, jr_0e3_41db                             ; $41bf: $38 $1a

    nop                                           ; $41c1: $00
    rst $38                                       ; $41c2: $ff
    dec c                                         ; $41c3: $0d
    inc b                                         ; $41c4: $04
    ld hl, sp+$07                                 ; $41c5: $f8 $07
    ld hl, sp+$07                                 ; $41c7: $f8 $07
    rst $28                                       ; $41c9: $ef
    ld hl, sp-$12                                 ; $41ca: $f8 $ee
    nop                                           ; $41cc: $00
    cp $f8                                        ; $41cd: $fe $f8
    cp $fe                                        ; $41cf: $fe $fe
    ld [bc], a                                    ; $41d1: $02
    ld bc, $0283                                  ; $41d2: $01 $83 $02
    inc bc                                        ; $41d5: $03
    ld [bc], a                                    ; $41d6: $02
    inc bc                                        ; $41d7: $03
    inc bc                                        ; $41d8: $03
    add c                                         ; $41d9: $81
    ld [bc], a                                    ; $41da: $02

jr_0e3_41db:
    dec b                                         ; $41db: $05
    inc bc                                        ; $41dc: $03
    add d                                         ; $41dd: $82
    ld [bc], a                                    ; $41de: $02
    inc bc                                        ; $41df: $03
    ld [bc], a                                    ; $41e0: $02
    dec e                                         ; $41e1: $1d
    adc [hl]                                      ; $41e2: $8e
    dec hl                                        ; $41e3: $2b
    ld [hl], $16                                  ; $41e4: $36 $16
    add hl, de                                    ; $41e6: $19
    dec e                                         ; $41e7: $1d
    rra                                           ; $41e8: $1f
    sbc $df                                       ; $41e9: $de $df
    cp a                                          ; $41eb: $bf
    rst $30                                       ; $41ec: $f7
    ld a, [hl]                                    ; $41ed: $7e
    ld l, l                                       ; $41ee: $6d
    cp a                                          ; $41ef: $bf
    ei                                            ; $41f0: $fb
    ld [bc], a                                    ; $41f1: $02
    ld hl, sp-$62                                 ; $41f2: $f8 $9e
    or h                                          ; $41f4: $b4
    db $fc                                        ; $41f5: $fc
    ld c, d                                       ; $41f6: $4a
    cp $e3                                        ; $41f7: $fe $e3
    cp a                                          ; $41f9: $bf
    pop af                                        ; $41fa: $f1
    rra                                           ; $41fb: $1f
    jp hl                                         ; $41fc: $e9


    cp a                                          ; $41fd: $bf
    ld sp, hl                                     ; $41fe: $f9
    rrca                                          ; $41ff: $0f
    db $fd                                        ; $4200: $fd
    ld c, a                                       ; $4201: $4f
    db $fd                                        ; $4202: $fd
    sbc a                                         ; $4203: $9f
    ld [$7efe], a                                 ; $4204: $ea $fe $7e
    adc $fe                                       ; $4207: $ce $fe
    xor d                                         ; $4209: $aa
    cp $1a                                        ; $420a: $fe $1a
    cp $8a                                        ; $420c: $fe $8a
    cp $f6                                        ; $420e: $fe $f6
    xor $da                                       ; $4210: $ee $da
    ld [bc], a                                    ; $4212: $02
    nop                                           ; $4213: $00
    add h                                         ; $4214: $84
    sbc $f7                                       ; $4215: $de $f7
    ld e, e                                       ; $4217: $5b
    ld a, e                                       ; $4218: $7b
    ld [bc], a                                    ; $4219: $02
    jr nc, @+$1a                                  ; $421a: $30 $18

    nop                                           ; $421c: $00
    add h                                         ; $421d: $84
    rrca                                          ; $421e: $0f
    dec sp                                        ; $421f: $3b
    ld b, $3e                                     ; $4220: $06 $3e
    ld [bc], a                                    ; $4222: $02
    jr c, jr_0e3_423f                             ; $4223: $38 $1a

    nop                                           ; $4225: $00
    rst $38                                       ; $4226: $ff
    dec c                                         ; $4227: $0d
    inc b                                         ; $4228: $04
    ld hl, sp+$07                                 ; $4229: $f8 $07
    ld hl, sp+$07                                 ; $422b: $f8 $07
    rst $28                                       ; $422d: $ef
    ld hl, sp-$12                                 ; $422e: $f8 $ee
    nop                                           ; $4230: $00
    cp $f8                                        ; $4231: $fe $f8
    cp $fe                                        ; $4233: $fe $fe
    ld [bc], a                                    ; $4235: $02
    ld bc, $0283                                  ; $4236: $01 $83 $02
    inc bc                                        ; $4239: $03
    ld [bc], a                                    ; $423a: $02
    inc bc                                        ; $423b: $03
    inc bc                                        ; $423c: $03
    add c                                         ; $423d: $81
    ld [bc], a                                    ; $423e: $02

jr_0e3_423f:
    dec b                                         ; $423f: $05
    inc bc                                        ; $4240: $03
    sub d                                         ; $4241: $92
    ld b, $07                                     ; $4242: $06 $07
    dec de                                        ; $4244: $1b
    rra                                           ; $4245: $1f
    daa                                           ; $4246: $27
    ld a, [hl-]                                   ; $4247: $3a
    ld [de], a                                    ; $4248: $12
    dec e                                         ; $4249: $1d
    dec c                                         ; $424a: $0d
    rrca                                          ; $424b: $0f
    sbc $df                                       ; $424c: $de $df
    cp a                                          ; $424e: $bf
    rst $30                                       ; $424f: $f7
    ld a, [hl]                                    ; $4250: $7e
    ld l, l                                       ; $4251: $6d
    cp a                                          ; $4252: $bf
    ei                                            ; $4253: $fb
    ld [bc], a                                    ; $4254: $02
    ld hl, sp-$62                                 ; $4255: $f8 $9e
    or h                                          ; $4257: $b4
    db $fc                                        ; $4258: $fc
    ld c, d                                       ; $4259: $4a
    cp $e3                                        ; $425a: $fe $e3
    cp a                                          ; $425c: $bf
    pop af                                        ; $425d: $f1
    rra                                           ; $425e: $1f
    jp hl                                         ; $425f: $e9


    cp a                                          ; $4260: $bf
    ld sp, hl                                     ; $4261: $f9
    rrca                                          ; $4262: $0f
    db $fd                                        ; $4263: $fd
    ld c, a                                       ; $4264: $4f
    db $fd                                        ; $4265: $fd
    sbc a                                         ; $4266: $9f
    ld [$7efe], a                                 ; $4267: $ea $fe $7e
    adc $fe                                       ; $426a: $ce $fe
    xor d                                         ; $426c: $aa
    cp $1a                                        ; $426d: $fe $1a
    cp $8a                                        ; $426f: $fe $8a
    cp $f6                                        ; $4271: $fe $f6
    xor $da                                       ; $4273: $ee $da
    ld [bc], a                                    ; $4275: $02
    nop                                           ; $4276: $00
    add h                                         ; $4277: $84
    sbc $f7                                       ; $4278: $de $f7
    ld e, e                                       ; $427a: $5b
    ld a, e                                       ; $427b: $7b
    ld [bc], a                                    ; $427c: $02
    jr nc, @+$1a                                  ; $427d: $30 $18

    nop                                           ; $427f: $00
    add h                                         ; $4280: $84
    rrca                                          ; $4281: $0f
    dec sp                                        ; $4282: $3b
    ld b, $3e                                     ; $4283: $06 $3e
    ld [bc], a                                    ; $4285: $02
    jr c, jr_0e3_42a2                             ; $4286: $38 $1a

    nop                                           ; $4288: $00
    rst $38                                       ; $4289: $ff
    dec c                                         ; $428a: $0d
    inc b                                         ; $428b: $04
    ld hl, sp+$07                                 ; $428c: $f8 $07
    ld hl, sp+$07                                 ; $428e: $f8 $07
    rst $28                                       ; $4290: $ef
    ld hl, sp-$12                                 ; $4291: $f8 $ee
    nop                                           ; $4293: $00
    cp $f8                                        ; $4294: $fe $f8
    cp $fe                                        ; $4296: $fe $fe
    ld [bc], a                                    ; $4298: $02
    ld bc, $0283                                  ; $4299: $01 $83 $02
    inc bc                                        ; $429c: $03
    ld [bc], a                                    ; $429d: $02
    inc bc                                        ; $429e: $03
    inc bc                                        ; $429f: $03
    add c                                         ; $42a0: $81
    ld [bc], a                                    ; $42a1: $02

jr_0e3_42a2:
    dec b                                         ; $42a2: $05
    inc bc                                        ; $42a3: $03
    sub d                                         ; $42a4: $92
    ld [bc], a                                    ; $42a5: $02
    inc bc                                        ; $42a6: $03
    rra                                           ; $42a7: $1f
    dec e                                         ; $42a8: $1d
    cpl                                           ; $42a9: $2f
    inc [hl]                                      ; $42aa: $34
    ld [de], a                                    ; $42ab: $12
    dec e                                         ; $42ac: $1d
    dec c                                         ; $42ad: $0d
    rrca                                          ; $42ae: $0f
    sbc $df                                       ; $42af: $de $df
    cp a                                          ; $42b1: $bf
    rst $30                                       ; $42b2: $f7
    ld a, [hl]                                    ; $42b3: $7e
    ld l, l                                       ; $42b4: $6d
    cp a                                          ; $42b5: $bf
    ei                                            ; $42b6: $fb
    ld [bc], a                                    ; $42b7: $02
    ld hl, sp-$62                                 ; $42b8: $f8 $9e
    or h                                          ; $42ba: $b4
    db $fc                                        ; $42bb: $fc
    ld c, d                                       ; $42bc: $4a
    cp $e3                                        ; $42bd: $fe $e3
    cp a                                          ; $42bf: $bf
    pop af                                        ; $42c0: $f1
    rra                                           ; $42c1: $1f
    jp hl                                         ; $42c2: $e9


    cp a                                          ; $42c3: $bf
    ld sp, hl                                     ; $42c4: $f9
    rrca                                          ; $42c5: $0f
    db $fd                                        ; $42c6: $fd
    ld c, a                                       ; $42c7: $4f
    db $fd                                        ; $42c8: $fd
    sbc a                                         ; $42c9: $9f
    ld [$7efe], a                                 ; $42ca: $ea $fe $7e
    adc $fe                                       ; $42cd: $ce $fe
    xor d                                         ; $42cf: $aa
    cp $1a                                        ; $42d0: $fe $1a
    cp $8a                                        ; $42d2: $fe $8a
    cp $f6                                        ; $42d4: $fe $f6
    xor $da                                       ; $42d6: $ee $da
    ld [bc], a                                    ; $42d8: $02
    nop                                           ; $42d9: $00
    add h                                         ; $42da: $84
    sbc $f7                                       ; $42db: $de $f7
    ld e, e                                       ; $42dd: $5b
    ld a, e                                       ; $42de: $7b
    ld [bc], a                                    ; $42df: $02
    jr nc, @+$1a                                  ; $42e0: $30 $18

    nop                                           ; $42e2: $00
    add h                                         ; $42e3: $84
    rrca                                          ; $42e4: $0f
    dec sp                                        ; $42e5: $3b
    ld b, $3e                                     ; $42e6: $06 $3e
    ld [bc], a                                    ; $42e8: $02
    jr c, jr_0e3_4305                             ; $42e9: $38 $1a

    nop                                           ; $42eb: $00
    rst $38                                       ; $42ec: $ff
    dec c                                         ; $42ed: $0d
    inc b                                         ; $42ee: $04
    ld hl, sp+$07                                 ; $42ef: $f8 $07
    ld hl, sp+$07                                 ; $42f1: $f8 $07
    rst $28                                       ; $42f3: $ef
    ld hl, sp-$12                                 ; $42f4: $f8 $ee
    nop                                           ; $42f6: $00
    cp $f8                                        ; $42f7: $fe $f8
    cp $fe                                        ; $42f9: $fe $fe
    ld [bc], a                                    ; $42fb: $02
    ld bc, $0283                                  ; $42fc: $01 $83 $02

Jump_0e3_42ff:
    inc bc                                        ; $42ff: $03
    ld [bc], a                                    ; $4300: $02
    inc bc                                        ; $4301: $03
    inc bc                                        ; $4302: $03
    add c                                         ; $4303: $81
    ld [bc], a                                    ; $4304: $02

jr_0e3_4305:
    dec b                                         ; $4305: $05
    inc bc                                        ; $4306: $03
    sub d                                         ; $4307: $92
    ld [bc], a                                    ; $4308: $02
    inc bc                                        ; $4309: $03
    rra                                           ; $430a: $1f
    ld e, $2d                                     ; $430b: $1e $2d
    ld [hl], $12                                  ; $430d: $36 $12
    dec e                                         ; $430f: $1d
    dec c                                         ; $4310: $0d
    rrca                                          ; $4311: $0f
    sbc $df                                       ; $4312: $de $df
    cp a                                          ; $4314: $bf
    rst $30                                       ; $4315: $f7
    ld a, [hl]                                    ; $4316: $7e
    ld l, l                                       ; $4317: $6d
    cp a                                          ; $4318: $bf
    ei                                            ; $4319: $fb
    ld [bc], a                                    ; $431a: $02
    ld hl, sp-$62                                 ; $431b: $f8 $9e
    or h                                          ; $431d: $b4
    db $fc                                        ; $431e: $fc
    ld c, d                                       ; $431f: $4a
    cp $e3                                        ; $4320: $fe $e3
    cp a                                          ; $4322: $bf
    pop af                                        ; $4323: $f1
    rra                                           ; $4324: $1f
    jp hl                                         ; $4325: $e9


    cp a                                          ; $4326: $bf
    ld sp, hl                                     ; $4327: $f9
    rrca                                          ; $4328: $0f
    db $fd                                        ; $4329: $fd
    ld c, a                                       ; $432a: $4f
    db $fd                                        ; $432b: $fd
    sbc a                                         ; $432c: $9f
    ld [$7efe], a                                 ; $432d: $ea $fe $7e
    adc $fe                                       ; $4330: $ce $fe
    xor d                                         ; $4332: $aa
    cp $1a                                        ; $4333: $fe $1a
    cp $8a                                        ; $4335: $fe $8a
    cp $f6                                        ; $4337: $fe $f6
    xor $da                                       ; $4339: $ee $da
    ld [bc], a                                    ; $433b: $02
    nop                                           ; $433c: $00
    add h                                         ; $433d: $84
    sbc $f7                                       ; $433e: $de $f7
    ld e, e                                       ; $4340: $5b
    ld a, e                                       ; $4341: $7b
    ld [bc], a                                    ; $4342: $02
    jr nc, @+$1a                                  ; $4343: $30 $18

    nop                                           ; $4345: $00
    add h                                         ; $4346: $84
    rrca                                          ; $4347: $0f
    dec sp                                        ; $4348: $3b
    ld b, $3e                                     ; $4349: $06 $3e
    ld [bc], a                                    ; $434b: $02
    jr c, jr_0e3_4368                             ; $434c: $38 $1a

    nop                                           ; $434e: $00
    rst $38                                       ; $434f: $ff
    dec c                                         ; $4350: $0d
    inc b                                         ; $4351: $04
    ld hl, sp+$07                                 ; $4352: $f8 $07
    ld hl, sp+$07                                 ; $4354: $f8 $07
    rst $28                                       ; $4356: $ef
    ld hl, sp-$12                                 ; $4357: $f8 $ee
    nop                                           ; $4359: $00
    cp $f8                                        ; $435a: $fe $f8
    cp $fe                                        ; $435c: $fe $fe
    ld [bc], a                                    ; $435e: $02
    ld bc, $0283                                  ; $435f: $01 $83 $02
    inc bc                                        ; $4362: $03
    ld [bc], a                                    ; $4363: $02
    inc bc                                        ; $4364: $03
    inc bc                                        ; $4365: $03
    add c                                         ; $4366: $81
    ld [bc], a                                    ; $4367: $02

jr_0e3_4368:
    dec b                                         ; $4368: $05
    inc bc                                        ; $4369: $03
    add d                                         ; $436a: $82
    ld [bc], a                                    ; $436b: $02
    inc bc                                        ; $436c: $03
    ld [bc], a                                    ; $436d: $02
    dec e                                         ; $436e: $1d
    adc [hl]                                      ; $436f: $8e
    cpl                                           ; $4370: $2f
    ld [hl], $16                                  ; $4371: $36 $16
    add hl, de                                    ; $4373: $19
    dec e                                         ; $4374: $1d
    rra                                           ; $4375: $1f
    sbc $df                                       ; $4376: $de $df
    cp a                                          ; $4378: $bf
    rst $30                                       ; $4379: $f7
    ld a, [hl]                                    ; $437a: $7e
    ld l, l                                       ; $437b: $6d
    cp a                                          ; $437c: $bf
    ei                                            ; $437d: $fb
    ld [bc], a                                    ; $437e: $02
    ld hl, sp-$62                                 ; $437f: $f8 $9e
    or h                                          ; $4381: $b4
    db $fc                                        ; $4382: $fc
    ld c, d                                       ; $4383: $4a
    cp $e3                                        ; $4384: $fe $e3
    cp a                                          ; $4386: $bf
    pop af                                        ; $4387: $f1
    rra                                           ; $4388: $1f
    jp hl                                         ; $4389: $e9


    cp a                                          ; $438a: $bf
    ld sp, hl                                     ; $438b: $f9
    rrca                                          ; $438c: $0f
    db $fd                                        ; $438d: $fd
    ld c, a                                       ; $438e: $4f
    db $fd                                        ; $438f: $fd
    sbc a                                         ; $4390: $9f
    ld [$7efe], a                                 ; $4391: $ea $fe $7e
    adc $fe                                       ; $4394: $ce $fe
    xor d                                         ; $4396: $aa
    cp $1a                                        ; $4397: $fe $1a
    cp $8a                                        ; $4399: $fe $8a
    cp $f6                                        ; $439b: $fe $f6
    xor $da                                       ; $439d: $ee $da
    ld [bc], a                                    ; $439f: $02
    nop                                           ; $43a0: $00
    add h                                         ; $43a1: $84
    sbc $f7                                       ; $43a2: $de $f7
    ld e, e                                       ; $43a4: $5b
    ld a, e                                       ; $43a5: $7b
    ld [bc], a                                    ; $43a6: $02
    jr nc, jr_0e3_43c1                            ; $43a7: $30 $18

    nop                                           ; $43a9: $00
    add h                                         ; $43aa: $84
    rrca                                          ; $43ab: $0f
    dec sp                                        ; $43ac: $3b
    ld b, $3e                                     ; $43ad: $06 $3e
    ld [bc], a                                    ; $43af: $02
    jr c, @+$1c                                   ; $43b0: $38 $1a

    nop                                           ; $43b2: $00
    rst $38                                       ; $43b3: $ff
    dec c                                         ; $43b4: $0d
    inc b                                         ; $43b5: $04
    ld hl, sp+$07                                 ; $43b6: $f8 $07
    ld hl, sp+$07                                 ; $43b8: $f8 $07
    db $ed                                        ; $43ba: $ed
    rst $30                                       ; $43bb: $f7
    xor $fe                                       ; $43bc: $ee $fe
    db $fd                                        ; $43be: $fd
    ld sp, hl                                     ; $43bf: $f9
    db $fd                                        ; $43c0: $fd

jr_0e3_43c1:
    cp $02                                        ; $43c1: $fe $02
    ld e, [hl]                                    ; $43c3: $5e
    ld [bc], a                                    ; $43c4: $02
    cp a                                          ; $43c5: $bf
    ld [bc], a                                    ; $43c6: $02
    ld a, a                                       ; $43c7: $7f
    sbc d                                         ; $43c8: $9a
    rst $38                                       ; $43c9: $ff
    ld a, [$f0ff]                                 ; $43ca: $fa $ff $f0
    rst $38                                       ; $43cd: $ff
    or $7f                                        ; $43ce: $f6 $7f
    ld b, b                                       ; $43d0: $40
    ccf                                           ; $43d1: $3f
    jr nc, @+$21                                  ; $43d2: $30 $1f

    ld de, $383f                                  ; $43d4: $11 $3f $38
    ld a, a                                       ; $43d7: $7f
    ld e, a                                       ; $43d8: $5f
    ld a, [hl]                                    ; $43d9: $7e
    ld b, a                                       ; $43da: $47
    ld a, a                                       ; $43db: $7f
    ld d, l                                       ; $43dc: $55
    ld a, a                                       ; $43dd: $7f
    ld a, b                                       ; $43de: $78
    ld a, a                                       ; $43df: $7f
    ld d, c                                       ; $43e0: $51
    ld a, a                                       ; $43e1: $7f
    ld c, a                                       ; $43e2: $4f
    ld [bc], a                                    ; $43e3: $02
    ld b, b                                       ; $43e4: $40
    ld [bc], a                                    ; $43e5: $02
    ld h, b                                       ; $43e6: $60
    ld b, $40                                     ; $43e7: $06 $40
    add d                                         ; $43e9: $82
    ld h, b                                       ; $43ea: $60
    jr nz, @+$08                                  ; $43eb: $20 $06

    ld b, b                                       ; $43ed: $40
    ld [bc], a                                    ; $43ee: $02
    ld c, h                                       ; $43ef: $4c
    adc b                                         ; $43f0: $88
    ld a, d                                       ; $43f1: $7a
    ld [hl], $34                                  ; $43f2: $36 $34
    ld c, h                                       ; $43f4: $4c
    ld e, [hl]                                    ; $43f5: $5e
    ld a, d                                       ; $43f6: $7a
    inc a                                         ; $43f7: $3c
    ld [hl], h                                    ; $43f8: $74
    ld [bc], a                                    ; $43f9: $02
    ld a, d                                       ; $43fa: $7a
    adc h                                         ; $43fb: $8c
    ld [hl], a                                    ; $43fc: $77
    db $fd                                        ; $43fd: $fd
    ldh a, [$f8]                                  ; $43fe: $f0 $f8
    ld b, b                                       ; $4400: $40
    ld a, a                                       ; $4401: $7f
    ld c, h                                       ; $4402: $4c
    ld a, a                                       ; $4403: $7f
    inc a                                         ; $4404: $3c
    ccf                                           ; $4405: $3f
    ld [bc], a                                    ; $4406: $02
    inc bc                                        ; $4407: $03
    ld [bc], a                                    ; $4408: $02
    ld bc, $0016                                  ; $4409: $01 $16 $00
    adc b                                         ; $440c: $88
    dec e                                         ; $440d: $1d
    rra                                           ; $440e: $1f
    rrca                                          ; $440f: $0f
    dec de                                        ; $4410: $1b
    ld a, [de]                                    ; $4411: $1a
    ld d, $1e                                     ; $4412: $16 $1e
    ld d, $02                                     ; $4414: $16 $02
    inc c                                         ; $4416: $0c
    inc d                                         ; $4417: $14
    nop                                           ; $4418: $00
    rst $38                                       ; $4419: $ff
    dec c                                         ; $441a: $0d
    inc b                                         ; $441b: $04
    ld hl, sp+$07                                 ; $441c: $f8 $07
    ld hl, sp+$07                                 ; $441e: $f8 $07
    db $ed                                        ; $4420: $ed
    ld hl, sp-$11                                 ; $4421: $f8 $ef
    cp $fd                                        ; $4423: $fe $fd
    ld sp, hl                                     ; $4425: $f9
    db $fd                                        ; $4426: $fd
    cp $02                                        ; $4427: $fe $02
    ld e, h                                       ; $4429: $5c
    ld [bc], a                                    ; $442a: $02
    ld a, a                                       ; $442b: $7f
    dec b                                         ; $442c: $05
    rst $38                                       ; $442d: $ff
    sub a                                         ; $442e: $97
    push af                                       ; $442f: $f5
    rst $38                                       ; $4430: $ff
    ldh [rIE], a                                  ; $4431: $e0 $ff
    xor l                                         ; $4433: $ad
    ld a, a                                       ; $4434: $7f
    ld h, b                                       ; $4435: $60
    ccf                                           ; $4436: $3f
    ld hl, $677f                                  ; $4437: $21 $7f $67
    rst $38                                       ; $443a: $ff
    or e                                          ; $443b: $b3
    db $fd                                        ; $443c: $fd
    sbc [hl]                                      ; $443d: $9e
    cp $ab                                        ; $443e: $fe $ab
    rst $38                                       ; $4440: $ff
    pop af                                        ; $4441: $f1
    cp $a3                                        ; $4442: $fe $a3
    rst $38                                       ; $4444: $ff
    sbc a                                         ; $4445: $9f
    ld [bc], a                                    ; $4446: $02
    jr nz, jr_0e3_444b                            ; $4447: $20 $02

    jr nc, @+$0a                                  ; $4449: $30 $08

jr_0e3_444b:
    jr nz, jr_0e3_4451                            ; $444b: $20 $04

    nop                                           ; $444d: $00
    ld [bc], a                                    ; $444e: $02
    inc c                                         ; $444f: $0c
    adc b                                         ; $4450: $88

jr_0e3_4451:
    ld a, [hl-]                                   ; $4451: $3a
    ld [hl], $34                                  ; $4452: $36 $34
    inc c                                         ; $4454: $0c
    ld e, $3a                                     ; $4455: $1e $3a
    inc a                                         ; $4457: $3c
    inc [hl]                                      ; $4458: $34
    ld [bc], a                                    ; $4459: $02
    ld a, [hl-]                                   ; $445a: $3a
    adc [hl]                                      ; $445b: $8e
    ld [hl], a                                    ; $445c: $77
    db $fd                                        ; $445d: $fd
    dec e                                         ; $445e: $1d
    rst $38                                       ; $445f: $ff
    ldh a, [$f8]                                  ; $4460: $f0 $f8
    ld b, b                                       ; $4462: $40
    ld a, b                                       ; $4463: $78
    ld c, h                                       ; $4464: $4c
    ld a, a                                       ; $4465: $7f
    inc a                                         ; $4466: $3c
    ccf                                           ; $4467: $3f
    ld [bc], a                                    ; $4468: $02
    inc bc                                        ; $4469: $03
    ld [bc], a                                    ; $446a: $02
    ld bc, $0018                                  ; $446b: $01 $18 $00
    add [hl]                                      ; $446e: $86
    rrca                                          ; $446f: $0f
    dec de                                        ; $4470: $1b
    ld a, [de]                                    ; $4471: $1a
    ld d, $1e                                     ; $4472: $16 $1e
    ld d, $02                                     ; $4474: $16 $02
    inc c                                         ; $4476: $0c
    inc d                                         ; $4477: $14
    nop                                           ; $4478: $00
    rst $38                                       ; $4479: $ff
    dec c                                         ; $447a: $0d
    inc b                                         ; $447b: $04
    ld sp, hl                                     ; $447c: $f9
    ld [$08f9], sp                                ; $447d: $08 $f9 $08
    db $eb                                        ; $4480: $eb
    ei                                            ; $4481: $fb
    db $ec                                        ; $4482: $ec
    cp $fb                                        ; $4483: $fe $fb
    ld sp, hl                                     ; $4485: $f9
    ei                                            ; $4486: $fb
    ld bc, $1f02                                  ; $4487: $01 $02 $1f
    sbc [hl]                                      ; $448a: $9e
    jr nc, jr_0e3_44cc                            ; $448b: $30 $3f

    daa                                           ; $448d: $27
    ccf                                           ; $448e: $3f
    cpl                                           ; $448f: $2f
    jr c, @+$61                                   ; $4490: $38 $5f

    ld [hl], d                                    ; $4492: $72
    ld e, c                                       ; $4493: $59
    ld a, [hl]                                    ; $4494: $7e
    ld e, a                                       ; $4495: $5f
    ld [hl], c                                    ; $4496: $71
    ld d, l                                       ; $4497: $55
    ld a, d                                       ; $4498: $7a
    ld c, a                                       ; $4499: $4f
    ld a, b                                       ; $449a: $78
    sbc a                                         ; $449b: $9f
    rst $38                                       ; $449c: $ff
    or a                                          ; $449d: $b7
    db $ed                                        ; $449e: $ed
    rst $38                                       ; $449f: $ff
    jp nc, $d0ff                                  ; $44a0: $d2 $ff $d0

    ld a, [hl]                                    ; $44a3: $7e
    ld e, l                                       ; $44a4: $5d
    or a                                          ; $44a5: $b7
    ld sp, hl                                     ; $44a6: $f9
    rst $20                                       ; $44a7: $e7
    cp c                                          ; $44a8: $b9
    ld [bc], a                                    ; $44a9: $02
    ld b, $89                                     ; $44aa: $06 $89
    dec b                                         ; $44ac: $05
    rlca                                          ; $44ad: $07
    ld b, $02                                     ; $44ae: $06 $02
    rlca                                          ; $44b0: $07
    dec b                                         ; $44b1: $05
    ld bc, $0607                                  ; $44b2: $01 $07 $06
    ld [bc], a                                    ; $44b5: $02
    ld [bc], a                                    ; $44b6: $02
    inc bc                                        ; $44b7: $03
    ld b, $82                                     ; $44b8: $06 $82
    dec b                                         ; $44ba: $05
    rlca                                          ; $44bb: $07
    ld [bc], a                                    ; $44bc: $02
    ld b, $81                                     ; $44bd: $06 $81
    ld [bc], a                                    ; $44bf: $02
    ld [bc], a                                    ; $44c0: $02
    ld b, $81                                     ; $44c1: $06 $81
    ld [bc], a                                    ; $44c3: $02
    ld [bc], a                                    ; $44c4: $02
    ld b, $81                                     ; $44c5: $06 $81
    ld [bc], a                                    ; $44c7: $02
    ld [bc], a                                    ; $44c8: $02
    ld b, $99                                     ; $44c9: $06 $99
    ld [bc], a                                    ; $44cb: $02

jr_0e3_44cc:
    db $fd                                        ; $44cc: $fd
    ld a, e                                       ; $44cd: $7b
    ld a, b                                       ; $44ce: $78
    ld c, b                                       ; $44cf: $48
    ld l, h                                       ; $44d0: $6c
    ld a, a                                       ; $44d1: $7f
    ld hl, sp-$61                                 ; $44d2: $f8 $9f
    cp b                                          ; $44d4: $b8
    rst $38                                       ; $44d5: $ff
    or $ff                                        ; $44d6: $f6 $ff
    sbc [hl]                                      ; $44d8: $9e
    rst $38                                       ; $44d9: $ff
    rst $00                                       ; $44da: $c7
    rst $38                                       ; $44db: $ff
    xor a                                         ; $44dc: $af
    rst $38                                       ; $44dd: $ff
    push de                                       ; $44de: $d5
    rst $38                                       ; $44df: $ff
    db $ed                                        ; $44e0: $ed
    rst $38                                       ; $44e1: $ff
    scf                                           ; $44e2: $37
    ccf                                           ; $44e3: $3f
    ld [bc], a                                    ; $44e4: $02

jr_0e3_44e5:
    rrca                                          ; $44e5: $0f
    ld [bc], a                                    ; $44e6: $02
    ld bc, $0008                                  ; $44e7: $01 $08 $00
    sbc b                                         ; $44ea: $98
    jr c, jr_0e3_44e5                             ; $44eb: $38 $f8

    inc b                                         ; $44ed: $04
    db $fc                                        ; $44ee: $fc
    ld a, [hl-]                                   ; $44ef: $3a
    cp $7e                                        ; $44f0: $fe $7e
    sub $fa                                       ; $44f2: $d6 $fa
    sub [hl]                                      ; $44f4: $96
    or $ba                                        ; $44f5: $f6 $ba
    cp $3a                                        ; $44f7: $fe $3a
    cp $7a                                        ; $44f9: $fe $7a
    cp $7e                                        ; $44fb: $fe $7e
    call Call_0e3_4dcf                            ; $44fd: $cd $cf $4d
    rst $08                                       ; $4500: $cf
    and [hl]                                      ; $4501: $a6
    and $02                                       ; $4502: $e6 $02
    ldh [rDIV], a                                 ; $4504: $e0 $04
    nop                                           ; $4506: $00
    rst $38                                       ; $4507: $ff
    dec c                                         ; $4508: $0d
    inc b                                         ; $4509: $04
    ld sp, hl                                     ; $450a: $f9
    ld [$01f2], sp                                ; $450b: $08 $f2 $01
    add sp, -$05                                  ; $450e: $e8 $fb
    jp hl                                         ; $4510: $e9


    cp $f8                                        ; $4511: $fe $f8
    ei                                            ; $4513: $fb
    ld hl, sp-$03                                 ; $4514: $f8 $fd
    ld [bc], a                                    ; $4516: $02
    rrca                                          ; $4517: $0f
    sub d                                         ; $4518: $92
    ld sp, $523e                                  ; $4519: $31 $3e $52
    ld a, l                                       ; $451c: $7d
    ld sp, hl                                     ; $451d: $f9
    xor a                                         ; $451e: $af
    cp [hl]                                       ; $451f: $be
    rst $20                                       ; $4520: $e7
    ld a, a                                       ; $4521: $7f
    ld a, e                                       ; $4522: $7b
    ld a, a                                       ; $4523: $7f
    ld l, b                                       ; $4524: $68
    ccf                                           ; $4525: $3f
    inc l                                         ; $4526: $2c
    ccf                                           ; $4527: $3f
    ld a, [hl+]                                   ; $4528: $2a
    rra                                           ; $4529: $1f
    dec d                                         ; $452a: $15
    ld [bc], a                                    ; $452b: $02
    ccf                                           ; $452c: $3f
    inc b                                         ; $452d: $04
    ld a, a                                       ; $452e: $7f
    inc bc                                        ; $452f: $03
    rst $38                                       ; $4530: $ff
    ld [bc], a                                    ; $4531: $02
    cp a                                          ; $4532: $bf
    add c                                         ; $4533: $81
    rst $38                                       ; $4534: $ff
    ld [bc], a                                    ; $4535: $02
    inc b                                         ; $4536: $04
    add h                                         ; $4537: $84
    ld [bc], a                                    ; $4538: $02
    ld b, $01                                     ; $4539: $06 $01
    rlca                                          ; $453b: $07
    ld b, $06                                     ; $453c: $06 $06
    inc b                                         ; $453e: $04
    inc b                                         ; $453f: $04
    ld [bc], a                                    ; $4540: $02
    nop                                           ; $4541: $00
    ld [bc], a                                    ; $4542: $02
    inc b                                         ; $4543: $04
    inc b                                         ; $4544: $04
    ld b, $03                                     ; $4545: $06 $03
    rlca                                          ; $4547: $07
    ld [bc], a                                    ; $4548: $02
    dec b                                         ; $4549: $05
    sub l                                         ; $454a: $95
    rlca                                          ; $454b: $07
    rst $38                                       ; $454c: $ff
    db $fd                                        ; $454d: $fd
    ldh [$a0], a                                  ; $454e: $e0 $a0
    ld e, a                                       ; $4550: $5f
    ld a, a                                       ; $4551: $7f
    ccf                                           ; $4552: $3f
    ld a, [hl+]                                   ; $4553: $2a
    ccf                                           ; $4554: $3f
    dec [hl]                                      ; $4555: $35
    dec a                                         ; $4556: $3d
    ld l, $6f                                     ; $4557: $2e $6f
    ld e, [hl]                                    ; $4559: $5e
    ld a, a                                       ; $455a: $7f
    ld c, h                                       ; $455b: $4c
    ld a, a                                       ; $455c: $7f
    ld l, l                                       ; $455d: $6d
    jp nc, $02b3                                  ; $455e: $d2 $b3 $02

    di                                            ; $4561: $f3
    ld c, $00                                     ; $4562: $0e $00
    add d                                         ; $4564: $82
    ld bc, $0c03                                  ; $4565: $01 $03 $0c
    ld [bc], a                                    ; $4568: $02
    add d                                         ; $4569: $82
    inc bc                                        ; $456a: $03
    ld bc, $0302                                  ; $456b: $01 $02 $03
    inc c                                         ; $456e: $0c
    nop                                           ; $456f: $00
    rst $38                                       ; $4570: $ff
    dec bc                                        ; $4571: $0b
    inc bc                                        ; $4572: $03
    ld sp, hl                                     ; $4573: $f9
    ld [$01f2], sp                                ; $4574: $08 $f2 $01
    add sp, -$05                                  ; $4577: $e8 $fb
    jp hl                                         ; $4579: $e9


    cp $f8                                        ; $457a: $fe $f8
    db $fc                                        ; $457c: $fc
    ld [bc], a                                    ; $457d: $02
    rra                                           ; $457e: $1f
    sub h                                         ; $457f: $94
    inc [hl]                                      ; $4580: $34
    dec sp                                        ; $4581: $3b
    ld e, l                                       ; $4582: $5d
    ld a, a                                       ; $4583: $7f
    xor [hl]                                      ; $4584: $ae
    db $db                                        ; $4585: $db
    rst $08                                       ; $4586: $cf
    cp c                                          ; $4587: $b9
    cp a                                          ; $4588: $bf
    or $ff                                        ; $4589: $f6 $ff
    ret nc                                        ; $458b: $d0

    ld a, a                                       ; $458c: $7f
    ld [hl], b                                    ; $458d: $70
    ccf                                           ; $458e: $3f
    ld [hl-], a                                   ; $458f: $32
    rra                                           ; $4590: $1f
    add hl, de                                    ; $4591: $19
    rra                                           ; $4592: $1f
    rla                                           ; $4593: $17
    inc b                                         ; $4594: $04
    ld a, $05                                     ; $4595: $3e $05
    ld a, a                                       ; $4597: $7f
    add c                                         ; $4598: $81
    ld e, a                                       ; $4599: $5f
    ld [bc], a                                    ; $459a: $02
    inc b                                         ; $459b: $04
    add h                                         ; $459c: $84
    ld [bc], a                                    ; $459d: $02
    ld b, $05                                     ; $459e: $06 $05
    rlca                                          ; $45a0: $07
    ld [bc], a                                    ; $45a1: $02
    ld b, $02                                     ; $45a2: $06 $02
    inc b                                         ; $45a4: $04
    add d                                         ; $45a5: $82
    ld b, $02                                     ; $45a6: $06 $02
    ld b, $04                                     ; $45a8: $06 $04
    inc c                                         ; $45aa: $0c
    nop                                           ; $45ab: $00
    ld [bc], a                                    ; $45ac: $02
    ld hl, sp-$72                                 ; $45ad: $f8 $8e
    ret nz                                        ; $45af: $c0

    add b                                         ; $45b0: $80
    ld l, [hl]                                    ; $45b1: $6e
    ld e, [hl]                                    ; $45b2: $5e
    inc a                                         ; $45b3: $3c
    inc [hl]                                      ; $45b4: $34
    inc a                                         ; $45b5: $3c
    inc h                                         ; $45b6: $24
    inc a                                         ; $45b7: $3c
    inc [hl]                                      ; $45b8: $34
    ld a, $26                                     ; $45b9: $3e $26
    ld a, [hl]                                    ; $45bb: $7e
    ld b, [hl]                                    ; $45bc: $46
    ld [bc], a                                    ; $45bd: $02
    ld a, [hl]                                    ; $45be: $7e
    add d                                         ; $45bf: $82
    ld [hl], a                                    ; $45c0: $77
    ld e, c                                       ; $45c1: $59
    ld [bc], a                                    ; $45c2: $02
    ld a, a                                       ; $45c3: $7f
    inc c                                         ; $45c4: $0c
    nop                                           ; $45c5: $00
    rst $38                                       ; $45c6: $ff
    dec c                                         ; $45c7: $0d
    inc b                                         ; $45c8: $04
    ld sp, hl                                     ; $45c9: $f9
    ld [$01f2], sp                                ; $45ca: $08 $f2 $01
    add sp, -$05                                  ; $45cd: $e8 $fb
    jp hl                                         ; $45cf: $e9


    cp $f8                                        ; $45d0: $fe $f8
    ei                                            ; $45d2: $fb
    ld hl, sp-$02                                 ; $45d3: $f8 $fe
    ld [bc], a                                    ; $45d5: $02
    ld e, $8d                                     ; $45d6: $1e $8d
    add hl, sp                                    ; $45d8: $39
    daa                                           ; $45d9: $27
    ld b, c                                       ; $45da: $41
    ld a, a                                       ; $45db: $7f
    or d                                          ; $45dc: $b2
    rst $28                                       ; $45dd: $ef
    ld b, c                                       ; $45de: $41
    ld a, [hl]                                    ; $45df: $7e
    ld d, b                                       ; $45e0: $50
    ld a, a                                       ; $45e1: $7f
    ld l, d                                       ; $45e2: $6a
    ld a, a                                       ; $45e3: $7f
    dec [hl]                                      ; $45e4: $35
    ld [bc], a                                    ; $45e5: $02
    ccf                                           ; $45e6: $3f
    add e                                         ; $45e7: $83
    ld l, $1f                                     ; $45e8: $2e $1f
    ld de, $3f02                                  ; $45ea: $11 $02 $3f
    ld [bc], a                                    ; $45ed: $02
    ld a, a                                       ; $45ee: $7f
    dec b                                         ; $45ef: $05
    rst $38                                       ; $45f0: $ff
    add e                                         ; $45f1: $83
    cp a                                          ; $45f2: $bf
    rst $38                                       ; $45f3: $ff
    cp a                                          ; $45f4: $bf
    ld [bc], a                                    ; $45f5: $02
    inc b                                         ; $45f6: $04
    add a                                         ; $45f7: $87
    ld [bc], a                                    ; $45f8: $02
    ld b, $05                                     ; $45f9: $06 $05
    inc bc                                        ; $45fb: $03
    ld bc, $0207                                  ; $45fc: $01 $07 $02
    inc bc                                        ; $45ff: $03
    ld b, $04                                     ; $4600: $06 $04
    inc b                                         ; $4602: $04
    ld [bc], a                                    ; $4603: $02
    nop                                           ; $4604: $00
    ld [bc], a                                    ; $4605: $02
    inc b                                         ; $4606: $04
    ld [bc], a                                    ; $4607: $02
    ld b, $05                                     ; $4608: $06 $05
    rlca                                          ; $460a: $07
    sub b                                         ; $460b: $90
    dec b                                         ; $460c: $05
    rlca                                          ; $460d: $07
    dec b                                         ; $460e: $05
    rst $38                                       ; $460f: $ff
    db $fd                                        ; $4610: $fd
    ldh [$a0], a                                  ; $4611: $e0 $a0
    ld e, a                                       ; $4613: $5f
    ld a, a                                       ; $4614: $7f
    ld a, $31                                     ; $4615: $3e $31
    ccf                                           ; $4617: $3f
    ld hl, $2e37                                  ; $4618: $21 $37 $2e
    cpl                                           ; $461b: $2f
    ld [bc], a                                    ; $461c: $02
    ccf                                           ; $461d: $3f
    add l                                         ; $461e: $85
    ld h, $7f                                     ; $461f: $26 $7f
    ld h, [hl]                                    ; $4621: $66
    ld e, c                                       ; $4622: $59
    ld a, c                                       ; $4623: $79
    ld [bc], a                                    ; $4624: $02
    add hl, sp                                    ; $4625: $39
    ld c, $00                                     ; $4626: $0e $00
    add d                                         ; $4628: $82
    ld [bc], a                                    ; $4629: $02
    ld b, $06                                     ; $462a: $06 $06
    inc b                                         ; $462c: $04
    add c                                         ; $462d: $81
    ld [bc], a                                    ; $462e: $02
    ld [bc], a                                    ; $462f: $02
    ld b, $85                                     ; $4630: $06 $85
    ld [bc], a                                    ; $4632: $02
    rlca                                          ; $4633: $07
    inc bc                                        ; $4634: $03
    dec b                                         ; $4635: $05
    rlca                                          ; $4636: $07
    ld [bc], a                                    ; $4637: $02
    ld b, $0c                                     ; $4638: $06 $0c
    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    dec c                                         ; $463c: $0d
    inc b                                         ; $463d: $04
    ld sp, hl                                     ; $463e: $f9
    ld [$09fa], sp                                ; $463f: $08 $fa $09
    ld [$ebfb], a                                 ; $4642: $ea $fb $eb
    rst $38                                       ; $4645: $ff
    ld a, [$fafa]                                 ; $4646: $fa $fa $fa
    rst $38                                       ; $4649: $ff
    adc c                                         ; $464a: $89
    add hl, de                                    ; $464b: $19
    rra                                           ; $464c: $1f
    jr nc, jr_0e3_468e                            ; $464d: $30 $3f

    dec a                                         ; $464f: $3d
    ccf                                           ; $4650: $3f
    ld h, b                                       ; $4651: $60
    ld a, a                                       ; $4652: $7f
    cp a                                          ; $4653: $bf
    ld [bc], a                                    ; $4654: $02
    rst $38                                       ; $4655: $ff
    sub l                                         ; $4656: $95
    pop af                                        ; $4657: $f1
    ld l, [hl]                                    ; $4658: $6e
    ld a, e                                       ; $4659: $7b
    ld e, a                                       ; $465a: $5f
    ld h, b                                       ; $465b: $60
    ccf                                           ; $465c: $3f
    ld a, [hl+]                                   ; $465d: $2a
    dec [hl]                                      ; $465e: $35
    ld l, $24                                     ; $465f: $2e $24
    ccf                                           ; $4661: $3f
    rra                                           ; $4662: $1f
    ld de, $3f3e                                  ; $4663: $11 $3e $3f
    ld l, [hl]                                    ; $4666: $6e
    ld a, e                                       ; $4667: $7b
    or l                                          ; $4668: $b5
    rst $38                                       ; $4669: $ff
    xor d                                         ; $466a: $aa
    rst $38                                       ; $466b: $ff
    inc b                                         ; $466c: $04
    ld [$0483], sp                                ; $466d: $08 $83 $04
    inc c                                         ; $4670: $0c
    ld a, [bc]                                    ; $4671: $0a
    inc bc                                        ; $4672: $03
    ld c, $02                                     ; $4673: $0e $02
    inc c                                         ; $4675: $0c
    add d                                         ; $4676: $82
    inc b                                         ; $4677: $04
    inc c                                         ; $4678: $0c
    ld b, $08                                     ; $4679: $06 $08
    ld [bc], a                                    ; $467b: $02
    nop                                           ; $467c: $00
    ld [bc], a                                    ; $467d: $02
    ld [$0c02], sp                                ; $467e: $08 $02 $0c
    and d                                         ; $4681: $a2
    ld a, [bc]                                    ; $4682: $0a
    ld c, $0a                                     ; $4683: $0e $0a
    ld c, $05                                     ; $4685: $0e $05
    rst $38                                       ; $4687: $ff
    or b                                          ; $4688: $b0
    ld hl, sp-$5e                                 ; $4689: $f8 $a2
    rst $38                                       ; $468b: $ff
    ret nz                                        ; $468c: $c0

    rst $38                                       ; $468d: $ff

jr_0e3_468e:
    ret nz                                        ; $468e: $c0

    rst $38                                       ; $468f: $ff
    jp nz, $a0ff                                  ; $4690: $c2 $ff $a0

    rst $38                                       ; $4693: $ff
    ld a, [$efff]                                 ; $4694: $fa $ff $ef
    cp a                                          ; $4697: $bf
    ld a, d                                       ; $4698: $7a
    ld a, a                                       ; $4699: $7f
    ld [de], a                                    ; $469a: $12
    rra                                           ; $469b: $1f
    ld [de], a                                    ; $469c: $12
    rra                                           ; $469d: $1f
    ld [hl-], a                                   ; $469e: $32
    ccf                                           ; $469f: $3f
    daa                                           ; $46a0: $27
    ccf                                           ; $46a1: $3f
    ld a, [hl-]                                   ; $46a2: $3a
    ccf                                           ; $46a3: $3f
    ld [bc], a                                    ; $46a4: $02
    ld a, l                                       ; $46a5: $7d
    ld [bc], a                                    ; $46a6: $02
    jr c, jr_0e3_46ab                             ; $46a7: $38 $02

    nop                                           ; $46a9: $00
    adc c                                         ; $46aa: $89

jr_0e3_46ab:
    dec b                                         ; $46ab: $05
    rra                                           ; $46ac: $1f
    inc bc                                        ; $46ad: $03
    rra                                           ; $46ae: $1f
    inc bc                                        ; $46af: $03
    rra                                           ; $46b0: $1f
    inc bc                                        ; $46b1: $03
    rra                                           ; $46b2: $1f
    dec b                                         ; $46b3: $05
    inc bc                                        ; $46b4: $03
    rra                                           ; $46b5: $1f
    adc e                                         ; $46b6: $8b
    rla                                           ; $46b7: $17
    dec e                                         ; $46b8: $1d
    ld c, $1e                                     ; $46b9: $0e $1e
    ld [$0818], sp                                ; $46bb: $08 $18 $08
    jr jr_0e3_46cc                                ; $46be: $18 $0c

    inc e                                         ; $46c0: $1c
    inc b                                         ; $46c1: $04
    inc bc                                        ; $46c2: $03
    inc e                                         ; $46c3: $1c
    ld [bc], a                                    ; $46c4: $02
    ld e, $02                                     ; $46c5: $1e $02
    inc e                                         ; $46c7: $1c
    rst $38                                       ; $46c8: $ff
    dec c                                         ; $46c9: $0d
    inc b                                         ; $46ca: $04
    ld sp, hl                                     ; $46cb: $f9

jr_0e3_46cc:
    ld [$09fa], sp                                ; $46cc: $08 $fa $09
    ld [$ebfa], a                                 ; $46cf: $ea $fa $eb
    rst $38                                       ; $46d2: $ff
    ld a, [$fafd]                                 ; $46d3: $fa $fd $fa
    rst $38                                       ; $46d6: $ff
    sub [hl]                                      ; $46d7: $96
    inc de                                        ; $46d8: $13
    rra                                           ; $46d9: $1f
    jr nz, jr_0e3_471b                            ; $46da: $20 $3f

    ld l, b                                       ; $46dc: $68
    ld a, a                                       ; $46dd: $7f
    ld [hl], a                                    ; $46de: $77
    ld a, a                                       ; $46df: $7f
    ld a, h                                       ; $46e0: $7c
    ld a, a                                       ; $46e1: $7f
    scf                                           ; $46e2: $37
    ccf                                           ; $46e3: $3f
    ld e, l                                       ; $46e4: $5d
    ld a, [hl]                                    ; $46e5: $7e
    ld sp, hl                                     ; $46e6: $f9
    cp $67                                        ; $46e7: $fe $67
    ld a, d                                       ; $46e9: $7a
    rra                                           ; $46ea: $1f
    ld e, $0b                                     ; $46eb: $1e $0b
    ld c, $03                                     ; $46ed: $0e $03
    rlca                                          ; $46ef: $07
    add a                                         ; $46f0: $87
    ld b, $0e                                     ; $46f1: $06 $0e
    rrca                                          ; $46f3: $0f
    add hl, bc                                    ; $46f4: $09
    rrca                                          ; $46f5: $0f
    ld a, [bc]                                    ; $46f6: $0a
    rrca                                          ; $46f7: $0f
    ld [bc], a                                    ; $46f8: $02
    db $10                                        ; $46f9: $10
    ld [bc], a                                    ; $46fa: $02
    ld e, $82                                     ; $46fb: $1e $82
    ld [bc], a                                    ; $46fd: $02
    ld e, $03                                     ; $46fe: $1e $03
    inc e                                         ; $4700: $1c
    adc d                                         ; $4701: $8a
    inc d                                         ; $4702: $14
    inc c                                         ; $4703: $0c
    inc e                                         ; $4704: $1c
    ld e, $06                                     ; $4705: $1e $06
    rra                                           ; $4707: $1f
    ld bc, $0e12                                  ; $4708: $01 $12 $0e
    inc b                                         ; $470b: $04
    ld [bc], a                                    ; $470c: $02
    inc e                                         ; $470d: $1c
    add c                                         ; $470e: $81
    inc b                                         ; $470f: $04
    ld [bc], a                                    ; $4710: $02
    jr jr_0e3_4715                                ; $4711: $18 $02

    db $10                                        ; $4713: $10
    add c                                         ; $4714: $81

jr_0e3_4715:
    ld [$1803], sp                                ; $4715: $08 $03 $18
    adc a                                         ; $4718: $8f
    ld b, h                                       ; $4719: $44
    db $fc                                        ; $471a: $fc

jr_0e3_471b:
    add b                                         ; $471b: $80
    ret nz                                        ; $471c: $c0

    sub c                                         ; $471d: $91
    rst $38                                       ; $471e: $ff
    ret c                                         ; $471f: $d8

    rst $38                                       ; $4720: $ff
    or b                                          ; $4721: $b0
    rst $38                                       ; $4722: $ff
    adc b                                         ; $4723: $88
    rst $38                                       ; $4724: $ff
    ret z                                         ; $4725: $c8

    rst $38                                       ; $4726: $ff
    ld [hl], c                                    ; $4727: $71
    ld [bc], a                                    ; $4728: $02
    ld a, a                                       ; $4729: $7f
    adc l                                         ; $472a: $8d
    ld c, a                                       ; $472b: $4f
    ld a, c                                       ; $472c: $79
    ld a, a                                       ; $472d: $7f
    ld [hl+], a                                   ; $472e: $22
    ld a, $22                                     ; $472f: $3e $22
    ld a, $53                                     ; $4731: $3e $53
    ld a, a                                       ; $4733: $7f
    ld h, a                                       ; $4734: $67
    ld a, a                                       ; $4735: $7f
    add e                                         ; $4736: $83
    rst $38                                       ; $4737: $ff
    ld [bc], a                                    ; $4738: $02
    ld a, a                                       ; $4739: $7f
    ld [bc], a                                    ; $473a: $02
    ld l, a                                       ; $473b: $6f
    ld [bc], a                                    ; $473c: $02
    nop                                           ; $473d: $00
    inc b                                         ; $473e: $04
    ld [bc], a                                    ; $473f: $02
    add c                                         ; $4740: $81
    ld bc, $0303                                  ; $4741: $01 $03 $03
    add d                                         ; $4744: $82
    ld bc, $0203                                  ; $4745: $01 $03 $02
    ld [bc], a                                    ; $4748: $02
    ld a, [bc]                                    ; $4749: $0a
    nop                                           ; $474a: $00
    ld [bc], a                                    ; $474b: $02
    ld [bc], a                                    ; $474c: $02
    ld [bc], a                                    ; $474d: $02
    nop                                           ; $474e: $00
    ld [bc], a                                    ; $474f: $02
    ld [bc], a                                    ; $4750: $02
    ld [bc], a                                    ; $4751: $02
    nop                                           ; $4752: $00
    rst $38                                       ; $4753: $ff
    dec c                                         ; $4754: $0d
    inc b                                         ; $4755: $04
    ld sp, hl                                     ; $4756: $f9
    ld [$09fa], sp                                ; $4757: $08 $fa $09
    ld [$ebfb], a                                 ; $475a: $ea $fb $eb
    cp $fa                                        ; $475d: $fe $fa
    ld a, [$fffa]                                 ; $475f: $fa $fa $ff
    adc a                                         ; $4762: $8f
    add hl, de                                    ; $4763: $19
    rra                                           ; $4764: $1f
    jr nc, jr_0e3_47a6                            ; $4765: $30 $3f

    jr nc, jr_0e3_47a8                            ; $4767: $30 $3f

    ld [hl], c                                    ; $4769: $71
    ld a, a                                       ; $476a: $7f
    xor [hl]                                      ; $476b: $ae
    rst $38                                       ; $476c: $ff
    or c                                          ; $476d: $b1
    rst $38                                       ; $476e: $ff
    ld e, a                                       ; $476f: $5f
    ld a, a                                       ; $4770: $7f
    ld h, b                                       ; $4771: $60
    inc bc                                        ; $4772: $03
    ld a, a                                       ; $4773: $7f
    ld [bc], a                                    ; $4774: $02
    ccf                                           ; $4775: $3f
    add d                                         ; $4776: $82
    ld [hl-], a                                   ; $4777: $32
    ccf                                           ; $4778: $3f
    ld [bc], a                                    ; $4779: $02
    rra                                           ; $477a: $1f
    adc b                                         ; $477b: $88
    ld sp, $6e3f                                  ; $477c: $31 $3f $6e
    ld a, a                                       ; $477f: $7f
    and b                                         ; $4780: $a0
    rst $38                                       ; $4781: $ff
    and b                                         ; $4782: $a0
    rst $38                                       ; $4783: $ff
    inc b                                         ; $4784: $04
    inc b                                         ; $4785: $04
    add a                                         ; $4786: $87
    ld [bc], a                                    ; $4787: $02
    ld b, $05                                     ; $4788: $06 $05
    rlca                                          ; $478a: $07
    dec b                                         ; $478b: $05
    rlca                                          ; $478c: $07
    ld [bc], a                                    ; $478d: $02
    inc bc                                        ; $478e: $03
    ld b, $82                                     ; $478f: $06 $82
    ld [bc], a                                    ; $4791: $02
    ld b, $04                                     ; $4792: $06 $04
    inc b                                         ; $4794: $04
    ld [bc], a                                    ; $4795: $02
    nop                                           ; $4796: $00
    ld [bc], a                                    ; $4797: $02
    inc b                                         ; $4798: $04
    ld [bc], a                                    ; $4799: $02
    ld b, $a2                                     ; $479a: $06 $a2
    dec b                                         ; $479c: $05
    rlca                                          ; $479d: $07
    dec b                                         ; $479e: $05
    rlca                                          ; $479f: $07
    dec b                                         ; $47a0: $05
    rst $38                                       ; $47a1: $ff
    ld d, b                                       ; $47a2: $50
    ld [hl], b                                    ; $47a3: $70
    or b                                          ; $47a4: $b0
    rst $38                                       ; $47a5: $ff

jr_0e3_47a6:
    and c                                         ; $47a6: $a1
    rst $38                                       ; $47a7: $ff

jr_0e3_47a8:
    and a                                         ; $47a8: $a7
    rst $38                                       ; $47a9: $ff
    ldh [rIE], a                                  ; $47aa: $e0 $ff
    xor a                                         ; $47ac: $af
    rst $38                                       ; $47ad: $ff
    ldh a, [rIE]                                  ; $47ae: $f0 $ff
    ldh a, [$bf]                                  ; $47b0: $f0 $bf
    ld [hl], a                                    ; $47b2: $77
    ld a, a                                       ; $47b3: $7f
    ld [de], a                                    ; $47b4: $12
    rra                                           ; $47b5: $1f
    ld d, $1f                                     ; $47b6: $16 $1f
    rla                                           ; $47b8: $17
    rra                                           ; $47b9: $1f
    ld [hl+], a                                   ; $47ba: $22
    ccf                                           ; $47bb: $3f
    daa                                           ; $47bc: $27
    ccf                                           ; $47bd: $3f
    ld [bc], a                                    ; $47be: $02
    dec a                                         ; $47bf: $3d
    ld [bc], a                                    ; $47c0: $02
    dec e                                         ; $47c1: $1d
    ld [bc], a                                    ; $47c2: $02
    nop                                           ; $47c3: $00
    sbc c                                         ; $47c4: $99
    dec c                                         ; $47c5: $0d
    rra                                           ; $47c6: $1f
    dec d                                         ; $47c7: $15
    rra                                           ; $47c8: $1f
    dec b                                         ; $47c9: $05
    rra                                           ; $47ca: $1f
    rlca                                          ; $47cb: $07
    rra                                           ; $47cc: $1f
    dec d                                         ; $47cd: $15
    rra                                           ; $47ce: $1f
    rrca                                          ; $47cf: $0f
    rra                                           ; $47d0: $1f
    rlca                                          ; $47d1: $07
    dec e                                         ; $47d2: $1d
    ld c, $1e                                     ; $47d3: $0e $1e
    ld [$0818], sp                                ; $47d5: $08 $18 $08
    jr @+$0a                                      ; $47d8: $18 $08

    jr jr_0e3_47e0                                ; $47da: $18 $04

    inc e                                         ; $47dc: $1c
    inc b                                         ; $47dd: $04
    inc bc                                        ; $47de: $03
    inc e                                         ; $47df: $1c

jr_0e3_47e0:
    ld [bc], a                                    ; $47e0: $02
    jr @+$01                                      ; $47e1: $18 $ff

    dec c                                         ; $47e3: $0d
    inc b                                         ; $47e4: $04
    ld sp, hl                                     ; $47e5: $f9
    ld [$01f2], sp                                ; $47e6: $08 $f2 $01
    ld [c], a                                     ; $47e9: $e2
    ld sp, hl                                     ; $47ea: $f9
    ld [c], a                                     ; $47eb: $e2
    ld bc, $faf2                                  ; $47ec: $01 $f2 $fa
    ld a, [c]                                     ; $47ef: $f2
    ld bc, $0302                                  ; $47f0: $01 $02 $03
    add h                                         ; $47f3: $84
    dec b                                         ; $47f4: $05
    ld b, $0f                                     ; $47f5: $06 $0f
    add hl, bc                                    ; $47f7: $09
    ld [bc], a                                    ; $47f8: $02
    rlca                                          ; $47f9: $07
    add d                                         ; $47fa: $82
    inc bc                                        ; $47fb: $03
    ld [bc], a                                    ; $47fc: $02
    inc bc                                        ; $47fd: $03
    inc bc                                        ; $47fe: $03
    add e                                         ; $47ff: $83
    ld [bc], a                                    ; $4800: $02
    inc bc                                        ; $4801: $03
    ld [bc], a                                    ; $4802: $02
    ld [bc], a                                    ; $4803: $02
    pop hl                                        ; $4804: $e1
    adc [hl]                                      ; $4805: $8e
    sbc e                                         ; $4806: $9b
    ei                                            ; $4807: $fb
    add a                                         ; $4808: $87
    rst $38                                       ; $4809: $ff
    ld b, d                                       ; $480a: $42
    ld a, a                                       ; $480b: $7f
    ld b, b                                       ; $480c: $40
    ld a, a                                       ; $480d: $7f
    ld b, d                                       ; $480e: $42
    ld a, a                                       ; $480f: $7f
    db $e3                                        ; $4810: $e3
    rst $38                                       ; $4811: $ff
    rst $30                                       ; $4812: $f7
    sbc a                                         ; $4813: $9f
    ld [bc], a                                    ; $4814: $02
    ldh [$90], a                                  ; $4815: $e0 $90
    ld a, b                                       ; $4817: $78
    cp b                                          ; $4818: $b8
    db $f4                                        ; $4819: $f4
    ld l, h                                       ; $481a: $6c
    db $fc                                        ; $481b: $fc
    sub h                                         ; $481c: $94
    ld hl, sp+$18                                 ; $481d: $f8 $18
    db $fc                                        ; $481f: $fc
    ld h, h                                       ; $4820: $64
    ld hl, sp+$48                                 ; $4821: $f8 $48
    ld hl, sp-$78                                 ; $4823: $f8 $88
    ld hl, sp+$18                                 ; $4825: $f8 $18
    ld [bc], a                                    ; $4827: $02
    rst $38                                       ; $4828: $ff
    sub l                                         ; $4829: $95
    pop hl                                        ; $482a: $e1
    rst $38                                       ; $482b: $ff
    ld a, [de]                                    ; $482c: $1a
    cp $42                                        ; $482d: $fe $42
    cp $16                                        ; $482f: $fe $16
    cp $2f                                        ; $4831: $fe $2f
    ei                                            ; $4833: $fb
    rra                                           ; $4834: $1f
    di                                            ; $4835: $f3
    rst $30                                       ; $4836: $f7
    cp a                                          ; $4837: $bf
    ld c, d                                       ; $4838: $4a
    ld a, a                                       ; $4839: $7f
    ld d, h                                       ; $483a: $54
    ld a, a                                       ; $483b: $7f
    ld a, d                                       ; $483c: $7a
    ld a, a                                       ; $483d: $7f
    ld c, $03                                     ; $483e: $0e $03
    rrca                                          ; $4840: $0f
    adc [hl]                                      ; $4841: $8e
    dec c                                         ; $4842: $0d
    rrca                                          ; $4843: $0f
    add hl, bc                                    ; $4844: $09
    rrca                                          ; $4845: $0f
    add hl, bc                                    ; $4846: $09
    rrca                                          ; $4847: $0f
    add hl, bc                                    ; $4848: $09
    rrca                                          ; $4849: $0f
    ld [$080f], sp                                ; $484a: $08 $0f $08
    rrca                                          ; $484d: $0f
    ld e, $1f                                     ; $484e: $1e $1f
    inc b                                         ; $4850: $04
    ccf                                           ; $4851: $3f
    ld [bc], a                                    ; $4852: $02
    nop                                           ; $4853: $00
    adc b                                         ; $4854: $88
    rra                                           ; $4855: $1f
    ld [hl], a                                    ; $4856: $77
    inc c                                         ; $4857: $0c
    ld a, h                                       ; $4858: $7c
    ld [bc], a                                    ; $4859: $02
    ld a, [hl]                                    ; $485a: $7e
    ld c, $7e                                     ; $485b: $0e $7e
    ld [bc], a                                    ; $485d: $02
    ld [hl], b                                    ; $485e: $70
    sub d                                         ; $485f: $92
    ld e, b                                       ; $4860: $58
    ld a, b                                       ; $4861: $78
    jr z, jr_0e3_48dc                             ; $4862: $28 $78

    ld c, b                                       ; $4864: $48
    ld a, b                                       ; $4865: $78
    ld c, b                                       ; $4866: $48
    ld a, b                                       ; $4867: $78
    ld b, h                                       ; $4868: $44
    ld a, h                                       ; $4869: $7c
    ld b, h                                       ; $486a: $44
    ld a, h                                       ; $486b: $7c
    ld b, h                                       ; $486c: $44
    ld a, h                                       ; $486d: $7c
    ld h, h                                       ; $486e: $64
    ld a, h                                       ; $486f: $7c
    ld l, h                                       ; $4870: $6c
    ld a, h                                       ; $4871: $7c
    inc b                                         ; $4872: $04
    ld a, $ff                                     ; $4873: $3e $ff
    dec c                                         ; $4875: $0d
    inc b                                         ; $4876: $04
    ld sp, hl                                     ; $4877: $f9
    ld [$01f2], sp                                ; $4878: $08 $f2 $01
    ld [c], a                                     ; $487b: $e2
    ld sp, hl                                     ; $487c: $f9
    ld [c], a                                     ; $487d: $e2
    ld bc, $fbf2                                  ; $487e: $01 $f2 $fb
    ld a, [c]                                     ; $4881: $f2
    ld bc, $0302                                  ; $4882: $01 $02 $03
    add h                                         ; $4885: $84

jr_0e3_4886:
    dec b                                         ; $4886: $05
    ld b, $0f                                     ; $4887: $06 $0f
    add hl, bc                                    ; $4889: $09
    ld [bc], a                                    ; $488a: $02
    rlca                                          ; $488b: $07
    add d                                         ; $488c: $82
    inc bc                                        ; $488d: $03
    ld [bc], a                                    ; $488e: $02
    inc bc                                        ; $488f: $03
    inc bc                                        ; $4890: $03
    add e                                         ; $4891: $83
    ld [bc], a                                    ; $4892: $02
    inc bc                                        ; $4893: $03
    ld [bc], a                                    ; $4894: $02
    ld [bc], a                                    ; $4895: $02
    ld bc, $f302                                  ; $4896: $01 $02 $f3
    adc h                                         ; $4899: $8c
    adc e                                         ; $489a: $8b
    ei                                            ; $489b: $fb
    ld b, a                                       ; $489c: $47
    ld a, a                                       ; $489d: $7f
    ld b, [hl]                                    ; $489e: $46
    ld a, a                                       ; $489f: $7f
    ld h, b                                       ; $48a0: $60
    ld a, a                                       ; $48a1: $7f
    ld [hl], b                                    ; $48a2: $70
    ld e, a                                       ; $48a3: $5f
    ld a, d                                       ; $48a4: $7a
    ld c, a                                       ; $48a5: $4f
    ld [bc], a                                    ; $48a6: $02
    ldh [$90], a                                  ; $48a7: $e0 $90
    ld a, b                                       ; $48a9: $78
    cp b                                          ; $48aa: $b8
    db $f4                                        ; $48ab: $f4
    ld l, h                                       ; $48ac: $6c
    db $fc                                        ; $48ad: $fc
    sub h                                         ; $48ae: $94
    ld hl, sp+$18                                 ; $48af: $f8 $18
    db $fc                                        ; $48b1: $fc
    ld h, h                                       ; $48b2: $64
    ld hl, sp+$48                                 ; $48b3: $f8 $48
    ld hl, sp-$78                                 ; $48b5: $f8 $88
    ld hl, sp+$18                                 ; $48b7: $f8 $18
    ld [bc], a                                    ; $48b9: $02
    db $fc                                        ; $48ba: $fc
    and [hl]                                      ; $48bb: $a6
    ei                                            ; $48bc: $fb
    rst $38                                       ; $48bd: $ff
    add c                                         ; $48be: $81
    rst $38                                       ; $48bf: $ff
    ld a, [de]                                    ; $48c0: $1a
    cp $4e                                        ; $48c1: $fe $4e
    cp $9e                                        ; $48c3: $fe $9e
    ld a, [c]                                     ; $48c5: $f2
    ccf                                           ; $48c6: $3f
    rst $20                                       ; $48c7: $e7
    call c, $eeff                                 ; $48c8: $dc $ff $ee
    rst $38                                       ; $48cb: $ff
    call nc, Call_0e3_68ff                        ; $48cc: $d4 $ff $68
    ld a, a                                       ; $48cf: $7f
    inc d                                         ; $48d0: $14
    rra                                           ; $48d1: $1f
    dec de                                        ; $48d2: $1b
    rra                                           ; $48d3: $1f
    ld e, $1f                                     ; $48d4: $1e $1f
    inc de                                        ; $48d6: $13
    rra                                           ; $48d7: $1f
    inc de                                        ; $48d8: $13
    rra                                           ; $48d9: $1f
    inc de                                        ; $48da: $13
    rra                                           ; $48db: $1f

jr_0e3_48dc:
    ld de, $111f                                  ; $48dc: $11 $1f $11
    rra                                           ; $48df: $1f
    dec a                                         ; $48e0: $3d
    ccf                                           ; $48e1: $3f
    ld [bc], a                                    ; $48e2: $02
    ld a, a                                       ; $48e3: $7f
    ld [bc], a                                    ; $48e4: $02
    ld a, [hl]                                    ; $48e5: $7e
    ld [bc], a                                    ; $48e6: $02
    nop                                           ; $48e7: $00
    adc b                                         ; $48e8: $88
    rra                                           ; $48e9: $1f
    ccf                                           ; $48ea: $3f
    ld c, $3e                                     ; $48eb: $0e $3e
    inc b                                         ; $48ed: $04
    inc a                                         ; $48ee: $3c
    inc b                                         ; $48ef: $04
    inc a                                         ; $48f0: $3c
    ld [bc], a                                    ; $48f1: $02
    jr c, jr_0e3_4886                             ; $48f2: $38 $92

    jr jr_0e3_492e                                ; $48f4: $18 $38

    jr z, jr_0e3_4930                             ; $48f6: $28 $38

    ld [$0838], sp                                ; $48f8: $08 $38 $08
    jr c, jr_0e3_4901                             ; $48fb: $38 $04

    inc a                                         ; $48fd: $3c
    inc b                                         ; $48fe: $04
    inc a                                         ; $48ff: $3c
    inc b                                         ; $4900: $04

jr_0e3_4901:
    inc a                                         ; $4901: $3c
    inc h                                         ; $4902: $24
    inc a                                         ; $4903: $3c
    inc l                                         ; $4904: $2c
    inc a                                         ; $4905: $3c
    inc b                                         ; $4906: $04
    ld a, $ff                                     ; $4907: $3e $ff
    dec c                                         ; $4909: $0d
    inc b                                         ; $490a: $04
    ld sp, hl                                     ; $490b: $f9
    ld [$01f2], sp                                ; $490c: $08 $f2 $01
    ld [c], a                                     ; $490f: $e2
    ld a, [$01e2]                                 ; $4910: $fa $e2 $01
    ld a, [c]                                     ; $4913: $f2
    ei                                            ; $4914: $fb
    ld a, [c]                                     ; $4915: $f2
    ld bc, $0702                                  ; $4916: $01 $02 $07
    add h                                         ; $4919: $84

jr_0e3_491a:
    ld a, [bc]                                    ; $491a: $0a
    dec c                                         ; $491b: $0d
    rra                                           ; $491c: $1f
    ld [de], a                                    ; $491d: $12
    ld [bc], a                                    ; $491e: $02
    rrca                                          ; $491f: $0f
    adc d                                         ; $4920: $8a
    rlca                                          ; $4921: $07
    inc b                                         ; $4922: $04
    rlca                                          ; $4923: $07
    ld b, $07                                     ; $4924: $06 $07
    inc b                                         ; $4926: $04
    rlca                                          ; $4927: $07
    dec b                                         ; $4928: $05
    inc bc                                        ; $4929: $03
    ld [bc], a                                    ; $492a: $02
    ld [bc], a                                    ; $492b: $02
    rst $30                                       ; $492c: $f7
    adc h                                         ; $492d: $8c

jr_0e3_492e:
    adc a                                         ; $492e: $8f
    rst $38                                       ; $492f: $ff

jr_0e3_4930:
    ld c, e                                       ; $4930: $4b
    ld a, a                                       ; $4931: $7f
    inc h                                         ; $4932: $24
    ccf                                           ; $4933: $3f
    ld h, c                                       ; $4934: $61
    ld a, a                                       ; $4935: $7f
    ld [hl], h                                    ; $4936: $74
    ld e, a                                       ; $4937: $5f
    ld a, b                                       ; $4938: $78
    ld e, a                                       ; $4939: $5f
    ld [bc], a                                    ; $493a: $02
    ld h, b                                       ; $493b: $60
    sub b                                         ; $493c: $90
    ld a, b                                       ; $493d: $78
    jr c, @+$76                                   ; $493e: $38 $74

    ld l, h                                       ; $4940: $6c
    ld a, h                                       ; $4941: $7c
    inc d                                         ; $4942: $14
    ld a, b                                       ; $4943: $78
    jr jr_0e3_49c2                                ; $4944: $18 $7c

    ld h, h                                       ; $4946: $64
    ld a, b                                       ; $4947: $78
    ld c, b                                       ; $4948: $48
    ld a, b                                       ; $4949: $78
    ld [$1878], sp                                ; $494a: $08 $78 $18
    ld [bc], a                                    ; $494d: $02
    ld a, h                                       ; $494e: $7c
    and [hl]                                      ; $494f: $a6
    ld h, d                                       ; $4950: $62
    ld a, [hl]                                    ; $4951: $7e
    ld b, $7e                                     ; $4952: $06 $7e
    ld [hl], $7e                                  ; $4954: $36 $7e
    ld e, $7e                                     ; $4956: $1e $7e
    ld a, $66                                     ; $4958: $3e $66
    ccf                                           ; $495a: $3f
    ld l, a                                       ; $495b: $6f
    cp $ff                                        ; $495c: $fe $ff
    ld e, a                                       ; $495e: $5f
    ld a, a                                       ; $495f: $7f
    ld l, [hl]                                    ; $4960: $6e
    ld a, a                                       ; $4961: $7f
    inc [hl]                                      ; $4962: $34

jr_0e3_4963:
    ccf                                           ; $4963: $3f
    jr z, jr_0e3_49a5                             ; $4964: $28 $3f

    rla                                           ; $4966: $17
    rra                                           ; $4967: $1f
    ld e, $1f                                     ; $4968: $1e $1f
    inc de                                        ; $496a: $13
    rra                                           ; $496b: $1f
    inc de                                        ; $496c: $13
    rra                                           ; $496d: $1f
    inc de                                        ; $496e: $13
    rra                                           ; $496f: $1f
    ld de, $111f                                  ; $4970: $11 $1f $11
    rra                                           ; $4973: $1f
    dec a                                         ; $4974: $3d
    ccf                                           ; $4975: $3f
    ld [bc], a                                    ; $4976: $02
    ld a, a                                       ; $4977: $7f
    ld [bc], a                                    ; $4978: $02
    ld a, [hl]                                    ; $4979: $7e
    ld [bc], a                                    ; $497a: $02
    nop                                           ; $497b: $00
    ld [bc], a                                    ; $497c: $02
    ccf                                           ; $497d: $3f
    add [hl]                                      ; $497e: $86
    ld e, $3e                                     ; $497f: $1e $3e
    inc c                                         ; $4981: $0c
    inc a                                         ; $4982: $3c
    inc c                                         ; $4983: $0c
    inc a                                         ; $4984: $3c
    ld [bc], a                                    ; $4985: $02
    jr c, jr_0e3_491a                             ; $4986: $38 $92

    jr jr_0e3_49c2                                ; $4988: $18 $38

    jr z, jr_0e3_49c4                             ; $498a: $28 $38

    ld [$0838], sp                                ; $498c: $08 $38 $08
    jr c, jr_0e3_4995                             ; $498f: $38 $04

    inc a                                         ; $4991: $3c
    inc b                                         ; $4992: $04
    inc a                                         ; $4993: $3c
    inc b                                         ; $4994: $04

jr_0e3_4995:
    inc a                                         ; $4995: $3c
    inc h                                         ; $4996: $24
    inc a                                         ; $4997: $3c
    inc l                                         ; $4998: $2c
    inc a                                         ; $4999: $3c
    inc b                                         ; $499a: $04
    ld a, $ff                                     ; $499b: $3e $ff
    dec c                                         ; $499d: $0d
    inc b                                         ; $499e: $04
    ld sp, hl                                     ; $499f: $f9
    ld [$01f2], sp                                ; $49a0: $08 $f2 $01
    ld [c], a                                     ; $49a3: $e2
    ei                                            ; $49a4: $fb

jr_0e3_49a5:
    ld [c], a                                     ; $49a5: $e2
    ld bc, $fbf2                                  ; $49a6: $01 $f2 $fb
    ld a, [c]                                     ; $49a9: $f2
    ld bc, $0f02                                  ; $49aa: $01 $02 $0f
    sbc [hl]                                      ; $49ad: $9e
    dec d                                         ; $49ae: $15
    ld a, [de]                                    ; $49af: $1a
    ccf                                           ; $49b0: $3f
    dec h                                         ; $49b1: $25
    rra                                           ; $49b2: $1f
    ld e, $0f                                     ; $49b3: $1e $0f
    ld [$0d0f], sp                                ; $49b5: $08 $0f $0d
    rrca                                          ; $49b8: $0f
    add hl, bc                                    ; $49b9: $09
    rrca                                          ; $49ba: $0f
    ld a, [bc]                                    ; $49bb: $0a
    ld l, a                                       ; $49bc: $6f
    ld l, h                                       ; $49bd: $6c
    sub a                                         ; $49be: $97
    rst $38                                       ; $49bf: $ff
    ld c, d                                       ; $49c0: $4a
    ld a, a                                       ; $49c1: $7f

jr_0e3_49c2:
    ld c, l                                       ; $49c2: $4d
    ld a, a                                       ; $49c3: $7f

jr_0e3_49c4:
    ld h, d                                       ; $49c4: $62
    ld a, a                                       ; $49c5: $7f
    ld h, c                                       ; $49c6: $61
    ld a, a                                       ; $49c7: $7f
    ei                                            ; $49c8: $fb
    sbc [hl]                                      ; $49c9: $9e
    rst $38                                       ; $49ca: $ff
    sbc $02                                       ; $49cb: $de $02
    jr nz, jr_0e3_49d1                            ; $49cd: $20 $02

    jr c, jr_0e3_4963                             ; $49cf: $38 $92

jr_0e3_49d1:
    inc [hl]                                      ; $49d1: $34
    inc l                                         ; $49d2: $2c
    inc a                                         ; $49d3: $3c
    inc d                                         ; $49d4: $14
    jr c, jr_0e3_49ef                             ; $49d5: $38 $18

    inc a                                         ; $49d7: $3c
    inc h                                         ; $49d8: $24
    jr c, jr_0e3_49e3                             ; $49d9: $38 $08

    jr c, @+$0a                                   ; $49db: $38 $08

    jr c, jr_0e3_49f7                             ; $49dd: $38 $18

    inc l                                         ; $49df: $2c
    inc a                                         ; $49e0: $3c
    inc c                                         ; $49e1: $0c
    inc a                                         ; $49e2: $3c

jr_0e3_49e3:
    ld [bc], a                                    ; $49e3: $02
    ld a, $81                                     ; $49e4: $3e $81
    ld e, $04                                     ; $49e6: $1e $04
    ld a, $8d                                     ; $49e8: $3e $8d
    ld c, $3f                                     ; $49ea: $0e $3f
    rra                                           ; $49ec: $1f
    db $fd                                        ; $49ed: $fd

jr_0e3_49ee:
    rst $38                                       ; $49ee: $ff

jr_0e3_49ef:
    ld l, [hl]                                    ; $49ef: $6e
    ld a, a                                       ; $49f0: $7f
    inc [hl]                                      ; $49f1: $34
    ccf                                           ; $49f2: $3f
    jr c, jr_0e3_4a34                             ; $49f3: $38 $3f

    dec [hl]                                      ; $49f5: $35
    ccf                                           ; $49f6: $3f

jr_0e3_49f7:
    ld [bc], a                                    ; $49f7: $02
    rra                                           ; $49f8: $1f
    adc [hl]                                      ; $49f9: $8e
    ld e, $1f                                     ; $49fa: $1e $1f
    inc de                                        ; $49fc: $13
    rra                                           ; $49fd: $1f
    inc de                                        ; $49fe: $13
    rra                                           ; $49ff: $1f
    inc de                                        ; $4a00: $13
    rra                                           ; $4a01: $1f
    ld de, $111f                                  ; $4a02: $11 $1f $11
    rra                                           ; $4a05: $1f
    dec a                                         ; $4a06: $3d
    ccf                                           ; $4a07: $3f
    ld [bc], a                                    ; $4a08: $02
    ld a, a                                       ; $4a09: $7f
    ld [bc], a                                    ; $4a0a: $02
    ld a, [hl]                                    ; $4a0b: $7e
    ld [bc], a                                    ; $4a0c: $02
    nop                                           ; $4a0d: $00
    ld [bc], a                                    ; $4a0e: $02
    ccf                                           ; $4a0f: $3f
    ld [bc], a                                    ; $4a10: $02
    ld a, $83                                     ; $4a11: $3e $83
    jr jr_0e3_4a4d                                ; $4a13: $18 $38

    jr @+$05                                      ; $4a15: $18 $03

    jr c, @-$6c                                   ; $4a17: $38 $92

    jr jr_0e3_4a53                                ; $4a19: $18 $38

    jr z, jr_0e3_4a55                             ; $4a1b: $28 $38

    ld [$0838], sp                                ; $4a1d: $08 $38 $08
    jr c, jr_0e3_4a26                             ; $4a20: $38 $04

    inc a                                         ; $4a22: $3c
    inc b                                         ; $4a23: $04
    inc a                                         ; $4a24: $3c
    inc b                                         ; $4a25: $04

jr_0e3_4a26:
    inc a                                         ; $4a26: $3c
    inc h                                         ; $4a27: $24

jr_0e3_4a28:
    inc a                                         ; $4a28: $3c
    inc l                                         ; $4a29: $2c
    inc a                                         ; $4a2a: $3c
    inc b                                         ; $4a2b: $04
    ld a, $ff                                     ; $4a2c: $3e $ff
    dec c                                         ; $4a2e: $0d
    inc b                                         ; $4a2f: $04
    ld sp, hl                                     ; $4a30: $f9
    ld [$01f2], sp                                ; $4a31: $08 $f2 $01

jr_0e3_4a34:
    ld [c], a                                     ; $4a34: $e2
    ei                                            ; $4a35: $fb
    ld [c], a                                     ; $4a36: $e2
    ld bc, $fbf2                                  ; $4a37: $01 $f2 $fb
    ld a, [c]                                     ; $4a3a: $f2
    ld bc, $0f02                                  ; $4a3b: $01 $02 $0f
    sbc [hl]                                      ; $4a3e: $9e
    dec d                                         ; $4a3f: $15
    ld a, [de]                                    ; $4a40: $1a
    ccf                                           ; $4a41: $3f
    dec h                                         ; $4a42: $25
    rra                                           ; $4a43: $1f
    ld e, $0f                                     ; $4a44: $1e $0f
    ld [$0d0f], sp                                ; $4a46: $08 $0f $0d
    rrca                                          ; $4a49: $0f
    add hl, bc                                    ; $4a4a: $09
    cpl                                           ; $4a4b: $2f
    ld a, [hl+]                                   ; $4a4c: $2a

jr_0e3_4a4d:
    ld e, a                                       ; $4a4d: $5f
    ld a, l                                       ; $4a4e: $7d
    ld e, d                                       ; $4a4f: $5a
    ld a, a                                       ; $4a50: $7f
    ld c, l                                       ; $4a51: $4d
    ld a, a                                       ; $4a52: $7f

jr_0e3_4a53:
    ld l, d                                       ; $4a53: $6a
    ld a, a                                       ; $4a54: $7f

jr_0e3_4a55:
    ld h, h                                       ; $4a55: $64
    ld a, a                                       ; $4a56: $7f
    ld [hl], e                                    ; $4a57: $73
    ld a, a                                       ; $4a58: $7f
    rst $30                                       ; $4a59: $f7
    call c, $cefb                                 ; $4a5a: $dc $fb $ce
    ld [bc], a                                    ; $4a5d: $02
    jr nz, jr_0e3_4a62                            ; $4a5e: $20 $02

    jr c, jr_0e3_49ee                             ; $4a60: $38 $8c

jr_0e3_4a62:
    inc [hl]                                      ; $4a62: $34
    inc l                                         ; $4a63: $2c
    inc a                                         ; $4a64: $3c
    inc d                                         ; $4a65: $14
    jr c, jr_0e3_4a80                             ; $4a66: $38 $18

    inc a                                         ; $4a68: $3c
    inc h                                         ; $4a69: $24
    jr c, jr_0e3_4a74                             ; $4a6a: $38 $08

    jr c, jr_0e3_4a76                             ; $4a6c: $38 $08

    ld [bc], a                                    ; $4a6e: $02
    jr c, jr_0e3_49f7                             ; $4a6f: $38 $86

    ld [$1c38], sp                                ; $4a71: $08 $38 $1c

jr_0e3_4a74:
    inc a                                         ; $4a74: $3c
    inc e                                         ; $4a75: $1c

jr_0e3_4a76:
    inc a                                         ; $4a76: $3c
    inc bc                                        ; $4a77: $03
    ld a, $83                                     ; $4a78: $3e $83
    ld e, $3e                                     ; $4a7a: $1e $3e
    ld e, $02                                     ; $4a7c: $1e $02
    ccf                                           ; $4a7e: $3f
    sbc d                                         ; $4a7f: $9a

jr_0e3_4a80:
    db $fd                                        ; $4a80: $fd
    rst $38                                       ; $4a81: $ff
    ld l, h                                       ; $4a82: $6c
    ld a, a                                       ; $4a83: $7f
    ld [hl], $3f                                  ; $4a84: $36 $3f
    jr c, jr_0e3_4ac7                             ; $4a86: $38 $3f

    dec [hl]                                      ; $4a88: $35
    ccf                                           ; $4a89: $3f
    dec de                                        ; $4a8a: $1b
    rra                                           ; $4a8b: $1f
    ld e, $1f                                     ; $4a8c: $1e $1f
    inc de                                        ; $4a8e: $13
    rra                                           ; $4a8f: $1f
    inc de                                        ; $4a90: $13
    rra                                           ; $4a91: $1f
    inc de                                        ; $4a92: $13
    rra                                           ; $4a93: $1f
    ld de, $111f                                  ; $4a94: $11 $1f $11
    rra                                           ; $4a97: $1f
    dec a                                         ; $4a98: $3d
    ccf                                           ; $4a99: $3f
    ld [bc], a                                    ; $4a9a: $02
    ld a, a                                       ; $4a9b: $7f
    ld [bc], a                                    ; $4a9c: $02
    ld a, [hl]                                    ; $4a9d: $7e
    ld [bc], a                                    ; $4a9e: $02
    nop                                           ; $4a9f: $00
    ld [bc], a                                    ; $4aa0: $02
    ccf                                           ; $4aa1: $3f
    ld [bc], a                                    ; $4aa2: $02
    inc a                                         ; $4aa3: $3c
    ld [bc], a                                    ; $4aa4: $02
    jr c, jr_0e3_4a28                             ; $4aa5: $38 $81

    jr @+$05                                      ; $4aa7: $18 $03

    jr c, @-$6c                                   ; $4aa9: $38 $92

    jr jr_0e3_4ae5                                ; $4aab: $18 $38

    jr z, jr_0e3_4ae7                             ; $4aad: $28 $38

    ld [$0838], sp                                ; $4aaf: $08 $38 $08
    jr c, jr_0e3_4ab8                             ; $4ab2: $38 $04

    inc a                                         ; $4ab4: $3c
    inc b                                         ; $4ab5: $04
    inc a                                         ; $4ab6: $3c
    inc b                                         ; $4ab7: $04

jr_0e3_4ab8:
    inc a                                         ; $4ab8: $3c
    inc h                                         ; $4ab9: $24
    inc a                                         ; $4aba: $3c
    inc l                                         ; $4abb: $2c
    inc a                                         ; $4abc: $3c
    inc b                                         ; $4abd: $04
    ld a, $ff                                     ; $4abe: $3e $ff
    dec c                                         ; $4ac0: $0d
    inc b                                         ; $4ac1: $04
    ld sp, hl                                     ; $4ac2: $f9
    ld [$01f2], sp                                ; $4ac3: $08 $f2 $01
    ld [c], a                                     ; $4ac6: $e2

jr_0e3_4ac7:
    ld sp, hl                                     ; $4ac7: $f9
    ld [c], a                                     ; $4ac8: $e2
    ld bc, $faf2                                  ; $4ac9: $01 $f2 $fa
    ld a, [c]                                     ; $4acc: $f2
    ld bc, $0302                                  ; $4acd: $01 $02 $03
    add h                                         ; $4ad0: $84
    dec b                                         ; $4ad1: $05
    ld b, $0f                                     ; $4ad2: $06 $0f
    add hl, bc                                    ; $4ad4: $09
    ld [bc], a                                    ; $4ad5: $02
    rlca                                          ; $4ad6: $07
    add d                                         ; $4ad7: $82
    inc bc                                        ; $4ad8: $03
    ld [bc], a                                    ; $4ad9: $02
    inc bc                                        ; $4ada: $03
    inc bc                                        ; $4adb: $03
    add e                                         ; $4adc: $83
    ld [bc], a                                    ; $4add: $02
    inc bc                                        ; $4ade: $03
    ld [bc], a                                    ; $4adf: $02
    ld [bc], a                                    ; $4ae0: $02
    ld bc, $f302                                  ; $4ae1: $01 $02 $f3
    adc h                                         ; $4ae4: $8c

jr_0e3_4ae5:
    adc e                                         ; $4ae5: $8b
    ei                                            ; $4ae6: $fb

jr_0e3_4ae7:
    ld b, a                                       ; $4ae7: $47
    ld a, a                                       ; $4ae8: $7f
    ld b, d                                       ; $4ae9: $42
    ld a, a                                       ; $4aea: $7f
    ld b, b                                       ; $4aeb: $40
    ld a, a                                       ; $4aec: $7f
    ld [c], a                                     ; $4aed: $e2
    rst $38                                       ; $4aee: $ff
    di                                            ; $4aef: $f3
    sbc a                                         ; $4af0: $9f
    ld [bc], a                                    ; $4af1: $02
    ldh [$90], a                                  ; $4af2: $e0 $90
    ld a, b                                       ; $4af4: $78
    cp b                                          ; $4af5: $b8
    db $f4                                        ; $4af6: $f4
    ld l, h                                       ; $4af7: $6c
    db $fc                                        ; $4af8: $fc
    sub h                                         ; $4af9: $94
    ld hl, sp+$18                                 ; $4afa: $f8 $18
    db $fc                                        ; $4afc: $fc
    ld h, h                                       ; $4afd: $64
    ld hl, sp+$48                                 ; $4afe: $f8 $48
    ld hl, sp-$78                                 ; $4b00: $f8 $88
    ld hl, sp+$18                                 ; $4b02: $f8 $18
    ld [bc], a                                    ; $4b04: $02
    cp $94                                        ; $4b05: $fe $94
    pop af                                        ; $4b07: $f1
    rst $38                                       ; $4b08: $ff
    adc l                                         ; $4b09: $8d
    rst $38                                       ; $4b0a: $ff
    ld [de], a                                    ; $4b0b: $12
    cp $46                                        ; $4b0c: $fe $46
    cp $1f                                        ; $4b0e: $fe $1f
    ei                                            ; $4b10: $fb
    sbc a                                         ; $4b11: $9f
    di                                            ; $4b12: $f3
    rst $28                                       ; $4b13: $ef
    cp a                                          ; $4b14: $bf
    ld d, h                                       ; $4b15: $54
    ld a, a                                       ; $4b16: $7f
    xor d                                         ; $4b17: $aa
    rst $38                                       ; $4b18: $ff
    ld a, h                                       ; $4b19: $7c
    ld a, a                                       ; $4b1a: $7f
    inc b                                         ; $4b1b: $04
    rrca                                          ; $4b1c: $0f
    adc [hl]                                      ; $4b1d: $8e
    dec c                                         ; $4b1e: $0d
    rrca                                          ; $4b1f: $0f
    add hl, bc                                    ; $4b20: $09
    rrca                                          ; $4b21: $0f
    add hl, bc                                    ; $4b22: $09
    rrca                                          ; $4b23: $0f
    add hl, bc                                    ; $4b24: $09
    rrca                                          ; $4b25: $0f
    ld [$080f], sp                                ; $4b26: $08 $0f $08
    rrca                                          ; $4b29: $0f
    ld e, $1f                                     ; $4b2a: $1e $1f
    inc b                                         ; $4b2c: $04
    ccf                                           ; $4b2d: $3f
    ld [bc], a                                    ; $4b2e: $02
    nop                                           ; $4b2f: $00
    adc b                                         ; $4b30: $88
    ld e, a                                       ; $4b31: $5f
    ld [hl], a                                    ; $4b32: $77
    ld c, $7e                                     ; $4b33: $0e $7e
    ld [bc], a                                    ; $4b35: $02
    ld a, [hl]                                    ; $4b36: $7e
    ld e, $7e                                     ; $4b37: $1e $7e
    ld [bc], a                                    ; $4b39: $02
    ld [hl], b                                    ; $4b3a: $70
    sub d                                         ; $4b3b: $92
    ld e, b                                       ; $4b3c: $58
    ld a, b                                       ; $4b3d: $78
    jr z, jr_0e3_4bb8                             ; $4b3e: $28 $78

    ld c, b                                       ; $4b40: $48
    ld a, b                                       ; $4b41: $78
    ld c, b                                       ; $4b42: $48
    ld a, b                                       ; $4b43: $78
    ld b, h                                       ; $4b44: $44
    ld a, h                                       ; $4b45: $7c
    ld b, h                                       ; $4b46: $44
    ld a, h                                       ; $4b47: $7c
    ld b, h                                       ; $4b48: $44
    ld a, h                                       ; $4b49: $7c
    ld h, h                                       ; $4b4a: $64
    ld a, h                                       ; $4b4b: $7c
    ld l, h                                       ; $4b4c: $6c
    ld a, h                                       ; $4b4d: $7c
    inc b                                         ; $4b4e: $04
    ld a, $ff                                     ; $4b4f: $3e $ff
    dec c                                         ; $4b51: $0d
    inc b                                         ; $4b52: $04
    ld sp, hl                                     ; $4b53: $f9
    ld [$01f2], sp                                ; $4b54: $08 $f2 $01
    ld [c], a                                     ; $4b57: $e2
    ld a, [$00e2]                                 ; $4b58: $fa $e2 $00
    ld a, [c]                                     ; $4b5b: $f2
    ld sp, hl                                     ; $4b5c: $f9
    ld a, [c]                                     ; $4b5d: $f2
    ld bc, $0702                                  ; $4b5e: $01 $02 $07
    sub c                                         ; $4b61: $91
    ld [$100f], sp                                ; $4b62: $08 $0f $10
    rra                                           ; $4b65: $1f
    jr z, jr_0e3_4ba7                             ; $4b66: $28 $3f

    jr nc, jr_0e3_4ba9                            ; $4b68: $30 $3f

    jr z, jr_0e3_4bab                             ; $4b6a: $28 $3f

    dec [hl]                                      ; $4b6c: $35
    ccf                                           ; $4b6d: $3f
    ld l, b                                       ; $4b6e: $68
    ld a, a                                       ; $4b6f: $7f
    ld d, b                                       ; $4b70: $50
    ld a, a                                       ; $4b71: $7f
    ld a, h                                       ; $4b72: $7c
    inc bc                                        ; $4b73: $03
    ld a, a                                       ; $4b74: $7f
    adc d                                         ; $4b75: $8a
    inc sp                                        ; $4b76: $33
    ccf                                           ; $4b77: $3f
    cpl                                           ; $4b78: $2f
    ccf                                           ; $4b79: $3f
    ld d, c                                       ; $4b7a: $51
    ld a, a                                       ; $4b7b: $7f
    ld c, b                                       ; $4b7c: $48
    ld a, a                                       ; $4b7d: $7f
    add a                                         ; $4b7e: $87
    rst $38                                       ; $4b7f: $ff
    ld [bc], a                                    ; $4b80: $02
    jr nz, @-$42                                  ; $4b81: $20 $bc

    db $10                                        ; $4b83: $10
    jr nc, jr_0e3_4b8e                            ; $4b84: $30 $08

    jr c, jr_0e3_4b90                             ; $4b86: $38 $08

    jr c, jr_0e3_4b8e                             ; $4b88: $38 $04

    inc a                                         ; $4b8a: $3c
    inc b                                         ; $4b8b: $04
    inc a                                         ; $4b8c: $3c
    inc b                                         ; $4b8d: $04

jr_0e3_4b8e:
    inc a                                         ; $4b8e: $3c
    ld [bc], a                                    ; $4b8f: $02

jr_0e3_4b90:
    ld a, $0a                                     ; $4b90: $3e $0a
    ld a, $1a                                     ; $4b92: $3e $1a
    ld a, $32                                     ; $4b94: $3e $32
    ld a, $0c                                     ; $4b96: $3e $0c
    inc a                                         ; $4b98: $3c
    inc e                                         ; $4b99: $1c
    inc a                                         ; $4b9a: $3c
    ld a, [bc]                                    ; $4b9b: $0a
    ld a, $12                                     ; $4b9c: $3e $12
    ld a, $01                                     ; $4b9e: $3e $01
    ccf                                           ; $4ba0: $3f
    ld b, b                                       ; $4ba1: $40
    ld a, a                                       ; $4ba2: $7f
    ld c, d                                       ; $4ba3: $4a
    ld a, a                                       ; $4ba4: $7f
    ld h, l                                       ; $4ba5: $65
    ld a, a                                       ; $4ba6: $7f

jr_0e3_4ba7:
    ld h, d                                       ; $4ba7: $62
    ld a, a                                       ; $4ba8: $7f

jr_0e3_4ba9:
    ld h, c                                       ; $4ba9: $61
    ld a, a                                       ; $4baa: $7f

jr_0e3_4bab:
    ld [hl], b                                    ; $4bab: $70
    ld a, a                                       ; $4bac: $7f
    ld d, b                                       ; $4bad: $50
    ld a, a                                       ; $4bae: $7f
    ld [hl], b                                    ; $4baf: $70
    ld a, a                                       ; $4bb0: $7f
    ld d, h                                       ; $4bb1: $54
    ld a, a                                       ; $4bb2: $7f
    ld d, c                                       ; $4bb3: $51
    ld a, a                                       ; $4bb4: $7f
    ld l, d                                       ; $4bb5: $6a
    ld a, a                                       ; $4bb6: $7f
    ret nc                                        ; $4bb7: $d0

jr_0e3_4bb8:
    rst $38                                       ; $4bb8: $ff
    xor b                                         ; $4bb9: $a8
    rst $38                                       ; $4bba: $ff
    add d                                         ; $4bbb: $82
    rst $38                                       ; $4bbc: $ff
    ld h, b                                       ; $4bbd: $60
    ld a, a                                       ; $4bbe: $7f
    ld [bc], a                                    ; $4bbf: $02
    rra                                           ; $4bc0: $1f
    sbc [hl]                                      ; $4bc1: $9e
    ld [bc], a                                    ; $4bc2: $02
    cp $22                                        ; $4bc3: $fe $22
    cp $46                                        ; $4bc5: $fe $46
    cp $a6                                        ; $4bc7: $fe $a6
    cp $42                                        ; $4bc9: $fe $42
    cp $0a                                        ; $4bcb: $fe $0a
    cp $02                                        ; $4bcd: $fe $02
    cp $0a                                        ; $4bcf: $fe $0a
    cp $2a                                        ; $4bd1: $fe $2a
    cp $42                                        ; $4bd3: $fe $42
    cp $92                                        ; $4bd5: $fe $92
    cp $03                                        ; $4bd7: $fe $03
    rst $38                                       ; $4bd9: $ff
    ld hl, $01ff                                  ; $4bda: $21 $ff $01
    rst $38                                       ; $4bdd: $ff
    ld b, $fe                                     ; $4bde: $06 $fe
    ld [bc], a                                    ; $4be0: $02
    ld hl, sp-$01                                 ; $4be1: $f8 $ff
    dec c                                         ; $4be3: $0d
    inc b                                         ; $4be4: $04
    ld sp, hl                                     ; $4be5: $f9
    ld [$01f2], sp                                ; $4be6: $08 $f2 $01
    ld [c], a                                     ; $4be9: $e2
    ei                                            ; $4bea: $fb
    db $e3                                        ; $4beb: $e3
    nop                                           ; $4bec: $00
    ld a, [c]                                     ; $4bed: $f2
    ld sp, hl                                     ; $4bee: $f9
    ld a, [c]                                     ; $4bef: $f2
    nop                                           ; $4bf0: $00
    ld [bc], a                                    ; $4bf1: $02
    rrca                                          ; $4bf2: $0f
    sub c                                         ; $4bf3: $91
    db $10                                        ; $4bf4: $10
    rra                                           ; $4bf5: $1f
    jr nz, jr_0e3_4c37                            ; $4bf6: $20 $3f

    ld d, b                                       ; $4bf8: $50
    ld a, a                                       ; $4bf9: $7f
    ld h, b                                       ; $4bfa: $60
    ld a, a                                       ; $4bfb: $7f
    ld d, b                                       ; $4bfc: $50
    ld a, a                                       ; $4bfd: $7f
    ld l, d                                       ; $4bfe: $6a
    ld a, a                                       ; $4bff: $7f
    ret nc                                        ; $4c00: $d0

    rst $38                                       ; $4c01: $ff
    and b                                         ; $4c02: $a0
    rst $38                                       ; $4c03: $ff
    ld hl, sp+$03                                 ; $4c04: $f8 $03
    rst $38                                       ; $4c06: $ff
    adc d                                         ; $4c07: $8a
    ld h, [hl]                                    ; $4c08: $66
    ld a, a                                       ; $4c09: $7f
    ld e, [hl]                                    ; $4c0a: $5e
    ld a, a                                       ; $4c0b: $7f
    ld [c], a                                     ; $4c0c: $e2
    rst $38                                       ; $4c0d: $ff
    sbc b                                         ; $4c0e: $98
    rst $38                                       ; $4c0f: $ff
    adc a                                         ; $4c10: $8f
    rst $38                                       ; $4c11: $ff
    ld [bc], a                                    ; $4c12: $02
    db $10                                        ; $4c13: $10
    sub e                                         ; $4c14: $93
    ld [$0818], sp                                ; $4c15: $08 $18 $08
    jr jr_0e3_4c1e                                ; $4c18: $18 $04

    inc e                                         ; $4c1a: $1c
    inc b                                         ; $4c1b: $04
    inc e                                         ; $4c1c: $1c
    inc b                                         ; $4c1d: $04

jr_0e3_4c1e:
    inc e                                         ; $4c1e: $1c
    ld [bc], a                                    ; $4c1f: $02
    ld e, $0a                                     ; $4c20: $1e $0a
    ld e, $1a                                     ; $4c22: $1e $1a
    ld e, $12                                     ; $4c24: $1e $12
    ld e, $0c                                     ; $4c26: $1e $0c
    inc bc                                        ; $4c28: $03
    inc e                                         ; $4c29: $1c
    and [hl]                                      ; $4c2a: $a6
    ld a, [bc]                                    ; $4c2b: $0a
    ld e, $02                                     ; $4c2c: $1e $02
    ld e, $0b                                     ; $4c2e: $1e $0b
    rra                                           ; $4c30: $1f
    inc bc                                        ; $4c31: $03
    rst $38                                       ; $4c32: $ff
    jr z, jr_0e3_4c73                             ; $4c33: $28 $3e

    ld b, l                                       ; $4c35: $45
    ld a, a                                       ; $4c36: $7f

jr_0e3_4c37:
    ld c, d                                       ; $4c37: $4a
    ld a, a                                       ; $4c38: $7f
    ld b, l                                       ; $4c39: $45
    ld a, a                                       ; $4c3a: $7f
    ld c, b                                       ; $4c3b: $48
    ld a, a                                       ; $4c3c: $7f
    ld h, h                                       ; $4c3d: $64
    ld a, a                                       ; $4c3e: $7f
    ld h, b                                       ; $4c3f: $60
    ld a, a                                       ; $4c40: $7f
    ld h, h                                       ; $4c41: $64
    ld a, a                                       ; $4c42: $7f
    ld h, b                                       ; $4c43: $60
    ld a, a                                       ; $4c44: $7f
    ld d, b                                       ; $4c45: $50
    ld a, a                                       ; $4c46: $7f
    ret nc                                        ; $4c47: $d0

    rst $38                                       ; $4c48: $ff
    ret nc                                        ; $4c49: $d0

    rst $38                                       ; $4c4a: $ff
    add b                                         ; $4c4b: $80
    rst $38                                       ; $4c4c: $ff
    add b                                         ; $4c4d: $80
    rst $38                                       ; $4c4e: $ff
    db $fc                                        ; $4c4f: $fc
    rst $38                                       ; $4c50: $ff
    ld [bc], a                                    ; $4c51: $02
    inc bc                                        ; $4c52: $03
    ld [bc], a                                    ; $4c53: $02
    nop                                           ; $4c54: $00
    sbc h                                         ; $4c55: $9c
    inc hl                                        ; $4c56: $23
    ld a, a                                       ; $4c57: $7f
    ld b, e                                       ; $4c58: $43
    ld a, a                                       ; $4c59: $7f
    inc bc                                        ; $4c5a: $03
    ld a, a                                       ; $4c5b: $7f
    inc bc                                        ; $4c5c: $03
    ld a, a                                       ; $4c5d: $7f
    inc bc                                        ; $4c5e: $03
    ld a, a                                       ; $4c5f: $7f
    ld bc, $017f                                  ; $4c60: $01 $7f $01
    ld a, a                                       ; $4c63: $7f
    ld bc, $017f                                  ; $4c64: $01 $7f $01
    ld a, a                                       ; $4c67: $7f
    ld bc, $397f                                  ; $4c68: $01 $7f $39
    ld a, a                                       ; $4c6b: $7f
    ld b, c                                       ; $4c6c: $41
    ld a, a                                       ; $4c6d: $7f
    ld bc, $7d7f                                  ; $4c6e: $01 $7f $7d
    ld a, a                                       ; $4c71: $7f
    ld [bc], a                                    ; $4c72: $02

jr_0e3_4c73:
    ld a, [hl]                                    ; $4c73: $7e
    rst $38                                       ; $4c74: $ff
    dec c                                         ; $4c75: $0d
    inc b                                         ; $4c76: $04
    ld sp, hl                                     ; $4c77: $f9
    ld [$01f2], sp                                ; $4c78: $08 $f2 $01
    db $e3                                        ; $4c7b: $e3
    ei                                            ; $4c7c: $fb
    db $e4                                        ; $4c7d: $e4
    nop                                           ; $4c7e: $00
    di                                            ; $4c7f: $f3
    ld sp, hl                                     ; $4c80: $f9
    di                                            ; $4c81: $f3
    nop                                           ; $4c82: $00
    ld [bc], a                                    ; $4c83: $02
    rrca                                          ; $4c84: $0f
    sub d                                         ; $4c85: $92
    db $10                                        ; $4c86: $10
    rra                                           ; $4c87: $1f
    jr nz, jr_0e3_4cc9                            ; $4c88: $20 $3f

    ld d, b                                       ; $4c8a: $50
    ld a, a                                       ; $4c8b: $7f
    ld l, b                                       ; $4c8c: $68
    ld a, a                                       ; $4c8d: $7f
    ld d, l                                       ; $4c8e: $55
    ld a, a                                       ; $4c8f: $7f
    add sp, -$01                                  ; $4c90: $e8 $ff
    sub b                                         ; $4c92: $90
    rst $38                                       ; $4c93: $ff
    ret nz                                        ; $4c94: $c0

    rst $38                                       ; $4c95: $ff
    ld sp, hl                                     ; $4c96: $f9
    rst $38                                       ; $4c97: $ff
    ld [bc], a                                    ; $4c98: $02
    ld a, a                                       ; $4c99: $7f
    adc d                                         ; $4c9a: $8a
    ld h, [hl]                                    ; $4c9b: $66
    ld a, a                                       ; $4c9c: $7f
    ld e, [hl]                                    ; $4c9d: $5e
    ld a, a                                       ; $4c9e: $7f
    ldh [rIE], a                                  ; $4c9f: $e0 $ff
    sbc a                                         ; $4ca1: $9f
    rst $38                                       ; $4ca2: $ff
    add b                                         ; $4ca3: $80
    rst $38                                       ; $4ca4: $ff
    ld [bc], a                                    ; $4ca5: $02
    db $10                                        ; $4ca6: $10
    sub e                                         ; $4ca7: $93
    ld [$0818], sp                                ; $4ca8: $08 $18 $08
    jr jr_0e3_4cb1                                ; $4cab: $18 $04

    inc e                                         ; $4cad: $1c
    inc b                                         ; $4cae: $04
    inc e                                         ; $4caf: $1c
    ld [bc], a                                    ; $4cb0: $02

jr_0e3_4cb1:
    ld e, $02                                     ; $4cb1: $1e $02
    ld e, $0a                                     ; $4cb3: $1e $0a
    ld e, $1a                                     ; $4cb5: $1e $1a
    ld e, $14                                     ; $4cb7: $1e $14
    inc e                                         ; $4cb9: $1c
    inc c                                         ; $4cba: $0c
    inc bc                                        ; $4cbb: $03
    inc e                                         ; $4cbc: $1c
    and h                                         ; $4cbd: $a4
    ld a, [bc]                                    ; $4cbe: $0a
    ld e, $1a                                     ; $4cbf: $1e $1a
    ld e, $02                                     ; $4cc1: $1e $02
    ld e, $53                                     ; $4cc3: $1e $53
    rst $38                                       ; $4cc5: $ff
    ld l, d                                       ; $4cc6: $6a
    ld a, [hl]                                    ; $4cc7: $7e
    ld b, a                                       ; $4cc8: $47

jr_0e3_4cc9:
    ld a, a                                       ; $4cc9: $7f
    ld c, d                                       ; $4cca: $4a
    ld a, a                                       ; $4ccb: $7f
    ld d, b                                       ; $4ccc: $50
    ld a, a                                       ; $4ccd: $7f
    ld b, b                                       ; $4cce: $40
    ld a, a                                       ; $4ccf: $7f
    ld l, b                                       ; $4cd0: $68
    ld a, a                                       ; $4cd1: $7f
    ld l, b                                       ; $4cd2: $68
    ld a, a                                       ; $4cd3: $7f
    ld h, h                                       ; $4cd4: $64
    ld a, a                                       ; $4cd5: $7f
    ld [hl], b                                    ; $4cd6: $70
    ld a, a                                       ; $4cd7: $7f
    ld [hl], b                                    ; $4cd8: $70
    ld a, a                                       ; $4cd9: $7f
    ret nc                                        ; $4cda: $d0

    rst $38                                       ; $4cdb: $ff
    ret nc                                        ; $4cdc: $d0

    rst $38                                       ; $4cdd: $ff
    add b                                         ; $4cde: $80
    rst $38                                       ; $4cdf: $ff
    ld hl, sp-$01                                 ; $4ce0: $f8 $ff
    ld [bc], a                                    ; $4ce2: $02
    rlca                                          ; $4ce3: $07
    inc b                                         ; $4ce4: $04
    nop                                           ; $4ce5: $00
    sbc d                                         ; $4ce6: $9a
    ld h, e                                       ; $4ce7: $63
    ld a, a                                       ; $4ce8: $7f
    ld b, e                                       ; $4ce9: $43
    ld a, a                                       ; $4cea: $7f
    ld bc, $017f                                  ; $4ceb: $01 $7f $01
    ld a, a                                       ; $4cee: $7f
    ld bc, $017f                                  ; $4cef: $01 $7f $01
    ld a, a                                       ; $4cf2: $7f
    ld bc, $017f                                  ; $4cf3: $01 $7f $01
    ld a, a                                       ; $4cf6: $7f
    ld sp, $457f                                  ; $4cf7: $31 $7f $45
    ld a, a                                       ; $4cfa: $7f
    ld bc, $017f                                  ; $4cfb: $01 $7f $01
    ld a, a                                       ; $4cfe: $7f
    dec sp                                        ; $4cff: $3b
    ld a, a                                       ; $4d00: $7f
    ld [bc], a                                    ; $4d01: $02
    ld a, [hl]                                    ; $4d02: $7e
    ld [bc], a                                    ; $4d03: $02
    nop                                           ; $4d04: $00
    rst $38                                       ; $4d05: $ff
    dec c                                         ; $4d06: $0d
    inc b                                         ; $4d07: $04
    ld sp, hl                                     ; $4d08: $f9
    ld [$01f2], sp                                ; $4d09: $08 $f2 $01
    ld [c], a                                     ; $4d0c: $e2
    ei                                            ; $4d0d: $fb
    db $e3                                        ; $4d0e: $e3
    nop                                           ; $4d0f: $00
    ld a, [c]                                     ; $4d10: $f2
    ld sp, hl                                     ; $4d11: $f9
    ld a, [c]                                     ; $4d12: $f2
    ld bc, $0f02                                  ; $4d13: $01 $02 $0f
    sub c                                         ; $4d16: $91
    db $10                                        ; $4d17: $10
    rra                                           ; $4d18: $1f
    jr nz, jr_0e3_4d5a                            ; $4d19: $20 $3f

    ld d, b                                       ; $4d1b: $50
    ld a, a                                       ; $4d1c: $7f
    ld h, b                                       ; $4d1d: $60
    ld a, a                                       ; $4d1e: $7f
    ld d, b                                       ; $4d1f: $50
    ld a, a                                       ; $4d20: $7f
    ld l, d                                       ; $4d21: $6a
    ld a, a                                       ; $4d22: $7f
    ret nc                                        ; $4d23: $d0

    rst $38                                       ; $4d24: $ff
    and b                                         ; $4d25: $a0
    rst $38                                       ; $4d26: $ff
    ld hl, sp+$03                                 ; $4d27: $f8 $03
    rst $38                                       ; $4d29: $ff
    adc d                                         ; $4d2a: $8a
    ld h, [hl]                                    ; $4d2b: $66
    ld a, a                                       ; $4d2c: $7f
    ld e, [hl]                                    ; $4d2d: $5e
    ld a, a                                       ; $4d2e: $7f
    ld [c], a                                     ; $4d2f: $e2
    rst $38                                       ; $4d30: $ff
    sub b                                         ; $4d31: $90
    rst $38                                       ; $4d32: $ff
    add e                                         ; $4d33: $83
    rst $38                                       ; $4d34: $ff
    ld [bc], a                                    ; $4d35: $02
    db $10                                        ; $4d36: $10
    sub e                                         ; $4d37: $93
    ld [$0818], sp                                ; $4d38: $08 $18 $08
    jr jr_0e3_4d41                                ; $4d3b: $18 $04

    inc e                                         ; $4d3d: $1c
    inc b                                         ; $4d3e: $04
    inc e                                         ; $4d3f: $1c
    inc b                                         ; $4d40: $04

jr_0e3_4d41:
    inc e                                         ; $4d41: $1c
    ld [bc], a                                    ; $4d42: $02
    ld e, $0a                                     ; $4d43: $1e $0a
    ld e, $1a                                     ; $4d45: $1e $1a
    ld e, $12                                     ; $4d47: $1e $12
    ld e, $0c                                     ; $4d49: $1e $0c
    inc bc                                        ; $4d4b: $03
    inc e                                         ; $4d4c: $1c
    and [hl]                                      ; $4d4d: $a6
    ld a, [bc]                                    ; $4d4e: $0a
    ld e, $1a                                     ; $4d4f: $1e $1a
    ld e, $12                                     ; $4d51: $1e $12
    ld e, $01                                     ; $4d53: $1e $01
    rst $38                                       ; $4d55: $ff
    ld h, b                                       ; $4d56: $60
    ld a, [hl]                                    ; $4d57: $7e
    ld h, l                                       ; $4d58: $65
    ld a, a                                       ; $4d59: $7f

jr_0e3_4d5a:
    ld h, d                                       ; $4d5a: $62
    ld a, a                                       ; $4d5b: $7f
    ld b, b                                       ; $4d5c: $40
    ld a, a                                       ; $4d5d: $7f
    ld b, b                                       ; $4d5e: $40
    ld a, a                                       ; $4d5f: $7f
    ld b, b                                       ; $4d60: $40
    ld a, a                                       ; $4d61: $7f
    ld b, b                                       ; $4d62: $40
    ld a, a                                       ; $4d63: $7f
    ld l, b                                       ; $4d64: $68
    ld a, a                                       ; $4d65: $7f
    ld h, b                                       ; $4d66: $60
    ld a, a                                       ; $4d67: $7f
    ld l, b                                       ; $4d68: $68
    ld a, a                                       ; $4d69: $7f
    ld h, b                                       ; $4d6a: $60
    ld a, a                                       ; $4d6b: $7f
    ld h, h                                       ; $4d6c: $64
    ld a, a                                       ; $4d6d: $7f
    ret nc                                        ; $4d6e: $d0

    rst $38                                       ; $4d6f: $ff
    ret nz                                        ; $4d70: $c0

    rst $38                                       ; $4d71: $ff
    ld hl, sp-$01                                 ; $4d72: $f8 $ff
    ld [bc], a                                    ; $4d74: $02
    rra                                           ; $4d75: $1f
    ld [bc], a                                    ; $4d76: $02
    nop                                           ; $4d77: $00
    sbc h                                         ; $4d78: $9c
    ld d, d                                       ; $4d79: $52
    cp $82                                        ; $4d7a: $fe $82
    cp $0a                                        ; $4d7c: $fe $0a
    cp $02                                        ; $4d7e: $fe $02
    cp $0a                                        ; $4d80: $fe $0a
    cp $02                                        ; $4d82: $fe $02
    cp $02                                        ; $4d84: $fe $02
    cp $02                                        ; $4d86: $fe $02
    cp $02                                        ; $4d88: $fe $02
    cp $12                                        ; $4d8a: $fe $12
    cp $43                                        ; $4d8c: $fe $43
    rst $38                                       ; $4d8e: $ff
    inc bc                                        ; $4d8f: $03
    rst $38                                       ; $4d90: $ff
    ld bc, $06ff                                  ; $4d91: $01 $ff $06
    cp $02                                        ; $4d94: $fe $02
    ld hl, sp-$01                                 ; $4d96: $f8 $ff
    dec c                                         ; $4d98: $0d
    inc b                                         ; $4d99: $04
    ld sp, hl                                     ; $4d9a: $f9
    ld [$01f2], sp                                ; $4d9b: $08 $f2 $01
    ld [c], a                                     ; $4d9e: $e2
    ld a, [$ffe2]                                 ; $4d9f: $fa $e2 $ff
    ld a, [c]                                     ; $4da2: $f2
    ld a, [$01f2]                                 ; $4da3: $fa $f2 $01
    ld [bc], a                                    ; $4da6: $02
    rlca                                          ; $4da7: $07
    sub c                                         ; $4da8: $91
    ld [$100f], sp                                ; $4da9: $08 $0f $10
    rra                                           ; $4dac: $1f
    jr z, @+$41                                   ; $4dad: $28 $3f

    jr nc, jr_0e3_4df0                            ; $4daf: $30 $3f

    jr z, jr_0e3_4df2                             ; $4db1: $28 $3f

    dec [hl]                                      ; $4db3: $35
    ccf                                           ; $4db4: $3f
    ld l, b                                       ; $4db5: $68
    ld a, a                                       ; $4db6: $7f
    ld d, b                                       ; $4db7: $50
    ld a, a                                       ; $4db8: $7f
    ld a, h                                       ; $4db9: $7c
    inc bc                                        ; $4dba: $03
    ld a, a                                       ; $4dbb: $7f
    adc d                                         ; $4dbc: $8a
    inc sp                                        ; $4dbd: $33
    ccf                                           ; $4dbe: $3f
    cpl                                           ; $4dbf: $2f
    ccf                                           ; $4dc0: $3f
    ld d, c                                       ; $4dc1: $51
    ld a, a                                       ; $4dc2: $7f
    ld b, b                                       ; $4dc3: $40
    ld a, a                                       ; $4dc4: $7f
    rst $10                                       ; $4dc5: $d7
    rst $38                                       ; $4dc6: $ff
    ld [bc], a                                    ; $4dc7: $02
    db $10                                        ; $4dc8: $10
    cp h                                          ; $4dc9: $bc
    ld [$0418], sp                                ; $4dca: $08 $18 $04
    inc e                                         ; $4dcd: $1c
    inc b                                         ; $4dce: $04

Call_0e3_4dcf:
    inc e                                         ; $4dcf: $1c
    ld [bc], a                                    ; $4dd0: $02
    ld e, $02                                     ; $4dd1: $1e $02
    ld e, $02                                     ; $4dd3: $1e $02
    ld e, $01                                     ; $4dd5: $1e $01
    rra                                           ; $4dd7: $1f
    dec b                                         ; $4dd8: $05
    rra                                           ; $4dd9: $1f
    dec c                                         ; $4dda: $0d
    rra                                           ; $4ddb: $1f
    add hl, de                                    ; $4ddc: $19
    rra                                           ; $4ddd: $1f
    ld b, $1e                                     ; $4dde: $06 $1e
    ld c, $1e                                     ; $4de0: $0e $1e
    dec b                                         ; $4de2: $05
    rra                                           ; $4de3: $1f
    add hl, de                                    ; $4de4: $19
    rra                                           ; $4de5: $1f
    ld de, $c01f                                  ; $4de6: $11 $1f $c0
    rst $38                                       ; $4de9: $ff
    push bc                                       ; $4dea: $c5
    rst $38                                       ; $4deb: $ff
    jp nz, $c1ff                                  ; $4dec: $c2 $ff $c1

    rst $38                                       ; $4def: $ff

jr_0e3_4df0:
    ret nz                                        ; $4df0: $c0

    rst $38                                       ; $4df1: $ff

jr_0e3_4df2:
    ret nz                                        ; $4df2: $c0

    rst $38                                       ; $4df3: $ff
    add b                                         ; $4df4: $80
    rst $38                                       ; $4df5: $ff
    add b                                         ; $4df6: $80
    rst $38                                       ; $4df7: $ff
    add b                                         ; $4df8: $80
    rst $38                                       ; $4df9: $ff
    add b                                         ; $4dfa: $80
    rst $38                                       ; $4dfb: $ff
    add b                                         ; $4dfc: $80
    rst $38                                       ; $4dfd: $ff
    sbc h                                         ; $4dfe: $9c
    rst $38                                       ; $4dff: $ff
    add d                                         ; $4e00: $82
    rst $38                                       ; $4e01: $ff
    add b                                         ; $4e02: $80
    rst $38                                       ; $4e03: $ff
    cp [hl]                                       ; $4e04: $be
    rst $38                                       ; $4e05: $ff
    ld [bc], a                                    ; $4e06: $02
    ld a, a                                       ; $4e07: $7f
    sbc [hl]                                      ; $4e08: $9e
    inc d                                         ; $4e09: $14
    ld a, h                                       ; $4e0a: $7c
    ld [hl+], a                                   ; $4e0b: $22
    ld a, [hl]                                    ; $4e0c: $7e
    ld d, d                                       ; $4e0d: $52
    ld a, [hl]                                    ; $4e0e: $7e
    ld [hl+], a                                   ; $4e0f: $22
    ld a, [hl]                                    ; $4e10: $7e
    ld [de], a                                    ; $4e11: $12
    ld a, [hl]                                    ; $4e12: $7e
    ld h, $7e                                     ; $4e13: $26 $7e
    ld b, $7e                                     ; $4e15: $06 $7e
    ld h, $7e                                     ; $4e17: $26 $7e
    ld b, $7e                                     ; $4e19: $06 $7e
    ld a, [bc]                                    ; $4e1b: $0a
    ld a, [hl]                                    ; $4e1c: $7e
    dec bc                                        ; $4e1d: $0b
    ld a, a                                       ; $4e1e: $7f
    dec bc                                        ; $4e1f: $0b
    ld a, a                                       ; $4e20: $7f
    ld bc, $017f                                  ; $4e21: $01 $7f $01
    ld a, a                                       ; $4e24: $7f
    ccf                                           ; $4e25: $3f
    ld a, a                                       ; $4e26: $7f
    ld [bc], a                                    ; $4e27: $02
    ld b, b                                       ; $4e28: $40
    rst $38                                       ; $4e29: $ff
    dec c                                         ; $4e2a: $0d
    inc b                                         ; $4e2b: $04
    ld sp, hl                                     ; $4e2c: $f9
    ld [$01f2], sp                                ; $4e2d: $08 $f2 $01
    db $e3                                        ; $4e30: $e3
    ei                                            ; $4e31: $fb
    db $e4                                        ; $4e32: $e4
    nop                                           ; $4e33: $00
    di                                            ; $4e34: $f3
    ld a, [$01f3]                                 ; $4e35: $fa $f3 $01
    ld [bc], a                                    ; $4e38: $02
    rrca                                          ; $4e39: $0f
    sub d                                         ; $4e3a: $92
    db $10                                        ; $4e3b: $10
    rra                                           ; $4e3c: $1f
    jr nz, jr_0e3_4e7e                            ; $4e3d: $20 $3f

    ld d, b                                       ; $4e3f: $50
    ld a, a                                       ; $4e40: $7f
    ld l, b                                       ; $4e41: $68
    ld a, a                                       ; $4e42: $7f
    ld d, l                                       ; $4e43: $55
    ld a, a                                       ; $4e44: $7f
    add sp, -$01                                  ; $4e45: $e8 $ff
    sub b                                         ; $4e47: $90
    rst $38                                       ; $4e48: $ff
    ret nz                                        ; $4e49: $c0

    rst $38                                       ; $4e4a: $ff
    ld sp, hl                                     ; $4e4b: $f9
    rst $38                                       ; $4e4c: $ff
    ld [bc], a                                    ; $4e4d: $02
    ld a, a                                       ; $4e4e: $7f
    adc d                                         ; $4e4f: $8a
    ld h, [hl]                                    ; $4e50: $66
    ld a, a                                       ; $4e51: $7f
    ld e, [hl]                                    ; $4e52: $5e
    ld a, a                                       ; $4e53: $7f
    and b                                         ; $4e54: $a0
    rst $38                                       ; $4e55: $ff
    cp a                                          ; $4e56: $bf
    rst $38                                       ; $4e57: $ff
    add b                                         ; $4e58: $80
    rst $38                                       ; $4e59: $ff
    ld [bc], a                                    ; $4e5a: $02
    db $10                                        ; $4e5b: $10
    sub e                                         ; $4e5c: $93
    ld [$0818], sp                                ; $4e5d: $08 $18 $08
    jr jr_0e3_4e66                                ; $4e60: $18 $04

    inc e                                         ; $4e62: $1c
    inc b                                         ; $4e63: $04
    inc e                                         ; $4e64: $1c
    ld [bc], a                                    ; $4e65: $02

jr_0e3_4e66:
    ld e, $02                                     ; $4e66: $1e $02
    ld e, $0a                                     ; $4e68: $1e $0a
    ld e, $1a                                     ; $4e6a: $1e $1a
    ld e, $14                                     ; $4e6c: $1e $14
    inc e                                         ; $4e6e: $1c
    inc c                                         ; $4e6f: $0c
    inc bc                                        ; $4e70: $03
    inc e                                         ; $4e71: $1c
    and h                                         ; $4e72: $a4
    ld c, $1e                                     ; $4e73: $0e $1e
    ld [de], a                                    ; $4e75: $12
    ld e, $02                                     ; $4e76: $1e $02
    ld e, $ab                                     ; $4e78: $1e $ab
    rst $38                                       ; $4e7a: $ff
    ret z                                         ; $4e7b: $c8

    db $fc                                        ; $4e7c: $fc
    rst $00                                       ; $4e7d: $c7

jr_0e3_4e7e:
    rst $38                                       ; $4e7e: $ff
    jp nz, $80ff                                  ; $4e7f: $c2 $ff $80

    rst $38                                       ; $4e82: $ff
    add b                                         ; $4e83: $80
    rst $38                                       ; $4e84: $ff
    add b                                         ; $4e85: $80
    rst $38                                       ; $4e86: $ff
    add b                                         ; $4e87: $80
    rst $38                                       ; $4e88: $ff
    add b                                         ; $4e89: $80
    rst $38                                       ; $4e8a: $ff
    add b                                         ; $4e8b: $80
    rst $38                                       ; $4e8c: $ff
    adc h                                         ; $4e8d: $8c
    rst $38                                       ; $4e8e: $ff
    and d                                         ; $4e8f: $a2
    rst $38                                       ; $4e90: $ff
    add b                                         ; $4e91: $80
    rst $38                                       ; $4e92: $ff
    add b                                         ; $4e93: $80
    rst $38                                       ; $4e94: $ff
    call c, Call_000_02ff                         ; $4e95: $dc $ff $02
    ld a, a                                       ; $4e98: $7f
    inc b                                         ; $4e99: $04
    nop                                           ; $4e9a: $00
    sbc d                                         ; $4e9b: $9a
    ld h, d                                       ; $4e9c: $62
    ld a, [hl]                                    ; $4e9d: $7e
    ld d, d                                       ; $4e9e: $52
    ld a, [hl]                                    ; $4e9f: $7e
    ld a, [bc]                                    ; $4ea0: $0a
    ld a, [hl]                                    ; $4ea1: $7e
    ld [bc], a                                    ; $4ea2: $02
    ld a, [hl]                                    ; $4ea3: $7e
    ld d, $7e                                     ; $4ea4: $16 $7e
    ld d, $7e                                     ; $4ea6: $16 $7e
    ld h, $7e                                     ; $4ea8: $26 $7e
    ld c, $7e                                     ; $4eaa: $0e $7e
    ld c, $7e                                     ; $4eac: $0e $7e
    dec bc                                        ; $4eae: $0b
    ld a, a                                       ; $4eaf: $7f
    dec bc                                        ; $4eb0: $0b
    ld a, a                                       ; $4eb1: $7f
    ld bc, $1f7f                                  ; $4eb2: $01 $7f $1f
    ld a, a                                       ; $4eb5: $7f
    ld [bc], a                                    ; $4eb6: $02
    ld h, b                                       ; $4eb7: $60
    ld [bc], a                                    ; $4eb8: $02
    nop                                           ; $4eb9: $00
    rst $38                                       ; $4eba: $ff
    dec c                                         ; $4ebb: $0d
    inc b                                         ; $4ebc: $04
    ld sp, hl                                     ; $4ebd: $f9
    ld [$01f2], sp                                ; $4ebe: $08 $f2 $01
    ld [c], a                                     ; $4ec1: $e2
    ei                                            ; $4ec2: $fb
    db $e3                                        ; $4ec3: $e3
    nop                                           ; $4ec4: $00
    ld a, [c]                                     ; $4ec5: $f2
    ld sp, hl                                     ; $4ec6: $f9
    ld a, [c]                                     ; $4ec7: $f2
    ld bc, $0f02                                  ; $4ec8: $01 $02 $0f
    sub c                                         ; $4ecb: $91
    db $10                                        ; $4ecc: $10
    rra                                           ; $4ecd: $1f
    jr nz, jr_0e3_4f0f                            ; $4ece: $20 $3f

    ld d, b                                       ; $4ed0: $50
    ld a, a                                       ; $4ed1: $7f
    ld h, b                                       ; $4ed2: $60
    ld a, a                                       ; $4ed3: $7f
    ld d, b                                       ; $4ed4: $50
    ld a, a                                       ; $4ed5: $7f
    ld l, d                                       ; $4ed6: $6a
    ld a, a                                       ; $4ed7: $7f
    ret nc                                        ; $4ed8: $d0

    rst $38                                       ; $4ed9: $ff
    and b                                         ; $4eda: $a0
    rst $38                                       ; $4edb: $ff
    ld hl, sp+$03                                 ; $4edc: $f8 $03
    rst $38                                       ; $4ede: $ff
    adc d                                         ; $4edf: $8a
    ld h, [hl]                                    ; $4ee0: $66
    ld a, a                                       ; $4ee1: $7f
    ld e, [hl]                                    ; $4ee2: $5e
    ld a, a                                       ; $4ee3: $7f
    and d                                         ; $4ee4: $a2
    rst $38                                       ; $4ee5: $ff
    or b                                          ; $4ee6: $b0
    rst $38                                       ; $4ee7: $ff
    sbc h                                         ; $4ee8: $9c
    rst $38                                       ; $4ee9: $ff
    ld [bc], a                                    ; $4eea: $02
    db $10                                        ; $4eeb: $10
    sub e                                         ; $4eec: $93
    ld [$0818], sp                                ; $4eed: $08 $18 $08
    jr jr_0e3_4ef6                                ; $4ef0: $18 $04

    inc e                                         ; $4ef2: $1c
    inc b                                         ; $4ef3: $04
    inc e                                         ; $4ef4: $1c
    inc b                                         ; $4ef5: $04

jr_0e3_4ef6:
    inc e                                         ; $4ef6: $1c
    ld [bc], a                                    ; $4ef7: $02
    ld e, $0a                                     ; $4ef8: $1e $0a
    ld e, $1a                                     ; $4efa: $1e $1a
    ld e, $12                                     ; $4efc: $1e $12
    ld e, $0c                                     ; $4efe: $1e $0c
    inc bc                                        ; $4f00: $03
    inc e                                         ; $4f01: $1c
    and [hl]                                      ; $4f02: $a6
    ld a, [bc]                                    ; $4f03: $0a
    ld e, $12                                     ; $4f04: $1e $12
    ld e, $02                                     ; $4f06: $1e $02
    ld e, $03                                     ; $4f08: $1e $03
    rst $38                                       ; $4f0a: $ff
    ld b, b                                       ; $4f0b: $40
    ld a, [hl]                                    ; $4f0c: $7e
    ld c, d                                       ; $4f0d: $4a
    ld a, a                                       ; $4f0e: $7f

jr_0e3_4f0f:
    ld b, c                                       ; $4f0f: $41
    ld a, a                                       ; $4f10: $7f
    ld d, b                                       ; $4f11: $50
    ld a, a                                       ; $4f12: $7f
    ld b, b                                       ; $4f13: $40
    ld a, a                                       ; $4f14: $7f
    ld d, b                                       ; $4f15: $50
    ld a, a                                       ; $4f16: $7f
    ld b, b                                       ; $4f17: $40
    ld a, a                                       ; $4f18: $7f
    ld b, b                                       ; $4f19: $40
    ld a, a                                       ; $4f1a: $7f
    ld b, b                                       ; $4f1b: $40
    ld a, a                                       ; $4f1c: $7f
    ld b, b                                       ; $4f1d: $40
    ld a, a                                       ; $4f1e: $7f
    ld c, b                                       ; $4f1f: $48
    ld a, a                                       ; $4f20: $7f
    jp nz, $c0ff                                  ; $4f21: $c2 $ff $c0

    rst $38                                       ; $4f24: $ff
    add b                                         ; $4f25: $80
    rst $38                                       ; $4f26: $ff
    ld h, b                                       ; $4f27: $60
    ld a, a                                       ; $4f28: $7f
    ld [bc], a                                    ; $4f29: $02
    rra                                           ; $4f2a: $1f
    ld [bc], a                                    ; $4f2b: $02
    nop                                           ; $4f2c: $00
    sbc h                                         ; $4f2d: $9c
    and [hl]                                      ; $4f2e: $a6
    cp $46                                        ; $4f2f: $fe $46
    cp $02                                        ; $4f31: $fe $02
    cp $02                                        ; $4f33: $fe $02
    cp $02                                        ; $4f35: $fe $02
    cp $02                                        ; $4f37: $fe $02
    cp $16                                        ; $4f39: $fe $16
    cp $06                                        ; $4f3b: $fe $06
    cp $16                                        ; $4f3d: $fe $16
    cp $06                                        ; $4f3f: $fe $06
    cp $26                                        ; $4f41: $fe $26
    cp $0b                                        ; $4f43: $fe $0b
    rst $38                                       ; $4f45: $ff
    inc bc                                        ; $4f46: $03
    rst $38                                       ; $4f47: $ff
    rra                                           ; $4f48: $1f
    rst $38                                       ; $4f49: $ff
    ld [bc], a                                    ; $4f4a: $02
    ld hl, sp-$01                                 ; $4f4b: $f8 $ff
    dec c                                         ; $4f4d: $0d
    inc b                                         ; $4f4e: $04
    ld sp, hl                                     ; $4f4f: $f9
    ld [$01f2], sp                                ; $4f50: $08 $f2 $01
    ld [c], a                                     ; $4f53: $e2
    ld a, [$00e2]                                 ; $4f54: $fa $e2 $00
    ld a, [c]                                     ; $4f57: $f2
    ld sp, hl                                     ; $4f58: $f9
    ld a, [c]                                     ; $4f59: $f2
    ld bc, $0702                                  ; $4f5a: $01 $02 $07
    adc h                                         ; $4f5d: $8c
    ld a, [bc]                                    ; $4f5e: $0a
    rrca                                          ; $4f5f: $0f
    inc e                                         ; $4f60: $1c
    rra                                           ; $4f61: $1f
    inc e                                         ; $4f62: $1c
    rra                                           ; $4f63: $1f
    jr c, jr_0e3_4fa5                             ; $4f64: $38 $3f

    dec a                                         ; $4f66: $3d
    ccf                                           ; $4f67: $3f
    cpl                                           ; $4f68: $2f
    ccf                                           ; $4f69: $3f
    ld [bc], a                                    ; $4f6a: $02
    ld a, a                                       ; $4f6b: $7f
    sub b                                         ; $4f6c: $90
    ld e, a                                       ; $4f6d: $5f
    ld [hl], d                                    ; $4f6e: $72
    ld e, a                                       ; $4f6f: $5f
    ld a, e                                       ; $4f70: $7b
    ld l, a                                       ; $4f71: $6f
    ld a, h                                       ; $4f72: $7c
    dec [hl]                                      ; $4f73: $35
    ccf                                           ; $4f74: $3f
    ld l, a                                       ; $4f75: $6f
    ld a, a                                       ; $4f76: $7f
    ld c, a                                       ; $4f77: $4f
    ld a, a                                       ; $4f78: $7f
    db $db                                        ; $4f79: $db
    rst $38                                       ; $4f7a: $ff
    sub a                                         ; $4f7b: $97
    rst $38                                       ; $4f7c: $ff
    ld [bc], a                                    ; $4f7d: $02
    jr nz, @-$42                                  ; $4f7e: $20 $bc

    db $10                                        ; $4f80: $10
    jr nc, jr_0e3_4f8b                            ; $4f81: $30 $08

    jr c, jr_0e3_4f89                             ; $4f83: $38 $04

    inc a                                         ; $4f85: $3c
    inc [hl]                                      ; $4f86: $34
    inc a                                         ; $4f87: $3c
    inc [hl]                                      ; $4f88: $34

jr_0e3_4f89:
    inc a                                         ; $4f89: $3c
    inc [hl]                                      ; $4f8a: $34

jr_0e3_4f8b:
    inc a                                         ; $4f8b: $3c
    ld a, [hl-]                                   ; $4f8c: $3a
    ld e, $3a                                     ; $4f8d: $1e $3a
    ld c, $3a                                     ; $4f8f: $0e $3a
    ld e, $36                                     ; $4f91: $1e $36
    ld a, $0c                                     ; $4f93: $3e $0c
    inc a                                         ; $4f95: $3c
    ld [hl], $3e                                  ; $4f96: $36 $3e
    ld [hl-], a                                   ; $4f98: $32
    ld a, $1b                                     ; $4f99: $3e $1b
    ccf                                           ; $4f9b: $3f
    add hl, hl                                    ; $4f9c: $29
    ccf                                           ; $4f9d: $3f
    ld d, d                                       ; $4f9e: $52
    ld a, a                                       ; $4f9f: $7f
    ld b, e                                       ; $4fa0: $43
    ld a, a                                       ; $4fa1: $7f
    ld b, [hl]                                    ; $4fa2: $46
    ld a, a                                       ; $4fa3: $7f
    ld d, l                                       ; $4fa4: $55

jr_0e3_4fa5:
    ld a, a                                       ; $4fa5: $7f
    ld b, a                                       ; $4fa6: $47
    ld a, a                                       ; $4fa7: $7f
    ld d, a                                       ; $4fa8: $57
    ld a, a                                       ; $4fa9: $7f
    ld d, a                                       ; $4faa: $57
    ld a, a                                       ; $4fab: $7f
    ld d, l                                       ; $4fac: $55
    ld a, a                                       ; $4fad: $7f
    ld l, [hl]                                    ; $4fae: $6e
    ld a, a                                       ; $4faf: $7f
    ld l, l                                       ; $4fb0: $6d
    ld a, a                                       ; $4fb1: $7f
    ld l, [hl]                                    ; $4fb2: $6e
    ld a, a                                       ; $4fb3: $7f
    ld l, l                                       ; $4fb4: $6d
    ld a, a                                       ; $4fb5: $7f
    xor $ff                                       ; $4fb6: $ee $ff
    xor l                                         ; $4fb8: $ad
    rst $38                                       ; $4fb9: $ff
    ld c, a                                       ; $4fba: $4f
    ld a, a                                       ; $4fbb: $7f
    ld [bc], a                                    ; $4fbc: $02
    scf                                           ; $4fbd: $37
    sbc [hl]                                      ; $4fbe: $9e
    jp z, $42fe                                   ; $4fbf: $ca $fe $42

    cp $e2                                        ; $4fc2: $fe $e2
    cp $62                                        ; $4fc4: $fe $62
    cp $e2                                        ; $4fc6: $fe $e2
    cp $ea                                        ; $4fc8: $fe $ea
    cp $ea                                        ; $4fca: $fe $ea
    cp $ea                                        ; $4fcc: $fe $ea
    cp $f6                                        ; $4fce: $fe $f6
    cp $76                                        ; $4fd0: $fe $76
    cp $f6                                        ; $4fd2: $fe $f6
    cp $76                                        ; $4fd4: $fe $76
    cp $b7                                        ; $4fd6: $fe $b7
    rst $38                                       ; $4fd8: $ff
    ld [hl], l                                    ; $4fd9: $75
    rst $38                                       ; $4fda: $ff
    or d                                          ; $4fdb: $b2
    cp $02                                        ; $4fdc: $fe $02
    call c, Call_000_25ff                         ; $4fde: $dc $ff $25
    db $10                                        ; $4fe1: $10
    ld sp, hl                                     ; $4fe2: $f9
    ld [$01f2], sp                                ; $4fe3: $08 $f2 $01
    ldh [$79], a                                  ; $4fe6: $e0 $79
    ldh a, [$79]                                  ; $4fe8: $f0 $79
    ldh [$81], a                                  ; $4fea: $e0 $81
    ldh a, [$81]                                  ; $4fec: $f0 $81
    ldh [$91], a                                  ; $4fee: $e0 $91
    ldh a, [$91]                                  ; $4ff0: $f0 $91
    ldh [$99], a                                  ; $4ff2: $e0 $99
    ldh a, [$99]                                  ; $4ff4: $f0 $99
    ldh [$a9], a                                  ; $4ff6: $e0 $a9
    ldh a, [$a9]                                  ; $4ff8: $f0 $a9
    ldh [$b1], a                                  ; $4ffa: $e0 $b1
    ldh a, [$b1]                                  ; $4ffc: $f0 $b1
    ld [c], a                                     ; $4ffe: $e2
    ld sp, hl                                     ; $4fff: $f9
    ld a, [c]                                     ; $5000: $f2
    ld sp, hl                                     ; $5001: $f9
    ld [c], a                                     ; $5002: $e2
    ld bc, $01f2                                  ; $5003: $01 $f2 $01
    ld [bc], a                                    ; $5006: $02
    inc bc                                        ; $5007: $03
    adc d                                         ; $5008: $8a
    dec b                                         ; $5009: $05
    rlca                                          ; $500a: $07
    ld c, $0f                                     ; $500b: $0e $0f
    ld c, $0f                                     ; $500d: $0e $0f
    inc e                                         ; $500f: $1c
    rra                                           ; $5010: $1f
    rla                                           ; $5011: $17
    rra                                           ; $5012: $1f
    ld [bc], a                                    ; $5013: $02
    ccf                                           ; $5014: $3f
    add a                                         ; $5015: $87
    cpl                                           ; $5016: $2f
    ccf                                           ; $5017: $3f
    cpl                                           ; $5018: $2f
    add hl, sp                                    ; $5019: $39
    cpl                                           ; $501a: $2f
    dec a                                         ; $501b: $3d
    rla                                           ; $501c: $17
    ld [bc], a                                    ; $501d: $02
    ld e, $a5                                     ; $501e: $1e $a5
    rra                                           ; $5020: $1f
    scf                                           ; $5021: $37
    ccf                                           ; $5022: $3f
    daa                                           ; $5023: $27
    ccf                                           ; $5024: $3f
    ld c, l                                       ; $5025: $4d
    ld a, a                                       ; $5026: $7f
    ld c, e                                       ; $5027: $4b
    ld a, a                                       ; $5028: $7f
    ld d, d                                       ; $5029: $52
    ld a, a                                       ; $502a: $7f
    ld b, e                                       ; $502b: $43
    ld a, a                                       ; $502c: $7f
    ld l, d                                       ; $502d: $6a

jr_0e3_502e:
    ld a, a                                       ; $502e: $7f
    ld c, e                                       ; $502f: $4b
    ld a, a                                       ; $5030: $7f
    ld b, a                                       ; $5031: $47
    ld a, a                                       ; $5032: $7f
    ld h, a                                       ; $5033: $67
    ld a, a                                       ; $5034: $7f
    ld d, a                                       ; $5035: $57
    ld a, e                                       ; $5036: $7b
    ld [hl], a                                    ; $5037: $77
    ld a, a                                       ; $5038: $7f
    ld [hl], l                                    ; $5039: $75
    ld a, a                                       ; $503a: $7f
    ld l, [hl]                                    ; $503b: $6e
    ld a, a                                       ; $503c: $7f
    ld l, l                                       ; $503d: $6d
    ld a, a                                       ; $503e: $7f
    xor $ff                                       ; $503f: $ee $ff
    xor a                                         ; $5041: $af
    rst $38                                       ; $5042: $ff
    ld c, a                                       ; $5043: $4f
    ld a, a                                       ; $5044: $7f
    ld [bc], a                                    ; $5045: $02
    ld sp, $0002                                  ; $5046: $31 $02 $00
    ld [bc], a                                    ; $5049: $02
    ret nz                                        ; $504a: $c0

    cp d                                          ; $504b: $ba
    jr nz, jr_0e3_502e                            ; $504c: $20 $e0

    db $10                                        ; $504e: $10
    ldh a, [$28]                                  ; $504f: $f0 $28
    ld hl, sp+$68                                 ; $5051: $f8 $68
    ld hl, sp-$18                                 ; $5053: $f8 $e8
    ld hl, sp-$1c                                 ; $5055: $f8 $e4
    db $fc                                        ; $5057: $fc
    db $f4                                        ; $5058: $f4
    cp h                                          ; $5059: $bc
    db $f4                                        ; $505a: $f4
    inc e                                         ; $505b: $1c
    db $f4                                        ; $505c: $f4
    cp h                                          ; $505d: $bc
    add sp, $78                                   ; $505e: $e8 $78
    ret c                                         ; $5060: $d8

    ld hl, sp-$14                                 ; $5061: $f8 $ec
    db $fc                                        ; $5063: $fc
    and $fe                                       ; $5064: $e6 $fe
    or d                                          ; $5066: $b2
    cp $da                                        ; $5067: $fe $da
    cp $c2                                        ; $5069: $fe $c2
    cp $62                                        ; $506b: $fe $62
    cp $a2                                        ; $506d: $fe $a2
    cp $6a                                        ; $506f: $fe $6a
    cp $ea                                        ; $5071: $fe $ea
    cp $ea                                        ; $5073: $fe $ea
    cp $76                                        ; $5075: $fe $76
    cp $b6                                        ; $5077: $fe $b6
    cp $76                                        ; $5079: $fe $76
    cp $b6                                        ; $507b: $fe $b6
    cp $56                                        ; $507d: $fe $56
    cp $b6                                        ; $507f: $fe $b6
    cp $75                                        ; $5081: $fe $75
    rst $38                                       ; $5083: $ff
    ld a, [c]                                     ; $5084: $f2
    cp $02                                        ; $5085: $fe $02
    db $fc                                        ; $5087: $fc
    ld [bc], a                                    ; $5088: $02
    nop                                           ; $5089: $00
    ld [bc], a                                    ; $508a: $02
    ld bc, $0302                                  ; $508b: $01 $02 $03
    sub c                                         ; $508e: $91
    ld [bc], a                                    ; $508f: $02
    inc bc                                        ; $5090: $03
    inc b                                         ; $5091: $04
    rlca                                          ; $5092: $07
    dec b                                         ; $5093: $05
    rlca                                          ; $5094: $07
    ld b, $07                                     ; $5095: $06 $07
    dec c                                         ; $5097: $0d
    rrca                                          ; $5098: $0f
    db $10                                        ; $5099: $10
    rra                                           ; $509a: $1f
    db $10                                        ; $509b: $10
    rra                                           ; $509c: $1f
    jr @+$21                                      ; $509d: $18 $1f

    ld c, $03                                     ; $509f: $0e $03
    rrca                                          ; $50a1: $0f
    and h                                         ; $50a2: $a4
    inc c                                         ; $50a3: $0c
    rrca                                          ; $50a4: $0f
    dec de                                        ; $50a5: $1b
    rra                                           ; $50a6: $1f
    inc e                                         ; $50a7: $1c
    rra                                           ; $50a8: $1f
    inc e                                         ; $50a9: $1c
    rra                                           ; $50aa: $1f
    jr jr_0e3_50cc                                ; $50ab: $18 $1f

    inc e                                         ; $50ad: $1c
    rra                                           ; $50ae: $1f
    jr jr_0e3_50d0                                ; $50af: $18 $1f

    inc d                                         ; $50b1: $14
    rra                                           ; $50b2: $1f
    jr jr_0e3_50d4                                ; $50b3: $18 $1f

    db $10                                        ; $50b5: $10
    rra                                           ; $50b6: $1f
    jr nc, jr_0e3_50f8                            ; $50b7: $30 $3f

    jr nz, jr_0e3_50fa                            ; $50b9: $20 $3f

    jr nz, jr_0e3_50fc                            ; $50bb: $20 $3f

    ld hl, $423f                                  ; $50bd: $21 $3f $42

jr_0e3_50c0:
    ld a, a                                       ; $50c0: $7f
    ld d, l                                       ; $50c1: $55
    ld a, a                                       ; $50c2: $7f
    adc d                                         ; $50c3: $8a
    rst $38                                       ; $50c4: $ff
    ret nz                                        ; $50c5: $c0

    rst $38                                       ; $50c6: $ff
    ld [bc], a                                    ; $50c7: $02
    ld a, a                                       ; $50c8: $7f
    ld [bc], a                                    ; $50c9: $02
    nop                                           ; $50ca: $00
    ld [bc], a                                    ; $50cb: $02

jr_0e3_50cc:
    ret nz                                        ; $50cc: $c0

    sub h                                         ; $50cd: $94
    jr nc, jr_0e3_50c0                            ; $50ce: $30 $f0

jr_0e3_50d0:
    ld [$04f8], sp                                ; $50d0: $08 $f8 $04
    db $fc                                        ; $50d3: $fc

jr_0e3_50d4:
    ld e, d                                       ; $50d4: $5a
    cp $9e                                        ; $50d5: $fe $9e
    cp $18                                        ; $50d7: $fe $18
    ld hl, sp+$38                                 ; $50d9: $f8 $38
    ld hl, sp+$3c                                 ; $50db: $f8 $3c
    db $ec                                        ; $50dd: $ec
    ld a, b                                       ; $50de: $78
    add sp, $70                                   ; $50df: $e8 $70
    ret nc                                        ; $50e1: $d0

    ld [bc], a                                    ; $50e2: $02
    ldh [rSC], a                                  ; $50e3: $e0 $02
    ldh a, [$a2]                                  ; $50e5: $f0 $a2
    db $10                                        ; $50e7: $10
    ldh a, [rBCPS]                                ; $50e8: $f0 $68
    ld hl, sp+$58                                 ; $50ea: $f8 $58
    ld hl, sp+$50                                 ; $50ec: $f8 $50
    ldh a, [rNR10]                                ; $50ee: $f0 $10
    ldh a, [$50]                                  ; $50f0: $f0 $50
    ldh a, [$b0]                                  ; $50f2: $f0 $b0
    ldh a, [rNR10]                                ; $50f4: $f0 $10
    ldh a, [$38]                                  ; $50f6: $f0 $38

jr_0e3_50f8:
    ld hl, sp-$48                                 ; $50f8: $f8 $b8

jr_0e3_50fa:
    add sp, $30                                   ; $50fa: $e8 $30

jr_0e3_50fc:
    ldh a, [$b0]                                  ; $50fc: $f0 $b0
    ldh a, [$30]                                  ; $50fe: $f0 $30
    ldh a, [rSVBK]                                ; $5100: $f0 $70
    ldh a, [$50]                                  ; $5102: $f0 $50
    ldh a, [$78]                                  ; $5104: $f0 $78
    ld hl, sp+$78                                 ; $5106: $f8 $78
    ld hl, sp+$02                                 ; $5108: $f8 $02
    add b                                         ; $510a: $80
    ld [bc], a                                    ; $510b: $02
    nop                                           ; $510c: $00
    ld [bc], a                                    ; $510d: $02
    ld bc, $028f                                  ; $510e: $01 $8f $02
    inc bc                                        ; $5111: $03
    inc b                                         ; $5112: $04
    rlca                                          ; $5113: $07
    ld a, [bc]                                    ; $5114: $0a
    rrca                                          ; $5115: $0f
    dec c                                         ; $5116: $0d
    rrca                                          ; $5117: $0f
    ld a, [bc]                                    ; $5118: $0a
    rrca                                          ; $5119: $0f
    dec e                                         ; $511a: $1d
    rra                                           ; $511b: $1f
    ld [de], a                                    ; $511c: $12
    rra                                           ; $511d: $1f
    jr jr_0e3_5123                                ; $511e: $18 $03

    rra                                           ; $5120: $1f
    ld [bc], a                                    ; $5121: $02
    rrca                                          ; $5122: $0f

jr_0e3_5123:
    and [hl]                                      ; $5123: $a6
    inc c                                         ; $5124: $0c
    rrca                                          ; $5125: $0f
    dec bc                                        ; $5126: $0b
    rrca                                          ; $5127: $0f
    inc e                                         ; $5128: $1c
    rra                                           ; $5129: $1f
    inc de                                        ; $512a: $13
    rra                                           ; $512b: $1f
    db $10                                        ; $512c: $10
    rra                                           ; $512d: $1f
    dec [hl]                                      ; $512e: $35
    ccf                                           ; $512f: $3f
    inc hl                                        ; $5130: $23
    ccf                                           ; $5131: $3f
    dec h                                         ; $5132: $25
    ccf                                           ; $5133: $3f
    jr z, jr_0e3_5175                             ; $5134: $28 $3f

    jr nz, @+$41                                  ; $5136: $20 $3f

    inc [hl]                                      ; $5138: $34
    ccf                                           ; $5139: $3f
    inc [hl]                                      ; $513a: $34
    ccf                                           ; $513b: $3f
    ld [hl-], a                                   ; $513c: $32
    ccf                                           ; $513d: $3f
    jr c, @+$41                                   ; $513e: $38 $3f

    jr c, jr_0e3_5181                             ; $5140: $38 $3f

    ld l, b                                       ; $5142: $68
    ld a, a                                       ; $5143: $7f
    ld l, b                                       ; $5144: $68
    ld a, a                                       ; $5145: $7f
    ld b, b                                       ; $5146: $40
    ld a, a                                       ; $5147: $7f
    ld a, h                                       ; $5148: $7c
    ld a, a                                       ; $5149: $7f
    ld [bc], a                                    ; $514a: $02
    inc bc                                        ; $514b: $03
    ld [bc], a                                    ; $514c: $02
    nop                                           ; $514d: $00
    ld [bc], a                                    ; $514e: $02
    ldh [$ba], a                                  ; $514f: $e0 $ba
    db $10                                        ; $5151: $10
    ldh a, [$08]                                  ; $5152: $f0 $08
    ld hl, sp+$08                                 ; $5154: $f8 $08
    ld hl, sp+$04                                 ; $5156: $f8 $04
    db $fc                                        ; $5158: $fc
    and h                                         ; $5159: $a4
    db $fc                                        ; $515a: $fc
    ld [bc], a                                    ; $515b: $02
    cp $02                                        ; $515c: $fe $02
    cp $0a                                        ; $515e: $fe $0a
    cp $3a                                        ; $5160: $fe $3a
    cp $f4                                        ; $5162: $fe $f4
    db $fc                                        ; $5164: $fc
    call z, $dcfc                                 ; $5165: $cc $fc $dc
    db $fc                                        ; $5168: $fc
    ld a, [bc]                                    ; $5169: $0a
    cp $fa                                        ; $516a: $fe $fa
    cp $02                                        ; $516c: $fe $02
    cp $53                                        ; $516e: $fe $53
    rst $38                                       ; $5170: $ff
    db $e3                                        ; $5171: $e3
    rst $38                                       ; $5172: $ff
    ld b, e                                       ; $5173: $43
    rst $38                                       ; $5174: $ff

jr_0e3_5175:
    ld bc, $01ff                                  ; $5175: $01 $ff $01
    rst $38                                       ; $5178: $ff
    ld bc, $01ff                                  ; $5179: $01 $ff $01
    rst $38                                       ; $517c: $ff
    ld bc, $01ff                                  ; $517d: $01 $ff $01
    rst $38                                       ; $5180: $ff

jr_0e3_5181:
    ld sp, $45ff                                  ; $5181: $31 $ff $45
    rst $38                                       ; $5184: $ff
    ld bc, $01ff                                  ; $5185: $01 $ff $01
    rst $38                                       ; $5188: $ff
    dec sp                                        ; $5189: $3b
    rst $38                                       ; $518a: $ff
    ld [bc], a                                    ; $518b: $02
    cp $02                                        ; $518c: $fe $02
    nop                                           ; $518e: $00
    ld [bc], a                                    ; $518f: $02
    inc bc                                        ; $5190: $03
    adc h                                         ; $5191: $8c
    dec b                                         ; $5192: $05
    rlca                                          ; $5193: $07
    ld c, $0f                                     ; $5194: $0e $0f
    ld c, $0f                                     ; $5196: $0e $0f
    inc e                                         ; $5198: $1c
    rra                                           ; $5199: $1f
    ld e, $1f                                     ; $519a: $1e $1f
    rla                                           ; $519c: $17
    rra                                           ; $519d: $1f
    ld [bc], a                                    ; $519e: $02
    ccf                                           ; $519f: $3f
    xor [hl]                                      ; $51a0: $ae
    cpl                                           ; $51a1: $2f
    add hl, sp                                    ; $51a2: $39
    cpl                                           ; $51a3: $2f
    dec a                                         ; $51a4: $3d
    scf                                           ; $51a5: $37
    ld a, $1a                                     ; $51a6: $3e $1a
    rra                                           ; $51a8: $1f
    scf                                           ; $51a9: $37
    ccf                                           ; $51aa: $3f
    daa                                           ; $51ab: $27
    ccf                                           ; $51ac: $3f
    dec h                                         ; $51ad: $25
    ccf                                           ; $51ae: $3f
    ld c, e                                       ; $51af: $4b
    ld a, a                                       ; $51b0: $7f
    ld b, d                                       ; $51b1: $42
    ld a, a                                       ; $51b2: $7f
    ld b, e                                       ; $51b3: $43
    ld a, a                                       ; $51b4: $7f
    ld d, d                                       ; $51b5: $52

jr_0e3_51b6:
    ld a, a                                       ; $51b6: $7f
    ld h, e                                       ; $51b7: $63
    ld a, a                                       ; $51b8: $7f
    ld b, a                                       ; $51b9: $47
    ld a, a                                       ; $51ba: $7f
    ld c, a                                       ; $51bb: $4f
    ld a, a                                       ; $51bc: $7f
    ld l, [hl]                                    ; $51bd: $6e
    ld a, e                                       ; $51be: $7b
    ld l, a                                       ; $51bf: $6f
    ld [hl], a                                    ; $51c0: $77
    ld l, [hl]                                    ; $51c1: $6e
    ld a, a                                       ; $51c2: $7f
    ld l, l                                       ; $51c3: $6d
    ld a, a                                       ; $51c4: $7f
    ld l, [hl]                                    ; $51c5: $6e
    ld a, a                                       ; $51c6: $7f
    ld [hl], l                                    ; $51c7: $75
    ld a, a                                       ; $51c8: $7f
    and [hl]                                      ; $51c9: $a6
    rst $38                                       ; $51ca: $ff
    xor a                                         ; $51cb: $af
    rst $38                                       ; $51cc: $ff
    ld c, [hl]                                    ; $51cd: $4e
    ld a, a                                       ; $51ce: $7f
    ld [bc], a                                    ; $51cf: $02
    add hl, sp                                    ; $51d0: $39
    ld [bc], a                                    ; $51d1: $02
    ret nz                                        ; $51d2: $c0

    cp h                                          ; $51d3: $bc
    jr nz, jr_0e3_51b6                            ; $51d4: $20 $e0

    db $10                                        ; $51d6: $10
    ldh a, [$08]                                  ; $51d7: $f0 $08
    ld hl, sp+$68                                 ; $51d9: $f8 $68
    ld hl, sp-$18                                 ; $51db: $f8 $e8
    ld hl, sp-$18                                 ; $51dd: $f8 $e8
    ld hl, sp-$0c                                 ; $51df: $f8 $f4
    cp h                                          ; $51e1: $bc
    db $f4                                        ; $51e2: $f4
    inc e                                         ; $51e3: $1c
    db $f4                                        ; $51e4: $f4
    cp h                                          ; $51e5: $bc
    db $ec                                        ; $51e6: $ec
    ld a, h                                       ; $51e7: $7c
    sbc b                                         ; $51e8: $98
    ld hl, sp-$14                                 ; $51e9: $f8 $ec
    db $fc                                        ; $51eb: $fc
    db $e4                                        ; $51ec: $e4
    db $fc                                        ; $51ed: $fc
    or d                                          ; $51ee: $b2
    cp $ce                                        ; $51ef: $fe $ce
    cp $c2                                        ; $51f1: $fe $c2
    cp $62                                        ; $51f3: $fe $62
    cp $aa                                        ; $51f5: $fe $aa
    cp $6a                                        ; $51f7: $fe $6a
    cp $ea                                        ; $51f9: $fe $ea
    cp $e6                                        ; $51fb: $fe $e6
    cp $b6                                        ; $51fd: $fe $b6
    cp $76                                        ; $51ff: $fe $76
    cp $b6                                        ; $5201: $fe $b6
    cp $16                                        ; $5203: $fe $16
    cp $b6                                        ; $5205: $fe $b6
    cp $16                                        ; $5207: $fe $16
    cp $b6                                        ; $5209: $fe $b6
    cp $5a                                        ; $520b: $fe $5a
    cp $fa                                        ; $520d: $fe $fa
    cp $02                                        ; $520f: $fe $02
    db $f4                                        ; $5211: $f4
    rst $38                                       ; $5212: $ff
    daa                                           ; $5213: $27
    ld de, $08f9                                  ; $5214: $11 $f9 $08
    ld a, [c]                                     ; $5217: $f2
    ld bc, $7adf                                  ; $5218: $01 $df $7a
    rst $18                                       ; $521b: $df
    add b                                         ; $521c: $80
    rst $18                                       ; $521d: $df
    sub h                                         ; $521e: $94
    ldh [$98], a                                  ; $521f: $e0 $98
    rst $18                                       ; $5221: $df
    xor h                                         ; $5222: $ac
    ldh [$b1], a                                  ; $5223: $e0 $b1
    db $e3                                        ; $5225: $e3
    ei                                            ; $5226: $fb
    db $e4                                        ; $5227: $e4
    nop                                           ; $5228: $00
    rst $28                                       ; $5229: $ef
    ld a, c                                       ; $522a: $79
    rst $28                                       ; $522b: $ef
    add c                                         ; $522c: $81
    rst $28                                       ; $522d: $ef
    sub b                                         ; $522e: $90
    ldh a, [$96]                                  ; $522f: $f0 $96
    rst $28                                       ; $5231: $ef
    xor d                                         ; $5232: $aa
    ldh a, [$b2]                                  ; $5233: $f0 $b2
    pop af                                        ; $5235: $f1
    ld sp, hl                                     ; $5236: $f9
    db $f4                                        ; $5237: $f4
    ld bc, $f9ff                                  ; $5238: $01 $ff $f9
    ld [bc], a                                    ; $523b: $02
    rlca                                          ; $523c: $07
    adc h                                         ; $523d: $8c
    ld a, [bc]                                    ; $523e: $0a
    rrca                                          ; $523f: $0f
    inc e                                         ; $5240: $1c
    rra                                           ; $5241: $1f
    inc e                                         ; $5242: $1c
    rra                                           ; $5243: $1f
    jr c, jr_0e3_5285                             ; $5244: $38 $3f

    dec a                                         ; $5246: $3d
    ccf                                           ; $5247: $3f
    cpl                                           ; $5248: $2f
    ccf                                           ; $5249: $3f
    ld [bc], a                                    ; $524a: $02
    ld a, a                                       ; $524b: $7f
    sub b                                         ; $524c: $90
    ld e, a                                       ; $524d: $5f
    ld [hl], d                                    ; $524e: $72
    ld e, a                                       ; $524f: $5f
    ld a, e                                       ; $5250: $7b
    ld l, a                                       ; $5251: $6f
    ld a, h                                       ; $5252: $7c
    dec [hl]                                      ; $5253: $35
    ccf                                           ; $5254: $3f
    ld l, a                                       ; $5255: $6f
    ld a, a                                       ; $5256: $7f
    ld c, a                                       ; $5257: $4f
    ld a, a                                       ; $5258: $7f
    db $db                                        ; $5259: $db
    rst $38                                       ; $525a: $ff
    sub a                                         ; $525b: $97
    rst $38                                       ; $525c: $ff
    ld [bc], a                                    ; $525d: $02
    jr nz, @-$60                                  ; $525e: $20 $9e

    db $10                                        ; $5260: $10
    jr nc, jr_0e3_526b                            ; $5261: $30 $08

    jr c, jr_0e3_5269                             ; $5263: $38 $04

    inc a                                         ; $5265: $3c
    inc [hl]                                      ; $5266: $34
    inc a                                         ; $5267: $3c
    inc [hl]                                      ; $5268: $34

jr_0e3_5269:
    inc a                                         ; $5269: $3c
    inc [hl]                                      ; $526a: $34

jr_0e3_526b:
    inc a                                         ; $526b: $3c
    ld a, [hl-]                                   ; $526c: $3a
    ld e, $3a                                     ; $526d: $1e $3a
    ld c, $3a                                     ; $526f: $0e $3a
    ld e, $36                                     ; $5271: $1e $36
    ld a, $0c                                     ; $5273: $3e $0c
    inc a                                         ; $5275: $3c
    ld [hl], $3e                                  ; $5276: $36 $3e
    ld [hl-], a                                   ; $5278: $32
    ld a, $1b                                     ; $5279: $3e $1b
    ccf                                           ; $527b: $3f
    add hl, hl                                    ; $527c: $29
    ccf                                           ; $527d: $3f
    ld [bc], a                                    ; $527e: $02
    ld c, $94                                     ; $527f: $0e $94
    add hl, de                                    ; $5281: $19
    rra                                           ; $5282: $1f
    db $10                                        ; $5283: $10
    rra                                           ; $5284: $1f

jr_0e3_5285:
    jr nz, jr_0e3_52c6                            ; $5285: $20 $3f

    inc [hl]                                      ; $5287: $34
    ccf                                           ; $5288: $3f
    jr z, jr_0e3_52ca                             ; $5289: $28 $3f

    ld d, h                                       ; $528b: $54
    ld a, a                                       ; $528c: $7f
    ld h, b                                       ; $528d: $60
    ld a, a                                       ; $528e: $7f
    add c                                         ; $528f: $81
    rst $38                                       ; $5290: $ff
    jp Jump_0e3_63ff                              ; $5291: $c3 $ff $63


    ld a, [hl]                                    ; $5294: $7e
    ld [bc], a                                    ; $5295: $02
    ld a, a                                       ; $5296: $7f
    adc b                                         ; $5297: $88
    ld h, a                                       ; $5298: $67
    ld a, a                                       ; $5299: $7f
    ret c                                         ; $529a: $d8

    rst $38                                       ; $529b: $ff
    db $e3                                        ; $529c: $e3
    rst $38                                       ; $529d: $ff
    jp nz, Jump_000_02ff                          ; $529e: $c2 $ff $02

    ld [$0488], sp                                ; $52a1: $08 $88 $04
    inc c                                         ; $52a4: $0c
    ld [bc], a                                    ; $52a5: $02
    ld c, $0a                                     ; $52a6: $0e $0a
    ld c, $0d                                     ; $52a8: $0e $0d
    rrca                                          ; $52aa: $0f
    ld [bc], a                                    ; $52ab: $02
    ld c, $02                                     ; $52ac: $0e $02
    inc c                                         ; $52ae: $0c
    add h                                         ; $52af: $84
    ld c, $06                                     ; $52b0: $0e $06
    inc c                                         ; $52b2: $0c
    inc b                                         ; $52b3: $04
    ld [bc], a                                    ; $52b4: $02
    ld [$0002], sp                                ; $52b5: $08 $02 $00
    inc b                                         ; $52b8: $04

jr_0e3_52b9:
    ld [$0481], sp                                ; $52b9: $08 $81 $04
    inc bc                                        ; $52bc: $03
    inc c                                         ; $52bd: $0c
    add d                                         ; $52be: $82
    jr z, jr_0e3_52b9                             ; $52bf: $28 $f8

    ld [bc], a                                    ; $52c1: $02
    rrca                                          ; $52c2: $0f
    sub c                                         ; $52c3: $91
    db $10                                        ; $52c4: $10
    rra                                           ; $52c5: $1f

jr_0e3_52c6:
    jr nz, jr_0e3_5307                            ; $52c6: $20 $3f

    ld d, b                                       ; $52c8: $50
    ld a, a                                       ; $52c9: $7f

jr_0e3_52ca:
    ld h, b                                       ; $52ca: $60
    ld a, a                                       ; $52cb: $7f
    ld d, b                                       ; $52cc: $50
    ld a, a                                       ; $52cd: $7f
    ld l, d                                       ; $52ce: $6a
    ld a, a                                       ; $52cf: $7f
    ret nc                                        ; $52d0: $d0

    rst $38                                       ; $52d1: $ff
    and b                                         ; $52d2: $a0
    rst $38                                       ; $52d3: $ff
    ld hl, sp+$03                                 ; $52d4: $f8 $03
    rst $38                                       ; $52d6: $ff
    adc d                                         ; $52d7: $8a
    ld h, [hl]                                    ; $52d8: $66
    ld a, a                                       ; $52d9: $7f
    ld e, [hl]                                    ; $52da: $5e
    ld a, a                                       ; $52db: $7f
    ld [c], a                                     ; $52dc: $e2
    rst $38                                       ; $52dd: $ff
    sub b                                         ; $52de: $90
    rst $38                                       ; $52df: $ff
    add e                                         ; $52e0: $83
    rst $38                                       ; $52e1: $ff
    ld [bc], a                                    ; $52e2: $02
    db $10                                        ; $52e3: $10
    sub e                                         ; $52e4: $93
    ld [$0818], sp                                ; $52e5: $08 $18 $08
    jr jr_0e3_52ee                                ; $52e8: $18 $04

    inc e                                         ; $52ea: $1c
    inc b                                         ; $52eb: $04
    inc e                                         ; $52ec: $1c
    inc b                                         ; $52ed: $04

jr_0e3_52ee:
    inc e                                         ; $52ee: $1c
    ld [bc], a                                    ; $52ef: $02
    ld e, $0a                                     ; $52f0: $1e $0a
    ld e, $1a                                     ; $52f2: $1e $1a
    ld e, $12                                     ; $52f4: $1e $12
    ld e, $0c                                     ; $52f6: $1e $0c
    inc bc                                        ; $52f8: $03
    inc e                                         ; $52f9: $1c
    adc b                                         ; $52fa: $88
    ld a, [bc]                                    ; $52fb: $0a
    ld e, $1a                                     ; $52fc: $1e $1a
    ld e, $12                                     ; $52fe: $1e $12
    ld e, $01                                     ; $5300: $1e $01
    rst $38                                       ; $5302: $ff
    ld [bc], a                                    ; $5303: $02
    rrca                                          ; $5304: $0f
    adc d                                         ; $5305: $8a
    inc d                                         ; $5306: $14

jr_0e3_5307:
    rra                                           ; $5307: $1f
    jr c, jr_0e3_5349                             ; $5308: $38 $3f

    jr c, jr_0e3_534b                             ; $530a: $38 $3f

    ld [hl], c                                    ; $530c: $71
    ld a, a                                       ; $530d: $7f
    ld e, a                                       ; $530e: $5f
    ld a, a                                       ; $530f: $7f
    ld [bc], a                                    ; $5310: $02
    rst $38                                       ; $5311: $ff
    sub d                                         ; $5312: $92
    cp a                                          ; $5313: $bf
    cp $bf                                        ; $5314: $fe $bf
    db $e4                                        ; $5316: $e4
    cp a                                          ; $5317: $bf
    or $5f                                        ; $5318: $f6 $5f
    ld a, c                                       ; $531a: $79
    ld a, e                                       ; $531b: $7b
    ld a, a                                       ; $531c: $7f
    rst $18                                       ; $531d: $df
    rst $38                                       ; $531e: $ff
    sbc a                                         ; $531f: $9f
    rst $38                                       ; $5320: $ff
    ld [hl], $ff                                  ; $5321: $36 $ff
    cpl                                           ; $5323: $2f
    rst $38                                       ; $5324: $ff
    ld [bc], a                                    ; $5325: $02
    db $10                                        ; $5326: $10
    cp h                                          ; $5327: $bc
    ld [$1418], sp                                ; $5328: $08 $18 $14
    inc e                                         ; $532b: $1c
    inc d                                         ; $532c: $14
    inc e                                         ; $532d: $1c
    inc d                                         ; $532e: $14
    inc e                                         ; $532f: $1c
    ld [de], a                                    ; $5330: $12
    ld e, $1a                                     ; $5331: $1e $1a
    ld e, $1a                                     ; $5333: $1e $1a
    ld c, $1a                                     ; $5335: $0e $1a
    ld e, $14                                     ; $5337: $1e $14
    inc e                                         ; $5339: $1c
    inc c                                         ; $533a: $0c
    inc e                                         ; $533b: $1c
    ld d, $1e                                     ; $533c: $16 $1e
    inc de                                        ; $533e: $13
    rra                                           ; $533f: $1f
    add hl, de                                    ; $5340: $19
    rra                                           ; $5341: $1f
    dec c                                         ; $5342: $0d
    rra                                           ; $5343: $1f
    ld h, c                                       ; $5344: $61
    rst $38                                       ; $5345: $ff
    ld d, d                                       ; $5346: $52
    ld a, a                                       ; $5347: $7f
    ld b, e                                       ; $5348: $43

jr_0e3_5349:
    ld a, a                                       ; $5349: $7f
    ld b, [hl]                                    ; $534a: $46

jr_0e3_534b:
    ld a, a                                       ; $534b: $7f
    ld d, l                                       ; $534c: $55
    ld a, a                                       ; $534d: $7f
    ld d, a                                       ; $534e: $57
    ld a, a                                       ; $534f: $7f
    ld d, a                                       ; $5350: $57
    ld a, a                                       ; $5351: $7f
    ld b, a                                       ; $5352: $47
    ld a, a                                       ; $5353: $7f
    ld b, l                                       ; $5354: $45
    ld a, a                                       ; $5355: $7f
    ld l, [hl]                                    ; $5356: $6e
    ld a, a                                       ; $5357: $7f
    ld l, c                                       ; $5358: $69
    ld a, a                                       ; $5359: $7f
    ld l, h                                       ; $535a: $6c
    ld a, a                                       ; $535b: $7f
    ld l, c                                       ; $535c: $69
    ld a, a                                       ; $535d: $7f
    ld l, b                                       ; $535e: $68
    ld a, a                                       ; $535f: $7f
    db $ed                                        ; $5360: $ed
    rst $38                                       ; $5361: $ff
    ld c, a                                       ; $5362: $4f
    ld a, a                                       ; $5363: $7f
    ld [bc], a                                    ; $5364: $02
    inc sp                                        ; $5365: $33
    sbc [hl]                                      ; $5366: $9e
    jp z, $42fe                                   ; $5367: $ca $fe $42

    cp $e2                                        ; $536a: $fe $e2
    cp $62                                        ; $536c: $fe $62
    cp $ea                                        ; $536e: $fe $ea
    cp $e6                                        ; $5370: $fe $e6
    cp $f6                                        ; $5372: $fe $f6
    cp $f2                                        ; $5374: $fe $f2
    cp $f6                                        ; $5376: $fe $f6
    cp $76                                        ; $5378: $fe $76
    cp $b6                                        ; $537a: $fe $b6
    cp $76                                        ; $537c: $fe $76
    cp $b5                                        ; $537e: $fe $b5
    rst $38                                       ; $5380: $ff
    ld [hl], l                                    ; $5381: $75
    rst $38                                       ; $5382: $ff
    or d                                          ; $5383: $b2
    cp $02                                        ; $5384: $fe $02
    db $fc                                        ; $5386: $fc
    sbc [hl]                                      ; $5387: $9e
    inc c                                         ; $5388: $0c
    rrca                                          ; $5389: $0f
    inc c                                         ; $538a: $0c
    rrca                                          ; $538b: $0f
    ld [$080f], sp                                ; $538c: $08 $0f $08
    rrca                                          ; $538f: $0f
    ld [$080f], sp                                ; $5390: $08 $0f $08
    rrca                                          ; $5393: $0f
    jr @+$21                                      ; $5394: $18 $1f

    db $10                                        ; $5396: $10
    rra                                           ; $5397: $1f
    db $10                                        ; $5398: $10
    rra                                           ; $5399: $1f
    ld de, $101f                                  ; $539a: $11 $1f $10
    rra                                           ; $539d: $1f
    dec h                                         ; $539e: $25
    ccf                                           ; $539f: $3f
    ld l, e                                       ; $53a0: $6b
    ld a, a                                       ; $53a1: $7f
    sub a                                         ; $53a2: $97
    rst $38                                       ; $53a3: $ff
    ret nz                                        ; $53a4: $c0

    rst $38                                       ; $53a5: $ff
    ld [bc], a                                    ; $53a6: $02
    ccf                                           ; $53a7: $3f
    sbc h                                         ; $53a8: $9c
    ld [de], a                                    ; $53a9: $12
    ld a, $16                                     ; $53aa: $3e $16
    ld a, $06                                     ; $53ac: $3e $06
    ld a, $16                                     ; $53ae: $3e $16
    ld a, $14                                     ; $53b0: $3e $14
    inc a                                         ; $53b2: $3c
    ld a, [bc]                                    ; $53b3: $0a
    ld a, $0e                                     ; $53b4: $3e $0e
    ld a, $0a                                     ; $53b6: $3e $0a
    ld a, $0d                                     ; $53b8: $3e $0d
    ccf                                           ; $53ba: $3f
    add hl, de                                    ; $53bb: $19
    ccf                                           ; $53bc: $3f
    dec e                                         ; $53bd: $1d
    ccf                                           ; $53be: $3f
    dec de                                        ; $53bf: $1b
    ccf                                           ; $53c0: $3f
    ld e, $3e                                     ; $53c1: $1e $3e
    ld e, $3e                                     ; $53c3: $1e $3e
    ld [bc], a                                    ; $53c5: $02
    jr c, jr_0e3_53ca                             ; $53c6: $38 $02

    nop                                           ; $53c8: $00
    sbc [hl]                                      ; $53c9: $9e

jr_0e3_53ca:
    ld h, b                                       ; $53ca: $60
    ld a, [hl]                                    ; $53cb: $7e
    ld h, l                                       ; $53cc: $65
    ld a, a                                       ; $53cd: $7f
    ld h, d                                       ; $53ce: $62
    ld a, a                                       ; $53cf: $7f
    ld b, b                                       ; $53d0: $40
    ld a, a                                       ; $53d1: $7f
    ld b, b                                       ; $53d2: $40
    ld a, a                                       ; $53d3: $7f
    ld b, b                                       ; $53d4: $40
    ld a, a                                       ; $53d5: $7f
    ld b, b                                       ; $53d6: $40
    ld a, a                                       ; $53d7: $7f
    ld l, b                                       ; $53d8: $68
    ld a, a                                       ; $53d9: $7f
    ld h, b                                       ; $53da: $60
    ld a, a                                       ; $53db: $7f
    ld l, b                                       ; $53dc: $68
    ld a, a                                       ; $53dd: $7f
    ld h, b                                       ; $53de: $60
    ld a, a                                       ; $53df: $7f
    ld h, h                                       ; $53e0: $64
    ld a, a                                       ; $53e1: $7f
    ret nc                                        ; $53e2: $d0

    rst $38                                       ; $53e3: $ff
    ret nz                                        ; $53e4: $c0

    rst $38                                       ; $53e5: $ff
    ld hl, sp-$01                                 ; $53e6: $f8 $ff
    ld [bc], a                                    ; $53e8: $02
    rra                                           ; $53e9: $1f
    sbc h                                         ; $53ea: $9c
    ld d, d                                       ; $53eb: $52
    cp $82                                        ; $53ec: $fe $82
    cp $0a                                        ; $53ee: $fe $0a
    cp $02                                        ; $53f0: $fe $02
    cp $0a                                        ; $53f2: $fe $0a
    cp $02                                        ; $53f4: $fe $02
    cp $02                                        ; $53f6: $fe $02
    cp $02                                        ; $53f8: $fe $02
    cp $02                                        ; $53fa: $fe $02
    cp $12                                        ; $53fc: $fe $12
    cp $43                                        ; $53fe: $fe $43
    rst $38                                       ; $5400: $ff
    inc bc                                        ; $5401: $03
    rst $38                                       ; $5402: $ff
    ld bc, $06ff                                  ; $5403: $01 $ff $06
    cp $02                                        ; $5406: $fe $02
    ld hl, sp+$02                                 ; $5408: $f8 $02
    nop                                           ; $540a: $00
    inc b                                         ; $540b: $04
    ld b, b                                       ; $540c: $40
    or [hl]                                       ; $540d: $b6
    ld d, d                                       ; $540e: $52
    ld a, [hl]                                    ; $540f: $7e
    ld b, e                                       ; $5410: $43
    ld a, a                                       ; $5411: $7f
    ld l, d                                       ; $5412: $6a
    ld a, a                                       ; $5413: $7f
    ld c, e                                       ; $5414: $4b
    ld a, a                                       ; $5415: $7f
    ld b, a                                       ; $5416: $47
    ld a, a                                       ; $5417: $7f
    ld h, a                                       ; $5418: $67
    ld a, a                                       ; $5419: $7f
    ld d, a                                       ; $541a: $57
    ld a, e                                       ; $541b: $7b
    ld [hl], a                                    ; $541c: $77
    ld a, a                                       ; $541d: $7f
    ld [hl], l                                    ; $541e: $75
    ld a, a                                       ; $541f: $7f
    ld l, [hl]                                    ; $5420: $6e
    ld a, a                                       ; $5421: $7f
    ld l, l                                       ; $5422: $6d
    ld a, a                                       ; $5423: $7f
    xor $ff                                       ; $5424: $ee $ff
    xor a                                         ; $5426: $af
    rst $38                                       ; $5427: $ff
    ld c, a                                       ; $5428: $4f
    ld a, a                                       ; $5429: $7f
    ld h, d                                       ; $542a: $62
    cp $a2                                        ; $542b: $fe $a2
    cp $6a                                        ; $542d: $fe $6a
    cp $ea                                        ; $542f: $fe $ea
    cp $ea                                        ; $5431: $fe $ea
    cp $76                                        ; $5433: $fe $76
    cp $b6                                        ; $5435: $fe $b6
    cp $76                                        ; $5437: $fe $76
    cp $b6                                        ; $5439: $fe $b6
    cp $56                                        ; $543b: $fe $56
    cp $b6                                        ; $543d: $fe $b6
    cp $75                                        ; $543f: $fe $75
    rst $38                                       ; $5441: $ff
    ld a, [c]                                     ; $5442: $f2
    cp $02                                        ; $5443: $fe $02
    db $fc                                        ; $5445: $fc
    ld [$0200], sp                                ; $5446: $08 $00 $02
    ld sp, $001a                                  ; $5449: $31 $1a $00
    rst $38                                       ; $544c: $ff
    daa                                           ; $544d: $27
    ld de, $08f9                                  ; $544e: $11 $f9 $08
    ld a, [c]                                     ; $5451: $f2
    ld bc, $7adf                                  ; $5452: $01 $df $7a
    rst $18                                       ; $5455: $df
    add b                                         ; $5456: $80
    rst $18                                       ; $5457: $df
    sub h                                         ; $5458: $94
    ldh [$98], a                                  ; $5459: $e0 $98
    rst $18                                       ; $545b: $df
    xor e                                         ; $545c: $ab
    rst $18                                       ; $545d: $df
    or b                                          ; $545e: $b0
    ld [c], a                                     ; $545f: $e2
    ei                                            ; $5460: $fb
    db $e3                                        ; $5461: $e3
    nop                                           ; $5462: $00
    rst $28                                       ; $5463: $ef
    ld a, d                                       ; $5464: $7a
    rst $28                                       ; $5465: $ef
    add c                                         ; $5466: $81
    rst $28                                       ; $5467: $ef
    sub b                                         ; $5468: $90
    ldh a, [$98]                                  ; $5469: $f0 $98
    rst $28                                       ; $546b: $ef
    xor e                                         ; $546c: $ab
    rst $28                                       ; $546d: $ef
    or d                                          ; $546e: $b2
    ldh a, [$fa]                                  ; $546f: $f0 $fa
    di                                            ; $5471: $f3
    ld bc, $f9ff                                  ; $5472: $01 $ff $f9
    ld [bc], a                                    ; $5475: $02
    rlca                                          ; $5476: $07
    adc h                                         ; $5477: $8c
    ld a, [bc]                                    ; $5478: $0a
    rrca                                          ; $5479: $0f
    inc e                                         ; $547a: $1c
    rra                                           ; $547b: $1f
    inc e                                         ; $547c: $1c
    rra                                           ; $547d: $1f
    jr c, jr_0e3_54bf                             ; $547e: $38 $3f

    dec a                                         ; $5480: $3d
    ccf                                           ; $5481: $3f
    cpl                                           ; $5482: $2f
    ccf                                           ; $5483: $3f
    ld [bc], a                                    ; $5484: $02
    ld a, a                                       ; $5485: $7f
    sub b                                         ; $5486: $90
    ld e, a                                       ; $5487: $5f
    ld [hl], d                                    ; $5488: $72
    ld e, a                                       ; $5489: $5f
    ld a, e                                       ; $548a: $7b
    ld l, a                                       ; $548b: $6f
    ld a, h                                       ; $548c: $7c
    dec [hl]                                      ; $548d: $35
    ccf                                           ; $548e: $3f
    ld l, a                                       ; $548f: $6f
    ld a, a                                       ; $5490: $7f
    ld c, a                                       ; $5491: $4f
    ld a, a                                       ; $5492: $7f
    sbc e                                         ; $5493: $9b
    rst $38                                       ; $5494: $ff
    rst $20                                       ; $5495: $e7
    rst $38                                       ; $5496: $ff
    ld [bc], a                                    ; $5497: $02
    jr nz, @-$60                                  ; $5498: $20 $9e

    db $10                                        ; $549a: $10
    jr nc, jr_0e3_54a5                            ; $549b: $30 $08

    jr c, jr_0e3_54a3                             ; $549d: $38 $04

    inc a                                         ; $549f: $3c
    inc [hl]                                      ; $54a0: $34
    inc a                                         ; $54a1: $3c
    inc [hl]                                      ; $54a2: $34

jr_0e3_54a3:
    inc a                                         ; $54a3: $3c
    inc [hl]                                      ; $54a4: $34

jr_0e3_54a5:
    inc a                                         ; $54a5: $3c
    ld a, [hl-]                                   ; $54a6: $3a
    ld e, $3a                                     ; $54a7: $1e $3a
    ld c, $3a                                     ; $54a9: $0e $3a
    ld e, $36                                     ; $54ab: $1e $36
    ld a, $0c                                     ; $54ad: $3e $0c
    inc a                                         ; $54af: $3c
    ld [hl], $3e                                  ; $54b0: $36 $3e
    ld [hl-], a                                   ; $54b2: $32
    ld a, $12                                     ; $54b3: $3e $12
    ld a, $29                                     ; $54b5: $3e $29
    ccf                                           ; $54b7: $3f
    ld [bc], a                                    ; $54b8: $02
    ld c, $94                                     ; $54b9: $0e $94
    add hl, de                                    ; $54bb: $19
    rra                                           ; $54bc: $1f
    db $10                                        ; $54bd: $10
    rra                                           ; $54be: $1f

jr_0e3_54bf:
    jr nz, @+$41                                  ; $54bf: $20 $3f

    inc [hl]                                      ; $54c1: $34
    ccf                                           ; $54c2: $3f
    jr z, jr_0e3_5504                             ; $54c3: $28 $3f

    ld d, h                                       ; $54c5: $54
    ld a, a                                       ; $54c6: $7f
    ld h, b                                       ; $54c7: $60
    ld a, a                                       ; $54c8: $7f
    add c                                         ; $54c9: $81
    rst $38                                       ; $54ca: $ff
    jp Jump_0e3_63ff                              ; $54cb: $c3 $ff $63


    ld a, [hl]                                    ; $54ce: $7e
    ld [bc], a                                    ; $54cf: $02
    ld a, a                                       ; $54d0: $7f
    adc b                                         ; $54d1: $88
    ld b, a                                       ; $54d2: $47
    ld a, a                                       ; $54d3: $7f
    ret c                                         ; $54d4: $d8

    rst $38                                       ; $54d5: $ff
    db $e3                                        ; $54d6: $e3
    rst $38                                       ; $54d7: $ff
    add $ff                                       ; $54d8: $c6 $ff
    ld [bc], a                                    ; $54da: $02
    ld [$0488], sp                                ; $54db: $08 $88 $04
    inc c                                         ; $54de: $0c
    ld [bc], a                                    ; $54df: $02
    ld c, $0a                                     ; $54e0: $0e $0a
    ld c, $0d                                     ; $54e2: $0e $0d
    rrca                                          ; $54e4: $0f
    ld [bc], a                                    ; $54e5: $02
    ld c, $02                                     ; $54e6: $0e $02
    inc c                                         ; $54e8: $0c
    add h                                         ; $54e9: $84
    ld c, $06                                     ; $54ea: $0e $06
    inc c                                         ; $54ec: $0c
    inc b                                         ; $54ed: $04
    ld [bc], a                                    ; $54ee: $02
    ld [$0002], sp                                ; $54ef: $08 $02 $00
    inc b                                         ; $54f2: $04
    ld [$0481], sp                                ; $54f3: $08 $81 $04
    inc bc                                        ; $54f6: $03
    inc c                                         ; $54f7: $0c
    add d                                         ; $54f8: $82
    ld c, b                                       ; $54f9: $48
    ld hl, sp+$02                                 ; $54fa: $f8 $02
    rlca                                          ; $54fc: $07
    sub c                                         ; $54fd: $91
    ld [$100f], sp                                ; $54fe: $08 $0f $10
    rra                                           ; $5501: $1f
    jr z, @+$41                                   ; $5502: $28 $3f

jr_0e3_5504:
    jr nc, @+$41                                  ; $5504: $30 $3f

    jr z, jr_0e3_5547                             ; $5506: $28 $3f

    dec [hl]                                      ; $5508: $35
    ccf                                           ; $5509: $3f
    ld l, b                                       ; $550a: $68
    ld a, a                                       ; $550b: $7f
    ld d, b                                       ; $550c: $50
    ld a, a                                       ; $550d: $7f
    ld a, h                                       ; $550e: $7c
    inc bc                                        ; $550f: $03
    ld a, a                                       ; $5510: $7f
    adc d                                         ; $5511: $8a
    inc sp                                        ; $5512: $33
    ccf                                           ; $5513: $3f
    cpl                                           ; $5514: $2f
    ccf                                           ; $5515: $3f
    ld d, c                                       ; $5516: $51
    ld a, a                                       ; $5517: $7f
    ld b, b                                       ; $5518: $40
    ld a, a                                       ; $5519: $7f
    rst $10                                       ; $551a: $d7
    rst $38                                       ; $551b: $ff
    ld [bc], a                                    ; $551c: $02
    db $10                                        ; $551d: $10
    sbc [hl]                                      ; $551e: $9e
    ld [$0418], sp                                ; $551f: $08 $18 $04
    inc e                                         ; $5522: $1c
    inc b                                         ; $5523: $04
    inc e                                         ; $5524: $1c
    ld [bc], a                                    ; $5525: $02
    ld e, $02                                     ; $5526: $1e $02
    ld e, $02                                     ; $5528: $1e $02
    ld e, $01                                     ; $552a: $1e $01
    rra                                           ; $552c: $1f
    dec b                                         ; $552d: $05
    rra                                           ; $552e: $1f
    dec c                                         ; $552f: $0d
    rra                                           ; $5530: $1f
    add hl, de                                    ; $5531: $19
    rra                                           ; $5532: $1f
    ld b, $1e                                     ; $5533: $06 $1e
    ld c, $1e                                     ; $5535: $0e $1e
    dec b                                         ; $5537: $05
    rra                                           ; $5538: $1f
    add hl, de                                    ; $5539: $19
    rra                                           ; $553a: $1f
    ld de, $021f                                  ; $553b: $11 $1f $02
    rrca                                          ; $553e: $0f
    sbc [hl]                                      ; $553f: $9e
    inc d                                         ; $5540: $14
    rra                                           ; $5541: $1f
    jr c, jr_0e3_5583                             ; $5542: $38 $3f

    jr c, jr_0e3_5585                             ; $5544: $38 $3f

    ld [hl], c                                    ; $5546: $71

jr_0e3_5547:
    ld a, a                                       ; $5547: $7f
    ld a, e                                       ; $5548: $7b
    ld a, a                                       ; $5549: $7f
    ld e, a                                       ; $554a: $5f
    ld a, a                                       ; $554b: $7f
    rst $38                                       ; $554c: $ff
    cp $bf                                        ; $554d: $fe $bf
    db $e4                                        ; $554f: $e4
    cp a                                          ; $5550: $bf
    or $df                                        ; $5551: $f6 $df
    ld sp, hl                                     ; $5553: $f9
    ld l, d                                       ; $5554: $6a
    ld a, a                                       ; $5555: $7f
    rst $18                                       ; $5556: $df
    rst $38                                       ; $5557: $ff
    sbc a                                         ; $5558: $9f
    rst $38                                       ; $5559: $ff
    or [hl]                                       ; $555a: $b6
    rst $38                                       ; $555b: $ff
    cpl                                           ; $555c: $2f
    rst $38                                       ; $555d: $ff
    ld [bc], a                                    ; $555e: $02
    db $10                                        ; $555f: $10
    cp h                                          ; $5560: $bc
    ld [$0418], sp                                ; $5561: $08 $18 $04
    inc e                                         ; $5564: $1c
    inc d                                         ; $5565: $14
    inc e                                         ; $5566: $1c
    inc d                                         ; $5567: $14
    inc e                                         ; $5568: $1c
    inc d                                         ; $5569: $14
    inc e                                         ; $556a: $1c
    ld a, [de]                                    ; $556b: $1a
    ld e, $1a                                     ; $556c: $1e $1a
    ld c, $1a                                     ; $556e: $0e $1a
    ld e, $16                                     ; $5570: $1e $16
    ld e, $0c                                     ; $5572: $1e $0c
    inc e                                         ; $5574: $1c
    ld d, $1e                                     ; $5575: $16 $1e
    ld [de], a                                    ; $5577: $12
    ld e, $1b                                     ; $5578: $1e $1b
    rra                                           ; $557a: $1f
    add hl, bc                                    ; $557b: $09
    rra                                           ; $557c: $1f
    ld h, l                                       ; $557d: $65
    rst $38                                       ; $557e: $ff
    add l                                         ; $557f: $85
    rst $38                                       ; $5580: $ff
    adc e                                         ; $5581: $8b
    rst $38                                       ; $5582: $ff

jr_0e3_5583:
    xor l                                         ; $5583: $ad
    rst $38                                       ; $5584: $ff

jr_0e3_5585:
    xor d                                         ; $5585: $aa
    rst $38                                       ; $5586: $ff
    xor a                                         ; $5587: $af
    rst $38                                       ; $5588: $ff
    rst $08                                       ; $5589: $cf
    rst $38                                       ; $558a: $ff
    push de                                       ; $558b: $d5
    rst $38                                       ; $558c: $ff
    db $db                                        ; $558d: $db
    rst $38                                       ; $558e: $ff
    push de                                       ; $558f: $d5
    rst $38                                       ; $5590: $ff
    db $db                                        ; $5591: $db
    rst $38                                       ; $5592: $ff
    pop de                                        ; $5593: $d1
    rst $38                                       ; $5594: $ff
    jp c, $d1ff                                   ; $5595: $da $ff $d1

    rst $38                                       ; $5598: $ff
    cp d                                          ; $5599: $ba
    rst $38                                       ; $559a: $ff
    cp l                                          ; $559b: $bd
    rst $38                                       ; $559c: $ff
    ld [bc], a                                    ; $559d: $02
    ld e, a                                       ; $559e: $5f
    sbc [hl]                                      ; $559f: $9e
    ld b, d                                       ; $55a0: $42
    ld a, [hl]                                    ; $55a1: $7e
    ld b, d                                       ; $55a2: $42
    ld a, [hl]                                    ; $55a3: $7e
    ld c, d                                       ; $55a4: $4a
    ld a, [hl]                                    ; $55a5: $7e
    ld b, [hl]                                    ; $55a6: $46
    ld a, [hl]                                    ; $55a7: $7e
    ld h, d                                       ; $55a8: $62
    ld a, [hl]                                    ; $55a9: $7e
    ld [hl], d                                    ; $55aa: $72
    ld a, [hl]                                    ; $55ab: $7e
    halt                                          ; $55ac: $76
    ld e, [hl]                                    ; $55ad: $5e
    halt                                          ; $55ae: $76
    ld l, [hl]                                    ; $55af: $6e
    halt                                          ; $55b0: $76
    ld a, [hl]                                    ; $55b1: $7e
    halt                                          ; $55b2: $76
    ld a, [hl]                                    ; $55b3: $7e
    halt                                          ; $55b4: $76
    ld a, [hl]                                    ; $55b5: $7e
    ld l, [hl]                                    ; $55b6: $6e
    ld a, [hl]                                    ; $55b7: $7e
    ld h, l                                       ; $55b8: $65
    ld a, a                                       ; $55b9: $7f
    ld [hl], l                                    ; $55ba: $75
    ld a, a                                       ; $55bb: $7f
    ld [hl], d                                    ; $55bc: $72
    ld a, [hl]                                    ; $55bd: $7e
    ld [bc], a                                    ; $55be: $02
    inc e                                         ; $55bf: $1c
    sbc [hl]                                      ; $55c0: $9e
    ld [$090f], sp                                ; $55c1: $08 $0f $09
    rrca                                          ; $55c4: $0f
    ld [$090f], sp                                ; $55c5: $08 $0f $09
    rrca                                          ; $55c8: $0f
    ld [$080f], sp                                ; $55c9: $08 $0f $08
    rrca                                          ; $55cc: $0f
    add hl, bc                                    ; $55cd: $09
    rrca                                          ; $55ce: $0f
    db $10                                        ; $55cf: $10
    rra                                           ; $55d0: $1f
    ld de, $131f                                  ; $55d1: $11 $1f $13
    rra                                           ; $55d4: $1f
    dec [hl]                                      ; $55d5: $35
    ccf                                           ; $55d6: $3f
    dec hl                                        ; $55d7: $2b
    ccf                                           ; $55d8: $3f
    ld [hl], l                                    ; $55d9: $75
    ld a, a                                       ; $55da: $7f
    sbc a                                         ; $55db: $9f
    rst $38                                       ; $55dc: $ff
    ret nz                                        ; $55dd: $c0

    rst $38                                       ; $55de: $ff
    ld [bc], a                                    ; $55df: $02
    ccf                                           ; $55e0: $3f
    sbc d                                         ; $55e1: $9a
    sbc b                                         ; $55e2: $98
    ld hl, sp+$18                                 ; $55e3: $f8 $18
    ld hl, sp+$18                                 ; $55e5: $f8 $18
    ld hl, sp+$3c                                 ; $55e7: $f8 $3c
    db $fc                                        ; $55e9: $fc
    inc a                                         ; $55ea: $3c
    db $f4                                        ; $55eb: $f4
    jr c, @-$06                                   ; $55ec: $38 $f8

    ld a, b                                       ; $55ee: $78
    ld hl, sp+$68                                 ; $55ef: $f8 $68
    ld hl, sp+$48                                 ; $55f1: $f8 $48
    ld hl, sp+$68                                 ; $55f3: $f8 $68
    ld hl, sp+$44                                 ; $55f5: $f8 $44
    db $fc                                        ; $55f7: $fc
    ld l, h                                       ; $55f8: $6c
    db $fc                                        ; $55f9: $fc
    ld d, a                                       ; $55fa: $57
    rst $38                                       ; $55fb: $ff
    ld [bc], a                                    ; $55fc: $02
    cp $02                                        ; $55fd: $fe $02
    ldh [rSC], a                                  ; $55ff: $e0 $02
    nop                                           ; $5601: $00
    sbc [hl]                                      ; $5602: $9e
    ret nz                                        ; $5603: $c0

    rst $38                                       ; $5604: $ff
    push bc                                       ; $5605: $c5
    rst $38                                       ; $5606: $ff
    jp nz, $c1ff                                  ; $5607: $c2 $ff $c1

    rst $38                                       ; $560a: $ff
    ret nz                                        ; $560b: $c0

    rst $38                                       ; $560c: $ff
    ret nz                                        ; $560d: $c0

    rst $38                                       ; $560e: $ff
    add b                                         ; $560f: $80
    rst $38                                       ; $5610: $ff
    add b                                         ; $5611: $80
    rst $38                                       ; $5612: $ff
    add b                                         ; $5613: $80
    rst $38                                       ; $5614: $ff
    add b                                         ; $5615: $80
    rst $38                                       ; $5616: $ff
    add b                                         ; $5617: $80
    rst $38                                       ; $5618: $ff
    sbc h                                         ; $5619: $9c
    rst $38                                       ; $561a: $ff
    add d                                         ; $561b: $82
    rst $38                                       ; $561c: $ff
    add b                                         ; $561d: $80
    rst $38                                       ; $561e: $ff
    cp [hl]                                       ; $561f: $be
    rst $38                                       ; $5620: $ff
    ld [bc], a                                    ; $5621: $02
    ld a, a                                       ; $5622: $7f
    sbc [hl]                                      ; $5623: $9e
    inc d                                         ; $5624: $14
    ld a, h                                       ; $5625: $7c
    ld [hl+], a                                   ; $5626: $22
    ld a, [hl]                                    ; $5627: $7e
    ld d, d                                       ; $5628: $52
    ld a, [hl]                                    ; $5629: $7e
    ld [hl+], a                                   ; $562a: $22
    ld a, [hl]                                    ; $562b: $7e
    ld [de], a                                    ; $562c: $12
    ld a, [hl]                                    ; $562d: $7e
    ld h, $7e                                     ; $562e: $26 $7e
    ld b, $7e                                     ; $5630: $06 $7e
    ld h, $7e                                     ; $5632: $26 $7e
    ld b, $7e                                     ; $5634: $06 $7e
    ld a, [bc]                                    ; $5636: $0a
    ld a, [hl]                                    ; $5637: $7e
    dec bc                                        ; $5638: $0b
    ld a, a                                       ; $5639: $7f
    dec bc                                        ; $563a: $0b
    ld a, a                                       ; $563b: $7f
    ld bc, $017f                                  ; $563c: $01 $7f $01
    ld a, a                                       ; $563f: $7f
    ccf                                           ; $5640: $3f
    ld a, a                                       ; $5641: $7f
    ld [bc], a                                    ; $5642: $02
    ld b, b                                       ; $5643: $40
    inc b                                         ; $5644: $04
    add b                                         ; $5645: $80
    cp b                                          ; $5646: $b8
    and h                                         ; $5647: $a4
    db $fc                                        ; $5648: $fc
    add [hl]                                      ; $5649: $86
    rst $38                                       ; $564a: $ff
    adc l                                         ; $564b: $8d
    rst $38                                       ; $564c: $ff
    xor d                                         ; $564d: $aa
    rst $38                                       ; $564e: $ff
    xor a                                         ; $564f: $af
    rst $38                                       ; $5650: $ff
    xor a                                         ; $5651: $af
    rst $38                                       ; $5652: $ff
    adc a                                         ; $5653: $8f
    rst $38                                       ; $5654: $ff
    adc e                                         ; $5655: $8b
    rst $38                                       ; $5656: $ff
    db $dd                                        ; $5657: $dd
    rst $38                                       ; $5658: $ff
    jp nc, $d9ff                                  ; $5659: $d2 $ff $d9

    rst $38                                       ; $565c: $ff
    jp nc, $d1ff                                  ; $565d: $d2 $ff $d1

    rst $38                                       ; $5660: $ff
    jp c, Jump_0e3_42ff                           ; $5661: $da $ff $42

    ld a, [hl]                                    ; $5664: $7e
    ld h, d                                       ; $5665: $62
    ld a, [hl]                                    ; $5666: $7e
    ld h, d                                       ; $5667: $62
    ld a, [hl]                                    ; $5668: $7e
    ld l, d                                       ; $5669: $6a
    ld a, [hl]                                    ; $566a: $7e
    ld h, [hl]                                    ; $566b: $66
    ld a, [hl]                                    ; $566c: $7e
    halt                                          ; $566d: $76
    ld a, [hl]                                    ; $566e: $7e
    ld [hl], d                                    ; $566f: $72
    ld a, [hl]                                    ; $5670: $7e
    halt                                          ; $5671: $76
    ld a, [hl]                                    ; $5672: $7e
    halt                                          ; $5673: $76
    ld a, [hl]                                    ; $5674: $7e
    ld [hl], $7e                                  ; $5675: $36 $7e
    halt                                          ; $5677: $76

jr_0e3_5678:
    ld a, [hl]                                    ; $5678: $7e
    dec [hl]                                      ; $5679: $35
    ld a, a                                       ; $567a: $7f
    ld [hl], l                                    ; $567b: $75
    ld a, a                                       ; $567c: $7f
    or d                                          ; $567d: $b2
    cp $02                                        ; $567e: $fe $02
    db $fc                                        ; $5680: $fc
    ld [bc], a                                    ; $5681: $02
    nop                                           ; $5682: $00
    ld [bc], a                                    ; $5683: $02
    add b                                         ; $5684: $80
    add d                                         ; $5685: $82
    ld c, a                                       ; $5686: $4f
    ld a, a                                       ; $5687: $7f
    ld [bc], a                                    ; $5688: $02
    inc sp                                        ; $5689: $33
    ld a, [de]                                    ; $568a: $1a
    nop                                           ; $568b: $00
    rst $38                                       ; $568c: $ff
    daa                                           ; $568d: $27
    ld de, $08f9                                  ; $568e: $11 $f9 $08
    ld a, [c]                                     ; $5691: $f2
    ld bc, $7ae0                                  ; $5692: $01 $e0 $7a
    ldh [$80], a                                  ; $5695: $e0 $80
    ldh [$94], a                                  ; $5697: $e0 $94
    pop hl                                        ; $5699: $e1
    sbc b                                         ; $569a: $98
    ldh [$ac], a                                  ; $569b: $e0 $ac
    pop hl                                        ; $569d: $e1
    or c                                          ; $569e: $b1
    ld [c], a                                     ; $569f: $e2
    ei                                            ; $56a0: $fb
    db $e3                                        ; $56a1: $e3
    nop                                           ; $56a2: $00
    ldh a, [$79]                                  ; $56a3: $f0 $79
    ldh a, [$81]                                  ; $56a5: $f0 $81
    ldh a, [$90]                                  ; $56a7: $f0 $90
    pop af                                        ; $56a9: $f1
    sub a                                         ; $56aa: $97
    ldh a, [$ab]                                  ; $56ab: $f0 $ab
    pop af                                        ; $56ad: $f1
    or d                                          ; $56ae: $b2
    ldh a, [$fa]                                  ; $56af: $f0 $fa
    di                                            ; $56b1: $f3
    ld bc, $f900                                  ; $56b2: $01 $00 $f9
    ld [bc], a                                    ; $56b5: $02
    rlca                                          ; $56b6: $07
    adc d                                         ; $56b7: $8a
    ld a, [bc]                                    ; $56b8: $0a
    rrca                                          ; $56b9: $0f
    inc e                                         ; $56ba: $1c
    rra                                           ; $56bb: $1f
    inc e                                         ; $56bc: $1c
    rra                                           ; $56bd: $1f
    jr c, jr_0e3_56ff                             ; $56be: $38 $3f

    cpl                                           ; $56c0: $2f
    ccf                                           ; $56c1: $3f
    ld [bc], a                                    ; $56c2: $02
    ld a, a                                       ; $56c3: $7f
    sub d                                         ; $56c4: $92
    ld e, a                                       ; $56c5: $5f
    ld a, a                                       ; $56c6: $7f
    ld e, a                                       ; $56c7: $5f
    ld [hl], d                                    ; $56c8: $72
    ld e, a                                       ; $56c9: $5f
    ld a, e                                       ; $56ca: $7b
    cpl                                           ; $56cb: $2f
    inc a                                         ; $56cc: $3c
    dec a                                         ; $56cd: $3d
    ccf                                           ; $56ce: $3f
    ld l, a                                       ; $56cf: $6f
    ld a, a                                       ; $56d0: $7f
    rst $08                                       ; $56d1: $cf
    rst $38                                       ; $56d2: $ff
    sbc e                                         ; $56d3: $9b
    rst $38                                       ; $56d4: $ff
    or a                                          ; $56d5: $b7
    rst $38                                       ; $56d6: $ff
    ld [bc], a                                    ; $56d7: $02
    jr nz, jr_0e3_5678                            ; $56d8: $20 $9e

    db $10                                        ; $56da: $10
    jr nc, jr_0e3_56e5                            ; $56db: $30 $08

    jr c, jr_0e3_56f3                             ; $56dd: $38 $14

    inc a                                         ; $56df: $3c
    inc [hl]                                      ; $56e0: $34
    inc a                                         ; $56e1: $3c
    inc [hl]                                      ; $56e2: $34
    inc a                                         ; $56e3: $3c
    ld [hl-], a                                   ; $56e4: $32

jr_0e3_56e5:
    ld a, $3a                                     ; $56e5: $3e $3a
    ld e, $3a                                     ; $56e7: $1e $3a
    ld c, $3a                                     ; $56e9: $0e $3a
    ld e, $34                                     ; $56eb: $1e $34
    inc a                                         ; $56ed: $3c
    inc l                                         ; $56ee: $2c
    inc a                                         ; $56ef: $3c
    ld [hl], $3e                                  ; $56f0: $36 $3e
    ld [hl-], a                                   ; $56f2: $32

jr_0e3_56f3:
    ld a, $19                                     ; $56f3: $3e $19
    ccf                                           ; $56f5: $3f
    add hl, hl                                    ; $56f6: $29
    ccf                                           ; $56f7: $3f
    ld [bc], a                                    ; $56f8: $02
    ld c, $94                                     ; $56f9: $0e $94
    add hl, de                                    ; $56fb: $19
    rra                                           ; $56fc: $1f
    db $10                                        ; $56fd: $10
    rra                                           ; $56fe: $1f

jr_0e3_56ff:
    jr nz, jr_0e3_5740                            ; $56ff: $20 $3f

    ld a, [hl+]                                   ; $5701: $2a
    ccf                                           ; $5702: $3f
    inc [hl]                                      ; $5703: $34
    ccf                                           ; $5704: $3f
    ld l, b                                       ; $5705: $68
    ld a, a                                       ; $5706: $7f
    add c                                         ; $5707: $81
    rst $38                                       ; $5708: $ff
    add c                                         ; $5709: $81
    rst $38                                       ; $570a: $ff
    jp Jump_0e3_73ff                              ; $570b: $c3 $ff $73


    ld a, [hl]                                    ; $570e: $7e
    ld [bc], a                                    ; $570f: $02
    ld a, a                                       ; $5710: $7f
    adc b                                         ; $5711: $88
    ld b, a                                       ; $5712: $47
    ld a, a                                       ; $5713: $7f
    ret c                                         ; $5714: $d8

    rst $38                                       ; $5715: $ff
    db $e3                                        ; $5716: $e3
    rst $38                                       ; $5717: $ff
    add $ff                                       ; $5718: $c6 $ff
    ld [bc], a                                    ; $571a: $02
    ld [$0485], sp                                ; $571b: $08 $85 $04
    inc c                                         ; $571e: $0c
    ld [bc], a                                    ; $571f: $02
    ld c, $0d                                     ; $5720: $0e $0d
    inc bc                                        ; $5722: $03
    rrca                                          ; $5723: $0f
    inc b                                         ; $5724: $04
    inc c                                         ; $5725: $0c
    add h                                         ; $5726: $84
    ld c, $06                                     ; $5727: $0e $06
    inc c                                         ; $5729: $0c
    inc b                                         ; $572a: $04
    ld [bc], a                                    ; $572b: $02
    ld [$0002], sp                                ; $572c: $08 $02 $00
    inc b                                         ; $572f: $04
    ld [$0481], sp                                ; $5730: $08 $81 $04
    inc bc                                        ; $5733: $03
    inc c                                         ; $5734: $0c
    add d                                         ; $5735: $82
    ld c, b                                       ; $5736: $48
    ld hl, sp+$02                                 ; $5737: $f8 $02
    rrca                                          ; $5739: $0f
    sub d                                         ; $573a: $92
    db $10                                        ; $573b: $10
    rra                                           ; $573c: $1f
    jr nz, jr_0e3_577e                            ; $573d: $20 $3f

    ld d, b                                       ; $573f: $50

jr_0e3_5740:
    ld a, a                                       ; $5740: $7f
    ld l, b                                       ; $5741: $68
    ld a, a                                       ; $5742: $7f
    ld d, l                                       ; $5743: $55
    ld a, a                                       ; $5744: $7f
    add sp, -$01                                  ; $5745: $e8 $ff
    sub b                                         ; $5747: $90
    rst $38                                       ; $5748: $ff
    ret nz                                        ; $5749: $c0

    rst $38                                       ; $574a: $ff
    ld sp, hl                                     ; $574b: $f9
    rst $38                                       ; $574c: $ff
    ld [bc], a                                    ; $574d: $02
    ld a, a                                       ; $574e: $7f
    adc d                                         ; $574f: $8a
    ld h, [hl]                                    ; $5750: $66
    ld a, a                                       ; $5751: $7f
    ld e, [hl]                                    ; $5752: $5e
    ld a, a                                       ; $5753: $7f
    and b                                         ; $5754: $a0
    rst $38                                       ; $5755: $ff
    cp a                                          ; $5756: $bf
    rst $38                                       ; $5757: $ff
    add b                                         ; $5758: $80
    rst $38                                       ; $5759: $ff
    ld [bc], a                                    ; $575a: $02
    db $10                                        ; $575b: $10
    sub e                                         ; $575c: $93
    ld [$0818], sp                                ; $575d: $08 $18 $08
    jr jr_0e3_5766                                ; $5760: $18 $04

    inc e                                         ; $5762: $1c
    inc b                                         ; $5763: $04
    inc e                                         ; $5764: $1c
    ld [bc], a                                    ; $5765: $02

jr_0e3_5766:
    ld e, $02                                     ; $5766: $1e $02
    ld e, $0a                                     ; $5768: $1e $0a
    ld e, $1a                                     ; $576a: $1e $1a
    ld e, $14                                     ; $576c: $1e $14
    inc e                                         ; $576e: $1c
    inc c                                         ; $576f: $0c
    inc bc                                        ; $5770: $03
    inc e                                         ; $5771: $1c
    adc b                                         ; $5772: $88
    ld c, $1e                                     ; $5773: $0e $1e
    ld [de], a                                    ; $5775: $12
    ld e, $02                                     ; $5776: $1e $02
    ld e, $ab                                     ; $5778: $1e $ab
    rst $38                                       ; $577a: $ff
    ld [bc], a                                    ; $577b: $02
    rrca                                          ; $577c: $0f
    sbc [hl]                                      ; $577d: $9e

jr_0e3_577e:
    inc d                                         ; $577e: $14
    rra                                           ; $577f: $1f
    jr c, jr_0e3_57c1                             ; $5780: $38 $3f

    jr c, jr_0e3_57c3                             ; $5782: $38 $3f

    ld [hl], c                                    ; $5784: $71
    ld a, a                                       ; $5785: $7f
    ld a, e                                       ; $5786: $7b
    ld a, a                                       ; $5787: $7f
    ld e, a                                       ; $5788: $5f
    ld a, a                                       ; $5789: $7f
    rst $38                                       ; $578a: $ff
    cp $bf                                        ; $578b: $fe $bf
    db $e4                                        ; $578d: $e4
    cp a                                          ; $578e: $bf
    or $df                                        ; $578f: $f6 $df
    ld sp, hl                                     ; $5791: $f9
    ld l, d                                       ; $5792: $6a
    ld a, a                                       ; $5793: $7f
    rst $18                                       ; $5794: $df
    rst $38                                       ; $5795: $ff
    sbc a                                         ; $5796: $9f
    rst $38                                       ; $5797: $ff
    ld [hl], $ff                                  ; $5798: $36 $ff
    rst $08                                       ; $579a: $cf
    rst $38                                       ; $579b: $ff
    ld [bc], a                                    ; $579c: $02
    db $10                                        ; $579d: $10
    cp d                                          ; $579e: $ba
    ld [$0418], sp                                ; $579f: $08 $18 $04
    inc e                                         ; $57a2: $1c
    inc d                                         ; $57a3: $14
    inc e                                         ; $57a4: $1c
    inc d                                         ; $57a5: $14
    inc e                                         ; $57a6: $1c
    inc d                                         ; $57a7: $14
    inc e                                         ; $57a8: $1c
    ld a, [de]                                    ; $57a9: $1a
    ld e, $1a                                     ; $57aa: $1e $1a
    ld c, $1a                                     ; $57ac: $0e $1a
    ld e, $16                                     ; $57ae: $1e $16
    ld e, $0c                                     ; $57b0: $1e $0c
    inc e                                         ; $57b2: $1c
    ld d, $1e                                     ; $57b3: $16 $1e
    ld [de], a                                    ; $57b5: $12
    ld e, $12                                     ; $57b6: $1e $12
    ld e, $09                                     ; $57b8: $1e $09
    rra                                           ; $57ba: $1f
    ld h, c                                       ; $57bb: $61
    rst $38                                       ; $57bc: $ff
    ld b, d                                       ; $57bd: $42
    ld a, a                                       ; $57be: $7f
    ld b, l                                       ; $57bf: $45
    ld a, a                                       ; $57c0: $7f

jr_0e3_57c1:
    ld b, [hl]                                    ; $57c1: $46
    ld a, a                                       ; $57c2: $7f

jr_0e3_57c3:
    ld d, l                                       ; $57c3: $55
    ld a, a                                       ; $57c4: $7f
    ld d, a                                       ; $57c5: $57
    ld a, a                                       ; $57c6: $7f
    ld d, a                                       ; $57c7: $57
    ld a, a                                       ; $57c8: $7f
    ld l, l                                       ; $57c9: $6d
    ld a, a                                       ; $57ca: $7f
    ld l, [hl]                                    ; $57cb: $6e
    ld a, a                                       ; $57cc: $7f
    ld l, l                                       ; $57cd: $6d
    ld a, a                                       ; $57ce: $7f
    ld l, [hl]                                    ; $57cf: $6e
    ld a, a                                       ; $57d0: $7f
    ld l, l                                       ; $57d1: $6d
    ld a, a                                       ; $57d2: $7f
    ld l, [hl]                                    ; $57d3: $6e
    ld a, a                                       ; $57d4: $7f
    xor l                                         ; $57d5: $ad
    rst $38                                       ; $57d6: $ff
    ld c, [hl]                                    ; $57d7: $4e
    ld a, a                                       ; $57d8: $7f
    ld [bc], a                                    ; $57d9: $02
    ccf                                           ; $57da: $3f
    ld [bc], a                                    ; $57db: $02
    nop                                           ; $57dc: $00
    sbc h                                         ; $57dd: $9c
    jp z, $42fe                                   ; $57de: $ca $fe $42

    cp $d6                                        ; $57e1: $fe $d6
    cp $52                                        ; $57e3: $fe $52
    cp $e2                                        ; $57e5: $fe $e2
    cp $e6                                        ; $57e7: $fe $e6
    cp $ea                                        ; $57e9: $fe $ea
    sbc $ee                                       ; $57eb: $de $ee
    cp $6e                                        ; $57ed: $fe $6e
    cp $f6                                        ; $57ef: $fe $f6
    cp $76                                        ; $57f1: $fe $76
    cp $b7                                        ; $57f3: $fe $b7
    rst $38                                       ; $57f5: $ff
    ld [hl], l                                    ; $57f6: $75
    rst $38                                       ; $57f7: $ff
    ld a, [c]                                     ; $57f8: $f2
    cp $02                                        ; $57f9: $fe $02
    adc h                                         ; $57fb: $8c
    ld [bc], a                                    ; $57fc: $02
    nop                                           ; $57fd: $00
    sbc h                                         ; $57fe: $9c
    ld [$0c0f], sp                                ; $57ff: $08 $0f $0c
    rrca                                          ; $5802: $0f
    ld [$080f], sp                                ; $5803: $08 $0f $08
    rrca                                          ; $5806: $0f
    add hl, bc                                    ; $5807: $09
    rrca                                          ; $5808: $0f
    ld [$090f], sp                                ; $5809: $08 $0f $09
    rrca                                          ; $580c: $0f
    db $10                                        ; $580d: $10
    rra                                           ; $580e: $1f
    ld de, $1a1f                                  ; $580f: $11 $1f $1a
    rra                                           ; $5812: $1f
    dec [hl]                                      ; $5813: $35
    ccf                                           ; $5814: $3f
    ld a, e                                       ; $5815: $7b
    ld a, a                                       ; $5816: $7f
    sbc a                                         ; $5817: $9f
    rst $38                                       ; $5818: $ff
    ret nz                                        ; $5819: $c0

    rst $38                                       ; $581a: $ff
    ld [bc], a                                    ; $581b: $02
    ccf                                           ; $581c: $3f
    ld [bc], a                                    ; $581d: $02
    nop                                           ; $581e: $00
    sbc c                                         ; $581f: $99
    ld b, h                                       ; $5820: $44
    ld a, h                                       ; $5821: $7c
    inc c                                         ; $5822: $0c
    ld a, h                                       ; $5823: $7c
    inc c                                         ; $5824: $0c
    ld a, h                                       ; $5825: $7c
    inc c                                         ; $5826: $0c
    ld a, h                                       ; $5827: $7c
    ld c, h                                       ; $5828: $4c
    ld a, h                                       ; $5829: $7c
    inc e                                         ; $582a: $1c
    ld a, h                                       ; $582b: $7c
    jr jr_0e3_58a6                                ; $582c: $18 $78

    jr jr_0e3_58a8                                ; $582e: $18 $78

    inc [hl]                                      ; $5830: $34
    ld a, h                                       ; $5831: $7c
    inc l                                         ; $5832: $2c
    ld a, h                                       ; $5833: $7c
    inc [hl]                                      ; $5834: $34
    ld a, h                                       ; $5835: $7c
    inc l                                         ; $5836: $2c
    ld a, h                                       ; $5837: $7c
    ld [hl], a                                    ; $5838: $77
    inc bc                                        ; $5839: $03
    ld a, a                                       ; $583a: $7f
    inc b                                         ; $583b: $04
    nop                                           ; $583c: $00
    sbc h                                         ; $583d: $9c
    ret z                                         ; $583e: $c8

    db $fc                                        ; $583f: $fc
    rst $00                                       ; $5840: $c7
    rst $38                                       ; $5841: $ff
    jp nz, $80ff                                  ; $5842: $c2 $ff $80

    rst $38                                       ; $5845: $ff
    add b                                         ; $5846: $80
    rst $38                                       ; $5847: $ff
    add b                                         ; $5848: $80
    rst $38                                       ; $5849: $ff
    add b                                         ; $584a: $80
    rst $38                                       ; $584b: $ff
    add b                                         ; $584c: $80
    rst $38                                       ; $584d: $ff
    add b                                         ; $584e: $80
    rst $38                                       ; $584f: $ff
    adc h                                         ; $5850: $8c
    rst $38                                       ; $5851: $ff
    and d                                         ; $5852: $a2
    rst $38                                       ; $5853: $ff
    add b                                         ; $5854: $80
    rst $38                                       ; $5855: $ff
    add b                                         ; $5856: $80
    rst $38                                       ; $5857: $ff
    call c, Call_000_02ff                         ; $5858: $dc $ff $02
    ld a, a                                       ; $585b: $7f
    ld [bc], a                                    ; $585c: $02
    nop                                           ; $585d: $00
    sbc d                                         ; $585e: $9a
    ld h, d                                       ; $585f: $62
    ld a, [hl]                                    ; $5860: $7e
    ld d, d                                       ; $5861: $52
    ld a, [hl]                                    ; $5862: $7e
    ld a, [bc]                                    ; $5863: $0a
    ld a, [hl]                                    ; $5864: $7e
    ld [bc], a                                    ; $5865: $02
    ld a, [hl]                                    ; $5866: $7e
    ld d, $7e                                     ; $5867: $16 $7e
    ld d, $7e                                     ; $5869: $16 $7e
    ld h, $7e                                     ; $586b: $26 $7e
    ld c, $7e                                     ; $586d: $0e $7e
    ld c, $7e                                     ; $586f: $0e $7e
    dec bc                                        ; $5871: $0b
    ld a, a                                       ; $5872: $7f
    dec bc                                        ; $5873: $0b
    ld a, a                                       ; $5874: $7f
    ld bc, $1f7f                                  ; $5875: $01 $7f $1f
    ld a, a                                       ; $5878: $7f
    ld [bc], a                                    ; $5879: $02
    ld h, b                                       ; $587a: $60
    inc b                                         ; $587b: $04
    nop                                           ; $587c: $00
    inc b                                         ; $587d: $04
    add b                                         ; $587e: $80
    cp b                                          ; $587f: $b8
    add h                                         ; $5880: $84
    db $fc                                        ; $5881: $fc
    adc e                                         ; $5882: $8b
    rst $38                                       ; $5883: $ff
    xor l                                         ; $5884: $ad
    rst $38                                       ; $5885: $ff
    xor d                                         ; $5886: $aa
    rst $38                                       ; $5887: $ff
    xor a                                         ; $5888: $af
    rst $38                                       ; $5889: $ff
    rst $08                                       ; $588a: $cf
    rst $38                                       ; $588b: $ff
    push de                                       ; $588c: $d5
    rst $38                                       ; $588d: $ff
    db $db                                        ; $588e: $db
    rst $38                                       ; $588f: $ff
    push de                                       ; $5890: $d5
    rst $38                                       ; $5891: $ff
    db $db                                        ; $5892: $db
    rst $38                                       ; $5893: $ff
    pop de                                        ; $5894: $d1
    rst $38                                       ; $5895: $ff
    jp c, $d1ff                                   ; $5896: $da $ff $d1

    rst $38                                       ; $5899: $ff
    cp d                                          ; $589a: $ba
    rst $38                                       ; $589b: $ff
    ld b, d                                       ; $589c: $42
    ld a, [hl]                                    ; $589d: $7e
    ld c, d                                       ; $589e: $4a
    ld a, [hl]                                    ; $589f: $7e
    ld b, [hl]                                    ; $58a0: $46
    ld a, [hl]                                    ; $58a1: $7e
    ld h, d                                       ; $58a2: $62
    ld a, [hl]                                    ; $58a3: $7e
    ld [hl], d                                    ; $58a4: $72
    ld a, [hl]                                    ; $58a5: $7e

jr_0e3_58a6:
    halt                                          ; $58a6: $76
    ld e, [hl]                                    ; $58a7: $5e

jr_0e3_58a8:
    halt                                          ; $58a8: $76
    ld l, [hl]                                    ; $58a9: $6e
    halt                                          ; $58aa: $76
    ld a, [hl]                                    ; $58ab: $7e
    halt                                          ; $58ac: $76
    ld a, [hl]                                    ; $58ad: $7e
    halt                                          ; $58ae: $76

jr_0e3_58af:
    ld a, [hl]                                    ; $58af: $7e
    ld l, [hl]                                    ; $58b0: $6e
    ld a, [hl]                                    ; $58b1: $7e
    ld h, l                                       ; $58b2: $65
    ld a, a                                       ; $58b3: $7f
    ld [hl], l                                    ; $58b4: $75
    ld a, a                                       ; $58b5: $7f
    ld a, [c]                                     ; $58b6: $f2
    cp $02                                        ; $58b7: $fe $02
    sbc h                                         ; $58b9: $9c
    ld [bc], a                                    ; $58ba: $02
    nop                                           ; $58bb: $00
    add d                                         ; $58bc: $82
    ld e, [hl]                                    ; $58bd: $5e
    ld a, a                                       ; $58be: $7f
    ld [bc], a                                    ; $58bf: $02
    cpl                                           ; $58c0: $2f
    inc e                                         ; $58c1: $1c
    nop                                           ; $58c2: $00
    rst $38                                       ; $58c3: $ff
    daa                                           ; $58c4: $27
    ld de, $08f9                                  ; $58c5: $11 $f9 $08
    ld a, [c]                                     ; $58c8: $f2
    ld bc, $7adf                                  ; $58c9: $01 $df $7a
    rst $18                                       ; $58cc: $df
    add b                                         ; $58cd: $80
    rst $18                                       ; $58ce: $df
    sub h                                         ; $58cf: $94
    ldh [$98], a                                  ; $58d0: $e0 $98
    rst $18                                       ; $58d2: $df
    xor h                                         ; $58d3: $ac
    ldh [$b1], a                                  ; $58d4: $e0 $b1
    db $e3                                        ; $58d6: $e3
    ei                                            ; $58d7: $fb
    db $e4                                        ; $58d8: $e4
    nop                                           ; $58d9: $00
    rst $28                                       ; $58da: $ef
    ld a, c                                       ; $58db: $79
    rst $28                                       ; $58dc: $ef
    add c                                         ; $58dd: $81
    rst $28                                       ; $58de: $ef
    sub b                                         ; $58df: $90
    ldh a, [$96]                                  ; $58e0: $f0 $96
    rst $28                                       ; $58e2: $ef
    xor d                                         ; $58e3: $aa
    ldh a, [$b2]                                  ; $58e4: $f0 $b2
    ldh a, [$fa]                                  ; $58e6: $f0 $fa
    db $f4                                        ; $58e8: $f4
    ld bc, $f9ff                                  ; $58e9: $01 $ff $f9
    ld [bc], a                                    ; $58ec: $02
    rlca                                          ; $58ed: $07
    adc h                                         ; $58ee: $8c
    ld a, [bc]                                    ; $58ef: $0a
    rrca                                          ; $58f0: $0f
    inc e                                         ; $58f1: $1c
    rra                                           ; $58f2: $1f
    inc e                                         ; $58f3: $1c
    rra                                           ; $58f4: $1f
    jr c, jr_0e3_5936                             ; $58f5: $38 $3f

    dec a                                         ; $58f7: $3d
    ccf                                           ; $58f8: $3f
    cpl                                           ; $58f9: $2f
    ccf                                           ; $58fa: $3f
    ld [bc], a                                    ; $58fb: $02
    ld a, a                                       ; $58fc: $7f
    sub b                                         ; $58fd: $90
    ld e, a                                       ; $58fe: $5f
    ld [hl], d                                    ; $58ff: $72
    ld e, a                                       ; $5900: $5f
    ld a, e                                       ; $5901: $7b
    ld l, a                                       ; $5902: $6f
    ld a, h                                       ; $5903: $7c
    dec [hl]                                      ; $5904: $35
    ccf                                           ; $5905: $3f
    ld l, a                                       ; $5906: $6f
    ld a, a                                       ; $5907: $7f
    ld c, a                                       ; $5908: $4f
    ld a, a                                       ; $5909: $7f
    db $db                                        ; $590a: $db
    rst $38                                       ; $590b: $ff
    sub a                                         ; $590c: $97
    rst $38                                       ; $590d: $ff
    ld [bc], a                                    ; $590e: $02
    jr nz, jr_0e3_58af                            ; $590f: $20 $9e

    db $10                                        ; $5911: $10
    jr nc, jr_0e3_591c                            ; $5912: $30 $08

    jr c, jr_0e3_591a                             ; $5914: $38 $04

    inc a                                         ; $5916: $3c
    inc [hl]                                      ; $5917: $34
    inc a                                         ; $5918: $3c
    inc [hl]                                      ; $5919: $34

jr_0e3_591a:
    inc a                                         ; $591a: $3c
    inc [hl]                                      ; $591b: $34

jr_0e3_591c:
    inc a                                         ; $591c: $3c
    ld a, [hl-]                                   ; $591d: $3a
    ld e, $3a                                     ; $591e: $1e $3a
    ld c, $3a                                     ; $5920: $0e $3a
    ld e, $36                                     ; $5922: $1e $36
    ld a, $0c                                     ; $5924: $3e $0c
    inc a                                         ; $5926: $3c
    ld [hl], $3e                                  ; $5927: $36 $3e
    ld [hl-], a                                   ; $5929: $32
    ld a, $1b                                     ; $592a: $3e $1b
    ccf                                           ; $592c: $3f
    add hl, hl                                    ; $592d: $29
    ccf                                           ; $592e: $3f
    ld [bc], a                                    ; $592f: $02
    ld c, $94                                     ; $5930: $0e $94
    add hl, de                                    ; $5932: $19
    rra                                           ; $5933: $1f
    db $10                                        ; $5934: $10
    rra                                           ; $5935: $1f

jr_0e3_5936:
    jr nz, jr_0e3_5977                            ; $5936: $20 $3f

    inc [hl]                                      ; $5938: $34
    ccf                                           ; $5939: $3f
    jr z, jr_0e3_597b                             ; $593a: $28 $3f

    ld d, h                                       ; $593c: $54
    ld a, a                                       ; $593d: $7f
    ld h, b                                       ; $593e: $60
    ld a, a                                       ; $593f: $7f
    add c                                         ; $5940: $81
    rst $38                                       ; $5941: $ff
    jp Jump_0e3_63ff                              ; $5942: $c3 $ff $63


    ld a, [hl]                                    ; $5945: $7e
    ld [bc], a                                    ; $5946: $02
    ld a, a                                       ; $5947: $7f
    adc b                                         ; $5948: $88
    ld h, a                                       ; $5949: $67
    ld a, a                                       ; $594a: $7f
    ret c                                         ; $594b: $d8

    rst $38                                       ; $594c: $ff
    db $e3                                        ; $594d: $e3
    rst $38                                       ; $594e: $ff
    jp nz, Jump_000_02ff                          ; $594f: $c2 $ff $02

    ld [$0488], sp                                ; $5952: $08 $88 $04
    inc c                                         ; $5955: $0c
    ld [bc], a                                    ; $5956: $02
    ld c, $0a                                     ; $5957: $0e $0a
    ld c, $0d                                     ; $5959: $0e $0d
    rrca                                          ; $595b: $0f
    ld [bc], a                                    ; $595c: $02
    ld c, $02                                     ; $595d: $0e $02
    inc c                                         ; $595f: $0c
    add h                                         ; $5960: $84
    ld c, $06                                     ; $5961: $0e $06
    inc c                                         ; $5963: $0c
    inc b                                         ; $5964: $04
    ld [bc], a                                    ; $5965: $02
    ld [$0002], sp                                ; $5966: $08 $02 $00
    inc b                                         ; $5969: $04

jr_0e3_596a:
    ld [$0481], sp                                ; $596a: $08 $81 $04
    inc bc                                        ; $596d: $03
    inc c                                         ; $596e: $0c
    add d                                         ; $596f: $82
    jr z, jr_0e3_596a                             ; $5970: $28 $f8

    ld [bc], a                                    ; $5972: $02
    rrca                                          ; $5973: $0f
    sub c                                         ; $5974: $91
    db $10                                        ; $5975: $10
    rra                                           ; $5976: $1f

jr_0e3_5977:
    jr nz, jr_0e3_59b8                            ; $5977: $20 $3f

    ld d, b                                       ; $5979: $50
    ld a, a                                       ; $597a: $7f

jr_0e3_597b:
    ld h, b                                       ; $597b: $60
    ld a, a                                       ; $597c: $7f
    ld d, b                                       ; $597d: $50
    ld a, a                                       ; $597e: $7f
    ld l, d                                       ; $597f: $6a
    ld a, a                                       ; $5980: $7f
    ret nc                                        ; $5981: $d0

    rst $38                                       ; $5982: $ff
    and b                                         ; $5983: $a0
    rst $38                                       ; $5984: $ff
    ld hl, sp+$03                                 ; $5985: $f8 $03
    rst $38                                       ; $5987: $ff
    adc d                                         ; $5988: $8a
    ld h, [hl]                                    ; $5989: $66
    ld a, a                                       ; $598a: $7f
    ld e, [hl]                                    ; $598b: $5e
    ld a, a                                       ; $598c: $7f
    and d                                         ; $598d: $a2
    rst $38                                       ; $598e: $ff
    or b                                          ; $598f: $b0
    rst $38                                       ; $5990: $ff
    sbc h                                         ; $5991: $9c
    rst $38                                       ; $5992: $ff
    ld [bc], a                                    ; $5993: $02
    db $10                                        ; $5994: $10
    sub e                                         ; $5995: $93
    ld [$0818], sp                                ; $5996: $08 $18 $08
    jr jr_0e3_599f                                ; $5999: $18 $04

    inc e                                         ; $599b: $1c
    inc b                                         ; $599c: $04
    inc e                                         ; $599d: $1c
    inc b                                         ; $599e: $04

jr_0e3_599f:
    inc e                                         ; $599f: $1c
    ld [bc], a                                    ; $59a0: $02
    ld e, $0a                                     ; $59a1: $1e $0a
    ld e, $1a                                     ; $59a3: $1e $1a
    ld e, $12                                     ; $59a5: $1e $12
    ld e, $0c                                     ; $59a7: $1e $0c
    inc bc                                        ; $59a9: $03
    inc e                                         ; $59aa: $1c
    adc b                                         ; $59ab: $88
    ld a, [bc]                                    ; $59ac: $0a
    ld e, $12                                     ; $59ad: $1e $12
    ld e, $02                                     ; $59af: $1e $02
    ld e, $03                                     ; $59b1: $1e $03
    rst $38                                       ; $59b3: $ff
    ld [bc], a                                    ; $59b4: $02
    rrca                                          ; $59b5: $0f
    adc d                                         ; $59b6: $8a
    inc d                                         ; $59b7: $14

jr_0e3_59b8:
    rra                                           ; $59b8: $1f
    jr c, jr_0e3_59fa                             ; $59b9: $38 $3f

    jr c, jr_0e3_59fc                             ; $59bb: $38 $3f

    ld [hl], c                                    ; $59bd: $71
    ld a, a                                       ; $59be: $7f
    ld e, a                                       ; $59bf: $5f
    ld a, a                                       ; $59c0: $7f
    ld [bc], a                                    ; $59c1: $02
    rst $38                                       ; $59c2: $ff
    sub d                                         ; $59c3: $92
    cp a                                          ; $59c4: $bf
    cp $bf                                        ; $59c5: $fe $bf
    db $e4                                        ; $59c7: $e4
    cp a                                          ; $59c8: $bf
    or $5f                                        ; $59c9: $f6 $5f
    ld a, c                                       ; $59cb: $79
    ld a, e                                       ; $59cc: $7b
    ld a, a                                       ; $59cd: $7f
    rst $18                                       ; $59ce: $df
    rst $38                                       ; $59cf: $ff
    sbc a                                         ; $59d0: $9f
    rst $38                                       ; $59d1: $ff
    ld [hl], $ff                                  ; $59d2: $36 $ff
    ld l, a                                       ; $59d4: $6f
    rst $38                                       ; $59d5: $ff
    ld [bc], a                                    ; $59d6: $02
    db $10                                        ; $59d7: $10
    cp h                                          ; $59d8: $bc
    ld [$1418], sp                                ; $59d9: $08 $18 $14
    inc e                                         ; $59dc: $1c
    inc d                                         ; $59dd: $14
    inc e                                         ; $59de: $1c
    inc d                                         ; $59df: $14
    inc e                                         ; $59e0: $1c
    ld [de], a                                    ; $59e1: $12
    ld e, $1a                                     ; $59e2: $1e $1a
    ld e, $1a                                     ; $59e4: $1e $1a
    ld c, $1a                                     ; $59e6: $0e $1a
    ld e, $14                                     ; $59e8: $1e $14
    inc e                                         ; $59ea: $1c
    inc c                                         ; $59eb: $0c
    inc e                                         ; $59ec: $1c
    ld d, $1e                                     ; $59ed: $16 $1e
    ld [de], a                                    ; $59ef: $12
    ld e, $19                                     ; $59f0: $1e $19
    rra                                           ; $59f2: $1f
    add hl, bc                                    ; $59f3: $09
    rra                                           ; $59f4: $1f
    ld h, l                                       ; $59f5: $65
    rst $38                                       ; $59f6: $ff
    ld d, d                                       ; $59f7: $52
    ld a, a                                       ; $59f8: $7f
    ld b, e                                       ; $59f9: $43

jr_0e3_59fa:
    ld a, a                                       ; $59fa: $7f
    ld b, [hl]                                    ; $59fb: $46

jr_0e3_59fc:
    ld a, a                                       ; $59fc: $7f
    ld b, l                                       ; $59fd: $45
    ld a, a                                       ; $59fe: $7f
    ld d, a                                       ; $59ff: $57
    ld a, a                                       ; $5a00: $7f
    ld h, a                                       ; $5a01: $67
    ld a, a                                       ; $5a02: $7f
    ld l, a                                       ; $5a03: $6f
    ld a, a                                       ; $5a04: $7f
    ld c, a                                       ; $5a05: $4f
    ld a, a                                       ; $5a06: $7f
    ld l, [hl]                                    ; $5a07: $6e
    ld a, a                                       ; $5a08: $7f
    ld l, a                                       ; $5a09: $6f
    ld a, a                                       ; $5a0a: $7f
    ld l, [hl]                                    ; $5a0b: $6e
    ld a, a                                       ; $5a0c: $7f
    ld l, l                                       ; $5a0d: $6d
    ld a, a                                       ; $5a0e: $7f
    xor [hl]                                      ; $5a0f: $ae
    rst $38                                       ; $5a10: $ff
    xor l                                         ; $5a11: $ad
    rst $38                                       ; $5a12: $ff
    ld c, a                                       ; $5a13: $4f
    ld a, a                                       ; $5a14: $7f
    ld [bc], a                                    ; $5a15: $02
    ccf                                           ; $5a16: $3f
    sbc [hl]                                      ; $5a17: $9e
    jp z, $42fe                                   ; $5a18: $ca $fe $42

    cp $e2                                        ; $5a1b: $fe $e2
    cp $6a                                        ; $5a1d: $fe $6a
    cp $ea                                        ; $5a1f: $fe $ea
    cp $ea                                        ; $5a21: $fe $ea
    cp $e2                                        ; $5a23: $fe $e2
    cp $62                                        ; $5a25: $fe $62
    cp $b6                                        ; $5a27: $fe $b6
    cp $36                                        ; $5a29: $fe $36
    cp $96                                        ; $5a2b: $fe $96
    cp $16                                        ; $5a2d: $fe $16
    cp $b6                                        ; $5a2f: $fe $b6
    cp $77                                        ; $5a31: $fe $77
    rst $38                                       ; $5a33: $ff
    ld a, [c]                                     ; $5a34: $f2
    cp $02                                        ; $5a35: $fe $02
    adc h                                         ; $5a37: $8c
    sbc [hl]                                      ; $5a38: $9e
    inc c                                         ; $5a39: $0c
    rrca                                          ; $5a3a: $0f
    inc c                                         ; $5a3b: $0c
    rrca                                          ; $5a3c: $0f
    ld [$0c0f], sp                                ; $5a3d: $08 $0f $0c
    rrca                                          ; $5a40: $0f
    ld [$0c0f], sp                                ; $5a41: $08 $0f $0c
    rrca                                          ; $5a44: $0f
    jr jr_0e3_5a66                                ; $5a45: $18 $1f

    ld de, $101f                                  ; $5a47: $11 $1f $10
    rra                                           ; $5a4a: $1f
    ld de, $121f                                  ; $5a4b: $11 $1f $12
    rra                                           ; $5a4e: $1f
    ld sp, $6b3f                                  ; $5a4f: $31 $3f $6b
    ld a, a                                       ; $5a52: $7f
    sub a                                         ; $5a53: $97
    rst $38                                       ; $5a54: $ff
    ret nz                                        ; $5a55: $c0

    rst $38                                       ; $5a56: $ff
    ld [bc], a                                    ; $5a57: $02
    ccf                                           ; $5a58: $3f
    sbc e                                         ; $5a59: $9b
    ld [de], a                                    ; $5a5a: $12
    ld a, $36                                     ; $5a5b: $3e $36
    ld a, $06                                     ; $5a5d: $3e $06
    ld a, $06                                     ; $5a5f: $3e $06
    ld a, $04                                     ; $5a61: $3e $04
    inc a                                         ; $5a63: $3c
    ld h, $3e                                     ; $5a64: $26 $3e

jr_0e3_5a66:
    ld c, $3e                                     ; $5a66: $0e $3e
    ld a, [hl+]                                   ; $5a68: $2a
    ld a, $0d                                     ; $5a69: $3e $0d
    ccf                                           ; $5a6b: $3f
    dec hl                                        ; $5a6c: $2b
    ccf                                           ; $5a6d: $3f
    dec c                                         ; $5a6e: $0d
    ccf                                           ; $5a6f: $3f
    ld l, $3e                                     ; $5a70: $2e $3e
    inc l                                         ; $5a72: $2c
    inc a                                         ; $5a73: $3c
    inc d                                         ; $5a74: $14
    inc bc                                        ; $5a75: $03
    inc a                                         ; $5a76: $3c
    ld [bc], a                                    ; $5a77: $02
    nop                                           ; $5a78: $00
    sbc [hl]                                      ; $5a79: $9e
    ld b, b                                       ; $5a7a: $40
    ld a, [hl]                                    ; $5a7b: $7e
    ld c, d                                       ; $5a7c: $4a
    ld a, a                                       ; $5a7d: $7f
    ld b, c                                       ; $5a7e: $41
    ld a, a                                       ; $5a7f: $7f
    ld d, b                                       ; $5a80: $50
    ld a, a                                       ; $5a81: $7f
    ld b, b                                       ; $5a82: $40
    ld a, a                                       ; $5a83: $7f
    ld d, b                                       ; $5a84: $50
    ld a, a                                       ; $5a85: $7f
    ld b, b                                       ; $5a86: $40
    ld a, a                                       ; $5a87: $7f
    ld b, b                                       ; $5a88: $40
    ld a, a                                       ; $5a89: $7f
    ld b, b                                       ; $5a8a: $40
    ld a, a                                       ; $5a8b: $7f
    ld b, b                                       ; $5a8c: $40
    ld a, a                                       ; $5a8d: $7f
    ld c, b                                       ; $5a8e: $48
    ld a, a                                       ; $5a8f: $7f
    jp nz, $c0ff                                  ; $5a90: $c2 $ff $c0

    rst $38                                       ; $5a93: $ff
    add b                                         ; $5a94: $80
    rst $38                                       ; $5a95: $ff
    ld h, b                                       ; $5a96: $60
    ld a, a                                       ; $5a97: $7f
    ld [bc], a                                    ; $5a98: $02
    rra                                           ; $5a99: $1f
    sbc h                                         ; $5a9a: $9c
    and [hl]                                      ; $5a9b: $a6
    cp $46                                        ; $5a9c: $fe $46
    cp $02                                        ; $5a9e: $fe $02
    cp $02                                        ; $5aa0: $fe $02
    cp $02                                        ; $5aa2: $fe $02
    cp $02                                        ; $5aa4: $fe $02
    cp $16                                        ; $5aa6: $fe $16
    cp $06                                        ; $5aa8: $fe $06
    cp $16                                        ; $5aaa: $fe $16
    cp $06                                        ; $5aac: $fe $06
    cp $26                                        ; $5aae: $fe $26
    cp $0b                                        ; $5ab0: $fe $0b
    rst $38                                       ; $5ab2: $ff
    inc bc                                        ; $5ab3: $03
    rst $38                                       ; $5ab4: $ff
    rra                                           ; $5ab5: $1f
    rst $38                                       ; $5ab6: $ff
    ld [bc], a                                    ; $5ab7: $02
    ld hl, sp+$02                                 ; $5ab8: $f8 $02
    nop                                           ; $5aba: $00
    ld b, $80                                     ; $5abb: $06 $80
    or h                                          ; $5abd: $b4
    add h                                         ; $5abe: $84
    db $fc                                        ; $5abf: $fc
    adc d                                         ; $5ac0: $8a
    rst $38                                       ; $5ac1: $ff
    adc l                                         ; $5ac2: $8d
    rst $38                                       ; $5ac3: $ff
    xor d                                         ; $5ac4: $aa
    rst $38                                       ; $5ac5: $ff
    xor a                                         ; $5ac6: $af
    rst $38                                       ; $5ac7: $ff
    xor a                                         ; $5ac8: $af
    rst $38                                       ; $5ac9: $ff
    db $db                                        ; $5aca: $db
    rst $38                                       ; $5acb: $ff
    db $dd                                        ; $5acc: $dd
    rst $38                                       ; $5acd: $ff
    jp c, $ddff                                   ; $5ace: $da $ff $dd

    rst $38                                       ; $5ad1: $ff
    jp c, $ddff                                   ; $5ad2: $da $ff $dd

    rst $38                                       ; $5ad5: $ff
    ld e, d                                       ; $5ad6: $5a
    rst $38                                       ; $5ad7: $ff
    ld b, d                                       ; $5ad8: $42
    ld a, [hl]                                    ; $5ad9: $7e
    ld d, [hl]                                    ; $5ada: $56
    ld a, [hl]                                    ; $5adb: $7e
    ld d, d                                       ; $5adc: $52
    ld a, [hl]                                    ; $5add: $7e
    ld h, d                                       ; $5ade: $62
    ld a, [hl]                                    ; $5adf: $7e
    ld h, [hl]                                    ; $5ae0: $66
    ld a, [hl]                                    ; $5ae1: $7e
    ld l, d                                       ; $5ae2: $6a
    ld e, [hl]                                    ; $5ae3: $5e
    ld l, [hl]                                    ; $5ae4: $6e
    ld a, [hl]                                    ; $5ae5: $7e
    ld l, [hl]                                    ; $5ae6: $6e
    ld a, [hl]                                    ; $5ae7: $7e
    halt                                          ; $5ae8: $76
    ld a, [hl]                                    ; $5ae9: $7e
    halt                                          ; $5aea: $76
    ld a, [hl]                                    ; $5aeb: $7e
    scf                                           ; $5aec: $37
    ld a, a                                       ; $5aed: $7f
    ld [hl], l                                    ; $5aee: $75

jr_0e3_5aef:
    ld a, a                                       ; $5aef: $7f
    ld a, [c]                                     ; $5af0: $f2
    cp $02                                        ; $5af1: $fe $02
    adc h                                         ; $5af3: $8c
    inc b                                         ; $5af4: $04
    nop                                           ; $5af5: $00
    ld [bc], a                                    ; $5af6: $02
    add b                                         ; $5af7: $80
    add d                                         ; $5af8: $82
    ld c, [hl]                                    ; $5af9: $4e
    ld a, a                                       ; $5afa: $7f
    ld [bc], a                                    ; $5afb: $02
    ccf                                           ; $5afc: $3f
    ld a, [de]                                    ; $5afd: $1a
    nop                                           ; $5afe: $00
    rst $38                                       ; $5aff: $ff
    dec c                                         ; $5b00: $0d
    inc b                                         ; $5b01: $04
    ld sp, hl                                     ; $5b02: $f9
    ld [$01f2], sp                                ; $5b03: $08 $f2 $01
    ld [c], a                                     ; $5b06: $e2
    ld a, [$00e2]                                 ; $5b07: $fa $e2 $00
    ld a, [c]                                     ; $5b0a: $f2
    ld sp, hl                                     ; $5b0b: $f9
    ld a, [c]                                     ; $5b0c: $f2
    ld bc, $0702                                  ; $5b0d: $01 $02 $07
    adc h                                         ; $5b10: $8c
    ld a, [bc]                                    ; $5b11: $0a
    rrca                                          ; $5b12: $0f
    inc e                                         ; $5b13: $1c
    rra                                           ; $5b14: $1f
    inc e                                         ; $5b15: $1c
    rra                                           ; $5b16: $1f
    jr c, jr_0e3_5b58                             ; $5b17: $38 $3f

    dec a                                         ; $5b19: $3d
    ccf                                           ; $5b1a: $3f
    cpl                                           ; $5b1b: $2f
    ccf                                           ; $5b1c: $3f
    ld [bc], a                                    ; $5b1d: $02
    ld a, a                                       ; $5b1e: $7f
    sub b                                         ; $5b1f: $90
    ld e, a                                       ; $5b20: $5f
    ld [hl], d                                    ; $5b21: $72
    ld e, a                                       ; $5b22: $5f
    ld a, e                                       ; $5b23: $7b
    ld l, a                                       ; $5b24: $6f
    ld a, h                                       ; $5b25: $7c
    dec [hl]                                      ; $5b26: $35
    ccf                                           ; $5b27: $3f
    ld l, a                                       ; $5b28: $6f
    ld a, a                                       ; $5b29: $7f
    ld c, a                                       ; $5b2a: $4f
    ld a, a                                       ; $5b2b: $7f
    db $db                                        ; $5b2c: $db
    rst $38                                       ; $5b2d: $ff
    sub a                                         ; $5b2e: $97
    rst $38                                       ; $5b2f: $ff
    ld [bc], a                                    ; $5b30: $02
    jr nz, jr_0e3_5aef                            ; $5b31: $20 $bc

    db $10                                        ; $5b33: $10
    jr nc, jr_0e3_5b3e                            ; $5b34: $30 $08

    jr c, jr_0e3_5b3c                             ; $5b36: $38 $04

    inc a                                         ; $5b38: $3c
    inc [hl]                                      ; $5b39: $34
    inc a                                         ; $5b3a: $3c
    inc [hl]                                      ; $5b3b: $34

jr_0e3_5b3c:
    inc a                                         ; $5b3c: $3c
    inc [hl]                                      ; $5b3d: $34

jr_0e3_5b3e:
    inc a                                         ; $5b3e: $3c
    ld a, [hl-]                                   ; $5b3f: $3a
    ld e, $3a                                     ; $5b40: $1e $3a
    ld c, $3a                                     ; $5b42: $0e $3a
    ld e, $36                                     ; $5b44: $1e $36
    ld a, $0c                                     ; $5b46: $3e $0c
    inc a                                         ; $5b48: $3c
    ld [hl], $3e                                  ; $5b49: $36 $3e
    ld [hl-], a                                   ; $5b4b: $32
    ld a, $1b                                     ; $5b4c: $3e $1b
    ccf                                           ; $5b4e: $3f
    add hl, hl                                    ; $5b4f: $29
    ccf                                           ; $5b50: $3f
    ld d, d                                       ; $5b51: $52
    ld a, a                                       ; $5b52: $7f
    ld b, e                                       ; $5b53: $43
    ld a, a                                       ; $5b54: $7f
    ld b, [hl]                                    ; $5b55: $46
    ld a, a                                       ; $5b56: $7f
    ld b, l                                       ; $5b57: $45

jr_0e3_5b58:
    ld a, a                                       ; $5b58: $7f
    ld d, a                                       ; $5b59: $57
    ld a, a                                       ; $5b5a: $7f
    ld h, a                                       ; $5b5b: $67
    ld a, a                                       ; $5b5c: $7f
    ld l, a                                       ; $5b5d: $6f
    ld a, a                                       ; $5b5e: $7f
    ld c, a                                       ; $5b5f: $4f
    ld a, a                                       ; $5b60: $7f
    ld l, [hl]                                    ; $5b61: $6e
    ld a, a                                       ; $5b62: $7f
    ld l, a                                       ; $5b63: $6f
    ld a, a                                       ; $5b64: $7f
    ld l, [hl]                                    ; $5b65: $6e
    ld a, a                                       ; $5b66: $7f
    ld l, l                                       ; $5b67: $6d
    ld a, a                                       ; $5b68: $7f
    xor [hl]                                      ; $5b69: $ae
    rst $38                                       ; $5b6a: $ff
    xor l                                         ; $5b6b: $ad
    rst $38                                       ; $5b6c: $ff
    ld c, a                                       ; $5b6d: $4f
    ld a, a                                       ; $5b6e: $7f
    ld [bc], a                                    ; $5b6f: $02
    ccf                                           ; $5b70: $3f
    sbc [hl]                                      ; $5b71: $9e
    jp z, $42fe                                   ; $5b72: $ca $fe $42

    cp $e2                                        ; $5b75: $fe $e2
    cp $6a                                        ; $5b77: $fe $6a
    cp $ea                                        ; $5b79: $fe $ea
    cp $ea                                        ; $5b7b: $fe $ea
    cp $e2                                        ; $5b7d: $fe $e2
    cp $62                                        ; $5b7f: $fe $62
    cp $b6                                        ; $5b81: $fe $b6
    cp $36                                        ; $5b83: $fe $36
    cp $96                                        ; $5b85: $fe $96
    cp $16                                        ; $5b87: $fe $16
    cp $b6                                        ; $5b89: $fe $b6
    cp $77                                        ; $5b8b: $fe $77
    rst $38                                       ; $5b8d: $ff
    ld a, [c]                                     ; $5b8e: $f2
    cp $02                                        ; $5b8f: $fe $02
    adc h                                         ; $5b91: $8c
    rst $38                                       ; $5b92: $ff
    dec c                                         ; $5b93: $0d
    inc b                                         ; $5b94: $04
    ld sp, hl                                     ; $5b95: $f9
    ld [$01f2], sp                                ; $5b96: $08 $f2 $01
    ld [c], a                                     ; $5b99: $e2
    db $fd                                        ; $5b9a: $fd
    db $e3                                        ; $5b9b: $e3
    ld bc, $f9f2                                  ; $5b9c: $01 $f2 $f9
    ld a, [c]                                     ; $5b9f: $f2
    cp $02                                        ; $5ba0: $fe $02
    ld c, $94                                     ; $5ba2: $0e $94
    add hl, de                                    ; $5ba4: $19
    rra                                           ; $5ba5: $1f
    db $10                                        ; $5ba6: $10
    rra                                           ; $5ba7: $1f
    jr nz, jr_0e3_5be9                            ; $5ba8: $20 $3f

    inc [hl]                                      ; $5baa: $34
    ccf                                           ; $5bab: $3f
    jr z, @+$41                                   ; $5bac: $28 $3f

    ld d, h                                       ; $5bae: $54
    ld a, a                                       ; $5baf: $7f
    ld h, b                                       ; $5bb0: $60
    ld a, a                                       ; $5bb1: $7f
    add c                                         ; $5bb2: $81
    rst $38                                       ; $5bb3: $ff
    jp Jump_0e3_63ff                              ; $5bb4: $c3 $ff $63


    ld a, [hl]                                    ; $5bb7: $7e
    ld [bc], a                                    ; $5bb8: $02
    ld a, a                                       ; $5bb9: $7f
    adc b                                         ; $5bba: $88
    ld h, a                                       ; $5bbb: $67
    ld a, a                                       ; $5bbc: $7f
    ret c                                         ; $5bbd: $d8

    rst $38                                       ; $5bbe: $ff
    db $e3                                        ; $5bbf: $e3
    rst $38                                       ; $5bc0: $ff
    jp nc, Jump_000_02ff                          ; $5bc1: $d2 $ff $02

    ld [$0488], sp                                ; $5bc4: $08 $88 $04
    inc c                                         ; $5bc7: $0c
    ld [bc], a                                    ; $5bc8: $02
    ld c, $0a                                     ; $5bc9: $0e $0a
    ld c, $0d                                     ; $5bcb: $0e $0d
    rrca                                          ; $5bcd: $0f
    ld [bc], a                                    ; $5bce: $02
    ld c, $02                                     ; $5bcf: $0e $02
    inc c                                         ; $5bd1: $0c
    add h                                         ; $5bd2: $84
    ld c, $06                                     ; $5bd3: $0e $06
    inc c                                         ; $5bd5: $0c
    inc b                                         ; $5bd6: $04
    ld [bc], a                                    ; $5bd7: $02
    ld [$0002], sp                                ; $5bd8: $08 $02 $00
    inc b                                         ; $5bdb: $04

jr_0e3_5bdc:
    ld [$0481], sp                                ; $5bdc: $08 $81 $04
    inc bc                                        ; $5bdf: $03
    inc c                                         ; $5be0: $0c
    and b                                         ; $5be1: $a0
    jr z, jr_0e3_5bdc                             ; $5be2: $28 $f8

    ld c, $0f                                     ; $5be4: $0e $0f
    inc c                                         ; $5be6: $0c
    rrca                                          ; $5be7: $0f
    ld a, [bc]                                    ; $5be8: $0a

jr_0e3_5be9:
    rrca                                          ; $5be9: $0f
    inc c                                         ; $5bea: $0c
    rrca                                          ; $5beb: $0f
    ld [$0c0f], sp                                ; $5bec: $08 $0f $0c
    rrca                                          ; $5bef: $0f
    jr jr_0e3_5c11                                ; $5bf0: $18 $1f

    ld de, $101f                                  ; $5bf2: $11 $1f $10
    rra                                           ; $5bf5: $1f
    ld de, $121f                                  ; $5bf6: $11 $1f $12
    rra                                           ; $5bf9: $1f
    ld hl, $6b3f                                  ; $5bfa: $21 $3f $6b
    ld a, a                                       ; $5bfd: $7f
    sub a                                         ; $5bfe: $97
    rst $38                                       ; $5bff: $ff
    ret nz                                        ; $5c00: $c0

    rst $38                                       ; $5c01: $ff
    ld [bc], a                                    ; $5c02: $02
    ccf                                           ; $5c03: $3f
    ld [bc], a                                    ; $5c04: $02
    nop                                           ; $5c05: $00
    sbc e                                         ; $5c06: $9b
    add hl, bc                                    ; $5c07: $09
    rra                                           ; $5c08: $1f
    ld a, [bc]                                    ; $5c09: $0a
    ld e, $03                                     ; $5c0a: $1e $03
    rra                                           ; $5c0c: $1f
    inc bc                                        ; $5c0d: $03
    rra                                           ; $5c0e: $1f
    inc bc                                        ; $5c0f: $03
    rra                                           ; $5c10: $1f

jr_0e3_5c11:
    inc de                                        ; $5c11: $13
    rra                                           ; $5c12: $1f
    ld b, $1e                                     ; $5c13: $06 $1e
    ld d, $1e                                     ; $5c15: $16 $1e
    ld b, $1e                                     ; $5c17: $06 $1e
    ld d, $1e                                     ; $5c19: $16 $1e
    ld b, $1e                                     ; $5c1b: $06 $1e
    ld d, $1e                                     ; $5c1d: $16 $1e
    ld d, $1e                                     ; $5c1f: $16 $1e
    rrca                                          ; $5c21: $0f
    inc bc                                        ; $5c22: $03
    rra                                           ; $5c23: $1f
    rst $38                                       ; $5c24: $ff
    dec c                                         ; $5c25: $0d
    inc b                                         ; $5c26: $04
    ld sp, hl                                     ; $5c27: $f9
    ld [$01f2], sp                                ; $5c28: $08 $f2 $01
    ld [c], a                                     ; $5c2b: $e2
    db $fd                                        ; $5c2c: $fd
    db $e3                                        ; $5c2d: $e3
    ld bc, $faf2                                  ; $5c2e: $01 $f2 $fa
    ld a, [c]                                     ; $5c31: $f2
    ld bc, $0e02                                  ; $5c32: $01 $02 $0e
    sub h                                         ; $5c35: $94
    add hl, de                                    ; $5c36: $19
    rra                                           ; $5c37: $1f
    db $10                                        ; $5c38: $10
    rra                                           ; $5c39: $1f
    jr nz, @+$41                                  ; $5c3a: $20 $3f

    inc [hl]                                      ; $5c3c: $34
    ccf                                           ; $5c3d: $3f
    jr z, @+$41                                   ; $5c3e: $28 $3f

    ld d, h                                       ; $5c40: $54
    ld a, a                                       ; $5c41: $7f
    ld h, b                                       ; $5c42: $60
    ld a, a                                       ; $5c43: $7f
    add c                                         ; $5c44: $81
    rst $38                                       ; $5c45: $ff
    jp Jump_0e3_63ff                              ; $5c46: $c3 $ff $63


    ld a, [hl]                                    ; $5c49: $7e
    ld [bc], a                                    ; $5c4a: $02
    ld a, a                                       ; $5c4b: $7f
    adc b                                         ; $5c4c: $88
    ld h, a                                       ; $5c4d: $67
    ld a, a                                       ; $5c4e: $7f
    ret c                                         ; $5c4f: $d8

    rst $38                                       ; $5c50: $ff
    db $e3                                        ; $5c51: $e3
    rst $38                                       ; $5c52: $ff
    ld [c], a                                     ; $5c53: $e2
    rst $38                                       ; $5c54: $ff
    ld [bc], a                                    ; $5c55: $02
    ld [$0488], sp                                ; $5c56: $08 $88 $04
    inc c                                         ; $5c59: $0c
    ld [bc], a                                    ; $5c5a: $02
    ld c, $0a                                     ; $5c5b: $0e $0a
    ld c, $0d                                     ; $5c5d: $0e $0d
    rrca                                          ; $5c5f: $0f
    ld [bc], a                                    ; $5c60: $02
    ld c, $02                                     ; $5c61: $0e $02
    inc c                                         ; $5c63: $0c
    add h                                         ; $5c64: $84
    ld c, $06                                     ; $5c65: $0e $06
    inc c                                         ; $5c67: $0c
    inc b                                         ; $5c68: $04
    ld [bc], a                                    ; $5c69: $02
    ld [$0002], sp                                ; $5c6a: $08 $02 $00
    inc b                                         ; $5c6d: $04

jr_0e3_5c6e:
    ld [$0481], sp                                ; $5c6e: $08 $81 $04
    inc bc                                        ; $5c71: $03
    inc c                                         ; $5c72: $0c
    and b                                         ; $5c73: $a0
    jr z, jr_0e3_5c6e                             ; $5c74: $28 $f8

    ld a, [de]                                    ; $5c76: $1a
    ld e, $1c                                     ; $5c77: $1e $1c
    rra                                           ; $5c79: $1f
    jr jr_0e3_5c9b                                ; $5c7a: $18 $1f

    dec d                                         ; $5c7c: $15
    rra                                           ; $5c7d: $1f
    jr jr_0e3_5c9f                                ; $5c7e: $18 $1f

    ld [de], a                                    ; $5c80: $12
    rra                                           ; $5c81: $1f
    jr jr_0e3_5ca3                                ; $5c82: $18 $1f

    db $10                                        ; $5c84: $10
    rra                                           ; $5c85: $1f
    jr nz, jr_0e3_5cc7                            ; $5c86: $20 $3f

    ld hl, $223f                                  ; $5c88: $21 $3f $22
    ccf                                           ; $5c8b: $3f
    ld h, c                                       ; $5c8c: $61
    ld a, a                                       ; $5c8d: $7f
    ld [$95ff], a                                 ; $5c8e: $ea $ff $95
    rst $38                                       ; $5c91: $ff
    ret nz                                        ; $5c92: $c0

    rst $38                                       ; $5c93: $ff
    ld [bc], a                                    ; $5c94: $02
    ccf                                           ; $5c95: $3f
    ld [bc], a                                    ; $5c96: $02
    nop                                           ; $5c97: $00
    sbc h                                         ; $5c98: $9c
    jr z, @+$7a                                   ; $5c99: $28 $78

jr_0e3_5c9b:
    ld l, b                                       ; $5c9b: $68
    ld a, b                                       ; $5c9c: $78
    inc c                                         ; $5c9d: $0c
    ld a, h                                       ; $5c9e: $7c

jr_0e3_5c9f:
    inc e                                         ; $5c9f: $1c
    ld a, h                                       ; $5ca0: $7c
    ld e, $7a                                     ; $5ca1: $1e $7a

jr_0e3_5ca3:
    ld e, h                                       ; $5ca3: $5c
    ld [hl], h                                    ; $5ca4: $74
    jr jr_0e3_5d1f                                ; $5ca5: $18 $78

    ld e, b                                       ; $5ca7: $58
    ld a, b                                       ; $5ca8: $78
    jr jr_0e3_5d23                                ; $5ca9: $18 $78

    ld e, h                                       ; $5cab: $5c
    ld a, h                                       ; $5cac: $7c
    inc d                                         ; $5cad: $14
    ld a, h                                       ; $5cae: $7c
    ld e, a                                       ; $5caf: $5f
    ld a, a                                       ; $5cb0: $7f
    ld e, $7e                                     ; $5cb1: $1e $7e
    jr nz, @+$62                                  ; $5cb3: $20 $60

    ld [bc], a                                    ; $5cb5: $02
    ld b, b                                       ; $5cb6: $40
    rst $38                                       ; $5cb7: $ff
    dec c                                         ; $5cb8: $0d
    inc b                                         ; $5cb9: $04
    ld sp, hl                                     ; $5cba: $f9
    ld [$01f2], sp                                ; $5cbb: $08 $f2 $01
    db $e3                                        ; $5cbe: $e3
    db $fd                                        ; $5cbf: $fd
    db $e4                                        ; $5cc0: $e4
    ld bc, $faf3                                  ; $5cc1: $01 $f3 $fa
    di                                            ; $5cc4: $f3
    rst $38                                       ; $5cc5: $ff
    ld [bc], a                                    ; $5cc6: $02

jr_0e3_5cc7:
    ld c, $94                                     ; $5cc7: $0e $94
    add hl, de                                    ; $5cc9: $19
    rra                                           ; $5cca: $1f
    db $10                                        ; $5ccb: $10
    rra                                           ; $5ccc: $1f
    jr nz, jr_0e3_5d0e                            ; $5ccd: $20 $3f

    ld a, [hl+]                                   ; $5ccf: $2a
    ccf                                           ; $5cd0: $3f
    inc [hl]                                      ; $5cd1: $34
    ccf                                           ; $5cd2: $3f
    ld l, b                                       ; $5cd3: $68
    ld a, a                                       ; $5cd4: $7f
    add c                                         ; $5cd5: $81
    rst $38                                       ; $5cd6: $ff
    add c                                         ; $5cd7: $81
    rst $38                                       ; $5cd8: $ff
    jp Jump_0e3_73ff                              ; $5cd9: $c3 $ff $73


    ld a, [hl]                                    ; $5cdc: $7e
    ld [bc], a                                    ; $5cdd: $02
    ld a, a                                       ; $5cde: $7f
    adc b                                         ; $5cdf: $88
    ld h, a                                       ; $5ce0: $67
    ld a, a                                       ; $5ce1: $7f
    ret c                                         ; $5ce2: $d8

    rst $38                                       ; $5ce3: $ff
    db $e3                                        ; $5ce4: $e3
    rst $38                                       ; $5ce5: $ff
    ld [c], a                                     ; $5ce6: $e2
    rst $38                                       ; $5ce7: $ff
    ld [bc], a                                    ; $5ce8: $02
    ld [$0485], sp                                ; $5ce9: $08 $85 $04
    inc c                                         ; $5cec: $0c
    ld [bc], a                                    ; $5ced: $02
    ld c, $0d                                     ; $5cee: $0e $0d
    inc bc                                        ; $5cf0: $03
    rrca                                          ; $5cf1: $0f
    inc b                                         ; $5cf2: $04
    inc c                                         ; $5cf3: $0c
    add h                                         ; $5cf4: $84
    ld c, $06                                     ; $5cf5: $0e $06
    inc c                                         ; $5cf7: $0c
    inc b                                         ; $5cf8: $04
    ld [bc], a                                    ; $5cf9: $02
    ld [$0002], sp                                ; $5cfa: $08 $02 $00
    inc b                                         ; $5cfd: $04

jr_0e3_5cfe:
    ld [$0481], sp                                ; $5cfe: $08 $81 $04
    inc bc                                        ; $5d01: $03
    inc c                                         ; $5d02: $0c
    sbc [hl]                                      ; $5d03: $9e
    jr z, jr_0e3_5cfe                             ; $5d04: $28 $f8

    jr jr_0e3_5d26                                ; $5d06: $18 $1e

    inc e                                         ; $5d08: $1c
    rra                                           ; $5d09: $1f
    jr @+$21                                      ; $5d0a: $18 $1f

    inc d                                         ; $5d0c: $14
    rra                                           ; $5d0d: $1f

jr_0e3_5d0e:
    jr @+$21                                      ; $5d0e: $18 $1f

    db $10                                        ; $5d10: $10
    rra                                           ; $5d11: $1f
    jr nc, jr_0e3_5d53                            ; $5d12: $30 $3f

    jr nz, jr_0e3_5d55                            ; $5d14: $20 $3f

    jr nz, jr_0e3_5d57                            ; $5d16: $20 $3f

    ld hl, $423f                                  ; $5d18: $21 $3f $42
    ld a, a                                       ; $5d1b: $7f
    ld d, l                                       ; $5d1c: $55
    ld a, a                                       ; $5d1d: $7f
    adc d                                         ; $5d1e: $8a

jr_0e3_5d1f:
    rst $38                                       ; $5d1f: $ff
    ret nz                                        ; $5d20: $c0

    rst $38                                       ; $5d21: $ff
    ld [bc], a                                    ; $5d22: $02

jr_0e3_5d23:
    ld a, a                                       ; $5d23: $7f
    inc b                                         ; $5d24: $04
    nop                                           ; $5d25: $00

jr_0e3_5d26:
    sbc d                                         ; $5d26: $9a
    ld [bc], a                                    ; $5d27: $02
    ld e, $0a                                     ; $5d28: $1e $0a
    ld e, $16                                     ; $5d2a: $1e $16
    ld e, $02                                     ; $5d2c: $1e $02
    ld e, $07                                     ; $5d2e: $1e $07
    rra                                           ; $5d30: $1f
    rla                                           ; $5d31: $17
    dec e                                         ; $5d32: $1d
    ld b, $1e                                     ; $5d33: $06 $1e
    ld d, $1e                                     ; $5d35: $16 $1e
    ld b, $1e                                     ; $5d37: $06 $1e
    ld c, $1e                                     ; $5d39: $0e $1e
    ld a, [bc]                                    ; $5d3b: $0a
    ld e, $0f                                     ; $5d3c: $1e $0f
    rra                                           ; $5d3e: $1f
    rrca                                          ; $5d3f: $0f
    rra                                           ; $5d40: $1f
    ld [bc], a                                    ; $5d41: $02
    db $10                                        ; $5d42: $10
    ld [bc], a                                    ; $5d43: $02
    nop                                           ; $5d44: $00
    rst $38                                       ; $5d45: $ff
    dec c                                         ; $5d46: $0d
    inc b                                         ; $5d47: $04
    ld sp, hl                                     ; $5d48: $f9
    ld [$01f2], sp                                ; $5d49: $08 $f2 $01
    ld [c], a                                     ; $5d4c: $e2
    db $fd                                        ; $5d4d: $fd
    db $e3                                        ; $5d4e: $e3
    ld bc, $f9f2                                  ; $5d4f: $01 $f2 $f9
    ld a, [c]                                     ; $5d52: $f2

jr_0e3_5d53:
    rst $38                                       ; $5d53: $ff
    ld [bc], a                                    ; $5d54: $02

jr_0e3_5d55:
    ld c, $94                                     ; $5d55: $0e $94

jr_0e3_5d57:
    add hl, de                                    ; $5d57: $19
    rra                                           ; $5d58: $1f
    db $10                                        ; $5d59: $10
    rra                                           ; $5d5a: $1f
    jr nz, @+$41                                  ; $5d5b: $20 $3f

    inc [hl]                                      ; $5d5d: $34
    ccf                                           ; $5d5e: $3f
    jr z, @+$41                                   ; $5d5f: $28 $3f

    ld d, h                                       ; $5d61: $54
    ld a, a                                       ; $5d62: $7f
    ld h, b                                       ; $5d63: $60
    ld a, a                                       ; $5d64: $7f
    add c                                         ; $5d65: $81
    rst $38                                       ; $5d66: $ff
    jp Jump_0e3_63ff                              ; $5d67: $c3 $ff $63


    ld a, [hl]                                    ; $5d6a: $7e
    ld [bc], a                                    ; $5d6b: $02
    ld a, a                                       ; $5d6c: $7f
    adc b                                         ; $5d6d: $88
    ld h, a                                       ; $5d6e: $67
    ld a, a                                       ; $5d6f: $7f
    ret c                                         ; $5d70: $d8

    rst $38                                       ; $5d71: $ff
    db $e3                                        ; $5d72: $e3
    rst $38                                       ; $5d73: $ff
    jp nz, Jump_000_02ff                          ; $5d74: $c2 $ff $02

    ld [$0488], sp                                ; $5d77: $08 $88 $04
    inc c                                         ; $5d7a: $0c
    ld [bc], a                                    ; $5d7b: $02
    ld c, $0a                                     ; $5d7c: $0e $0a
    ld c, $0d                                     ; $5d7e: $0e $0d
    rrca                                          ; $5d80: $0f
    ld [bc], a                                    ; $5d81: $02
    ld c, $02                                     ; $5d82: $0e $02
    inc c                                         ; $5d84: $0c
    add h                                         ; $5d85: $84
    ld c, $06                                     ; $5d86: $0e $06
    inc c                                         ; $5d88: $0c
    inc b                                         ; $5d89: $04
    ld [bc], a                                    ; $5d8a: $02
    ld [$0002], sp                                ; $5d8b: $08 $02 $00
    inc b                                         ; $5d8e: $04

jr_0e3_5d8f:
    ld [$0481], sp                                ; $5d8f: $08 $81 $04
    inc bc                                        ; $5d92: $03
    inc c                                         ; $5d93: $0c
    and b                                         ; $5d94: $a0
    jr z, jr_0e3_5d8f                             ; $5d95: $28 $f8

    inc c                                         ; $5d97: $0c
    rrca                                          ; $5d98: $0f
    inc c                                         ; $5d99: $0c
    rrca                                          ; $5d9a: $0f
    ld [$080f], sp                                ; $5d9b: $08 $0f $08
    rrca                                          ; $5d9e: $0f
    ld [$080f], sp                                ; $5d9f: $08 $0f $08
    rrca                                          ; $5da2: $0f
    jr jr_0e3_5dc4                                ; $5da3: $18 $1f

    db $10                                        ; $5da5: $10
    rra                                           ; $5da6: $1f
    db $10                                        ; $5da7: $10
    rra                                           ; $5da8: $1f
    ld de, $101f                                  ; $5da9: $11 $1f $10
    rra                                           ; $5dac: $1f
    dec h                                         ; $5dad: $25
    ccf                                           ; $5dae: $3f
    ld l, e                                       ; $5daf: $6b
    ld a, a                                       ; $5db0: $7f
    sub a                                         ; $5db1: $97
    rst $38                                       ; $5db2: $ff
    ret nz                                        ; $5db3: $c0

    rst $38                                       ; $5db4: $ff
    ld [bc], a                                    ; $5db5: $02
    ccf                                           ; $5db6: $3f
    ld [bc], a                                    ; $5db7: $02
    nop                                           ; $5db8: $00
    sbc h                                         ; $5db9: $9c
    ld [de], a                                    ; $5dba: $12
    ld a, $16                                     ; $5dbb: $3e $16
    ld a, $06                                     ; $5dbd: $3e $06
    ld a, $16                                     ; $5dbf: $3e $16
    ld a, $14                                     ; $5dc1: $3e $14
    inc a                                         ; $5dc3: $3c

jr_0e3_5dc4:
    ld a, [bc]                                    ; $5dc4: $0a
    ld a, $0e                                     ; $5dc5: $3e $0e
    ld a, $0a                                     ; $5dc7: $3e $0a
    ld a, $0d                                     ; $5dc9: $3e $0d
    ccf                                           ; $5dcb: $3f
    add hl, de                                    ; $5dcc: $19
    ccf                                           ; $5dcd: $3f
    dec e                                         ; $5dce: $1d
    ccf                                           ; $5dcf: $3f
    dec de                                        ; $5dd0: $1b
    ccf                                           ; $5dd1: $3f
    ld e, $3e                                     ; $5dd2: $1e $3e
    ld e, $3e                                     ; $5dd4: $1e $3e
    ld [bc], a                                    ; $5dd6: $02
    jr c, @+$01                                   ; $5dd7: $38 $ff

    dec c                                         ; $5dd9: $0d
    inc b                                         ; $5dda: $04
    ld sp, hl                                     ; $5ddb: $f9
    ld [$01f2], sp                                ; $5ddc: $08 $f2 $01
    ld [c], a                                     ; $5ddf: $e2
    db $fd                                        ; $5de0: $fd
    db $e3                                        ; $5de1: $e3
    ld bc, $f9f2                                  ; $5de2: $01 $f2 $f9
    ld a, [c]                                     ; $5de5: $f2
    ld bc, $0e02                                  ; $5de6: $01 $02 $0e
    sub h                                         ; $5de9: $94
    add hl, de                                    ; $5dea: $19
    rra                                           ; $5deb: $1f
    db $10                                        ; $5dec: $10
    rra                                           ; $5ded: $1f
    jr nz, @+$41                                  ; $5dee: $20 $3f

    inc [hl]                                      ; $5df0: $34
    ccf                                           ; $5df1: $3f
    jr z, @+$41                                   ; $5df2: $28 $3f

    ld d, h                                       ; $5df4: $54
    ld a, a                                       ; $5df5: $7f
    ld h, b                                       ; $5df6: $60
    ld a, a                                       ; $5df7: $7f
    add c                                         ; $5df8: $81
    rst $38                                       ; $5df9: $ff
    jp Jump_0e3_63ff                              ; $5dfa: $c3 $ff $63


    ld a, [hl]                                    ; $5dfd: $7e
    ld [bc], a                                    ; $5dfe: $02
    ld a, a                                       ; $5dff: $7f
    adc b                                         ; $5e00: $88
    ld b, a                                       ; $5e01: $47
    ld a, a                                       ; $5e02: $7f
    ret c                                         ; $5e03: $d8

    rst $38                                       ; $5e04: $ff
    db $e3                                        ; $5e05: $e3
    rst $38                                       ; $5e06: $ff
    add $ff                                       ; $5e07: $c6 $ff
    ld [bc], a                                    ; $5e09: $02
    ld [$0488], sp                                ; $5e0a: $08 $88 $04
    inc c                                         ; $5e0d: $0c
    ld [bc], a                                    ; $5e0e: $02
    ld c, $0a                                     ; $5e0f: $0e $0a
    ld c, $0d                                     ; $5e11: $0e $0d
    rrca                                          ; $5e13: $0f
    ld [bc], a                                    ; $5e14: $02
    ld c, $02                                     ; $5e15: $0e $02
    inc c                                         ; $5e17: $0c
    add h                                         ; $5e18: $84
    ld c, $06                                     ; $5e19: $0e $06
    inc c                                         ; $5e1b: $0c
    inc b                                         ; $5e1c: $04
    ld [bc], a                                    ; $5e1d: $02
    ld [$0002], sp                                ; $5e1e: $08 $02 $00
    inc b                                         ; $5e21: $04
    ld [$0481], sp                                ; $5e22: $08 $81 $04
    inc bc                                        ; $5e25: $03
    inc c                                         ; $5e26: $0c
    and b                                         ; $5e27: $a0
    ld c, b                                       ; $5e28: $48
    ld hl, sp+$08                                 ; $5e29: $f8 $08
    rrca                                          ; $5e2b: $0f
    add hl, bc                                    ; $5e2c: $09
    rrca                                          ; $5e2d: $0f
    ld [$090f], sp                                ; $5e2e: $08 $0f $09
    rrca                                          ; $5e31: $0f
    ld [$080f], sp                                ; $5e32: $08 $0f $08
    rrca                                          ; $5e35: $0f
    add hl, bc                                    ; $5e36: $09
    rrca                                          ; $5e37: $0f
    db $10                                        ; $5e38: $10
    rra                                           ; $5e39: $1f
    ld de, $131f                                  ; $5e3a: $11 $1f $13
    rra                                           ; $5e3d: $1f
    dec [hl]                                      ; $5e3e: $35
    ccf                                           ; $5e3f: $3f
    dec hl                                        ; $5e40: $2b
    ccf                                           ; $5e41: $3f
    ld [hl], l                                    ; $5e42: $75
    ld a, a                                       ; $5e43: $7f
    sbc a                                         ; $5e44: $9f
    rst $38                                       ; $5e45: $ff
    ret nz                                        ; $5e46: $c0

    rst $38                                       ; $5e47: $ff
    ld [bc], a                                    ; $5e48: $02
    ccf                                           ; $5e49: $3f
    ld [bc], a                                    ; $5e4a: $02
    nop                                           ; $5e4b: $00
    sbc d                                         ; $5e4c: $9a
    sbc b                                         ; $5e4d: $98
    ld hl, sp+$18                                 ; $5e4e: $f8 $18
    ld hl, sp+$18                                 ; $5e50: $f8 $18
    ld hl, sp+$3c                                 ; $5e52: $f8 $3c
    db $fc                                        ; $5e54: $fc
    inc a                                         ; $5e55: $3c
    db $f4                                        ; $5e56: $f4
    jr c, @-$06                                   ; $5e57: $38 $f8

    ld a, b                                       ; $5e59: $78
    ld hl, sp+$68                                 ; $5e5a: $f8 $68
    ld hl, sp+$48                                 ; $5e5c: $f8 $48
    ld hl, sp+$68                                 ; $5e5e: $f8 $68
    ld hl, sp+$44                                 ; $5e60: $f8 $44
    db $fc                                        ; $5e62: $fc
    ld l, h                                       ; $5e63: $6c
    db $fc                                        ; $5e64: $fc
    ld d, a                                       ; $5e65: $57
    rst $38                                       ; $5e66: $ff
    ld [bc], a                                    ; $5e67: $02
    cp $02                                        ; $5e68: $fe $02
    ldh [rIE], a                                  ; $5e6a: $e0 $ff
    dec c                                         ; $5e6c: $0d
    inc b                                         ; $5e6d: $04
    ld sp, hl                                     ; $5e6e: $f9
    ld [$01f2], sp                                ; $5e6f: $08 $f2 $01
    jp hl                                         ; $5e72: $e9


    ld sp, hl                                     ; $5e73: $f9
    jp hl                                         ; $5e74: $e9


    ld bc, $f9f9                                  ; $5e75: $01 $f9 $f9
    ld sp, hl                                     ; $5e78: $f9
    ld bc, $0702                                  ; $5e79: $01 $02 $07
    sbc [hl]                                      ; $5e7c: $9e
    ld [$1a0f], sp                                ; $5e7d: $08 $0f $1a
    rra                                           ; $5e80: $1f
    inc d                                         ; $5e81: $14
    rra                                           ; $5e82: $1f
    ld a, [de]                                    ; $5e83: $1a
    rra                                           ; $5e84: $1f
    scf                                           ; $5e85: $37
    ccf                                           ; $5e86: $3f
    jr z, jr_0e3_5ec8                             ; $5e87: $28 $3f

    ld a, $3f                                     ; $5e89: $3e $3f
    jr c, jr_0e3_5ecc                             ; $5e8b: $38 $3f

    inc h                                         ; $5e8d: $24
    ccf                                           ; $5e8e: $3f
    ld h, b                                       ; $5e8f: $60
    ld a, a                                       ; $5e90: $7f
    ld c, b                                       ; $5e91: $48
    ld a, a                                       ; $5e92: $7f
    push bc                                       ; $5e93: $c5
    rst $38                                       ; $5e94: $ff
    jp $a0ff                                      ; $5e95: $c3 $ff $a0


    rst $38                                       ; $5e98: $ff
    and b                                         ; $5e99: $a0
    rst $38                                       ; $5e9a: $ff
    ld [bc], a                                    ; $5e9b: $02
    ldh [$ae], a                                  ; $5e9c: $e0 $ae
    db $10                                        ; $5e9e: $10
    ldh a, [rNR10]                                ; $5e9f: $f0 $10
    ldh a, [$08]                                  ; $5ea1: $f0 $08
    ld hl, sp-$78                                 ; $5ea3: $f8 $88
    ld hl, sp-$34                                 ; $5ea5: $f8 $cc
    db $fc                                        ; $5ea7: $fc
    inc h                                         ; $5ea8: $24
    db $fc                                        ; $5ea9: $fc
    ld a, h                                       ; $5eaa: $7c
    db $fc                                        ; $5eab: $fc
    inc l                                         ; $5eac: $2c
    db $fc                                        ; $5ead: $fc
    add h                                         ; $5eae: $84
    db $fc                                        ; $5eaf: $fc
    ld b, $fe                                     ; $5eb0: $06 $fe
    ld [hl+], a                                   ; $5eb2: $22
    cp $53                                        ; $5eb3: $fe $53
    rst $38                                       ; $5eb5: $ff
    push bc                                       ; $5eb6: $c5
    rst $38                                       ; $5eb7: $ff
    dec b                                         ; $5eb8: $05
    rst $38                                       ; $5eb9: $ff
    add hl, bc                                    ; $5eba: $09
    rst $38                                       ; $5ebb: $ff
    sub b                                         ; $5ebc: $90
    rst $38                                       ; $5ebd: $ff
    ld c, b                                       ; $5ebe: $48
    ld a, a                                       ; $5ebf: $7f
    ld b, b                                       ; $5ec0: $40
    ld a, a                                       ; $5ec1: $7f
    ld h, l                                       ; $5ec2: $65
    ld a, a                                       ; $5ec3: $7f
    ld e, d                                       ; $5ec4: $5a
    ld a, a                                       ; $5ec5: $7f
    xor a                                         ; $5ec6: $af
    rst $38                                       ; $5ec7: $ff

jr_0e3_5ec8:
    sub d                                         ; $5ec8: $92
    rst $38                                       ; $5ec9: $ff
    ret nz                                        ; $5eca: $c0

    rst $38                                       ; $5ecb: $ff

jr_0e3_5ecc:
    ld [bc], a                                    ; $5ecc: $02
    ccf                                           ; $5ecd: $3f
    ld c, $00                                     ; $5ece: $0e $00
    sub b                                         ; $5ed0: $90
    inc bc                                        ; $5ed1: $03
    rst $38                                       ; $5ed2: $ff
    ld b, $fe                                     ; $5ed3: $06 $fe
    xor d                                         ; $5ed5: $aa
    cp $76                                        ; $5ed6: $fe $76
    cp $fa                                        ; $5ed8: $fe $fa
    cp $85                                        ; $5eda: $fe $85
    rst $38                                       ; $5edc: $ff
    ld [hl], c                                    ; $5edd: $71
    rst $38                                       ; $5ede: $ff
    call Call_000_02ff                            ; $5edf: $cd $ff $02
    cp $0e                                        ; $5ee2: $fe $0e
    nop                                           ; $5ee4: $00
    rst $38                                       ; $5ee5: $ff
    dec c                                         ; $5ee6: $0d
    inc b                                         ; $5ee7: $04
    ei                                            ; $5ee8: $fb
    dec b                                         ; $5ee9: $05
    rst $30                                       ; $5eea: $f7
    cp $eb                                        ; $5eeb: $fe $eb
    ld a, [$ffeb]                                 ; $5eed: $fa $eb $ff
    ei                                            ; $5ef0: $fb
    ld a, [$fffb]                                 ; $5ef1: $fa $fb $ff
    ld [bc], a                                    ; $5ef4: $02
    rrca                                          ; $5ef5: $0f
    ld [bc], a                                    ; $5ef6: $02
    inc d                                         ; $5ef7: $14
    ld [bc], a                                    ; $5ef8: $02
    inc h                                         ; $5ef9: $24
    adc h                                         ; $5efa: $8c
    cpl                                           ; $5efb: $2f
    dec hl                                        ; $5efc: $2b
    ld a, a                                       ; $5efd: $7f
    ld a, b                                       ; $5efe: $78
    ld a, a                                       ; $5eff: $7f
    ld l, l                                       ; $5f00: $6d
    ccf                                           ; $5f01: $3f
    jr nc, jr_0e3_5f83                            ; $5f02: $30 $7f

    ld [hl], d                                    ; $5f04: $72
    ld l, a                                       ; $5f05: $6f
    ld l, b                                       ; $5f06: $68
    ld [bc], a                                    ; $5f07: $02
    ld a, a                                       ; $5f08: $7f
    adc h                                         ; $5f09: $8c
    ld l, d                                       ; $5f0a: $6a
    ld a, a                                       ; $5f0b: $7f
    ld e, l                                       ; $5f0c: $5d
    ld a, a                                       ; $5f0d: $7f
    ld e, d                                       ; $5f0e: $5a
    ld a, a                                       ; $5f0f: $7f
    sbc l                                         ; $5f10: $9d
    rst $38                                       ; $5f11: $ff
    cp l                                          ; $5f12: $bd
    rst $38                                       ; $5f13: $ff
    jp c, Jump_000_02ff                           ; $5f14: $da $ff $02

    db $10                                        ; $5f17: $10
    ld [bc], a                                    ; $5f18: $02
    ld [$1402], sp                                ; $5f19: $08 $02 $14
    ld [bc], a                                    ; $5f1c: $02
    inc b                                         ; $5f1d: $04
    ld [bc], a                                    ; $5f1e: $02
    ld a, [de]                                    ; $5f1f: $1a
    add [hl]                                      ; $5f20: $86
    ld e, $16                                     ; $5f21: $1e $16
    inc e                                         ; $5f23: $1c
    inc c                                         ; $5f24: $0c
    ld a, [de]                                    ; $5f25: $1a
    ld a, [bc]                                    ; $5f26: $0a
    ld [bc], a                                    ; $5f27: $02
    ld [de], a                                    ; $5f28: $12
    ld [bc], a                                    ; $5f29: $02
    ld a, [de]                                    ; $5f2a: $1a
    sub h                                         ; $5f2b: $94
    ld d, $1e                                     ; $5f2c: $16 $1e
    ld a, [de]                                    ; $5f2e: $1a
    ld e, $1a                                     ; $5f2f: $1e $1a
    ld e, $19                                     ; $5f31: $1e $19
    rra                                           ; $5f33: $1f
    dec e                                         ; $5f34: $1d
    rra                                           ; $5f35: $1f
    dec de                                        ; $5f36: $1b
    rra                                           ; $5f37: $1f
    ld a, [$7abf]                                 ; $5f38: $fa $bf $7a
    ld e, a                                       ; $5f3b: $5f
    ld a, [hl-]                                   ; $5f3c: $3a
    cpl                                           ; $5f3d: $2f
    ld [hl], a                                    ; $5f3e: $77
    ld a, a                                       ; $5f3f: $7f
    ld [bc], a                                    ; $5f40: $02
    ccf                                           ; $5f41: $3f
    add d                                         ; $5f42: $82
    dec d                                         ; $5f43: $15
    dec e                                         ; $5f44: $1d
    ld [bc], a                                    ; $5f45: $02
    jr jr_0e3_5f5a                                ; $5f46: $18 $12

    nop                                           ; $5f48: $00
    add d                                         ; $5f49: $82
    rra                                           ; $5f4a: $1f
    dec e                                         ; $5f4b: $1d
    ld [bc], a                                    ; $5f4c: $02
    ld a, [de]                                    ; $5f4d: $1a
    ld [bc], a                                    ; $5f4e: $02
    inc e                                         ; $5f4f: $1c
    add d                                         ; $5f50: $82
    ld a, [bc]                                    ; $5f51: $0a
    ld e, $02                                     ; $5f52: $1e $02
    inc e                                         ; $5f54: $1c
    add c                                         ; $5f55: $81
    ld [$1803], sp                                ; $5f56: $08 $03 $18
    ld [de], a                                    ; $5f59: $12

jr_0e3_5f5a:
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    dec c                                         ; $5f5c: $0d
    inc b                                         ; $5f5d: $04
    ei                                            ; $5f5e: $fb
    dec b                                         ; $5f5f: $05
    rst $30                                       ; $5f60: $f7
    cp $eb                                        ; $5f61: $fe $eb
    ld a, [$ffeb]                                 ; $5f63: $fa $eb $ff
    ei                                            ; $5f66: $fb
    ei                                            ; $5f67: $fb
    ei                                            ; $5f68: $fb
    cp $02                                        ; $5f69: $fe $02
    rrca                                          ; $5f6b: $0f
    ld [bc], a                                    ; $5f6c: $02
    inc d                                         ; $5f6d: $14
    ld [bc], a                                    ; $5f6e: $02
    inc h                                         ; $5f6f: $24
    adc h                                         ; $5f70: $8c
    cpl                                           ; $5f71: $2f
    dec hl                                        ; $5f72: $2b
    ld a, a                                       ; $5f73: $7f
    ld a, b                                       ; $5f74: $78
    ld a, a                                       ; $5f75: $7f
    ld l, l                                       ; $5f76: $6d
    ccf                                           ; $5f77: $3f
    jr nc, jr_0e3_5ff9                            ; $5f78: $30 $7f

    ld [hl], d                                    ; $5f7a: $72
    ld l, a                                       ; $5f7b: $6f
    ld l, b                                       ; $5f7c: $68
    ld [bc], a                                    ; $5f7d: $02
    ld a, a                                       ; $5f7e: $7f
    adc h                                         ; $5f7f: $8c
    ld a, d                                       ; $5f80: $7a
    ld a, a                                       ; $5f81: $7f
    ld e, l                                       ; $5f82: $5d

jr_0e3_5f83:
    ld a, a                                       ; $5f83: $7f
    ld e, d                                       ; $5f84: $5a
    ld a, a                                       ; $5f85: $7f
    ld a, l                                       ; $5f86: $7d
    ld a, a                                       ; $5f87: $7f
    sbc l                                         ; $5f88: $9d
    rst $38                                       ; $5f89: $ff
    adc c                                         ; $5f8a: $89
    rst $38                                       ; $5f8b: $ff
    ld [bc], a                                    ; $5f8c: $02
    db $10                                        ; $5f8d: $10
    ld [bc], a                                    ; $5f8e: $02
    ld [$1402], sp                                ; $5f8f: $08 $02 $14
    ld [bc], a                                    ; $5f92: $02
    inc b                                         ; $5f93: $04
    ld [bc], a                                    ; $5f94: $02
    ld a, [de]                                    ; $5f95: $1a
    add [hl]                                      ; $5f96: $86
    ld e, $16                                     ; $5f97: $1e $16
    inc e                                         ; $5f99: $1c
    inc c                                         ; $5f9a: $0c
    ld a, [de]                                    ; $5f9b: $1a
    ld a, [bc]                                    ; $5f9c: $0a
    ld [bc], a                                    ; $5f9d: $02
    ld [de], a                                    ; $5f9e: $12
    ld [bc], a                                    ; $5f9f: $02
    ld a, [de]                                    ; $5fa0: $1a
    adc c                                         ; $5fa1: $89
    ld d, $1e                                     ; $5fa2: $16 $1e
    ld a, [de]                                    ; $5fa4: $1a
    ld e, $19                                     ; $5fa5: $1e $19
    rra                                           ; $5fa7: $1f
    dec e                                         ; $5fa8: $1d
    rra                                           ; $5fa9: $1f
    add hl, de                                    ; $5faa: $19
    inc bc                                        ; $5fab: $03
    rra                                           ; $5fac: $1f
    add [hl]                                      ; $5fad: $86
    push af                                       ; $5fae: $f5
    sbc a                                         ; $5faf: $9f
    ld a, l                                       ; $5fb0: $7d
    ld h, a                                       ; $5fb1: $67
    ld l, [hl]                                    ; $5fb2: $6e
    ld a, a                                       ; $5fb3: $7f
    ld [bc], a                                    ; $5fb4: $02
    rst $38                                       ; $5fb5: $ff
    add d                                         ; $5fb6: $82
    ld a, [hl]                                    ; $5fb7: $7e
    ld a, a                                       ; $5fb8: $7f
    ld [bc], a                                    ; $5fb9: $02
    scf                                           ; $5fba: $37
    ld [bc], a                                    ; $5fbb: $02
    inc bc                                        ; $5fbc: $03
    ld [de], a                                    ; $5fbd: $12
    nop                                           ; $5fbe: $00
    ld [bc], a                                    ; $5fbf: $02
    dec b                                         ; $5fc0: $05
    inc b                                         ; $5fc1: $04
    inc b                                         ; $5fc2: $04
    inc b                                         ; $5fc3: $04
    ld b, $02                                     ; $5fc4: $06 $02
    inc b                                         ; $5fc6: $04
    inc d                                         ; $5fc7: $14
    nop                                           ; $5fc8: $00
    rst $38                                       ; $5fc9: $ff
    dec c                                         ; $5fca: $0d
    inc b                                         ; $5fcb: $04
    ei                                            ; $5fcc: $fb
    dec b                                         ; $5fcd: $05
    rst $30                                       ; $5fce: $f7
    cp $ec                                        ; $5fcf: $fe $ec
    ld a, [$ffec]                                 ; $5fd1: $fa $ec $ff
    db $fc                                        ; $5fd4: $fc
    ld a, [$fefc]                                 ; $5fd5: $fa $fc $fe
    ld [bc], a                                    ; $5fd8: $02
    rrca                                          ; $5fd9: $0f
    ld [bc], a                                    ; $5fda: $02
    inc d                                         ; $5fdb: $14
    ld [bc], a                                    ; $5fdc: $02
    inc h                                         ; $5fdd: $24
    adc h                                         ; $5fde: $8c
    ld l, a                                       ; $5fdf: $6f
    ld l, e                                       ; $5fe0: $6b
    ld a, a                                       ; $5fe1: $7f
    ld a, b                                       ; $5fe2: $78
    ld a, a                                       ; $5fe3: $7f
    ld l, l                                       ; $5fe4: $6d
    ccf                                           ; $5fe5: $3f
    jr nc, jr_0e3_6067                            ; $5fe6: $30 $7f

    ld [hl], d                                    ; $5fe8: $72
    ld l, a                                       ; $5fe9: $6f
    ld l, b                                       ; $5fea: $68
    ld [bc], a                                    ; $5feb: $02
    ccf                                           ; $5fec: $3f
    adc h                                         ; $5fed: $8c
    ld l, d                                       ; $5fee: $6a
    ld a, a                                       ; $5fef: $7f
    ld e, l                                       ; $5ff0: $5d
    ld a, a                                       ; $5ff1: $7f
    ld e, d                                       ; $5ff2: $5a
    ld a, a                                       ; $5ff3: $7f
    cp l                                          ; $5ff4: $bd
    rst $38                                       ; $5ff5: $ff
    cp l                                          ; $5ff6: $bd
    rst $38                                       ; $5ff7: $ff
    sbc c                                         ; $5ff8: $99

jr_0e3_5ff9:
    rst $38                                       ; $5ff9: $ff
    ld [bc], a                                    ; $5ffa: $02
    db $10                                        ; $5ffb: $10
    ld [bc], a                                    ; $5ffc: $02
    ld [$1402], sp                                ; $5ffd: $08 $02 $14
    ld [bc], a                                    ; $6000: $02
    ld [bc], a                                    ; $6001: $02
    ld [bc], a                                    ; $6002: $02
    ld a, [de]                                    ; $6003: $1a
    add [hl]                                      ; $6004: $86
    ld e, $16                                     ; $6005: $1e $16
    inc e                                         ; $6007: $1c
    inc c                                         ; $6008: $0c
    ld a, [de]                                    ; $6009: $1a
    ld a, [bc]                                    ; $600a: $0a
    ld [bc], a                                    ; $600b: $02
    ld [de], a                                    ; $600c: $12
    ld [bc], a                                    ; $600d: $02
    inc e                                         ; $600e: $1c
    sub d                                         ; $600f: $92
    ld d, $1e                                     ; $6010: $16 $1e
    ld a, [de]                                    ; $6012: $1a
    ld e, $1a                                     ; $6013: $1e $1a
    ld e, $1d                                     ; $6015: $1e $1d
    rra                                           ; $6017: $1f
    add hl, de                                    ; $6018: $19
    rra                                           ; $6019: $1f
    dec de                                        ; $601a: $1b
    rra                                           ; $601b: $1f
    ld a, [$7a9f]                                 ; $601c: $fa $9f $7a
    ld h, a                                       ; $601f: $67
    ld [hl], a                                    ; $6020: $77
    ld a, a                                       ; $6021: $7f
    ld [bc], a                                    ; $6022: $02
    ccf                                           ; $6023: $3f
    ld [bc], a                                    ; $6024: $02
    dec e                                         ; $6025: $1d
    ld [bc], a                                    ; $6026: $02
    ld bc, $0014                                  ; $6027: $01 $14 $00
    ld [bc], a                                    ; $602a: $02
    rrca                                          ; $602b: $0f
    ld [bc], a                                    ; $602c: $02
    ld c, $81                                     ; $602d: $0e $81
    ld b, $03                                     ; $602f: $06 $03
    ld c, $81                                     ; $6031: $0e $81
    inc b                                         ; $6033: $04
    inc bc                                        ; $6034: $03
    inc c                                         ; $6035: $0c
    inc d                                         ; $6036: $14
    nop                                           ; $6037: $00
    rst $38                                       ; $6038: $ff
    dec c                                         ; $6039: $0d
    inc b                                         ; $603a: $04
    ei                                            ; $603b: $fb
    dec b                                         ; $603c: $05
    rst $30                                       ; $603d: $f7
    cp $eb                                        ; $603e: $fe $eb
    ld a, [$ffeb]                                 ; $6040: $fa $eb $ff
    ei                                            ; $6043: $fb
    ld a, [$fffb]                                 ; $6044: $fa $fb $ff
    ld [bc], a                                    ; $6047: $02
    rrca                                          ; $6048: $0f
    ld [bc], a                                    ; $6049: $02
    inc d                                         ; $604a: $14
    ld [bc], a                                    ; $604b: $02
    inc h                                         ; $604c: $24
    adc h                                         ; $604d: $8c
    cpl                                           ; $604e: $2f
    dec hl                                        ; $604f: $2b
    ld a, a                                       ; $6050: $7f
    ld a, b                                       ; $6051: $78
    ld a, a                                       ; $6052: $7f
    ld l, l                                       ; $6053: $6d
    ld a, a                                       ; $6054: $7f
    ld [hl], b                                    ; $6055: $70
    ccf                                           ; $6056: $3f
    ld [hl-], a                                   ; $6057: $32
    ld l, a                                       ; $6058: $6f
    ld l, b                                       ; $6059: $68
    ld [bc], a                                    ; $605a: $02
    ld a, a                                       ; $605b: $7f
    adc h                                         ; $605c: $8c
    ld l, d                                       ; $605d: $6a
    ld a, a                                       ; $605e: $7f
    ld e, l                                       ; $605f: $5d
    ld a, a                                       ; $6060: $7f
    ld e, d                                       ; $6061: $5a
    ld a, a                                       ; $6062: $7f
    sbc l                                         ; $6063: $9d
    rst $38                                       ; $6064: $ff
    cp l                                          ; $6065: $bd
    rst $38                                       ; $6066: $ff

jr_0e3_6067:
    db $dd                                        ; $6067: $dd
    rst $38                                       ; $6068: $ff
    ld [bc], a                                    ; $6069: $02
    db $10                                        ; $606a: $10
    ld [bc], a                                    ; $606b: $02
    ld [$1402], sp                                ; $606c: $08 $02 $14
    ld [bc], a                                    ; $606f: $02
    inc b                                         ; $6070: $04
    ld [bc], a                                    ; $6071: $02
    ld a, [de]                                    ; $6072: $1a
    add [hl]                                      ; $6073: $86
    ld e, $16                                     ; $6074: $1e $16
    ld e, $0e                                     ; $6076: $1e $0e
    inc e                                         ; $6078: $1c
    inc c                                         ; $6079: $0c
    ld [bc], a                                    ; $607a: $02
    ld [de], a                                    ; $607b: $12
    ld [bc], a                                    ; $607c: $02
    ld a, [de]                                    ; $607d: $1a
    ld [bc], a                                    ; $607e: $02
    ld e, $90                                     ; $607f: $1e $90
    ld a, [de]                                    ; $6081: $1a
    ld e, $1a                                     ; $6082: $1e $1a
    ld e, $19                                     ; $6084: $1e $19
    rra                                           ; $6086: $1f
    dec e                                         ; $6087: $1d
    rra                                           ; $6088: $1f
    dec de                                        ; $6089: $1b
    rra                                           ; $608a: $1f
    db $fc                                        ; $608b: $fc
    cp a                                          ; $608c: $bf
    ld a, d                                       ; $608d: $7a
    ld e, a                                       ; $608e: $5f
    inc sp                                        ; $608f: $33
    cpl                                           ; $6090: $2f
    ld [bc], a                                    ; $6091: $02
    ld a, a                                       ; $6092: $7f
    add d                                         ; $6093: $82
    scf                                           ; $6094: $37
    ccf                                           ; $6095: $3f
    ld [bc], a                                    ; $6096: $02
    dec e                                         ; $6097: $1d
    inc d                                         ; $6098: $14
    nop                                           ; $6099: $00
    add d                                         ; $609a: $82
    rra                                           ; $609b: $1f
    dec e                                         ; $609c: $1d
    ld [bc], a                                    ; $609d: $02
    ld a, [de]                                    ; $609e: $1a
    add d                                         ; $609f: $82
    inc c                                         ; $60a0: $0c
    inc e                                         ; $60a1: $1c
    ld [bc], a                                    ; $60a2: $02
    ld e, $02                                     ; $60a3: $1e $02
    inc e                                         ; $60a5: $1c
    add d                                         ; $60a6: $82
    ld [$0218], sp                                ; $60a7: $08 $18 $02
    db $10                                        ; $60aa: $10
    ld [de], a                                    ; $60ab: $12
    nop                                           ; $60ac: $00
    rst $38                                       ; $60ad: $ff
    rlca                                          ; $60ae: $07
    ld bc, $07f8                                  ; $60af: $01 $f8 $07
    ld a, [c]                                     ; $60b2: $f2
    ld bc, $fdec                                  ; $60b3: $01 $ec $fd
    adc b                                         ; $60b6: $88
    nop                                           ; $60b7: $00
    ld e, h                                       ; $60b8: $5c
    nop                                           ; $60b9: $00
    jp c, $8600                                   ; $60ba: $da $00 $86

    nop                                           ; $60bd: $00
    ld bc, $0007                                  ; $60be: $01 $07 $00
    add e                                         ; $60c1: $83
    add e                                         ; $60c2: $83
    nop                                           ; $60c3: $00
    ld bc, $000e                                  ; $60c4: $01 $0e $00
    rst $38                                       ; $60c7: $ff
    dec c                                         ; $60c8: $0d
    inc b                                         ; $60c9: $04
    ei                                            ; $60ca: $fb
    dec b                                         ; $60cb: $05
    rst $30                                       ; $60cc: $f7
    cp $eb                                        ; $60cd: $fe $eb
    ld a, [$ffeb]                                 ; $60cf: $fa $eb $ff
    ei                                            ; $60d2: $fb
    ld a, [$fffb]                                 ; $60d3: $fa $fb $ff
    ld [bc], a                                    ; $60d6: $02
    rrca                                          ; $60d7: $0f
    ld [bc], a                                    ; $60d8: $02
    inc d                                         ; $60d9: $14
    ld [bc], a                                    ; $60da: $02
    inc h                                         ; $60db: $24
    adc h                                         ; $60dc: $8c
    cpl                                           ; $60dd: $2f
    dec hl                                        ; $60de: $2b
    ld a, a                                       ; $60df: $7f
    ld a, b                                       ; $60e0: $78
    ld a, a                                       ; $60e1: $7f
    ld l, l                                       ; $60e2: $6d
    ccf                                           ; $60e3: $3f
    jr nc, jr_0e3_6165                            ; $60e4: $30 $7f

    ld [hl], d                                    ; $60e6: $72
    ld l, a                                       ; $60e7: $6f
    ld l, b                                       ; $60e8: $68
    ld [bc], a                                    ; $60e9: $02
    ld a, a                                       ; $60ea: $7f
    adc h                                         ; $60eb: $8c
    ld l, d                                       ; $60ec: $6a
    ld a, a                                       ; $60ed: $7f
    ld e, l                                       ; $60ee: $5d
    ld a, a                                       ; $60ef: $7f
    sbc d                                         ; $60f0: $9a
    rst $38                                       ; $60f1: $ff
    cp l                                          ; $60f2: $bd
    rst $38                                       ; $60f3: $ff
    sbc l                                         ; $60f4: $9d
    rst $38                                       ; $60f5: $ff
    db $fc                                        ; $60f6: $fc
    rst $38                                       ; $60f7: $ff
    ld [bc], a                                    ; $60f8: $02
    db $10                                        ; $60f9: $10
    ld [bc], a                                    ; $60fa: $02
    ld [$1402], sp                                ; $60fb: $08 $02 $14
    ld [bc], a                                    ; $60fe: $02
    inc b                                         ; $60ff: $04
    ld [bc], a                                    ; $6100: $02
    ld a, [de]                                    ; $6101: $1a
    add [hl]                                      ; $6102: $86
    ld e, $16                                     ; $6103: $1e $16
    inc e                                         ; $6105: $1c
    inc c                                         ; $6106: $0c
    ld a, [de]                                    ; $6107: $1a
    ld a, [bc]                                    ; $6108: $0a
    ld [bc], a                                    ; $6109: $02
    ld [de], a                                    ; $610a: $12
    ld [bc], a                                    ; $610b: $02
    ld a, [de]                                    ; $610c: $1a
    ld [bc], a                                    ; $610d: $02
    ld e, $83                                     ; $610e: $1e $83
    ld a, [de]                                    ; $6110: $1a
    ld e, $1a                                     ; $6111: $1e $1a
    inc bc                                        ; $6113: $03
    ld e, $8a                                     ; $6114: $1e $8a
    add hl, de                                    ; $6116: $19
    rra                                           ; $6117: $1f
    ld de, $fa1f                                  ; $6118: $11 $1f $fa
    cp a                                          ; $611b: $bf
    ei                                            ; $611c: $fb
    cp a                                          ; $611d: $bf
    ld d, a                                       ; $611e: $57
    ld e, a                                       ; $611f: $5f
    ld [bc], a                                    ; $6120: $02
    ccf                                           ; $6121: $3f
    add d                                         ; $6122: $82
    scf                                           ; $6123: $37
    ccf                                           ; $6124: $3f
    ld [bc], a                                    ; $6125: $02
    ld e, $02                                     ; $6126: $1e $02
    inc c                                         ; $6128: $0c
    ld [de], a                                    ; $6129: $12
    nop                                           ; $612a: $00
    add [hl]                                      ; $612b: $86
    rra                                           ; $612c: $1f
    inc de                                        ; $612d: $13
    ld c, $1e                                     ; $612e: $0e $1e
    inc c                                         ; $6130: $0c
    inc e                                         ; $6131: $1c
    ld [bc], a                                    ; $6132: $02
    ld e, $02                                     ; $6133: $1e $02
    inc e                                         ; $6135: $1c
    ld [bc], a                                    ; $6136: $02
    jr @+$16                                      ; $6137: $18 $14

    nop                                           ; $6139: $00
    rst $38                                       ; $613a: $ff
    rlca                                          ; $613b: $07
    ld bc, $07f8                                  ; $613c: $01 $f8 $07
    ld a, [c]                                     ; $613f: $f2
    ld bc, $fdec                                  ; $6140: $01 $ec $fd
    adc b                                         ; $6143: $88
    nop                                           ; $6144: $00
    ld e, h                                       ; $6145: $5c
    nop                                           ; $6146: $00
    jp c, $8600                                   ; $6147: $da $00 $86

    nop                                           ; $614a: $00
    ld bc, $0005                                  ; $614b: $01 $05 $00
    add l                                         ; $614e: $85
    ld bc, $8300                                  ; $614f: $01 $00 $83
    nop                                           ; $6152: $00
    ld bc, $000e                                  ; $6153: $01 $0e $00
    rst $38                                       ; $6156: $ff
    dec c                                         ; $6157: $0d
    inc b                                         ; $6158: $04
    ei                                            ; $6159: $fb
    dec b                                         ; $615a: $05
    rst $30                                       ; $615b: $f7
    cp $ec                                        ; $615c: $fe $ec
    ld a, [$ffec]                                 ; $615e: $fa $ec $ff
    db $fc                                        ; $6161: $fc
    ld a, [$fffc]                                 ; $6162: $fa $fc $ff

jr_0e3_6165:
    ld [bc], a                                    ; $6165: $02
    rrca                                          ; $6166: $0f
    ld [bc], a                                    ; $6167: $02
    inc d                                         ; $6168: $14
    ld [bc], a                                    ; $6169: $02
    inc h                                         ; $616a: $24
    adc h                                         ; $616b: $8c
    ld l, a                                       ; $616c: $6f
    ld l, e                                       ; $616d: $6b
    ld a, a                                       ; $616e: $7f
    ld a, b                                       ; $616f: $78
    ld a, a                                       ; $6170: $7f
    ld l, l                                       ; $6171: $6d
    ccf                                           ; $6172: $3f
    jr nc, jr_0e3_61f4                            ; $6173: $30 $7f

    ld [hl], d                                    ; $6175: $72
    ld l, a                                       ; $6176: $6f
    ld l, b                                       ; $6177: $68
    ld [bc], a                                    ; $6178: $02
    ccf                                           ; $6179: $3f
    adc h                                         ; $617a: $8c
    ld l, d                                       ; $617b: $6a
    ld a, a                                       ; $617c: $7f
    ld e, l                                       ; $617d: $5d
    ld a, a                                       ; $617e: $7f
    ld e, d                                       ; $617f: $5a
    ld a, a                                       ; $6180: $7f
    cp l                                          ; $6181: $bd
    rst $38                                       ; $6182: $ff
    sbc l                                         ; $6183: $9d
    rst $38                                       ; $6184: $ff
    call c, Call_000_02ff                         ; $6185: $dc $ff $02
    db $10                                        ; $6188: $10
    ld [bc], a                                    ; $6189: $02
    ld [$1402], sp                                ; $618a: $08 $02 $14
    ld [bc], a                                    ; $618d: $02
    ld [bc], a                                    ; $618e: $02
    ld [bc], a                                    ; $618f: $02
    ld a, [de]                                    ; $6190: $1a
    add [hl]                                      ; $6191: $86
    ld e, $16                                     ; $6192: $1e $16
    inc e                                         ; $6194: $1c
    inc c                                         ; $6195: $0c
    ld a, [de]                                    ; $6196: $1a
    ld a, [bc]                                    ; $6197: $0a
    ld [bc], a                                    ; $6198: $02
    ld [de], a                                    ; $6199: $12
    ld [bc], a                                    ; $619a: $02
    inc e                                         ; $619b: $1c
    sub d                                         ; $619c: $92
    ld d, $1e                                     ; $619d: $16 $1e
    ld a, [de]                                    ; $619f: $1a
    ld e, $1a                                     ; $61a0: $1e $1a
    ld e, $1d                                     ; $61a2: $1e $1d
    rra                                           ; $61a4: $1f
    dec e                                         ; $61a5: $1d
    rra                                           ; $61a6: $1f
    add hl, de                                    ; $61a7: $19
    rra                                           ; $61a8: $1f
    ld a, d                                       ; $61a9: $7a
    ld a, a                                       ; $61aa: $7f
    ld a, [$f7bf]                                 ; $61ab: $fa $bf $f7
    cp a                                          ; $61ae: $bf
    ld [bc], a                                    ; $61af: $02
    ld a, a                                       ; $61b0: $7f
    add d                                         ; $61b1: $82
    dec d                                         ; $61b2: $15
    dec e                                         ; $61b3: $1d
    ld [bc], a                                    ; $61b4: $02
    inc e                                         ; $61b5: $1c
    inc d                                         ; $61b6: $14
    nop                                           ; $61b7: $00
    add d                                         ; $61b8: $82
    rra                                           ; $61b9: $1f
    add hl, de                                    ; $61ba: $19
    ld [bc], a                                    ; $61bb: $02
    ld e, $82                                     ; $61bc: $1e $82
    ld c, $1e                                     ; $61be: $0e $1e
    ld [bc], a                                    ; $61c0: $02
    inc e                                         ; $61c1: $1c
    ld [bc], a                                    ; $61c2: $02
    jr jr_0e3_61db                                ; $61c3: $18 $16

    nop                                           ; $61c5: $00
    rst $38                                       ; $61c6: $ff
    rlca                                          ; $61c7: $07
    ld bc, $07f8                                  ; $61c8: $01 $f8 $07
    ld a, [c]                                     ; $61cb: $f2
    ld bc, $fded                                  ; $61cc: $01 $ed $fd
    adc b                                         ; $61cf: $88
    nop                                           ; $61d0: $00
    ld e, h                                       ; $61d1: $5c
    nop                                           ; $61d2: $00
    jp c, $8700                                   ; $61d3: $da $00 $87

    nop                                           ; $61d6: $00
    ld bc, $0005                                  ; $61d7: $01 $05 $00
    add e                                         ; $61da: $83

jr_0e3_61db:
    ld bc, $8300                                  ; $61db: $01 $00 $83
    stop                                          ; $61de: $10 $00
    rst $38                                       ; $61e0: $ff
    dec c                                         ; $61e1: $0d
    inc b                                         ; $61e2: $04
    ei                                            ; $61e3: $fb
    dec b                                         ; $61e4: $05
    rst $30                                       ; $61e5: $f7
    cp $eb                                        ; $61e6: $fe $eb
    ld a, [$ffeb]                                 ; $61e8: $fa $eb $ff
    ei                                            ; $61eb: $fb
    ld a, [$fffb]                                 ; $61ec: $fa $fb $ff
    ld [bc], a                                    ; $61ef: $02
    rrca                                          ; $61f0: $0f
    ld [bc], a                                    ; $61f1: $02
    inc d                                         ; $61f2: $14
    ld [bc], a                                    ; $61f3: $02

jr_0e3_61f4:
    inc h                                         ; $61f4: $24
    adc h                                         ; $61f5: $8c
    cpl                                           ; $61f6: $2f
    dec hl                                        ; $61f7: $2b
    ld a, a                                       ; $61f8: $7f
    ld a, b                                       ; $61f9: $78
    ld a, a                                       ; $61fa: $7f
    ld l, l                                       ; $61fb: $6d
    ld a, a                                       ; $61fc: $7f
    ld [hl], b                                    ; $61fd: $70
    ccf                                           ; $61fe: $3f
    ld [hl-], a                                   ; $61ff: $32
    ld l, a                                       ; $6200: $6f
    ld l, b                                       ; $6201: $68
    ld [bc], a                                    ; $6202: $02
    ld a, a                                       ; $6203: $7f
    adc h                                         ; $6204: $8c
    ld a, d                                       ; $6205: $7a
    ld a, a                                       ; $6206: $7f
    ld e, l                                       ; $6207: $5d
    ld a, a                                       ; $6208: $7f
    ld e, d                                       ; $6209: $5a
    ld a, a                                       ; $620a: $7f
    sbc l                                         ; $620b: $9d
    rst $38                                       ; $620c: $ff
    cp l                                          ; $620d: $bd
    rst $38                                       ; $620e: $ff
    db $dd                                        ; $620f: $dd
    rst $38                                       ; $6210: $ff
    ld [bc], a                                    ; $6211: $02
    db $10                                        ; $6212: $10
    ld [bc], a                                    ; $6213: $02
    ld [$1402], sp                                ; $6214: $08 $02 $14
    ld [bc], a                                    ; $6217: $02
    inc b                                         ; $6218: $04
    ld [bc], a                                    ; $6219: $02
    ld a, [de]                                    ; $621a: $1a
    add [hl]                                      ; $621b: $86
    ld e, $16                                     ; $621c: $1e $16
    ld e, $0e                                     ; $621e: $1e $0e
    inc e                                         ; $6220: $1c
    inc c                                         ; $6221: $0c
    ld [bc], a                                    ; $6222: $02
    ld [de], a                                    ; $6223: $12
    ld [bc], a                                    ; $6224: $02
    ld a, [de]                                    ; $6225: $1a
    sub d                                         ; $6226: $92
    ld d, $1e                                     ; $6227: $16 $1e
    ld a, [de]                                    ; $6229: $1a
    ld e, $1a                                     ; $622a: $1e $1a
    ld e, $19                                     ; $622c: $1e $19
    rra                                           ; $622e: $1f
    dec e                                         ; $622f: $1d
    rra                                           ; $6230: $1f
    dec de                                        ; $6231: $1b
    rra                                           ; $6232: $1f
    ld sp, hl                                     ; $6233: $f9
    cp a                                          ; $6234: $bf
    ld a, d                                       ; $6235: $7a
    ld e, a                                       ; $6236: $5f
    ld [hl], $2f                                  ; $6237: $36 $2f
    ld [bc], a                                    ; $6239: $02
    ld a, a                                       ; $623a: $7f
    ld [bc], a                                    ; $623b: $02
    ccf                                           ; $623c: $3f
    add d                                         ; $623d: $82
    dec d                                         ; $623e: $15
    dec e                                         ; $623f: $1d
    ld [bc], a                                    ; $6240: $02
    ld [$0012], sp                                ; $6241: $08 $12 $00
    add d                                         ; $6244: $82
    rra                                           ; $6245: $1f
    dec e                                         ; $6246: $1d
    ld [bc], a                                    ; $6247: $02
    ld a, [de]                                    ; $6248: $1a
    add d                                         ; $6249: $82
    inc c                                         ; $624a: $0c
    inc e                                         ; $624b: $1c
    ld [bc], a                                    ; $624c: $02
    ld e, $82                                     ; $624d: $1e $82
    inc c                                         ; $624f: $0c
    inc e                                         ; $6250: $1c
    ld [bc], a                                    ; $6251: $02
    jr @+$16                                      ; $6252: $18 $14

    nop                                           ; $6254: $00
    rst $38                                       ; $6255: $ff
    rlca                                          ; $6256: $07
    ld bc, $07f8                                  ; $6257: $01 $f8 $07
    ld a, [c]                                     ; $625a: $f2
    ld bc, $fdec                                  ; $625b: $01 $ec $fd
    adc b                                         ; $625e: $88
    nop                                           ; $625f: $00
    ld e, h                                       ; $6260: $5c
    nop                                           ; $6261: $00
    jp c, $8600                                   ; $6262: $da $00 $86

    nop                                           ; $6265: $00
    ld bc, $0007                                  ; $6266: $01 $07 $00
    add e                                         ; $6269: $83
    add e                                         ; $626a: $83
    nop                                           ; $626b: $00
    ld bc, $000e                                  ; $626c: $01 $0e $00
    rst $38                                       ; $626f: $ff
    dec c                                         ; $6270: $0d
    inc b                                         ; $6271: $04
    ld a, [$f704]                                 ; $6272: $fa $04 $f7
    cp $eb                                        ; $6275: $fe $eb
    ei                                            ; $6277: $fb
    db $ec                                        ; $6278: $ec
    db $fd                                        ; $6279: $fd
    ei                                            ; $627a: $fb
    ld a, [$fcfb]                                 ; $627b: $fa $fb $fc
    ld [bc], a                                    ; $627e: $02
    rra                                           ; $627f: $1f
    ld [bc], a                                    ; $6280: $02
    inc h                                         ; $6281: $24
    ld [bc], a                                    ; $6282: $02
    ld b, e                                       ; $6283: $43
    adc h                                         ; $6284: $8c
    ld d, a                                       ; $6285: $57
    ld d, l                                       ; $6286: $55
    ld h, a                                       ; $6287: $67
    ld h, h                                       ; $6288: $64
    ld a, [hl]                                    ; $6289: $7e
    ld a, d                                       ; $628a: $7a
    ld e, a                                       ; $628b: $5f
    ld d, b                                       ; $628c: $50
    rst $18                                       ; $628d: $df
    ret c                                         ; $628e: $d8

    adc a                                         ; $628f: $8f
    adc c                                         ; $6290: $89
    ld [bc], a                                    ; $6291: $02
    cp [hl]                                       ; $6292: $be
    adc h                                         ; $6293: $8c
    ld [$adfe], a                                 ; $6294: $ea $fe $ad
    rst $38                                       ; $6297: $ff
    ld l, e                                       ; $6298: $6b
    ld a, a                                       ; $6299: $7f
    ld e, l                                       ; $629a: $5d
    ld a, a                                       ; $629b: $7f
    ld c, l                                       ; $629c: $4d
    ld a, a                                       ; $629d: $7f
    db $dd                                        ; $629e: $dd
    rst $38                                       ; $629f: $ff
    ld [bc], a                                    ; $62a0: $02
    ld [bc], a                                    ; $62a1: $02
    ld [bc], a                                    ; $62a2: $02
    ld bc, $0206                                  ; $62a3: $01 $06 $02
    add d                                         ; $62a6: $82
    inc bc                                        ; $62a7: $03
    ld bc, $0202                                  ; $62a8: $01 $02 $02
    stop                                          ; $62ab: $10 $00
    adc [hl]                                      ; $62ad: $8e
    db $f4                                        ; $62ae: $f4
    sbc h                                         ; $62af: $9c
    ld b, b                                       ; $62b0: $40
    ld h, b                                       ; $62b1: $60
    ld a, a                                       ; $62b2: $7f
    ld a, h                                       ; $62b3: $7c
    ld a, $3f                                     ; $62b4: $3e $3f
    ld a, l                                       ; $62b6: $7d
    ld a, a                                       ; $62b7: $7f
    cp e                                          ; $62b8: $bb
    rst $38                                       ; $62b9: $ff
    ld e, h                                       ; $62ba: $5c
    ld a, a                                       ; $62bb: $7f
    ld [bc], a                                    ; $62bc: $02
    ccf                                           ; $62bd: $3f
    inc d                                         ; $62be: $14
    nop                                           ; $62bf: $00
    ld a, [bc]                                    ; $62c0: $0a
    ld [bc], a                                    ; $62c1: $02
    ld [bc], a                                    ; $62c2: $02
    inc bc                                        ; $62c3: $03
    ld [de], a                                    ; $62c4: $12
    nop                                           ; $62c5: $00
    rst $38                                       ; $62c6: $ff
    rlca                                          ; $62c7: $07
    ld bc, $07f8                                  ; $62c8: $01 $f8 $07
    ld a, [c]                                     ; $62cb: $f2
    ld bc, $fcec                                  ; $62cc: $01 $ec $fc
    sub d                                         ; $62cf: $92
    nop                                           ; $62d0: $00
    ld [hl], $00                                  ; $62d1: $36 $00
    ld a, c                                       ; $62d3: $79
    nop                                           ; $62d4: $00
    ld d, b                                       ; $62d5: $50
    nop                                           ; $62d6: $00
    jr nc, jr_0e3_62d9                            ; $62d7: $30 $00

jr_0e3_62d9:
    ld [bc], a                                    ; $62d9: $02
    nop                                           ; $62da: $00
    ld b, b                                       ; $62db: $40
    nop                                           ; $62dc: $00
    ld b, b                                       ; $62dd: $40
    nop                                           ; $62de: $00
    ldh [rP1], a                                  ; $62df: $e0 $00
    add b                                         ; $62e1: $80
    ld c, $00                                     ; $62e2: $0e $00
    rst $38                                       ; $62e4: $ff
    dec c                                         ; $62e5: $0d
    inc b                                         ; $62e6: $04
    ld a, [$f704]                                 ; $62e7: $fa $04 $f7
    cp $eb                                        ; $62ea: $fe $eb
    ei                                            ; $62ec: $fb
    db $ec                                        ; $62ed: $ec
    db $fd                                        ; $62ee: $fd
    ei                                            ; $62ef: $fb
    ld a, [$fdfb]                                 ; $62f0: $fa $fb $fd
    ld [bc], a                                    ; $62f3: $02
    rra                                           ; $62f4: $1f
    ld [bc], a                                    ; $62f5: $02
    inc h                                         ; $62f6: $24
    ld [bc], a                                    ; $62f7: $02
    ld b, e                                       ; $62f8: $43
    adc h                                         ; $62f9: $8c
    ld d, a                                       ; $62fa: $57
    ld d, l                                       ; $62fb: $55
    ld h, a                                       ; $62fc: $67
    ld h, h                                       ; $62fd: $64
    ld a, [hl]                                    ; $62fe: $7e
    ld a, d                                       ; $62ff: $7a
    ld e, a                                       ; $6300: $5f
    ld d, b                                       ; $6301: $50
    rst $18                                       ; $6302: $df
    ret c                                         ; $6303: $d8

    adc a                                         ; $6304: $8f
    adc c                                         ; $6305: $89
    ld [bc], a                                    ; $6306: $02
    cp [hl]                                       ; $6307: $be
    adc h                                         ; $6308: $8c
    ld a, [$adfe]                                 ; $6309: $fa $fe $ad
    rst $38                                       ; $630c: $ff
    ld l, e                                       ; $630d: $6b
    ld a, a                                       ; $630e: $7f
    ld l, l                                       ; $630f: $6d
    ld a, a                                       ; $6310: $7f
    ld b, l                                       ; $6311: $45
    ld a, a                                       ; $6312: $7f
    ld h, a                                       ; $6313: $67
    ld a, a                                       ; $6314: $7f
    ld [bc], a                                    ; $6315: $02
    ld [bc], a                                    ; $6316: $02
    ld [bc], a                                    ; $6317: $02
    ld bc, $0206                                  ; $6318: $01 $06 $02
    add d                                         ; $631b: $82
    inc bc                                        ; $631c: $03
    ld bc, $0202                                  ; $631d: $01 $02 $02
    stop                                          ; $6320: $10 $00
    add d                                         ; $6322: $82
    cp [hl]                                       ; $6323: $be
    ld [c], a                                     ; $6324: $e2
    ld [bc], a                                    ; $6325: $02
    ld h, b                                       ; $6326: $60
    add c                                         ; $6327: $81
    ld a, a                                       ; $6328: $7f
    ld [bc], a                                    ; $6329: $02
    ld a, e                                       ; $632a: $7b
    add a                                         ; $632b: $87
    ld a, a                                       ; $632c: $7f
    or a                                          ; $632d: $b7
    rst $38                                       ; $632e: $ff
    cp a                                          ; $632f: $bf
    rst $38                                       ; $6330: $ff
    rst $30                                       ; $6331: $f7
    rst $38                                       ; $6332: $ff
    ld [bc], a                                    ; $6333: $02
    ld a, [hl]                                    ; $6334: $7e
    inc d                                         ; $6335: $14
    nop                                           ; $6336: $00
    add c                                         ; $6337: $81
    ld [bc], a                                    ; $6338: $02
    inc bc                                        ; $6339: $03
    ld b, $82                                     ; $633a: $06 $82
    ld bc, $0207                                  ; $633c: $01 $07 $02
    ld b, $16                                     ; $633f: $06 $16
    nop                                           ; $6341: $00
    rst $38                                       ; $6342: $ff
    rlca                                          ; $6343: $07
    ld bc, $07f8                                  ; $6344: $01 $f8 $07
    ld a, [c]                                     ; $6347: $f2
    ld bc, $fcec                                  ; $6348: $01 $ec $fc
    sub d                                         ; $634b: $92
    nop                                           ; $634c: $00
    ld [hl], $00                                  ; $634d: $36 $00
    ld a, c                                       ; $634f: $79
    nop                                           ; $6350: $00
    ld d, b                                       ; $6351: $50
    nop                                           ; $6352: $00
    jr nc, jr_0e3_6355                            ; $6353: $30 $00

jr_0e3_6355:
    ld [bc], a                                    ; $6355: $02
    nop                                           ; $6356: $00
    ld b, b                                       ; $6357: $40
    nop                                           ; $6358: $00
    ld b, b                                       ; $6359: $40
    nop                                           ; $635a: $00
    ldh [rP1], a                                  ; $635b: $e0 $00
    add b                                         ; $635d: $80
    ld c, $00                                     ; $635e: $0e $00
    rst $38                                       ; $6360: $ff
    dec c                                         ; $6361: $0d
    inc b                                         ; $6362: $04
    ld a, [$f704]                                 ; $6363: $fa $04 $f7
    cp $ec                                        ; $6366: $fe $ec
    ei                                            ; $6368: $fb
    db $ed                                        ; $6369: $ed
    db $fd                                        ; $636a: $fd
    db $fc                                        ; $636b: $fc
    ld a, [$fcfc]                                 ; $636c: $fa $fc $fc
    ld [bc], a                                    ; $636f: $02
    rra                                           ; $6370: $1f
    ld [bc], a                                    ; $6371: $02
    inc h                                         ; $6372: $24
    ld [bc], a                                    ; $6373: $02
    ld b, e                                       ; $6374: $43
    adc h                                         ; $6375: $8c
    ld d, a                                       ; $6376: $57
    ld d, l                                       ; $6377: $55
    ld l, a                                       ; $6378: $6f
    ld l, h                                       ; $6379: $6c
    ld a, [hl]                                    ; $637a: $7e
    ld a, d                                       ; $637b: $7a
    rst $18                                       ; $637c: $df
    ret nc                                        ; $637d: $d0

    sbc a                                         ; $637e: $9f
    sbc b                                         ; $637f: $98
    sbc a                                         ; $6380: $9f
    sbc c                                         ; $6381: $99
    ld [bc], a                                    ; $6382: $02
    cp $8c                                        ; $6383: $fe $8c
    db $eb                                        ; $6385: $eb
    rst $38                                       ; $6386: $ff
    ld l, l                                       ; $6387: $6d
    ld a, a                                       ; $6388: $7f
    ld l, e                                       ; $6389: $6b
    ld a, a                                       ; $638a: $7f
    ld e, l                                       ; $638b: $5d
    ld a, a                                       ; $638c: $7f
    ld c, l                                       ; $638d: $4d
    ld a, a                                       ; $638e: $7f
    ld e, a                                       ; $638f: $5f
    ld a, a                                       ; $6390: $7f
    ld [bc], a                                    ; $6391: $02
    ld [bc], a                                    ; $6392: $02
    ld [bc], a                                    ; $6393: $02
    ld bc, $0206                                  ; $6394: $01 $06 $02
    add d                                         ; $6397: $82
    inc bc                                        ; $6398: $03
    ld bc, $0202                                  ; $6399: $01 $02 $02
    stop                                          ; $639c: $10 $00
    add h                                         ; $639e: $84
    db $fc                                        ; $639f: $fc
    add h                                         ; $63a0: $84
    ld b, b                                       ; $63a1: $40
    ld h, b                                       ; $63a2: $60
    ld [bc], a                                    ; $63a3: $02
    ld a, a                                       ; $63a4: $7f
    ld [bc], a                                    ; $63a5: $02
    rst $38                                       ; $63a6: $ff
    add h                                         ; $63a7: $84
    cp e                                          ; $63a8: $bb
    rst $38                                       ; $63a9: $ff
    cp a                                          ; $63aa: $bf
    rst $38                                       ; $63ab: $ff
    ld [bc], a                                    ; $63ac: $02
    ld a, h                                       ; $63ad: $7c
    ld d, $00                                     ; $63ae: $16 $00
    inc b                                         ; $63b0: $04
    ld [bc], a                                    ; $63b1: $02
    add c                                         ; $63b2: $81
    ld bc, $0303                                  ; $63b3: $01 $03 $03
    ld d, $00                                     ; $63b6: $16 $00
    rst $38                                       ; $63b8: $ff
    rlca                                          ; $63b9: $07
    ld bc, $07f8                                  ; $63ba: $01 $f8 $07
    ld a, [c]                                     ; $63bd: $f2
    ld bc, $fced                                  ; $63be: $01 $ed $fc
    sub b                                         ; $63c1: $90
    nop                                           ; $63c2: $00
    ld [hl], $00                                  ; $63c3: $36 $00
    ld a, c                                       ; $63c5: $79
    nop                                           ; $63c6: $00
    ld d, b                                       ; $63c7: $50
    nop                                           ; $63c8: $00
    jr nz, jr_0e3_63cb                            ; $63c9: $20 $00

jr_0e3_63cb:
    ld [bc], a                                    ; $63cb: $02
    nop                                           ; $63cc: $00
    ld b, b                                       ; $63cd: $40
    nop                                           ; $63ce: $00
    ret nz                                        ; $63cf: $c0

    nop                                           ; $63d0: $00
    ret nz                                        ; $63d1: $c0

    stop                                          ; $63d2: $10 $00
    rst $38                                       ; $63d4: $ff
    dec c                                         ; $63d5: $0d
    inc b                                         ; $63d6: $04
    ld a, [$f704]                                 ; $63d7: $fa $04 $f7
    cp $eb                                        ; $63da: $fe $eb
    ei                                            ; $63dc: $fb
    db $ec                                        ; $63dd: $ec
    db $fd                                        ; $63de: $fd
    ei                                            ; $63df: $fb
    ld a, [$fcfb]                                 ; $63e0: $fa $fb $fc
    ld [bc], a                                    ; $63e3: $02
    rra                                           ; $63e4: $1f
    ld [bc], a                                    ; $63e5: $02
    inc h                                         ; $63e6: $24
    ld [bc], a                                    ; $63e7: $02
    ld b, d                                       ; $63e8: $42
    adc h                                         ; $63e9: $8c
    ld d, a                                       ; $63ea: $57
    ld d, l                                       ; $63eb: $55
    ld h, a                                       ; $63ec: $67
    ld h, h                                       ; $63ed: $64
    ld a, [hl]                                    ; $63ee: $7e
    ld a, d                                       ; $63ef: $7a
    ld a, a                                       ; $63f0: $7f
    ld [hl], b                                    ; $63f1: $70
    ld e, a                                       ; $63f2: $5f
    ld e, b                                       ; $63f3: $58
    adc a                                         ; $63f4: $8f
    adc c                                         ; $63f5: $89
    ld [bc], a                                    ; $63f6: $02
    cp [hl]                                       ; $63f7: $be
    adc h                                         ; $63f8: $8c
    ld l, d                                       ; $63f9: $6a
    ld a, [hl]                                    ; $63fa: $7e
    xor l                                         ; $63fb: $ad
    rst $38                                       ; $63fc: $ff
    db $db                                        ; $63fd: $db
    rst $38                                       ; $63fe: $ff

Jump_0e3_63ff:
    ld e, l                                       ; $63ff: $5d
    ld a, a                                       ; $6400: $7f
    call $9dff                                    ; $6401: $cd $ff $9d
    rst $38                                       ; $6404: $ff
    ld [bc], a                                    ; $6405: $02
    ld [bc], a                                    ; $6406: $02
    ld [bc], a                                    ; $6407: $02
    ld bc, $0206                                  ; $6408: $01 $06 $02
    add d                                         ; $640b: $82
    inc bc                                        ; $640c: $03
    ld bc, $0202                                  ; $640d: $01 $02 $02
    stop                                          ; $6410: $10 $00
    adc b                                         ; $6412: $88
    db $f4                                        ; $6413: $f4
    inc a                                         ; $6414: $3c
    ld b, b                                       ; $6415: $40
    ld h, b                                       ; $6416: $60
    ccf                                           ; $6417: $3f
    dec sp                                        ; $6418: $3b
    ld a, [hl]                                    ; $6419: $7e
    ld a, l                                       ; $641a: $7d
    ld [bc], a                                    ; $641b: $02
    ld a, a                                       ; $641c: $7f
    add h                                         ; $641d: $84
    cp h                                          ; $641e: $bc
    rst $38                                       ; $641f: $ff
    ld e, a                                       ; $6420: $5f
    ld a, a                                       ; $6421: $7f
    ld [bc], a                                    ; $6422: $02
    jr c, jr_0e3_6439                             ; $6423: $38 $14

    nop                                           ; $6425: $00
    add c                                         ; $6426: $81
    ld bc, $0305                                  ; $6427: $01 $05 $03
    ld [bc], a                                    ; $642a: $02
    ld [bc], a                                    ; $642b: $02
    ld [bc], a                                    ; $642c: $02
    inc bc                                        ; $642d: $03
    inc d                                         ; $642e: $14
    nop                                           ; $642f: $00
    rst $38                                       ; $6430: $ff
    rlca                                          ; $6431: $07
    ld bc, $07f8                                  ; $6432: $01 $f8 $07
    ld a, [c]                                     ; $6435: $f2
    ld bc, $fcec                                  ; $6436: $01 $ec $fc

jr_0e3_6439:
    adc d                                         ; $6439: $8a
    nop                                           ; $643a: $00
    ld [hl], $00                                  ; $643b: $36 $00
    ld a, e                                       ; $643d: $7b
    nop                                           ; $643e: $00
    ld d, b                                       ; $643f: $50
    nop                                           ; $6440: $00
    jr nc, jr_0e3_6443                            ; $6441: $30 $00

jr_0e3_6443:
    ld [bc], a                                    ; $6443: $02
    inc bc                                        ; $6444: $03
    nop                                           ; $6445: $00
    add l                                         ; $6446: $85
    ld b, b                                       ; $6447: $40
    nop                                           ; $6448: $00
    ldh [rP1], a                                  ; $6449: $e0 $00
    add b                                         ; $644b: $80
    ld c, $00                                     ; $644c: $0e $00
    rst $38                                       ; $644e: $ff
    dec c                                         ; $644f: $0d
    inc b                                         ; $6450: $04
    ld a, [$f704]                                 ; $6451: $fa $04 $f7
    cp $eb                                        ; $6454: $fe $eb
    ei                                            ; $6456: $fb
    db $ec                                        ; $6457: $ec
    db $fd                                        ; $6458: $fd
    ei                                            ; $6459: $fb
    ld a, [$fefb]                                 ; $645a: $fa $fb $fe
    ld [bc], a                                    ; $645d: $02
    rra                                           ; $645e: $1f
    ld [bc], a                                    ; $645f: $02
    inc h                                         ; $6460: $24
    ld [bc], a                                    ; $6461: $02
    ld b, e                                       ; $6462: $43
    adc h                                         ; $6463: $8c
    ld d, a                                       ; $6464: $57
    ld d, l                                       ; $6465: $55
    ld h, a                                       ; $6466: $67
    ld h, h                                       ; $6467: $64
    ld a, [hl]                                    ; $6468: $7e
    ld a, d                                       ; $6469: $7a
    ld e, a                                       ; $646a: $5f
    ld d, b                                       ; $646b: $50
    rst $18                                       ; $646c: $df
    ret c                                         ; $646d: $d8

    adc a                                         ; $646e: $8f
    adc c                                         ; $646f: $89
    ld [bc], a                                    ; $6470: $02
    cp [hl]                                       ; $6471: $be
    adc h                                         ; $6472: $8c
    ld [$adfe], a                                 ; $6473: $ea $fe $ad
    rst $38                                       ; $6476: $ff
    ld e, e                                       ; $6477: $5b
    ld a, a                                       ; $6478: $7f
    ld e, l                                       ; $6479: $5d
    ld a, a                                       ; $647a: $7f
    sbc l                                         ; $647b: $9d
    rst $38                                       ; $647c: $ff
    sbc l                                         ; $647d: $9d
    rst $38                                       ; $647e: $ff
    ld [bc], a                                    ; $647f: $02
    ld [bc], a                                    ; $6480: $02
    ld [bc], a                                    ; $6481: $02
    ld bc, $0206                                  ; $6482: $01 $06 $02
    add d                                         ; $6485: $82
    inc bc                                        ; $6486: $03
    ld bc, $0202                                  ; $6487: $01 $02 $02
    stop                                          ; $648a: $10 $00
    adc [hl]                                      ; $648c: $8e
    db $f4                                        ; $648d: $f4
    ld a, h                                       ; $648e: $7c
    and b                                         ; $648f: $a0
    ldh [$7e], a                                  ; $6490: $e0 $7e
    ld [hl], a                                    ; $6492: $77
    ld a, $3b                                     ; $6493: $3e $3b
    ld a, l                                       ; $6495: $7d
    ld a, a                                       ; $6496: $7f
    cp a                                          ; $6497: $bf
    rst $38                                       ; $6498: $ff
    ld c, a                                       ; $6499: $4f
    ld a, a                                       ; $649a: $7f
    ld [bc], a                                    ; $649b: $02
    add hl, sp                                    ; $649c: $39
    inc d                                         ; $649d: $14
    nop                                           ; $649e: $00
    ld [bc], a                                    ; $649f: $02
    ld [$0481], sp                                ; $64a0: $08 $81 $04
    inc bc                                        ; $64a3: $03
    inc c                                         ; $64a4: $0c
    add d                                         ; $64a5: $82
    inc bc                                        ; $64a6: $03
    rrca                                          ; $64a7: $0f
    ld [bc], a                                    ; $64a8: $02
    ld c, $14                                     ; $64a9: $0e $14
    nop                                           ; $64ab: $00
    rst $38                                       ; $64ac: $ff
    rlca                                          ; $64ad: $07
    ld bc, $07f8                                  ; $64ae: $01 $f8 $07
    ld a, [c]                                     ; $64b1: $f2
    ld bc, $fcec                                  ; $64b2: $01 $ec $fc
    sub d                                         ; $64b5: $92
    nop                                           ; $64b6: $00
    ld [hl], $00                                  ; $64b7: $36 $00
    ld a, c                                       ; $64b9: $79
    nop                                           ; $64ba: $00
    ld d, b                                       ; $64bb: $50
    nop                                           ; $64bc: $00
    jr nc, jr_0e3_64bf                            ; $64bd: $30 $00

jr_0e3_64bf:
    ld [bc], a                                    ; $64bf: $02
    nop                                           ; $64c0: $00
    ld b, b                                       ; $64c1: $40
    nop                                           ; $64c2: $00
    ld b, b                                       ; $64c3: $40
    nop                                           ; $64c4: $00
    ldh [rP1], a                                  ; $64c5: $e0 $00
    add b                                         ; $64c7: $80
    ld c, $00                                     ; $64c8: $0e $00
    rst $38                                       ; $64ca: $ff
    dec c                                         ; $64cb: $0d
    inc b                                         ; $64cc: $04
    ld a, [$f704]                                 ; $64cd: $fa $04 $f7
    cp $ec                                        ; $64d0: $fe $ec
    ei                                            ; $64d2: $fb
    db $ed                                        ; $64d3: $ed
    db $fd                                        ; $64d4: $fd
    db $fc                                        ; $64d5: $fc
    ld a, [$fdfc]                                 ; $64d6: $fa $fc $fd
    ld [bc], a                                    ; $64d9: $02
    rra                                           ; $64da: $1f
    ld [bc], a                                    ; $64db: $02
    inc h                                         ; $64dc: $24
    ld [bc], a                                    ; $64dd: $02
    ld b, e                                       ; $64de: $43
    adc h                                         ; $64df: $8c
    ld d, a                                       ; $64e0: $57
    ld d, l                                       ; $64e1: $55
    ld l, a                                       ; $64e2: $6f
    ld l, h                                       ; $64e3: $6c
    ld a, [hl]                                    ; $64e4: $7e
    ld a, d                                       ; $64e5: $7a
    rst $18                                       ; $64e6: $df
    ret nc                                        ; $64e7: $d0

    sbc a                                         ; $64e8: $9f
    sbc b                                         ; $64e9: $98
    sbc a                                         ; $64ea: $9f
    sbc c                                         ; $64eb: $99
    ld [bc], a                                    ; $64ec: $02
    cp $8c                                        ; $64ed: $fe $8c
    db $eb                                        ; $64ef: $eb
    rst $38                                       ; $64f0: $ff
    ld l, l                                       ; $64f1: $6d
    ld a, a                                       ; $64f2: $7f
    ld e, e                                       ; $64f3: $5b
    ld a, a                                       ; $64f4: $7f
    ld e, l                                       ; $64f5: $5d
    ld a, a                                       ; $64f6: $7f
    adc l                                         ; $64f7: $8d
    rst $38                                       ; $64f8: $ff
    sbc l                                         ; $64f9: $9d
    rst $38                                       ; $64fa: $ff
    ld [bc], a                                    ; $64fb: $02
    ld [bc], a                                    ; $64fc: $02
    ld [bc], a                                    ; $64fd: $02
    ld bc, $0206                                  ; $64fe: $01 $06 $02
    add d                                         ; $6501: $82
    inc bc                                        ; $6502: $03
    ld bc, $0202                                  ; $6503: $01 $02 $02
    stop                                          ; $6506: $10 $00
    adc h                                         ; $6508: $8c
    db $f4                                        ; $6509: $f4
    inc a                                         ; $650a: $3c
    and b                                         ; $650b: $a0

jr_0e3_650c:
    ldh [$7e], a                                  ; $650c: $e0 $7e
    ld a, c                                       ; $650e: $79
    ld a, l                                       ; $650f: $7d
    ld a, a                                       ; $6510: $7f
    cp l                                          ; $6511: $bd
    rst $38                                       ; $6512: $ff
    ld e, [hl]                                    ; $6513: $5e
    ld a, a                                       ; $6514: $7f
    ld [bc], a                                    ; $6515: $02
    dec sp                                        ; $6516: $3b
    ld d, $00                                     ; $6517: $16 $00
    ld b, $04                                     ; $6519: $06 $04
    add d                                         ; $651b: $82
    ld [bc], a                                    ; $651c: $02
    ld b, $02                                     ; $651d: $06 $02
    rlca                                          ; $651f: $07
    inc d                                         ; $6520: $14
    nop                                           ; $6521: $00
    rst $38                                       ; $6522: $ff
    rlca                                          ; $6523: $07
    ld bc, $07f8                                  ; $6524: $01 $f8 $07
    ld a, [c]                                     ; $6527: $f2
    ld bc, $fced                                  ; $6528: $01 $ed $fc
    sub b                                         ; $652b: $90
    nop                                           ; $652c: $00
    ld [hl], $00                                  ; $652d: $36 $00
    ld a, c                                       ; $652f: $79
    nop                                           ; $6530: $00
    ld d, b                                       ; $6531: $50
    nop                                           ; $6532: $00
    jr nz, jr_0e3_6535                            ; $6533: $20 $00

jr_0e3_6535:
    ld [bc], a                                    ; $6535: $02
    nop                                           ; $6536: $00
    ld b, b                                       ; $6537: $40
    nop                                           ; $6538: $00
    ret nz                                        ; $6539: $c0

    nop                                           ; $653a: $00
    ret nz                                        ; $653b: $c0

    stop                                          ; $653c: $10 $00
    rst $38                                       ; $653e: $ff
    dec c                                         ; $653f: $0d
    inc b                                         ; $6540: $04
    ld a, [$f704]                                 ; $6541: $fa $04 $f7
    cp $eb                                        ; $6544: $fe $eb
    ei                                            ; $6546: $fb
    db $ec                                        ; $6547: $ec
    db $fd                                        ; $6548: $fd
    ei                                            ; $6549: $fb
    ld a, [$fcfb]                                 ; $654a: $fa $fb $fc
    ld [bc], a                                    ; $654d: $02
    rra                                           ; $654e: $1f
    ld [bc], a                                    ; $654f: $02
    inc h                                         ; $6550: $24
    ld [bc], a                                    ; $6551: $02
    ld b, d                                       ; $6552: $42
    adc h                                         ; $6553: $8c
    ld d, a                                       ; $6554: $57
    ld d, l                                       ; $6555: $55
    ld h, a                                       ; $6556: $67
    ld h, h                                       ; $6557: $64
    ld a, [hl]                                    ; $6558: $7e
    ld a, d                                       ; $6559: $7a
    ld a, a                                       ; $655a: $7f
    ld [hl], b                                    ; $655b: $70
    ld e, a                                       ; $655c: $5f
    ld e, b                                       ; $655d: $58
    adc a                                         ; $655e: $8f
    adc c                                         ; $655f: $89
    ld [bc], a                                    ; $6560: $02
    cp [hl]                                       ; $6561: $be
    adc h                                         ; $6562: $8c
    ld a, d                                       ; $6563: $7a
    ld a, [hl]                                    ; $6564: $7e
    xor l                                         ; $6565: $ad
    rst $38                                       ; $6566: $ff
    db $eb                                        ; $6567: $eb
    rst $38                                       ; $6568: $ff
    ld l, l                                       ; $6569: $6d
    ld a, a                                       ; $656a: $7f
    ld b, l                                       ; $656b: $45
    ld a, a                                       ; $656c: $7f
    ld c, l                                       ; $656d: $4d
    ld a, a                                       ; $656e: $7f
    ld [bc], a                                    ; $656f: $02
    ld [bc], a                                    ; $6570: $02
    ld [bc], a                                    ; $6571: $02
    ld bc, $0206                                  ; $6572: $01 $06 $02
    add d                                         ; $6575: $82
    inc bc                                        ; $6576: $03
    ld bc, $0202                                  ; $6577: $01 $02 $02
    stop                                          ; $657a: $10 $00
    add d                                         ; $657c: $82
    ld a, [$02c6]                                 ; $657d: $fa $c6 $02
    jr nz, jr_0e3_650c                            ; $6580: $20 $8a

    ld a, a                                       ; $6582: $7f
    ld [hl], a                                    ; $6583: $77
    ld a, l                                       ; $6584: $7d
    ld a, a                                       ; $6585: $7f
    ei                                            ; $6586: $fb
    rst $38                                       ; $6587: $ff
    cp a                                          ; $6588: $bf
    rst $38                                       ; $6589: $ff
    ld e, l                                       ; $658a: $5d
    ld a, a                                       ; $658b: $7f
    ld [bc], a                                    ; $658c: $02
    ccf                                           ; $658d: $3f
    inc d                                         ; $658e: $14
    nop                                           ; $658f: $00
    add c                                         ; $6590: $81
    ld bc, $0303                                  ; $6591: $01 $03 $03
    ld [bc], a                                    ; $6594: $02
    ld [bc], a                                    ; $6595: $02
    ld [bc], a                                    ; $6596: $02
    inc bc                                        ; $6597: $03
    ld [bc], a                                    ; $6598: $02
    nop                                           ; $6599: $00
    ld [bc], a                                    ; $659a: $02
    ld [bc], a                                    ; $659b: $02
    ld [de], a                                    ; $659c: $12
    nop                                           ; $659d: $00
    rst $38                                       ; $659e: $ff
    rlca                                          ; $659f: $07

jr_0e3_65a0:
    ld bc, $07f8                                  ; $65a0: $01 $f8 $07
    ld a, [c]                                     ; $65a3: $f2
    ld bc, $fcec                                  ; $65a4: $01 $ec $fc
    adc d                                         ; $65a7: $8a
    nop                                           ; $65a8: $00
    ld [hl], $00                                  ; $65a9: $36 $00
    ld a, e                                       ; $65ab: $7b
    nop                                           ; $65ac: $00
    ld d, b                                       ; $65ad: $50
    nop                                           ; $65ae: $00
    jr nc, jr_0e3_65b1                            ; $65af: $30 $00

jr_0e3_65b1:
    ld [bc], a                                    ; $65b1: $02
    inc bc                                        ; $65b2: $03
    nop                                           ; $65b3: $00
    add l                                         ; $65b4: $85
    ld b, b                                       ; $65b5: $40
    nop                                           ; $65b6: $00
    ldh [rP1], a                                  ; $65b7: $e0 $00
    add b                                         ; $65b9: $80
    ld c, $00                                     ; $65ba: $0e $00
    rst $38                                       ; $65bc: $ff
    rrca                                          ; $65bd: $0f
    dec b                                         ; $65be: $05
    ld [bc], a                                    ; $65bf: $02
    ld de, $fbec                                  ; $65c0: $11 $ec $fb
    db $eb                                        ; $65c3: $eb
    db $fc                                        ; $65c4: $fc
    db $ec                                        ; $65c5: $ec
    inc b                                         ; $65c6: $04
    xor $09                                       ; $65c7: $ee $09
    ei                                            ; $65c9: $fb
    ei                                            ; $65ca: $fb
    ei                                            ; $65cb: $fb
    db $fd                                        ; $65cc: $fd
    ld [bc], a                                    ; $65cd: $02
    rra                                           ; $65ce: $1f
    ld [bc], a                                    ; $65cf: $02
    inc h                                         ; $65d0: $24
    ld [bc], a                                    ; $65d1: $02
    ld b, e                                       ; $65d2: $43
    adc h                                         ; $65d3: $8c
    ld d, a                                       ; $65d4: $57
    ld d, l                                       ; $65d5: $55
    ld h, a                                       ; $65d6: $67
    ld h, h                                       ; $65d7: $64
    ld a, a                                       ; $65d8: $7f
    ld a, d                                       ; $65d9: $7a
    ld e, a                                       ; $65da: $5f
    ld d, b                                       ; $65db: $50
    rst $18                                       ; $65dc: $df
    ret c                                         ; $65dd: $d8

    adc a                                         ; $65de: $8f
    adc c                                         ; $65df: $89
    ld [bc], a                                    ; $65e0: $02
    cp [hl]                                       ; $65e1: $be
    adc h                                         ; $65e2: $8c
    ld [$adfe], a                                 ; $65e3: $ea $fe $ad
    rst $38                                       ; $65e6: $ff
    ld l, a                                       ; $65e7: $6f
    ld a, a                                       ; $65e8: $7f
    scf                                           ; $65e9: $37
    ccf                                           ; $65ea: $3f
    ld [hl], d                                    ; $65eb: $72
    ld a, a                                       ; $65ec: $7f
    ld a, c                                       ; $65ed: $79
    ld a, a                                       ; $65ee: $7f
    ld [bc], a                                    ; $65ef: $02
    add b                                         ; $65f0: $80
    ld [bc], a                                    ; $65f1: $02
    ld b, e                                       ; $65f2: $43
    sbc d                                         ; $65f3: $9a
    add [hl]                                      ; $65f4: $86
    add a                                         ; $65f5: $87
    add h                                         ; $65f6: $84
    add a                                         ; $65f7: $87
    adc c                                         ; $65f8: $89
    adc a                                         ; $65f9: $8f
    call z, $9e4f                                 ; $65fa: $cc $4f $9e
    sbc a                                         ; $65fd: $9f
    jr jr_0e3_661f                                ; $65fe: $18 $1f

    jr nc, @+$41                                  ; $6600: $30 $3f

    ld a, b                                       ; $6602: $78
    ld a, a                                       ; $6603: $7f
    cp l                                          ; $6604: $bd
    rst $38                                       ; $6605: $ff
    ld [hl], b                                    ; $6606: $70
    rst $18                                       ; $6607: $df
    rst $38                                       ; $6608: $ff
    rst $18                                       ; $6609: $df
    ld hl, sp-$41                                 ; $660a: $f8 $bf
    or $37                                        ; $660c: $f6 $37
    ld [bc], a                                    ; $660e: $02
    call nz, $1002                                ; $660f: $c4 $02 $10
    add h                                         ; $6612: $84
    ld [$1418], sp                                ; $6613: $08 $18 $14
    inc e                                         ; $6616: $1c
    ld [bc], a                                    ; $6617: $02
    jr jr_0e3_65a0                                ; $6618: $18 $86

    ld [$0818], sp                                ; $661a: $08 $18 $08
    jr jr_0e3_662b                                ; $661d: $18 $0c

jr_0e3_661f:
    inc e                                         ; $661f: $1c
    ld [bc], a                                    ; $6620: $02
    ld e, $88                                     ; $6621: $1e $88
    ld b, $1e                                     ; $6623: $06 $1e
    dec c                                         ; $6625: $0d
    rra                                           ; $6626: $1f
    ld de, $071f                                  ; $6627: $11 $1f $07
    rra                                           ; $662a: $1f

jr_0e3_662b:
    ld [bc], a                                    ; $662b: $02
    jr jr_0e3_6634                                ; $662c: $18 $06

    nop                                           ; $662e: $00
    ld [bc], a                                    ; $662f: $02
    ccf                                           ; $6630: $3f
    adc d                                         ; $6631: $8a
    ld a, l                                       ; $6632: $7d
    ld a, a                                       ; $6633: $7f

jr_0e3_6634:
    ld a, l                                       ; $6634: $7d
    ld a, a                                       ; $6635: $7f
    cp e                                          ; $6636: $bb
    rst $38                                       ; $6637: $ff
    cp a                                          ; $6638: $bf
    rst $38                                       ; $6639: $ff
    pop de                                        ; $663a: $d1
    rst $38                                       ; $663b: $ff
    ld [bc], a                                    ; $663c: $02
    ld a, a                                       ; $663d: $7f
    ld [de], a                                    ; $663e: $12
    nop                                           ; $663f: $00
    ld [$0402], sp                                ; $6640: $08 $02 $04
    inc bc                                        ; $6643: $03
    inc d                                         ; $6644: $14
    nop                                           ; $6645: $00
    rst $38                                       ; $6646: $ff
    rlca                                          ; $6647: $07
    ld bc, $1102                                  ; $6648: $01 $02 $11
    db $ec                                        ; $664b: $ec
    ei                                            ; $664c: $fb
    db $ec                                        ; $664d: $ec
    db $fd                                        ; $664e: $fd
    adc b                                         ; $664f: $88
    nop                                           ; $6650: $00
    ld [hl], $00                                  ; $6651: $36 $00
    ld a, c                                       ; $6653: $79
    nop                                           ; $6654: $00
    ld d, b                                       ; $6655: $50

jr_0e3_6656:
    nop                                           ; $6656: $00
    jr nc, jr_0e3_665c                            ; $6657: $30 $03

    nop                                           ; $6659: $00
    add a                                         ; $665a: $87
    ld b, b                                       ; $665b: $40

jr_0e3_665c:
    nop                                           ; $665c: $00
    ld b, b                                       ; $665d: $40
    nop                                           ; $665e: $00
    ldh [rP1], a                                  ; $665f: $e0 $00
    add b                                         ; $6661: $80
    ld c, $00                                     ; $6662: $0e $00
    rst $38                                       ; $6664: $ff
    rrca                                          ; $6665: $0f
    dec b                                         ; $6666: $05
    ld [bc], a                                    ; $6667: $02
    ld de, $fbec                                  ; $6668: $11 $ec $fb
    db $eb                                        ; $666b: $eb
    cp $eb                                        ; $666c: $fe $eb
    ld b, $ed                                     ; $666e: $06 $ed
    dec c                                         ; $6670: $0d
    ei                                            ; $6671: $fb
    cp $fb                                        ; $6672: $fe $fb
    nop                                           ; $6674: $00
    ld [bc], a                                    ; $6675: $02
    rrca                                          ; $6676: $0f
    ld [bc], a                                    ; $6677: $02
    ld [de], a                                    ; $6678: $12
    ld [bc], a                                    ; $6679: $02
    inc hl                                        ; $667a: $23
    sub h                                         ; $667b: $94
    scf                                           ; $667c: $37
    dec [hl]                                      ; $667d: $35
    cpl                                           ; $667e: $2f
    jr z, jr_0e3_66e0                             ; $667f: $28 $5f

    ld e, d                                       ; $6681: $5a
    ld l, a                                       ; $6682: $6f
    ld h, b                                       ; $6683: $60
    sbc a                                         ; $6684: $9f
    sbc b                                         ; $6685: $98
    sbc a                                         ; $6686: $9f
    sbc b                                         ; $6687: $98
    ld l, a                                       ; $6688: $6f
    ld a, a                                       ; $6689: $7f
    ld e, e                                       ; $668a: $5b
    ld a, a                                       ; $668b: $7f
    inc a                                         ; $668c: $3c
    ccf                                           ; $668d: $3f
    ld e, $1f                                     ; $668e: $1e $1f
    ld [bc], a                                    ; $6690: $02
    ccf                                           ; $6691: $3f
    add h                                         ; $6692: $84
    ld a, $3f                                     ; $6693: $3e $3f
    ld a, l                                       ; $6695: $7d
    ld a, a                                       ; $6696: $7f
    ld [bc], a                                    ; $6697: $02
    add b                                         ; $6698: $80
    ld [bc], a                                    ; $6699: $02
    ld b, b                                       ; $669a: $40
    ld [bc], a                                    ; $669b: $02
    ld h, b                                       ; $669c: $60
    ld [bc], a                                    ; $669d: $02
    ldh [$82], a                                  ; $669e: $e0 $82
    pop bc                                        ; $66a0: $c1
    ld b, c                                       ; $66a1: $41
    ld [bc], a                                    ; $66a2: $02
    jp $cf82                                      ; $66a3: $c3 $82 $cf


    ld c, a                                       ; $66a6: $4f
    ld [bc], a                                    ; $66a7: $02
    ld a, a                                       ; $66a8: $7f
    adc d                                         ; $66a9: $8a
    rst $28                                       ; $66aa: $ef
    rst $38                                       ; $66ab: $ff
    cp [hl]                                       ; $66ac: $be
    xor a                                         ; $66ad: $af
    ld a, [c]                                     ; $66ae: $f2
    rst $28                                       ; $66af: $ef
    cp l                                          ; $66b0: $bd
    rst $28                                       ; $66b1: $ef
    inc a                                         ; $66b2: $3c
    rst $08                                       ; $66b3: $cf
    ld [bc], a                                    ; $66b4: $02
    rst $38                                       ; $66b5: $ff
    ld [bc], a                                    ; $66b6: $02
    add c                                         ; $66b7: $81
    add d                                         ; $66b8: $82
    ld b, b                                       ; $66b9: $40
    ret nz                                        ; $66ba: $c0

    ld [bc], a                                    ; $66bb: $02
    jr jr_0e3_6656                                ; $66bc: $18 $98

    inc [hl]                                      ; $66be: $34
    inc a                                         ; $66bf: $3c
    ld h, h                                       ; $66c0: $64
    ld a, h                                       ; $66c1: $7c
    ld l, d                                       ; $66c2: $6a
    ld a, [hl]                                    ; $66c3: $7e
    ld b, [hl]                                    ; $66c4: $46
    ld a, [hl]                                    ; $66c5: $7e
    inc b                                         ; $66c6: $04
    ld a, h                                       ; $66c7: $7c
    inc b                                         ; $66c8: $04
    ld a, h                                       ; $66c9: $7c
    ld b, h                                       ; $66ca: $44
    ld a, h                                       ; $66cb: $7c
    ld e, b                                       ; $66cc: $58
    ld a, b                                       ; $66cd: $78
    ld c, $7e                                     ; $66ce: $0e $7e
    ld h, l                                       ; $66d0: $65
    ld a, a                                       ; $66d1: $7f
    add hl, de                                    ; $66d2: $19
    ld a, a                                       ; $66d3: $7f
    ld h, [hl]                                    ; $66d4: $66
    ld a, [hl]                                    ; $66d5: $7e
    ld [bc], a                                    ; $66d6: $02
    jr jr_0e3_66dd                                ; $66d7: $18 $04

    nop                                           ; $66d9: $00
    adc h                                         ; $66da: $8c
    db $fd                                        ; $66db: $fd
    rst $38                                       ; $66dc: $ff

jr_0e3_66dd:
    cp e                                          ; $66dd: $bb
    rst $38                                       ; $66de: $ff
    or a                                          ; $66df: $b7

jr_0e3_66e0:
    rst $38                                       ; $66e0: $ff
    cp a                                          ; $66e1: $bf
    rst $38                                       ; $66e2: $ff
    ld [hl], h                                    ; $66e3: $74
    ld a, h                                       ; $66e4: $7c
    ld [hl-], a                                   ; $66e5: $32
    ld a, $02                                     ; $66e6: $3e $02
    inc c                                         ; $66e8: $0c
    ld [de], a                                    ; $66e9: $12
    nop                                           ; $66ea: $00
    add d                                         ; $66eb: $82
    ld bc, $0203                                  ; $66ec: $01 $03 $02
    ld [bc], a                                    ; $66ef: $02
    add c                                         ; $66f0: $81
    ld bc, $0303                                  ; $66f1: $01 $03 $03
    jr jr_0e3_66f6                                ; $66f4: $18 $00

jr_0e3_66f6:
    rst $38                                       ; $66f6: $ff
    rlca                                          ; $66f7: $07
    ld bc, $1102                                  ; $66f8: $01 $02 $11
    db $ec                                        ; $66fb: $ec
    ei                                            ; $66fc: $fb
    db $ec                                        ; $66fd: $ec
    rst $38                                       ; $66fe: $ff
    sub b                                         ; $66ff: $90
    nop                                           ; $6700: $00
    dec de                                        ; $6701: $1b
    nop                                           ; $6702: $00
    add hl, sp                                    ; $6703: $39
    nop                                           ; $6704: $00
    stop                                          ; $6705: $10 $00
    jr nz, jr_0e3_6709                            ; $6707: $20 $00

jr_0e3_6709:
    ld b, b                                       ; $6709: $40
    nop                                           ; $670a: $00
    jr nz, jr_0e3_670d                            ; $670b: $20 $00

jr_0e3_670d:
    pop bc                                        ; $670d: $c1
    nop                                           ; $670e: $00
    ret nz                                        ; $670f: $c0

    stop                                          ; $6710: $10 $00
    rst $38                                       ; $6712: $ff
    rrca                                          ; $6713: $0f
    dec b                                         ; $6714: $05
    ld [bc], a                                    ; $6715: $02
    ld de, $fbec                                  ; $6716: $11 $ec $fb
    ld [$ea00], a                                 ; $6719: $ea $00 $ea
    ld [$0deb], sp                                ; $671c: $08 $eb $0d
    ld a, [$fa00]                                 ; $671f: $fa $00 $fa
    inc b                                         ; $6722: $04
    ld [bc], a                                    ; $6723: $02
    inc bc                                        ; $6724: $03
    sbc [hl]                                      ; $6725: $9e
    ld b, $07                                     ; $6726: $06 $07
    inc e                                         ; $6728: $1c
    rra                                           ; $6729: $1f
    ccf                                           ; $672a: $3f
    dec sp                                        ; $672b: $3b
    daa                                           ; $672c: $27
    dec h                                         ; $672d: $25
    ld c, a                                       ; $672e: $4f
    ld c, d                                       ; $672f: $4a
    ld l, a                                       ; $6730: $6f
    ld l, d                                       ; $6731: $6a
    ld a, l                                       ; $6732: $7d
    ld a, a                                       ; $6733: $7f
    cp b                                          ; $6734: $b8
    xor a                                         ; $6735: $af
    sub c                                         ; $6736: $91
    sbc a                                         ; $6737: $9f
    and a                                         ; $6738: $a7
    cp a                                          ; $6739: $bf
    ld a, d                                       ; $673a: $7a
    ld a, a                                       ; $673b: $7f
    dec a                                         ; $673c: $3d
    ccf                                           ; $673d: $3f
    ld a, $3f                                     ; $673e: $3e $3f
    dec a                                         ; $6740: $3d
    ccf                                           ; $6741: $3f
    jr c, @+$41                                   ; $6742: $38 $3f

    ld [bc], a                                    ; $6744: $02
    ldh a, [$81]                                  ; $6745: $f0 $81

jr_0e3_6747:
    rra                                           ; $6747: $1f
    inc bc                                        ; $6748: $03
    rst $38                                       ; $6749: $ff
    adc [hl]                                      ; $674a: $8e
    ld a, b                                       ; $674b: $78
    rst $38                                       ; $674c: $ff
    ldh a, [rIE]                                  ; $674d: $f0 $ff
    add sp, -$01                                  ; $674f: $e8 $ff
    di                                            ; $6751: $f3
    ld a, a                                       ; $6752: $7f
    sbc c                                         ; $6753: $99
    rst $38                                       ; $6754: $ff
    adc [hl]                                      ; $6755: $8e
    rst $38                                       ; $6756: $ff
    pop af                                        ; $6757: $f1
    ld a, a                                       ; $6758: $7f
    ld [bc], a                                    ; $6759: $02
    rst $38                                       ; $675a: $ff
    add d                                         ; $675b: $82
    sbc b                                         ; $675c: $98
    ld hl, sp+$02                                 ; $675d: $f8 $02
    ldh [rSC], a                                  ; $675f: $e0 $02
    add b                                         ; $6761: $80
    ld [bc], a                                    ; $6762: $02
    ret nz                                        ; $6763: $c0

    add d                                         ; $6764: $82
    jr nz, jr_0e3_6747                            ; $6765: $20 $e0

    ld [bc], a                                    ; $6767: $02
    inc e                                         ; $6768: $1c
    add [hl]                                      ; $6769: $86
    ld b, $1e                                     ; $676a: $06 $1e
    ld [bc], a                                    ; $676c: $02
    ld e, $05                                     ; $676d: $1e $05
    rra                                           ; $676f: $1f
    ld [bc], a                                    ; $6770: $02
    ld a, [de]                                    ; $6771: $1a
    ld b, $10                                     ; $6772: $06 $10
    stop                                          ; $6774: $10 $00
    adc [hl]                                      ; $6776: $8e
    ld a, l                                       ; $6777: $7d
    ld a, a                                       ; $6778: $7f
    ld a, e                                       ; $6779: $7b
    ld a, a                                       ; $677a: $7f
    cp e                                          ; $677b: $bb
    rst $38                                       ; $677c: $ff
    or a                                          ; $677d: $b7
    rst $38                                       ; $677e: $ff
    ld c, [hl]                                    ; $677f: $4e
    ld a, [hl]                                    ; $6780: $7e
    ld a, [hl-]                                   ; $6781: $3a
    ld a, $34                                     ; $6782: $3e $34
    inc a                                         ; $6784: $3c
    ld [bc], a                                    ; $6785: $02
    inc c                                         ; $6786: $0c
    stop                                          ; $6787: $10 $00
    add e                                         ; $6789: $83
    ld a, [bc]                                    ; $678a: $0a
    ld c, $0a                                     ; $678b: $0e $0a
    inc bc                                        ; $678d: $03
    ld c, $82                                     ; $678e: $0e $82
    add hl, bc                                    ; $6790: $09
    rrca                                          ; $6791: $0f
    ld [bc], a                                    ; $6792: $02
    ld c, $16                                     ; $6793: $0e $16
    nop                                           ; $6795: $00
    rst $38                                       ; $6796: $ff
    rlca                                          ; $6797: $07
    ld bc, $1102                                  ; $6798: $01 $02 $11
    db $ec                                        ; $679b: $ec
    ei                                            ; $679c: $fb
    xor $fd                                       ; $679d: $ee $fd
    add [hl]                                      ; $679f: $86
    nop                                           ; $67a0: $00
    inc bc                                        ; $67a1: $03
    nop                                           ; $67a2: $00
    ld b, $00                                     ; $67a3: $06 $00
    ld [bc], a                                    ; $67a5: $02
    inc bc                                        ; $67a6: $03
    nop                                           ; $67a7: $00
    add l                                         ; $67a8: $85
    ld [$0c00], sp                                ; $67a9: $08 $00 $0c
    nop                                           ; $67ac: $00
    ld [$0012], sp                                ; $67ad: $08 $12 $00
    rst $38                                       ; $67b0: $ff
    dec c                                         ; $67b1: $0d
    inc b                                         ; $67b2: $04
    ld [bc], a                                    ; $67b3: $02
    ld de, $fbec                                  ; $67b4: $11 $ec $fb
    ld [c], a                                     ; $67b7: $e2
    inc bc                                        ; $67b8: $03
    ld [c], a                                     ; $67b9: $e2
    add hl, bc                                    ; $67ba: $09
    ld a, [c]                                     ; $67bb: $f2
    inc b                                         ; $67bc: $04
    ld a, [c]                                     ; $67bd: $f2
    rlca                                          ; $67be: $07
    ld [bc], a                                    ; $67bf: $02
    ld bc, $0302                                  ; $67c0: $01 $02 $03
    add [hl]                                      ; $67c3: $86
    ld [bc], a                                    ; $67c4: $02
    inc bc                                        ; $67c5: $03
    inc b                                         ; $67c6: $04
    rlca                                          ; $67c7: $07
    ld b, $07                                     ; $67c8: $06 $07
    ld [bc], a                                    ; $67ca: $02
    rrca                                          ; $67cb: $0f
    sub h                                         ; $67cc: $94
    inc e                                         ; $67cd: $1c
    rra                                           ; $67ce: $1f
    jr c, jr_0e3_6810                             ; $67cf: $38 $3f

    call c, $9aff                                 ; $67d1: $dc $ff $9a
    rst $38                                       ; $67d4: $ff
    ld hl, sp-$41                                 ; $67d5: $f8 $bf
    ld a, a                                       ; $67d7: $7f
    ld e, a                                       ; $67d8: $5f
    inc a                                         ; $67d9: $3c
    daa                                           ; $67da: $27
    ccf                                           ; $67db: $3f
    scf                                           ; $67dc: $37
    ld e, a                                       ; $67dd: $5f
    ld a, a                                       ; $67de: $7f
    ld b, a                                       ; $67df: $47
    ld a, [hl]                                    ; $67e0: $7e
    ld [bc], a                                    ; $67e1: $02
    jr nz, @-$44                                  ; $67e2: $20 $ba

    db $10                                        ; $67e4: $10
    jr nc, jr_0e3_67ef                            ; $67e5: $30 $08

    jr c, jr_0e3_681d                             ; $67e7: $38 $34

    inc a                                         ; $67e9: $3c
    jr @+$3a                                      ; $67ea: $18 $38

    ld [$0838], sp                                ; $67ec: $08 $38 $08

jr_0e3_67ef:
    jr c, @+$0e                                   ; $67ef: $38 $0c

    inc a                                         ; $67f1: $3c
    ld e, $3e                                     ; $67f2: $1e $3e
    ld h, $3e                                     ; $67f4: $26 $3e
    dec c                                         ; $67f6: $0d
    ccf                                           ; $67f7: $3f
    ld sp, $073f                                  ; $67f8: $31 $3f $07
    ccf                                           ; $67fb: $3f
    ld e, $3a                                     ; $67fc: $1e $3a
    inc [hl]                                      ; $67fe: $34
    inc e                                         ; $67ff: $1c
    inc [hl]                                      ; $6800: $34
    inc a                                         ; $6801: $3c
    sbc a                                         ; $6802: $9f
    rst $30                                       ; $6803: $f7
    ld e, a                                       ; $6804: $5f

jr_0e3_6805:
    ld a, a                                       ; $6805: $7f
    ld [hl], l                                    ; $6806: $75
    ld a, a                                       ; $6807: $7f
    dec sp                                        ; $6808: $3b
    ccf                                           ; $6809: $3f
    ld [hl], l                                    ; $680a: $75
    ld a, a                                       ; $680b: $7f
    ld a, e                                       ; $680c: $7b
    ld a, a                                       ; $680d: $7f
    ld a, e                                       ; $680e: $7b
    ld a, a                                       ; $680f: $7f

jr_0e3_6810:
    ld a, b                                       ; $6810: $78
    ld a, a                                       ; $6811: $7f
    ld a, e                                       ; $6812: $7b
    ld a, a                                       ; $6813: $7f
    rst $30                                       ; $6814: $f7
    rst $38                                       ; $6815: $ff
    rst $30                                       ; $6816: $f7
    rst $38                                       ; $6817: $ff
    rst $28                                       ; $6818: $ef
    rst $38                                       ; $6819: $ff
    ld d, [hl]                                    ; $681a: $56
    ld a, a                                       ; $681b: $7f
    ld l, c                                       ; $681c: $69

jr_0e3_681d:
    ld a, c                                       ; $681d: $79
    ld [bc], a                                    ; $681e: $02
    jr nc, jr_0e3_6823                            ; $681f: $30 $02

    nop                                           ; $6821: $00
    add h                                         ; $6822: $84

jr_0e3_6823:
    ld bc, $0207                                  ; $6823: $01 $07 $02
    ld b, $04                                     ; $6826: $06 $04
    inc b                                         ; $6828: $04
    ld [bc], a                                    ; $6829: $02
    nop                                           ; $682a: $00
    ld b, $04                                     ; $682b: $06 $04
    add e                                         ; $682d: $83
    ld [bc], a                                    ; $682e: $02
    ld b, $02                                     ; $682f: $06 $02
    dec b                                         ; $6831: $05
    ld b, $82                                     ; $6832: $06 $82
    ld [bc], a                                    ; $6834: $02
    ld b, $02                                     ; $6835: $06 $02
    inc b                                         ; $6837: $04
    inc b                                         ; $6838: $04
    nop                                           ; $6839: $00
    rst $38                                       ; $683a: $ff
    dec c                                         ; $683b: $0d
    inc b                                         ; $683c: $04
    ld [bc], a                                    ; $683d: $02
    ld de, $fbec                                  ; $683e: $11 $ec $fb
    db $e4                                        ; $6841: $e4
    inc bc                                        ; $6842: $03
    push hl                                       ; $6843: $e5
    add hl, bc                                    ; $6844: $09
    db $f4                                        ; $6845: $f4
    inc b                                         ; $6846: $04
    db $f4                                        ; $6847: $f4
    add hl, bc                                    ; $6848: $09
    ld [bc], a                                    ; $6849: $02
    inc bc                                        ; $684a: $03
    sbc b                                         ; $684b: $98
    ld b, $07                                     ; $684c: $06 $07
    inc b                                         ; $684e: $04
    rlca                                          ; $684f: $07
    add hl, bc                                    ; $6850: $09
    rrca                                          ; $6851: $0f
    inc c                                         ; $6852: $0c
    rrca                                          ; $6853: $0f
    ld c, $0f                                     ; $6854: $0e $0f
    inc e                                         ; $6856: $1c
    rra                                           ; $6857: $1f
    jr @+$21                                      ; $6858: $18 $1f

    inc a                                         ; $685a: $3c
    ccf                                           ; $685b: $3f
    ld [hl], d                                    ; $685c: $72
    ld a, a                                       ; $685d: $7f
    cp b                                          ; $685e: $b8
    rst $38                                       ; $685f: $ff
    cp a                                          ; $6860: $bf
    rst $38                                       ; $6861: $ff
    ld l, h                                       ; $6862: $6c
    ld a, a                                       ; $6863: $7f
    inc b                                         ; $6864: $04
    ccf                                           ; $6865: $3f
    add d                                         ; $6866: $82
    dec [hl]                                      ; $6867: $35
    ccf                                           ; $6868: $3f
    ld [bc], a                                    ; $6869: $02
    jr nz, @-$7a                                  ; $686a: $20 $84

    db $10                                        ; $686c: $10
    jr nc, jr_0e3_6897                            ; $686d: $30 $28

    jr c, jr_0e3_6873                             ; $686f: $38 $02

    jr nc, jr_0e3_6805                            ; $6871: $30 $92

jr_0e3_6873:
    jr jr_0e3_68ad                                ; $6873: $18 $38

    ld [$0838], sp                                ; $6875: $08 $38 $08
    jr c, jr_0e3_6898                             ; $6878: $38 $1e

    ld a, $26                                     ; $687a: $3e $26
    ld a, $0d                                     ; $687c: $3e $0d
    ccf                                           ; $687e: $3f
    add hl, sp                                    ; $687f: $39
    ccf                                           ; $6880: $3f
    ld b, $3e                                     ; $6881: $06 $3e
    ld l, $3e                                     ; $6883: $2e $3e
    ld [bc], a                                    ; $6885: $02
    ld a, [hl-]                                   ; $6886: $3a
    adc a                                         ; $6887: $8f
    ld d, $3e                                     ; $6888: $16 $3e
    cp d                                          ; $688a: $ba
    cp $58                                        ; $688b: $fe $58
    ld a, b                                       ; $688d: $78
    ld e, d                                       ; $688e: $5a
    ld a, a                                       ; $688f: $7f
    ld e, a                                       ; $6890: $5f
    ld a, l                                       ; $6891: $7d
    and l                                         ; $6892: $a5
    ei                                            ; $6893: $fb
    ld l, a                                       ; $6894: $6f
    ld a, d                                       ; $6895: $7a

jr_0e3_6896:
    dec a                                         ; $6896: $3d

jr_0e3_6897:
    ld [bc], a                                    ; $6897: $02

jr_0e3_6898:
    scf                                           ; $6898: $37
    adc c                                         ; $6899: $89
    ccf                                           ; $689a: $3f
    scf                                           ; $689b: $37
    ccf                                           ; $689c: $3f
    scf                                           ; $689d: $37
    ccf                                           ; $689e: $3f
    cpl                                           ; $689f: $2f
    ccf                                           ; $68a0: $3f
    ld a, [de]                                    ; $68a1: $1a
    rra                                           ; $68a2: $1f
    ld [bc], a                                    ; $68a3: $02
    dec c                                         ; $68a4: $0d
    ld a, [bc]                                    ; $68a5: $0a
    nop                                           ; $68a6: $00
    adc c                                         ; $68a7: $89
    ld a, [de]                                    ; $68a8: $1a
    ld e, $1a                                     ; $68a9: $1e $1a
    ld e, $05                                     ; $68ab: $1e $05

jr_0e3_68ad:
    rra                                           ; $68ad: $1f
    ld d, $1e                                     ; $68ae: $16 $1e
    inc e                                         ; $68b0: $1c
    ld [bc], a                                    ; $68b1: $02
    inc c                                         ; $68b2: $0c
    add a                                         ; $68b3: $87
    inc e                                         ; $68b4: $1c
    inc c                                         ; $68b5: $0c
    inc e                                         ; $68b6: $1c
    inc c                                         ; $68b7: $0c
    inc e                                         ; $68b8: $1c
    inc d                                         ; $68b9: $14
    inc e                                         ; $68ba: $1c
    ld [bc], a                                    ; $68bb: $02
    jr @+$04                                      ; $68bc: $18 $02

    db $10                                        ; $68be: $10
    ld [$ff00], sp                                ; $68bf: $08 $00 $ff
    rlca                                          ; $68c2: $07
    ld bc, $1102                                  ; $68c3: $01 $02 $11
    db $ec                                        ; $68c6: $ec
    ei                                            ; $68c7: $fb
    ld a, [c]                                     ; $68c8: $f2
    rlca                                          ; $68c9: $07
    add d                                         ; $68ca: $82
    nop                                           ; $68cb: $00
    ld bc, $001e                                  ; $68cc: $01 $1e $00
    rst $38                                       ; $68cf: $ff
    dec c                                         ; $68d0: $0d
    inc b                                         ; $68d1: $04
    ld [bc], a                                    ; $68d2: $02
    ld de, $fbec                                  ; $68d3: $11 $ec $fb
    db $e4                                        ; $68d6: $e4
    inc bc                                        ; $68d7: $03
    and $09                                       ; $68d8: $e6 $09
    db $f4                                        ; $68da: $f4
    inc b                                         ; $68db: $04
    db $f4                                        ; $68dc: $f4
    add hl, bc                                    ; $68dd: $09
    ld [bc], a                                    ; $68de: $02
    ld [bc], a                                    ; $68df: $02
    ld [bc], a                                    ; $68e0: $02
    rlca                                          ; $68e1: $07
    add e                                         ; $68e2: $83
    ld [$090f], sp                                ; $68e3: $08 $0f $09
    inc bc                                        ; $68e6: $03
    rrca                                          ; $68e7: $0f
    sub c                                         ; $68e8: $91
    inc c                                         ; $68e9: $0c
    rrca                                          ; $68ea: $0f
    jr @+$21                                      ; $68eb: $18 $1f

    inc e                                         ; $68ed: $1c
    rra                                           ; $68ee: $1f
    ld a, [hl-]                                   ; $68ef: $3a
    ccf                                           ; $68f0: $3f
    ld [hl], b                                    ; $68f1: $70
    ld a, a                                       ; $68f2: $7f
    cp a                                          ; $68f3: $bf
    rst $38                                       ; $68f4: $ff
    cp a                                          ; $68f5: $bf
    rst $38                                       ; $68f6: $ff
    ld b, a                                       ; $68f7: $47
    ld a, a                                       ; $68f8: $7f
    inc a                                         ; $68f9: $3c
    inc bc                                        ; $68fa: $03
    ccf                                           ; $68fb: $3f
    add d                                         ; $68fc: $82
    scf                                           ; $68fd: $37
    ccf                                           ; $68fe: $3f

Call_0e3_68ff:
    ld [bc], a                                    ; $68ff: $02
    jr nz, @+$06                                  ; $6900: $20 $04

    jr nc, jr_0e3_6896                            ; $6902: $30 $92

    db $10                                        ; $6904: $10
    jr nc, jr_0e3_690f                            ; $6905: $30 $08

    jr c, jr_0e3_6921                             ; $6907: $38 $18

    jr c, jr_0e3_6939                             ; $6909: $38 $2e

    ld a, $06                                     ; $690b: $3e $06
    ld a, $2d                                     ; $690d: $3e $2d

jr_0e3_690f:
    ccf                                           ; $690f: $3f
    inc sp                                        ; $6910: $33
    ccf                                           ; $6911: $3f
    ld h, $3e                                     ; $6912: $26 $3e

jr_0e3_6914:
    ld c, $3e                                     ; $6914: $0e $3e
    ld [bc], a                                    ; $6916: $02
    ld a, [hl-]                                   ; $6917: $3a
    sub c                                         ; $6918: $91
    ld d, $3e                                     ; $6919: $16 $3e
    cp d                                          ; $691b: $ba
    cp $5a                                        ; $691c: $fe $5a
    cp $58                                        ; $691e: $fe $58
    ld a, b                                       ; $6920: $78

jr_0e3_6921:
    ld e, b                                       ; $6921: $58
    ld a, b                                       ; $6922: $78
    ld e, a                                       ; $6923: $5f
    ld a, l                                       ; $6924: $7d
    and l                                         ; $6925: $a5
    ei                                            ; $6926: $fb
    ld l, a                                       ; $6927: $6f
    ld a, d                                       ; $6928: $7a

jr_0e3_6929:
    dec a                                         ; $6929: $3d
    ld [bc], a                                    ; $692a: $02
    scf                                           ; $692b: $37
    adc c                                         ; $692c: $89
    ccf                                           ; $692d: $3f
    scf                                           ; $692e: $37
    ccf                                           ; $692f: $3f
    scf                                           ; $6930: $37
    ccf                                           ; $6931: $3f
    cpl                                           ; $6932: $2f
    ccf                                           ; $6933: $3f
    ld a, [de]                                    ; $6934: $1a
    rra                                           ; $6935: $1f
    ld [bc], a                                    ; $6936: $02
    dec c                                         ; $6937: $0d
    inc c                                         ; $6938: $0c

jr_0e3_6939:
    nop                                           ; $6939: $00
    add a                                         ; $693a: $87
    ld a, [de]                                    ; $693b: $1a
    ld e, $05                                     ; $693c: $1e $05
    rra                                           ; $693e: $1f
    ld d, $1e                                     ; $693f: $16 $1e
    inc e                                         ; $6941: $1c
    ld [bc], a                                    ; $6942: $02
    inc c                                         ; $6943: $0c
    add a                                         ; $6944: $87
    inc e                                         ; $6945: $1c
    inc c                                         ; $6946: $0c
    inc e                                         ; $6947: $1c
    inc c                                         ; $6948: $0c
    inc e                                         ; $6949: $1c
    inc d                                         ; $694a: $14
    inc e                                         ; $694b: $1c
    ld [bc], a                                    ; $694c: $02
    jr @+$04                                      ; $694d: $18 $02

    db $10                                        ; $694f: $10
    ld [$ff00], sp                                ; $6950: $08 $00 $ff
    rlca                                          ; $6953: $07
    ld bc, $1102                                  ; $6954: $01 $02 $11
    db $ec                                        ; $6957: $ec
    ei                                            ; $6958: $fb
    ld a, [c]                                     ; $6959: $f2
    rlca                                          ; $695a: $07
    add d                                         ; $695b: $82
    nop                                           ; $695c: $00
    ld bc, $001e                                  ; $695d: $01 $1e $00
    rst $38                                       ; $6960: $ff
    dec c                                         ; $6961: $0d
    inc b                                         ; $6962: $04
    ld [bc], a                                    ; $6963: $02
    ld de, $fbec                                  ; $6964: $11 $ec $fb
    db $e4                                        ; $6967: $e4
    inc bc                                        ; $6968: $03
    push hl                                       ; $6969: $e5
    add hl, bc                                    ; $696a: $09
    db $f4                                        ; $696b: $f4
    inc b                                         ; $696c: $04
    db $f4                                        ; $696d: $f4
    add hl, bc                                    ; $696e: $09
    ld [bc], a                                    ; $696f: $02
    inc bc                                        ; $6970: $03
    add a                                         ; $6971: $87
    ld b, $07                                     ; $6972: $06 $07
    inc c                                         ; $6974: $0c
    rrca                                          ; $6975: $0f
    add hl, bc                                    ; $6976: $09
    rrca                                          ; $6977: $0f
    inc c                                         ; $6978: $0c
    inc bc                                        ; $6979: $03
    rrca                                          ; $697a: $0f
    adc a                                         ; $697b: $8f
    jr @+$21                                      ; $697c: $18 $1f

    inc e                                         ; $697e: $1c
    rra                                           ; $697f: $1f
    ld a, [hl-]                                   ; $6980: $3a
    ccf                                           ; $6981: $3f
    ld a, b                                       ; $6982: $78
    ld a, a                                       ; $6983: $7f
    cp l                                          ; $6984: $bd
    rst $38                                       ; $6985: $ff
    cp a                                          ; $6986: $bf
    rst $38                                       ; $6987: $ff
    ld l, h                                       ; $6988: $6c
    ld a, a                                       ; $6989: $7f
    dec a                                         ; $698a: $3d
    inc bc                                        ; $698b: $03
    ccf                                           ; $698c: $3f
    add d                                         ; $698d: $82
    dec [hl]                                      ; $698e: $35
    ccf                                           ; $698f: $3f
    ld [bc], a                                    ; $6990: $02
    jr nz, jr_0e3_6914                            ; $6991: $20 $81

    db $10                                        ; $6993: $10
    dec b                                         ; $6994: $05
    jr nc, jr_0e3_6929                            ; $6995: $30 $92

    jr jr_0e3_69d1                                ; $6997: $18 $38

    ld [$1838], sp                                ; $6999: $08 $38 $18
    jr c, jr_0e3_69cc                             ; $699c: $38 $2e

    ld a, $0e                                     ; $699e: $3e $0e
    ld a, $2d                                     ; $69a0: $3e $2d
    ccf                                           ; $69a2: $3f
    ld de, $063f                                  ; $69a3: $11 $3f $06
    ld a, $2e                                     ; $69a6: $3e $2e
    ld a, $02                                     ; $69a8: $3e $02
    ld a, [hl-]                                   ; $69aa: $3a

jr_0e3_69ab:
    adc a                                         ; $69ab: $8f
    ld d, $3e                                     ; $69ac: $16 $3e
    cp d                                          ; $69ae: $ba
    cp $58                                        ; $69af: $fe $58
    ld a, b                                       ; $69b1: $78
    ld e, d                                       ; $69b2: $5a
    ld a, a                                       ; $69b3: $7f
    ld e, a                                       ; $69b4: $5f
    ld a, l                                       ; $69b5: $7d
    and l                                         ; $69b6: $a5
    ei                                            ; $69b7: $fb
    ld l, a                                       ; $69b8: $6f
    ld a, d                                       ; $69b9: $7a
    dec a                                         ; $69ba: $3d
    ld [bc], a                                    ; $69bb: $02

jr_0e3_69bc:
    scf                                           ; $69bc: $37
    adc c                                         ; $69bd: $89
    ccf                                           ; $69be: $3f
    scf                                           ; $69bf: $37
    ccf                                           ; $69c0: $3f
    scf                                           ; $69c1: $37
    ccf                                           ; $69c2: $3f
    cpl                                           ; $69c3: $2f
    ccf                                           ; $69c4: $3f
    ld a, [de]                                    ; $69c5: $1a
    rra                                           ; $69c6: $1f
    ld [bc], a                                    ; $69c7: $02
    dec c                                         ; $69c8: $0d
    ld a, [bc]                                    ; $69c9: $0a
    nop                                           ; $69ca: $00
    adc c                                         ; $69cb: $89

jr_0e3_69cc:
    ld a, [de]                                    ; $69cc: $1a
    ld e, $1a                                     ; $69cd: $1e $1a
    ld e, $05                                     ; $69cf: $1e $05

jr_0e3_69d1:
    rra                                           ; $69d1: $1f
    ld d, $1e                                     ; $69d2: $16 $1e
    inc e                                         ; $69d4: $1c
    ld [bc], a                                    ; $69d5: $02
    inc c                                         ; $69d6: $0c
    add a                                         ; $69d7: $87
    inc e                                         ; $69d8: $1c
    inc c                                         ; $69d9: $0c
    inc e                                         ; $69da: $1c
    inc c                                         ; $69db: $0c
    inc e                                         ; $69dc: $1c
    inc d                                         ; $69dd: $14
    inc e                                         ; $69de: $1c
    ld [bc], a                                    ; $69df: $02
    jr @+$04                                      ; $69e0: $18 $02

    db $10                                        ; $69e2: $10
    ld [$ff00], sp                                ; $69e3: $08 $00 $ff
    rlca                                          ; $69e6: $07
    ld bc, $1102                                  ; $69e7: $01 $02 $11
    db $ec                                        ; $69ea: $ec
    ei                                            ; $69eb: $fb
    ld a, [c]                                     ; $69ec: $f2
    rlca                                          ; $69ed: $07
    add d                                         ; $69ee: $82
    nop                                           ; $69ef: $00
    ld bc, $001e                                  ; $69f0: $01 $1e $00
    rst $38                                       ; $69f3: $ff
    dec c                                         ; $69f4: $0d
    inc b                                         ; $69f5: $04
    ld [bc], a                                    ; $69f6: $02
    ld de, $fbec                                  ; $69f7: $11 $ec $fb
    db $e4                                        ; $69fa: $e4
    inc bc                                        ; $69fb: $03
    push hl                                       ; $69fc: $e5
    add hl, bc                                    ; $69fd: $09
    db $f4                                        ; $69fe: $f4
    inc b                                         ; $69ff: $04
    db $f4                                        ; $6a00: $f4
    add hl, bc                                    ; $6a01: $09
    ld [bc], a                                    ; $6a02: $02
    inc bc                                        ; $6a03: $03
    sbc d                                         ; $6a04: $9a
    ld b, $07                                     ; $6a05: $06 $07
    inc b                                         ; $6a07: $04
    rlca                                          ; $6a08: $07
    add hl, bc                                    ; $6a09: $09
    rrca                                          ; $6a0a: $0f
    inc c                                         ; $6a0b: $0c
    rrca                                          ; $6a0c: $0f
    ld c, $0f                                     ; $6a0d: $0e $0f
    jr jr_0e3_6a30                                ; $6a0f: $18 $1f

    inc e                                         ; $6a11: $1c
    rra                                           ; $6a12: $1f
    ld a, [hl-]                                   ; $6a13: $3a
    ccf                                           ; $6a14: $3f
    ld [hl], b                                    ; $6a15: $70
    ld a, a                                       ; $6a16: $7f
    cp a                                          ; $6a17: $bf
    rst $38                                       ; $6a18: $ff
    call z, Call_0e3_7fff                         ; $6a19: $cc $ff $7f
    ld a, e                                       ; $6a1c: $7b
    scf                                           ; $6a1d: $37
    ld [hl], $02                                  ; $6a1e: $36 $02
    ccf                                           ; $6a20: $3f
    add d                                         ; $6a21: $82
    dec [hl]                                      ; $6a22: $35
    ccf                                           ; $6a23: $3f
    ld [bc], a                                    ; $6a24: $02
    jr nz, jr_0e3_69ab                            ; $6a25: $20 $84

    db $10                                        ; $6a27: $10
    jr nc, jr_0e3_6a52                            ; $6a28: $30 $28

    jr c, jr_0e3_6a2e                             ; $6a2a: $38 $02

    jr nc, jr_0e3_69bc                            ; $6a2c: $30 $8e

jr_0e3_6a2e:
    jr @+$3a                                      ; $6a2e: $18 $38

jr_0e3_6a30:
    ld [$1838], sp                                ; $6a30: $08 $38 $18
    jr c, jr_0e3_6a63                             ; $6a33: $38 $2e

    ld a, $06                                     ; $6a35: $3e $06
    ld a, $3d                                     ; $6a37: $3e $3d
    ccf                                           ; $6a39: $3f
    inc bc                                        ; $6a3a: $03
    ccf                                           ; $6a3b: $3f
    ld [bc], a                                    ; $6a3c: $02
    ld a, $82                                     ; $6a3d: $3e $82
    ld [hl-], a                                   ; $6a3f: $32
    ld [de], a                                    ; $6a40: $12

jr_0e3_6a41:
    ld [bc], a                                    ; $6a41: $02
    ld a, [hl-]                                   ; $6a42: $3a
    adc a                                         ; $6a43: $8f
    ld d, $3e                                     ; $6a44: $16 $3e
    cp d                                          ; $6a46: $ba
    cp $58                                        ; $6a47: $fe $58
    ld a, b                                       ; $6a49: $78
    ld e, d                                       ; $6a4a: $5a
    ld a, a                                       ; $6a4b: $7f
    ld e, a                                       ; $6a4c: $5f
    ld a, l                                       ; $6a4d: $7d
    and l                                         ; $6a4e: $a5
    ei                                            ; $6a4f: $fb
    ld l, a                                       ; $6a50: $6f
    ld a, d                                       ; $6a51: $7a

jr_0e3_6a52:
    dec a                                         ; $6a52: $3d
    ld [bc], a                                    ; $6a53: $02
    scf                                           ; $6a54: $37
    adc c                                         ; $6a55: $89

jr_0e3_6a56:
    ccf                                           ; $6a56: $3f
    scf                                           ; $6a57: $37
    ccf                                           ; $6a58: $3f
    scf                                           ; $6a59: $37
    ccf                                           ; $6a5a: $3f
    cpl                                           ; $6a5b: $2f
    ccf                                           ; $6a5c: $3f
    ld a, [de]                                    ; $6a5d: $1a
    rra                                           ; $6a5e: $1f
    ld [bc], a                                    ; $6a5f: $02
    dec c                                         ; $6a60: $0d
    ld a, [bc]                                    ; $6a61: $0a
    nop                                           ; $6a62: $00

jr_0e3_6a63:
    adc c                                         ; $6a63: $89
    ld a, [de]                                    ; $6a64: $1a
    ld e, $1a                                     ; $6a65: $1e $1a
    ld e, $05                                     ; $6a67: $1e $05
    rra                                           ; $6a69: $1f
    ld d, $1e                                     ; $6a6a: $16 $1e
    inc e                                         ; $6a6c: $1c
    ld [bc], a                                    ; $6a6d: $02
    inc c                                         ; $6a6e: $0c
    add a                                         ; $6a6f: $87
    inc e                                         ; $6a70: $1c
    inc c                                         ; $6a71: $0c
    inc e                                         ; $6a72: $1c
    inc c                                         ; $6a73: $0c
    inc e                                         ; $6a74: $1c
    inc d                                         ; $6a75: $14
    inc e                                         ; $6a76: $1c
    ld [bc], a                                    ; $6a77: $02
    jr @+$04                                      ; $6a78: $18 $02

    db $10                                        ; $6a7a: $10
    ld [$ff00], sp                                ; $6a7b: $08 $00 $ff
    rlca                                          ; $6a7e: $07
    ld bc, $1102                                  ; $6a7f: $01 $02 $11
    db $ec                                        ; $6a82: $ec
    ei                                            ; $6a83: $fb
    pop af                                        ; $6a84: $f1
    rlca                                          ; $6a85: $07
    add h                                         ; $6a86: $84
    nop                                           ; $6a87: $00
    add e                                         ; $6a88: $83
    nop                                           ; $6a89: $00
    ld bc, $001c                                  ; $6a8a: $01 $1c $00
    rst $38                                       ; $6a8d: $ff
    dec c                                         ; $6a8e: $0d
    inc b                                         ; $6a8f: $04
    ld [bc], a                                    ; $6a90: $02
    ld de, $fbec                                  ; $6a91: $11 $ec $fb
    db $e4                                        ; $6a94: $e4
    inc bc                                        ; $6a95: $03
    push hl                                       ; $6a96: $e5
    add hl, bc                                    ; $6a97: $09
    db $f4                                        ; $6a98: $f4
    inc b                                         ; $6a99: $04
    db $f4                                        ; $6a9a: $f4
    add hl, bc                                    ; $6a9b: $09
    ld [bc], a                                    ; $6a9c: $02
    inc bc                                        ; $6a9d: $03
    add a                                         ; $6a9e: $87
    ld b, $07                                     ; $6a9f: $06 $07
    inc c                                         ; $6aa1: $0c
    rrca                                          ; $6aa2: $0f
    add hl, bc                                    ; $6aa3: $09
    rrca                                          ; $6aa4: $0f
    inc c                                         ; $6aa5: $0c
    inc bc                                        ; $6aa6: $03
    rrca                                          ; $6aa7: $0f
    adc a                                         ; $6aa8: $8f
    jr @+$21                                      ; $6aa9: $18 $1f

    inc e                                         ; $6aab: $1c
    rra                                           ; $6aac: $1f
    ld a, [hl-]                                   ; $6aad: $3a
    ccf                                           ; $6aae: $3f
    ld a, b                                       ; $6aaf: $78
    ld a, a                                       ; $6ab0: $7f
    cp l                                          ; $6ab1: $bd
    rst $38                                       ; $6ab2: $ff
    cp a                                          ; $6ab3: $bf
    rst $38                                       ; $6ab4: $ff
    ld l, h                                       ; $6ab5: $6c
    ld a, a                                       ; $6ab6: $7f
    dec a                                         ; $6ab7: $3d
    inc bc                                        ; $6ab8: $03
    ccf                                           ; $6ab9: $3f
    add d                                         ; $6aba: $82
    dec [hl]                                      ; $6abb: $35
    ccf                                           ; $6abc: $3f
    ld [bc], a                                    ; $6abd: $02
    jr nz, jr_0e3_6a41                            ; $6abe: $20 $81

    db $10                                        ; $6ac0: $10
    dec b                                         ; $6ac1: $05
    jr nc, jr_0e3_6a56                            ; $6ac2: $30 $92

    jr jr_0e3_6afe                                ; $6ac4: $18 $38

    ld [$1838], sp                                ; $6ac6: $08 $38 $18
    jr c, jr_0e3_6af9                             ; $6ac9: $38 $2e

    ld a, $0e                                     ; $6acb: $3e $0e
    ld a, $2d                                     ; $6acd: $3e $2d
    ccf                                           ; $6acf: $3f
    ld de, $063f                                  ; $6ad0: $11 $3f $06
    ld a, $2e                                     ; $6ad3: $3e $2e
    ld a, $02                                     ; $6ad5: $3e $02
    ld a, [hl-]                                   ; $6ad7: $3a
    adc a                                         ; $6ad8: $8f
    ld d, $3e                                     ; $6ad9: $16 $3e
    cp d                                          ; $6adb: $ba
    cp $58                                        ; $6adc: $fe $58
    ld a, b                                       ; $6ade: $78
    ld e, d                                       ; $6adf: $5a
    ld a, a                                       ; $6ae0: $7f
    ld e, a                                       ; $6ae1: $5f
    ld a, l                                       ; $6ae2: $7d
    and l                                         ; $6ae3: $a5
    ei                                            ; $6ae4: $fb
    ld l, a                                       ; $6ae5: $6f
    ld a, d                                       ; $6ae6: $7a
    dec a                                         ; $6ae7: $3d
    ld [bc], a                                    ; $6ae8: $02
    scf                                           ; $6ae9: $37
    adc c                                         ; $6aea: $89

jr_0e3_6aeb:
    ccf                                           ; $6aeb: $3f
    scf                                           ; $6aec: $37
    ccf                                           ; $6aed: $3f
    scf                                           ; $6aee: $37
    ccf                                           ; $6aef: $3f
    cpl                                           ; $6af0: $2f
    ccf                                           ; $6af1: $3f
    ld a, [de]                                    ; $6af2: $1a
    rra                                           ; $6af3: $1f
    ld [bc], a                                    ; $6af4: $02
    dec c                                         ; $6af5: $0d
    ld a, [bc]                                    ; $6af6: $0a
    nop                                           ; $6af7: $00
    adc c                                         ; $6af8: $89

jr_0e3_6af9:
    ld a, [de]                                    ; $6af9: $1a
    ld e, $1a                                     ; $6afa: $1e $1a
    ld e, $05                                     ; $6afc: $1e $05

jr_0e3_6afe:
    rra                                           ; $6afe: $1f
    ld d, $1e                                     ; $6aff: $16 $1e
    inc e                                         ; $6b01: $1c
    ld [bc], a                                    ; $6b02: $02
    inc c                                         ; $6b03: $0c
    add a                                         ; $6b04: $87
    inc e                                         ; $6b05: $1c
    inc c                                         ; $6b06: $0c
    inc e                                         ; $6b07: $1c
    inc c                                         ; $6b08: $0c
    inc e                                         ; $6b09: $1c
    inc d                                         ; $6b0a: $14
    inc e                                         ; $6b0b: $1c
    ld [bc], a                                    ; $6b0c: $02
    jr @+$04                                      ; $6b0d: $18 $02

    db $10                                        ; $6b0f: $10
    ld [$ff00], sp                                ; $6b10: $08 $00 $ff
    rlca                                          ; $6b13: $07
    ld bc, $1102                                  ; $6b14: $01 $02 $11
    db $ec                                        ; $6b17: $ec
    ei                                            ; $6b18: $fb
    ld a, [c]                                     ; $6b19: $f2
    rlca                                          ; $6b1a: $07
    add d                                         ; $6b1b: $82
    nop                                           ; $6b1c: $00
    ld bc, $001e                                  ; $6b1d: $01 $1e $00
    rst $38                                       ; $6b20: $ff
    dec c                                         ; $6b21: $0d
    inc b                                         ; $6b22: $04
    ld [bc], a                                    ; $6b23: $02
    ld de, $fbec                                  ; $6b24: $11 $ec $fb
    db $e4                                        ; $6b27: $e4
    inc bc                                        ; $6b28: $03
    push hl                                       ; $6b29: $e5
    add hl, bc                                    ; $6b2a: $09
    db $f4                                        ; $6b2b: $f4
    inc b                                         ; $6b2c: $04
    db $f4                                        ; $6b2d: $f4
    add hl, bc                                    ; $6b2e: $09
    ld [bc], a                                    ; $6b2f: $02
    inc bc                                        ; $6b30: $03
    sbc b                                         ; $6b31: $98
    ld b, $07                                     ; $6b32: $06 $07
    inc b                                         ; $6b34: $04
    rlca                                          ; $6b35: $07
    add hl, bc                                    ; $6b36: $09
    rrca                                          ; $6b37: $0f
    inc c                                         ; $6b38: $0c
    rrca                                          ; $6b39: $0f
    ld c, $0f                                     ; $6b3a: $0e $0f
    inc e                                         ; $6b3c: $1c
    rra                                           ; $6b3d: $1f
    jr @+$21                                      ; $6b3e: $18 $1f

    inc a                                         ; $6b40: $3c
    ccf                                           ; $6b41: $3f
    ld [hl], d                                    ; $6b42: $72
    ld a, a                                       ; $6b43: $7f
    cp b                                          ; $6b44: $b8
    rst $38                                       ; $6b45: $ff
    cp a                                          ; $6b46: $bf
    rst $38                                       ; $6b47: $ff
    ld l, h                                       ; $6b48: $6c
    ld a, a                                       ; $6b49: $7f
    inc b                                         ; $6b4a: $04
    ccf                                           ; $6b4b: $3f
    add d                                         ; $6b4c: $82
    dec [hl]                                      ; $6b4d: $35
    ccf                                           ; $6b4e: $3f
    ld [bc], a                                    ; $6b4f: $02
    jr nz, @-$7a                                  ; $6b50: $20 $84

    db $10                                        ; $6b52: $10
    jr nc, jr_0e3_6b7d                            ; $6b53: $30 $28

    jr c, jr_0e3_6b59                             ; $6b55: $38 $02

    jr nc, jr_0e3_6aeb                            ; $6b57: $30 $92

jr_0e3_6b59:
    jr jr_0e3_6b93                                ; $6b59: $18 $38

    ld [$0838], sp                                ; $6b5b: $08 $38 $08
    jr c, jr_0e3_6b7e                             ; $6b5e: $38 $1e

    ld a, $26                                     ; $6b60: $3e $26
    ld a, $0d                                     ; $6b62: $3e $0d
    ccf                                           ; $6b64: $3f
    add hl, sp                                    ; $6b65: $39
    ccf                                           ; $6b66: $3f
    ld b, $3e                                     ; $6b67: $06 $3e
    ld l, $3e                                     ; $6b69: $2e $3e
    ld [bc], a                                    ; $6b6b: $02
    ld a, [hl-]                                   ; $6b6c: $3a
    adc a                                         ; $6b6d: $8f
    ld d, $3e                                     ; $6b6e: $16 $3e
    cp d                                          ; $6b70: $ba
    cp $58                                        ; $6b71: $fe $58
    ld a, b                                       ; $6b73: $78
    ld e, d                                       ; $6b74: $5a
    ld a, a                                       ; $6b75: $7f
    ld e, a                                       ; $6b76: $5f
    ld a, l                                       ; $6b77: $7d
    and l                                         ; $6b78: $a5
    ei                                            ; $6b79: $fb
    ld l, a                                       ; $6b7a: $6f

jr_0e3_6b7b:
    ld a, d                                       ; $6b7b: $7a
    dec a                                         ; $6b7c: $3d

jr_0e3_6b7d:
    ld [bc], a                                    ; $6b7d: $02

jr_0e3_6b7e:
    scf                                           ; $6b7e: $37
    adc c                                         ; $6b7f: $89
    ccf                                           ; $6b80: $3f
    scf                                           ; $6b81: $37
    ccf                                           ; $6b82: $3f
    scf                                           ; $6b83: $37
    ccf                                           ; $6b84: $3f
    cpl                                           ; $6b85: $2f
    ccf                                           ; $6b86: $3f
    ld a, [de]                                    ; $6b87: $1a
    rra                                           ; $6b88: $1f
    ld [bc], a                                    ; $6b89: $02
    dec c                                         ; $6b8a: $0d
    ld a, [bc]                                    ; $6b8b: $0a
    nop                                           ; $6b8c: $00
    adc c                                         ; $6b8d: $89
    ld a, [de]                                    ; $6b8e: $1a
    ld e, $1a                                     ; $6b8f: $1e $1a
    ld e, $05                                     ; $6b91: $1e $05

jr_0e3_6b93:
    rra                                           ; $6b93: $1f
    ld d, $1e                                     ; $6b94: $16 $1e
    inc e                                         ; $6b96: $1c
    ld [bc], a                                    ; $6b97: $02
    inc c                                         ; $6b98: $0c
    add a                                         ; $6b99: $87
    inc e                                         ; $6b9a: $1c
    inc c                                         ; $6b9b: $0c
    inc e                                         ; $6b9c: $1c
    inc c                                         ; $6b9d: $0c
    inc e                                         ; $6b9e: $1c
    inc d                                         ; $6b9f: $14
    inc e                                         ; $6ba0: $1c
    ld [bc], a                                    ; $6ba1: $02
    jr @+$04                                      ; $6ba2: $18 $02

    db $10                                        ; $6ba4: $10
    ld [$ff00], sp                                ; $6ba5: $08 $00 $ff
    rlca                                          ; $6ba8: $07
    ld bc, $1102                                  ; $6ba9: $01 $02 $11
    db $ec                                        ; $6bac: $ec
    ei                                            ; $6bad: $fb
    ld a, [c]                                     ; $6bae: $f2
    rlca                                          ; $6baf: $07
    add d                                         ; $6bb0: $82
    nop                                           ; $6bb1: $00
    ld bc, $001e                                  ; $6bb2: $01 $1e $00
    rst $38                                       ; $6bb5: $ff
    dec c                                         ; $6bb6: $0d
    inc b                                         ; $6bb7: $04
    ld [bc], a                                    ; $6bb8: $02
    ld de, $fbec                                  ; $6bb9: $11 $ec $fb
    db $e4                                        ; $6bbc: $e4
    inc bc                                        ; $6bbd: $03
    and $09                                       ; $6bbe: $e6 $09
    db $f4                                        ; $6bc0: $f4
    inc b                                         ; $6bc1: $04
    db $f4                                        ; $6bc2: $f4
    add hl, bc                                    ; $6bc3: $09
    ld [bc], a                                    ; $6bc4: $02
    ld [bc], a                                    ; $6bc5: $02
    ld [bc], a                                    ; $6bc6: $02
    rlca                                          ; $6bc7: $07
    add e                                         ; $6bc8: $83
    ld [$090f], sp                                ; $6bc9: $08 $0f $09
    inc bc                                        ; $6bcc: $03
    rrca                                          ; $6bcd: $0f
    sub c                                         ; $6bce: $91
    inc c                                         ; $6bcf: $0c
    rrca                                          ; $6bd0: $0f
    jr @+$21                                      ; $6bd1: $18 $1f

    inc e                                         ; $6bd3: $1c
    rra                                           ; $6bd4: $1f
    ld a, [hl-]                                   ; $6bd5: $3a
    ccf                                           ; $6bd6: $3f
    ld a, b                                       ; $6bd7: $78
    ld a, a                                       ; $6bd8: $7f
    cp e                                          ; $6bd9: $bb
    rst $38                                       ; $6bda: $ff
    cp a                                          ; $6bdb: $bf
    rst $38                                       ; $6bdc: $ff
    ld d, e                                       ; $6bdd: $53
    ld a, a                                       ; $6bde: $7f
    inc a                                         ; $6bdf: $3c
    inc bc                                        ; $6be0: $03
    ccf                                           ; $6be1: $3f
    add d                                         ; $6be2: $82
    scf                                           ; $6be3: $37
    ccf                                           ; $6be4: $3f
    ld [bc], a                                    ; $6be5: $02
    jr nz, @+$06                                  ; $6be6: $20 $04

    jr nc, jr_0e3_6b7b                            ; $6be8: $30 $91

    db $10                                        ; $6bea: $10
    jr nc, jr_0e3_6bf5                            ; $6beb: $30 $08

    jr c, jr_0e3_6c07                             ; $6bed: $38 $18

    jr c, jr_0e3_6c1f                             ; $6bef: $38 $2e

    ld a, $0e                                     ; $6bf1: $3e $0e
    ld a, $2d                                     ; $6bf3: $3e $2d

jr_0e3_6bf5:
    ccf                                           ; $6bf5: $3f
    inc sp                                        ; $6bf6: $33
    ccf                                           ; $6bf7: $3f
    ld b, $3e                                     ; $6bf8: $06 $3e
    ld a, [de]                                    ; $6bfa: $1a

jr_0e3_6bfb:
    inc bc                                        ; $6bfb: $03
    ld a, [hl-]                                   ; $6bfc: $3a
    sub c                                         ; $6bfd: $91
    ld d, $3e                                     ; $6bfe: $16 $3e
    cp d                                          ; $6c00: $ba
    cp $5a                                        ; $6c01: $fe $5a
    cp $58                                        ; $6c03: $fe $58
    ld a, b                                       ; $6c05: $78
    ld e, b                                       ; $6c06: $58

jr_0e3_6c07:
    ld a, b                                       ; $6c07: $78
    ld e, a                                       ; $6c08: $5f
    ld a, l                                       ; $6c09: $7d
    and l                                         ; $6c0a: $a5
    ei                                            ; $6c0b: $fb
    ld l, a                                       ; $6c0c: $6f
    ld a, d                                       ; $6c0d: $7a
    dec a                                         ; $6c0e: $3d
    ld [bc], a                                    ; $6c0f: $02

jr_0e3_6c10:
    scf                                           ; $6c10: $37
    adc c                                         ; $6c11: $89
    ccf                                           ; $6c12: $3f
    scf                                           ; $6c13: $37
    ccf                                           ; $6c14: $3f
    scf                                           ; $6c15: $37
    ccf                                           ; $6c16: $3f
    cpl                                           ; $6c17: $2f
    ccf                                           ; $6c18: $3f
    ld a, [de]                                    ; $6c19: $1a
    rra                                           ; $6c1a: $1f
    ld [bc], a                                    ; $6c1b: $02
    dec c                                         ; $6c1c: $0d
    inc c                                         ; $6c1d: $0c
    nop                                           ; $6c1e: $00

jr_0e3_6c1f:
    add a                                         ; $6c1f: $87
    ld a, [de]                                    ; $6c20: $1a
    ld e, $05                                     ; $6c21: $1e $05
    rra                                           ; $6c23: $1f
    ld d, $1e                                     ; $6c24: $16 $1e
    inc e                                         ; $6c26: $1c
    ld [bc], a                                    ; $6c27: $02
    inc c                                         ; $6c28: $0c
    add a                                         ; $6c29: $87
    inc e                                         ; $6c2a: $1c
    inc c                                         ; $6c2b: $0c
    inc e                                         ; $6c2c: $1c
    inc c                                         ; $6c2d: $0c
    inc e                                         ; $6c2e: $1c
    inc d                                         ; $6c2f: $14
    inc e                                         ; $6c30: $1c
    ld [bc], a                                    ; $6c31: $02
    jr @+$04                                      ; $6c32: $18 $02

    db $10                                        ; $6c34: $10
    ld [$ff00], sp                                ; $6c35: $08 $00 $ff
    rlca                                          ; $6c38: $07
    ld bc, $1102                                  ; $6c39: $01 $02 $11
    db $ec                                        ; $6c3c: $ec
    ei                                            ; $6c3d: $fb
    pop af                                        ; $6c3e: $f1
    rlca                                          ; $6c3f: $07
    add h                                         ; $6c40: $84
    nop                                           ; $6c41: $00
    ld bc, $0100                                  ; $6c42: $01 $00 $01
    inc e                                         ; $6c45: $1c
    nop                                           ; $6c46: $00
    rst $38                                       ; $6c47: $ff
    dec c                                         ; $6c48: $0d
    inc b                                         ; $6c49: $04
    ld [bc], a                                    ; $6c4a: $02
    ld de, $fbec                                  ; $6c4b: $11 $ec $fb
    db $e4                                        ; $6c4e: $e4
    inc bc                                        ; $6c4f: $03
    push hl                                       ; $6c50: $e5
    add hl, bc                                    ; $6c51: $09
    db $f4                                        ; $6c52: $f4
    inc b                                         ; $6c53: $04
    db $f4                                        ; $6c54: $f4
    add hl, bc                                    ; $6c55: $09
    ld [bc], a                                    ; $6c56: $02
    inc bc                                        ; $6c57: $03
    add a                                         ; $6c58: $87
    ld b, $07                                     ; $6c59: $06 $07
    inc c                                         ; $6c5b: $0c
    rrca                                          ; $6c5c: $0f
    add hl, bc                                    ; $6c5d: $09
    rrca                                          ; $6c5e: $0f
    inc c                                         ; $6c5f: $0c
    inc bc                                        ; $6c60: $03
    rrca                                          ; $6c61: $0f
    adc a                                         ; $6c62: $8f
    jr @+$21                                      ; $6c63: $18 $1f

    inc e                                         ; $6c65: $1c
    rra                                           ; $6c66: $1f
    ld a, [hl-]                                   ; $6c67: $3a
    ccf                                           ; $6c68: $3f
    ld a, b                                       ; $6c69: $78
    ld a, a                                       ; $6c6a: $7f
    cp l                                          ; $6c6b: $bd
    rst $38                                       ; $6c6c: $ff
    cp a                                          ; $6c6d: $bf
    rst $38                                       ; $6c6e: $ff
    ld l, h                                       ; $6c6f: $6c
    ld a, a                                       ; $6c70: $7f
    dec a                                         ; $6c71: $3d
    inc bc                                        ; $6c72: $03
    ccf                                           ; $6c73: $3f
    add d                                         ; $6c74: $82
    dec [hl]                                      ; $6c75: $35
    ccf                                           ; $6c76: $3f
    ld [bc], a                                    ; $6c77: $02
    jr nz, jr_0e3_6bfb                            ; $6c78: $20 $81

    db $10                                        ; $6c7a: $10
    dec b                                         ; $6c7b: $05
    jr nc, jr_0e3_6c10                            ; $6c7c: $30 $92

    jr jr_0e3_6cb8                                ; $6c7e: $18 $38

    ld [$1838], sp                                ; $6c80: $08 $38 $18
    jr c, jr_0e3_6cb3                             ; $6c83: $38 $2e

    ld a, $0e                                     ; $6c85: $3e $0e
    ld a, $2d                                     ; $6c87: $3e $2d
    ccf                                           ; $6c89: $3f
    ld de, $063f                                  ; $6c8a: $11 $3f $06
    ld a, $2e                                     ; $6c8d: $3e $2e
    ld a, $02                                     ; $6c8f: $3e $02
    ld a, [hl-]                                   ; $6c91: $3a
    adc a                                         ; $6c92: $8f
    ld d, $3e                                     ; $6c93: $16 $3e
    cp d                                          ; $6c95: $ba
    cp $58                                        ; $6c96: $fe $58
    ld a, b                                       ; $6c98: $78
    ld e, d                                       ; $6c99: $5a
    ld a, a                                       ; $6c9a: $7f
    ld e, a                                       ; $6c9b: $5f
    ld a, l                                       ; $6c9c: $7d
    and l                                         ; $6c9d: $a5
    ei                                            ; $6c9e: $fb
    ld l, a                                       ; $6c9f: $6f
    ld a, d                                       ; $6ca0: $7a
    dec a                                         ; $6ca1: $3d
    ld [bc], a                                    ; $6ca2: $02
    scf                                           ; $6ca3: $37
    adc c                                         ; $6ca4: $89
    ccf                                           ; $6ca5: $3f
    scf                                           ; $6ca6: $37
    ccf                                           ; $6ca7: $3f
    scf                                           ; $6ca8: $37
    ccf                                           ; $6ca9: $3f
    cpl                                           ; $6caa: $2f
    ccf                                           ; $6cab: $3f
    ld a, [de]                                    ; $6cac: $1a

jr_0e3_6cad:
    rra                                           ; $6cad: $1f
    ld [bc], a                                    ; $6cae: $02
    dec c                                         ; $6caf: $0d
    ld a, [bc]                                    ; $6cb0: $0a
    nop                                           ; $6cb1: $00
    adc c                                         ; $6cb2: $89

jr_0e3_6cb3:
    ld a, [de]                                    ; $6cb3: $1a
    ld e, $1a                                     ; $6cb4: $1e $1a
    ld e, $05                                     ; $6cb6: $1e $05

jr_0e3_6cb8:
    rra                                           ; $6cb8: $1f
    ld d, $1e                                     ; $6cb9: $16 $1e
    inc e                                         ; $6cbb: $1c
    ld [bc], a                                    ; $6cbc: $02
    inc c                                         ; $6cbd: $0c
    add a                                         ; $6cbe: $87
    inc e                                         ; $6cbf: $1c
    inc c                                         ; $6cc0: $0c
    inc e                                         ; $6cc1: $1c
    inc c                                         ; $6cc2: $0c
    inc e                                         ; $6cc3: $1c
    inc d                                         ; $6cc4: $14
    inc e                                         ; $6cc5: $1c
    ld [bc], a                                    ; $6cc6: $02
    jr @+$04                                      ; $6cc7: $18 $02

    db $10                                        ; $6cc9: $10
    ld [$ff00], sp                                ; $6cca: $08 $00 $ff
    rlca                                          ; $6ccd: $07
    ld bc, $1102                                  ; $6cce: $01 $02 $11
    db $ec                                        ; $6cd1: $ec
    ei                                            ; $6cd2: $fb
    ld a, [c]                                     ; $6cd3: $f2
    rlca                                          ; $6cd4: $07
    add d                                         ; $6cd5: $82
    nop                                           ; $6cd6: $00
    ld bc, $001e                                  ; $6cd7: $01 $1e $00
    rst $38                                       ; $6cda: $ff
    dec c                                         ; $6cdb: $0d
    inc b                                         ; $6cdc: $04
    ei                                            ; $6cdd: $fb
    dec b                                         ; $6cde: $05
    rst $30                                       ; $6cdf: $f7
    cp $eb                                        ; $6ce0: $fe $eb
    ld a, [$ffeb]                                 ; $6ce2: $fa $eb $ff
    ei                                            ; $6ce5: $fb
    ld a, [$fffb]                                 ; $6ce6: $fa $fb $ff
    ld [bc], a                                    ; $6ce9: $02
    rrca                                          ; $6cea: $0f
    sub b                                         ; $6ceb: $90
    inc d                                         ; $6cec: $14
    dec de                                        ; $6ced: $1b
    add hl, hl                                    ; $6cee: $29
    ld [hl], $20                                  ; $6cef: $36 $20
    ccf                                           ; $6cf1: $3f
    jr nc, jr_0e3_6d33                            ; $6cf2: $30 $3f

    dec l                                         ; $6cf4: $2d
    ccf                                           ; $6cf5: $3f
    ld a, [hl-]                                   ; $6cf6: $3a
    ccf                                           ; $6cf7: $3f
    rra                                           ; $6cf8: $1f
    rla                                           ; $6cf9: $17
    rra                                           ; $6cfa: $1f
    jr jr_0e3_6cff                                ; $6cfb: $18 $02

    rra                                           ; $6cfd: $1f
    adc h                                         ; $6cfe: $8c

jr_0e3_6cff:
    jr nz, @+$41                                  ; $6cff: $20 $3f

    ld d, b                                       ; $6d01: $50
    ld a, a                                       ; $6d02: $7f
    ld d, b                                       ; $6d03: $50
    ld a, a                                       ; $6d04: $7f
    or b                                          ; $6d05: $b0
    rst $38                                       ; $6d06: $ff
    and e                                         ; $6d07: $a3
    rst $38                                       ; $6d08: $ff
    ldh a, [rIE]                                  ; $6d09: $f0 $ff
    ld [bc], a                                    ; $6d0b: $02
    db $10                                        ; $6d0c: $10
    adc c                                         ; $6d0d: $89
    ld [$0418], sp                                ; $6d0e: $08 $18 $04
    inc e                                         ; $6d11: $1c
    inc b                                         ; $6d12: $04
    inc e                                         ; $6d13: $1c
    inc b                                         ; $6d14: $04
    inc e                                         ; $6d15: $1c
    inc c                                         ; $6d16: $0c
    inc bc                                        ; $6d17: $03
    inc e                                         ; $6d18: $1c
    add d                                         ; $6d19: $82
    jr jr_0e3_6d24                                ; $6d1a: $18 $08

    inc b                                         ; $6d1c: $04
    jr jr_0e3_6cad                                ; $6d1d: $18 $8e

    inc b                                         ; $6d1f: $04
    inc e                                         ; $6d20: $1c
    ld a, [bc]                                    ; $6d21: $0a
    ld e, $0a                                     ; $6d22: $1e $0a

jr_0e3_6d24:
    ld e, $0d                                     ; $6d24: $1e $0d
    rra                                           ; $6d26: $1f
    dec b                                         ; $6d27: $05
    rra                                           ; $6d28: $1f
    rrca                                          ; $6d29: $0f
    rra                                           ; $6d2a: $1f
    rst $38                                       ; $6d2b: $ff
    cp a                                          ; $6d2c: $bf
    ld [bc], a                                    ; $6d2d: $02
    ld e, a                                       ; $6d2e: $5f
    inc b                                         ; $6d2f: $04
    ccf                                           ; $6d30: $3f
    ld [bc], a                                    ; $6d31: $02
    dec a                                         ; $6d32: $3d

jr_0e3_6d33:
    add d                                         ; $6d33: $82
    dec [hl]                                      ; $6d34: $35
    dec l                                         ; $6d35: $2d
    ld [bc], a                                    ; $6d36: $02
    jr jr_0e3_6d4b                                ; $6d37: $18 $12

    nop                                           ; $6d39: $00
    add d                                         ; $6d3a: $82
    rra                                           ; $6d3b: $1f
    dec e                                         ; $6d3c: $1d
    ld [bc], a                                    ; $6d3d: $02
    ld a, [de]                                    ; $6d3e: $1a
    ld b, $1c                                     ; $6d3f: $06 $1c
    add d                                         ; $6d41: $82
    inc c                                         ; $6d42: $0c
    inc d                                         ; $6d43: $14
    ld [bc], a                                    ; $6d44: $02
    jr jr_0e3_6d59                                ; $6d45: $18 $12

    nop                                           ; $6d47: $00
    rst $38                                       ; $6d48: $ff
    dec c                                         ; $6d49: $0d
    inc b                                         ; $6d4a: $04

jr_0e3_6d4b:
    ei                                            ; $6d4b: $fb
    dec b                                         ; $6d4c: $05
    rst $30                                       ; $6d4d: $f7
    cp $eb                                        ; $6d4e: $fe $eb
    ld a, [$ffeb]                                 ; $6d50: $fa $eb $ff
    ei                                            ; $6d53: $fb
    ld a, [$fefb]                                 ; $6d54: $fa $fb $fe
    ld [bc], a                                    ; $6d57: $02
    rrca                                          ; $6d58: $0f

jr_0e3_6d59:
    adc h                                         ; $6d59: $8c
    inc d                                         ; $6d5a: $14
    dec de                                        ; $6d5b: $1b
    dec hl                                        ; $6d5c: $2b
    inc [hl]                                      ; $6d5d: $34
    jr nz, jr_0e3_6d9f                            ; $6d5e: $20 $3f

    jr nc, jr_0e3_6da1                            ; $6d60: $30 $3f

    ld a, [hl-]                                   ; $6d62: $3a
    ccf                                           ; $6d63: $3f
    dec [hl]                                      ; $6d64: $35
    ccf                                           ; $6d65: $3f
    inc bc                                        ; $6d66: $03
    rra                                           ; $6d67: $1f
    add c                                         ; $6d68: $81
    jr jr_0e3_6d6d                                ; $6d69: $18 $02

    rra                                           ; $6d6b: $1f
    adc h                                         ; $6d6c: $8c

jr_0e3_6d6d:
    jr nz, jr_0e3_6dae                            ; $6d6d: $20 $3f

    ld d, b                                       ; $6d6f: $50
    ld a, a                                       ; $6d70: $7f
    ld d, b                                       ; $6d71: $50
    ld a, a                                       ; $6d72: $7f
    ret nc                                        ; $6d73: $d0

    rst $38                                       ; $6d74: $ff
    and [hl]                                      ; $6d75: $a6
    rst $38                                       ; $6d76: $ff
    or b                                          ; $6d77: $b0
    rst $38                                       ; $6d78: $ff
    ld [bc], a                                    ; $6d79: $02
    db $10                                        ; $6d7a: $10
    add a                                         ; $6d7b: $87
    ld [$0418], sp                                ; $6d7c: $08 $18 $04
    inc e                                         ; $6d7f: $1c
    inc b                                         ; $6d80: $04
    inc e                                         ; $6d81: $1c
    inc b                                         ; $6d82: $04
    ld b, $1c                                     ; $6d83: $06 $1c
    add d                                         ; $6d85: $82
    inc c                                         ; $6d86: $0c
    ld [$1803], sp                                ; $6d87: $08 $03 $18
    adc h                                         ; $6d8a: $8c
    inc b                                         ; $6d8b: $04
    inc e                                         ; $6d8c: $1c
    ld a, [bc]                                    ; $6d8d: $0a
    ld e, $0b                                     ; $6d8e: $1e $0b
    rra                                           ; $6d90: $1f
    add hl, bc                                    ; $6d91: $09
    rra                                           ; $6d92: $1f
    dec b                                         ; $6d93: $05
    rra                                           ; $6d94: $1f
    rrca                                          ; $6d95: $0f
    rra                                           ; $6d96: $1f
    inc bc                                        ; $6d97: $03
    rst $38                                       ; $6d98: $ff
    add c                                         ; $6d99: $81
    cp a                                          ; $6d9a: $bf
    ld [bc], a                                    ; $6d9b: $02
    ld a, a                                       ; $6d9c: $7f
    inc bc                                        ; $6d9d: $03
    ccf                                           ; $6d9e: $3f

jr_0e3_6d9f:
    add c                                         ; $6d9f: $81
    scf                                           ; $6da0: $37

jr_0e3_6da1:
    ld [bc], a                                    ; $6da1: $02
    add hl, de                                    ; $6da2: $19
    ld [bc], a                                    ; $6da3: $02
    ld bc, $0012                                  ; $6da4: $01 $12 $00
    ld [bc], a                                    ; $6da7: $02
    dec c                                         ; $6da8: $0d
    ld [bc], a                                    ; $6da9: $02
    inc c                                         ; $6daa: $0c
    dec b                                         ; $6dab: $05
    ld c, $81                                     ; $6dac: $0e $81

jr_0e3_6dae:
    ld b, $04                                     ; $6dae: $06 $04
    ld c, $12                                     ; $6db0: $0e $12
    nop                                           ; $6db2: $00
    rst $38                                       ; $6db3: $ff
    dec c                                         ; $6db4: $0d
    inc b                                         ; $6db5: $04
    ei                                            ; $6db6: $fb
    dec b                                         ; $6db7: $05
    rst $30                                       ; $6db8: $f7
    cp $ec                                        ; $6db9: $fe $ec
    ld a, [$ffec]                                 ; $6dbb: $fa $ec $ff
    db $fc                                        ; $6dbe: $fc
    ld a, [$fefc]                                 ; $6dbf: $fa $fc $fe
    ld [bc], a                                    ; $6dc2: $02
    rrca                                          ; $6dc3: $0f
    adc h                                         ; $6dc4: $8c
    inc d                                         ; $6dc5: $14
    dec de                                        ; $6dc6: $1b
    dec hl                                        ; $6dc7: $2b
    inc [hl]                                      ; $6dc8: $34
    jr nz, jr_0e3_6e0a                            ; $6dc9: $20 $3f

    jr nc, jr_0e3_6e0c                            ; $6dcb: $30 $3f

    ld a, [hl-]                                   ; $6dcd: $3a
    ccf                                           ; $6dce: $3f
    dec [hl]                                      ; $6dcf: $35
    ccf                                           ; $6dd0: $3f
    inc bc                                        ; $6dd1: $03
    rra                                           ; $6dd2: $1f
    add c                                         ; $6dd3: $81
    jr jr_0e3_6dd8                                ; $6dd4: $18 $02

    rra                                           ; $6dd6: $1f
    adc h                                         ; $6dd7: $8c

jr_0e3_6dd8:
    jr nz, jr_0e3_6e19                            ; $6dd8: $20 $3f

    ld d, b                                       ; $6dda: $50
    ld a, a                                       ; $6ddb: $7f
    ld d, b                                       ; $6ddc: $50
    ld a, a                                       ; $6ddd: $7f
    sub b                                         ; $6dde: $90
    rst $38                                       ; $6ddf: $ff
    and [hl]                                      ; $6de0: $a6
    rst $38                                       ; $6de1: $ff
    or b                                          ; $6de2: $b0
    rst $38                                       ; $6de3: $ff
    ld [bc], a                                    ; $6de4: $02
    db $10                                        ; $6de5: $10
    add a                                         ; $6de6: $87
    ld [$0418], sp                                ; $6de7: $08 $18 $04
    inc e                                         ; $6dea: $1c
    inc b                                         ; $6deb: $04
    inc e                                         ; $6dec: $1c
    inc b                                         ; $6ded: $04
    ld b, $1c                                     ; $6dee: $06 $1c
    add d                                         ; $6df0: $82
    inc c                                         ; $6df1: $0c
    ld [$1803], sp                                ; $6df2: $08 $03 $18
    adc h                                         ; $6df5: $8c
    inc b                                         ; $6df6: $04
    inc e                                         ; $6df7: $1c
    ld a, [bc]                                    ; $6df8: $0a
    ld e, $0b                                     ; $6df9: $1e $0b
    rra                                           ; $6dfb: $1f
    add hl, bc                                    ; $6dfc: $09
    rra                                           ; $6dfd: $1f
    dec b                                         ; $6dfe: $05
    rra                                           ; $6dff: $1f
    dec c                                         ; $6e00: $0d
    rra                                           ; $6e01: $1f
    inc bc                                        ; $6e02: $03
    rst $38                                       ; $6e03: $ff
    add c                                         ; $6e04: $81
    cp a                                          ; $6e05: $bf
    ld [bc], a                                    ; $6e06: $02
    ld a, a                                       ; $6e07: $7f
    add d                                         ; $6e08: $82
    ccf                                           ; $6e09: $3f

jr_0e3_6e0a:
    daa                                           ; $6e0a: $27
    ld [bc], a                                    ; $6e0b: $02

jr_0e3_6e0c:
    dec a                                         ; $6e0c: $3d
    ld [bc], a                                    ; $6e0d: $02
    ld bc, $0014                                  ; $6e0e: $01 $14 $00
    inc b                                         ; $6e11: $04
    rrca                                          ; $6e12: $0f
    add d                                         ; $6e13: $82
    ld c, $06                                     ; $6e14: $0e $06
    inc b                                         ; $6e16: $04
    ld c, $02                                     ; $6e17: $0e $02

jr_0e3_6e19:
    inc c                                         ; $6e19: $0c
    inc d                                         ; $6e1a: $14
    nop                                           ; $6e1b: $00
    rst $38                                       ; $6e1c: $ff
    dec c                                         ; $6e1d: $0d
    inc b                                         ; $6e1e: $04
    ei                                            ; $6e1f: $fb
    dec b                                         ; $6e20: $05
    rst $30                                       ; $6e21: $f7
    cp $eb                                        ; $6e22: $fe $eb
    ld a, [$ffeb]                                 ; $6e24: $fa $eb $ff
    ei                                            ; $6e27: $fb
    ld a, [$fffb]                                 ; $6e28: $fa $fb $ff
    ld [bc], a                                    ; $6e2b: $02
    rrca                                          ; $6e2c: $0f
    sub b                                         ; $6e2d: $90
    inc d                                         ; $6e2e: $14
    dec de                                        ; $6e2f: $1b
    add hl, hl                                    ; $6e30: $29
    ld [hl], $20                                  ; $6e31: $36 $20
    ccf                                           ; $6e33: $3f
    jr nc, jr_0e3_6e75                            ; $6e34: $30 $3f

    dec l                                         ; $6e36: $2d
    ccf                                           ; $6e37: $3f
    ld a, [hl-]                                   ; $6e38: $3a
    ccf                                           ; $6e39: $3f
    rra                                           ; $6e3a: $1f
    rla                                           ; $6e3b: $17
    rra                                           ; $6e3c: $1f
    jr jr_0e3_6e41                                ; $6e3d: $18 $02

    rra                                           ; $6e3f: $1f
    adc h                                         ; $6e40: $8c

jr_0e3_6e41:
    jr nz, @+$41                                  ; $6e41: $20 $3f

    ld d, b                                       ; $6e43: $50
    ld a, a                                       ; $6e44: $7f
    ld d, b                                       ; $6e45: $50
    ld a, a                                       ; $6e46: $7f
    or b                                          ; $6e47: $b0
    rst $38                                       ; $6e48: $ff
    and e                                         ; $6e49: $a3
    rst $38                                       ; $6e4a: $ff
    ldh a, [rIE]                                  ; $6e4b: $f0 $ff
    ld [bc], a                                    ; $6e4d: $02
    db $10                                        ; $6e4e: $10
    adc c                                         ; $6e4f: $89
    ld [$0418], sp                                ; $6e50: $08 $18 $04
    inc e                                         ; $6e53: $1c
    inc b                                         ; $6e54: $04
    inc e                                         ; $6e55: $1c
    inc b                                         ; $6e56: $04
    inc e                                         ; $6e57: $1c
    inc c                                         ; $6e58: $0c
    inc bc                                        ; $6e59: $03
    inc e                                         ; $6e5a: $1c
    add d                                         ; $6e5b: $82
    jr jr_0e3_6e66                                ; $6e5c: $18 $08

    inc b                                         ; $6e5e: $04
    jr @-$70                                      ; $6e5f: $18 $8e

    inc b                                         ; $6e61: $04
    inc e                                         ; $6e62: $1c
    ld a, [bc]                                    ; $6e63: $0a
    ld e, $0a                                     ; $6e64: $1e $0a

jr_0e3_6e66:
    ld e, $0d                                     ; $6e66: $1e $0d
    rra                                           ; $6e68: $1f
    dec b                                         ; $6e69: $05
    rra                                           ; $6e6a: $1f
    rrca                                          ; $6e6b: $0f
    rra                                           ; $6e6c: $1f
    rst $38                                       ; $6e6d: $ff
    cp a                                          ; $6e6e: $bf
    ld [bc], a                                    ; $6e6f: $02
    ld e, a                                       ; $6e70: $5f
    ld [bc], a                                    ; $6e71: $02
    rra                                           ; $6e72: $1f
    ld [bc], a                                    ; $6e73: $02
    ccf                                           ; $6e74: $3f

jr_0e3_6e75:
    inc bc                                        ; $6e75: $03
    dec a                                         ; $6e76: $3d
    add c                                         ; $6e77: $81
    dec h                                         ; $6e78: $25
    ld [bc], a                                    ; $6e79: $02
    jr c, jr_0e3_6e8e                             ; $6e7a: $38 $12

    nop                                           ; $6e7c: $00
    add d                                         ; $6e7d: $82
    rra                                           ; $6e7e: $1f
    dec e                                         ; $6e7f: $1d
    ld [bc], a                                    ; $6e80: $02
    ld e, $06                                     ; $6e81: $1e $06
    inc e                                         ; $6e83: $1c
    ld [bc], a                                    ; $6e84: $02
    jr jr_0e3_6e9b                                ; $6e85: $18 $14

    nop                                           ; $6e87: $00
    rst $38                                       ; $6e88: $ff
    dec c                                         ; $6e89: $0d
    inc b                                         ; $6e8a: $04
    ei                                            ; $6e8b: $fb
    dec b                                         ; $6e8c: $05
    rst $30                                       ; $6e8d: $f7

jr_0e3_6e8e:
    cp $eb                                        ; $6e8e: $fe $eb
    ld a, [$ffeb]                                 ; $6e90: $fa $eb $ff
    ei                                            ; $6e93: $fb
    ei                                            ; $6e94: $fb
    ei                                            ; $6e95: $fb
    rst $38                                       ; $6e96: $ff
    ld [bc], a                                    ; $6e97: $02
    rrca                                          ; $6e98: $0f
    adc e                                         ; $6e99: $8b
    inc d                                         ; $6e9a: $14

jr_0e3_6e9b:
    dec de                                        ; $6e9b: $1b
    inc h                                         ; $6e9c: $24
    dec sp                                        ; $6e9d: $3b
    jr nz, jr_0e3_6edf                            ; $6e9e: $20 $3f

    jr z, jr_0e3_6ee1                             ; $6ea0: $28 $3f

    ld [hl], $3f                                  ; $6ea2: $36 $3f
    dec sp                                        ; $6ea4: $3b
    ld [bc], a                                    ; $6ea5: $02
    ccf                                           ; $6ea6: $3f
    add e                                         ; $6ea7: $83
    scf                                           ; $6ea8: $37
    rla                                           ; $6ea9: $17
    jr jr_0e3_6eae                                ; $6eaa: $18 $02

    rra                                           ; $6eac: $1f
    adc h                                         ; $6ead: $8c

jr_0e3_6eae:
    jr nz, jr_0e3_6eef                            ; $6eae: $20 $3f

    ld d, b                                       ; $6eb0: $50
    ld a, a                                       ; $6eb1: $7f
    ret nc                                        ; $6eb2: $d0

    rst $38                                       ; $6eb3: $ff
    sub b                                         ; $6eb4: $90
    rst $38                                       ; $6eb5: $ff
    and e                                         ; $6eb6: $a3
    rst $38                                       ; $6eb7: $ff
    ldh a, [rIE]                                  ; $6eb8: $f0 $ff
    ld [bc], a                                    ; $6eba: $02
    db $10                                        ; $6ebb: $10
    add a                                         ; $6ebc: $87
    ld [$1418], sp                                ; $6ebd: $08 $18 $14
    inc c                                         ; $6ec0: $0c
    inc b                                         ; $6ec1: $04
    inc e                                         ; $6ec2: $1c
    inc b                                         ; $6ec3: $04
    inc bc                                        ; $6ec4: $03
    inc e                                         ; $6ec5: $1c
    add d                                         ; $6ec6: $82
    inc c                                         ; $6ec7: $0c
    inc e                                         ; $6ec8: $1c
    ld b, $18                                     ; $6ec9: $06 $18
    adc h                                         ; $6ecb: $8c
    inc b                                         ; $6ecc: $04
    inc e                                         ; $6ecd: $1c
    ld a, [bc]                                    ; $6ece: $0a
    ld e, $0a                                     ; $6ecf: $1e $0a
    ld e, $0b                                     ; $6ed1: $1e $0b
    rra                                           ; $6ed3: $1f
    dec b                                         ; $6ed4: $05
    rra                                           ; $6ed5: $1f
    dec c                                         ; $6ed6: $0d
    rra                                           ; $6ed7: $1f
    ld [bc], a                                    ; $6ed8: $02
    cp a                                          ; $6ed9: $bf
    ld [bc], a                                    ; $6eda: $02
    ccf                                           ; $6edb: $3f
    dec b                                         ; $6edc: $05
    ld a, a                                       ; $6edd: $7f
    add c                                         ; $6ede: $81

jr_0e3_6edf:
    ld l, [hl]                                    ; $6edf: $6e
    ld [bc], a                                    ; $6ee0: $02

jr_0e3_6ee1:
    ld a, c                                       ; $6ee1: $79
    ld [bc], a                                    ; $6ee2: $02
    ld a, b                                       ; $6ee3: $78
    ld [de], a                                    ; $6ee4: $12
    nop                                           ; $6ee5: $00
    inc bc                                        ; $6ee6: $03
    rrca                                          ; $6ee7: $0f
    add c                                         ; $6ee8: $81
    dec c                                         ; $6ee9: $0d
    ld [bc], a                                    ; $6eea: $02
    ld c, $04                                     ; $6eeb: $0e $04
    inc c                                         ; $6eed: $0c
    ld [bc], a                                    ; $6eee: $02

jr_0e3_6eef:
    ld [$0014], sp                                ; $6eef: $08 $14 $00
    rst $38                                       ; $6ef2: $ff
    dec c                                         ; $6ef3: $0d
    inc b                                         ; $6ef4: $04
    ei                                            ; $6ef5: $fb
    dec b                                         ; $6ef6: $05
    rst $30                                       ; $6ef7: $f7
    cp $ec                                        ; $6ef8: $fe $ec
    ld a, [$ffec]                                 ; $6efa: $fa $ec $ff
    db $fc                                        ; $6efd: $fc
    ei                                            ; $6efe: $fb
    db $fc                                        ; $6eff: $fc
    rst $38                                       ; $6f00: $ff
    ld [bc], a                                    ; $6f01: $02
    rrca                                          ; $6f02: $0f
    adc e                                         ; $6f03: $8b
    inc d                                         ; $6f04: $14
    dec de                                        ; $6f05: $1b
    inc h                                         ; $6f06: $24
    dec sp                                        ; $6f07: $3b
    jr nz, jr_0e3_6f49                            ; $6f08: $20 $3f

    jr z, jr_0e3_6f4b                             ; $6f0a: $28 $3f

    ld [hl], $3f                                  ; $6f0c: $36 $3f
    dec sp                                        ; $6f0e: $3b
    ld [bc], a                                    ; $6f0f: $02
    ccf                                           ; $6f10: $3f
    add e                                         ; $6f11: $83
    scf                                           ; $6f12: $37
    rla                                           ; $6f13: $17
    jr jr_0e3_6f18                                ; $6f14: $18 $02

    rra                                           ; $6f16: $1f
    adc h                                         ; $6f17: $8c

jr_0e3_6f18:
    jr nz, jr_0e3_6f59                            ; $6f18: $20 $3f

    ld d, b                                       ; $6f1a: $50
    ld a, a                                       ; $6f1b: $7f
    ret nc                                        ; $6f1c: $d0

    rst $38                                       ; $6f1d: $ff
    sub b                                         ; $6f1e: $90
    rst $38                                       ; $6f1f: $ff
    and e                                         ; $6f20: $a3
    rst $38                                       ; $6f21: $ff
    or b                                          ; $6f22: $b0
    rst $38                                       ; $6f23: $ff
    ld [bc], a                                    ; $6f24: $02
    db $10                                        ; $6f25: $10
    add a                                         ; $6f26: $87
    ld [$1418], sp                                ; $6f27: $08 $18 $14
    inc c                                         ; $6f2a: $0c
    inc b                                         ; $6f2b: $04
    inc e                                         ; $6f2c: $1c
    inc b                                         ; $6f2d: $04
    inc bc                                        ; $6f2e: $03

jr_0e3_6f2f:
    inc e                                         ; $6f2f: $1c
    add d                                         ; $6f30: $82
    inc c                                         ; $6f31: $0c
    inc e                                         ; $6f32: $1c
    ld b, $18                                     ; $6f33: $06 $18
    adc h                                         ; $6f35: $8c
    inc b                                         ; $6f36: $04
    inc e                                         ; $6f37: $1c
    ld a, [bc]                                    ; $6f38: $0a
    ld e, $0a                                     ; $6f39: $1e $0a
    ld e, $09                                     ; $6f3b: $1e $09
    rra                                           ; $6f3d: $1f
    dec b                                         ; $6f3e: $05
    rra                                           ; $6f3f: $1f
    dec c                                         ; $6f40: $0d
    rra                                           ; $6f41: $1f
    inc b                                         ; $6f42: $04
    rst $38                                       ; $6f43: $ff
    add h                                         ; $6f44: $84
    ld a, a                                       ; $6f45: $7f
    ld l, a                                       ; $6f46: $6f
    ld a, a                                       ; $6f47: $7f
    ld a, [hl]                                    ; $6f48: $7e

jr_0e3_6f49:
    ld [bc], a                                    ; $6f49: $02
    ld a, e                                       ; $6f4a: $7b

jr_0e3_6f4b:
    ld [bc], a                                    ; $6f4b: $02
    jr c, jr_0e3_6f62                             ; $6f4c: $38 $14

    nop                                           ; $6f4e: $00
    inc bc                                        ; $6f4f: $03
    rrca                                          ; $6f50: $0f
    add c                                         ; $6f51: $81
    dec c                                         ; $6f52: $0d
    ld [bc], a                                    ; $6f53: $02
    ld c, $82                                     ; $6f54: $0e $82
    inc c                                         ; $6f56: $0c
    inc b                                         ; $6f57: $04
    ld [bc], a                                    ; $6f58: $02

jr_0e3_6f59:
    inc c                                         ; $6f59: $0c
    ld d, $00                                     ; $6f5a: $16 $00
    rst $38                                       ; $6f5c: $ff
    dec c                                         ; $6f5d: $0d
    inc b                                         ; $6f5e: $04
    ei                                            ; $6f5f: $fb
    dec b                                         ; $6f60: $05
    rst $30                                       ; $6f61: $f7

jr_0e3_6f62:
    cp $eb                                        ; $6f62: $fe $eb
    ld a, [$ffeb]                                 ; $6f64: $fa $eb $ff
    ei                                            ; $6f67: $fb
    ld a, [$fffb]                                 ; $6f68: $fa $fb $ff
    ld [bc], a                                    ; $6f6b: $02
    rrca                                          ; $6f6c: $0f
    sub b                                         ; $6f6d: $90
    inc d                                         ; $6f6e: $14
    dec de                                        ; $6f6f: $1b
    add hl, hl                                    ; $6f70: $29
    ld [hl], $20                                  ; $6f71: $36 $20
    ccf                                           ; $6f73: $3f
    jr nc, jr_0e3_6fb5                            ; $6f74: $30 $3f

    dec l                                         ; $6f76: $2d
    ccf                                           ; $6f77: $3f
    ld a, [hl-]                                   ; $6f78: $3a
    ccf                                           ; $6f79: $3f
    rra                                           ; $6f7a: $1f
    rla                                           ; $6f7b: $17
    rra                                           ; $6f7c: $1f
    jr jr_0e3_6f81                                ; $6f7d: $18 $02

    rra                                           ; $6f7f: $1f
    adc h                                         ; $6f80: $8c

jr_0e3_6f81:
    jr nz, jr_0e3_6fc2                            ; $6f81: $20 $3f

    ld d, b                                       ; $6f83: $50
    ld a, a                                       ; $6f84: $7f
    ld d, b                                       ; $6f85: $50
    ld a, a                                       ; $6f86: $7f
    or b                                          ; $6f87: $b0
    rst $38                                       ; $6f88: $ff
    and e                                         ; $6f89: $a3
    rst $38                                       ; $6f8a: $ff
    ldh a, [rIE]                                  ; $6f8b: $f0 $ff
    ld [bc], a                                    ; $6f8d: $02
    db $10                                        ; $6f8e: $10
    adc c                                         ; $6f8f: $89
    ld [$0418], sp                                ; $6f90: $08 $18 $04
    inc e                                         ; $6f93: $1c
    inc b                                         ; $6f94: $04
    inc e                                         ; $6f95: $1c
    inc b                                         ; $6f96: $04
    inc e                                         ; $6f97: $1c
    inc c                                         ; $6f98: $0c
    inc bc                                        ; $6f99: $03
    inc e                                         ; $6f9a: $1c
    add d                                         ; $6f9b: $82
    jr jr_0e3_6fa6                                ; $6f9c: $18 $08

    inc b                                         ; $6f9e: $04
    jr jr_0e3_6f2f                                ; $6f9f: $18 $8e

    inc b                                         ; $6fa1: $04
    inc e                                         ; $6fa2: $1c
    ld a, [bc]                                    ; $6fa3: $0a
    ld e, $0a                                     ; $6fa4: $1e $0a

jr_0e3_6fa6:
    ld e, $0d                                     ; $6fa6: $1e $0d
    rra                                           ; $6fa8: $1f
    dec b                                         ; $6fa9: $05
    rra                                           ; $6faa: $1f
    rrca                                          ; $6fab: $0f
    rra                                           ; $6fac: $1f
    rst $38                                       ; $6fad: $ff
    cp a                                          ; $6fae: $bf
    ld [bc], a                                    ; $6faf: $02
    ld a, a                                       ; $6fb0: $7f
    inc b                                         ; $6fb1: $04
    ccf                                           ; $6fb2: $3f
    ld [bc], a                                    ; $6fb3: $02
    dec a                                         ; $6fb4: $3d

jr_0e3_6fb5:
    ld [bc], a                                    ; $6fb5: $02
    dec e                                         ; $6fb6: $1d
    inc d                                         ; $6fb7: $14
    nop                                           ; $6fb8: $00
    add d                                         ; $6fb9: $82
    rra                                           ; $6fba: $1f
    dec e                                         ; $6fbb: $1d
    ld [bc], a                                    ; $6fbc: $02
    ld a, [de]                                    ; $6fbd: $1a
    ld [bc], a                                    ; $6fbe: $02
    jr jr_0e3_6fc6                                ; $6fbf: $18 $05

    inc e                                         ; $6fc1: $1c

jr_0e3_6fc2:
    add c                                         ; $6fc2: $81
    inc b                                         ; $6fc3: $04
    ld [bc], a                                    ; $6fc4: $02
    inc e                                         ; $6fc5: $1c

jr_0e3_6fc6:
    ld [de], a                                    ; $6fc6: $12
    nop                                           ; $6fc7: $00
    rst $38                                       ; $6fc8: $ff
    dec c                                         ; $6fc9: $0d
    inc b                                         ; $6fca: $04
    ei                                            ; $6fcb: $fb
    dec b                                         ; $6fcc: $05
    rst $30                                       ; $6fcd: $f7
    cp $eb                                        ; $6fce: $fe $eb
    ld a, [$ffeb]                                 ; $6fd0: $fa $eb $ff
    ei                                            ; $6fd3: $fb
    ld a, [$fffb]                                 ; $6fd4: $fa $fb $ff
    ld [bc], a                                    ; $6fd7: $02
    rrca                                          ; $6fd8: $0f
    sbc [hl]                                      ; $6fd9: $9e
    inc d                                         ; $6fda: $14
    dec de                                        ; $6fdb: $1b
    add hl, hl                                    ; $6fdc: $29
    ccf                                           ; $6fdd: $3f
    dec hl                                        ; $6fde: $2b
    ld a, $3f                                     ; $6fdf: $3e $3f
    inc [hl]                                      ; $6fe1: $34
    ccf                                           ; $6fe2: $3f
    dec l                                         ; $6fe3: $2d
    ccf                                           ; $6fe4: $3f
    jr nz, jr_0e3_7026                            ; $6fe5: $20 $3f

    ld [hl+], a                                   ; $6fe7: $22
    rra                                           ; $6fe8: $1f
    rla                                           ; $6fe9: $17
    rra                                           ; $6fea: $1f
    jr jr_0e3_701c                                ; $6feb: $18 $2f

    ccf                                           ; $6fed: $3f
    ld d, l                                       ; $6fee: $55
    ld a, a                                       ; $6fef: $7f
    ld d, d                                       ; $6ff0: $52
    ld a, a                                       ; $6ff1: $7f
    or b                                          ; $6ff2: $b0
    rst $38                                       ; $6ff3: $ff
    and b                                         ; $6ff4: $a0
    rst $38                                       ; $6ff5: $ff
    ldh a, [rIE]                                  ; $6ff6: $f0 $ff
    ld [bc], a                                    ; $6ff8: $02
    db $10                                        ; $6ff9: $10
    add e                                         ; $6ffa: $83
    jr jr_0e3_7005                                ; $6ffb: $18 $08

    inc c                                         ; $6ffd: $0c
    ld [bc], a                                    ; $6ffe: $02
    inc d                                         ; $6fff: $14
    ld [bc], a                                    ; $7000: $02
    inc e                                         ; $7001: $1c
    adc c                                         ; $7002: $89
    inc c                                         ; $7003: $0c
    inc e                                         ; $7004: $1c

jr_0e3_7005:
    inc d                                         ; $7005: $14
    inc e                                         ; $7006: $1c
    inc b                                         ; $7007: $04
    inc e                                         ; $7008: $1c
    inc b                                         ; $7009: $04
    jr jr_0e3_7014                                ; $700a: $18 $08

    ld [bc], a                                    ; $700c: $02
    jr @-$70                                      ; $700d: $18 $8e

    inc d                                         ; $700f: $14
    inc e                                         ; $7010: $1c
    ld a, [bc]                                    ; $7011: $0a
    ld e, $0a                                     ; $7012: $1e $0a

jr_0e3_7014:
    ld e, $0d                                     ; $7014: $1e $0d
    rra                                           ; $7016: $1f
    dec b                                         ; $7017: $05
    rra                                           ; $7018: $1f
    rrca                                          ; $7019: $0f
    rra                                           ; $701a: $1f
    rst $38                                       ; $701b: $ff

jr_0e3_701c:
    cp a                                          ; $701c: $bf
    ld [bc], a                                    ; $701d: $02
    ld e, a                                       ; $701e: $5f
    ld [bc], a                                    ; $701f: $02
    rra                                           ; $7020: $1f
    inc b                                         ; $7021: $04
    ccf                                           ; $7022: $3f
    add d                                         ; $7023: $82
    dec a                                         ; $7024: $3d
    dec h                                         ; $7025: $25

jr_0e3_7026:
    ld [bc], a                                    ; $7026: $02
    jr jr_0e3_703b                                ; $7027: $18 $12

    nop                                           ; $7029: $00
    add d                                         ; $702a: $82
    rra                                           ; $702b: $1f
    dec e                                         ; $702c: $1d
    ld [bc], a                                    ; $702d: $02
    ld a, [de]                                    ; $702e: $1a
    ld [bc], a                                    ; $702f: $02
    jr @+$07                                      ; $7030: $18 $05

    inc e                                         ; $7032: $1c
    add c                                         ; $7033: $81
    inc b                                         ; $7034: $04
    ld [bc], a                                    ; $7035: $02
    jr jr_0e3_704a                                ; $7036: $18 $12

    nop                                           ; $7038: $00
    rst $38                                       ; $7039: $ff
    dec c                                         ; $703a: $0d

jr_0e3_703b:
    inc b                                         ; $703b: $04
    ei                                            ; $703c: $fb
    dec b                                         ; $703d: $05
    rst $30                                       ; $703e: $f7
    cp $eb                                        ; $703f: $fe $eb
    ld a, [$ffeb]                                 ; $7041: $fa $eb $ff
    ei                                            ; $7044: $fb
    ei                                            ; $7045: $fb
    ei                                            ; $7046: $fb
    cp $02                                        ; $7047: $fe $02
    rrca                                          ; $7049: $0f

jr_0e3_704a:
    sbc [hl]                                      ; $704a: $9e
    inc d                                         ; $704b: $14
    dec de                                        ; $704c: $1b
    add hl, hl                                    ; $704d: $29
    ccf                                           ; $704e: $3f
    scf                                           ; $704f: $37
    ld a, $3f                                     ; $7050: $3e $3f
    inc [hl]                                      ; $7052: $34
    dec sp                                        ; $7053: $3b
    dec a                                         ; $7054: $3d
    ccf                                           ; $7055: $3f
    jr nz, jr_0e3_7097                            ; $7056: $20 $3f

    inc h                                         ; $7058: $24
    ld e, $17                                     ; $7059: $1e $17
    rra                                           ; $705b: $1f
    jr jr_0e3_708d                                ; $705c: $18 $2f

    ccf                                           ; $705e: $3f
    ld d, l                                       ; $705f: $55
    ld a, a                                       ; $7060: $7f
    ld d, d                                       ; $7061: $52
    ld a, a                                       ; $7062: $7f
    ld d, b                                       ; $7063: $50
    ld a, a                                       ; $7064: $7f
    and b                                         ; $7065: $a0
    rst $38                                       ; $7066: $ff
    or b                                          ; $7067: $b0
    rst $38                                       ; $7068: $ff
    ld [bc], a                                    ; $7069: $02
    db $10                                        ; $706a: $10
    add l                                         ; $706b: $85
    jr jr_0e3_7076                                ; $706c: $18 $08

    inc d                                         ; $706e: $14
    inc c                                         ; $706f: $0c
    inc d                                         ; $7070: $14
    inc b                                         ; $7071: $04
    inc e                                         ; $7072: $1c
    add a                                         ; $7073: $87
    inc d                                         ; $7074: $14
    inc e                                         ; $7075: $1c

jr_0e3_7076:
    inc b                                         ; $7076: $04
    inc d                                         ; $7077: $14
    inc c                                         ; $7078: $0c
    jr jr_0e3_7083                                ; $7079: $18 $08

    ld [bc], a                                    ; $707b: $02

jr_0e3_707c:
    jr @-$71                                      ; $707c: $18 $8d

    inc d                                         ; $707e: $14
    inc e                                         ; $707f: $1c
    ld a, [bc]                                    ; $7080: $0a
    ld e, $0e                                     ; $7081: $1e $0e

jr_0e3_7083:
    ld e, $0d                                     ; $7083: $1e $0d
    rra                                           ; $7085: $1f
    rlca                                          ; $7086: $07
    rra                                           ; $7087: $1f
    rrca                                          ; $7088: $0f
    dec e                                         ; $7089: $1d
    rst $38                                       ; $708a: $ff
    ld [bc], a                                    ; $708b: $02
    cp a                                          ; $708c: $bf

jr_0e3_708d:
    add c                                         ; $708d: $81
    rst $38                                       ; $708e: $ff
    dec b                                         ; $708f: $05
    ld a, a                                       ; $7090: $7f
    add c                                         ; $7091: $81
    ld e, [hl]                                    ; $7092: $5e
    ld [bc], a                                    ; $7093: $02
    dec sp                                        ; $7094: $3b
    ld [bc], a                                    ; $7095: $02
    inc bc                                        ; $7096: $03

jr_0e3_7097:
    ld [de], a                                    ; $7097: $12
    nop                                           ; $7098: $00
    ld [bc], a                                    ; $7099: $02
    dec b                                         ; $709a: $05
    ld [bc], a                                    ; $709b: $02
    inc b                                         ; $709c: $04
    dec b                                         ; $709d: $05
    ld b, $81                                     ; $709e: $06 $81
    ld [bc], a                                    ; $70a0: $02
    ld [bc], a                                    ; $70a1: $02
    ld b, $02                                     ; $70a2: $06 $02
    inc b                                         ; $70a4: $04
    ld [de], a                                    ; $70a5: $12
    nop                                           ; $70a6: $00
    rst $38                                       ; $70a7: $ff
    dec c                                         ; $70a8: $0d
    inc b                                         ; $70a9: $04
    ei                                            ; $70aa: $fb
    dec b                                         ; $70ab: $05
    rst $30                                       ; $70ac: $f7
    cp $ec                                        ; $70ad: $fe $ec
    ld a, [$ffec]                                 ; $70af: $fa $ec $ff
    db $fc                                        ; $70b2: $fc
    ld a, [$fefc]                                 ; $70b3: $fa $fc $fe
    ld [bc], a                                    ; $70b6: $02
    rrca                                          ; $70b7: $0f
    sbc [hl]                                      ; $70b8: $9e
    inc d                                         ; $70b9: $14
    dec de                                        ; $70ba: $1b
    add hl, hl                                    ; $70bb: $29
    ccf                                           ; $70bc: $3f
    scf                                           ; $70bd: $37
    ld a, $3f                                     ; $70be: $3e $3f
    inc [hl]                                      ; $70c0: $34
    dec sp                                        ; $70c1: $3b
    dec a                                         ; $70c2: $3d
    ccf                                           ; $70c3: $3f
    jr nz, @+$41                                  ; $70c4: $20 $3f

    inc h                                         ; $70c6: $24
    ld e, $17                                     ; $70c7: $1e $17
    rra                                           ; $70c9: $1f
    jr jr_0e3_70fb                                ; $70ca: $18 $2f

    ccf                                           ; $70cc: $3f
    ld d, l                                       ; $70cd: $55
    ld a, a                                       ; $70ce: $7f
    ld d, d                                       ; $70cf: $52
    ld a, a                                       ; $70d0: $7f
    or b                                          ; $70d1: $b0
    rst $38                                       ; $70d2: $ff
    and b                                         ; $70d3: $a0
    rst $38                                       ; $70d4: $ff
    or b                                          ; $70d5: $b0
    rst $38                                       ; $70d6: $ff
    ld [bc], a                                    ; $70d7: $02
    db $10                                        ; $70d8: $10
    add l                                         ; $70d9: $85
    jr jr_0e3_70e4                                ; $70da: $18 $08

    inc d                                         ; $70dc: $14
    inc c                                         ; $70dd: $0c
    inc d                                         ; $70de: $14
    inc b                                         ; $70df: $04
    inc e                                         ; $70e0: $1c
    add a                                         ; $70e1: $87
    inc d                                         ; $70e2: $14
    inc e                                         ; $70e3: $1c

jr_0e3_70e4:
    inc b                                         ; $70e4: $04
    inc d                                         ; $70e5: $14
    inc c                                         ; $70e6: $0c

jr_0e3_70e7:
    jr jr_0e3_70f1                                ; $70e7: $18 $08

    ld [bc], a                                    ; $70e9: $02
    jr jr_0e3_707c                                ; $70ea: $18 $90

    inc d                                         ; $70ec: $14
    inc e                                         ; $70ed: $1c
    ld a, [bc]                                    ; $70ee: $0a
    ld e, $0e                                     ; $70ef: $1e $0e

jr_0e3_70f1:
    ld e, $0d                                     ; $70f1: $1e $0d
    rra                                           ; $70f3: $1f
    rlca                                          ; $70f4: $07
    rra                                           ; $70f5: $1f
    rrca                                          ; $70f6: $0f
    dec e                                         ; $70f7: $1d
    rst $38                                       ; $70f8: $ff
    rst $18                                       ; $70f9: $df
    ld e, a                                       ; $70fa: $5f

jr_0e3_70fb:
    ld a, a                                       ; $70fb: $7f
    ld [bc], a                                    ; $70fc: $02
    ccf                                           ; $70fd: $3f
    ld [bc], a                                    ; $70fe: $02
    rra                                           ; $70ff: $1f
    ld [bc], a                                    ; $7100: $02
    dec c                                         ; $7101: $0d
    ld [bc], a                                    ; $7102: $02
    ld bc, $0014                                  ; $7103: $01 $14 $00
    ld [bc], a                                    ; $7106: $02
    dec c                                         ; $7107: $0d
    ld [bc], a                                    ; $7108: $02
    inc c                                         ; $7109: $0c
    dec b                                         ; $710a: $05
    ld c, $81                                     ; $710b: $0e $81
    ld [bc], a                                    ; $710d: $02
    ld [bc], a                                    ; $710e: $02
    ld c, $14                                     ; $710f: $0e $14
    nop                                           ; $7111: $00
    rst $38                                       ; $7112: $ff
    dec c                                         ; $7113: $0d
    inc b                                         ; $7114: $04
    ei                                            ; $7115: $fb
    dec b                                         ; $7116: $05
    rst $30                                       ; $7117: $f7
    cp $eb                                        ; $7118: $fe $eb
    ld a, [$ffeb]                                 ; $711a: $fa $eb $ff
    ei                                            ; $711d: $fb
    ld a, [$fffb]                                 ; $711e: $fa $fb $ff
    ld [bc], a                                    ; $7121: $02
    rrca                                          ; $7122: $0f
    sbc [hl]                                      ; $7123: $9e
    inc d                                         ; $7124: $14
    dec de                                        ; $7125: $1b
    add hl, hl                                    ; $7126: $29
    ccf                                           ; $7127: $3f
    dec hl                                        ; $7128: $2b
    ld a, $3f                                     ; $7129: $3e $3f
    inc [hl]                                      ; $712b: $34
    ccf                                           ; $712c: $3f
    dec l                                         ; $712d: $2d
    ccf                                           ; $712e: $3f
    jr nz, jr_0e3_7170                            ; $712f: $20 $3f

    ld [hl+], a                                   ; $7131: $22
    rra                                           ; $7132: $1f
    rla                                           ; $7133: $17
    rra                                           ; $7134: $1f
    jr jr_0e3_7166                                ; $7135: $18 $2f

    ccf                                           ; $7137: $3f
    ld d, l                                       ; $7138: $55
    ld a, a                                       ; $7139: $7f
    ld d, d                                       ; $713a: $52
    ld a, a                                       ; $713b: $7f
    or b                                          ; $713c: $b0
    rst $38                                       ; $713d: $ff
    and b                                         ; $713e: $a0
    rst $38                                       ; $713f: $ff
    ldh a, [rIE]                                  ; $7140: $f0 $ff
    ld [bc], a                                    ; $7142: $02
    db $10                                        ; $7143: $10
    add e                                         ; $7144: $83
    jr jr_0e3_714f                                ; $7145: $18 $08

    inc c                                         ; $7147: $0c
    ld [bc], a                                    ; $7148: $02
    inc d                                         ; $7149: $14
    ld [bc], a                                    ; $714a: $02
    inc e                                         ; $714b: $1c
    adc c                                         ; $714c: $89
    inc c                                         ; $714d: $0c
    inc e                                         ; $714e: $1c

jr_0e3_714f:
    inc d                                         ; $714f: $14
    inc e                                         ; $7150: $1c
    inc b                                         ; $7151: $04
    inc e                                         ; $7152: $1c

jr_0e3_7153:
    inc b                                         ; $7153: $04
    jr jr_0e3_715e                                ; $7154: $18 $08

    ld [bc], a                                    ; $7156: $02
    jr jr_0e3_70e7                                ; $7157: $18 $8e

    inc d                                         ; $7159: $14
    inc e                                         ; $715a: $1c
    ld a, [bc]                                    ; $715b: $0a
    ld e, $0a                                     ; $715c: $1e $0a

jr_0e3_715e:
    ld e, $0d                                     ; $715e: $1e $0d
    rra                                           ; $7160: $1f
    dec b                                         ; $7161: $05
    rra                                           ; $7162: $1f
    rrca                                          ; $7163: $0f
    rra                                           ; $7164: $1f
    rst $38                                       ; $7165: $ff

jr_0e3_7166:
    cp a                                          ; $7166: $bf
    ld [bc], a                                    ; $7167: $02
    ld a, a                                       ; $7168: $7f
    inc b                                         ; $7169: $04
    ccf                                           ; $716a: $3f
    add d                                         ; $716b: $82
    dec a                                         ; $716c: $3d
    dec [hl]                                      ; $716d: $35
    ld [bc], a                                    ; $716e: $02
    add hl, de                                    ; $716f: $19

jr_0e3_7170:
    inc d                                         ; $7170: $14
    nop                                           ; $7171: $00
    add d                                         ; $7172: $82
    rra                                           ; $7173: $1f
    dec e                                         ; $7174: $1d
    ld [bc], a                                    ; $7175: $02
    ld a, [de]                                    ; $7176: $1a
    dec b                                         ; $7177: $05
    inc e                                         ; $7178: $1c
    add c                                         ; $7179: $81
    inc b                                         ; $717a: $04
    ld [bc], a                                    ; $717b: $02
    inc e                                         ; $717c: $1c
    inc d                                         ; $717d: $14
    nop                                           ; $717e: $00
    rst $38                                       ; $717f: $ff
    dec c                                         ; $7180: $0d
    inc b                                         ; $7181: $04
    ei                                            ; $7182: $fb
    dec b                                         ; $7183: $05
    rst $30                                       ; $7184: $f7
    cp $eb                                        ; $7185: $fe $eb
    ld a, [$ffeb]                                 ; $7187: $fa $eb $ff
    ei                                            ; $718a: $fb
    ei                                            ; $718b: $fb
    ei                                            ; $718c: $fb
    cp $02                                        ; $718d: $fe $02
    rrca                                          ; $718f: $0f
    add l                                         ; $7190: $85
    ld [de], a                                    ; $7191: $12
    dec e                                         ; $7192: $1d
    add hl, hl                                    ; $7193: $29
    ccf                                           ; $7194: $3f
    dec l                                         ; $7195: $2d
    ld [bc], a                                    ; $7196: $02
    ccf                                           ; $7197: $3f
    sub a                                         ; $7198: $97
    ld [hl-], a                                   ; $7199: $32
    dec a                                         ; $719a: $3d
    ld l, $3f                                     ; $719b: $2e $3f
    jr nz, jr_0e3_71ce                            ; $719d: $20 $2f

    ld sp, $171b                                  ; $719f: $31 $1b $17
    rra                                           ; $71a2: $1f
    jr jr_0e3_71d4                                ; $71a3: $18 $2f

    ccf                                           ; $71a5: $3f
    ld d, l                                       ; $71a6: $55
    ld a, a                                       ; $71a7: $7f
    ld [hl], d                                    ; $71a8: $72
    ld a, a                                       ; $71a9: $7f
    or b                                          ; $71aa: $b0
    rst $38                                       ; $71ab: $ff
    ldh [rIE], a                                  ; $71ac: $e0 $ff
    ldh a, [$bf]                                  ; $71ae: $f0 $bf
    ld [bc], a                                    ; $71b0: $02
    db $10                                        ; $71b1: $10
    add e                                         ; $71b2: $83
    jr jr_0e3_71bd                                ; $71b3: $18 $08

    inc c                                         ; $71b5: $0c
    ld [bc], a                                    ; $71b6: $02
    inc d                                         ; $71b7: $14
    ld [bc], a                                    ; $71b8: $02
    inc e                                         ; $71b9: $1c
    add c                                         ; $71ba: $81
    inc c                                         ; $71bb: $0c
    inc bc                                        ; $71bc: $03

jr_0e3_71bd:
    inc e                                         ; $71bd: $1c
    add l                                         ; $71be: $85
    inc b                                         ; $71bf: $04
    inc e                                         ; $71c0: $1c
    inc b                                         ; $71c1: $04
    jr jr_0e3_71cc                                ; $71c2: $18 $08

    ld [bc], a                                    ; $71c4: $02
    jr jr_0e3_7153                                ; $71c5: $18 $8c

    inc d                                         ; $71c7: $14
    inc e                                         ; $71c8: $1c
    ld a, [bc]                                    ; $71c9: $0a
    ld e, $0a                                     ; $71ca: $1e $0a

jr_0e3_71cc:
    ld e, $0a                                     ; $71cc: $1e $0a

jr_0e3_71ce:
    ld e, $05                                     ; $71ce: $1e $05
    rra                                           ; $71d0: $1f
    dec c                                         ; $71d1: $0d
    rra                                           ; $71d2: $1f
    ld [bc], a                                    ; $71d3: $02

jr_0e3_71d4:
    cp a                                          ; $71d4: $bf
    ld [bc], a                                    ; $71d5: $02
    ccf                                           ; $71d6: $3f
    dec b                                         ; $71d7: $05
    ld a, a                                       ; $71d8: $7f
    add c                                         ; $71d9: $81
    ld c, a                                       ; $71da: $4f
    ld [bc], a                                    ; $71db: $02
    ld a, e                                       ; $71dc: $7b
    ld [bc], a                                    ; $71dd: $02
    jr c, jr_0e3_71f2                             ; $71de: $38 $12

    nop                                           ; $71e0: $00
    add c                                         ; $71e1: $81
    rlca                                          ; $71e2: $07
    ld [bc], a                                    ; $71e3: $02
    dec b                                         ; $71e4: $05
    add c                                         ; $71e5: $81
    rlca                                          ; $71e6: $07
    dec b                                         ; $71e7: $05
    ld b, $81                                     ; $71e8: $06 $81
    ld [bc], a                                    ; $71ea: $02
    ld [bc], a                                    ; $71eb: $02
    inc b                                         ; $71ec: $04
    inc d                                         ; $71ed: $14
    nop                                           ; $71ee: $00
    rst $38                                       ; $71ef: $ff
    dec c                                         ; $71f0: $0d
    inc b                                         ; $71f1: $04

jr_0e3_71f2:
    ei                                            ; $71f2: $fb
    dec b                                         ; $71f3: $05
    rst $30                                       ; $71f4: $f7
    cp $ec                                        ; $71f5: $fe $ec
    ld a, [$ffec]                                 ; $71f7: $fa $ec $ff
    db $fc                                        ; $71fa: $fc
    ei                                            ; $71fb: $fb
    db $fc                                        ; $71fc: $fc
    rst $38                                       ; $71fd: $ff
    ld [bc], a                                    ; $71fe: $02
    rrca                                          ; $71ff: $0f
    add l                                         ; $7200: $85
    ld [de], a                                    ; $7201: $12
    dec e                                         ; $7202: $1d
    add hl, hl                                    ; $7203: $29
    ccf                                           ; $7204: $3f
    dec l                                         ; $7205: $2d
    ld [bc], a                                    ; $7206: $02
    ccf                                           ; $7207: $3f
    sub a                                         ; $7208: $97
    ld [hl-], a                                   ; $7209: $32
    dec a                                         ; $720a: $3d
    ld l, $3f                                     ; $720b: $2e $3f
    jr nz, jr_0e3_723e                            ; $720d: $20 $2f

    ld sp, $171b                                  ; $720f: $31 $1b $17
    rra                                           ; $7212: $1f
    jr jr_0e3_7244                                ; $7213: $18 $2f

    ccf                                           ; $7215: $3f
    ld d, l                                       ; $7216: $55
    ld a, a                                       ; $7217: $7f
    ld [hl], d                                    ; $7218: $72
    ld a, a                                       ; $7219: $7f
    or b                                          ; $721a: $b0
    rst $38                                       ; $721b: $ff
    ldh [rIE], a                                  ; $721c: $e0 $ff
    ldh a, [$bf]                                  ; $721e: $f0 $bf
    ld [bc], a                                    ; $7220: $02
    db $10                                        ; $7221: $10
    add e                                         ; $7222: $83
    jr jr_0e3_722d                                ; $7223: $18 $08

    inc c                                         ; $7225: $0c
    ld [bc], a                                    ; $7226: $02
    inc d                                         ; $7227: $14
    ld [bc], a                                    ; $7228: $02
    inc e                                         ; $7229: $1c
    add c                                         ; $722a: $81
    inc c                                         ; $722b: $0c
    inc bc                                        ; $722c: $03

jr_0e3_722d:
    inc e                                         ; $722d: $1c
    add l                                         ; $722e: $85
    inc b                                         ; $722f: $04

jr_0e3_7230:
    inc e                                         ; $7230: $1c
    inc b                                         ; $7231: $04
    jr jr_0e3_723c                                ; $7232: $18 $08

    ld [bc], a                                    ; $7234: $02
    jr @-$72                                      ; $7235: $18 $8c

    inc d                                         ; $7237: $14
    inc e                                         ; $7238: $1c
    ld a, [bc]                                    ; $7239: $0a
    ld e, $0a                                     ; $723a: $1e $0a

jr_0e3_723c:
    ld e, $0d                                     ; $723c: $1e $0d

jr_0e3_723e:
    rra                                           ; $723e: $1f
    dec b                                         ; $723f: $05
    rra                                           ; $7240: $1f
    dec c                                         ; $7241: $0d
    rra                                           ; $7242: $1f
    ld [bc], a                                    ; $7243: $02

jr_0e3_7244:
    cp a                                          ; $7244: $bf
    ld [bc], a                                    ; $7245: $02
    ccf                                           ; $7246: $3f
    inc b                                         ; $7247: $04
    ld a, a                                       ; $7248: $7f
    add d                                         ; $7249: $82
    ld a, e                                       ; $724a: $7b
    ld c, e                                       ; $724b: $4b
    ld [bc], a                                    ; $724c: $02
    ld a, b                                       ; $724d: $78
    inc d                                         ; $724e: $14
    nop                                           ; $724f: $00
    add h                                         ; $7250: $84
    rrca                                          ; $7251: $0f
    dec bc                                        ; $7252: $0b
    ld a, [bc]                                    ; $7253: $0a
    ld c, $02                                     ; $7254: $0e $02
    inc c                                         ; $7256: $0c
    ld [bc], a                                    ; $7257: $02
    ld [$0018], sp                                ; $7258: $08 $18 $00
    rst $38                                       ; $725b: $ff
    dec c                                         ; $725c: $0d
    inc b                                         ; $725d: $04
    ei                                            ; $725e: $fb
    dec b                                         ; $725f: $05
    rst $30                                       ; $7260: $f7
    cp $eb                                        ; $7261: $fe $eb
    ld a, [$ffeb]                                 ; $7263: $fa $eb $ff
    ei                                            ; $7266: $fb
    ld a, [$fffb]                                 ; $7267: $fa $fb $ff
    ld [bc], a                                    ; $726a: $02
    rrca                                          ; $726b: $0f
    sbc [hl]                                      ; $726c: $9e
    inc d                                         ; $726d: $14
    dec de                                        ; $726e: $1b
    add hl, hl                                    ; $726f: $29
    ccf                                           ; $7270: $3f
    dec hl                                        ; $7271: $2b
    ld a, $3f                                     ; $7272: $3e $3f
    inc [hl]                                      ; $7274: $34
    ccf                                           ; $7275: $3f
    dec l                                         ; $7276: $2d
    ccf                                           ; $7277: $3f
    jr nz, jr_0e3_72b9                            ; $7278: $20 $3f

    ld [hl+], a                                   ; $727a: $22
    rra                                           ; $727b: $1f
    rla                                           ; $727c: $17
    rra                                           ; $727d: $1f
    jr jr_0e3_72af                                ; $727e: $18 $2f

    ccf                                           ; $7280: $3f
    ld d, l                                       ; $7281: $55
    ld a, a                                       ; $7282: $7f
    ld d, d                                       ; $7283: $52
    ld a, a                                       ; $7284: $7f
    or b                                          ; $7285: $b0
    rst $38                                       ; $7286: $ff
    and b                                         ; $7287: $a0
    rst $38                                       ; $7288: $ff
    ldh a, [rIE]                                  ; $7289: $f0 $ff
    ld [bc], a                                    ; $728b: $02
    db $10                                        ; $728c: $10
    add e                                         ; $728d: $83
    jr jr_0e3_7298                                ; $728e: $18 $08

    inc c                                         ; $7290: $0c
    ld [bc], a                                    ; $7291: $02
    inc d                                         ; $7292: $14
    ld [bc], a                                    ; $7293: $02
    inc e                                         ; $7294: $1c
    adc c                                         ; $7295: $89
    inc c                                         ; $7296: $0c
    inc e                                         ; $7297: $1c

jr_0e3_7298:
    inc d                                         ; $7298: $14
    inc e                                         ; $7299: $1c
    inc b                                         ; $729a: $04
    inc e                                         ; $729b: $1c
    inc b                                         ; $729c: $04
    jr jr_0e3_72a7                                ; $729d: $18 $08

    ld [bc], a                                    ; $729f: $02
    jr jr_0e3_7230                                ; $72a0: $18 $8e

    inc d                                         ; $72a2: $14
    inc e                                         ; $72a3: $1c
    ld a, [bc]                                    ; $72a4: $0a
    ld e, $0a                                     ; $72a5: $1e $0a

jr_0e3_72a7:
    ld e, $0d                                     ; $72a7: $1e $0d
    rra                                           ; $72a9: $1f
    dec b                                         ; $72aa: $05
    rra                                           ; $72ab: $1f
    rrca                                          ; $72ac: $0f
    rra                                           ; $72ad: $1f
    rst $38                                       ; $72ae: $ff

jr_0e3_72af:
    cp a                                          ; $72af: $bf
    ld [bc], a                                    ; $72b0: $02
    ld e, a                                       ; $72b1: $5f
    inc b                                         ; $72b2: $04
    ccf                                           ; $72b3: $3f
    add d                                         ; $72b4: $82
    dec a                                         ; $72b5: $3d
    dec h                                         ; $72b6: $25
    ld [bc], a                                    ; $72b7: $02
    inc a                                         ; $72b8: $3c

jr_0e3_72b9:
    inc d                                         ; $72b9: $14
    nop                                           ; $72ba: $00
    add d                                         ; $72bb: $82
    rra                                           ; $72bc: $1f
    dec e                                         ; $72bd: $1d
    ld [bc], a                                    ; $72be: $02
    ld e, $05                                     ; $72bf: $1e $05
    inc e                                         ; $72c1: $1c
    add c                                         ; $72c2: $81
    inc c                                         ; $72c3: $0c
    ld [bc], a                                    ; $72c4: $02
    jr jr_0e3_72db                                ; $72c5: $18 $14

    nop                                           ; $72c7: $00
    rst $38                                       ; $72c8: $ff
    dec bc                                        ; $72c9: $0b
    inc bc                                        ; $72ca: $03
    ei                                            ; $72cb: $fb
    dec b                                         ; $72cc: $05
    rst $30                                       ; $72cd: $f7
    cp $eb                                        ; $72ce: $fe $eb
    db $fc                                        ; $72d0: $fc
    db $ec                                        ; $72d1: $ec
    cp $fb                                        ; $72d2: $fe $fb
    db $fc                                        ; $72d4: $fc
    ld [bc], a                                    ; $72d5: $02
    ld a, $83                                     ; $72d6: $3e $83
    ld b, l                                       ; $72d8: $45
    ld a, e                                       ; $72d9: $7b
    xor e                                         ; $72da: $ab

jr_0e3_72db:
    ld [bc], a                                    ; $72db: $02
    rst $18                                       ; $72dc: $df
    sbc c                                         ; $72dd: $99
    or [hl]                                       ; $72de: $b6

jr_0e3_72df:
    rst $18                                       ; $72df: $df
    ldh a, [rIE]                                  ; $72e0: $f0 $ff
    ld a, [c]                                     ; $72e2: $f2
    ld a, a                                       ; $72e3: $7f
    ld b, b                                       ; $72e4: $40
    ld a, a                                       ; $72e5: $7f
    ld h, b                                       ; $72e6: $60
    ccf                                           ; $72e7: $3f
    inc hl                                        ; $72e8: $23
    ccf                                           ; $72e9: $3f
    ld sp, $7e6e                                  ; $72ea: $31 $6e $7e
    ld b, d                                       ; $72ed: $42
    ld a, [hl]                                    ; $72ee: $7e
    ld c, d                                       ; $72ef: $4a
    ld a, [hl]                                    ; $72f0: $7e
    ld e, c                                       ; $72f1: $59
    ld a, a                                       ; $72f2: $7f
    ld c, c                                       ; $72f3: $49
    ld a, a                                       ; $72f4: $7f
    ld l, l                                       ; $72f5: $6d
    ld a, a                                       ; $72f6: $7f
    ld [bc], a                                    ; $72f7: $02
    ld [bc], a                                    ; $72f8: $02
    add d                                         ; $72f9: $82
    ld bc, $0603                                  ; $72fa: $01 $03 $06
    ld [bc], a                                    ; $72fd: $02
    add d                                         ; $72fe: $82
    inc bc                                        ; $72ff: $03
    ld bc, $0204                                  ; $7300: $01 $04 $02
    ld c, $00                                     ; $7303: $0e $00
    add d                                         ; $7305: $82
    ld hl, sp-$28                                 ; $7306: $f8 $d8
    ld [bc], a                                    ; $7308: $02
    ld b, b                                       ; $7309: $40
    add d                                         ; $730a: $82
    ld [hl], $2e                                  ; $730b: $36 $2e
    ld [bc], a                                    ; $730d: $02
    ld e, $04                                     ; $730e: $1e $04
    ld a, $82                                     ; $7310: $3e $82
    daa                                           ; $7312: $27
    add hl, sp                                    ; $7313: $39
    ld [bc], a                                    ; $7314: $02
    ccf                                           ; $7315: $3f
    ld [de], a                                    ; $7316: $12
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    dec c                                         ; $7319: $0d
    inc b                                         ; $731a: $04
    ei                                            ; $731b: $fb
    dec b                                         ; $731c: $05
    rst $30                                       ; $731d: $f7
    cp $eb                                        ; $731e: $fe $eb
    db $fc                                        ; $7320: $fc
    db $ec                                        ; $7321: $ec
    cp $fb                                        ; $7322: $fe $fb
    ei                                            ; $7324: $fb
    ei                                            ; $7325: $fb
    nop                                           ; $7326: $00
    ld [bc], a                                    ; $7327: $02
    ld a, $83                                     ; $7328: $3e $83
    ld c, c                                       ; $732a: $49
    ld [hl], a                                    ; $732b: $77
    or e                                          ; $732c: $b3
    ld [bc], a                                    ; $732d: $02
    rst $18                                       ; $732e: $df
    sbc c                                         ; $732f: $99
    cp l                                          ; $7330: $bd
    rst $18                                       ; $7331: $df
    ldh a, [$fd]                                  ; $7332: $f0 $fd
    and $7f                                       ; $7334: $e6 $7f
    ld b, b                                       ; $7336: $40
    ld a, a                                       ; $7337: $7f
    ld h, b                                       ; $7338: $60
    ccf                                           ; $7339: $3f
    inc hl                                        ; $733a: $23
    ccf                                           ; $733b: $3f
    ld sp, $3e2e                                  ; $733c: $31 $2e $3e
    ld b, d                                       ; $733f: $42
    ld a, [hl]                                    ; $7340: $7e
    ld c, d                                       ; $7341: $4a
    ld a, [hl]                                    ; $7342: $7e
    ld e, c                                       ; $7343: $59
    ld a, a                                       ; $7344: $7f
    ld h, l                                       ; $7345: $65
    ld a, a                                       ; $7346: $7f
    ld h, l                                       ; $7347: $65
    ld a, a                                       ; $7348: $7f
    ld [bc], a                                    ; $7349: $02
    ld [bc], a                                    ; $734a: $02
    add d                                         ; $734b: $82
    ld bc, $0603                                  ; $734c: $01 $03 $06
    ld [bc], a                                    ; $734f: $02
    add d                                         ; $7350: $82
    inc bc                                        ; $7351: $03
    ld bc, $0204                                  ; $7352: $01 $04 $02
    ld c, $00                                     ; $7355: $0e $00
    add d                                         ; $7357: $82
    cp $ee                                        ; $7358: $fe $ee
    ld [bc], a                                    ; $735a: $02
    jr nz, jr_0e3_72df                            ; $735b: $20 $82

    ld a, l                                       ; $735d: $7d
    ld a, e                                       ; $735e: $7b
    ld [bc], a                                    ; $735f: $02
    ld a, a                                       ; $7360: $7f
    ld [bc], a                                    ; $7361: $02
    db $fd                                        ; $7362: $fd
    ld [bc], a                                    ; $7363: $02
    ld sp, hl                                     ; $7364: $f9
    add d                                         ; $7365: $82
    ld a, l                                       ; $7366: $7d
    ld h, l                                       ; $7367: $65
    ld [bc], a                                    ; $7368: $02
    inc e                                         ; $7369: $1c
    inc d                                         ; $736a: $14
    nop                                           ; $736b: $00
    ld [bc], a                                    ; $736c: $02
    jr jr_0e3_7371                                ; $736d: $18 $02

    ld e, $84                                     ; $736f: $1e $84

jr_0e3_7371:
    rra                                           ; $7371: $1f
    add hl, de                                    ; $7372: $19
    ld e, $16                                     ; $7373: $1e $16
    ld [bc], a                                    ; $7375: $02
    jr jr_0e3_738c                                ; $7376: $18 $14

    nop                                           ; $7378: $00
    rst $38                                       ; $7379: $ff
    dec c                                         ; $737a: $0d
    inc b                                         ; $737b: $04
    ei                                            ; $737c: $fb
    dec b                                         ; $737d: $05
    rst $30                                       ; $737e: $f7
    cp $ec                                        ; $737f: $fe $ec
    db $fc                                        ; $7381: $fc
    db $ed                                        ; $7382: $ed
    cp $fc                                        ; $7383: $fe $fc
    ei                                            ; $7385: $fb
    db $fc                                        ; $7386: $fc
    cp $02                                        ; $7387: $fe $02
    ld a, $83                                     ; $7389: $3e $83
    ld c, c                                       ; $738b: $49

jr_0e3_738c:
    ld [hl], a                                    ; $738c: $77
    or e                                          ; $738d: $b3
    ld [bc], a                                    ; $738e: $02
    rst $18                                       ; $738f: $df
    sbc c                                         ; $7390: $99
    cp l                                          ; $7391: $bd
    rst $18                                       ; $7392: $df
    ldh a, [$fd]                                  ; $7393: $f0 $fd
    and $7f                                       ; $7395: $e6 $7f
    ld b, b                                       ; $7397: $40
    ld a, a                                       ; $7398: $7f
    ld h, b                                       ; $7399: $60
    ccf                                           ; $739a: $3f
    inc hl                                        ; $739b: $23
    ccf                                           ; $739c: $3f
    ld sp, $3e2e                                  ; $739d: $31 $2e $3e
    ld b, d                                       ; $73a0: $42
    ld a, [hl]                                    ; $73a1: $7e
    ld c, c                                       ; $73a2: $49
    ld a, a                                       ; $73a3: $7f
    ld e, c                                       ; $73a4: $59
    ld a, a                                       ; $73a5: $7f
    ld c, c                                       ; $73a6: $49
    ld a, a                                       ; $73a7: $7f
    ld h, l                                       ; $73a8: $65
    ld a, a                                       ; $73a9: $7f
    ld [bc], a                                    ; $73aa: $02
    ld [bc], a                                    ; $73ab: $02
    add d                                         ; $73ac: $82
    ld bc, $0603                                  ; $73ad: $01 $03 $06
    ld [bc], a                                    ; $73b0: $02
    add d                                         ; $73b1: $82
    inc bc                                        ; $73b2: $03
    ld bc, $0204                                  ; $73b3: $01 $04 $02
    ld c, $00                                     ; $73b6: $0e $00
    add d                                         ; $73b8: $82
    db $fc                                        ; $73b9: $fc
    db $ec                                        ; $73ba: $ec
    ld [bc], a                                    ; $73bb: $02
    ld h, b                                       ; $73bc: $60
    add d                                         ; $73bd: $82
    db $fd                                        ; $73be: $fd
    ei                                            ; $73bf: $fb
    ld [bc], a                                    ; $73c0: $02
    rst $38                                       ; $73c1: $ff
    inc bc                                        ; $73c2: $03
    ld a, e                                       ; $73c3: $7b
    add c                                         ; $73c4: $81
    ld l, e                                       ; $73c5: $6b
    ld [bc], a                                    ; $73c6: $02
    jr nc, jr_0e3_73df                            ; $73c7: $30 $16

    nop                                           ; $73c9: $00
    inc b                                         ; $73ca: $04
    ld b, $82                                     ; $73cb: $06 $82
    rlca                                          ; $73cd: $07
    ld bc, $0702                                  ; $73ce: $01 $02 $07
    ld d, $00                                     ; $73d1: $16 $00
    rst $38                                       ; $73d3: $ff
    dec bc                                        ; $73d4: $0b
    inc bc                                        ; $73d5: $03
    ei                                            ; $73d6: $fb
    dec b                                         ; $73d7: $05
    rst $30                                       ; $73d8: $f7
    cp $eb                                        ; $73d9: $fe $eb
    db $fc                                        ; $73db: $fc
    db $ec                                        ; $73dc: $ec
    cp $fb                                        ; $73dd: $fe $fb

jr_0e3_73df:
    db $fd                                        ; $73df: $fd
    ld [bc], a                                    ; $73e0: $02
    ld a, $83                                     ; $73e1: $3e $83
    ld b, l                                       ; $73e3: $45
    ld a, e                                       ; $73e4: $7b
    xor e                                         ; $73e5: $ab
    ld [bc], a                                    ; $73e6: $02
    rst $18                                       ; $73e7: $df
    sbc c                                         ; $73e8: $99
    or [hl]                                       ; $73e9: $b6
    rst $18                                       ; $73ea: $df
    ldh a, [rIE]                                  ; $73eb: $f0 $ff
    ld a, [c]                                     ; $73ed: $f2
    ld a, a                                       ; $73ee: $7f
    ld b, b                                       ; $73ef: $40
    ld a, a                                       ; $73f0: $7f
    ld h, b                                       ; $73f1: $60
    ccf                                           ; $73f2: $3f
    inc hl                                        ; $73f3: $23
    ccf                                           ; $73f4: $3f
    ld sp, $7e6e                                  ; $73f5: $31 $6e $7e
    ld b, d                                       ; $73f8: $42
    ld a, [hl]                                    ; $73f9: $7e
    ld c, d                                       ; $73fa: $4a
    ld a, [hl]                                    ; $73fb: $7e
    ld e, c                                       ; $73fc: $59
    ld a, a                                       ; $73fd: $7f
    ld c, c                                       ; $73fe: $49

Jump_0e3_73ff:
    ld a, a                                       ; $73ff: $7f
    ld e, c                                       ; $7400: $59
    ld a, a                                       ; $7401: $7f
    ld [bc], a                                    ; $7402: $02
    ld [bc], a                                    ; $7403: $02
    add d                                         ; $7404: $82
    ld bc, $0603                                  ; $7405: $01 $03 $06
    ld [bc], a                                    ; $7408: $02
    add d                                         ; $7409: $82
    inc bc                                        ; $740a: $03
    ld bc, $0204                                  ; $740b: $01 $04 $02
    ld c, $00                                     ; $740e: $0e $00
    add d                                         ; $7410: $82
    cp [hl]                                       ; $7411: $be
    cp $02                                        ; $7412: $fe $02
    add b                                         ; $7414: $80
    add d                                         ; $7415: $82
    rst $38                                       ; $7416: $ff
    sbc a                                         ; $7417: $9f
    ld [bc], a                                    ; $7418: $02
    ld a, a                                       ; $7419: $7f
    add h                                         ; $741a: $84
    cp $ee                                        ; $741b: $fe $ee
    rst $38                                       ; $741d: $ff
    di                                            ; $741e: $f3
    ld [bc], a                                    ; $741f: $02
    ld a, [hl]                                    ; $7420: $7e
    inc d                                         ; $7421: $14
    nop                                           ; $7422: $00
    rst $38                                       ; $7423: $ff
    dec c                                         ; $7424: $0d
    inc b                                         ; $7425: $04
    ei                                            ; $7426: $fb
    dec b                                         ; $7427: $05
    rst $30                                       ; $7428: $f7
    cp $eb                                        ; $7429: $fe $eb
    db $fc                                        ; $742b: $fc
    db $ec                                        ; $742c: $ec
    cp $fb                                        ; $742d: $fe $fb
    ei                                            ; $742f: $fb
    ei                                            ; $7430: $fb
    nop                                           ; $7431: $00
    ld [bc], a                                    ; $7432: $02
    ld a, $9e                                     ; $7433: $3e $9e
    ld b, l                                       ; $7435: $45
    ld a, e                                       ; $7436: $7b
    cp c                                          ; $7437: $b9
    rst $08                                       ; $7438: $cf
    adc a                                         ; $7439: $8f
    cp $df                                        ; $743a: $fe $df
    ld hl, sp-$01                                 ; $743c: $f8 $ff
    pop af                                        ; $743e: $f1
    ld l, a                                       ; $743f: $6f
    ld d, b                                       ; $7440: $50
    ld a, a                                       ; $7441: $7f
    ld h, b                                       ; $7442: $60
    ccf                                           ; $7443: $3f
    ld hl, $313f                                  ; $7444: $21 $3f $31
    ld l, [hl]                                    ; $7447: $6e
    ld a, [hl]                                    ; $7448: $7e
    ld b, d                                       ; $7449: $42
    ld a, [hl]                                    ; $744a: $7e
    ld c, d                                       ; $744b: $4a
    ld a, [hl]                                    ; $744c: $7e
    ld e, c                                       ; $744d: $59
    ld a, a                                       ; $744e: $7f
    sbc c                                         ; $744f: $99
    rst $38                                       ; $7450: $ff
    or c                                          ; $7451: $b1
    rst $38                                       ; $7452: $ff
    ld [bc], a                                    ; $7453: $02
    ld [bc], a                                    ; $7454: $02
    add d                                         ; $7455: $82
    ld bc, $0603                                  ; $7456: $01 $03 $06
    ld [bc], a                                    ; $7459: $02
    add d                                         ; $745a: $82
    inc bc                                        ; $745b: $03
    ld bc, $0204                                  ; $745c: $01 $04 $02
    ld c, $00                                     ; $745f: $0e $00
    add d                                         ; $7461: $82
    ld e, h                                       ; $7462: $5c
    db $fc                                        ; $7463: $fc
    ld [bc], a                                    ; $7464: $02
    ld h, b                                       ; $7465: $60
    add d                                         ; $7466: $82
    ld a, a                                       ; $7467: $7f
    ld c, a                                       ; $7468: $4f
    ld [bc], a                                    ; $7469: $02
    rst $38                                       ; $746a: $ff
    ld [bc], a                                    ; $746b: $02
    ei                                            ; $746c: $fb
    add d                                         ; $746d: $82
    ld a, a                                       ; $746e: $7f
    ld [hl], a                                    ; $746f: $77
    ld [bc], a                                    ; $7470: $02
    dec de                                        ; $7471: $1b
    ld [bc], a                                    ; $7472: $02
    ld bc, $0014                                  ; $7473: $01 $14 $00
    inc b                                         ; $7476: $04
    jr jr_0e3_747b                                ; $7477: $18 $02

    ld e, $84                                     ; $7479: $1e $84

jr_0e3_747b:
    rra                                           ; $747b: $1f
    add hl, de                                    ; $747c: $19
    ld e, $06                                     ; $747d: $1e $06
    ld [bc], a                                    ; $747f: $02
    jr @+$14                                      ; $7480: $18 $12

    nop                                           ; $7482: $00
    rst $38                                       ; $7483: $ff
    dec c                                         ; $7484: $0d
    inc b                                         ; $7485: $04
    ei                                            ; $7486: $fb
    dec b                                         ; $7487: $05
    rst $30                                       ; $7488: $f7
    cp $ec                                        ; $7489: $fe $ec
    db $fc                                        ; $748b: $fc
    db $ed                                        ; $748c: $ed
    cp $fc                                        ; $748d: $fe $fc
    ei                                            ; $748f: $fb
    db $fc                                        ; $7490: $fc
    cp $02                                        ; $7491: $fe $02
    ld a, $9e                                     ; $7493: $3e $9e
    ld b, l                                       ; $7495: $45
    ld a, e                                       ; $7496: $7b
    cp c                                          ; $7497: $b9
    rst $08                                       ; $7498: $cf
    adc a                                         ; $7499: $8f
    cp $df                                        ; $749a: $fe $df
    ld hl, sp-$01                                 ; $749c: $f8 $ff
    pop af                                        ; $749e: $f1
    ld l, a                                       ; $749f: $6f
    ld d, b                                       ; $74a0: $50
    ld a, a                                       ; $74a1: $7f
    ld h, b                                       ; $74a2: $60
    ccf                                           ; $74a3: $3f
    ld hl, $313f                                  ; $74a4: $21 $3f $31
    ld l, [hl]                                    ; $74a7: $6e
    ld a, [hl]                                    ; $74a8: $7e
    ld b, d                                       ; $74a9: $42
    ld a, [hl]                                    ; $74aa: $7e
    ld c, c                                       ; $74ab: $49
    ld a, a                                       ; $74ac: $7f
    ld e, c                                       ; $74ad: $59
    ld a, a                                       ; $74ae: $7f
    ld c, c                                       ; $74af: $49
    ld a, a                                       ; $74b0: $7f
    reti                                          ; $74b1: $d9


    rst $38                                       ; $74b2: $ff
    ld [bc], a                                    ; $74b3: $02
    ld [bc], a                                    ; $74b4: $02
    add d                                         ; $74b5: $82
    ld bc, $0603                                  ; $74b6: $01 $03 $06
    ld [bc], a                                    ; $74b9: $02
    add d                                         ; $74ba: $82
    inc bc                                        ; $74bb: $03
    ld bc, $0204                                  ; $74bc: $01 $04 $02
    ld c, $00                                     ; $74bf: $0e $00
    add d                                         ; $74c1: $82
    cp h                                          ; $74c2: $bc
    db $fc                                        ; $74c3: $fc
    ld [bc], a                                    ; $74c4: $02
    ldh [$82], a                                  ; $74c5: $e0 $82
    rst $38                                       ; $74c7: $ff
    rst $20                                       ; $74c8: $e7
    inc bc                                        ; $74c9: $03
    ld a, a                                       ; $74ca: $7f
    add e                                         ; $74cb: $83
    ld l, a                                       ; $74cc: $6f
    scf                                           ; $74cd: $37
    ld [hl], $02                                  ; $74ce: $36 $02
    rlca                                          ; $74d0: $07
    ld d, $00                                     ; $74d1: $16 $00
    ld [bc], a                                    ; $74d3: $02
    inc b                                         ; $74d4: $04
    inc b                                         ; $74d5: $04
    ld b, $82                                     ; $74d6: $06 $82
    rlca                                          ; $74d8: $07
    ld bc, $0702                                  ; $74d9: $01 $02 $07
    inc d                                         ; $74dc: $14
    nop                                           ; $74dd: $00
    rst $38                                       ; $74de: $ff
    dec bc                                        ; $74df: $0b
    inc bc                                        ; $74e0: $03
    ei                                            ; $74e1: $fb
    dec b                                         ; $74e2: $05
    rst $30                                       ; $74e3: $f7
    cp $eb                                        ; $74e4: $fe $eb
    db $fc                                        ; $74e6: $fc
    db $ec                                        ; $74e7: $ec
    cp $fb                                        ; $74e8: $fe $fb
    db $fd                                        ; $74ea: $fd
    ld [bc], a                                    ; $74eb: $02
    ld a, $83                                     ; $74ec: $3e $83
    ld b, l                                       ; $74ee: $45
    ld a, e                                       ; $74ef: $7b
    xor e                                         ; $74f0: $ab
    ld [bc], a                                    ; $74f1: $02
    rst $18                                       ; $74f2: $df
    sbc c                                         ; $74f3: $99
    or [hl]                                       ; $74f4: $b6
    rst $18                                       ; $74f5: $df
    ldh a, [rIE]                                  ; $74f6: $f0 $ff
    ld a, [c]                                     ; $74f8: $f2
    ld a, a                                       ; $74f9: $7f
    ld b, b                                       ; $74fa: $40
    ld a, a                                       ; $74fb: $7f
    ld h, b                                       ; $74fc: $60
    ccf                                           ; $74fd: $3f
    inc hl                                        ; $74fe: $23
    ccf                                           ; $74ff: $3f
    ld sp, $7e6e                                  ; $7500: $31 $6e $7e
    ld b, d                                       ; $7503: $42
    ld a, [hl]                                    ; $7504: $7e
    ld c, d                                       ; $7505: $4a
    ld a, [hl]                                    ; $7506: $7e
    ld e, c                                       ; $7507: $59
    ld a, a                                       ; $7508: $7f
    ld c, c                                       ; $7509: $49
    ld a, a                                       ; $750a: $7f
    ld l, l                                       ; $750b: $6d
    ld a, a                                       ; $750c: $7f
    ld [bc], a                                    ; $750d: $02
    ld [bc], a                                    ; $750e: $02
    add d                                         ; $750f: $82
    ld bc, $0603                                  ; $7510: $01 $03 $06
    ld [bc], a                                    ; $7513: $02
    add d                                         ; $7514: $82
    inc bc                                        ; $7515: $03
    ld bc, $0204                                  ; $7516: $01 $04 $02
    ld c, $00                                     ; $7519: $0e $00
    add d                                         ; $751b: $82
    cp $de                                        ; $751c: $fe $de
    ld [bc], a                                    ; $751e: $02
    add b                                         ; $751f: $80
    add d                                         ; $7520: $82
    ld l, a                                       ; $7521: $6f
    ld e, a                                       ; $7522: $5f
    inc bc                                        ; $7523: $03
    ld a, [hl]                                    ; $7524: $7e
    add c                                         ; $7525: $81
    ld a, d                                       ; $7526: $7a
    inc bc                                        ; $7527: $03
    ld a, [hl]                                    ; $7528: $7e
    add c                                         ; $7529: $81
    ld h, d                                       ; $752a: $62
    ld [bc], a                                    ; $752b: $02
    ld a, [hl]                                    ; $752c: $7e
    ld [de], a                                    ; $752d: $12
    nop                                           ; $752e: $00
    rst $38                                       ; $752f: $ff
    dec c                                         ; $7530: $0d
    inc b                                         ; $7531: $04
    ei                                            ; $7532: $fb
    dec b                                         ; $7533: $05
    ld a, [c]                                     ; $7534: $f2
    ei                                            ; $7535: $fb
    ld [c], a                                     ; $7536: $e2
    ld a, [$ffe2]                                 ; $7537: $fa $e2 $ff
    ld a, [c]                                     ; $753a: $f2
    ld sp, hl                                     ; $753b: $f9
    ld a, [c]                                     ; $753c: $f2
    nop                                           ; $753d: $00
    ld [bc], a                                    ; $753e: $02
    rrca                                          ; $753f: $0f
    adc [hl]                                      ; $7540: $8e
    inc a                                         ; $7541: $3c
    ccf                                           ; $7542: $3f
    ld l, a                                       ; $7543: $6f
    ld a, a                                       ; $7544: $7f
    ld e, c                                       ; $7545: $59
    ld a, a                                       ; $7546: $7f
    ret c                                         ; $7547: $d8

    rst $38                                       ; $7548: $ff
    rst $20                                       ; $7549: $e7
    rst $38                                       ; $754a: $ff
    ld [c], a                                     ; $754b: $e2
    rst $38                                       ; $754c: $ff
    db $f4                                        ; $754d: $f4
    rst $38                                       ; $754e: $ff
    ld [bc], a                                    ; $754f: $02
    ld a, a                                       ; $7550: $7f
    adc [hl]                                      ; $7551: $8e
    ld l, e                                       ; $7552: $6b
    ld a, a                                       ; $7553: $7f
    ld d, a                                       ; $7554: $57
    ld a, [hl]                                    ; $7555: $7e
    ld c, a                                       ; $7556: $4f
    ld a, a                                       ; $7557: $7f
    ld e, h                                       ; $7558: $5c
    ld a, a                                       ; $7559: $7f
    ld [hl], b                                    ; $755a: $70
    ld a, a                                       ; $755b: $7f
    cp a                                          ; $755c: $bf
    rst $38                                       ; $755d: $ff
    push af                                       ; $755e: $f5
    rst $38                                       ; $755f: $ff
    ld [bc], a                                    ; $7560: $02
    db $10                                        ; $7561: $10
    adc [hl]                                      ; $7562: $8e
    inc c                                         ; $7563: $0c
    inc e                                         ; $7564: $1c
    ld [de], a                                    ; $7565: $12
    ld e, $1a                                     ; $7566: $1e $1a
    ld e, $19                                     ; $7568: $1e $19
    rra                                           ; $756a: $1f
    dec d                                         ; $756b: $15
    rra                                           ; $756c: $1f
    dec b                                         ; $756d: $05
    rra                                           ; $756e: $1f
    rrca                                          ; $756f: $0f
    rra                                           ; $7570: $1f
    ld [bc], a                                    ; $7571: $02
    ld e, $02                                     ; $7572: $1e $02
    inc e                                         ; $7574: $1c
    ld [bc], a                                    ; $7575: $02
    jr jr_0e3_757a                                ; $7576: $18 $02

    inc e                                         ; $7578: $1c
    and [hl]                                      ; $7579: $a6

jr_0e3_757a:
    ld a, [de]                                    ; $757a: $1a
    ld e, $12                                     ; $757b: $1e $12
    ld e, $13                                     ; $757d: $1e $13
    rra                                           ; $757f: $1f
    dec e                                         ; $7580: $1d
    rra                                           ; $7581: $1f
    ld d, d                                       ; $7582: $52
    ld a, a                                       ; $7583: $7f
    ld d, b                                       ; $7584: $50
    ld a, a                                       ; $7585: $7f
    or d                                          ; $7586: $b2
    rst $38                                       ; $7587: $ff
    sub b                                         ; $7588: $90
    rst $38                                       ; $7589: $ff
    sub b                                         ; $758a: $90
    rst $38                                       ; $758b: $ff
    ldh a, [rIE]                                  ; $758c: $f0 $ff
    sub b                                         ; $758e: $90
    rst $38                                       ; $758f: $ff
    ld a, [c]                                     ; $7590: $f2
    rst $38                                       ; $7591: $ff
    ld [hl], b                                    ; $7592: $70
    ld a, a                                       ; $7593: $7f
    jr nc, jr_0e3_75d5                            ; $7594: $30 $3f

    jr nz, jr_0e3_75d7                            ; $7596: $20 $3f

    jr nz, jr_0e3_75d9                            ; $7598: $20 $3f

    ld h, b                                       ; $759a: $60
    ld a, a                                       ; $759b: $7f
    ld c, a                                       ; $759c: $4f
    ld a, a                                       ; $759d: $7f
    ld h, b                                       ; $759e: $60
    ld a, a                                       ; $759f: $7f
    ld [bc], a                                    ; $75a0: $02
    ccf                                           ; $75a1: $3f
    sbc [hl]                                      ; $75a2: $9e
    ld c, d                                       ; $75a3: $4a
    ld a, [hl]                                    ; $75a4: $7e
    ld c, d                                       ; $75a5: $4a
    ld a, [hl]                                    ; $75a6: $7e
    ld c, l                                       ; $75a7: $4d
    ld a, a                                       ; $75a8: $7f
    ld c, c                                       ; $75a9: $49
    ld a, a                                       ; $75aa: $7f
    add hl, bc                                    ; $75ab: $09
    ld a, a                                       ; $75ac: $7f
    ld c, a                                       ; $75ad: $4f
    ld a, a                                       ; $75ae: $7f
    ld c, c                                       ; $75af: $49
    ld a, a                                       ; $75b0: $7f
    rrca                                          ; $75b1: $0f
    ld a, a                                       ; $75b2: $7f
    ld c, $7e                                     ; $75b3: $0e $7e
    inc c                                         ; $75b5: $0c
    ld a, h                                       ; $75b6: $7c
    inc b                                         ; $75b7: $04
    ld a, h                                       ; $75b8: $7c
    inc b                                         ; $75b9: $04
    ld a, h                                       ; $75ba: $7c
    ld b, $7e                                     ; $75bb: $06 $7e
    ld h, d                                       ; $75bd: $62
    ld a, [hl]                                    ; $75be: $7e
    ld b, $7e                                     ; $75bf: $06 $7e
    ld [bc], a                                    ; $75c1: $02
    ld a, h                                       ; $75c2: $7c
    rst $38                                       ; $75c3: $ff
    dec c                                         ; $75c4: $0d
    inc b                                         ; $75c5: $04
    ei                                            ; $75c6: $fb
    dec b                                         ; $75c7: $05
    ld a, [c]                                     ; $75c8: $f2
    ei                                            ; $75c9: $fb
    ld [c], a                                     ; $75ca: $e2
    ld a, [$ffe2]                                 ; $75cb: $fa $e2 $ff
    ld a, [c]                                     ; $75ce: $f2
    ld sp, hl                                     ; $75cf: $f9
    ld a, [c]                                     ; $75d0: $f2
    nop                                           ; $75d1: $00
    ld [bc], a                                    ; $75d2: $02
    rrca                                          ; $75d3: $0f
    adc [hl]                                      ; $75d4: $8e

jr_0e3_75d5:
    ld [hl], $3f                                  ; $75d5: $36 $3f

jr_0e3_75d7:
    ld l, a                                       ; $75d7: $6f
    ld a, a                                       ; $75d8: $7f

jr_0e3_75d9:
    ld e, b                                       ; $75d9: $58
    ld a, a                                       ; $75da: $7f
    reti                                          ; $75db: $d9


    rst $38                                       ; $75dc: $ff
    rst $08                                       ; $75dd: $cf
    rst $38                                       ; $75de: $ff
    db $e4                                        ; $75df: $e4
    rst $38                                       ; $75e0: $ff
    add sp, -$01                                  ; $75e1: $e8 $ff
    ld [bc], a                                    ; $75e3: $02
    ld a, a                                       ; $75e4: $7f
    adc c                                         ; $75e5: $89
    ld l, e                                       ; $75e6: $6b
    ld a, a                                       ; $75e7: $7f
    ld d, a                                       ; $75e8: $57
    ld a, [hl]                                    ; $75e9: $7e
    ld c, a                                       ; $75ea: $4f
    ld a, a                                       ; $75eb: $7f
    ld e, h                                       ; $75ec: $5c
    ld a, a                                       ; $75ed: $7f
    ld [hl], b                                    ; $75ee: $70
    inc bc                                        ; $75ef: $03
    ld a, a                                       ; $75f0: $7f
    add d                                         ; $75f1: $82
    or l                                          ; $75f2: $b5
    rst $38                                       ; $75f3: $ff
    ld [bc], a                                    ; $75f4: $02
    db $10                                        ; $75f5: $10
    adc e                                         ; $75f6: $8b
    inc c                                         ; $75f7: $0c
    inc e                                         ; $75f8: $1c
    ld [de], a                                    ; $75f9: $12
    ld e, $1a                                     ; $75fa: $1e $1a
    ld e, $19                                     ; $75fc: $1e $19
    rra                                           ; $75fe: $1f
    add hl, bc                                    ; $75ff: $09
    rra                                           ; $7600: $1f
    dec bc                                        ; $7601: $0b
    inc bc                                        ; $7602: $03
    rra                                           ; $7603: $1f
    ld [bc], a                                    ; $7604: $02
    ld e, $02                                     ; $7605: $1e $02
    inc e                                         ; $7607: $1c
    ld [bc], a                                    ; $7608: $02
    jr jr_0e3_760d                                ; $7609: $18 $02

    inc e                                         ; $760b: $1c
    and [hl]                                      ; $760c: $a6

jr_0e3_760d:
    ld a, [de]                                    ; $760d: $1a
    ld e, $12                                     ; $760e: $1e $12
    ld e, $13                                     ; $7610: $1e $13
    rra                                           ; $7612: $1f
    dec e                                         ; $7613: $1d
    rra                                           ; $7614: $1f
    ld [hl], d                                    ; $7615: $72
    ld a, a                                       ; $7616: $7f
    ld d, b                                       ; $7617: $50
    ld a, a                                       ; $7618: $7f
    jp nc, $90ff                                  ; $7619: $d2 $ff $90

    rst $38                                       ; $761c: $ff
    sub b                                         ; $761d: $90
    rst $38                                       ; $761e: $ff
    sub b                                         ; $761f: $90
    rst $38                                       ; $7620: $ff
    ldh a, [rIE]                                  ; $7621: $f0 $ff
    or d                                          ; $7623: $b2
    rst $18                                       ; $7624: $df
    ld h, b                                       ; $7625: $60
    ld a, a                                       ; $7626: $7f
    ld h, b                                       ; $7627: $60
    ld a, a                                       ; $7628: $7f
    ld h, b                                       ; $7629: $60
    ld a, a                                       ; $762a: $7f
    ld b, b                                       ; $762b: $40
    ld a, a                                       ; $762c: $7f
    ld d, b                                       ; $762d: $50
    ld a, a                                       ; $762e: $7f
    ld c, [hl]                                    ; $762f: $4e
    ld a, a                                       ; $7630: $7f
    jr nc, jr_0e3_7672                            ; $7631: $30 $3f

    ld [bc], a                                    ; $7633: $02
    rrca                                          ; $7634: $0f
    sbc [hl]                                      ; $7635: $9e
    ld c, d                                       ; $7636: $4a
    ld a, [hl]                                    ; $7637: $7e
    ld c, l                                       ; $7638: $4d
    ld a, a                                       ; $7639: $7f
    ld c, l                                       ; $763a: $4d
    ld a, a                                       ; $763b: $7f
    ld c, c                                       ; $763c: $49
    ld a, a                                       ; $763d: $7f
    dec bc                                        ; $763e: $0b
    ld a, a                                       ; $763f: $7f
    ld c, a                                       ; $7640: $4f
    ld a, a                                       ; $7641: $7f
    ld c, [hl]                                    ; $7642: $4e
    ld a, [hl]                                    ; $7643: $7e
    inc c                                         ; $7644: $0c
    ld a, h                                       ; $7645: $7c
    inc c                                         ; $7646: $0c
    ld a, h                                       ; $7647: $7c
    inc c                                         ; $7648: $0c
    ld a, h                                       ; $7649: $7c
    inc b                                         ; $764a: $04
    ld a, h                                       ; $764b: $7c
    inc b                                         ; $764c: $04
    ld a, h                                       ; $764d: $7c
    ld d, h                                       ; $764e: $54
    ld a, h                                       ; $764f: $7c
    inc b                                         ; $7650: $04
    ld a, h                                       ; $7651: $7c
    ld [hl], d                                    ; $7652: $72
    ld a, [hl]                                    ; $7653: $7e
    ld [bc], a                                    ; $7654: $02
    ld a, h                                       ; $7655: $7c
    rst $38                                       ; $7656: $ff
    dec c                                         ; $7657: $0d
    inc b                                         ; $7658: $04
    ei                                            ; $7659: $fb
    dec b                                         ; $765a: $05
    ld a, [c]                                     ; $765b: $f2
    ei                                            ; $765c: $fb
    db $e3                                        ; $765d: $e3
    ld a, [$ffe3]                                 ; $765e: $fa $e3 $ff
    di                                            ; $7661: $f3
    ld sp, hl                                     ; $7662: $f9
    di                                            ; $7663: $f3
    nop                                           ; $7664: $00
    ld [bc], a                                    ; $7665: $02
    rrca                                          ; $7666: $0f
    adc [hl]                                      ; $7667: $8e
    ld [hl], $3f                                  ; $7668: $36 $3f
    ld l, a                                       ; $766a: $6f
    ld a, a                                       ; $766b: $7f
    ld e, b                                       ; $766c: $58
    ld a, a                                       ; $766d: $7f
    reti                                          ; $766e: $d9


    rst $38                                       ; $766f: $ff
    rst $08                                       ; $7670: $cf
    rst $38                                       ; $7671: $ff

jr_0e3_7672:
    db $e4                                        ; $7672: $e4
    rst $38                                       ; $7673: $ff
    add sp, -$01                                  ; $7674: $e8 $ff
    ld [bc], a                                    ; $7676: $02
    ld a, a                                       ; $7677: $7f
    adc [hl]                                      ; $7678: $8e
    ld c, e                                       ; $7679: $4b
    ld a, a                                       ; $767a: $7f
    ld d, a                                       ; $767b: $57
    ld a, [hl]                                    ; $767c: $7e
    ld c, a                                       ; $767d: $4f
    ld a, a                                       ; $767e: $7f
    ld a, h                                       ; $767f: $7c
    ld a, a                                       ; $7680: $7f
    ld [hl], a                                    ; $7681: $77
    ld a, a                                       ; $7682: $7f
    cp l                                          ; $7683: $bd
    rst $38                                       ; $7684: $ff
    push af                                       ; $7685: $f5
    rst $38                                       ; $7686: $ff
    ld [bc], a                                    ; $7687: $02
    db $10                                        ; $7688: $10
    adc e                                         ; $7689: $8b
    inc c                                         ; $768a: $0c
    inc e                                         ; $768b: $1c
    ld [de], a                                    ; $768c: $12
    ld e, $1a                                     ; $768d: $1e $1a
    ld e, $19                                     ; $768f: $1e $19
    rra                                           ; $7691: $1f
    add hl, bc                                    ; $7692: $09
    rra                                           ; $7693: $1f
    dec bc                                        ; $7694: $0b
    inc bc                                        ; $7695: $03
    rra                                           ; $7696: $1f
    ld [bc], a                                    ; $7697: $02
    ld e, $02                                     ; $7698: $1e $02
    inc e                                         ; $769a: $1c
    ld [bc], a                                    ; $769b: $02
    jr jr_0e3_76a0                                ; $769c: $18 $02

    inc e                                         ; $769e: $1c
    add h                                         ; $769f: $84

jr_0e3_76a0:
    ld [de], a                                    ; $76a0: $12
    ld e, $12                                     ; $76a1: $1e $12
    ld e, $02                                     ; $76a3: $1e $02
    rra                                           ; $76a5: $1f
    sbc [hl]                                      ; $76a6: $9e
    dec c                                         ; $76a7: $0d
    rra                                           ; $76a8: $1f
    ld d, b                                       ; $76a9: $50
    ld a, a                                       ; $76aa: $7f
    ld d, d                                       ; $76ab: $52
    ld a, a                                       ; $76ac: $7f
    sub d                                         ; $76ad: $92
    rst $38                                       ; $76ae: $ff
    sub d                                         ; $76af: $92
    rst $38                                       ; $76b0: $ff
    sub b                                         ; $76b1: $90
    rst $38                                       ; $76b2: $ff
    ret nc                                        ; $76b3: $d0

    rst $38                                       ; $76b4: $ff
    or h                                          ; $76b5: $b4
    rst $38                                       ; $76b6: $ff
    pop af                                        ; $76b7: $f1
    rst $18                                       ; $76b8: $df
    ld [hl], b                                    ; $76b9: $70
    ld a, a                                       ; $76ba: $7f
    ld h, b                                       ; $76bb: $60
    ld a, a                                       ; $76bc: $7f
    ld h, b                                       ; $76bd: $60
    ld a, a                                       ; $76be: $7f
    ld b, b                                       ; $76bf: $40
    ld a, a                                       ; $76c0: $7f
    ld d, a                                       ; $76c1: $57
    ld a, a                                       ; $76c2: $7f
    ld h, b                                       ; $76c3: $60
    ld a, a                                       ; $76c4: $7f
    ld [bc], a                                    ; $76c5: $02
    rra                                           ; $76c6: $1f
    ld [bc], a                                    ; $76c7: $02
    nop                                           ; $76c8: $00
    sbc h                                         ; $76c9: $9c
    ld c, d                                       ; $76ca: $4a
    ld a, [hl]                                    ; $76cb: $7e
    ld c, c                                       ; $76cc: $49
    ld a, a                                       ; $76cd: $7f
    dec c                                         ; $76ce: $0d
    ld a, a                                       ; $76cf: $7f
    ld c, c                                       ; $76d0: $49
    ld a, a                                       ; $76d1: $7f
    ld c, c                                       ; $76d2: $49
    ld a, a                                       ; $76d3: $7f
    rrca                                          ; $76d4: $0f
    ld a, a                                       ; $76d5: $7f
    dec bc                                        ; $76d6: $0b
    ld a, a                                       ; $76d7: $7f
    ld c, $7e                                     ; $76d8: $0e $7e
    inc c                                         ; $76da: $0c
    ld a, h                                       ; $76db: $7c
    inc b                                         ; $76dc: $04
    ld a, h                                       ; $76dd: $7c
    inc [hl]                                      ; $76de: $34
    ld a, h                                       ; $76df: $7c
    ld b, h                                       ; $76e0: $44
    ld a, h                                       ; $76e1: $7c
    ld [bc], a                                    ; $76e2: $02
    ld a, [hl]                                    ; $76e3: $7e
    ld h, [hl]                                    ; $76e4: $66
    ld a, [hl]                                    ; $76e5: $7e
    ld [bc], a                                    ; $76e6: $02
    ld a, h                                       ; $76e7: $7c
    ld [bc], a                                    ; $76e8: $02
    nop                                           ; $76e9: $00
    rst $38                                       ; $76ea: $ff
    dec c                                         ; $76eb: $0d
    inc b                                         ; $76ec: $04
    ei                                            ; $76ed: $fb
    dec b                                         ; $76ee: $05
    ld a, [c]                                     ; $76ef: $f2
    ei                                            ; $76f0: $fb
    ld [c], a                                     ; $76f1: $e2
    ld a, [$ffe2]                                 ; $76f2: $fa $e2 $ff
    ld a, [c]                                     ; $76f5: $f2
    ld sp, hl                                     ; $76f6: $f9
    ld a, [c]                                     ; $76f7: $f2
    nop                                           ; $76f8: $00
    ld [bc], a                                    ; $76f9: $02
    rrca                                          ; $76fa: $0f
    adc [hl]                                      ; $76fb: $8e
    inc a                                         ; $76fc: $3c
    ccf                                           ; $76fd: $3f
    ld l, a                                       ; $76fe: $6f
    ld a, a                                       ; $76ff: $7f
    ld e, c                                       ; $7700: $59
    ld a, a                                       ; $7701: $7f
    ret c                                         ; $7702: $d8

    rst $38                                       ; $7703: $ff
    rst $20                                       ; $7704: $e7
    rst $38                                       ; $7705: $ff
    ld [c], a                                     ; $7706: $e2
    rst $38                                       ; $7707: $ff
    db $f4                                        ; $7708: $f4
    rst $38                                       ; $7709: $ff
    ld [bc], a                                    ; $770a: $02
    ld a, a                                       ; $770b: $7f
    adc [hl]                                      ; $770c: $8e
    ld l, e                                       ; $770d: $6b
    ld a, a                                       ; $770e: $7f
    ld l, e                                       ; $770f: $6b
    ld a, [hl]                                    ; $7710: $7e
    ld d, a                                       ; $7711: $57
    ld a, a                                       ; $7712: $7f
    ld c, h                                       ; $7713: $4c
    ld a, a                                       ; $7714: $7f
    ld [hl], b                                    ; $7715: $70
    ld a, a                                       ; $7716: $7f
    cp a                                          ; $7717: $bf
    rst $38                                       ; $7718: $ff
    push af                                       ; $7719: $f5
    rst $38                                       ; $771a: $ff
    ld [bc], a                                    ; $771b: $02
    db $10                                        ; $771c: $10
    adc [hl]                                      ; $771d: $8e
    inc c                                         ; $771e: $0c
    inc e                                         ; $771f: $1c
    ld [de], a                                    ; $7720: $12
    ld e, $1a                                     ; $7721: $1e $1a
    ld e, $19                                     ; $7723: $1e $19
    rra                                           ; $7725: $1f
    dec d                                         ; $7726: $15
    rra                                           ; $7727: $1f
    dec b                                         ; $7728: $05
    rra                                           ; $7729: $1f
    rrca                                          ; $772a: $0f
    rra                                           ; $772b: $1f
    ld [bc], a                                    ; $772c: $02
    ld e, $02                                     ; $772d: $1e $02
    inc e                                         ; $772f: $1c
    ld [bc], a                                    ; $7730: $02
    jr jr_0e3_7735                                ; $7731: $18 $02

    inc e                                         ; $7733: $1c
    add h                                         ; $7734: $84

jr_0e3_7735:
    ld a, [de]                                    ; $7735: $1a
    ld e, $12                                     ; $7736: $1e $12
    ld e, $02                                     ; $7738: $1e $02
    rra                                           ; $773a: $1f
    and b                                         ; $773b: $a0
    dec c                                         ; $773c: $0d
    rra                                           ; $773d: $1f
    ld d, d                                       ; $773e: $52
    ld a, a                                       ; $773f: $7f
    ld d, d                                       ; $7740: $52
    ld a, a                                       ; $7741: $7f
    or b                                          ; $7742: $b0
    rst $38                                       ; $7743: $ff
    sub d                                         ; $7744: $92
    rst $38                                       ; $7745: $ff
    sub d                                         ; $7746: $92
    rst $38                                       ; $7747: $ff
    ldh a, [rIE]                                  ; $7748: $f0 $ff
    sub h                                         ; $774a: $94
    rst $38                                       ; $774b: $ff
    ldh a, [rIE]                                  ; $774c: $f0 $ff
    ld [hl], b                                    ; $774e: $70
    ld a, a                                       ; $774f: $7f
    jr nc, jr_0e3_7791                            ; $7750: $30 $3f

    jr nz, jr_0e3_7793                            ; $7752: $20 $3f

    jr nz, jr_0e3_7795                            ; $7754: $20 $3f

    ld h, b                                       ; $7756: $60
    ld a, a                                       ; $7757: $7f
    ld c, a                                       ; $7758: $4f
    ld a, a                                       ; $7759: $7f
    ld h, b                                       ; $775a: $60
    ld a, a                                       ; $775b: $7f
    ld [bc], a                                    ; $775c: $02
    ccf                                           ; $775d: $3f
    sbc [hl]                                      ; $775e: $9e
    ld c, d                                       ; $775f: $4a
    ld a, [hl]                                    ; $7760: $7e
    ld a, [bc]                                    ; $7761: $0a
    ld a, [hl]                                    ; $7762: $7e
    dec c                                         ; $7763: $0d
    ld a, a                                       ; $7764: $7f
    ld c, c                                       ; $7765: $49
    ld a, a                                       ; $7766: $7f
    ld c, c                                       ; $7767: $49
    ld a, a                                       ; $7768: $7f
    rrca                                          ; $7769: $0f
    ld a, a                                       ; $776a: $7f
    ld c, c                                       ; $776b: $49
    ld a, a                                       ; $776c: $7f
    rrca                                          ; $776d: $0f
    ld a, a                                       ; $776e: $7f
    ld c, [hl]                                    ; $776f: $4e
    ld a, [hl]                                    ; $7770: $7e
    inc b                                         ; $7771: $04
    ld a, h                                       ; $7772: $7c
    inc b                                         ; $7773: $04
    ld a, h                                       ; $7774: $7c
    inc b                                         ; $7775: $04
    ld a, h                                       ; $7776: $7c
    ld b, $7e                                     ; $7777: $06 $7e
    ld h, d                                       ; $7779: $62
    ld a, [hl]                                    ; $777a: $7e
    ld b, $7e                                     ; $777b: $06 $7e
    ld [bc], a                                    ; $777d: $02
    ld a, b                                       ; $777e: $78
    rst $38                                       ; $777f: $ff
    dec c                                         ; $7780: $0d
    inc b                                         ; $7781: $04
    ei                                            ; $7782: $fb
    dec b                                         ; $7783: $05
    ld a, [c]                                     ; $7784: $f2
    ei                                            ; $7785: $fb
    ld [c], a                                     ; $7786: $e2
    ld a, [$ffe2]                                 ; $7787: $fa $e2 $ff
    ld a, [c]                                     ; $778a: $f2
    ld sp, hl                                     ; $778b: $f9
    ld a, [c]                                     ; $778c: $f2
    nop                                           ; $778d: $00
    ld [bc], a                                    ; $778e: $02
    rrca                                          ; $778f: $0f
    add d                                         ; $7790: $82

jr_0e3_7791:
    jr c, @+$41                                   ; $7791: $38 $3f

jr_0e3_7793:
    ld [bc], a                                    ; $7793: $02
    ld a, a                                       ; $7794: $7f

jr_0e3_7795:
    adc d                                         ; $7795: $8a
    ld e, b                                       ; $7796: $58
    ld a, a                                       ; $7797: $7f
    call c, $cfff                                 ; $7798: $dc $ff $cf
    rst $38                                       ; $779b: $ff
    pop hl                                        ; $779c: $e1
    rst $38                                       ; $779d: $ff
    or $ff                                        ; $779e: $f6 $ff
    ld [bc], a                                    ; $77a0: $02
    ld a, a                                       ; $77a1: $7f
    adc d                                         ; $77a2: $8a
    ld l, e                                       ; $77a3: $6b
    ld a, a                                       ; $77a4: $7f
    ld d, a                                       ; $77a5: $57
    ld a, [hl]                                    ; $77a6: $7e
    ld c, a                                       ; $77a7: $4f
    ld a, a                                       ; $77a8: $7f
    ld e, h                                       ; $77a9: $5c
    ld a, a                                       ; $77aa: $7f
    ld [hl], b                                    ; $77ab: $70
    ld a, a                                       ; $77ac: $7f
    ld [bc], a                                    ; $77ad: $02
    rst $38                                       ; $77ae: $ff
    add d                                         ; $77af: $82
    or l                                          ; $77b0: $b5
    rst $38                                       ; $77b1: $ff
    ld [bc], a                                    ; $77b2: $02
    db $10                                        ; $77b3: $10
    adc [hl]                                      ; $77b4: $8e
    inc c                                         ; $77b5: $0c
    inc e                                         ; $77b6: $1c
    ld [de], a                                    ; $77b7: $12
    ld e, $1a                                     ; $77b8: $1e $1a
    ld e, $1d                                     ; $77ba: $1e $1d
    rra                                           ; $77bc: $1f
    dec d                                         ; $77bd: $15
    rra                                           ; $77be: $1f
    rlca                                          ; $77bf: $07
    rra                                           ; $77c0: $1f
    rlca                                          ; $77c1: $07
    rra                                           ; $77c2: $1f
    ld [bc], a                                    ; $77c3: $02
    ld e, $02                                     ; $77c4: $1e $02
    inc e                                         ; $77c6: $1c
    ld [bc], a                                    ; $77c7: $02
    jr jr_0e3_77cc                                ; $77c8: $18 $02

    inc e                                         ; $77ca: $1c
    and [hl]                                      ; $77cb: $a6

jr_0e3_77cc:
    ld a, [de]                                    ; $77cc: $1a
    ld e, $12                                     ; $77cd: $1e $12
    ld e, $12                                     ; $77cf: $1e $12
    ld e, $1d                                     ; $77d1: $1e $1d
    rra                                           ; $77d3: $1f
    ld d, d                                       ; $77d4: $52
    ld a, a                                       ; $77d5: $7f
    or b                                          ; $77d6: $b0
    rst $38                                       ; $77d7: $ff
    or d                                          ; $77d8: $b2
    rst $38                                       ; $77d9: $ff
    sub b                                         ; $77da: $90
    rst $38                                       ; $77db: $ff
    ret nc                                        ; $77dc: $d0

    rst $38                                       ; $77dd: $ff
    ldh a, [rIE]                                  ; $77de: $f0 $ff
    ld [hl], b                                    ; $77e0: $70
    ld a, a                                       ; $77e1: $7f
    ld [hl-], a                                   ; $77e2: $32
    ccf                                           ; $77e3: $3f
    jr nc, jr_0e3_7825                            ; $77e4: $30 $3f

    jr nc, jr_0e3_7827                            ; $77e6: $30 $3f

    jr nz, jr_0e3_7829                            ; $77e8: $20 $3f

    jr nz, jr_0e3_782b                            ; $77ea: $20 $3f

    ld a, [hl+]                                   ; $77ec: $2a
    ccf                                           ; $77ed: $3f
    jr nz, @+$41                                  ; $77ee: $20 $3f

    ld c, [hl]                                    ; $77f0: $4e
    ld a, a                                       ; $77f1: $7f
    ld [bc], a                                    ; $77f2: $02
    ccf                                           ; $77f3: $3f
    sbc [hl]                                      ; $77f4: $9e
    ld c, d                                       ; $77f5: $4a
    ld a, [hl]                                    ; $77f6: $7e
    ld c, d                                       ; $77f7: $4a
    ld a, [hl]                                    ; $77f8: $7e
    ld c, e                                       ; $77f9: $4b
    ld a, a                                       ; $77fa: $7f
    ld c, c                                       ; $77fb: $49
    ld a, a                                       ; $77fc: $7f
    add hl, bc                                    ; $77fd: $09
    ld a, a                                       ; $77fe: $7f
    ld c, c                                       ; $77ff: $49
    ld a, a                                       ; $7800: $7f
    ld c, a                                       ; $7801: $4f
    ld a, a                                       ; $7802: $7f
    dec c                                         ; $7803: $0d
    ld a, e                                       ; $7804: $7b
    ld b, $7e                                     ; $7805: $06 $7e
    ld b, $7e                                     ; $7807: $06 $7e
    ld b, $7e                                     ; $7809: $06 $7e
    ld [bc], a                                    ; $780b: $02
    ld a, [hl]                                    ; $780c: $7e
    ld a, [bc]                                    ; $780d: $0a
    ld a, [hl]                                    ; $780e: $7e
    ld [hl], d                                    ; $780f: $72
    ld a, [hl]                                    ; $7810: $7e
    inc c                                         ; $7811: $0c
    ld a, h                                       ; $7812: $7c
    ld [bc], a                                    ; $7813: $02
    ld [hl], b                                    ; $7814: $70
    rst $38                                       ; $7815: $ff
    dec c                                         ; $7816: $0d
    inc b                                         ; $7817: $04
    ei                                            ; $7818: $fb
    dec b                                         ; $7819: $05
    ld a, [c]                                     ; $781a: $f2
    ei                                            ; $781b: $fb
    db $e3                                        ; $781c: $e3
    ld a, [$ffe3]                                 ; $781d: $fa $e3 $ff
    di                                            ; $7820: $f3
    ld sp, hl                                     ; $7821: $f9
    di                                            ; $7822: $f3
    nop                                           ; $7823: $00
    ld [bc], a                                    ; $7824: $02

jr_0e3_7825:
    rrca                                          ; $7825: $0f
    add d                                         ; $7826: $82

jr_0e3_7827:
    jr c, jr_0e3_7868                             ; $7827: $38 $3f

jr_0e3_7829:
    ld [bc], a                                    ; $7829: $02
    ld a, a                                       ; $782a: $7f

jr_0e3_782b:
    adc d                                         ; $782b: $8a
    ld e, b                                       ; $782c: $58
    ld a, a                                       ; $782d: $7f
    call c, $cfff                                 ; $782e: $dc $ff $cf
    rst $38                                       ; $7831: $ff
    pop hl                                        ; $7832: $e1
    rst $38                                       ; $7833: $ff
    or $ff                                        ; $7834: $f6 $ff
    ld [bc], a                                    ; $7836: $02
    ld a, a                                       ; $7837: $7f
    adc [hl]                                      ; $7838: $8e
    ld c, e                                       ; $7839: $4b
    ld a, a                                       ; $783a: $7f
    ld d, a                                       ; $783b: $57
    ld a, [hl]                                    ; $783c: $7e
    ld c, a                                       ; $783d: $4f
    ld a, a                                       ; $783e: $7f
    ld a, h                                       ; $783f: $7c
    ld a, a                                       ; $7840: $7f
    ld [hl], a                                    ; $7841: $77
    ld a, a                                       ; $7842: $7f
    db $fd                                        ; $7843: $fd
    rst $38                                       ; $7844: $ff
    or l                                          ; $7845: $b5
    rst $38                                       ; $7846: $ff
    ld [bc], a                                    ; $7847: $02
    db $10                                        ; $7848: $10
    adc [hl]                                      ; $7849: $8e
    inc c                                         ; $784a: $0c
    inc e                                         ; $784b: $1c
    ld [de], a                                    ; $784c: $12
    ld e, $1a                                     ; $784d: $1e $1a
    ld e, $1d                                     ; $784f: $1e $1d
    rra                                           ; $7851: $1f
    dec d                                         ; $7852: $15
    rra                                           ; $7853: $1f
    rlca                                          ; $7854: $07
    rra                                           ; $7855: $1f
    rlca                                          ; $7856: $07
    rra                                           ; $7857: $1f
    ld [bc], a                                    ; $7858: $02
    ld e, $02                                     ; $7859: $1e $02
    inc e                                         ; $785b: $1c
    ld [bc], a                                    ; $785c: $02
    jr jr_0e3_7861                                ; $785d: $18 $02

    inc e                                         ; $785f: $1c
    add h                                         ; $7860: $84

jr_0e3_7861:
    ld [de], a                                    ; $7861: $12
    ld e, $12                                     ; $7862: $1e $12
    ld e, $02                                     ; $7864: $1e $02
    rra                                           ; $7866: $1f
    sbc [hl]                                      ; $7867: $9e

jr_0e3_7868:
    dec c                                         ; $7868: $0d
    rra                                           ; $7869: $1f
    ld d, d                                       ; $786a: $52
    ld a, a                                       ; $786b: $7f
    sub d                                         ; $786c: $92
    rst $38                                       ; $786d: $ff
    or b                                          ; $786e: $b0
    rst $38                                       ; $786f: $ff
    sub d                                         ; $7870: $92
    rst $38                                       ; $7871: $ff
    sub d                                         ; $7872: $92
    rst $38                                       ; $7873: $ff
    ldh a, [rIE]                                  ; $7874: $f0 $ff
    ret nc                                        ; $7876: $d0

    rst $38                                       ; $7877: $ff
    ld [hl], c                                    ; $7878: $71
    ld a, a                                       ; $7879: $7f
    jr nc, jr_0e3_78bb                            ; $787a: $30 $3f

    jr nz, jr_0e3_78bd                            ; $787c: $20 $3f

    inc l                                         ; $787e: $2c
    ccf                                           ; $787f: $3f
    ld [hl+], a                                   ; $7880: $22
    ccf                                           ; $7881: $3f
    ld b, c                                       ; $7882: $41
    ld a, a                                       ; $7883: $7f
    ld h, [hl]                                    ; $7884: $66
    ld a, a                                       ; $7885: $7f
    ld [bc], a                                    ; $7886: $02
    ccf                                           ; $7887: $3f
    ld [bc], a                                    ; $7888: $02
    nop                                           ; $7889: $00
    sbc h                                         ; $788a: $9c
    ld a, [bc]                                    ; $788b: $0a
    ld a, [hl]                                    ; $788c: $7e
    ld c, d                                       ; $788d: $4a
    ld a, [hl]                                    ; $788e: $7e
    ld c, c                                       ; $788f: $49
    ld a, a                                       ; $7890: $7f
    ld c, c                                       ; $7891: $49
    ld a, a                                       ; $7892: $7f
    add hl, bc                                    ; $7893: $09
    ld a, a                                       ; $7894: $7f
    dec bc                                        ; $7895: $0b
    ld a, a                                       ; $7896: $7f
    dec l                                         ; $7897: $2d
    ld a, a                                       ; $7898: $7f
    rrca                                          ; $7899: $0f
    ld a, e                                       ; $789a: $7b
    ld c, $7e                                     ; $789b: $0e $7e
    ld b, $7e                                     ; $789d: $06 $7e
    ld b, $7e                                     ; $789f: $06 $7e
    ld [bc], a                                    ; $78a1: $02
    ld a, [hl]                                    ; $78a2: $7e
    ld l, d                                       ; $78a3: $6a
    ld a, [hl]                                    ; $78a4: $7e
    ld b, $7e                                     ; $78a5: $06 $7e
    ld [bc], a                                    ; $78a7: $02
    ld a, b                                       ; $78a8: $78
    ld [bc], a                                    ; $78a9: $02
    nop                                           ; $78aa: $00
    rst $38                                       ; $78ab: $ff
    dec c                                         ; $78ac: $0d
    inc b                                         ; $78ad: $04
    ei                                            ; $78ae: $fb
    dec b                                         ; $78af: $05
    ld a, [c]                                     ; $78b0: $f2
    ei                                            ; $78b1: $fb
    ld [c], a                                     ; $78b2: $e2
    ld a, [$ffe2]                                 ; $78b3: $fa $e2 $ff
    ld a, [c]                                     ; $78b6: $f2
    ld sp, hl                                     ; $78b7: $f9
    ld a, [c]                                     ; $78b8: $f2
    nop                                           ; $78b9: $00
    ld [bc], a                                    ; $78ba: $02

jr_0e3_78bb:
    rrca                                          ; $78bb: $0f
    adc [hl]                                      ; $78bc: $8e

jr_0e3_78bd:
    inc a                                         ; $78bd: $3c
    ccf                                           ; $78be: $3f
    ld l, a                                       ; $78bf: $6f
    ld a, a                                       ; $78c0: $7f
    ld e, c                                       ; $78c1: $59
    ld a, a                                       ; $78c2: $7f
    ret c                                         ; $78c3: $d8

    rst $38                                       ; $78c4: $ff
    rst $20                                       ; $78c5: $e7
    rst $38                                       ; $78c6: $ff
    ld [c], a                                     ; $78c7: $e2
    rst $38                                       ; $78c8: $ff
    db $f4                                        ; $78c9: $f4
    rst $38                                       ; $78ca: $ff
    ld [bc], a                                    ; $78cb: $02
    ld a, a                                       ; $78cc: $7f
    adc [hl]                                      ; $78cd: $8e
    ld l, e                                       ; $78ce: $6b
    ld a, a                                       ; $78cf: $7f
    ld l, e                                       ; $78d0: $6b
    ld a, [hl]                                    ; $78d1: $7e
    ld d, a                                       ; $78d2: $57
    ld a, a                                       ; $78d3: $7f
    ld c, h                                       ; $78d4: $4c
    ld a, a                                       ; $78d5: $7f
    ld [hl], b                                    ; $78d6: $70
    ld a, a                                       ; $78d7: $7f
    cp a                                          ; $78d8: $bf
    rst $38                                       ; $78d9: $ff
    push af                                       ; $78da: $f5
    rst $38                                       ; $78db: $ff
    ld [bc], a                                    ; $78dc: $02
    db $10                                        ; $78dd: $10
    adc [hl]                                      ; $78de: $8e
    inc c                                         ; $78df: $0c
    inc e                                         ; $78e0: $1c
    ld [de], a                                    ; $78e1: $12
    ld e, $1a                                     ; $78e2: $1e $1a
    ld e, $19                                     ; $78e4: $1e $19
    rra                                           ; $78e6: $1f
    dec d                                         ; $78e7: $15
    rra                                           ; $78e8: $1f
    dec b                                         ; $78e9: $05
    rra                                           ; $78ea: $1f
    rrca                                          ; $78eb: $0f
    rra                                           ; $78ec: $1f
    ld [bc], a                                    ; $78ed: $02
    ld e, $02                                     ; $78ee: $1e $02
    inc e                                         ; $78f0: $1c
    ld [bc], a                                    ; $78f1: $02
    jr jr_0e3_78f6                                ; $78f2: $18 $02

    inc e                                         ; $78f4: $1c
    add h                                         ; $78f5: $84

jr_0e3_78f6:
    ld a, [de]                                    ; $78f6: $1a
    ld e, $12                                     ; $78f7: $1e $12
    ld e, $02                                     ; $78f9: $1e $02
    rra                                           ; $78fb: $1f
    and b                                         ; $78fc: $a0
    dec c                                         ; $78fd: $0d
    rra                                           ; $78fe: $1f
    ld d, d                                       ; $78ff: $52
    ld a, a                                       ; $7900: $7f
    ld d, b                                       ; $7901: $50
    ld a, a                                       ; $7902: $7f
    or b                                          ; $7903: $b0
    rst $38                                       ; $7904: $ff
    sub d                                         ; $7905: $92
    rst $38                                       ; $7906: $ff
    sub d                                         ; $7907: $92
    rst $38                                       ; $7908: $ff
    ldh a, [rIE]                                  ; $7909: $f0 $ff
    sub d                                         ; $790b: $92
    rst $38                                       ; $790c: $ff
    ldh a, [rIE]                                  ; $790d: $f0 $ff
    ld [hl], d                                    ; $790f: $72
    ld a, a                                       ; $7910: $7f
    jr nz, jr_0e3_7952                            ; $7911: $20 $3f

    jr nz, jr_0e3_7954                            ; $7913: $20 $3f

    jr nz, jr_0e3_7956                            ; $7915: $20 $3f

    ld h, b                                       ; $7917: $60
    ld a, a                                       ; $7918: $7f
    ld c, a                                       ; $7919: $4f
    ld a, a                                       ; $791a: $7f
    ld h, b                                       ; $791b: $60
    ld a, a                                       ; $791c: $7f
    ld [bc], a                                    ; $791d: $02
    rra                                           ; $791e: $1f
    sbc [hl]                                      ; $791f: $9e
    ld c, d                                       ; $7920: $4a
    ld a, [hl]                                    ; $7921: $7e
    ld c, d                                       ; $7922: $4a
    ld a, [hl]                                    ; $7923: $7e
    dec c                                         ; $7924: $0d
    ld a, a                                       ; $7925: $7f
    ld c, c                                       ; $7926: $49
    ld a, a                                       ; $7927: $7f
    ld c, c                                       ; $7928: $49
    ld a, a                                       ; $7929: $7f
    rrca                                          ; $792a: $0f
    ld a, a                                       ; $792b: $7f
    add hl, hl                                    ; $792c: $29
    ld a, a                                       ; $792d: $7f
    rrca                                          ; $792e: $0f
    ld a, a                                       ; $792f: $7f
    ld c, $7e                                     ; $7930: $0e $7e
    inc c                                         ; $7932: $0c
    ld a, h                                       ; $7933: $7c
    inc b                                         ; $7934: $04
    ld a, h                                       ; $7935: $7c
    inc b                                         ; $7936: $04
    ld a, h                                       ; $7937: $7c
    ld b, $7e                                     ; $7938: $06 $7e
    ld h, d                                       ; $793a: $62
    ld a, [hl]                                    ; $793b: $7e
    ld b, $7e                                     ; $793c: $06 $7e
    ld [bc], a                                    ; $793e: $02
    ld a, h                                       ; $793f: $7c
    rst $38                                       ; $7940: $ff
    dec c                                         ; $7941: $0d
    inc b                                         ; $7942: $04
    ei                                            ; $7943: $fb
    dec b                                         ; $7944: $05
    ld a, [c]                                     ; $7945: $f2
    ei                                            ; $7946: $fb
    ld [c], a                                     ; $7947: $e2
    ld a, [$ffe2]                                 ; $7948: $fa $e2 $ff
    ld a, [c]                                     ; $794b: $f2
    ld sp, hl                                     ; $794c: $f9
    ld a, [c]                                     ; $794d: $f2
    nop                                           ; $794e: $00
    ld [bc], a                                    ; $794f: $02
    rrca                                          ; $7950: $0f
    add a                                         ; $7951: $87

jr_0e3_7952:
    jr nc, jr_0e3_7993                            ; $7952: $30 $3f

jr_0e3_7954:
    ld b, c                                       ; $7954: $41
    ld a, a                                       ; $7955: $7f

jr_0e3_7956:
    ld b, a                                       ; $7956: $47
    ld a, a                                       ; $7957: $7f
    call $ff02                                    ; $7958: $cd $02 $ff
    adc e                                         ; $795b: $8b
    ld hl, sp-$01                                 ; $795c: $f8 $ff
    push af                                       ; $795e: $f5
    ld a, a                                       ; $795f: $7f
    ld h, h                                       ; $7960: $64
    ccf                                           ; $7961: $3f
    ld [hl+], a                                   ; $7962: $22
    rra                                           ; $7963: $1f
    rla                                           ; $7964: $17
    ccf                                           ; $7965: $3f
    jr nc, jr_0e3_796a                            ; $7966: $30 $02

    ld a, a                                       ; $7968: $7f
    adc b                                         ; $7969: $88

jr_0e3_796a:
    ld e, a                                       ; $796a: $5f
    ld a, h                                       ; $796b: $7c
    ld l, e                                       ; $796c: $6b
    ld a, a                                       ; $796d: $7f
    db $f4                                        ; $796e: $f4
    rst $38                                       ; $796f: $ff
    cp e                                          ; $7970: $bb
    rst $38                                       ; $7971: $ff
    ld [bc], a                                    ; $7972: $02
    db $10                                        ; $7973: $10
    cp d                                          ; $7974: $ba
    inc c                                         ; $7975: $0c
    inc e                                         ; $7976: $1c
    ld [de], a                                    ; $7977: $12
    ld e, $0e                                     ; $7978: $1e $0e
    ld e, $13                                     ; $797a: $1e $13
    rra                                           ; $797c: $1f
    dec e                                         ; $797d: $1d
    rra                                           ; $797e: $1f
    ld e, $0e                                     ; $797f: $1e $0e
    ld e, $06                                     ; $7981: $1e $06
    ld e, $06                                     ; $7983: $1e $06
    ld e, $0e                                     ; $7985: $1e $0e
    ld a, [de]                                    ; $7987: $1a
    ld c, $1a                                     ; $7988: $0e $1a
    ld e, $1a                                     ; $798a: $1e $1a
    ld e, $16                                     ; $798c: $1e $16
    ld e, $0d                                     ; $798e: $1e $0d
    rra                                           ; $7990: $1f
    dec e                                         ; $7991: $1d
    rra                                           ; $7992: $1f

jr_0e3_7993:
    ld [hl], a                                    ; $7993: $77
    ld a, a                                       ; $7994: $7f
    ld d, l                                       ; $7995: $55
    ld a, [hl]                                    ; $7996: $7e
    ld d, h                                       ; $7997: $54
    ld a, a                                       ; $7998: $7f
    sub l                                         ; $7999: $95
    cp $b4                                        ; $799a: $fe $b4
    rst $38                                       ; $799c: $ff
    push de                                       ; $799d: $d5
    rst $38                                       ; $799e: $ff
    or a                                          ; $799f: $b7
    rst $38                                       ; $79a0: $ff
    ld [hl], a                                    ; $79a1: $77
    ld e, a                                       ; $79a2: $5f
    ld [hl], a                                    ; $79a3: $77
    ld a, a                                       ; $79a4: $7f
    daa                                           ; $79a5: $27
    ccf                                           ; $79a6: $3f
    daa                                           ; $79a7: $27
    ccf                                           ; $79a8: $3f
    daa                                           ; $79a9: $27
    ccf                                           ; $79aa: $3f
    ld [hl], a                                    ; $79ab: $77
    ld a, a                                       ; $79ac: $7f
    ld c, a                                       ; $79ad: $4f
    ld a, a                                       ; $79ae: $7f
    ld [bc], a                                    ; $79af: $02
    ld a, $02                                     ; $79b0: $3e $02
    inc e                                         ; $79b2: $1c
    sbc h                                         ; $79b3: $9c
    ld l, [hl]                                    ; $79b4: $6e
    ld a, [hl]                                    ; $79b5: $7e
    ld l, d                                       ; $79b6: $6a
    ld a, [hl]                                    ; $79b7: $7e
    ld a, [hl+]                                   ; $79b8: $2a
    ld a, [hl]                                    ; $79b9: $7e
    add hl, hl                                    ; $79ba: $29
    ld a, a                                       ; $79bb: $7f
    dec l                                         ; $79bc: $2d
    ld a, a                                       ; $79bd: $7f
    dec hl                                        ; $79be: $2b
    ld a, a                                       ; $79bf: $7f
    ld l, l                                       ; $79c0: $6d
    ld a, a                                       ; $79c1: $7f
    ld l, [hl]                                    ; $79c2: $6e
    ld a, d                                       ; $79c3: $7a
    ld l, [hl]                                    ; $79c4: $6e
    ld a, [hl]                                    ; $79c5: $7e
    ld h, h                                       ; $79c6: $64
    ld a, h                                       ; $79c7: $7c
    ld h, h                                       ; $79c8: $64
    ld a, h                                       ; $79c9: $7c
    ld h, h                                       ; $79ca: $64
    ld a, h                                       ; $79cb: $7c
    ld l, [hl]                                    ; $79cc: $6e
    ld a, [hl]                                    ; $79cd: $7e
    ld [hl], d                                    ; $79ce: $72
    ld a, [hl]                                    ; $79cf: $7e
    ld [bc], a                                    ; $79d0: $02
    ld a, h                                       ; $79d1: $7c
    ld [bc], a                                    ; $79d2: $02
    jr c, @+$01                                   ; $79d3: $38 $ff

    dec c                                         ; $79d5: $0d
    inc b                                         ; $79d6: $04
    ei                                            ; $79d7: $fb
    dec b                                         ; $79d8: $05
    ld a, [c]                                     ; $79d9: $f2
    ei                                            ; $79da: $fb
    ld [c], a                                     ; $79db: $e2
    ld a, [$ffe2]                                 ; $79dc: $fa $e2 $ff
    ld a, [c]                                     ; $79df: $f2
    ld sp, hl                                     ; $79e0: $f9
    ld a, [c]                                     ; $79e1: $f2
    nop                                           ; $79e2: $00
    ld [bc], a                                    ; $79e3: $02
    rrca                                          ; $79e4: $0f
    sub h                                         ; $79e5: $94
    jr nc, jr_0e3_7a27                            ; $79e6: $30 $3f

    ld b, e                                       ; $79e8: $43
    ld a, a                                       ; $79e9: $7f
    ld c, [hl]                                    ; $79ea: $4e
    ld a, a                                       ; $79eb: $7f
    sbc c                                         ; $79ec: $99
    rst $38                                       ; $79ed: $ff
    rst $18                                       ; $79ee: $df
    ldh a, [rIE]                                  ; $79ef: $f0 $ff
    ld a, [$687f]                                 ; $79f1: $fa $7f $68
    ccf                                           ; $79f4: $3f
    inc h                                         ; $79f5: $24
    ccf                                           ; $79f6: $3f
    ld h, $3f                                     ; $79f7: $26 $3f
    jr nc, jr_0e3_79fd                            ; $79f9: $30 $02

    ld a, a                                       ; $79fb: $7f
    adc b                                         ; $79fc: $88

jr_0e3_79fd:
    ld e, a                                       ; $79fd: $5f
    ld a, h                                       ; $79fe: $7c
    ld l, e                                       ; $79ff: $6b
    ld a, a                                       ; $7a00: $7f
    db $f4                                        ; $7a01: $f4
    rst $38                                       ; $7a02: $ff
    ei                                            ; $7a03: $fb
    rst $38                                       ; $7a04: $ff
    ld [bc], a                                    ; $7a05: $02
    db $10                                        ; $7a06: $10
    ld [bc], a                                    ; $7a07: $02
    inc e                                         ; $7a08: $1c
    add c                                         ; $7a09: $81
    ld [bc], a                                    ; $7a0a: $02
    inc bc                                        ; $7a0b: $03
    ld e, $b6                                     ; $7a0c: $1e $b6
    inc de                                        ; $7a0e: $13
    rra                                           ; $7a0f: $1f
    dec de                                        ; $7a10: $1b
    rra                                           ; $7a11: $1f
    ld e, $0e                                     ; $7a12: $1e $0e
    ld e, $06                                     ; $7a14: $1e $06
    ld e, $0e                                     ; $7a16: $1e $0e
    ld e, $0e                                     ; $7a18: $1e $0e
    ld a, [de]                                    ; $7a1a: $1a
    ld e, $1a                                     ; $7a1b: $1e $1a
    ld e, $1a                                     ; $7a1d: $1e $1a
    ld e, $16                                     ; $7a1f: $1e $16
    ld e, $0e                                     ; $7a21: $1e $0e
    ld e, $1d                                     ; $7a23: $1e $1d
    rra                                           ; $7a25: $1f
    ld d, a                                       ; $7a26: $57

jr_0e3_7a27:
    ld a, a                                       ; $7a27: $7f
    ld d, l                                       ; $7a28: $55
    ld a, [hl]                                    ; $7a29: $7e
    or h                                          ; $7a2a: $b4
    rst $38                                       ; $7a2b: $ff
    sub l                                         ; $7a2c: $95
    cp $bc                                        ; $7a2d: $fe $bc
    rst $38                                       ; $7a2f: $ff
    call $b7ff                                    ; $7a30: $cd $ff $b7
    rst $38                                       ; $7a33: $ff
    ld a, a                                       ; $7a34: $7f
    ld c, a                                       ; $7a35: $4f
    ld [hl], a                                    ; $7a36: $77
    ld e, a                                       ; $7a37: $5f
    daa                                           ; $7a38: $27
    ccf                                           ; $7a39: $3f
    daa                                           ; $7a3a: $27
    ccf                                           ; $7a3b: $3f
    daa                                           ; $7a3c: $27
    ccf                                           ; $7a3d: $3f
    ld h, a                                       ; $7a3e: $67
    ld a, a                                       ; $7a3f: $7f
    ld b, a                                       ; $7a40: $47
    ld a, a                                       ; $7a41: $7f
    ld [hl], $3e                                  ; $7a42: $36 $3e
    ld [bc], a                                    ; $7a44: $02
    ld [$6e97], sp                                ; $7a45: $08 $97 $6e
    ld a, [hl]                                    ; $7a48: $7e
    ld l, d                                       ; $7a49: $6a
    ld a, [hl]                                    ; $7a4a: $7e
    ld a, [hl+]                                   ; $7a4b: $2a
    ld a, [hl]                                    ; $7a4c: $7e
    ld a, [hl+]                                   ; $7a4d: $2a
    ld a, [hl]                                    ; $7a4e: $7e
    add hl, hl                                    ; $7a4f: $29
    ld a, a                                       ; $7a50: $7f
    ld [hl], $7e                                  ; $7a51: $36 $7e
    ld [hl], l                                    ; $7a53: $75
    ld a, a                                       ; $7a54: $7f
    halt                                          ; $7a55: $76
    ld a, [hl]                                    ; $7a56: $7e
    halt                                          ; $7a57: $76
    ld a, [hl]                                    ; $7a58: $7e
    ld [hl], h                                    ; $7a59: $74
    ld a, h                                       ; $7a5a: $7c
    ld [hl], h                                    ; $7a5b: $74
    ld a, h                                       ; $7a5c: $7c
    ld [hl], h                                    ; $7a5d: $74
    rlca                                          ; $7a5e: $07
    ld a, h                                       ; $7a5f: $7c
    ld [bc], a                                    ; $7a60: $02
    ld [hl], b                                    ; $7a61: $70
    rst $38                                       ; $7a62: $ff
    dec c                                         ; $7a63: $0d
    inc b                                         ; $7a64: $04
    ei                                            ; $7a65: $fb
    dec b                                         ; $7a66: $05
    ld a, [c]                                     ; $7a67: $f2
    ei                                            ; $7a68: $fb
    db $e3                                        ; $7a69: $e3
    ld a, [$ffe3]                                 ; $7a6a: $fa $e3 $ff
    di                                            ; $7a6d: $f3
    ld sp, hl                                     ; $7a6e: $f9
    di                                            ; $7a6f: $f3
    nop                                           ; $7a70: $00
    ld [bc], a                                    ; $7a71: $02
    rrca                                          ; $7a72: $0f
    sub h                                         ; $7a73: $94
    jr nc, jr_0e3_7ab5                            ; $7a74: $30 $3f

    ld b, e                                       ; $7a76: $43
    ld a, a                                       ; $7a77: $7f
    ld c, [hl]                                    ; $7a78: $4e
    ld a, a                                       ; $7a79: $7f
    sbc c                                         ; $7a7a: $99
    rst $38                                       ; $7a7b: $ff
    rst $18                                       ; $7a7c: $df
    ldh a, [rIE]                                  ; $7a7d: $f0 $ff
    ld a, [$687f]                                 ; $7a7f: $fa $7f $68
    ccf                                           ; $7a82: $3f
    inc h                                         ; $7a83: $24
    ccf                                           ; $7a84: $3f
    ld h, $3f                                     ; $7a85: $26 $3f
    jr nc, jr_0e3_7a8b                            ; $7a87: $30 $02

    ld a, a                                       ; $7a89: $7f
    add l                                         ; $7a8a: $85

jr_0e3_7a8b:
    ld e, a                                       ; $7a8b: $5f
    ld a, l                                       ; $7a8c: $7d
    ld l, e                                       ; $7a8d: $6b
    ld a, a                                       ; $7a8e: $7f
    ldh a, [$03]                                  ; $7a8f: $f0 $03
    rst $38                                       ; $7a91: $ff
    ld [bc], a                                    ; $7a92: $02
    db $10                                        ; $7a93: $10
    ld [bc], a                                    ; $7a94: $02
    inc e                                         ; $7a95: $1c
    add c                                         ; $7a96: $81
    ld [bc], a                                    ; $7a97: $02
    inc bc                                        ; $7a98: $03
    ld e, $b4                                     ; $7a99: $1e $b4
    inc de                                        ; $7a9b: $13
    rra                                           ; $7a9c: $1f
    dec de                                        ; $7a9d: $1b
    rra                                           ; $7a9e: $1f
    ld e, $0e                                     ; $7a9f: $1e $0e
    ld e, $06                                     ; $7aa1: $1e $06
    ld e, $0e                                     ; $7aa3: $1e $0e
    ld e, $0e                                     ; $7aa5: $1e $0e
    ld a, [de]                                    ; $7aa7: $1a
    ld e, $1a                                     ; $7aa8: $1e $1a
    ld e, $1a                                     ; $7aaa: $1e $1a
    ld e, $06                                     ; $7aac: $1e $06
    ld e, $0e                                     ; $7aae: $1e $0e
    ld e, $1d                                     ; $7ab0: $1e $1d
    rra                                           ; $7ab2: $1f
    ld d, [hl]                                    ; $7ab3: $56
    ld a, a                                       ; $7ab4: $7f

jr_0e3_7ab5:
    ld d, l                                       ; $7ab5: $55
    ld a, [hl]                                    ; $7ab6: $7e
    call nc, $95ff                                ; $7ab7: $d4 $ff $95
    cp $b4                                        ; $7aba: $fe $b4
    rst $38                                       ; $7abc: $ff
    db $dd                                        ; $7abd: $dd
    rst $38                                       ; $7abe: $ff
    cp a                                          ; $7abf: $bf
    rst $38                                       ; $7ac0: $ff
    ld a, a                                       ; $7ac1: $7f
    ld e, a                                       ; $7ac2: $5f
    ld [hl], a                                    ; $7ac3: $77
    ld e, a                                       ; $7ac4: $5f
    daa                                           ; $7ac5: $27
    ccf                                           ; $7ac6: $3f
    daa                                           ; $7ac7: $27
    ccf                                           ; $7ac8: $3f
    ld h, a                                       ; $7ac9: $67
    ld a, a                                       ; $7aca: $7f
    ld b, [hl]                                    ; $7acb: $46
    ld a, [hl]                                    ; $7acc: $7e
    inc l                                         ; $7acd: $2c
    inc a                                         ; $7ace: $3c
    ld [bc], a                                    ; $7acf: $02
    jr jr_0e3_7ad4                                ; $7ad0: $18 $02

    nop                                           ; $7ad2: $00
    sub l                                         ; $7ad3: $95

jr_0e3_7ad4:
    ld l, [hl]                                    ; $7ad4: $6e
    ld a, [hl]                                    ; $7ad5: $7e
    ld l, d                                       ; $7ad6: $6a
    ld a, [hl]                                    ; $7ad7: $7e
    ld a, [hl+]                                   ; $7ad8: $2a
    ld a, [hl]                                    ; $7ad9: $7e
    dec hl                                        ; $7ada: $2b
    ld a, a                                       ; $7adb: $7f
    add hl, hl                                    ; $7adc: $29
    ld a, a                                       ; $7add: $7f
    cpl                                           ; $7ade: $2f
    ld a, a                                       ; $7adf: $7f
    ld l, l                                       ; $7ae0: $6d
    ld a, a                                       ; $7ae1: $7f
    halt                                          ; $7ae2: $76
    ld a, [hl]                                    ; $7ae3: $7e
    ld [hl], h                                    ; $7ae4: $74
    ld a, h                                       ; $7ae5: $7c
    ld [hl], h                                    ; $7ae6: $74
    ld a, h                                       ; $7ae7: $7c
    ld [hl], h                                    ; $7ae8: $74
    inc bc                                        ; $7ae9: $03
    ld a, h                                       ; $7aea: $7c
    add c                                         ; $7aeb: $81
    ld a, d                                       ; $7aec: $7a
    inc bc                                        ; $7aed: $03
    ld a, [hl]                                    ; $7aee: $7e
    ld [bc], a                                    ; $7aef: $02
    ld a, b                                       ; $7af0: $78
    ld [bc], a                                    ; $7af1: $02
    nop                                           ; $7af2: $00
    rst $38                                       ; $7af3: $ff
    dec c                                         ; $7af4: $0d
    inc b                                         ; $7af5: $04
    ei                                            ; $7af6: $fb
    dec b                                         ; $7af7: $05
    ld a, [c]                                     ; $7af8: $f2
    ei                                            ; $7af9: $fb
    ld [c], a                                     ; $7afa: $e2
    ld a, [$ffe2]                                 ; $7afb: $fa $e2 $ff
    ld a, [c]                                     ; $7afe: $f2
    ld sp, hl                                     ; $7aff: $f9
    ld a, [c]                                     ; $7b00: $f2
    nop                                           ; $7b01: $00
    ld [bc], a                                    ; $7b02: $02
    rrca                                          ; $7b03: $0f
    add a                                         ; $7b04: $87
    jr nc, jr_0e3_7b46                            ; $7b05: $30 $3f

    ld b, c                                       ; $7b07: $41
    ld a, a                                       ; $7b08: $7f
    ld b, a                                       ; $7b09: $47
    ld a, a                                       ; $7b0a: $7f
    call $ff02                                    ; $7b0b: $cd $02 $ff
    adc e                                         ; $7b0e: $8b
    ld hl, sp-$01                                 ; $7b0f: $f8 $ff
    push af                                       ; $7b11: $f5
    ld a, a                                       ; $7b12: $7f
    ld h, h                                       ; $7b13: $64
    ccf                                           ; $7b14: $3f
    ld [hl+], a                                   ; $7b15: $22
    rra                                           ; $7b16: $1f
    rla                                           ; $7b17: $17
    ccf                                           ; $7b18: $3f
    jr nc, jr_0e3_7b1e                            ; $7b19: $30 $03

    ld a, a                                       ; $7b1b: $7f
    add a                                         ; $7b1c: $87
    ld a, h                                       ; $7b1d: $7c

jr_0e3_7b1e:
    ld e, e                                       ; $7b1e: $5b
    ld a, a                                       ; $7b1f: $7f
    db $e4                                        ; $7b20: $e4
    rst $38                                       ; $7b21: $ff
    cp e                                          ; $7b22: $bb
    rst $38                                       ; $7b23: $ff
    ld [bc], a                                    ; $7b24: $02
    db $10                                        ; $7b25: $10
    or [hl]                                       ; $7b26: $b6
    inc c                                         ; $7b27: $0c
    inc e                                         ; $7b28: $1c
    ld [de], a                                    ; $7b29: $12
    ld e, $0e                                     ; $7b2a: $1e $0e
    ld e, $13                                     ; $7b2c: $1e $13
    rra                                           ; $7b2e: $1f
    dec e                                         ; $7b2f: $1d
    rra                                           ; $7b30: $1f
    ld e, $0e                                     ; $7b31: $1e $0e
    ld e, $06                                     ; $7b33: $1e $06
    ld e, $06                                     ; $7b35: $1e $06
    ld e, $0e                                     ; $7b37: $1e $0e
    ld e, $0e                                     ; $7b39: $1e $0e
    ld a, [de]                                    ; $7b3b: $1a
    ld e, $1a                                     ; $7b3c: $1e $1a
    ld e, $16                                     ; $7b3e: $1e $16
    ld e, $0d                                     ; $7b40: $1e $0d
    rra                                           ; $7b42: $1f
    dec e                                         ; $7b43: $1d
    rra                                           ; $7b44: $1f
    ld [hl], a                                    ; $7b45: $77

jr_0e3_7b46:
    ld a, a                                       ; $7b46: $7f
    ld d, l                                       ; $7b47: $55
    ld a, [hl]                                    ; $7b48: $7e
    ld d, h                                       ; $7b49: $54
    ld a, a                                       ; $7b4a: $7f
    sub l                                         ; $7b4b: $95
    cp $b4                                        ; $7b4c: $fe $b4
    rst $38                                       ; $7b4e: $ff
    push de                                       ; $7b4f: $d5
    rst $38                                       ; $7b50: $ff
    or a                                          ; $7b51: $b7
    rst $38                                       ; $7b52: $ff
    ld [hl], a                                    ; $7b53: $77
    ld e, a                                       ; $7b54: $5f
    ld [hl], a                                    ; $7b55: $77
    ld a, a                                       ; $7b56: $7f
    daa                                           ; $7b57: $27
    ccf                                           ; $7b58: $3f
    cpl                                           ; $7b59: $2f
    ccf                                           ; $7b5a: $3f
    cpl                                           ; $7b5b: $2f
    ccf                                           ; $7b5c: $3f
    ld [bc], a                                    ; $7b5d: $02
    ld a, a                                       ; $7b5e: $7f
    add d                                         ; $7b5f: $82
    ld c, a                                       ; $7b60: $4f
    ld a, a                                       ; $7b61: $7f
    ld [bc], a                                    ; $7b62: $02
    ld a, $02                                     ; $7b63: $3e $02
    nop                                           ; $7b65: $00
    sbc h                                         ; $7b66: $9c
    ld l, [hl]                                    ; $7b67: $6e
    ld a, [hl]                                    ; $7b68: $7e
    ld l, d                                       ; $7b69: $6a
    ld a, [hl]                                    ; $7b6a: $7e
    ld a, [hl+]                                   ; $7b6b: $2a
    ld a, [hl]                                    ; $7b6c: $7e
    add hl, hl                                    ; $7b6d: $29
    ld a, a                                       ; $7b6e: $7f
    dec l                                         ; $7b6f: $2d
    ld a, a                                       ; $7b70: $7f
    dec hl                                        ; $7b71: $2b
    ld a, a                                       ; $7b72: $7f
    ld l, l                                       ; $7b73: $6d
    ld a, a                                       ; $7b74: $7f
    ld l, [hl]                                    ; $7b75: $6e
    ld a, d                                       ; $7b76: $7a
    ld l, [hl]                                    ; $7b77: $6e
    ld a, [hl]                                    ; $7b78: $7e
    ld h, h                                       ; $7b79: $64
    ld a, h                                       ; $7b7a: $7c
    ld h, h                                       ; $7b7b: $64
    ld a, h                                       ; $7b7c: $7c
    ld h, h                                       ; $7b7d: $64
    ld a, h                                       ; $7b7e: $7c
    ld l, [hl]                                    ; $7b7f: $6e
    ld a, [hl]                                    ; $7b80: $7e
    ld [hl], d                                    ; $7b81: $72
    ld a, [hl]                                    ; $7b82: $7e
    ld [bc], a                                    ; $7b83: $02
    ld a, h                                       ; $7b84: $7c
    ld [bc], a                                    ; $7b85: $02
    jr nc, @+$01                                  ; $7b86: $30 $ff

    dec c                                         ; $7b88: $0d
    inc b                                         ; $7b89: $04
    ei                                            ; $7b8a: $fb
    dec b                                         ; $7b8b: $05
    ld a, [c]                                     ; $7b8c: $f2
    ei                                            ; $7b8d: $fb
    ld [c], a                                     ; $7b8e: $e2
    ld a, [$ffe2]                                 ; $7b8f: $fa $e2 $ff
    ld a, [c]                                     ; $7b92: $f2
    ld sp, hl                                     ; $7b93: $f9
    ld a, [c]                                     ; $7b94: $f2
    nop                                           ; $7b95: $00
    ld [bc], a                                    ; $7b96: $02
    rrca                                          ; $7b97: $0f
    add a                                         ; $7b98: $87
    jr nc, jr_0e3_7bda                            ; $7b99: $30 $3f

    ld h, b                                       ; $7b9b: $60
    ld a, a                                       ; $7b9c: $7f
    ld b, e                                       ; $7b9d: $43
    ld a, a                                       ; $7b9e: $7f
    db $ec                                        ; $7b9f: $ec
    ld [bc], a                                    ; $7ba0: $02
    rst $38                                       ; $7ba1: $ff
    adc e                                         ; $7ba2: $8b
    ld hl, sp-$01                                 ; $7ba3: $f8 $ff
    ld a, [c]                                     ; $7ba5: $f2
    ld a, a                                       ; $7ba6: $7f
    ld h, b                                       ; $7ba7: $60
    ccf                                           ; $7ba8: $3f
    ld sp, $131f                                  ; $7ba9: $31 $1f $13
    ccf                                           ; $7bac: $3f
    jr c, jr_0e3_7bb1                             ; $7bad: $38 $02

    ld a, a                                       ; $7baf: $7f
    adc b                                         ; $7bb0: $88

jr_0e3_7bb1:
    ld e, a                                       ; $7bb1: $5f
    ld a, h                                       ; $7bb2: $7c
    ld l, e                                       ; $7bb3: $6b
    ld a, a                                       ; $7bb4: $7f
    ld [hl], h                                    ; $7bb5: $74
    ld a, a                                       ; $7bb6: $7f
    ei                                            ; $7bb7: $fb
    rst $38                                       ; $7bb8: $ff
    ld [bc], a                                    ; $7bb9: $02
    db $10                                        ; $7bba: $10
    add a                                         ; $7bbb: $87
    inc c                                         ; $7bbc: $0c
    inc e                                         ; $7bbd: $1c
    ld a, [de]                                    ; $7bbe: $1a
    ld e, $16                                     ; $7bbf: $1e $16
    ld e, $1b                                     ; $7bc1: $1e $1b
    ld [bc], a                                    ; $7bc3: $02
    rra                                           ; $7bc4: $1f
    add c                                         ; $7bc5: $81
    rrca                                          ; $7bc6: $0f
    inc bc                                        ; $7bc7: $03
    ld e, $8e                                     ; $7bc8: $1e $8e
    ld d, $1e                                     ; $7bca: $16 $1e
    ld b, $1e                                     ; $7bcc: $06 $1e
    ld b, $1a                                     ; $7bce: $06 $1a
    ld c, $1a                                     ; $7bd0: $0e $1a
    ld e, $1a                                     ; $7bd2: $1e $1a
    ld e, $16                                     ; $7bd4: $1e $16
    ld e, $0d                                     ; $7bd6: $1e $0d
    inc bc                                        ; $7bd8: $03
    rra                                           ; $7bd9: $1f

jr_0e3_7bda:
    sub a                                         ; $7bda: $97
    ld d, a                                       ; $7bdb: $57
    ld a, a                                       ; $7bdc: $7f
    ld d, l                                       ; $7bdd: $55
    ld a, [hl]                                    ; $7bde: $7e
    ld d, h                                       ; $7bdf: $54
    ld a, a                                       ; $7be0: $7f
    ld d, l                                       ; $7be1: $55
    ld a, [hl]                                    ; $7be2: $7e
    sub h                                         ; $7be3: $94
    rst $38                                       ; $7be4: $ff
    ld l, l                                       ; $7be5: $6d
    ld a, a                                       ; $7be6: $7f
    xor a                                         ; $7be7: $af
    rst $38                                       ; $7be8: $ff
    ld l, a                                       ; $7be9: $6f
    ld a, a                                       ; $7bea: $7f
    ld l, a                                       ; $7beb: $6f
    ld a, a                                       ; $7bec: $7f
    cpl                                           ; $7bed: $2f
    ccf                                           ; $7bee: $3f
    cpl                                           ; $7bef: $2f
    ccf                                           ; $7bf0: $3f
    cpl                                           ; $7bf1: $2f
    dec b                                         ; $7bf2: $05
    ccf                                           ; $7bf3: $3f
    ld [bc], a                                    ; $7bf4: $02
    ld a, $02                                     ; $7bf5: $3e $02
    ld c, $9e                                     ; $7bf7: $0e $9e
    ld l, d                                       ; $7bf9: $6a
    ld a, [hl]                                    ; $7bfa: $7e
    ld l, d                                       ; $7bfb: $6a
    ld a, [hl]                                    ; $7bfc: $7e
    dec l                                         ; $7bfd: $2d
    ld a, a                                       ; $7bfe: $7f
    add hl, hl                                    ; $7bff: $29
    ld a, a                                       ; $7c00: $7f
    dec a                                         ; $7c01: $3d
    ld a, a                                       ; $7c02: $7f
    inc sp                                        ; $7c03: $33
    ld a, a                                       ; $7c04: $7f
    ld l, l                                       ; $7c05: $6d
    ld a, a                                       ; $7c06: $7f
    ld a, [hl]                                    ; $7c07: $7e
    ld [hl], d                                    ; $7c08: $72
    ld l, [hl]                                    ; $7c09: $6e
    ld a, d                                       ; $7c0a: $7a
    ld h, h                                       ; $7c0b: $64
    ld a, h                                       ; $7c0c: $7c
    ld h, h                                       ; $7c0d: $64
    ld a, h                                       ; $7c0e: $7c
    ld h, h                                       ; $7c0f: $64
    ld a, h                                       ; $7c10: $7c
    ld h, [hl]                                    ; $7c11: $66
    ld a, [hl]                                    ; $7c12: $7e
    ld h, d                                       ; $7c13: $62
    ld a, [hl]                                    ; $7c14: $7e
    ld l, h                                       ; $7c15: $6c
    ld a, h                                       ; $7c16: $7c
    ld [bc], a                                    ; $7c17: $02
    db $10                                        ; $7c18: $10
    rst $38                                       ; $7c19: $ff
    dec c                                         ; $7c1a: $0d
    inc b                                         ; $7c1b: $04
    ei                                            ; $7c1c: $fb
    dec b                                         ; $7c1d: $05
    ld a, [c]                                     ; $7c1e: $f2
    ei                                            ; $7c1f: $fb
    db $e3                                        ; $7c20: $e3
    ld a, [$ffe3]                                 ; $7c21: $fa $e3 $ff
    di                                            ; $7c24: $f3
    ld sp, hl                                     ; $7c25: $f9
    di                                            ; $7c26: $f3
    nop                                           ; $7c27: $00
    ld [bc], a                                    ; $7c28: $02
    rrca                                          ; $7c29: $0f
    add a                                         ; $7c2a: $87
    jr nc, jr_0e3_7c6c                            ; $7c2b: $30 $3f

    ld h, b                                       ; $7c2d: $60
    ld a, a                                       ; $7c2e: $7f
    ld b, e                                       ; $7c2f: $43
    ld a, a                                       ; $7c30: $7f
    db $ec                                        ; $7c31: $ec
    ld [bc], a                                    ; $7c32: $02
    rst $38                                       ; $7c33: $ff
    adc e                                         ; $7c34: $8b
    ld hl, sp-$01                                 ; $7c35: $f8 $ff
    ld a, [c]                                     ; $7c37: $f2
    ld a, a                                       ; $7c38: $7f
    ld h, b                                       ; $7c39: $60
    ccf                                           ; $7c3a: $3f
    ld sp, $131f                                  ; $7c3b: $31 $1f $13
    ccf                                           ; $7c3e: $3f
    jr c, jr_0e3_7c43                             ; $7c3f: $38 $02

    ld a, a                                       ; $7c41: $7f
    add [hl]                                      ; $7c42: $86

jr_0e3_7c43:
    ld e, a                                       ; $7c43: $5f
    ld a, l                                       ; $7c44: $7d
    ld l, e                                       ; $7c45: $6b
    ld a, a                                       ; $7c46: $7f
    ld [hl], b                                    ; $7c47: $70
    ld a, a                                       ; $7c48: $7f
    ld [bc], a                                    ; $7c49: $02
    rst $38                                       ; $7c4a: $ff
    ld [bc], a                                    ; $7c4b: $02
    db $10                                        ; $7c4c: $10
    add a                                         ; $7c4d: $87
    inc c                                         ; $7c4e: $0c
    inc e                                         ; $7c4f: $1c
    ld a, [de]                                    ; $7c50: $1a
    ld e, $16                                     ; $7c51: $1e $16
    ld e, $1b                                     ; $7c53: $1e $1b
    ld [bc], a                                    ; $7c55: $02
    rra                                           ; $7c56: $1f
    add c                                         ; $7c57: $81
    rrca                                          ; $7c58: $0f
    inc bc                                        ; $7c59: $03
    ld e, $8e                                     ; $7c5a: $1e $8e
    ld d, $1e                                     ; $7c5c: $16 $1e
    ld b, $1e                                     ; $7c5e: $06 $1e
    ld b, $1a                                     ; $7c60: $06 $1a
    ld c, $1a                                     ; $7c62: $0e $1a
    ld e, $1a                                     ; $7c64: $1e $1a
    ld e, $06                                     ; $7c66: $1e $06
    ld e, $0d                                     ; $7c68: $1e $0d
    inc bc                                        ; $7c6a: $03
    rra                                           ; $7c6b: $1f

jr_0e3_7c6c:
    sub l                                         ; $7c6c: $95
    ld d, [hl]                                    ; $7c6d: $56
    ld a, a                                       ; $7c6e: $7f
    ld d, l                                       ; $7c6f: $55
    ld a, [hl]                                    ; $7c70: $7e
    ld d, h                                       ; $7c71: $54
    ld a, a                                       ; $7c72: $7f
    push de                                       ; $7c73: $d5
    cp $94                                        ; $7c74: $fe $94
    rst $38                                       ; $7c76: $ff
    push af                                       ; $7c77: $f5
    rst $38                                       ; $7c78: $ff
    or a                                          ; $7c79: $b7
    rst $38                                       ; $7c7a: $ff
    ld l, a                                       ; $7c7b: $6f
    ld a, a                                       ; $7c7c: $7f
    cpl                                           ; $7c7d: $2f
    ccf                                           ; $7c7e: $3f
    cpl                                           ; $7c7f: $2f
    ccf                                           ; $7c80: $3f
    cpl                                           ; $7c81: $2f
    inc bc                                        ; $7c82: $03
    ccf                                           ; $7c83: $3f
    add c                                         ; $7c84: $81
    ld e, [hl]                                    ; $7c85: $5e
    inc bc                                        ; $7c86: $03
    ld a, [hl]                                    ; $7c87: $7e
    ld [bc], a                                    ; $7c88: $02
    ld e, $02                                     ; $7c89: $1e $02
    nop                                           ; $7c8b: $00
    sbc h                                         ; $7c8c: $9c
    ld l, d                                       ; $7c8d: $6a
    ld a, [hl]                                    ; $7c8e: $7e
    ld l, d                                       ; $7c8f: $6a
    ld a, [hl]                                    ; $7c90: $7e
    dec hl                                        ; $7c91: $2b
    ld a, a                                       ; $7c92: $7f
    add hl, hl                                    ; $7c93: $29
    ld a, a                                       ; $7c94: $7f
    dec l                                         ; $7c95: $2d
    ld a, a                                       ; $7c96: $7f
    inc sp                                        ; $7c97: $33
    ld a, a                                       ; $7c98: $7f
    ld a, l                                       ; $7c99: $7d
    ld a, a                                       ; $7c9a: $7f
    ld a, [hl]                                    ; $7c9b: $7e
    ld a, d                                       ; $7c9c: $7a
    ld l, [hl]                                    ; $7c9d: $6e
    ld a, d                                       ; $7c9e: $7a
    ld h, h                                       ; $7c9f: $64
    ld a, h                                       ; $7ca0: $7c
    ld h, h                                       ; $7ca1: $64
    ld a, h                                       ; $7ca2: $7c
    ld h, [hl]                                    ; $7ca3: $66
    ld a, [hl]                                    ; $7ca4: $7e
    ld h, d                                       ; $7ca5: $62
    ld a, [hl]                                    ; $7ca6: $7e
    ld [hl], h                                    ; $7ca7: $74
    ld a, h                                       ; $7ca8: $7c
    ld [bc], a                                    ; $7ca9: $02
    ld [$0002], sp                                ; $7caa: $08 $02 $00
    rst $38                                       ; $7cad: $ff
    dec c                                         ; $7cae: $0d
    inc b                                         ; $7caf: $04
    ei                                            ; $7cb0: $fb
    dec b                                         ; $7cb1: $05
    ld a, [c]                                     ; $7cb2: $f2
    ei                                            ; $7cb3: $fb
    ld [c], a                                     ; $7cb4: $e2
    ld a, [$ffe2]                                 ; $7cb5: $fa $e2 $ff
    ld a, [c]                                     ; $7cb8: $f2
    ld sp, hl                                     ; $7cb9: $f9
    ld a, [c]                                     ; $7cba: $f2
    nop                                           ; $7cbb: $00
    ld [bc], a                                    ; $7cbc: $02
    rrca                                          ; $7cbd: $0f
    add a                                         ; $7cbe: $87
    jr nc, jr_0e3_7d00                            ; $7cbf: $30 $3f

    ld b, c                                       ; $7cc1: $41
    ld a, a                                       ; $7cc2: $7f
    ld b, a                                       ; $7cc3: $47
    ld a, a                                       ; $7cc4: $7f
    call $ff02                                    ; $7cc5: $cd $02 $ff
    adc e                                         ; $7cc8: $8b
    ld hl, sp-$01                                 ; $7cc9: $f8 $ff
    push af                                       ; $7ccb: $f5
    ld a, a                                       ; $7ccc: $7f
    ld h, h                                       ; $7ccd: $64
    ccf                                           ; $7cce: $3f
    ld [hl+], a                                   ; $7ccf: $22
    rra                                           ; $7cd0: $1f
    rla                                           ; $7cd1: $17
    ccf                                           ; $7cd2: $3f
    jr nc, jr_0e3_7cd8                            ; $7cd3: $30 $03

    ld a, a                                       ; $7cd5: $7f
    add a                                         ; $7cd6: $87
    ld a, h                                       ; $7cd7: $7c

jr_0e3_7cd8:
    ld e, e                                       ; $7cd8: $5b
    ld a, a                                       ; $7cd9: $7f
    db $e4                                        ; $7cda: $e4
    rst $38                                       ; $7cdb: $ff
    cp e                                          ; $7cdc: $bb
    rst $38                                       ; $7cdd: $ff
    ld [bc], a                                    ; $7cde: $02
    db $10                                        ; $7cdf: $10
    cp d                                          ; $7ce0: $ba
    inc c                                         ; $7ce1: $0c
    inc e                                         ; $7ce2: $1c
    ld [de], a                                    ; $7ce3: $12
    ld e, $0e                                     ; $7ce4: $1e $0e
    ld e, $13                                     ; $7ce6: $1e $13
    rra                                           ; $7ce8: $1f
    dec e                                         ; $7ce9: $1d
    rra                                           ; $7cea: $1f
    ld e, $0e                                     ; $7ceb: $1e $0e
    ld e, $06                                     ; $7ced: $1e $06
    ld e, $06                                     ; $7cef: $1e $06
    ld e, $0e                                     ; $7cf1: $1e $0e
    ld e, $0e                                     ; $7cf3: $1e $0e
    ld a, [de]                                    ; $7cf5: $1a
    ld e, $1a                                     ; $7cf6: $1e $1a
    ld e, $16                                     ; $7cf8: $1e $16
    ld e, $0d                                     ; $7cfa: $1e $0d
    rra                                           ; $7cfc: $1f
    dec e                                         ; $7cfd: $1d
    rra                                           ; $7cfe: $1f
    ld [hl], a                                    ; $7cff: $77

jr_0e3_7d00:
    ld a, a                                       ; $7d00: $7f
    ld d, l                                       ; $7d01: $55
    ld a, [hl]                                    ; $7d02: $7e
    ld d, h                                       ; $7d03: $54
    ld a, a                                       ; $7d04: $7f
    sub l                                         ; $7d05: $95
    cp $b4                                        ; $7d06: $fe $b4
    rst $38                                       ; $7d08: $ff
    push de                                       ; $7d09: $d5
    rst $38                                       ; $7d0a: $ff
    or a                                          ; $7d0b: $b7
    rst $38                                       ; $7d0c: $ff
    ld [hl], a                                    ; $7d0d: $77
    ld e, a                                       ; $7d0e: $5f
    ld [hl], a                                    ; $7d0f: $77
    ld a, a                                       ; $7d10: $7f
    daa                                           ; $7d11: $27
    ccf                                           ; $7d12: $3f
    daa                                           ; $7d13: $27
    ccf                                           ; $7d14: $3f
    daa                                           ; $7d15: $27
    ccf                                           ; $7d16: $3f
    ld [hl], a                                    ; $7d17: $77
    ld a, a                                       ; $7d18: $7f
    ld c, a                                       ; $7d19: $4f
    ld a, a                                       ; $7d1a: $7f
    ld [bc], a                                    ; $7d1b: $02
    ld a, $02                                     ; $7d1c: $3e $02
    inc c                                         ; $7d1e: $0c
    sbc b                                         ; $7d1f: $98
    ld l, [hl]                                    ; $7d20: $6e
    ld a, [hl]                                    ; $7d21: $7e
    ld l, d                                       ; $7d22: $6a
    ld a, [hl]                                    ; $7d23: $7e
    ld a, [hl+]                                   ; $7d24: $2a
    ld a, [hl]                                    ; $7d25: $7e
    add hl, hl                                    ; $7d26: $29
    ld a, a                                       ; $7d27: $7f
    dec l                                         ; $7d28: $2d
    ld a, a                                       ; $7d29: $7f
    dec hl                                        ; $7d2a: $2b
    ld a, a                                       ; $7d2b: $7f
    ld l, l                                       ; $7d2c: $6d
    ld a, a                                       ; $7d2d: $7f
    ld l, [hl]                                    ; $7d2e: $6e
    ld a, d                                       ; $7d2f: $7a
    ld l, [hl]                                    ; $7d30: $6e
    ld a, [hl]                                    ; $7d31: $7e
    ld h, h                                       ; $7d32: $64
    ld a, h                                       ; $7d33: $7c
    ld [hl], h                                    ; $7d34: $74
    ld a, h                                       ; $7d35: $7c
    ld [hl], h                                    ; $7d36: $74
    ld a, h                                       ; $7d37: $7c
    ld [bc], a                                    ; $7d38: $02
    ld a, [hl]                                    ; $7d39: $7e
    add d                                         ; $7d3a: $82
    ld [hl], d                                    ; $7d3b: $72
    ld a, [hl]                                    ; $7d3c: $7e
    ld [bc], a                                    ; $7d3d: $02
    ld a, h                                       ; $7d3e: $7c
    ld [bc], a                                    ; $7d3f: $02
    nop                                           ; $7d40: $00
    rst $38                                       ; $7d41: $ff
    dec c                                         ; $7d42: $0d
    inc b                                         ; $7d43: $04
    ei                                            ; $7d44: $fb
    dec b                                         ; $7d45: $05
    ld a, [c]                                     ; $7d46: $f2
    ei                                            ; $7d47: $fb
    ld [c], a                                     ; $7d48: $e2
    ld a, [$fee2]                                 ; $7d49: $fa $e2 $fe
    ld a, [c]                                     ; $7d4c: $f2
    ld a, [$fcf2]                                 ; $7d4d: $fa $f2 $fc
    ld [bc], a                                    ; $7d50: $02
    rlca                                          ; $7d51: $07
    sbc [hl]                                      ; $7d52: $9e
    jr jr_0e3_7d74                                ; $7d53: $18 $1f

    jr nc, @+$41                                  ; $7d55: $30 $3f

    ld [hl], b                                    ; $7d57: $70
    ld a, a                                       ; $7d58: $7f
    ld d, b                                       ; $7d59: $50
    ld a, a                                       ; $7d5a: $7f
    sub c                                         ; $7d5b: $91
    rst $38                                       ; $7d5c: $ff
    set 7, [hl]                                   ; $7d5d: $cb $fe
    rst $38                                       ; $7d5f: $ff
    cp $7f                                        ; $7d60: $fe $7f
    ld a, h                                       ; $7d62: $7c
    cpl                                           ; $7d63: $2f
    ld a, $2f                                     ; $7d64: $3e $2f
    ld a, $1f                                     ; $7d66: $3e $1f
    dec e                                         ; $7d68: $1d
    inc hl                                        ; $7d69: $23
    ccf                                           ; $7d6a: $3f
    ld e, h                                       ; $7d6b: $5c
    ld a, a                                       ; $7d6c: $7f
    ld [hl], a                                    ; $7d6d: $77
    ld a, a                                       ; $7d6e: $7f
    ld [hl], $3f                                  ; $7d6f: $36 $3f
    ld [bc], a                                    ; $7d71: $02
    inc c                                         ; $7d72: $0c
    add [hl]                                      ; $7d73: $86

jr_0e3_7d74:
    ld [bc], a                                    ; $7d74: $02
    ld c, $03                                     ; $7d75: $0e $03
    rrca                                          ; $7d77: $0f
    dec b                                         ; $7d78: $05
    rrca                                          ; $7d79: $0f
    inc bc                                        ; $7d7a: $03
    ld c, $8b                                     ; $7d7b: $0e $8b
    ld a, [bc]                                    ; $7d7d: $0a
    ld c, $06                                     ; $7d7e: $0e $06
    rrca                                          ; $7d80: $0f
    ld bc, $020e                                  ; $7d81: $01 $0e $02
    ld c, $02                                     ; $7d84: $0e $02
    inc c                                         ; $7d86: $0c
    inc b                                         ; $7d87: $04
    inc b                                         ; $7d88: $04
    ld [$0c02], sp                                ; $7d89: $08 $02 $0c
    add c                                         ; $7d8c: $81
    inc b                                         ; $7d8d: $04
    inc bc                                        ; $7d8e: $03
    inc c                                         ; $7d8f: $0c
    sbc [hl]                                      ; $7d90: $9e
    ld [hl-], a                                   ; $7d91: $32
    ccf                                           ; $7d92: $3f
    ld [hl], $3f                                  ; $7d93: $36 $3f
    ld [hl], $3f                                  ; $7d95: $36 $3f
    ld [hl-], a                                   ; $7d97: $32
    ccf                                           ; $7d98: $3f
    ld [hl+], a                                   ; $7d99: $22
    ccf                                           ; $7d9a: $3f
    ld l, $3f                                     ; $7d9b: $2e $3f
    ld [hl-], a                                   ; $7d9d: $32
    ccf                                           ; $7d9e: $3f
    ld a, $33                                     ; $7d9f: $3e $33
    ld l, $3f                                     ; $7da1: $2e $3f
    jr nz, jr_0e3_7de4                            ; $7da3: $20 $3f

    jr nz, jr_0e3_7de6                            ; $7da5: $20 $3f

    ld b, b                                       ; $7da7: $40
    ld a, a                                       ; $7da8: $7f
    ld c, b                                       ; $7da9: $48
    ld a, a                                       ; $7daa: $7f
    pop af                                        ; $7dab: $f1
    rst $38                                       ; $7dac: $ff
    add a                                         ; $7dad: $87
    rst $38                                       ; $7dae: $ff
    ld [bc], a                                    ; $7daf: $02
    ld a, a                                       ; $7db0: $7f
    inc b                                         ; $7db1: $04
    ld [bc], a                                    ; $7db2: $02
    ld [$1003], sp                                ; $7db3: $08 $03 $10
    ld [bc], a                                    ; $7db6: $02
    inc b                                         ; $7db7: $04
    inc bc                                        ; $7db8: $03
    rst $38                                       ; $7db9: $ff
    dec c                                         ; $7dba: $0d
    inc b                                         ; $7dbb: $04
    ei                                            ; $7dbc: $fb
    dec b                                         ; $7dbd: $05
    ld a, [c]                                     ; $7dbe: $f2
    ei                                            ; $7dbf: $fb
    ld [c], a                                     ; $7dc0: $e2
    ld a, [$fee2]                                 ; $7dc1: $fa $e2 $fe
    ld a, [c]                                     ; $7dc4: $f2
    ld a, [$fff2]                                 ; $7dc5: $fa $f2 $ff
    ld [bc], a                                    ; $7dc8: $02
    rlca                                          ; $7dc9: $07
    sbc [hl]                                      ; $7dca: $9e
    jr jr_0e3_7dec                                ; $7dcb: $18 $1f

    jr nc, jr_0e3_7e0e                            ; $7dcd: $30 $3f

    ld h, b                                       ; $7dcf: $60
    ld a, a                                       ; $7dd0: $7f
    ld h, b                                       ; $7dd1: $60
    ld a, a                                       ; $7dd2: $7f
    and c                                         ; $7dd3: $a1
    rst $38                                       ; $7dd4: $ff
    sub a                                         ; $7dd5: $97
    cp $ff                                        ; $7dd6: $fe $ff
    db $fc                                        ; $7dd8: $fc
    ld a, a                                       ; $7dd9: $7f
    ld a, h                                       ; $7dda: $7c
    ccf                                           ; $7ddb: $3f
    ld a, $2f                                     ; $7ddc: $3e $2f
    ld a, $1f                                     ; $7dde: $3e $1f
    dec e                                         ; $7de0: $1d
    inc hl                                        ; $7de1: $23
    ccf                                           ; $7de2: $3f
    ld c, [hl]                                    ; $7de3: $4e

jr_0e3_7de4:
    ld a, a                                       ; $7de4: $7f
    ld [hl], a                                    ; $7de5: $77

jr_0e3_7de6:
    ld a, a                                       ; $7de6: $7f
    ld [hl], $3f                                  ; $7de7: $36 $3f
    ld [bc], a                                    ; $7de9: $02
    inc c                                         ; $7dea: $0c
    add [hl]                                      ; $7deb: $86

jr_0e3_7dec:
    ld [bc], a                                    ; $7dec: $02
    ld c, $07                                     ; $7ded: $0e $07
    rrca                                          ; $7def: $0f
    dec c                                         ; $7df0: $0d
    rrca                                          ; $7df1: $0f
    inc bc                                        ; $7df2: $03
    ld c, $8b                                     ; $7df3: $0e $8b
    ld [bc], a                                    ; $7df5: $02
    ld c, $0a                                     ; $7df6: $0e $0a
    rrca                                          ; $7df8: $0f
    ld bc, $020e                                  ; $7df9: $01 $0e $02
    ld c, $02                                     ; $7dfc: $0e $02
    inc c                                         ; $7dfe: $0c
    inc b                                         ; $7dff: $04
    inc b                                         ; $7e00: $04
    ld [$0c02], sp                                ; $7e01: $08 $02 $0c
    add c                                         ; $7e04: $81
    inc b                                         ; $7e05: $04
    inc bc                                        ; $7e06: $03
    inc c                                         ; $7e07: $0c
    sbc [hl]                                      ; $7e08: $9e
    ld [hl-], a                                   ; $7e09: $32
    ccf                                           ; $7e0a: $3f
    ld a, $3f                                     ; $7e0b: $3e $3f
    ld [hl+], a                                   ; $7e0d: $22

jr_0e3_7e0e:
    ccf                                           ; $7e0e: $3f
    ld sp, $333f                                  ; $7e0f: $31 $3f $33
    ccf                                           ; $7e12: $3f
    dec l                                         ; $7e13: $2d
    ccf                                           ; $7e14: $3f
    dec hl                                        ; $7e15: $2b
    ld a, $27                                     ; $7e16: $3e $27
    inc a                                         ; $7e18: $3c
    inc hl                                        ; $7e19: $23
    ccf                                           ; $7e1a: $3f
    jr nz, jr_0e3_7e5c                            ; $7e1b: $20 $3f

    ld b, b                                       ; $7e1d: $40
    ld a, a                                       ; $7e1e: $7f
    ld b, b                                       ; $7e1f: $40
    ld a, a                                       ; $7e20: $7f
    ld b, d                                       ; $7e21: $42
    ld a, a                                       ; $7e22: $7f
    cp h                                          ; $7e23: $bc
    rst $38                                       ; $7e24: $ff
    ret nz                                        ; $7e25: $c0

    rst $38                                       ; $7e26: $ff
    ld [bc], a                                    ; $7e27: $02
    ccf                                           ; $7e28: $3f
    inc b                                         ; $7e29: $04
    db $10                                        ; $7e2a: $10
    ld [$0218], sp                                ; $7e2b: $08 $18 $02
    db $10                                        ; $7e2e: $10
    ld b, $18                                     ; $7e2f: $06 $18
    inc b                                         ; $7e31: $04
    inc e                                         ; $7e32: $1c
    ld [bc], a                                    ; $7e33: $02
    rra                                           ; $7e34: $1f
    ld [bc], a                                    ; $7e35: $02
    ld e, $02                                     ; $7e36: $1e $02
    db $10                                        ; $7e38: $10
    ld [bc], a                                    ; $7e39: $02
    nop                                           ; $7e3a: $00
    rst $38                                       ; $7e3b: $ff
    dec c                                         ; $7e3c: $0d
    inc b                                         ; $7e3d: $04
    ei                                            ; $7e3e: $fb
    dec b                                         ; $7e3f: $05
    ld a, [c]                                     ; $7e40: $f2
    ei                                            ; $7e41: $fb
    db $e3                                        ; $7e42: $e3
    ld a, [$fee3]                                 ; $7e43: $fa $e3 $fe
    di                                            ; $7e46: $f3
    ld a, [$fef3]                                 ; $7e47: $fa $f3 $fe
    ld [bc], a                                    ; $7e4a: $02
    rlca                                          ; $7e4b: $07
    sbc [hl]                                      ; $7e4c: $9e
    jr jr_0e3_7e6e                                ; $7e4d: $18 $1f

    jr nc, @+$41                                  ; $7e4f: $30 $3f

    ld h, b                                       ; $7e51: $60
    ld a, a                                       ; $7e52: $7f
    ld h, b                                       ; $7e53: $60
    ld a, a                                       ; $7e54: $7f
    and c                                         ; $7e55: $a1
    rst $38                                       ; $7e56: $ff
    sub a                                         ; $7e57: $97
    cp $ff                                        ; $7e58: $fe $ff
    db $fc                                        ; $7e5a: $fc
    ld a, a                                       ; $7e5b: $7f

jr_0e3_7e5c:
    ld a, h                                       ; $7e5c: $7c
    ccf                                           ; $7e5d: $3f
    ld a, $2f                                     ; $7e5e: $3e $2f
    ld a, $1f                                     ; $7e60: $3e $1f
    dec e                                         ; $7e62: $1d
    inc hl                                        ; $7e63: $23
    ccf                                           ; $7e64: $3f
    ld e, h                                       ; $7e65: $5c
    ld a, a                                       ; $7e66: $7f
    ld [hl], a                                    ; $7e67: $77
    ld a, a                                       ; $7e68: $7f
    ld [hl-], a                                   ; $7e69: $32
    ccf                                           ; $7e6a: $3f
    ld [bc], a                                    ; $7e6b: $02
    inc c                                         ; $7e6c: $0c
    add [hl]                                      ; $7e6d: $86

jr_0e3_7e6e:
    ld [bc], a                                    ; $7e6e: $02
    ld c, $07                                     ; $7e6f: $0e $07
    rrca                                          ; $7e71: $0f
    dec c                                         ; $7e72: $0d
    rrca                                          ; $7e73: $0f
    inc bc                                        ; $7e74: $03
    ld c, $8b                                     ; $7e75: $0e $8b
    ld [bc], a                                    ; $7e77: $02
    ld c, $0a                                     ; $7e78: $0e $0a
    rrca                                          ; $7e7a: $0f
    ld bc, $020e                                  ; $7e7b: $01 $0e $02
    ld c, $02                                     ; $7e7e: $0e $02
    inc c                                         ; $7e80: $0c
    inc b                                         ; $7e81: $04
    inc b                                         ; $7e82: $04
    ld [$0483], sp                                ; $7e83: $08 $83 $04
    inc c                                         ; $7e86: $0c
    inc b                                         ; $7e87: $04
    inc bc                                        ; $7e88: $03
    inc c                                         ; $7e89: $0c
    sbc h                                         ; $7e8a: $9c
    ld [hl], $3f                                  ; $7e8b: $36 $3f
    ld [hl], $3f                                  ; $7e8d: $36 $3f
    ld [hl], $3f                                  ; $7e8f: $36 $3f
    inc hl                                        ; $7e91: $23
    ccf                                           ; $7e92: $3f
    inc hl                                        ; $7e93: $23
    ccf                                           ; $7e94: $3f
    dec [hl]                                      ; $7e95: $35
    ccf                                           ; $7e96: $3f
    dec hl                                        ; $7e97: $2b
    dec a                                         ; $7e98: $3d
    cpl                                           ; $7e99: $2f
    add hl, sp                                    ; $7e9a: $39
    ld h, a                                       ; $7e9b: $67
    ld a, a                                       ; $7e9c: $7f
    ld b, b                                       ; $7e9d: $40
    ld a, a                                       ; $7e9e: $7f
    ld b, b                                       ; $7e9f: $40
    ld a, a                                       ; $7ea0: $7f
    ret nz                                        ; $7ea1: $c0

    rst $38                                       ; $7ea2: $ff
    or h                                          ; $7ea3: $b4
    rst $38                                       ; $7ea4: $ff
    ld b, c                                       ; $7ea5: $41
    ld a, a                                       ; $7ea6: $7f
    ld [bc], a                                    ; $7ea7: $02
    ccf                                           ; $7ea8: $3f
    ld [bc], a                                    ; $7ea9: $02
    nop                                           ; $7eaa: $00
    inc b                                         ; $7eab: $04
    ld [$0c08], sp                                ; $7eac: $08 $08 $0c
    inc b                                         ; $7eaf: $04
    ld [$0c08], sp                                ; $7eb0: $08 $08 $0c
    inc b                                         ; $7eb3: $04
    rrca                                          ; $7eb4: $0f
    inc b                                         ; $7eb5: $04
    nop                                           ; $7eb6: $00
    rst $38                                       ; $7eb7: $ff
    dec c                                         ; $7eb8: $0d
    inc b                                         ; $7eb9: $04
    ei                                            ; $7eba: $fb
    dec b                                         ; $7ebb: $05
    ld a, [c]                                     ; $7ebc: $f2
    ei                                            ; $7ebd: $fb
    ld [c], a                                     ; $7ebe: $e2
    ld a, [$fee2]                                 ; $7ebf: $fa $e2 $fe
    ld a, [c]                                     ; $7ec2: $f2
    ld a, [$fcf2]                                 ; $7ec3: $fa $f2 $fc
    ld [bc], a                                    ; $7ec6: $02
    rlca                                          ; $7ec7: $07
    sbc [hl]                                      ; $7ec8: $9e
    jr jr_0e3_7eea                                ; $7ec9: $18 $1f

    jr nc, jr_0e3_7f0c                            ; $7ecb: $30 $3f

    ld [hl], b                                    ; $7ecd: $70
    ld a, a                                       ; $7ece: $7f
    ld d, b                                       ; $7ecf: $50
    ld a, a                                       ; $7ed0: $7f
    sub c                                         ; $7ed1: $91
    rst $38                                       ; $7ed2: $ff
    set 7, [hl]                                   ; $7ed3: $cb $fe
    rst $38                                       ; $7ed5: $ff
    cp $7f                                        ; $7ed6: $fe $7f
    ld a, h                                       ; $7ed8: $7c
    cpl                                           ; $7ed9: $2f
    ld a, $2f                                     ; $7eda: $3e $2f
    ld a, $1f                                     ; $7edc: $3e $1f
    dec e                                         ; $7ede: $1d
    inc hl                                        ; $7edf: $23
    ccf                                           ; $7ee0: $3f
    ld e, h                                       ; $7ee1: $5c
    ld a, a                                       ; $7ee2: $7f
    ld [hl], a                                    ; $7ee3: $77
    ld a, a                                       ; $7ee4: $7f
    ld [hl], $3f                                  ; $7ee5: $36 $3f
    ld [bc], a                                    ; $7ee7: $02
    inc c                                         ; $7ee8: $0c
    add [hl]                                      ; $7ee9: $86

jr_0e3_7eea:
    ld [bc], a                                    ; $7eea: $02
    ld c, $03                                     ; $7eeb: $0e $03
    rrca                                          ; $7eed: $0f
    dec b                                         ; $7eee: $05
    rrca                                          ; $7eef: $0f
    inc bc                                        ; $7ef0: $03
    ld c, $8b                                     ; $7ef1: $0e $8b
    ld a, [bc]                                    ; $7ef3: $0a
    ld c, $06                                     ; $7ef4: $0e $06
    rrca                                          ; $7ef6: $0f
    ld bc, $020e                                  ; $7ef7: $01 $0e $02
    ld c, $02                                     ; $7efa: $0e $02
    inc c                                         ; $7efc: $0c
    inc b                                         ; $7efd: $04
    ld b, $08                                     ; $7efe: $06 $08
    add c                                         ; $7f00: $81
    inc b                                         ; $7f01: $04
    inc bc                                        ; $7f02: $03
    inc c                                         ; $7f03: $0c
    sbc [hl]                                      ; $7f04: $9e
    ld [hl], $3f                                  ; $7f05: $36 $3f
    inc [hl]                                      ; $7f07: $34
    ccf                                           ; $7f08: $3f
    inc l                                         ; $7f09: $2c
    ccf                                           ; $7f0a: $3f
    inc h                                         ; $7f0b: $24

jr_0e3_7f0c:
    ccf                                           ; $7f0c: $3f
    ld b, h                                       ; $7f0d: $44
    ld a, a                                       ; $7f0e: $7f
    ld e, h                                       ; $7f0f: $5c
    ld a, a                                       ; $7f10: $7f
    inc h                                         ; $7f11: $24
    ccf                                           ; $7f12: $3f
    inc a                                         ; $7f13: $3c
    daa                                           ; $7f14: $27
    jr c, @+$41                                   ; $7f15: $38 $3f

    jr nz, @+$41                                  ; $7f17: $20 $3f

    ld h, b                                       ; $7f19: $60
    ld a, a                                       ; $7f1a: $7f
    ld b, c                                       ; $7f1b: $41
    ld a, a                                       ; $7f1c: $7f
    ld b, c                                       ; $7f1d: $41
    ld a, a                                       ; $7f1e: $7f
    or c                                          ; $7f1f: $b1
    rst $38                                       ; $7f20: $ff
    jp Jump_000_02ff                              ; $7f21: $c3 $ff $02


    ccf                                           ; $7f24: $3f
    ld [bc], a                                    ; $7f25: $02
    inc bc                                        ; $7f26: $03
    ld [bc], a                                    ; $7f27: $02
    ld [bc], a                                    ; $7f28: $02
    ld [$0203], sp                                ; $7f29: $08 $03 $02
    ld [bc], a                                    ; $7f2c: $02
    db $10                                        ; $7f2d: $10
    inc bc                                        ; $7f2e: $03
    ld [bc], a                                    ; $7f2f: $02
    nop                                           ; $7f30: $00
    rst $38                                       ; $7f31: $ff
    dec c                                         ; $7f32: $0d
    inc b                                         ; $7f33: $04
    ei                                            ; $7f34: $fb
    dec b                                         ; $7f35: $05
    ld a, [c]                                     ; $7f36: $f2
    ei                                            ; $7f37: $fb
    ld [c], a                                     ; $7f38: $e2
    ld a, [$fee2]                                 ; $7f39: $fa $e2 $fe
    ld a, [c]                                     ; $7f3c: $f2
    ld a, [$fff2]                                 ; $7f3d: $fa $f2 $ff
    ld [bc], a                                    ; $7f40: $02
    rlca                                          ; $7f41: $07
    adc e                                         ; $7f42: $8b
    inc e                                         ; $7f43: $1c
    rra                                           ; $7f44: $1f
    jr z, jr_0e3_7f86                             ; $7f45: $28 $3f

    ld [hl], b                                    ; $7f47: $70
    ld a, a                                       ; $7f48: $7f
    ld d, b                                       ; $7f49: $50
    ld a, a                                       ; $7f4a: $7f
    adc c                                         ; $7f4b: $89
    rst $38                                       ; $7f4c: $ff
    rst $28                                       ; $7f4d: $ef
    ld [bc], a                                    ; $7f4e: $02
    rst $38                                       ; $7f4f: $ff
    sub c                                         ; $7f50: $91
    cp $7f                                        ; $7f51: $fe $7f
    ld a, h                                       ; $7f53: $7c
    cpl                                           ; $7f54: $2f
    ld a, $2f                                     ; $7f55: $3e $2f
    ld a, $1f                                     ; $7f57: $3e $1f
    dec e                                         ; $7f59: $1d
    daa                                           ; $7f5a: $27
    ccf                                           ; $7f5b: $3f
    ld e, b                                       ; $7f5c: $58
    ld a, a                                       ; $7f5d: $7f
    ld [hl], a                                    ; $7f5e: $77
    ld a, a                                       ; $7f5f: $7f
    ld [hl], $3f                                  ; $7f60: $36 $3f
    ld [bc], a                                    ; $7f62: $02
    inc c                                         ; $7f63: $0c
    add a                                         ; $7f64: $87
    ld [bc], a                                    ; $7f65: $02
    ld c, $01                                     ; $7f66: $0e $01
    rrca                                          ; $7f68: $0f
    inc bc                                        ; $7f69: $03
    rrca                                          ; $7f6a: $0f
    ld b, $02                                     ; $7f6b: $06 $02
    ld c, $8b                                     ; $7f6d: $0e $8b
    ld a, [bc]                                    ; $7f6f: $0a
    ld c, $06                                     ; $7f70: $0e $06
    rrca                                          ; $7f72: $0f
    ld bc, $020e                                  ; $7f73: $01 $0e $02
    ld c, $02                                     ; $7f76: $0e $02
    inc c                                         ; $7f78: $0c
    inc b                                         ; $7f79: $04
    inc b                                         ; $7f7a: $04
    ld [$0c02], sp                                ; $7f7b: $08 $02 $0c
    add c                                         ; $7f7e: $81
    inc b                                         ; $7f7f: $04
    inc bc                                        ; $7f80: $03
    inc c                                         ; $7f81: $0c
    sbc [hl]                                      ; $7f82: $9e
    inc h                                         ; $7f83: $24
    ccf                                           ; $7f84: $3f
    inc l                                         ; $7f85: $2c

jr_0e3_7f86:
    ccf                                           ; $7f86: $3f
    ld h, h                                       ; $7f87: $64
    ld a, a                                       ; $7f88: $7f
    ld c, b                                       ; $7f89: $48
    ld a, a                                       ; $7f8a: $7f
    ld c, b                                       ; $7f8b: $48
    ld a, a                                       ; $7f8c: $7f
    ld a, b                                       ; $7f8d: $78
    ld a, a                                       ; $7f8e: $7f
    ld c, b                                       ; $7f8f: $48
    ld a, a                                       ; $7f90: $7f
    ld a, b                                       ; $7f91: $78
    ld c, a                                       ; $7f92: $4f
    jr nc, jr_0e3_7fd4                            ; $7f93: $30 $3f

    ld hl, $213f                                  ; $7f95: $21 $3f $21
    ccf                                           ; $7f98: $3f
    ld hl, $413f                                  ; $7f99: $21 $3f $41
    ld a, a                                       ; $7f9c: $7f
    ld a, e                                       ; $7f9d: $7b
    ld a, a                                       ; $7f9e: $7f
    add e                                         ; $7f9f: $83
    rst $38                                       ; $7fa0: $ff
    ld [bc], a                                    ; $7fa1: $02
    ld a, h                                       ; $7fa2: $7c
    inc b                                         ; $7fa3: $04
    db $10                                        ; $7fa4: $10
    ld a, [bc]                                    ; $7fa5: $0a
    jr @+$04                                      ; $7fa6: $18 $02

    db $10                                        ; $7fa8: $10
    ld b, $18                                     ; $7fa9: $06 $18
    inc b                                         ; $7fab: $04
    inc e                                         ; $7fac: $1c
    ld [bc], a                                    ; $7fad: $02
    rra                                           ; $7fae: $1f
    ld [bc], a                                    ; $7faf: $02
    ld e, $02                                     ; $7fb0: $1e $02
    nop                                           ; $7fb2: $00
    rst $38                                       ; $7fb3: $ff
    add hl, bc                                    ; $7fb4: $09
    ld [bc], a                                    ; $7fb5: $02
    ld sp, hl                                     ; $7fb6: $f9
    ld [$01f2], sp                                ; $7fb7: $08 $f2 $01
    rst $20                                       ; $7fba: $e7
    ei                                            ; $7fbb: $fb
    rst $20                                       ; $7fbc: $e7
    cp $96                                        ; $7fbd: $fe $96
    nop                                           ; $7fbf: $00
    jr nz, jr_0e3_7fe5                            ; $7fc0: $20 $23

    ld e, b                                       ; $7fc2: $58
    scf                                           ; $7fc3: $37
    ret z                                         ; $7fc4: $c8

    ld l, e                                       ; $7fc5: $6b
    inc d                                         ; $7fc6: $14
    ccf                                           ; $7fc7: $3f
    ld b, b                                       ; $7fc8: $40
    rra                                           ; $7fc9: $1f
    jr nz, @+$38                                  ; $7fca: $20 $36

    ld c, c                                       ; $7fcc: $49
    dec de                                        ; $7fcd: $1b
    inc h                                         ; $7fce: $24
    ld a, [bc]                                    ; $7fcf: $0a
    dec [hl]                                      ; $7fd0: $35
    inc b                                         ; $7fd1: $04
    dec bc                                        ; $7fd2: $0b
    nop                                           ; $7fd3: $00

jr_0e3_7fd4:
    dec d                                         ; $7fd4: $15
    dec bc                                        ; $7fd5: $0b
    nop                                           ; $7fd6: $00
    ld [bc], a                                    ; $7fd7: $02
    inc b                                         ; $7fd8: $04
    adc a                                         ; $7fd9: $8f
    ld [bc], a                                    ; $7fda: $02
    inc b                                         ; $7fdb: $04
    inc bc                                        ; $7fdc: $03
    ld b, $00                                     ; $7fdd: $06 $00
    inc b                                         ; $7fdf: $04
    ld [bc], a                                    ; $7fe0: $02
    inc b                                         ; $7fe1: $04
    nop                                           ; $7fe2: $00
    inc b                                         ; $7fe3: $04
    ld [bc], a                                    ; $7fe4: $02

jr_0e3_7fe5:
    nop                                           ; $7fe5: $00
    inc b                                         ; $7fe6: $04
    nop                                           ; $7fe7: $00
    inc b                                         ; $7fe8: $04
    ld c, $00                                     ; $7fe9: $0e $00
    rst $38                                       ; $7feb: $ff
    rlca                                          ; $7fec: $07
    ld bc, $07f8                                  ; $7fed: $01 $f8 $07
    ld a, [c]                                     ; $7ff0: $f2
    ld bc, $faf1                                  ; $7ff1: $01 $f1 $fa
    add d                                         ; $7ff4: $82
    nop                                           ; $7ff5: $00
    rrca                                          ; $7ff6: $0f
    ld e, $00                                     ; $7ff7: $1e $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Call_0e3_7fff:
    rst $38                                       ; $7fff: $ff
