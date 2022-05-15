; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ef", ROMX[$4000], BANK[$ef]

    rst $28                                       ; $4000: $ef
    dec bc                                        ; $4001: $0b
    inc bc                                        ; $4002: $03
    ld hl, sp+$10                                 ; $4003: $f8 $10
    rst $28                                       ; $4005: $ef
    ld bc, $fbef                                  ; $4006: $01 $ef $fb
    pop af                                        ; $4009: $f1
    rst $38                                       ; $400a: $ff
    rst $38                                       ; $400b: $ff
    ei                                            ; $400c: $fb
    ld [bc], a                                    ; $400d: $02
    inc c                                         ; $400e: $0c
    sbc [hl]                                      ; $400f: $9e
    rla                                           ; $4010: $17
    dec de                                        ; $4011: $1b
    cpl                                           ; $4012: $2f
    jr nc, jr_0ef_4070                            ; $4013: $30 $5b

    ld h, h                                       ; $4015: $64
    ld l, e                                       ; $4016: $6b
    ld [hl], a                                    ; $4017: $77
    ld d, h                                       ; $4018: $54
    ld a, e                                       ; $4019: $7b
    dec a                                         ; $401a: $3d
    inc hl                                        ; $401b: $23
    dec hl                                        ; $401c: $2b
    ld [hl], $1f                                  ; $401d: $36 $1f
    db $10                                        ; $401f: $10
    inc de                                        ; $4020: $13
    inc e                                         ; $4021: $1c
    dec [hl]                                      ; $4022: $35
    cpl                                           ; $4023: $2f
    ld l, e                                       ; $4024: $6b
    ld d, a                                       ; $4025: $57
    ld a, [hl]                                    ; $4026: $7e
    ld d, d                                       ; $4027: $52
    ld a, d                                       ; $4028: $7a
    ld d, [hl]                                    ; $4029: $56
    cp e                                          ; $402a: $bb
    rst $18                                       ; $402b: $df
    ld l, d                                       ; $402c: $6a
    ld a, l                                       ; $402d: $7d
    ld [bc], a                                    ; $402e: $02
    ld [$0c02], sp                                ; $402f: $08 $02 $0c
    add [hl]                                      ; $4032: $86
    ld a, [bc]                                    ; $4033: $0a
    ld c, $0d                                     ; $4034: $0e $0d
    inc bc                                        ; $4036: $03
    ld b, $0e                                     ; $4037: $06 $0e
    ld [bc], a                                    ; $4039: $02
    inc c                                         ; $403a: $0c
    add h                                         ; $403b: $84
    ld a, [bc]                                    ; $403c: $0a
    ld b, $04                                     ; $403d: $06 $04
    inc c                                         ; $403f: $0c
    ld [bc], a                                    ; $4040: $02
    ld [$0008], sp                                ; $4041: $08 $08 $00
    ld [bc], a                                    ; $4044: $02
    ld [$fc82], sp                                ; $4045: $08 $82 $fc
    call nc, $a802                                ; $4048: $d4 $02 $a8
    add h                                         ; $404b: $84
    ld h, b                                       ; $404c: $60
    ld d, b                                       ; $404d: $50
    ldh a, [$a0]                                  ; $404e: $f0 $a0
    ld [bc], a                                    ; $4050: $02
    ld d, b                                       ; $4051: $50
    ld a, [de]                                    ; $4052: $1a
    nop                                           ; $4053: $00
    rst $38                                       ; $4054: $ff
    dec c                                         ; $4055: $0d
    inc b                                         ; $4056: $04
    ld hl, sp+$10                                 ; $4057: $f8 $10
    rst $28                                       ; $4059: $ef
    ld bc, $faee                                  ; $405a: $01 $ee $fa
    ldh a, [$fe]                                  ; $405d: $f0 $fe
    cp $fa                                        ; $405f: $fe $fa
    cp $fc                                        ; $4061: $fe $fc
    ld [bc], a                                    ; $4063: $02
    inc c                                         ; $4064: $0c
    sbc [hl]                                      ; $4065: $9e
    rla                                           ; $4066: $17
    dec de                                        ; $4067: $1b
    cpl                                           ; $4068: $2f
    jr nc, jr_0ef_40c6                            ; $4069: $30 $5b

    ld h, h                                       ; $406b: $64
    ld l, e                                       ; $406c: $6b
    ld [hl], a                                    ; $406d: $77
    ld d, h                                       ; $406e: $54
    ld a, e                                       ; $406f: $7b

jr_0ef_4070:
    dec a                                         ; $4070: $3d
    inc hl                                        ; $4071: $23
    dec hl                                        ; $4072: $2b
    ld [hl], $1f                                  ; $4073: $36 $1f
    db $10                                        ; $4075: $10
    inc de                                        ; $4076: $13
    inc e                                         ; $4077: $1c
    dec [hl]                                      ; $4078: $35
    cpl                                           ; $4079: $2f
    ld d, a                                       ; $407a: $57
    ld l, a                                       ; $407b: $6f
    ld l, l                                       ; $407c: $6d
    ld e, e                                       ; $407d: $5b
    ld [hl], a                                    ; $407e: $77
    ld e, c                                       ; $407f: $59
    or l                                          ; $4080: $b5
    db $db                                        ; $4081: $db
    ld l, l                                       ; $4082: $6d
    ld e, a                                       ; $4083: $5f
    ld [bc], a                                    ; $4084: $02
    ld [$0c02], sp                                ; $4085: $08 $02 $0c
    add [hl]                                      ; $4088: $86
    ld a, [bc]                                    ; $4089: $0a
    ld c, $0d                                     ; $408a: $0e $0d
    inc bc                                        ; $408c: $03
    ld b, $0e                                     ; $408d: $06 $0e
    ld [bc], a                                    ; $408f: $02
    inc c                                         ; $4090: $0c
    add h                                         ; $4091: $84
    ld a, [bc]                                    ; $4092: $0a
    ld b, $04                                     ; $4093: $06 $04
    inc c                                         ; $4095: $0c
    ld [bc], a                                    ; $4096: $02
    ld [$0008], sp                                ; $4097: $08 $08 $00
    ld [bc], a                                    ; $409a: $02
    ld [$5484], sp                                ; $409b: $08 $84 $54
    db $ec                                        ; $409e: $ec
    ld a, [hl]                                    ; $409f: $7e
    ld [$3003], a                                 ; $40a0: $ea $03 $30
    add e                                         ; $40a3: $83
    jr nz, @+$7f                                  ; $40a4: $20 $7d

    ld d, l                                       ; $40a6: $55
    ld [bc], a                                    ; $40a7: $02
    jr z, jr_0ef_40c6                             ; $40a8: $28 $1c

    nop                                           ; $40aa: $00
    ld [bc], a                                    ; $40ab: $02
    ld bc, $001a                                  ; $40ac: $01 $1a $00
    rst $38                                       ; $40af: $ff
    dec c                                         ; $40b0: $0d
    inc b                                         ; $40b1: $04
    ld hl, sp+$10                                 ; $40b2: $f8 $10
    rst $28                                       ; $40b4: $ef
    ld bc, $faee                                  ; $40b5: $01 $ee $fa
    rst $28                                       ; $40b8: $ef
    rst $38                                       ; $40b9: $ff
    cp $fb                                        ; $40ba: $fe $fb
    cp $fd                                        ; $40bc: $fe $fd
    ld [bc], a                                    ; $40be: $02
    ld b, $9e                                     ; $40bf: $06 $9e
    dec bc                                        ; $40c1: $0b
    dec c                                         ; $40c2: $0d
    rla                                           ; $40c3: $17
    jr jr_0ef_40f3                                ; $40c4: $18 $2d

jr_0ef_40c6:
    ld [hl-], a                                   ; $40c6: $32
    dec [hl]                                      ; $40c7: $35
    dec sp                                        ; $40c8: $3b
    ld a, [hl+]                                   ; $40c9: $2a
    dec a                                         ; $40ca: $3d
    ld e, $11                                     ; $40cb: $1e $11
    dec d                                         ; $40cd: $15
    dec de                                        ; $40ce: $1b
    rrca                                          ; $40cf: $0f
    ld [$0e0d], sp                                ; $40d0: $08 $0d $0e
    ld [de], a                                    ; $40d3: $12
    rra                                           ; $40d4: $1f
    dec sp                                        ; $40d5: $3b
    daa                                           ; $40d6: $27
    ld d, c                                       ; $40d7: $51
    ld l, a                                       ; $40d8: $6f
    ld l, l                                       ; $40d9: $6d
    ld e, e                                       ; $40da: $5b
    halt                                          ; $40db: $76
    ld e, c                                       ; $40dc: $59
    or [hl]                                       ; $40dd: $b6
    reti                                          ; $40de: $d9


    ld [bc], a                                    ; $40df: $02
    db $10                                        ; $40e0: $10
    sub b                                         ; $40e1: $90
    jr jr_0ef_40ec                                ; $40e2: $18 $08

    inc e                                         ; $40e4: $1c
    inc c                                         ; $40e5: $0c
    ld a, [de]                                    ; $40e6: $1a
    ld e, $0d                                     ; $40e7: $1e $0d
    inc de                                        ; $40e9: $13
    ld d, $1e                                     ; $40ea: $16 $1e

jr_0ef_40ec:
    inc e                                         ; $40ec: $1c
    inc c                                         ; $40ed: $0c
    ld a, [de]                                    ; $40ee: $1a
    ld b, $14                                     ; $40ef: $06 $14
    inc c                                         ; $40f1: $0c
    ld [bc], a                                    ; $40f2: $02

jr_0ef_40f3:
    jr jr_0ef_40f7                                ; $40f3: $18 $02

    nop                                           ; $40f5: $00
    ld [bc], a                                    ; $40f6: $02

jr_0ef_40f7:
    db $10                                        ; $40f7: $10
    add d                                         ; $40f8: $82
    ld [$0418], sp                                ; $40f9: $08 $18 $04
    db $10                                        ; $40fc: $10
    adc b                                         ; $40fd: $88
    xor b                                         ; $40fe: $a8
    ld hl, sp-$30                                 ; $40ff: $f8 $d0
    or b                                          ; $4101: $b0
    ld l, a                                       ; $4102: $6f
    ld a, l                                       ; $4103: $7d
    ld a, [$02aa]                                 ; $4104: $fa $aa $02
    ld d, b                                       ; $4107: $50
    ld a, [de]                                    ; $4108: $1a
    nop                                           ; $4109: $00
    add d                                         ; $410a: $82
    inc bc                                        ; $410b: $03
    ld bc, $0202                                  ; $410c: $01 $02 $02
    ld a, [de]                                    ; $410f: $1a
    nop                                           ; $4110: $00
    rst $38                                       ; $4111: $ff
    dec c                                         ; $4112: $0d
    inc b                                         ; $4113: $04
    ld hl, sp+$10                                 ; $4114: $f8 $10
    rst $28                                       ; $4116: $ef
    ld bc, $f9ee                                  ; $4117: $01 $ee $f9
    xor $00                                       ; $411a: $ee $00
    cp $fb                                        ; $411c: $fe $fb
    cp $fd                                        ; $411e: $fe $fd
    ld [bc], a                                    ; $4120: $02
    ld bc, $029e                                  ; $4121: $01 $9e $02
    inc bc                                        ; $4124: $03
    dec b                                         ; $4125: $05
    ld b, $0b                                     ; $4126: $06 $0b
    inc c                                         ; $4128: $0c
    dec c                                         ; $4129: $0d
    ld c, $0a                                     ; $412a: $0e $0a
    rrca                                          ; $412c: $0f
    rlca                                          ; $412d: $07
    inc b                                         ; $412e: $04
    dec b                                         ; $412f: $05
    ld b, $07                                     ; $4130: $06 $07
    ld b, $0d                                     ; $4132: $06 $0d
    rrca                                          ; $4134: $0f
    dec e                                         ; $4135: $1d
    inc de                                        ; $4136: $13
    ld [hl-], a                                   ; $4137: $32
    cpl                                           ; $4138: $2f
    ld a, [hl-]                                   ; $4139: $3a
    dec l                                         ; $413a: $2d
    ld [hl], a                                    ; $413b: $77
    ld e, b                                       ; $413c: $58
    cp e                                          ; $413d: $bb
    call c, $6f6e                                 ; $413e: $dc $6e $6f
    ld [bc], a                                    ; $4141: $02
    ld b, b                                       ; $4142: $40
    sub h                                         ; $4143: $94
    ld [hl], b                                    ; $4144: $70
    jr nc, jr_0ef_41bf                            ; $4145: $30 $78

    ld [$4c3c], sp                                ; $4147: $08 $3c $4c
    ld a, [hl-]                                   ; $414a: $3a

jr_0ef_414b:
    ld a, [hl]                                    ; $414b: $7e
    ld c, l                                       ; $414c: $4d
    inc sp                                        ; $414d: $33
    ld d, [hl]                                    ; $414e: $56
    ld a, $3c                                     ; $414f: $3e $3c
    ld l, h                                       ; $4151: $6c
    ld a, d                                       ; $4152: $7a
    ld b, $34                                     ; $4153: $06 $34
    ld c, h                                       ; $4155: $4c
    ld e, b                                       ; $4156: $58
    ld a, b                                       ; $4157: $78
    ld [bc], a                                    ; $4158: $02
    ld b, b                                       ; $4159: $40
    add c                                         ; $415a: $81
    jr nz, jr_0ef_415f                            ; $415b: $20 $02

    ld h, b                                       ; $415d: $60
    ld [bc], a                                    ; $415e: $02

jr_0ef_415f:
    jr nz, jr_0ef_4164                            ; $415f: $20 $03

    ld h, b                                       ; $4161: $60
    add [hl]                                      ; $4162: $86
    ld l, d                                       ; $4163: $6a

jr_0ef_4164:
    ld a, l                                       ; $4164: $7d
    ld l, a                                       ; $4165: $6f
    ld e, l                                       ; $4166: $5d
    ld a, [$02aa]                                 ; $4167: $fa $aa $02
    ld d, b                                       ; $416a: $50
    jr jr_0ef_416d                                ; $416b: $18 $00

jr_0ef_416d:
    ld [bc], a                                    ; $416d: $02
    ld [bc], a                                    ; $416e: $02
    add d                                         ; $416f: $82
    inc bc                                        ; $4170: $03
    ld bc, $0202                                  ; $4171: $01 $02 $02
    ld a, [de]                                    ; $4174: $1a
    nop                                           ; $4175: $00
    rst $38                                       ; $4176: $ff
    dec c                                         ; $4177: $0d
    inc b                                         ; $4178: $04
    ld hl, sp+$10                                 ; $4179: $f8 $10
    rst $28                                       ; $417b: $ef
    ld bc, $f9f0                                  ; $417c: $01 $f0 $f9
    ldh a, [rP1]                                  ; $417f: $f0 $00
    nop                                           ; $4181: $00
    ld a, [$fc00]                                 ; $4182: $fa $00 $fc
    ld [bc], a                                    ; $4185: $02
    ld bc, $029e                                  ; $4186: $01 $9e $02
    inc bc                                        ; $4189: $03
    dec b                                         ; $418a: $05
    ld b, $0b                                     ; $418b: $06 $0b
    inc c                                         ; $418d: $0c
    dec c                                         ; $418e: $0d
    ld c, $0a                                     ; $418f: $0e $0a
    rrca                                          ; $4191: $0f
    rlca                                          ; $4192: $07
    inc b                                         ; $4193: $04
    dec b                                         ; $4194: $05
    ld b, $0f                                     ; $4195: $06 $0f
    ld c, $1b                                     ; $4197: $0e $1b
    rla                                           ; $4199: $17
    dec [hl]                                      ; $419a: $35
    cpl                                           ; $419b: $2f
    ld a, [hl-]                                   ; $419c: $3a
    dec l                                         ; $419d: $2d
    ld a, a                                       ; $419e: $7f
    ld e, b                                       ; $419f: $58
    cp e                                          ; $41a0: $bb
    call c, $6f6e                                 ; $41a1: $dc $6e $6f
    inc de                                        ; $41a4: $13
    rra                                           ; $41a5: $1f
    ld [bc], a                                    ; $41a6: $02
    ld b, b                                       ; $41a7: $40
    sub h                                         ; $41a8: $94
    ld [hl], b                                    ; $41a9: $70
    jr nc, jr_0ef_4224                            ; $41aa: $30 $78

    ld [$4c3c], sp                                ; $41ac: $08 $3c $4c
    ld a, [hl-]                                   ; $41af: $3a
    ld a, [hl]                                    ; $41b0: $7e
    ld c, l                                       ; $41b1: $4d
    inc sp                                        ; $41b2: $33
    ld d, [hl]                                    ; $41b3: $56
    ld a, $3c                                     ; $41b4: $3e $3c
    ld l, h                                       ; $41b6: $6c
    ld a, d                                       ; $41b7: $7a
    ld b, $34                                     ; $41b8: $06 $34
    ld c, h                                       ; $41ba: $4c
    ld e, b                                       ; $41bb: $58
    ld a, b                                       ; $41bc: $78
    ld [bc], a                                    ; $41bd: $02
    ld b, b                                       ; $41be: $40

jr_0ef_41bf:
    add c                                         ; $41bf: $81
    ld h, b                                       ; $41c0: $60
    ld [bc], a                                    ; $41c1: $02
    jr nz, jr_0ef_414b                            ; $41c2: $20 $87

    ld h, b                                       ; $41c4: $60
    ld d, b                                       ; $41c5: $50
    ld [hl], b                                    ; $41c6: $70
    ld a, b                                       ; $41c7: $78
    jr z, jr_0ef_4247                             ; $41c8: $28 $7d

    ld d, l                                       ; $41ca: $55
    ld [bc], a                                    ; $41cb: $02
    jr z, jr_0ef_41ea                             ; $41cc: $28 $1c

    nop                                           ; $41ce: $00
    ld [bc], a                                    ; $41cf: $02
    ld bc, $001e                                  ; $41d0: $01 $1e $00
    rst $38                                       ; $41d3: $ff
    dec bc                                        ; $41d4: $0b
    inc bc                                        ; $41d5: $03
    ld hl, sp+$10                                 ; $41d6: $f8 $10
    rst $28                                       ; $41d8: $ef
    ld bc, $faf0                                  ; $41d9: $01 $f0 $fa
    pop af                                        ; $41dc: $f1
    rst $38                                       ; $41dd: $ff
    nop                                           ; $41de: $00
    ld a, [$0602]                                 ; $41df: $fa $02 $06
    sbc [hl]                                      ; $41e2: $9e
    dec bc                                        ; $41e3: $0b
    dec c                                         ; $41e4: $0d
    rla                                           ; $41e5: $17
    jr jr_0ef_4215                                ; $41e6: $18 $2d

    ld [hl-], a                                   ; $41e8: $32
    dec [hl]                                      ; $41e9: $35

jr_0ef_41ea:
    dec sp                                        ; $41ea: $3b
    ld a, [hl+]                                   ; $41eb: $2a
    dec a                                         ; $41ec: $3d
    ld e, $11                                     ; $41ed: $1e $11
    dec d                                         ; $41ef: $15
    dec de                                        ; $41f0: $1b
    rrca                                          ; $41f1: $0f
    ld [$1e1d], sp                                ; $41f2: $08 $1d $1e
    ld [hl-], a                                   ; $41f5: $32
    cpl                                           ; $41f6: $2f
    ccf                                           ; $41f7: $3f
    add hl, hl                                    ; $41f8: $29
    ld a, a                                       ; $41f9: $7f
    ld e, b                                       ; $41fa: $58
    cp a                                          ; $41fb: $bf
    db $dd                                        ; $41fc: $dd
    ld [hl], l                                    ; $41fd: $75
    ld a, [hl]                                    ; $41fe: $7e
    scf                                           ; $41ff: $37
    ld l, $02                                     ; $4200: $2e $02
    db $10                                        ; $4202: $10
    sub b                                         ; $4203: $90
    jr jr_0ef_420e                                ; $4204: $18 $08

    inc e                                         ; $4206: $1c
    inc c                                         ; $4207: $0c
    ld a, [de]                                    ; $4208: $1a
    ld e, $0d                                     ; $4209: $1e $0d
    inc de                                        ; $420b: $13
    ld d, $1e                                     ; $420c: $16 $1e

jr_0ef_420e:
    inc e                                         ; $420e: $1c
    inc c                                         ; $420f: $0c
    ld a, [de]                                    ; $4210: $1a
    ld b, $14                                     ; $4211: $06 $14
    inc c                                         ; $4213: $0c
    ld [bc], a                                    ; $4214: $02

jr_0ef_4215:
    jr jr_0ef_4219                                ; $4215: $18 $02

    nop                                           ; $4217: $00
    inc b                                         ; $4218: $04

jr_0ef_4219:
    db $10                                        ; $4219: $10
    add h                                         ; $421a: $84
    ld [$1c18], sp                                ; $421b: $08 $18 $1c
    inc d                                         ; $421e: $14
    ld [bc], a                                    ; $421f: $02
    xor b                                         ; $4220: $a8
    add d                                         ; $4221: $82
    ld a, b                                       ; $4222: $78
    ld d, b                                       ; $4223: $50

jr_0ef_4224:
    ld [bc], a                                    ; $4224: $02
    jr z, jr_0ef_4243                             ; $4225: $28 $1c

    nop                                           ; $4227: $00
    rst $38                                       ; $4228: $ff
    dec c                                         ; $4229: $0d
    inc b                                         ; $422a: $04
    ld hl, sp+$10                                 ; $422b: $f8 $10
    rst $28                                       ; $422d: $ef
    ld bc, $faee                                  ; $422e: $01 $ee $fa
    ldh a, [$fe]                                  ; $4231: $f0 $fe
    cp $fa                                        ; $4233: $fe $fa
    cp $fc                                        ; $4235: $fe $fc
    and b                                         ; $4237: $a0
    ld a, [bc]                                    ; $4238: $0a
    ld c, $17                                     ; $4239: $0e $17
    add hl, de                                    ; $423b: $19
    cpl                                           ; $423c: $2f
    jr nc, jr_0ef_429a                            ; $423d: $30 $5b

    ld h, h                                       ; $423f: $64
    ld l, e                                       ; $4240: $6b
    ld [hl], a                                    ; $4241: $77
    ld d, h                                       ; $4242: $54

jr_0ef_4243:
    ld a, e                                       ; $4243: $7b
    dec a                                         ; $4244: $3d
    inc hl                                        ; $4245: $23
    dec hl                                        ; $4246: $2b

jr_0ef_4247:
    ld [hl], $1f                                  ; $4247: $36 $1f
    db $10                                        ; $4249: $10
    inc de                                        ; $424a: $13
    inc e                                         ; $424b: $1c
    dec a                                         ; $424c: $3d
    cpl                                           ; $424d: $2f
    ld d, a                                       ; $424e: $57
    ld l, a                                       ; $424f: $6f
    ld l, l                                       ; $4250: $6d
    ld e, e                                       ; $4251: $5b
    ld a, [hl]                                    ; $4252: $7e
    ld d, c                                       ; $4253: $51
    or l                                          ; $4254: $b5
    db $db                                        ; $4255: $db
    ld l, l                                       ; $4256: $6d
    ld e, a                                       ; $4257: $5f
    ld [bc], a                                    ; $4258: $02
    ld [$0c02], sp                                ; $4259: $08 $02 $0c
    add [hl]                                      ; $425c: $86
    ld c, $0a                                     ; $425d: $0e $0a
    rlca                                          ; $425f: $07
    add hl, bc                                    ; $4260: $09
    ld b, $0e                                     ; $4261: $06 $0e
    ld [bc], a                                    ; $4263: $02
    inc c                                         ; $4264: $0c
    add h                                         ; $4265: $84
    ld c, $02                                     ; $4266: $0e $02
    inc b                                         ; $4268: $04
    inc c                                         ; $4269: $0c
    ld [bc], a                                    ; $426a: $02
    ld [$0008], sp                                ; $426b: $08 $08 $00
    ld [bc], a                                    ; $426e: $02
    ld [$6484], sp                                ; $426f: $08 $84 $64
    db $fc                                        ; $4272: $fc
    ld a, [hl]                                    ; $4273: $7e
    ld [$3003], a                                 ; $4274: $ea $03 $30
    add e                                         ; $4277: $83
    jr nz, jr_0ef_42f7                            ; $4278: $20 $7d

    ld d, l                                       ; $427a: $55
    ld [bc], a                                    ; $427b: $02
    jr z, jr_0ef_429a                             ; $427c: $28 $1c

    nop                                           ; $427e: $00
    ld [bc], a                                    ; $427f: $02
    ld bc, $001a                                  ; $4280: $01 $1a $00
    rst $38                                       ; $4283: $ff
    dec c                                         ; $4284: $0d
    inc b                                         ; $4285: $04
    ld hl, sp+$10                                 ; $4286: $f8 $10
    rst $28                                       ; $4288: $ef
    ld bc, $fbee                                  ; $4289: $01 $ee $fb
    ldh a, [rIE]                                  ; $428c: $f0 $ff
    cp $fa                                        ; $428e: $fe $fa
    cp $fc                                        ; $4290: $fe $fc
    and b                                         ; $4292: $a0
    ld a, [bc]                                    ; $4293: $0a
    ld c, $17                                     ; $4294: $0e $17
    add hl, de                                    ; $4296: $19
    ld l, $31                                     ; $4297: $2e $31
    ld e, e                                       ; $4299: $5b

jr_0ef_429a:
    ld h, h                                       ; $429a: $64
    ld l, e                                       ; $429b: $6b
    ld [hl], a                                    ; $429c: $77
    ld e, [hl]                                    ; $429d: $5e
    ld [hl], c                                    ; $429e: $71
    ld a, [hl+]                                   ; $429f: $2a
    scf                                           ; $42a0: $37
    cpl                                           ; $42a1: $2f
    scf                                           ; $42a2: $37
    rla                                           ; $42a3: $17
    ld a, [de]                                    ; $42a4: $1a
    dec hl                                        ; $42a5: $2b
    inc a                                         ; $42a6: $3c
    ld c, h                                       ; $42a7: $4c
    ld a, a                                       ; $42a8: $7f
    ld [hl], e                                    ; $42a9: $73
    ld e, a                                       ; $42aa: $5f
    ld [$ffb6], a                                 ; $42ab: $ea $b6 $ff
    or e                                          ; $42ae: $b3
    jp c, $5fb7                                   ; $42af: $da $b7 $5f

    ld a, a                                       ; $42b2: $7f
    ld [bc], a                                    ; $42b3: $02
    ld [$0c02], sp                                ; $42b4: $08 $02 $0c
    add h                                         ; $42b7: $84
    ld c, $0a                                     ; $42b8: $0e $0a
    rlca                                          ; $42ba: $07
    add hl, bc                                    ; $42bb: $09
    ld [bc], a                                    ; $42bc: $02
    ld c, $02                                     ; $42bd: $0e $02
    ld [$0c02], sp                                ; $42bf: $08 $02 $0c
    add d                                         ; $42c2: $82
    ld c, $02                                     ; $42c3: $0e $02
    ld [bc], a                                    ; $42c5: $02
    inc c                                         ; $42c6: $0c
    ld [bc], a                                    ; $42c7: $02
    ld [$0004], sp                                ; $42c8: $08 $04 $00
    ld [bc], a                                    ; $42cb: $02
    ld [$0002], sp                                ; $42cc: $08 $02 $00
    add h                                         ; $42cf: $84
    xor b                                         ; $42d0: $a8
    ret c                                         ; $42d1: $d8

    db $fc                                        ; $42d2: $fc
    call nc, Call_000_3802                        ; $42d3: $d4 $02 $38
    add h                                         ; $42d6: $84
    ld h, b                                       ; $42d7: $60
    ld e, b                                       ; $42d8: $58
    ld sp, hl                                     ; $42d9: $f9
    xor c                                         ; $42da: $a9
    ld [bc], a                                    ; $42db: $02
    ld d, b                                       ; $42dc: $50
    inc e                                         ; $42dd: $1c
    nop                                           ; $42de: $00
    ld [bc], a                                    ; $42df: $02
    ld bc, $001a                                  ; $42e0: $01 $1a $00
    rst $38                                       ; $42e3: $ff
    dec c                                         ; $42e4: $0d
    inc b                                         ; $42e5: $04
    ld hl, sp+$10                                 ; $42e6: $f8 $10
    rst $28                                       ; $42e8: $ef
    ld bc, $faee                                  ; $42e9: $01 $ee $fa
    ldh a, [$fd]                                  ; $42ec: $f0 $fd
    cp $fa                                        ; $42ee: $fe $fa
    cp $fc                                        ; $42f0: $fe $fc
    ld [bc], a                                    ; $42f2: $02
    ld c, $9e                                     ; $42f3: $0e $9e
    dec e                                         ; $42f5: $1d
    inc de                                        ; $42f6: $13

jr_0ef_42f7:
    ld l, $31                                     ; $42f7: $2e $31
    ld e, a                                       ; $42f9: $5f
    ld h, b                                       ; $42fa: $60
    ld e, e                                       ; $42fb: $5b
    ld a, l                                       ; $42fc: $7d
    ld h, [hl]                                    ; $42fd: $66
    ld a, c                                       ; $42fe: $79
    ld e, e                                       ; $42ff: $5b
    ld h, h                                       ; $4300: $64
    dec [hl]                                      ; $4301: $35
    ld l, $2f                                     ; $4302: $2e $2f
    ccf                                           ; $4304: $3f
    daa                                           ; $4305: $27
    dec a                                         ; $4306: $3d
    scf                                           ; $4307: $37
    jr c, jr_0ef_4361                             ; $4308: $38 $57

    ld l, a                                       ; $430a: $6f
    ld l, l                                       ; $430b: $6d
    ld e, e                                       ; $430c: $5b
    cp a                                          ; $430d: $bf
    pop de                                        ; $430e: $d1
    db $dd                                        ; $430f: $dd
    or e                                          ; $4310: $b3
    ld [hl], e                                    ; $4311: $73
    ld e, a                                       ; $4312: $5f
    ld b, $04                                     ; $4313: $06 $04
    add h                                         ; $4315: $84
    ld [bc], a                                    ; $4316: $02
    ld b, $02                                     ; $4317: $06 $02
    ld b, $04                                     ; $4319: $06 $04
    inc b                                         ; $431b: $04
    add d                                         ; $431c: $82
    ld [bc], a                                    ; $431d: $02
    ld b, $02                                     ; $431e: $06 $02
    inc b                                         ; $4320: $04
    ld [bc], a                                    ; $4321: $02
    nop                                           ; $4322: $00
    ld [bc], a                                    ; $4323: $02
    inc b                                         ; $4324: $04
    add d                                         ; $4325: $82
    ld [bc], a                                    ; $4326: $02
    ld b, $04                                     ; $4327: $06 $04
    inc b                                         ; $4329: $04
    add h                                         ; $432a: $84
    ld a, [c]                                     ; $432b: $f2
    cp $5f                                        ; $432c: $fe $5f
    push de                                       ; $432e: $d5
    inc bc                                        ; $432f: $03
    ld h, b                                       ; $4330: $60
    add e                                         ; $4331: $83
    ld b, b                                       ; $4332: $40
    ld sp, hl                                     ; $4333: $f9
    xor c                                         ; $4334: $a9
    ld [bc], a                                    ; $4335: $02
    ld d, b                                       ; $4336: $50
    inc e                                         ; $4337: $1c
    nop                                           ; $4338: $00
    ld [bc], a                                    ; $4339: $02
    ld bc, $001a                                  ; $433a: $01 $1a $00
    rst $38                                       ; $433d: $ff
    dec c                                         ; $433e: $0d
    inc b                                         ; $433f: $04
    ld hl, sp+$10                                 ; $4340: $f8 $10
    rst $28                                       ; $4342: $ef
    ld bc, $faec                                  ; $4343: $01 $ec $fa
    db $ed                                        ; $4346: $ed
    cp $fc                                        ; $4347: $fe $fc
    ld a, [$fdfc]                                 ; $4349: $fa $fc $fd
    and b                                         ; $434c: $a0
    ld a, [bc]                                    ; $434d: $0a
    ld c, $17                                     ; $434e: $0e $17
    add hl, de                                    ; $4350: $19
    cpl                                           ; $4351: $2f
    jr nc, jr_0ef_43a3                            ; $4352: $30 $4f

    ld [hl], b                                    ; $4354: $70
    ld e, a                                       ; $4355: $5f
    ld h, a                                       ; $4356: $67
    ld l, b                                       ; $4357: $68
    ld [hl], a                                    ; $4358: $77
    ld d, a                                       ; $4359: $57
    ld a, c                                       ; $435a: $79
    dec a                                         ; $435b: $3d
    inc sp                                        ; $435c: $33
    daa                                           ; $435d: $27
    dec sp                                        ; $435e: $3b
    ld d, $19                                     ; $435f: $16 $19

jr_0ef_4361:
    dec de                                        ; $4361: $1b
    inc e                                         ; $4362: $1c
    ld a, $3f                                     ; $4363: $3e $3f
    ld e, a                                       ; $4365: $5f
    ld l, e                                       ; $4366: $6b
    ld l, l                                       ; $4367: $6d
    ld e, e                                       ; $4368: $5b
    rst $10                                       ; $4369: $d7
    cp c                                          ; $436a: $b9
    db $dd                                        ; $436b: $dd
    cp e                                          ; $436c: $bb
    ld [bc], a                                    ; $436d: $02

jr_0ef_436e:
    ld [$0c02], sp                                ; $436e: $08 $02 $0c
    add [hl]                                      ; $4371: $86
    ld c, $0a                                     ; $4372: $0e $0a
    rlca                                          ; $4374: $07
    add hl, bc                                    ; $4375: $09
    ld b, $0e                                     ; $4376: $06 $0e
    inc b                                         ; $4378: $04
    ld [$0c02], sp                                ; $4379: $08 $02 $0c
    add h                                         ; $437c: $84
    rrca                                          ; $437d: $0f
    dec bc                                        ; $437e: $0b
    rrca                                          ; $437f: $0f
    ld bc, $0e02                                  ; $4380: $01 $02 $0e
    ld [bc], a                                    ; $4383: $02
    nop                                           ; $4384: $00
    add h                                         ; $4385: $84
    ld [$0400], sp                                ; $4386: $08 $00 $04
    inc c                                         ; $4389: $0c
    ld [bc], a                                    ; $438a: $02
    ld [$b08c], sp                                ; $438b: $08 $8c $b0
    ldh a, [$60]                                  ; $438e: $f0 $60
    ld d, b                                       ; $4390: $50
    dec a                                         ; $4391: $3d
    ccf                                           ; $4392: $3f
    scf                                           ; $4393: $37
    ld a, $6b                                     ; $4394: $3e $6b
    ld e, d                                       ; $4396: $5a
    ld sp, hl                                     ; $4397: $f9
    xor c                                         ; $4398: $a9
    ld [bc], a                                    ; $4399: $02
    ld d, b                                       ; $439a: $50
    ld d, $00                                     ; $439b: $16 $00
    ld [bc], a                                    ; $439d: $02
    inc b                                         ; $439e: $04
    add h                                         ; $439f: $84
    ld [bc], a                                    ; $43a0: $02
    ld b, $07                                     ; $43a1: $06 $07

jr_0ef_43a3:
    dec b                                         ; $43a3: $05
    ld [bc], a                                    ; $43a4: $02
    ld [bc], a                                    ; $43a5: $02
    ld d, $00                                     ; $43a6: $16 $00
    rst $38                                       ; $43a8: $ff
    dec c                                         ; $43a9: $0d
    inc b                                         ; $43aa: $04
    ld hl, sp+$10                                 ; $43ab: $f8 $10
    rst $28                                       ; $43ad: $ef
    ld bc, $fbf4                                  ; $43ae: $01 $f4 $fb
    ldh a, [$03]                                  ; $43b1: $f0 $03
    di                                            ; $43b3: $f3
    ld b, $00                                     ; $43b4: $06 $00
    db $fd                                        ; $43b6: $fd
    ld [bc], a                                    ; $43b7: $02
    ld bc, $0302                                  ; $43b8: $01 $02 $03
    adc c                                         ; $43bb: $89
    inc b                                         ; $43bc: $04
    rlca                                          ; $43bd: $07
    ld a, [bc]                                    ; $43be: $0a
    dec c                                         ; $43bf: $0d
    ld d, $19                                     ; $43c0: $16 $19
    dec sp                                        ; $43c2: $3b
    daa                                           ; $43c3: $27
    ld d, h                                       ; $43c4: $54
    ld [bc], a                                    ; $43c5: $02
    ld l, a                                       ; $43c6: $6f
    adc e                                         ; $43c7: $8b
    ld e, c                                       ; $43c8: $59
    rst $18                                       ; $43c9: $df
    or c                                          ; $43ca: $b1
    or [hl]                                       ; $43cb: $b6
    ld a, [$7f6f]                                 ; $43cc: $fa $6f $7f
    ld l, [hl]                                    ; $43cf: $6e
    ld e, l                                       ; $43d0: $5d
    ei                                            ; $43d1: $fb
    xor c                                         ; $43d2: $a9
    ld [bc], a                                    ; $43d3: $02
    ld d, d                                       ; $43d4: $52
    inc b                                         ; $43d5: $04
    nop                                           ; $43d6: $00
    ld [bc], a                                    ; $43d7: $02
    jr jr_0ef_436e                                ; $43d8: $18 $94

    ld l, $36                                     ; $43da: $2e $36
    ld e, a                                       ; $43dc: $5f
    ld h, c                                       ; $43dd: $61
    or a                                          ; $43de: $b7
    ret                                           ; $43df: $c9


    rst $10                                       ; $43e0: $d7
    rst $28                                       ; $43e1: $ef
    xor c                                         ; $43e2: $a9
    or $ba                                        ; $43e3: $f6 $ba
    rst $00                                       ; $43e5: $c7
    ld d, a                                       ; $43e6: $57
    db $ed                                        ; $43e7: $ed
    rst $38                                       ; $43e8: $ff
    ldh [$97], a                                  ; $43e9: $e0 $97
    sbc b                                         ; $43eb: $98
    adc e                                         ; $43ec: $8b
    adc a                                         ; $43ed: $8f
    ld [$0200], sp                                ; $43ee: $08 $00 $02
    add b                                         ; $43f1: $80
    ld [bc], a                                    ; $43f2: $02
    inc b                                         ; $43f3: $04
    add h                                         ; $43f4: $84
    ld b, $02                                     ; $43f5: $06 $02
    rlca                                          ; $43f7: $07
    ld bc, $0602                                  ; $43f8: $01 $02 $06
    ld [bc], a                                    ; $43fb: $02
    inc b                                         ; $43fc: $04
    add d                                         ; $43fd: $82
    ld b, $02                                     ; $43fe: $06 $02
    ld [bc], a                                    ; $4400: $02
    inc b                                         ; $4401: $04

Jump_0ef_4402:
    ld [de], a                                    ; $4402: $12
    nop                                           ; $4403: $00
    add d                                         ; $4404: $82
    inc bc                                        ; $4405: $03
    ld bc, $0202                                  ; $4406: $01 $02 $02
    inc e                                         ; $4409: $1c
    nop                                           ; $440a: $00
    rst $38                                       ; $440b: $ff
    dec c                                         ; $440c: $0d
    inc b                                         ; $440d: $04
    ld hl, sp+$10                                 ; $440e: $f8 $10
    rst $28                                       ; $4410: $ef
    ld bc, $faf0                                  ; $4411: $01 $f0 $fa

jr_0ef_4414:
    ldh a, [rSB]                                  ; $4414: $f0 $01
    nop                                           ; $4416: $00
    ld a, [$fc00]                                 ; $4417: $fa $00 $fc
    ld [bc], a                                    ; $441a: $02
    ld bc, $029a                                  ; $441b: $01 $9a $02
    inc bc                                        ; $441e: $03
    dec b                                         ; $441f: $05
    ld b, $0b                                     ; $4420: $06 $0b
    inc c                                         ; $4422: $0c
    dec c                                         ; $4423: $0d
    ld c, $0a                                     ; $4424: $0e $0a
    rrca                                          ; $4426: $0f
    rlca                                          ; $4427: $07
    inc b                                         ; $4428: $04
    dec c                                         ; $4429: $0d
    ld c, $17                                     ; $442a: $0e $17
    ld e, $17                                     ; $442c: $1e $17
    rra                                           ; $442e: $1f
    ld [hl], $2b                                  ; $442f: $36 $2b
    ld l, c                                       ; $4431: $69
    ld e, a                                       ; $4432: $5f
    ld a, a                                       ; $4433: $7f
    ld e, b                                       ; $4434: $58
    or a                                          ; $4435: $b7
    reti                                          ; $4436: $d9


    ld [bc], a                                    ; $4437: $02
    ld a, a                                       ; $4438: $7f
    sub [hl]                                      ; $4439: $96
    ld l, [hl]                                    ; $443a: $6e
    ld e, l                                       ; $443b: $5d
    jr nz, jr_0ef_449e                            ; $443c: $20 $60

    ld [hl], b                                    ; $443e: $70
    db $10                                        ; $443f: $10
    ld a, b                                       ; $4440: $78
    ld [$4c3c], sp                                ; $4441: $08 $3c $4c
    ld a, $7a                                     ; $4444: $3e $7a
    ld c, a                                       ; $4446: $4f
    ld sp, $3e56                                  ; $4447: $31 $56 $3e
    inc a                                         ; $444a: $3c
    ld l, h                                       ; $444b: $6c
    ld a, [hl]                                    ; $444c: $7e
    ld [bc], a                                    ; $444d: $02
    inc c                                         ; $444e: $0c
    ld a, h                                       ; $444f: $7c
    ld [bc], a                                    ; $4450: $02
    ld [hl], b                                    ; $4451: $70
    ld [bc], a                                    ; $4452: $02
    nop                                           ; $4453: $00
    ld [bc], a                                    ; $4454: $02
    ld b, b                                       ; $4455: $40
    inc b                                         ; $4456: $04
    nop                                           ; $4457: $00
    ld [bc], a                                    ; $4458: $02
    ld b, b                                       ; $4459: $40
    add d                                         ; $445a: $82
    ei                                            ; $445b: $fb
    xor c                                         ; $445c: $a9
    ld [bc], a                                    ; $445d: $02
    ld d, d                                       ; $445e: $52
    inc e                                         ; $445f: $1c
    nop                                           ; $4460: $00
    add d                                         ; $4461: $82
    inc bc                                        ; $4462: $03
    ld bc, $0202                                  ; $4463: $01 $02 $02
    inc e                                         ; $4466: $1c
    nop                                           ; $4467: $00
    rst $38                                       ; $4468: $ff
    dec bc                                        ; $4469: $0b
    inc bc                                        ; $446a: $03
    ld hl, sp+$10                                 ; $446b: $f8 $10
    rst $28                                       ; $446d: $ef
    ld bc, $f8ef                                  ; $446e: $01 $ef $f8
    ld a, [c]                                     ; $4471: $f2
    db $fc                                        ; $4472: $fc
    rst $38                                       ; $4473: $ff
    ld hl, sp+$02                                 ; $4474: $f8 $02
    jr jr_0ef_4414                                ; $4476: $18 $9c

jr_0ef_4478:
    ld l, $36                                     ; $4478: $2e $36
    ld e, a                                       ; $447a: $5f
    ld h, c                                       ; $447b: $61
    or a                                          ; $447c: $b7
    ret                                           ; $447d: $c9


    rst $10                                       ; $447e: $d7
    rst $28                                       ; $447f: $ef
    xor c                                         ; $4480: $a9
    or $7a                                        ; $4481: $f6 $7a
    ld b, l                                       ; $4483: $45
    ld d, a                                       ; $4484: $57
    ld l, a                                       ; $4485: $6f
    dec a                                         ; $4486: $3d
    ld h, $17                                     ; $4487: $26 $17
    jr jr_0ef_449e                                ; $4489: $18 $13

    rra                                           ; $448b: $1f
    cpl                                           ; $448c: $2f
    ccf                                           ; $448d: $3f
    cpl                                           ; $448e: $2f
    ld sp, $1f1c                                  ; $448f: $31 $1c $1f
    dec d                                         ; $4492: $15
    dec de                                        ; $4493: $1b
    ld [bc], a                                    ; $4494: $02
    rrca                                          ; $4495: $0f

jr_0ef_4496:
    ld [bc], a                                    ; $4496: $02
    ld [$0c84], sp                                ; $4497: $08 $84 $0c
    inc b                                         ; $449a: $04
    ld c, $02                                     ; $449b: $0e $02
    ld [bc], a                                    ; $449d: $02

jr_0ef_449e:
    inc c                                         ; $449e: $0c
    ld [bc], a                                    ; $449f: $02
    ld [$0c82], sp                                ; $44a0: $08 $82 $0c
    inc b                                         ; $44a3: $04
    ld [bc], a                                    ; $44a4: $02
    ld [$0c02], sp                                ; $44a5: $08 $02 $0c
    add c                                         ; $44a8: $81
    ld b, $02                                     ; $44a9: $06 $02
    ld a, [bc]                                    ; $44ab: $0a
    add c                                         ; $44ac: $81
    ld c, $02                                     ; $44ad: $0e $02
    ld [$0688], sp                                ; $44af: $08 $88 $06
    ld c, $05                                     ; $44b2: $0e $05
    dec bc                                        ; $44b4: $0b
    rst $18                                       ; $44b5: $df
    or l                                          ; $44b6: $b5
    ld a, [$025a]                                 ; $44b7: $fa $5a $02
    and b                                         ; $44ba: $a0
    ld [bc], a                                    ; $44bb: $02
    nop                                           ; $44bc: $00
    ld [bc], a                                    ; $44bd: $02
    db $10                                        ; $44be: $10
    inc e                                         ; $44bf: $1c
    nop                                           ; $44c0: $00
    rst $38                                       ; $44c1: $ff
    dec bc                                        ; $44c2: $0b
    inc bc                                        ; $44c3: $03
    ld hl, sp+$10                                 ; $44c4: $f8 $10
    rst $28                                       ; $44c6: $ef
    ld bc, $f6ed                                  ; $44c7: $01 $ed $f6
    rst $28                                       ; $44ca: $ef
    ei                                            ; $44cb: $fb
    db $fd                                        ; $44cc: $fd
    or $88                                        ; $44cd: $f6 $88
    ld a, [de]                                    ; $44cf: $1a
    ld e, $2f                                     ; $44d0: $1e $2f
    ld sp, $6857                                  ; $44d2: $31 $57 $68
    ld c, e                                       ; $44d5: $4b
    ld [hl], a                                    ; $44d6: $77
    ld [bc], a                                    ; $44d7: $02
    ld a, a                                       ; $44d8: $7f
    add a                                         ; $44d9: $87
    or e                                          ; $44da: $b3
    db $ec                                        ; $44db: $ec
    ld e, l                                       ; $44dc: $5d
    ld h, [hl]                                    ; $44dd: $66
    dec hl                                        ; $44de: $2b
    scf                                           ; $44df: $37
    rra                                           ; $44e0: $1f
    ld [bc], a                                    ; $44e1: $02
    rla                                           ; $44e2: $17
    add [hl]                                      ; $44e3: $86
    jr jr_0ef_44f3                                ; $44e4: $18 $0d

    rrca                                          ; $44e6: $0f
    dec c                                         ; $44e7: $0d
    dec bc                                        ; $44e8: $0b
    ld a, [bc]                                    ; $44e9: $0a
    ld [bc], a                                    ; $44ea: $02
    dec c                                         ; $44eb: $0d
    add e                                         ; $44ec: $83
    ld c, $0a                                     ; $44ed: $0e $0a
    rrca                                          ; $44ef: $0f
    ld [bc], a                                    ; $44f0: $02
    rlca                                          ; $44f1: $07
    ld [bc], a                                    ; $44f2: $02

jr_0ef_44f3:
    db $10                                        ; $44f3: $10
    ld [bc], a                                    ; $44f4: $02
    jr jr_0ef_4478                                ; $44f5: $18 $81

    ld [$1803], sp                                ; $44f7: $08 $03 $18
    add c                                         ; $44fa: $81
    inc d                                         ; $44fb: $14
    ld [bc], a                                    ; $44fc: $02
    inc e                                         ; $44fd: $1c
    adc c                                         ; $44fe: $89
    inc d                                         ; $44ff: $14
    ld [$1810], sp                                ; $4500: $08 $10 $18
    ld [$1e12], sp                                ; $4503: $08 $12 $1e
    inc c                                         ; $4506: $0c
    inc d                                         ; $4507: $14
    ld [bc], a                                    ; $4508: $02
    jr jr_0ef_4496                                ; $4509: $18 $8b

    inc c                                         ; $450b: $0c
    inc e                                         ; $450c: $1c
    ld d, $1e                                     ; $450d: $16 $1e
    dec de                                        ; $450f: $1b
    dec d                                         ; $4510: $15
    rst $18                                       ; $4511: $df
    db $dd                                        ; $4512: $dd
    ld h, d                                       ; $4513: $62
    and d                                         ; $4514: $a2
    db $10                                        ; $4515: $10
    ld [bc], a                                    ; $4516: $02
    jr @-$7b                                      ; $4517: $18 $83

    db $10                                        ; $4519: $10
    rrca                                          ; $451a: $0f
    dec c                                         ; $451b: $0d
    ld [bc], a                                    ; $451c: $02
    ld [bc], a                                    ; $451d: $02
    jr jr_0ef_4520                                ; $451e: $18 $00

jr_0ef_4520:
    rst $38                                       ; $4520: $ff
    dec bc                                        ; $4521: $0b
    inc bc                                        ; $4522: $03
    ld hl, sp+$10                                 ; $4523: $f8 $10
    rst $28                                       ; $4525: $ef
    ld bc, $f6f0                                  ; $4526: $01 $f0 $f6
    ld a, [c]                                     ; $4529: $f2
    ld hl, sp+$00                                 ; $452a: $f8 $00
    or $02                                        ; $452c: $f6 $02
    ld c, $9e                                     ; $452e: $0e $9e
    inc de                                        ; $4530: $13
    dec e                                         ; $4531: $1d
    cpl                                           ; $4532: $2f
    jr nc, jr_0ef_4594                            ; $4533: $30 $5f

    ld h, b                                       ; $4535: $60
    ld l, a                                       ; $4536: $6f

jr_0ef_4537:
    ld a, a                                       ; $4537: $7f
    ld d, c                                       ; $4538: $51
    ld a, [hl]                                    ; $4539: $7e
    inc l                                         ; $453a: $2c
    inc sp                                        ; $453b: $33
    ld hl, $1f3f                                  ; $453c: $21 $3f $1f
    rla                                           ; $453f: $17
    ccf                                           ; $4540: $3f
    jr c, @+$71                                   ; $4541: $38 $6f

    ld e, a                                       ; $4543: $5f
    or [hl]                                       ; $4544: $b6
    adc $ee                                       ; $4545: $ce $ee
    or a                                          ; $4547: $b7
    ld e, e                                       ; $4548: $5b
    or a                                          ; $4549: $b7
    or $fd                                        ; $454a: $f6 $fd
    ld l, a                                       ; $454c: $6f
    ld e, l                                       ; $454d: $5d
    ld [bc], a                                    ; $454e: $02
    ld [bc], a                                    ; $454f: $02
    add h                                         ; $4550: $84
    ld bc, $0203                                  ; $4551: $01 $03 $02
    inc bc                                        ; $4554: $03
    ld [bc], a                                    ; $4555: $02
    ld [bc], a                                    ; $4556: $02
    add h                                         ; $4557: $84
    inc bc                                        ; $4558: $03
    ld bc, $0103                                  ; $4559: $01 $03 $01
    inc b                                         ; $455c: $04
    ld [bc], a                                    ; $455d: $02
    ld [$0200], sp                                ; $455e: $08 $00 $02
    ld [bc], a                                    ; $4561: $02
    add h                                         ; $4562: $84
    inc bc                                        ; $4563: $03
    ld bc, $aaea                                  ; $4564: $01 $ea $aa
    ld [bc], a                                    ; $4567: $02
    ld b, b                                       ; $4568: $40
    add d                                         ; $4569: $82
    ret nz                                        ; $456a: $c0

    add b                                         ; $456b: $80
    ld [bc], a                                    ; $456c: $02
    ld b, b                                       ; $456d: $40
    inc e                                         ; $456e: $1c
    nop                                           ; $456f: $00
    rst $38                                       ; $4570: $ff
    dec c                                         ; $4571: $0d
    inc b                                         ; $4572: $04
    ld hl, sp+$10                                 ; $4573: $f8 $10
    rst $28                                       ; $4575: $ef
    ld bc, $f8ed                                  ; $4576: $01 $ed $f8
    db $ed                                        ; $4579: $ed
    cp $fd                                        ; $457a: $fe $fd
    ld hl, sp-$03                                 ; $457c: $f8 $fd
    ld a, [$02a0]                                 ; $457e: $fa $a0 $02
    inc bc                                        ; $4581: $03
    dec b                                         ; $4582: $05
    ld b, $0b                                     ; $4583: $06 $0b
    inc c                                         ; $4585: $0c
    ld d, $19                                     ; $4586: $16 $19
    ld a, [de]                                    ; $4588: $1a
    dec e                                         ; $4589: $1d
    dec d                                         ; $458a: $15
    ld e, $0f                                     ; $458b: $1e $0f
    ld [$0d0a], sp                                ; $458d: $08 $0a $0d
    rra                                           ; $4590: $1f
    inc e                                         ; $4591: $1c
    inc l                                         ; $4592: $2c
    scf                                           ; $4593: $37

jr_0ef_4594:
    ld e, e                                       ; $4594: $5b
    ld a, a                                       ; $4595: $7f
    or h                                          ; $4596: $b4
    sbc $ee                                       ; $4597: $de $ee
    cp d                                          ; $4599: $ba
    rst $28                                       ; $459a: $ef
    or e                                          ; $459b: $b3
    cp [hl]                                       ; $459c: $be
    rst $10                                       ; $459d: $d7
    ld c, a                                       ; $459e: $4f
    ld a, e                                       ; $459f: $7b
    ld [bc], a                                    ; $45a0: $02
    jr nz, jr_0ef_4537                            ; $45a1: $20 $94

    jr nc, jr_0ef_45b5                            ; $45a3: $30 $10

    jr c, jr_0ef_45af                             ; $45a5: $38 $08

    inc a                                         ; $45a7: $3c
    inc c                                         ; $45a8: $0c
    ld a, $3a                                     ; $45a9: $3e $3a
    rlca                                          ; $45ab: $07
    add hl, sp                                    ; $45ac: $39
    ld d, $3e                                     ; $45ad: $16 $3e

jr_0ef_45af:
    inc a                                         ; $45af: $3c
    inc l                                         ; $45b0: $2c
    ld a, $02                                     ; $45b1: $3e $02
    inc [hl]                                      ; $45b3: $34
    inc c                                         ; $45b4: $0c

jr_0ef_45b5:
    jr jr_0ef_45ef                                ; $45b5: $18 $38

    ld [bc], a                                    ; $45b7: $02
    jr nz, jr_0ef_45be                            ; $45b8: $20 $04

    nop                                           ; $45ba: $00
    ld [bc], a                                    ; $45bb: $02
    jr nz, jr_0ef_45c0                            ; $45bc: $20 $02

jr_0ef_45be:
    nop                                           ; $45be: $00
    add [hl]                                      ; $45bf: $86

jr_0ef_45c0:
    ld a, l                                       ; $45c0: $7d
    ld a, a                                       ; $45c1: $7f
    sbc $ad                                       ; $45c2: $de $ad
    ld a, e                                       ; $45c4: $7b
    ld l, e                                       ; $45c5: $6b
    ld [bc], a                                    ; $45c6: $02
    db $10                                        ; $45c7: $10
    jr jr_0ef_45ca                                ; $45c8: $18 $00

jr_0ef_45ca:
    ld [bc], a                                    ; $45ca: $02
    ld [bc], a                                    ; $45cb: $02
    add h                                         ; $45cc: $84
    inc bc                                        ; $45cd: $03
    ld bc, $0103                                  ; $45ce: $01 $03 $01
    ld [bc], a                                    ; $45d1: $02
    ld [bc], a                                    ; $45d2: $02
    jr jr_0ef_45d5                                ; $45d3: $18 $00

jr_0ef_45d5:
    rst $38                                       ; $45d5: $ff
    rrca                                          ; $45d6: $0f
    dec b                                         ; $45d7: $05
    push af                                       ; $45d8: $f5
    dec c                                         ; $45d9: $0d
    add sp, $02                                   ; $45da: $e8 $02
    jp hl                                         ; $45dc: $e9


    ld hl, sp-$17                                 ; $45dd: $f8 $e9
    nop                                           ; $45df: $00
    xor $03                                       ; $45e0: $ee $03
    ld sp, hl                                     ; $45e2: $f9
    db $fc                                        ; $45e3: $fc
    ld sp, hl                                     ; $45e4: $f9
    rst $38                                       ; $45e5: $ff
    ld [bc], a                                    ; $45e6: $02
    ld [bc], a                                    ; $45e7: $02
    ld [bc], a                                    ; $45e8: $02
    ld bc, $0502                                  ; $45e9: $01 $02 $05
    ld [bc], a                                    ; $45ec: $02
    inc bc                                        ; $45ed: $03
    add d                                         ; $45ee: $82

jr_0ef_45ef:
    ld a, [hl+]                                   ; $45ef: $2a
    dec hl                                        ; $45f0: $2b
    ld [bc], a                                    ; $45f1: $02
    rla                                           ; $45f2: $17

Call_0ef_45f3:
    adc [hl]                                      ; $45f3: $8e
    ld e, h                                       ; $45f4: $5c
    ld e, a                                       ; $45f5: $5f
    ld a, [hl-]                                   ; $45f6: $3a
    ccf                                           ; $45f7: $3f
    push de                                       ; $45f8: $d5
    rst $38                                       ; $45f9: $ff
    ld e, d                                       ; $45fa: $5a
    ld a, a                                       ; $45fb: $7f
    cpl                                           ; $45fc: $2f
    scf                                           ; $45fd: $37
    rra                                           ; $45fe: $1f
    dec de                                        ; $45ff: $1b
    daa                                           ; $4600: $27
    inc h                                         ; $4601: $24
    ld [bc], a                                    ; $4602: $02
    dec bc                                        ; $4603: $0b
    ld [bc], a                                    ; $4604: $02
    ld bc, $0302                                  ; $4605: $01 $02 $03
    ld [bc], a                                    ; $4608: $02
    sub b                                         ; $4609: $90
    ld [bc], a                                    ; $460a: $02
    ldh [$8d], a                                  ; $460b: $e0 $8d
    sub h                                         ; $460d: $94
    db $f4                                        ; $460e: $f4
    ld l, b                                       ; $460f: $68
    sbc b                                         ; $4610: $98
    ld a, [hl-]                                   ; $4611: $3a
    jp z, Jump_000_2dd5                           ; $4612: $ca $d5 $2d

    xor e                                         ; $4615: $ab
    rst $10                                       ; $4616: $d7
    cp d                                          ; $4617: $ba
    ld d, l                                       ; $4618: $55
    ld [hl], h                                    ; $4619: $74
    ld [bc], a                                    ; $461a: $02
    xor e                                         ; $461b: $ab
    add d                                         ; $461c: $82
    ld d, a                                       ; $461d: $57
    ld e, [hl]                                    ; $461e: $5e
    ld [bc], a                                    ; $461f: $02
    rst $38                                       ; $4620: $ff
    add e                                         ; $4621: $83
    di                                            ; $4622: $f3
    db $fd                                        ; $4623: $fd
    dec c                                         ; $4624: $0d
    ld [bc], a                                    ; $4625: $02
    ld hl, sp-$7c                                 ; $4626: $f8 $84
    ld d, h                                       ; $4628: $54
    db $f4                                        ; $4629: $f4
    sub b                                         ; $462a: $90
    ldh a, [rSC]                                  ; $462b: $f0 $02
    inc b                                         ; $462d: $04
    ld [bc], a                                    ; $462e: $02
    nop                                           ; $462f: $00
    ld [bc], a                                    ; $4630: $02
    dec b                                         ; $4631: $05
    ld [bc], a                                    ; $4632: $02
    ld b, $84                                     ; $4633: $06 $84
    dec b                                         ; $4635: $05
    rlca                                          ; $4636: $07
    ld b, $02                                     ; $4637: $06 $02
    ld [bc], a                                    ; $4639: $02
    dec b                                         ; $463a: $05
    ld [bc], a                                    ; $463b: $02
    ld [bc], a                                    ; $463c: $02
    ld b, $00                                     ; $463d: $06 $00
    inc bc                                        ; $463f: $03
    ret nz                                        ; $4640: $c0

    add c                                         ; $4641: $81
    ld b, b                                       ; $4642: $40
    ld [bc], a                                    ; $4643: $02
    add b                                         ; $4644: $80
    adc b                                         ; $4645: $88
    ld b, b                                       ; $4646: $40
    ret nz                                        ; $4647: $c0

    ld h, b                                       ; $4648: $60
    and b                                         ; $4649: $a0
    ld a, $26                                     ; $464a: $3e $26
    ld e, $18                                     ; $464c: $1e $18
    ld [bc], a                                    ; $464e: $02
    ld e, $8a                                     ; $464f: $1e $8a
    halt                                          ; $4651: $76
    ld a, d                                       ; $4652: $7a
    cp d                                          ; $4653: $ba
    or $97                                        ; $4654: $f6 $97
    rst $38                                       ; $4656: $ff
    or h                                          ; $4657: $b4
    db $fc                                        ; $4658: $fc
    ld d, h                                       ; $4659: $54
    ld e, h                                       ; $465a: $5c
    ld [bc], a                                    ; $465b: $02
    ld [$0018], sp                                ; $465c: $08 $18 $00
    add h                                         ; $465f: $84
    ld bc, $0507                                  ; $4660: $01 $07 $05
    rlca                                          ; $4663: $07
    ld [bc], a                                    ; $4664: $02
    inc bc                                        ; $4665: $03
    stop                                          ; $4666: $10 $00
    rst $38                                       ; $4668: $ff
    rrca                                          ; $4669: $0f
    dec b                                         ; $466a: $05
    push af                                       ; $466b: $f5
    dec c                                         ; $466c: $0d
    add sp, $02                                   ; $466d: $e8 $02
    db $eb                                        ; $466f: $eb
    ld sp, hl                                     ; $4670: $f9
    ld [$f001], a                                 ; $4671: $ea $01 $f0
    inc b                                         ; $4674: $04
    ld a, [$fafc]                                 ; $4675: $fa $fc $fa
    rst $38                                       ; $4678: $ff
    ld [bc], a                                    ; $4679: $02
    inc bc                                        ; $467a: $03
    ld [bc], a                                    ; $467b: $02
    ld bc, $0702                                  ; $467c: $01 $02 $07
    add d                                         ; $467f: $82
    ld a, [hl+]                                   ; $4680: $2a
    dec hl                                        ; $4681: $2b
    ld [bc], a                                    ; $4682: $02
    daa                                           ; $4683: $27
    adc [hl]                                      ; $4684: $8e
    ld e, h                                       ; $4685: $5c
    ld e, a                                       ; $4686: $5f
    ld a, [hl-]                                   ; $4687: $3a
    ccf                                           ; $4688: $3f
    push de                                       ; $4689: $d5
    rst $38                                       ; $468a: $ff
    ld e, d                                       ; $468b: $5a
    ld a, a                                       ; $468c: $7f
    cpl                                           ; $468d: $2f
    scf                                           ; $468e: $37
    ld e, a                                       ; $468f: $5f
    ld e, e                                       ; $4690: $5b
    rla                                           ; $4691: $17
    inc d                                         ; $4692: $14
    ld [bc], a                                    ; $4693: $02
    dec bc                                        ; $4694: $0b
    inc bc                                        ; $4695: $03
    rlca                                          ; $4696: $07
    add c                                         ; $4697: $81
    inc b                                         ; $4698: $04
    ld [bc], a                                    ; $4699: $02
    inc bc                                        ; $469a: $03
    ld [bc], a                                    ; $469b: $02
    sub b                                         ; $469c: $90
    ld [bc], a                                    ; $469d: $02
    ldh [$8d], a                                  ; $469e: $e0 $8d
    sub h                                         ; $46a0: $94
    db $f4                                        ; $46a1: $f4
    inc l                                         ; $46a2: $2c
    call c, $c838                                 ; $46a3: $dc $38 $c8
    ld h, l                                       ; $46a6: $65
    sbc l                                         ; $46a7: $9d
    ei                                            ; $46a8: $fb
    add a                                         ; $46a9: $87
    cp d                                          ; $46aa: $ba
    ld d, l                                       ; $46ab: $55
    ld [hl], h                                    ; $46ac: $74
    ld [bc], a                                    ; $46ad: $02
    xor e                                         ; $46ae: $ab
    add d                                         ; $46af: $82
    ld d, a                                       ; $46b0: $57
    ld e, [hl]                                    ; $46b1: $5e
    ld [bc], a                                    ; $46b2: $02
    rst $38                                       ; $46b3: $ff
    add e                                         ; $46b4: $83
    di                                            ; $46b5: $f3
    db $fc                                        ; $46b6: $fc
    inc c                                         ; $46b7: $0c
    ld [bc], a                                    ; $46b8: $02
    ld a, [$6482]                                 ; $46b9: $fa $82 $64
    db $e4                                        ; $46bc: $e4
    ld [bc], a                                    ; $46bd: $02
    ldh a, [rSC]                                  ; $46be: $f0 $02
    ld [bc], a                                    ; $46c0: $02
    ld [bc], a                                    ; $46c1: $02
    dec b                                         ; $46c2: $05
    ld [bc], a                                    ; $46c3: $02
    ld b, $84                                     ; $46c4: $06 $84
    dec b                                         ; $46c6: $05
    rlca                                          ; $46c7: $07
    ld b, $02                                     ; $46c8: $06 $02
    ld [bc], a                                    ; $46ca: $02
    dec b                                         ; $46cb: $05
    ld [bc], a                                    ; $46cc: $02
    inc b                                         ; $46cd: $04
    ld b, $00                                     ; $46ce: $06 $00
    ld [bc], a                                    ; $46d0: $02
    add b                                         ; $46d1: $80
    ld [bc], a                                    ; $46d2: $02
    nop                                           ; $46d3: $00
    ld [bc], a                                    ; $46d4: $02
    add b                                         ; $46d5: $80
    adc b                                         ; $46d6: $88
    ret nz                                        ; $46d7: $c0

    ld b, b                                       ; $46d8: $40
    jr nz, @-$1e                                  ; $46d9: $20 $e0

    and b                                         ; $46db: $a0
    ldh [rTAC], a                                 ; $46dc: $e0 $07
    nop                                           ; $46de: $00
    ld [bc], a                                    ; $46df: $02
    rra                                           ; $46e0: $1f
    adc d                                         ; $46e1: $8a
    halt                                          ; $46e2: $76
    ld a, e                                       ; $46e3: $7b
    cp d                                          ; $46e4: $ba
    rst $30                                       ; $46e5: $f7
    sub a                                         ; $46e6: $97
    rst $38                                       ; $46e7: $ff
    or h                                          ; $46e8: $b4
    db $fc                                        ; $46e9: $fc
    ld d, h                                       ; $46ea: $54
    ld e, h                                       ; $46eb: $5c
    ld [bc], a                                    ; $46ec: $02
    ld [$001c], sp                                ; $46ed: $08 $1c $00
    ld [bc], a                                    ; $46f0: $02
    inc bc                                        ; $46f1: $03
    ld [de], a                                    ; $46f2: $12
    nop                                           ; $46f3: $00
    rst $38                                       ; $46f4: $ff
    rrca                                          ; $46f5: $0f
    dec b                                         ; $46f6: $05
    push af                                       ; $46f7: $f5
    dec c                                         ; $46f8: $0d
    add sp, $02                                   ; $46f9: $e8 $02
    db $eb                                        ; $46fb: $eb
    ld sp, hl                                     ; $46fc: $f9
    db $eb                                        ; $46fd: $eb
    ld bc, $04f0                                  ; $46fe: $01 $f0 $04
    ei                                            ; $4701: $fb
    db $fc                                        ; $4702: $fc
    ei                                            ; $4703: $fb
    rst $38                                       ; $4704: $ff
    ld [bc], a                                    ; $4705: $02
    ld [bc], a                                    ; $4706: $02
    ld [bc], a                                    ; $4707: $02
    inc bc                                        ; $4708: $03
    ld [bc], a                                    ; $4709: $02
    ld bc, $0b02                                  ; $470a: $01 $02 $0b
    add d                                         ; $470d: $82
    ld b, $07                                     ; $470e: $06 $07
    ld [bc], a                                    ; $4710: $02
    rla                                           ; $4711: $17
    adc [hl]                                      ; $4712: $8e
    inc e                                         ; $4713: $1c
    rra                                           ; $4714: $1f
    cp d                                          ; $4715: $ba
    cp a                                          ; $4716: $bf
    push de                                       ; $4717: $d5
    rst $38                                       ; $4718: $ff
    ld e, d                                       ; $4719: $5a
    ld a, a                                       ; $471a: $7f
    cpl                                           ; $471b: $2f
    scf                                           ; $471c: $37
    ld e, a                                       ; $471d: $5f
    ld e, e                                       ; $471e: $5b
    rla                                           ; $471f: $17
    inc d                                         ; $4720: $14
    inc bc                                        ; $4721: $03
    rlca                                          ; $4722: $07
    add c                                         ; $4723: $81
    inc b                                         ; $4724: $04
    ld [bc], a                                    ; $4725: $02
    inc bc                                        ; $4726: $03
    ld [bc], a                                    ; $4727: $02
    sub b                                         ; $4728: $90
    ld [bc], a                                    ; $4729: $02
    add sp, -$73                                  ; $472a: $e8 $8d
    sub b                                         ; $472c: $90
    ldh a, [rOBP0]                                ; $472d: $f0 $48
    cp b                                          ; $472f: $b8
    xor $1e                                       ; $4730: $ee $1e
    ld d, h                                       ; $4732: $54
    xor h                                         ; $4733: $ac
    db $eb                                        ; $4734: $eb
    sub a                                         ; $4735: $97
    jp c, Jump_0ef_7435                           ; $4736: $da $35 $74

    ld [bc], a                                    ; $4739: $02
    xor e                                         ; $473a: $ab
    add d                                         ; $473b: $82
    ld d, a                                       ; $473c: $57
    ld e, [hl]                                    ; $473d: $5e
    ld [bc], a                                    ; $473e: $02
    rst $38                                       ; $473f: $ff
    add e                                         ; $4740: $83
    di                                            ; $4741: $f3
    db $fd                                        ; $4742: $fd
    dec c                                         ; $4743: $0d
    ld [bc], a                                    ; $4744: $02

jr_0ef_4745:
    ld hl, sp+$02                                 ; $4745: $f8 $02
    db $f4                                        ; $4747: $f4
    add d                                         ; $4748: $82
    ldh a, [rNR10]                                ; $4749: $f0 $10
    ld [bc], a                                    ; $474b: $02
    inc b                                         ; $474c: $04
    ld [bc], a                                    ; $474d: $02
    nop                                           ; $474e: $00
    ld [bc], a                                    ; $474f: $02
    dec b                                         ; $4750: $05
    ld [bc], a                                    ; $4751: $02
    ld b, $84                                     ; $4752: $06 $84
    dec b                                         ; $4754: $05
    rlca                                          ; $4755: $07
    ld b, $02                                     ; $4756: $06 $02
    ld [bc], a                                    ; $4758: $02
    dec b                                         ; $4759: $05
    ld [bc], a                                    ; $475a: $02
    ld [bc], a                                    ; $475b: $02
    ld [$0200], sp                                ; $475c: $08 $00 $02
    add b                                         ; $475f: $80
    add [hl]                                      ; $4760: $86
    ret nz                                        ; $4761: $c0

    ld b, b                                       ; $4762: $40
    jr nz, jr_0ef_4745                            ; $4763: $20 $e0

    and b                                         ; $4765: $a0
    ldh [rSC], a                                  ; $4766: $e0 $02
    rra                                           ; $4768: $1f
    adc d                                         ; $4769: $8a
    halt                                          ; $476a: $76
    ld a, e                                       ; $476b: $7b
    cp d                                          ; $476c: $ba
    rst $30                                       ; $476d: $f7
    sub a                                         ; $476e: $97
    rst $38                                       ; $476f: $ff
    or h                                          ; $4770: $b4
    db $fc                                        ; $4771: $fc
    ld d, h                                       ; $4772: $54
    ld e, h                                       ; $4773: $5c
    ld [bc], a                                    ; $4774: $02
    ld [$001c], sp                                ; $4775: $08 $1c $00
    ld [bc], a                                    ; $4778: $02
    inc bc                                        ; $4779: $03
    inc d                                         ; $477a: $14
    nop                                           ; $477b: $00
    rst $38                                       ; $477c: $ff
    rrca                                          ; $477d: $0f
    dec b                                         ; $477e: $05
    push af                                       ; $477f: $f5
    dec c                                         ; $4780: $0d
    add sp, $02                                   ; $4781: $e8 $02
    db $eb                                        ; $4783: $eb
    ld hl, sp-$15                                 ; $4784: $f8 $eb
    nop                                           ; $4786: $00
    ldh a, [$03]                                  ; $4787: $f0 $03
    ei                                            ; $4789: $fb
    ei                                            ; $478a: $fb
    ei                                            ; $478b: $fb
    rst $38                                       ; $478c: $ff
    ld [bc], a                                    ; $478d: $02
    ld [bc], a                                    ; $478e: $02
    ld [bc], a                                    ; $478f: $02
    ld bc, $0502                                  ; $4790: $01 $02 $05
    ld [bc], a                                    ; $4793: $02
    inc bc                                        ; $4794: $03
    add d                                         ; $4795: $82
    ld a, [bc]                                    ; $4796: $0a
    dec bc                                        ; $4797: $0b
    ld [bc], a                                    ; $4798: $02
    scf                                           ; $4799: $37
    adc [hl]                                      ; $479a: $8e
    ld e, h                                       ; $479b: $5c
    ld e, a                                       ; $479c: $5f
    ld a, [hl-]                                   ; $479d: $3a
    ccf                                           ; $479e: $3f
    push de                                       ; $479f: $d5
    rst $38                                       ; $47a0: $ff
    ld e, d                                       ; $47a1: $5a
    ld a, a                                       ; $47a2: $7f
    cpl                                           ; $47a3: $2f
    scf                                           ; $47a4: $37
    ld e, a                                       ; $47a5: $5f
    ld e, e                                       ; $47a6: $5b
    rla                                           ; $47a7: $17
    inc d                                         ; $47a8: $14
    inc bc                                        ; $47a9: $03
    inc bc                                        ; $47aa: $03
    add c                                         ; $47ab: $81
    ld [bc], a                                    ; $47ac: $02
    ld [bc], a                                    ; $47ad: $02
    ld bc, $a002                                  ; $47ae: $01 $02 $a0
    ld [bc], a                                    ; $47b1: $02
    add sp, -$73                                  ; $47b2: $e8 $8d
    sub b                                         ; $47b4: $90
    ldh a, [$2c]                                  ; $47b5: $f0 $2c
    call c, Call_0ef_48b8                         ; $47b7: $dc $b8 $48
    push de                                       ; $47ba: $d5
    dec l                                         ; $47bb: $2d
    ei                                            ; $47bc: $fb
    add a                                         ; $47bd: $87
    ld a, [$7415]                                 ; $47be: $fa $15 $74
    ld [bc], a                                    ; $47c1: $02
    xor e                                         ; $47c2: $ab
    add d                                         ; $47c3: $82
    ld d, a                                       ; $47c4: $57
    ld e, [hl]                                    ; $47c5: $5e
    ld [bc], a                                    ; $47c6: $02
    rst $38                                       ; $47c7: $ff
    add e                                         ; $47c8: $83
    di                                            ; $47c9: $f3
    db $fd                                        ; $47ca: $fd
    dec c                                         ; $47cb: $0d
    ld [bc], a                                    ; $47cc: $02
    ld hl, sp+$02                                 ; $47cd: $f8 $02
    db $fc                                        ; $47cf: $fc
    add d                                         ; $47d0: $82
    ld hl, sp-$78                                 ; $47d1: $f8 $88
    ld [bc], a                                    ; $47d3: $02
    inc b                                         ; $47d4: $04
    ld [bc], a                                    ; $47d5: $02
    nop                                           ; $47d6: $00
    ld [bc], a                                    ; $47d7: $02
    dec b                                         ; $47d8: $05
    ld [bc], a                                    ; $47d9: $02
    ld b, $84                                     ; $47da: $06 $84
    dec b                                         ; $47dc: $05
    rlca                                          ; $47dd: $07
    ld b, $02                                     ; $47de: $06 $02
    ld [bc], a                                    ; $47e0: $02
    dec b                                         ; $47e1: $05
    ld [$0200], sp                                ; $47e2: $08 $00 $02
    add b                                         ; $47e5: $80
    adc b                                         ; $47e6: $88
    ld b, b                                       ; $47e7: $40
    ret nz                                        ; $47e8: $c0

    ld h, b                                       ; $47e9: $60
    and b                                         ; $47ea: $a0
    sub b                                         ; $47eb: $90
    ldh a, [$50]                                  ; $47ec: $f0 $50
    ld [hl], b                                    ; $47ee: $70
    ld [bc], a                                    ; $47ef: $02
    rrca                                          ; $47f0: $0f
    adc d                                         ; $47f1: $8a
    dec sp                                        ; $47f2: $3b
    dec a                                         ; $47f3: $3d
    ld e, l                                       ; $47f4: $5d
    ld a, e                                       ; $47f5: $7b
    ld c, e                                       ; $47f6: $4b
    ld a, a                                       ; $47f7: $7f
    ld e, d                                       ; $47f8: $5a
    ld a, [hl]                                    ; $47f9: $7e
    ld a, [hl+]                                   ; $47fa: $2a
    ld l, $02                                     ; $47fb: $2e $02
    inc b                                         ; $47fd: $04
    inc e                                         ; $47fe: $1c
    nop                                           ; $47ff: $00
    ld [bc], a                                    ; $4800: $02
    inc bc                                        ; $4801: $03
    inc d                                         ; $4802: $14
    nop                                           ; $4803: $00
    rst $38                                       ; $4804: $ff
    rrca                                          ; $4805: $0f
    dec b                                         ; $4806: $05
    push af                                       ; $4807: $f5
    dec c                                         ; $4808: $0d
    add sp, $02                                   ; $4809: $e8 $02
    ld [$eaf7], a                                 ; $480b: $ea $f7 $ea
    rst $38                                       ; $480e: $ff
    rst $28                                       ; $480f: $ef
    ld [bc], a                                    ; $4810: $02
    ld a, [$fafa]                                 ; $4811: $fa $fa $fa
    rst $38                                       ; $4814: $ff
    ld [bc], a                                    ; $4815: $02
    ld [bc], a                                    ; $4816: $02
    ld [bc], a                                    ; $4817: $02
    ld bc, $0502                                  ; $4818: $01 $02 $05
    ld [bc], a                                    ; $481b: $02
    inc bc                                        ; $481c: $03
    add d                                         ; $481d: $82
    ld a, [hl+]                                   ; $481e: $2a
    dec hl                                        ; $481f: $2b
    ld [bc], a                                    ; $4820: $02
    rla                                           ; $4821: $17
    adc [hl]                                      ; $4822: $8e
    ld e, h                                       ; $4823: $5c
    ld e, a                                       ; $4824: $5f
    ld a, [hl-]                                   ; $4825: $3a
    ccf                                           ; $4826: $3f
    push de                                       ; $4827: $d5
    rst $38                                       ; $4828: $ff
    ld e, d                                       ; $4829: $5a
    ld a, a                                       ; $482a: $7f
    cpl                                           ; $482b: $2f
    scf                                           ; $482c: $37
    rra                                           ; $482d: $1f
    dec de                                        ; $482e: $1b
    daa                                           ; $482f: $27
    inc h                                         ; $4830: $24
    ld [bc], a                                    ; $4831: $02
    dec bc                                        ; $4832: $0b
    inc b                                         ; $4833: $04
    ld bc, $9002                                  ; $4834: $01 $02 $90
    ld [bc], a                                    ; $4837: $02
    ldh [$91], a                                  ; $4838: $e0 $91
    sub h                                         ; $483a: $94
    db $f4                                        ; $483b: $f4
    ld l, b                                       ; $483c: $68
    sbc b                                         ; $483d: $98
    ld e, d                                       ; $483e: $5a
    xor d                                         ; $483f: $aa
    or h                                          ; $4840: $b4
    ld c, h                                       ; $4841: $4c
    cp e                                          ; $4842: $bb
    rst $00                                       ; $4843: $c7
    ld a, [$7415]                                 ; $4844: $fa $15 $74
    xor e                                         ; $4847: $ab
    db $eb                                        ; $4848: $eb
    rla                                           ; $4849: $17
    ld e, [hl]                                    ; $484a: $5e
    ld [bc], a                                    ; $484b: $02
    rst $38                                       ; $484c: $ff
    add e                                         ; $484d: $83
    di                                            ; $484e: $f3
    db $fd                                        ; $484f: $fd
    dec c                                         ; $4850: $0d
    ld [bc], a                                    ; $4851: $02
    ld hl, sp-$7f                                 ; $4852: $f8 $81
    call z, $fc02                                 ; $4854: $cc $02 $fc
    add c                                         ; $4857: $81
    inc a                                         ; $4858: $3c
    ld [bc], a                                    ; $4859: $02
    inc b                                         ; $485a: $04
    ld [bc], a                                    ; $485b: $02
    nop                                           ; $485c: $00
    ld [bc], a                                    ; $485d: $02
    dec b                                         ; $485e: $05
    ld [bc], a                                    ; $485f: $02
    ld b, $84                                     ; $4860: $06 $84
    dec b                                         ; $4862: $05
    rlca                                          ; $4863: $07
    ld b, $02                                     ; $4864: $06 $02
    ld [bc], a                                    ; $4866: $02
    dec b                                         ; $4867: $05
    ld [bc], a                                    ; $4868: $02
    ld [bc], a                                    ; $4869: $02
    ld b, $00                                     ; $486a: $06 $00
    add d                                         ; $486c: $82
    ldh [rNR41], a                                ; $486d: $e0 $20
    ld [bc], a                                    ; $486f: $02
    ret nz                                        ; $4870: $c0

    adc b                                         ; $4871: $88
    and b                                         ; $4872: $a0
    ldh [$b0], a                                  ; $4873: $e0 $b0
    ret nc                                        ; $4875: $d0

    ret z                                         ; $4876: $c8

    ld hl, sp+$07                                 ; $4877: $f8 $07
    ld b, $02                                     ; $4879: $06 $02
    rlca                                          ; $487b: $07
    adc d                                         ; $487c: $8a
    dec e                                         ; $487d: $1d
    ld e, $2e                                     ; $487e: $1e $2e
    dec a                                         ; $4880: $3d
    dec h                                         ; $4881: $25
    ccf                                           ; $4882: $3f
    dec l                                         ; $4883: $2d
    ccf                                           ; $4884: $3f
    dec d                                         ; $4885: $15
    rla                                           ; $4886: $17
    ld [bc], a                                    ; $4887: $02
    ld [bc], a                                    ; $4888: $02
    ld a, [de]                                    ; $4889: $1a
    nop                                           ; $488a: $00
    add d                                         ; $488b: $82
    dec b                                         ; $488c: $05
    rlca                                          ; $488d: $07
    ld [bc], a                                    ; $488e: $02
    inc bc                                        ; $488f: $03
    ld [de], a                                    ; $4890: $12
    nop                                           ; $4891: $00
    rst $38                                       ; $4892: $ff
    rrca                                          ; $4893: $0f
    dec b                                         ; $4894: $05
    push af                                       ; $4895: $f5
    dec c                                         ; $4896: $0d
    add sp, $02                                   ; $4897: $e8 $02
    jp hl                                         ; $4899: $e9


    rst $30                                       ; $489a: $f7
    jp hl                                         ; $489b: $e9


    rst $38                                       ; $489c: $ff
    xor $02                                       ; $489d: $ee $02
    ld sp, hl                                     ; $489f: $f9
    db $fc                                        ; $48a0: $fc
    ld sp, hl                                     ; $48a1: $f9
    rst $38                                       ; $48a2: $ff
    ld [bc], a                                    ; $48a3: $02
    ld [bc], a                                    ; $48a4: $02
    ld [bc], a                                    ; $48a5: $02
    ld bc, $0502                                  ; $48a6: $01 $02 $05
    ld [bc], a                                    ; $48a9: $02
    inc bc                                        ; $48aa: $03
    add d                                         ; $48ab: $82
    ld a, [hl+]                                   ; $48ac: $2a
    dec hl                                        ; $48ad: $2b
    ld [bc], a                                    ; $48ae: $02
    rla                                           ; $48af: $17
    adc [hl]                                      ; $48b0: $8e
    ld e, h                                       ; $48b1: $5c
    ld e, a                                       ; $48b2: $5f
    ld a, [hl-]                                   ; $48b3: $3a
    ccf                                           ; $48b4: $3f
    push de                                       ; $48b5: $d5
    rst $38                                       ; $48b6: $ff
    ld e, d                                       ; $48b7: $5a

Call_0ef_48b8:
    ld a, a                                       ; $48b8: $7f
    xor a                                         ; $48b9: $af
    or a                                          ; $48ba: $b7
    rra                                           ; $48bb: $1f
    dec de                                        ; $48bc: $1b
    daa                                           ; $48bd: $27
    inc h                                         ; $48be: $24
    ld [bc], a                                    ; $48bf: $02
    dec bc                                        ; $48c0: $0b
    inc b                                         ; $48c1: $04
    ld bc, $9002                                  ; $48c2: $01 $02 $90
    ld [bc], a                                    ; $48c5: $02
    ldh [$8d], a                                  ; $48c6: $e0 $8d
    sub h                                         ; $48c8: $94
    db $f4                                        ; $48c9: $f4
    ld l, b                                       ; $48ca: $68
    sbc b                                         ; $48cb: $98
    adc b                                         ; $48cc: $88
    ld a, b                                       ; $48cd: $78
    push hl                                       ; $48ce: $e5
    dec e                                         ; $48cf: $1d
    cp e                                          ; $48d0: $bb
    rst $00                                       ; $48d1: $c7
    ld a, [$7415]                                 ; $48d2: $fa $15 $74
    ld [bc], a                                    ; $48d5: $02
    xor e                                         ; $48d6: $ab
    add d                                         ; $48d7: $82
    ld d, a                                       ; $48d8: $57
    ld e, [hl]                                    ; $48d9: $5e
    ld [bc], a                                    ; $48da: $02
    rst $38                                       ; $48db: $ff
    add e                                         ; $48dc: $83
    di                                            ; $48dd: $f3
    db $fd                                        ; $48de: $fd
    dec c                                         ; $48df: $0d
    ld [bc], a                                    ; $48e0: $02
    ld hl, sp-$7c                                 ; $48e1: $f8 $84
    ld d, h                                       ; $48e3: $54
    db $f4                                        ; $48e4: $f4
    ret z                                         ; $48e5: $c8

    ld hl, sp+$02                                 ; $48e6: $f8 $02
    inc b                                         ; $48e8: $04
    ld [bc], a                                    ; $48e9: $02
    nop                                           ; $48ea: $00
    ld [bc], a                                    ; $48eb: $02
    dec b                                         ; $48ec: $05
    ld [bc], a                                    ; $48ed: $02
    ld b, $84                                     ; $48ee: $06 $84
    dec b                                         ; $48f0: $05
    rlca                                          ; $48f1: $07
    ld b, $02                                     ; $48f2: $06 $02
    ld [bc], a                                    ; $48f4: $02
    dec b                                         ; $48f5: $05
    ld [bc], a                                    ; $48f6: $02
    ld [bc], a                                    ; $48f7: $02
    ld b, $00                                     ; $48f8: $06 $00
    inc bc                                        ; $48fa: $03
    ldh [$81], a                                  ; $48fb: $e0 $81
    jr nz, jr_0ef_4901                            ; $48fd: $20 $02

    ret nz                                        ; $48ff: $c0

    adc b                                         ; $4900: $88

jr_0ef_4901:
    and b                                         ; $4901: $a0
    ldh [$b0], a                                  ; $4902: $e0 $b0
    ret nc                                        ; $4904: $d0

    inc a                                         ; $4905: $3c
    inc h                                         ; $4906: $24
    inc e                                         ; $4907: $1c
    jr jr_0ef_490c                                ; $4908: $18 $02

    inc e                                         ; $490a: $1c
    adc d                                         ; $490b: $8a

jr_0ef_490c:
    ld [hl], h                                    ; $490c: $74
    ld a, b                                       ; $490d: $78
    cp b                                          ; $490e: $b8
    db $f4                                        ; $490f: $f4
    sub a                                         ; $4910: $97
    rst $38                                       ; $4911: $ff
    or h                                          ; $4912: $b4
    db $fc                                        ; $4913: $fc
    ld d, h                                       ; $4914: $54
    ld e, h                                       ; $4915: $5c
    ld [bc], a                                    ; $4916: $02
    ld [$0018], sp                                ; $4917: $08 $18 $00
    add h                                         ; $491a: $84
    ld bc, $0507                                  ; $491b: $01 $07 $05
    rlca                                          ; $491e: $07
    ld [bc], a                                    ; $491f: $02
    inc bc                                        ; $4920: $03
    stop                                          ; $4921: $10 $00
    rst $38                                       ; $4923: $ff
    rrca                                          ; $4924: $0f
    dec b                                         ; $4925: $05
    push af                                       ; $4926: $f5
    dec c                                         ; $4927: $0d
    add sp, $02                                   ; $4928: $e8 $02
    db $ed                                        ; $492a: $ed
    rst $28                                       ; $492b: $ef
    db $ec                                        ; $492c: $ec
    rst $30                                       ; $492d: $f7
    db $ed                                        ; $492e: $ed
    cp $fc                                        ; $492f: $fe $fc
    db $fc                                        ; $4931: $fc
    db $fc                                        ; $4932: $fc
    rst $38                                       ; $4933: $ff
    ld [bc], a                                    ; $4934: $02
    ld bc, $1402                                  ; $4935: $01 $02 $14
    ld [bc], a                                    ; $4938: $02
    ld c, a                                       ; $4939: $4f
    adc [hl]                                      ; $493a: $8e
    ld a, [hl-]                                   ; $493b: $3a
    dec [hl]                                      ; $493c: $35
    rst $18                                       ; $493d: $df
    db $e4                                        ; $493e: $e4
    ld l, a                                       ; $493f: $6f
    ld [hl], d                                    ; $4940: $72
    jr nc, jr_0ef_4982                            ; $4941: $30 $3f

    ld e, e                                       ; $4943: $5b
    ld e, [hl]                                    ; $4944: $5e
    ld c, $0f                                     ; $4945: $0e $0f
    dec e                                         ; $4947: $1d
    rra                                           ; $4948: $1f
    ld [bc], a                                    ; $4949: $02
    rlca                                          ; $494a: $07
    ld [bc], a                                    ; $494b: $02
    dec bc                                        ; $494c: $0b
    add d                                         ; $494d: $82
    ld [bc], a                                    ; $494e: $02
    inc bc                                        ; $494f: $03
    ld [bc], a                                    ; $4950: $02
    dec b                                         ; $4951: $05
    inc b                                         ; $4952: $04
    nop                                           ; $4953: $00
    ld [bc], a                                    ; $4954: $02
    ld [de], a                                    ; $4955: $12
    ld [bc], a                                    ; $4956: $02
    ld c, [hl]                                    ; $4957: $4e
    sub [hl]                                      ; $4958: $96
    push af                                       ; $4959: $f5
    rst $38                                       ; $495a: $ff
    ld l, [hl]                                    ; $495b: $6e
    sbc d                                         ; $495c: $9a
    db $fc                                        ; $495d: $fc
    ld d, h                                       ; $495e: $54
    sbc [hl]                                      ; $495f: $9e
    halt                                          ; $4960: $76
    ld a, b                                       ; $4961: $78
    xor b                                         ; $4962: $a8
    cp h                                          ; $4963: $bc
    ld l, h                                       ; $4964: $6c
    ld a, e                                       ; $4965: $7b
    rst $18                                       ; $4966: $df
    xor [hl]                                      ; $4967: $ae
    pop af                                        ; $4968: $f1
    di                                            ; $4969: $f3
    cp l                                          ; $496a: $bd
    ld l, a                                       ; $496b: $6f
    rst $28                                       ; $496c: $ef
    ld d, a                                       ; $496d: $57
    call nc, $8302                                ; $496e: $d4 $02 $83
    ld [bc], a                                    ; $4971: $02
    ld b, c                                       ; $4972: $41
    ld [bc], a                                    ; $4973: $02
    nop                                           ; $4974: $00
    ld [bc], a                                    ; $4975: $02
    ld b, b                                       ; $4976: $40
    ld c, $00                                     ; $4977: $0e $00
    ld [bc], a                                    ; $4979: $02
    ld [hl], b                                    ; $497a: $70
    adc [hl]                                      ; $497b: $8e
    ld a, b                                       ; $497c: $78
    ld c, b                                       ; $497d: $48
    ld [hl], b                                    ; $497e: $70
    jr nc, jr_0ef_49e9                            ; $497f: $30 $68

    ld a, b                                       ; $4981: $78

jr_0ef_4982:
    jr c, jr_0ef_49cc                             ; $4982: $38 $48

    inc h                                         ; $4984: $24
    ld e, h                                       ; $4985: $5c
    ld a, d                                       ; $4986: $7a
    ld a, [hl]                                    ; $4987: $7e
    db $db                                        ; $4988: $db
    db $ed                                        ; $4989: $ed
    ld [bc], a                                    ; $498a: $02
    ld b, b                                       ; $498b: $40
    adc b                                         ; $498c: $88
    cp e                                          ; $498d: $bb
    rst $30                                       ; $498e: $f7
    sub [hl]                                      ; $498f: $96
    cp $b4                                        ; $4990: $fe $b4
    db $fc                                        ; $4992: $fc
    ld d, h                                       ; $4993: $54
    ld e, h                                       ; $4994: $5c
    ld [bc], a                                    ; $4995: $02
    ld [$0016], sp                                ; $4996: $08 $16 $00
    add [hl]                                      ; $4999: $86
    ld bc, $0507                                  ; $499a: $01 $07 $05
    rlca                                          ; $499d: $07
    dec b                                         ; $499e: $05
    rlca                                          ; $499f: $07
    ld [bc], a                                    ; $49a0: $02
    inc bc                                        ; $49a1: $03
    ld d, $00                                     ; $49a2: $16 $00
    rst $38                                       ; $49a4: $ff
    dec c                                         ; $49a5: $0d
    inc b                                         ; $49a6: $04
    push af                                       ; $49a7: $f5
    dec c                                         ; $49a8: $0d
    add sp, $02                                   ; $49a9: $e8 $02
    xor $ec                                       ; $49ab: $ee $ec
    ldh a, [$f4]                                  ; $49ad: $f0 $f4
    pop af                                        ; $49af: $f1
    db $fc                                        ; $49b0: $fc
    rst $30                                       ; $49b1: $f7
    rst $38                                       ; $49b2: $ff
    ld [bc], a                                    ; $49b3: $02
    dec b                                         ; $49b4: $05
    sbc b                                         ; $49b5: $98
    dec bc                                        ; $49b6: $0b
    rrca                                          ; $49b7: $0f
    rra                                           ; $49b8: $1f
    inc e                                         ; $49b9: $1c
    dec bc                                        ; $49ba: $0b
    ld c, $6f                                     ; $49bb: $0e $6f
    ld l, d                                       ; $49bd: $6a
    dec d                                         ; $49be: $15
    dec de                                        ; $49bf: $1b
    ld e, [hl]                                    ; $49c0: $5e
    ld d, l                                       ; $49c1: $55

jr_0ef_49c2:
    daa                                           ; $49c2: $27
    jr c, jr_0ef_49c2                             ; $49c3: $38 $fd

    jp z, Jump_0ef_517e                           ; $49c5: $ca $7e $51

    db $db                                        ; $49c8: $db
    db $e4                                        ; $49c9: $e4
    ld h, a                                       ; $49ca: $67
    ld a, [hl]                                    ; $49cb: $7e

jr_0ef_49cc:
    ld a, [hl-]                                   ; $49cc: $3a
    ccf                                           ; $49cd: $3f
    ld [bc], a                                    ; $49ce: $02
    ld c, a                                       ; $49cf: $4f
    ld [bc], a                                    ; $49d0: $02
    dec b                                         ; $49d1: $05
    ld [bc], a                                    ; $49d2: $02
    ld bc, $c002                                  ; $49d3: $01 $02 $c0
    ld [bc], a                                    ; $49d6: $02
    add c                                         ; $49d7: $81
    sbc b                                         ; $49d8: $98
    ld c, [hl]                                    ; $49d9: $4e
    rst $08                                       ; $49da: $cf
    di                                            ; $49db: $f3
    cp h                                          ; $49dc: $bc
    db $ec                                        ; $49dd: $ec
    or e                                          ; $49de: $b3
    ei                                            ; $49df: $fb
    or a                                          ; $49e0: $b7
    db $ec                                        ; $49e1: $ec
    cp h                                          ; $49e2: $bc
    ldh a, [$b0]                                  ; $49e3: $f0 $b0
    ld d, b                                       ; $49e5: $50
    ldh a, [rSVBK]                                ; $49e6: $f0 $70
    ret nc                                        ; $49e8: $d0

jr_0ef_49e9:
    ret c                                         ; $49e9: $d8

    ld hl, sp-$30                                 ; $49ea: $f8 $d0
    ldh a, [$d0]                                  ; $49ec: $f0 $d0
    ldh a, [$50]                                  ; $49ee: $f0 $50
    ld [hl], b                                    ; $49f0: $70
    ld [bc], a                                    ; $49f1: $02
    ld l, b                                       ; $49f2: $68
    ld [bc], a                                    ; $49f3: $02
    nop                                           ; $49f4: $00
    ld [bc], a                                    ; $49f5: $02
    ldh a, [$9e]                                  ; $49f6: $f0 $9e
    ld [$eef8], sp                                ; $49f8: $08 $f8 $ee
    ld e, $bf                                     ; $49fb: $1e $bf
    reti                                          ; $49fd: $d9


    rst $18                                       ; $49fe: $df
    rst $30                                       ; $49ff: $f7
    dec a                                         ; $4a00: $3d
    cpl                                           ; $4a01: $2f
    ld a, [hl-]                                   ; $4a02: $3a
    dec l                                         ; $4a03: $2d
    ld e, $19                                     ; $4a04: $1e $19
    ld a, [bc]                                    ; $4a06: $0a
    dec c                                         ; $4a07: $0d
    rla                                           ; $4a08: $17
    add hl, de                                    ; $4a09: $19
    ld e, $1f                                     ; $4a0a: $1e $1f
    halt                                          ; $4a0c: $76
    ld a, e                                       ; $4a0d: $7b
    cp e                                          ; $4a0e: $bb
    rst $30                                       ; $4a0f: $f7
    sub [hl]                                      ; $4a10: $96
    cp $b4                                        ; $4a11: $fe $b4
    db $fc                                        ; $4a13: $fc
    ld d, h                                       ; $4a14: $54
    ld e, h                                       ; $4a15: $5c
    ld a, [bc]                                    ; $4a16: $0a
    inc b                                         ; $4a17: $04
    adc b                                         ; $4a18: $88
    ld b, $02                                     ; $4a19: $06 $02
    ld bc, $0507                                  ; $4a1b: $01 $07 $05
    rlca                                          ; $4a1e: $07
    dec b                                         ; $4a1f: $05
    rlca                                          ; $4a20: $07
    ld [bc], a                                    ; $4a21: $02
    inc bc                                        ; $4a22: $03
    ld [bc], a                                    ; $4a23: $02
    ld b, b                                       ; $4a24: $40

jr_0ef_4a25:
    ld a, [bc]                                    ; $4a25: $0a
    nop                                           ; $4a26: $00
    rst $38                                       ; $4a27: $ff
    ld de, $f506                                  ; $4a28: $11 $06 $f5
    dec c                                         ; $4a2b: $0d
    add sp, $02                                   ; $4a2c: $e8 $02
    db $eb                                        ; $4a2e: $eb
    ld [$f2ea], a                                 ; $4a2f: $ea $ea $f2
    ldh a, [$fa]                                  ; $4a32: $f0 $fa
    ld a, [c]                                     ; $4a34: $f2
    rst $38                                       ; $4a35: $ff
    ld a, [$faee]                                 ; $4a36: $fa $ee $fa
    or $04                                        ; $4a39: $f6 $04
    ld bc, $0696                                  ; $4a3b: $01 $96 $06
    rlca                                          ; $4a3e: $07
    inc bc                                        ; $4a3f: $03
    ld [bc], a                                    ; $4a40: $02
    inc e                                         ; $4a41: $1c
    rra                                           ; $4a42: $1f
    dec hl                                        ; $4a43: $2b
    inc l                                         ; $4a44: $2c
    rra                                           ; $4a45: $1f
    add hl, de                                    ; $4a46: $19
    xor e                                         ; $4a47: $ab
    or h                                          ; $4a48: $b4
    ld e, a                                       ; $4a49: $5f
    ld h, b                                       ; $4a4a: $60
    ld d, a                                       ; $4a4b: $57
    ld l, d                                       ; $4a4c: $6a
    ld [$35ff], a                                 ; $4a4d: $ea $ff $35
    ccf                                           ; $4a50: $3f
    ld e, [hl]                                    ; $4a51: $5e
    ld e, a                                       ; $4a52: $5f
    ld [bc], a                                    ; $4a53: $02
    rla                                           ; $4a54: $17
    ld [bc], a                                    ; $4a55: $02
    add hl, bc                                    ; $4a56: $09
    ld [bc], a                                    ; $4a57: $02
    ld bc, $2802                                  ; $4a58: $01 $02 $28
    sbc d                                         ; $4a5b: $9a
    ld d, h                                       ; $4a5c: $54
    ld [hl], h                                    ; $4a5d: $74
    ldh a, [$d0]                                  ; $4a5e: $f0 $d0
    ld e, b                                       ; $4a60: $58
    ld hl, sp+$70                                 ; $4a61: $f8 $70
    ldh a, [$bc]                                  ; $4a63: $f0 $bc
    ld l, h                                       ; $4a65: $6c
    ld a, c                                       ; $4a66: $79
    xor c                                         ; $4a67: $a9
    cp [hl]                                       ; $4a68: $be
    ld [hl], a                                    ; $4a69: $77
    db $dd                                        ; $4a6a: $dd
    or [hl]                                       ; $4a6b: $b6
    cp l                                          ; $4a6c: $bd
    ld [hl], a                                    ; $4a6d: $77
    ld e, a                                       ; $4a6e: $5f
    or a                                          ; $4a6f: $b7
    cp [hl]                                       ; $4a70: $be
    or $74                                        ; $4a71: $f6 $74
    db $fc                                        ; $4a73: $fc
    ld [$02fa], a                                 ; $4a74: $ea $fa $02
    ldh a, [$82]                                  ; $4a77: $f0 $82
    ret c                                         ; $4a79: $d8

    ld hl, sp+$02                                 ; $4a7a: $f8 $02
    db $fc                                        ; $4a7c: $fc
    add [hl]                                      ; $4a7d: $86
    ei                                            ; $4a7e: $fb
    rlca                                          ; $4a7f: $07
    inc d                                         ; $4a80: $14
    ei                                            ; $4a81: $fb
    ld hl, sp-$01                                 ; $4a82: $f8 $ff
    ld [bc], a                                    ; $4a84: $02
    rlca                                          ; $4a85: $07
    adc h                                         ; $4a86: $8c
    rrca                                          ; $4a87: $0f
    ld c, $0f                                     ; $4a88: $0e $0f
    add hl, bc                                    ; $4a8a: $09
    rlca                                          ; $4a8b: $07
    ld b, $0a                                     ; $4a8c: $06 $0a
    dec c                                         ; $4a8e: $0d
    ld c, $0d                                     ; $4a8f: $0e $0d
    dec bc                                        ; $4a91: $0b
    inc c                                         ; $4a92: $0c
    ld [bc], a                                    ; $4a93: $02
    rlca                                          ; $4a94: $07
    adc b                                         ; $4a95: $88
    dec e                                         ; $4a96: $1d
    ld e, $2e                                     ; $4a97: $1e $2e
    dec a                                         ; $4a99: $3d
    dec h                                         ; $4a9a: $25
    ccf                                           ; $4a9b: $3f
    dec l                                         ; $4a9c: $2d
    ccf                                           ; $4a9d: $3f
    ld [bc], a                                    ; $4a9e: $02
    db $10                                        ; $4a9f: $10
    ld [bc], a                                    ; $4aa0: $02
    jr jr_0ef_4a25                                ; $4aa1: $18 $82

    inc e                                         ; $4aa3: $1c
    inc b                                         ; $4aa4: $04
    ld [bc], a                                    ; $4aa5: $02
    inc e                                         ; $4aa6: $1c
    add h                                         ; $4aa7: $84
    ld [$0818], sp                                ; $4aa8: $08 $18 $08
    jr jr_0ef_4ab1                                ; $4aab: $18 $04

    db $10                                        ; $4aad: $10
    ld [bc], a                                    ; $4aae: $02
    jr @-$72                                      ; $4aaf: $18 $8c

jr_0ef_4ab1:
    inc d                                         ; $4ab1: $14
    inc e                                         ; $4ab2: $1c
    ld d, $1a                                     ; $4ab3: $16 $1a
    add hl, de                                    ; $4ab5: $19
    rra                                           ; $4ab6: $1f
    dec d                                         ; $4ab7: $15
    rla                                           ; $4ab8: $17
    dec b                                         ; $4ab9: $05
    rlca                                          ; $4aba: $07
    and e                                         ; $4abb: $a3
    db $e3                                        ; $4abc: $e3

jr_0ef_4abd:
    ld [bc], a                                    ; $4abd: $02
    ld b, b                                       ; $4abe: $40
    ld [bc], a                                    ; $4abf: $02
    rlca                                          ; $4ac0: $07
    ld [bc], a                                    ; $4ac1: $02
    ld [bc], a                                    ; $4ac2: $02
    ld [bc], a                                    ; $4ac3: $02
    inc b                                         ; $4ac4: $04
    ld h, $00                                     ; $4ac5: $26 $00
    ld [bc], a                                    ; $4ac7: $02
    ld bc, $0012                                  ; $4ac8: $01 $12 $00
    rst $38                                       ; $4acb: $ff
    rrca                                          ; $4acc: $0f
    dec b                                         ; $4acd: $05
    push af                                       ; $4ace: $f5
    dec c                                         ; $4acf: $0d
    add sp, $02                                   ; $4ad0: $e8 $02
    db $e3                                        ; $4ad2: $e3
    ld hl, sp-$1d                                 ; $4ad3: $f8 $e3
    nop                                           ; $4ad5: $00
    rst $20                                       ; $4ad6: $e7
    dec b                                         ; $4ad7: $05
    di                                            ; $4ad8: $f3
    db $fc                                        ; $4ad9: $fc
    di                                            ; $4ada: $f3
    rst $38                                       ; $4adb: $ff
    ld [bc], a                                    ; $4adc: $02
    ld [bc], a                                    ; $4add: $02
    ld [bc], a                                    ; $4ade: $02
    ld de, $4f02                                  ; $4adf: $11 $02 $4f
    adc b                                         ; $4ae2: $88
    jr nc, @+$41                                  ; $4ae3: $30 $3f

    adc $f1                                       ; $4ae5: $ce $f1
    ld [hl], l                                    ; $4ae7: $75
    ld a, a                                       ; $4ae8: $7f
    dec sp                                        ; $4ae9: $3b
    ld a, $02                                     ; $4aea: $3e $02
    ld c, a                                       ; $4aec: $4f
    ld [bc], a                                    ; $4aed: $02
    inc de                                        ; $4aee: $13
    ld [bc], a                                    ; $4aef: $02
    ld bc, $0b02                                  ; $4af0: $01 $02 $0b
    ld [bc], a                                    ; $4af3: $02
    rlca                                          ; $4af4: $07
    add h                                         ; $4af5: $84
    dec c                                         ; $4af6: $0d
    rrca                                          ; $4af7: $0f
    ld [bc], a                                    ; $4af8: $02
    inc bc                                        ; $4af9: $03
    ld [bc], a                                    ; $4afa: $02
    rlca                                          ; $4afb: $07
    ld [bc], a                                    ; $4afc: $02
    ld bc, $4002                                  ; $4afd: $01 $02 $40
    ld [bc], a                                    ; $4b00: $02
    jr nz, jr_0ef_4b05                            ; $4b01: $20 $02

    db $e4                                        ; $4b03: $e4
    sub c                                         ; $4b04: $91

jr_0ef_4b05:
    jr @-$06                                      ; $4b05: $18 $f8

    sub $2e                                       ; $4b07: $d6 $2e
    ld l, c                                       ; $4b09: $69
    sub a                                         ; $4b0a: $97
    cp h                                          ; $4b0b: $bc
    ld c, e                                       ; $4b0c: $4b
    ld a, [hl]                                    ; $4b0d: $7e
    add l                                         ; $4b0e: $85
    sbc l                                         ; $4b0f: $9d
    ld [c], a                                     ; $4b10: $e2
    ld l, a                                       ; $4b11: $6f
    ldh a, [$b7]                                  ; $4b12: $f0 $b7
    ld sp, hl                                     ; $4b14: $f9
    rlc d                                         ; $4b15: $cb $02
    db $f4                                        ; $4b17: $f4
    add l                                         ; $4b18: $85
    ei                                            ; $4b19: $fb
    rra                                           ; $4b1a: $1f
    rst $38                                       ; $4b1b: $ff
    rst $30                                       ; $4b1c: $f7
    add sp, $02                                   ; $4b1d: $e8 $02
    ccf                                           ; $4b1f: $3f
    ld [bc], a                                    ; $4b20: $02
    db $10                                        ; $4b21: $10
    ld [bc], a                                    ; $4b22: $02
    ld [$1004], sp                                ; $4b23: $08 $04 $10
    adc [hl]                                      ; $4b26: $8e
    inc c                                         ; $4b27: $0c
    inc e                                         ; $4b28: $1c
    ld [$0a18], sp                                ; $4b29: $08 $18 $0a
    ld a, [de]                                    ; $4b2c: $1a
    inc c                                         ; $4b2d: $0c
    inc e                                         ; $4b2e: $1c
    ld a, [bc]                                    ; $4b2f: $0a
    ld e, $17                                     ; $4b30: $1e $17
    dec de                                        ; $4b32: $1b
    inc e                                         ; $4b33: $1c
    inc b                                         ; $4b34: $04
    ld [bc], a                                    ; $4b35: $02
    jr jr_0ef_4abd                                ; $4b36: $18 $85

    and h                                         ; $4b38: $a4
    db $e4                                        ; $4b39: $e4
    and b                                         ; $4b3a: $a0
    ld h, b                                       ; $4b3b: $60
    ld b, b                                       ; $4b3c: $40
    inc bc                                        ; $4b3d: $03
    ret nz                                        ; $4b3e: $c0

    ld [bc], a                                    ; $4b3f: $02
    dec b                                         ; $4b40: $05
    add d                                         ; $4b41: $82
    ld [bc], a                                    ; $4b42: $02
    inc bc                                        ; $4b43: $03
    inc bc                                        ; $4b44: $03
    rrca                                          ; $4b45: $0f
    adc c                                         ; $4b46: $89
    add hl, bc                                    ; $4b47: $09
    rrca                                          ; $4b48: $0f
    ld c, $09                                     ; $4b49: $0e $09
    rrca                                          ; $4b4b: $0f
    rla                                           ; $4b4c: $17
    add hl, de                                    ; $4b4d: $19
    dec d                                         ; $4b4e: $15
    dec de                                        ; $4b4f: $1b
    ld [bc], a                                    ; $4b50: $02
    rra                                           ; $4b51: $1f
    adc d                                         ; $4b52: $8a
    halt                                          ; $4b53: $76
    ld a, e                                       ; $4b54: $7b
    cp d                                          ; $4b55: $ba
    rst $30                                       ; $4b56: $f7
    sub a                                         ; $4b57: $97
    rst $38                                       ; $4b58: $ff
    or h                                          ; $4b59: $b4
    db $fc                                        ; $4b5a: $fc
    ld d, h                                       ; $4b5b: $54
    ld e, h                                       ; $4b5c: $5c
    ld [bc], a                                    ; $4b5d: $02
    ld [$0003], sp                                ; $4b5e: $08 $03 $00
    ld [bc], a                                    ; $4b61: $02
    inc b                                         ; $4b62: $04
    add e                                         ; $4b63: $83
    nop                                           ; $4b64: $00
    inc b                                         ; $4b65: $04
    nop                                           ; $4b66: $00
    ld [bc], a                                    ; $4b67: $02
    inc b                                         ; $4b68: $04
    add d                                         ; $4b69: $82
    rlca                                          ; $4b6a: $07
    ld bc, $0602                                  ; $4b6b: $01 $02 $06
    ld b, $00                                     ; $4b6e: $06 $00
    ld [bc], a                                    ; $4b70: $02
    inc b                                         ; $4b71: $04
    add [hl]                                      ; $4b72: $86
    ld b, $02                                     ; $4b73: $06 $02
    ld bc, $0507                                  ; $4b75: $01 $07 $05
    rlca                                          ; $4b78: $07
    ld [bc], a                                    ; $4b79: $02
    inc bc                                        ; $4b7a: $03
    inc b                                         ; $4b7b: $04
    nop                                           ; $4b7c: $00
    rst $38                                       ; $4b7d: $ff
    ld de, $f506                                  ; $4b7e: $11 $06 $f5
    dec c                                         ; $4b81: $0d
    add sp, $02                                   ; $4b82: $e8 $02
    or $fc                                        ; $4b84: $f6 $fc
    di                                            ; $4b86: $f3
    inc b                                         ; $4b87: $04
    rst $28                                       ; $4b88: $ef
    inc c                                         ; $4b89: $0c
    ld a, [c]                                     ; $4b8a: $f2
    inc d                                         ; $4b8b: $14
    or $16                                        ; $4b8c: $f6 $16
    rst $38                                       ; $4b8e: $ff
    inc c                                         ; $4b8f: $0c
    ld [bc], a                                    ; $4b90: $02
    ld bc, $0288                                  ; $4b91: $01 $88 $02
    inc bc                                        ; $4b94: $03
    rlca                                          ; $4b95: $07
    ld b, $07                                     ; $4b96: $06 $07
    inc b                                         ; $4b98: $04
    ld [$020f], sp                                ; $4b99: $08 $0f $02
    rra                                           ; $4b9c: $1f
    adc d                                         ; $4b9d: $8a
    halt                                          ; $4b9e: $76
    ld a, e                                       ; $4b9f: $7b
    cp d                                          ; $4ba0: $ba
    rst $30                                       ; $4ba1: $f7
    sub a                                         ; $4ba2: $97
    rst $38                                       ; $4ba3: $ff
    or h                                          ; $4ba4: $b4
    db $fc                                        ; $4ba5: $fc

jr_0ef_4ba6:
    ld d, h                                       ; $4ba6: $54
    ld e, h                                       ; $4ba7: $5c
    ld [bc], a                                    ; $4ba8: $02
    ld [$0008], sp                                ; $4ba9: $08 $08 $00
    ld [bc], a                                    ; $4bac: $02
    ld l, a                                       ; $4bad: $6f
    adc h                                         ; $4bae: $8c
    halt                                          ; $4baf: $76
    ld e, l                                       ; $4bb0: $5d
    rst $38                                       ; $4bb1: $ff
    ret nc                                        ; $4bb2: $d0

    ld a, b                                       ; $4bb3: $78
    rst $28                                       ; $4bb4: $ef
    sbc a                                         ; $4bb5: $9f
    ld [hl], a                                    ; $4bb6: $77
    cp h                                          ; $4bb7: $bc
    ld [hl], h                                    ; $4bb8: $74
    ld c, b                                       ; $4bb9: $48
    ret z                                         ; $4bba: $c8

    ld [bc], a                                    ; $4bbb: $02
    add b                                         ; $4bbc: $80
    ld [bc], a                                    ; $4bbd: $02
    nop                                           ; $4bbe: $00
    ld [bc], a                                    ; $4bbf: $02
    add b                                         ; $4bc0: $80
    add [hl]                                      ; $4bc1: $86
    ret nz                                        ; $4bc2: $c0

    ld b, b                                       ; $4bc3: $40
    jr nz, jr_0ef_4ba6                            ; $4bc4: $20 $e0

    and b                                         ; $4bc6: $a0
    ldh [rSC], a                                  ; $4bc7: $e0 $02
    ld h, b                                       ; $4bc9: $60
    inc b                                         ; $4bca: $04
    nop                                           ; $4bcb: $00
    ld [bc], a                                    ; $4bcc: $02
    ld [bc], a                                    ; $4bcd: $02
    ld [bc], a                                    ; $4bce: $02
    inc l                                         ; $4bcf: $2c
    sbc h                                         ; $4bd0: $9c
    dec de                                        ; $4bd1: $1b
    rla                                           ; $4bd2: $17
    ld [hl], $2e                                  ; $4bd3: $36 $2e
    add hl, sp                                    ; $4bd5: $39
    cpl                                           ; $4bd6: $2f
    push af                                       ; $4bd7: $f5
    jp c, $d8f7                                   ; $4bd8: $da $f7 $d8

    ld a, e                                       ; $4bdb: $7b
    db $dd                                        ; $4bdc: $dd
    di                                            ; $4bdd: $f3
    call c, $def9                                 ; $4bde: $dc $f9 $de
    ld e, l                                       ; $4be1: $5d
    ld a, [hl]                                    ; $4be2: $7e
    ld l, e                                       ; $4be3: $6b
    ld a, a                                       ; $4be4: $7f
    cp a                                          ; $4be5: $bf
    xor a                                         ; $4be6: $af
    dec d                                         ; $4be7: $15
    rra                                           ; $4be8: $1f
    rla                                           ; $4be9: $17
    rra                                           ; $4bea: $1f
    ld a, [hl+]                                   ; $4beb: $2a
    ld l, $02                                     ; $4bec: $2e $02
    ld b, b                                       ; $4bee: $40
    ld [bc], a                                    ; $4bef: $02
    sub b                                         ; $4bf0: $90
    sub b                                         ; $4bf1: $90
    ld h, b                                       ; $4bf2: $60
    ldh [rHDMA4], a                               ; $4bf3: $e0 $54
    or h                                          ; $4bf5: $b4
    xor c                                         ; $4bf6: $a9
    reti                                          ; $4bf7: $d9


    xor $16                                       ; $4bf8: $ee $16
    cp l                                          ; $4bfa: $bd
    ld b, e                                       ; $4bfb: $43
    ld a, a                                       ; $4bfc: $7f
    sbc c                                         ; $4bfd: $99
    ld b, c                                       ; $4bfe: $41
    rst $38                                       ; $4bff: $ff
    or $fe                                        ; $4c00: $f6 $fe
    ld [bc], a                                    ; $4c02: $02
    ret                                           ; $4c03: $c9


    ld [bc], a                                    ; $4c04: $02
    inc h                                         ; $4c05: $24
    ld [$0200], sp                                ; $4c06: $08 $00 $02
    ld [bc], a                                    ; $4c09: $02
    inc b                                         ; $4c0a: $04
    nop                                           ; $4c0b: $00
    ld [bc], a                                    ; $4c0c: $02
    inc bc                                        ; $4c0d: $03
    jr jr_0ef_4c10                                ; $4c0e: $18 $00

jr_0ef_4c10:
    ld [bc], a                                    ; $4c10: $02
    dec b                                         ; $4c11: $05
    ld e, $00                                     ; $4c12: $1e $00
    rst $38                                       ; $4c14: $ff
    rrca                                          ; $4c15: $0f
    dec b                                         ; $4c16: $05
    push af                                       ; $4c17: $f5
    dec c                                         ; $4c18: $0d
    add sp, $02                                   ; $4c19: $e8 $02
    jp hl                                         ; $4c1b: $e9


    rst $38                                       ; $4c1c: $ff
    ld [$eb07], a                                 ; $4c1d: $ea $07 $eb
    rrca                                          ; $4c20: $0f
    ld sp, hl                                     ; $4c21: $f9
    db $fc                                        ; $4c22: $fc
    ld sp, hl                                     ; $4c23: $f9
    rst $38                                       ; $4c24: $ff
    ld [bc], a                                    ; $4c25: $02
    dec b                                         ; $4c26: $05
    add [hl]                                      ; $4c27: $86
    ld [bc], a                                    ; $4c28: $02
    inc bc                                        ; $4c29: $03
    ld [bc], a                                    ; $4c2a: $02
    inc bc                                        ; $4c2b: $03
    ld b, $07                                     ; $4c2c: $06 $07
    inc b                                         ; $4c2e: $04
    ld bc, $0202                                  ; $4c2f: $01 $02 $02
    ld [bc], a                                    ; $4c32: $02
    nop                                           ; $4c33: $00
    ld [bc], a                                    ; $4c34: $02
    ld bc, $0702                                  ; $4c35: $01 $02 $07
    adc h                                         ; $4c38: $8c
    add hl, bc                                    ; $4c39: $09
    ld c, $76                                     ; $4c3a: $0e $76
    ld a, c                                       ; $4c3c: $79
    rst $30                                       ; $4c3d: $f7
    sbc e                                         ; $4c3e: $9b
    ld a, h                                       ; $4c3f: $7c
    ld l, h                                       ; $4c40: $6c
    ld e, [hl]                                    ; $4c41: $5e
    ld [hl], d                                    ; $4c42: $72
    ld c, h                                       ; $4c43: $4c
    ld a, h                                       ; $4c44: $7c
    ld [bc], a                                    ; $4c45: $02
    and h                                         ; $4c46: $a4
    ld [bc], a                                    ; $4c47: $02
    ld hl, sp-$6a                                 ; $4c48: $f8 $96
    xor a                                         ; $4c4a: $af
    rst $38                                       ; $4c4b: $ff
    ld [hl], h                                    ; $4c4c: $74
    rst $38                                       ; $4c4d: $ff
    ld l, h                                       ; $4c4e: $6c
    ei                                            ; $4c4f: $fb
    cp a                                          ; $4c50: $bf
    db $f4                                        ; $4c51: $f4
    cp a                                          ; $4c52: $bf
    ldh a, [$a3]                                  ; $4c53: $f0 $a3
    db $fc                                        ; $4c55: $fc
    ld e, h                                       ; $4c56: $5c
    di                                            ; $4c57: $f3
    push de                                       ; $4c58: $d5
    ei                                            ; $4c59: $fb
    ld [$16fe], a                                 ; $4c5a: $ea $fe $16
    ld e, $2b                                     ; $4c5d: $1e $2b
    cpl                                           ; $4c5f: $2f
    ld [bc], a                                    ; $4c60: $02
    ld b, $02                                     ; $4c61: $06 $02
    ld [$0002], sp                                ; $4c63: $08 $02 $00
    ld [bc], a                                    ; $4c66: $02
    xor b                                         ; $4c67: $a8
    ld [bc], a                                    ; $4c68: $02
    ld a, [c]                                     ; $4c69: $f2
    adc d                                         ; $4c6a: $8a
    inc c                                         ; $4c6b: $0c
    db $fc                                        ; $4c6c: $fc
    ld a, [c]                                     ; $4c6d: $f2
    ld c, $fb                                     ; $4c6e: $0e $fb
    ld b, a                                       ; $4c70: $47
    and h                                         ; $4c71: $a4
    ld a, h                                       ; $4c72: $7c
    ld a, [hl-]                                   ; $4c73: $3a
    ld a, [$c802]                                 ; $4c74: $fa $02 $c8
    ld [bc], a                                    ; $4c77: $02
    jr nz, jr_0ef_4c7c                            ; $4c78: $20 $02

    add b                                         ; $4c7a: $80
    inc c                                         ; $4c7b: $0c

jr_0ef_4c7c:
    nop                                           ; $4c7c: $00
    add h                                         ; $4c7d: $84
    rla                                           ; $4c7e: $17
    add hl, de                                    ; $4c7f: $19
    dec d                                         ; $4c80: $15
    dec de                                        ; $4c81: $1b
    ld [bc], a                                    ; $4c82: $02
    rra                                           ; $4c83: $1f
    adc d                                         ; $4c84: $8a
    halt                                          ; $4c85: $76
    ld a, e                                       ; $4c86: $7b
    cp d                                          ; $4c87: $ba
    rst $30                                       ; $4c88: $f7
    sub a                                         ; $4c89: $97
    rst $38                                       ; $4c8a: $ff
    or h                                          ; $4c8b: $b4
    db $fc                                        ; $4c8c: $fc
    ld d, h                                       ; $4c8d: $54
    ld e, h                                       ; $4c8e: $5c
    ld [bc], a                                    ; $4c8f: $02
    ld [$0014], sp                                ; $4c90: $08 $14 $00
    ld [bc], a                                    ; $4c93: $02
    inc b                                         ; $4c94: $04
    add [hl]                                      ; $4c95: $86
    ld b, $02                                     ; $4c96: $06 $02
    ld bc, $0507                                  ; $4c98: $01 $07 $05
    rlca                                          ; $4c9b: $07
    ld [bc], a                                    ; $4c9c: $02
    inc bc                                        ; $4c9d: $03
    stop                                          ; $4c9e: $10 $00
    rst $38                                       ; $4ca0: $ff
    rrca                                          ; $4ca1: $0f
    dec b                                         ; $4ca2: $05
    push af                                       ; $4ca3: $f5
    dec c                                         ; $4ca4: $0d
    add sp, $02                                   ; $4ca5: $e8 $02
    jp hl                                         ; $4ca7: $e9


    or $e9                                        ; $4ca8: $f6 $e9
    cp $ef                                        ; $4caa: $fe $ef
    ld bc, $faf9                                  ; $4cac: $01 $f9 $fa
    ld sp, hl                                     ; $4caf: $f9
    rst $38                                       ; $4cb0: $ff
    ld [bc], a                                    ; $4cb1: $02
    ld [bc], a                                    ; $4cb2: $02
    ld [bc], a                                    ; $4cb3: $02
    ld bc, $0502                                  ; $4cb4: $01 $02 $05
    ld [bc], a                                    ; $4cb7: $02
    inc bc                                        ; $4cb8: $03
    add d                                         ; $4cb9: $82
    ld a, [hl+]                                   ; $4cba: $2a
    dec hl                                        ; $4cbb: $2b
    ld [bc], a                                    ; $4cbc: $02
    rla                                           ; $4cbd: $17
    adc [hl]                                      ; $4cbe: $8e
    ld e, h                                       ; $4cbf: $5c
    ld e, a                                       ; $4cc0: $5f
    dec sp                                        ; $4cc1: $3b
    ld a, $dc                                     ; $4cc2: $3e $dc
    rst $38                                       ; $4cc4: $ff
    ld e, e                                       ; $4cc5: $5b
    ld a, [hl]                                    ; $4cc6: $7e
    cpl                                           ; $4cc7: $2f
    scf                                           ; $4cc8: $37
    rra                                           ; $4cc9: $1f
    dec de                                        ; $4cca: $1b
    daa                                           ; $4ccb: $27
    inc h                                         ; $4ccc: $24
    ld [bc], a                                    ; $4ccd: $02
    dec bc                                        ; $4cce: $0b
    add d                                         ; $4ccf: $82
    ld [bc], a                                    ; $4cd0: $02
    inc bc                                        ; $4cd1: $03
    ld [bc], a                                    ; $4cd2: $02
    ld bc, $9002                                  ; $4cd3: $01 $02 $90
    ld [bc], a                                    ; $4cd6: $02
    ldh [$93], a                                  ; $4cd7: $e0 $93
    sub b                                         ; $4cd9: $90
    ldh a, [$64]                                  ; $4cda: $f0 $64
    sub h                                         ; $4cdc: $94
    ld c, b                                       ; $4cdd: $48
    cp b                                          ; $4cde: $b8
    ld l, d                                       ; $4cdf: $6a
    sbc d                                         ; $4ce0: $9a
    or l                                          ; $4ce1: $b5
    call $977b                                    ; $4ce2: $cd $7b $97
    cp b                                          ; $4ce5: $b8
    ld h, a                                       ; $4ce6: $67
    halt                                          ; $4ce7: $76
    adc c                                         ; $4ce8: $89
    db $d3                                        ; $4ce9: $d3
    ld a, a                                       ; $4cea: $7f
    cp $02                                        ; $4ceb: $fe $02

jr_0ef_4ced:
    rst $38                                       ; $4ced: $ff
    add c                                         ; $4cee: $81
    inc bc                                        ; $4cef: $03
    ld [bc], a                                    ; $4cf0: $02
    db $fd                                        ; $4cf1: $fd
    add h                                         ; $4cf2: $84
    jr c, jr_0ef_4ced                             ; $4cf3: $38 $f8

    sub b                                         ; $4cf5: $90
    ldh a, [rSC]                                  ; $4cf6: $f0 $02
    inc b                                         ; $4cf8: $04
    ld [bc], a                                    ; $4cf9: $02
    nop                                           ; $4cfa: $00
    ld [bc], a                                    ; $4cfb: $02
    dec b                                         ; $4cfc: $05
    ld [bc], a                                    ; $4cfd: $02
    ld b, $84                                     ; $4cfe: $06 $84
    dec b                                         ; $4d00: $05
    rlca                                          ; $4d01: $07
    ld b, $02                                     ; $4d02: $06 $02
    ld [bc], a                                    ; $4d04: $02
    dec b                                         ; $4d05: $05
    ld [bc], a                                    ; $4d06: $02
    ld [bc], a                                    ; $4d07: $02
    inc b                                         ; $4d08: $04
    nop                                           ; $4d09: $00
    inc bc                                        ; $4d0a: $03
    ret nz                                        ; $4d0b: $c0

    add c                                         ; $4d0c: $81
    ld b, b                                       ; $4d0d: $40
    ld [bc], a                                    ; $4d0e: $02
    ldh [$8a], a                                  ; $4d0f: $e0 $8a
    ret nc                                        ; $4d11: $d0

    ld [hl], b                                    ; $4d12: $70
    ld e, b                                       ; $4d13: $58
    add sp, -$1c                                  ; $4d14: $e8 $e4
    db $fc                                        ; $4d16: $fc
    ld a, $26                                     ; $4d17: $3e $26
    ld e, $18                                     ; $4d19: $1e $18
    ld [bc], a                                    ; $4d1b: $02
    ld c, $8a                                     ; $4d1c: $0e $8a
    inc e                                         ; $4d1e: $1c
    ld e, $2e                                     ; $4d1f: $1e $2e
    inc a                                         ; $4d21: $3c
    inc h                                         ; $4d22: $24
    ld a, $2d                                     ; $4d23: $3e $2d
    ccf                                           ; $4d25: $3f
    dec d                                         ; $4d26: $15
    rla                                           ; $4d27: $17
    ld [bc], a                                    ; $4d28: $02
    ld [bc], a                                    ; $4d29: $02
    ld a, [de]                                    ; $4d2a: $1a
    nop                                           ; $4d2b: $00
    add d                                         ; $4d2c: $82
    dec b                                         ; $4d2d: $05
    rlca                                          ; $4d2e: $07
    ld [bc], a                                    ; $4d2f: $02
    inc bc                                        ; $4d30: $03
    stop                                          ; $4d31: $10 $00
    rst $38                                       ; $4d33: $ff
    dec c                                         ; $4d34: $0d
    inc b                                         ; $4d35: $04
    push af                                       ; $4d36: $f5
    dec c                                         ; $4d37: $0d
    add sp, $02                                   ; $4d38: $e8 $02
    db $ec                                        ; $4d3a: $ec
    push af                                       ; $4d3b: $f5
    db $eb                                        ; $4d3c: $eb
    db $fd                                        ; $4d3d: $fd
    di                                            ; $4d3e: $f3
    nop                                           ; $4d3f: $00
    ei                                            ; $4d40: $fb
    ld hl, sp+$02                                 ; $4d41: $f8 $02
    ld bc, $0002                                  ; $4d43: $01 $02 $00
    ld [bc], a                                    ; $4d46: $02
    dec b                                         ; $4d47: $05
    ld [bc], a                                    ; $4d48: $02
    rlca                                          ; $4d49: $07
    sub b                                         ; $4d4a: $90
    ld l, $2f                                     ; $4d4b: $2e $2f
    sbc e                                         ; $4d4d: $9b
    sbc [hl]                                      ; $4d4e: $9e
    ld l, b                                       ; $4d4f: $68
    ld a, a                                       ; $4d50: $7f
    or e                                          ; $4d51: $b3
    cp $a9                                        ; $4d52: $fe $a9
    rst $38                                       ; $4d54: $ff
    ld c, l                                       ; $4d55: $4d
    ld a, [hl]                                    ; $4d56: $7e
    or a                                          ; $4d57: $b7
    cp a                                          ; $4d58: $bf
    dec c                                         ; $4d59: $0d
    ld a, [bc]                                    ; $4d5a: $0a
    ld [bc], a                                    ; $4d5b: $02
    rla                                           ; $4d5c: $17
    ld [bc], a                                    ; $4d5d: $02
    dec b                                         ; $4d5e: $05
    inc b                                         ; $4d5f: $04
    nop                                           ; $4d60: $00
    ld [bc], a                                    ; $4d61: $02
    ld b, b                                       ; $4d62: $40
    ld [bc], a                                    ; $4d63: $02
    ld l, b                                       ; $4d64: $68
    sbc h                                         ; $4d65: $9c
    or b                                          ; $4d66: $b0
    ldh a, [rHDMA4]                               ; $4d67: $f0 $54
    or h                                          ; $4d69: $b4
    ld l, b                                       ; $4d6a: $68
    sbc b                                         ; $4d6b: $98
    call c, Call_0ef_6a3c                         ; $4d6c: $dc $3c $6a
    cp d                                          ; $4d6f: $ba
    call nc, Call_0ef_762c                        ; $4d70: $d4 $2c $76
    adc [hl]                                      ; $4d73: $8e
    xor c                                         ; $4d74: $a9
    ld d, a                                       ; $4d75: $57
    ld e, l                                       ; $4d76: $5d
    and e                                         ; $4d77: $a3
    db $d3                                        ; $4d78: $d3
    rst $28                                       ; $4d79: $ef
    cp $3d                                        ; $4d7a: $fe $3d
    ei                                            ; $4d7c: $fb
    rst $00                                       ; $4d7d: $c7
    db $fd                                        ; $4d7e: $fd
    dec a                                         ; $4d7f: $3d
    db $fc                                        ; $4d80: $fc
    call nz, $0402                                ; $4d81: $c4 $02 $04
    ld [bc], a                                    ; $4d84: $02
    ld [bc], a                                    ; $4d85: $02
    ld [bc], a                                    ; $4d86: $02
    inc b                                         ; $4d87: $04
    add d                                         ; $4d88: $82
    inc bc                                        ; $4d89: $03
    rlca                                          ; $4d8a: $07
    ld [bc], a                                    ; $4d8b: $02
    ld b, $02                                     ; $4d8c: $06 $02
    nop                                           ; $4d8e: $00
    ld [bc], a                                    ; $4d8f: $02
    inc b                                         ; $4d90: $04
    ld [bc], a                                    ; $4d91: $02
    nop                                           ; $4d92: $00
    ld [bc], a                                    ; $4d93: $02
    ldh a, [$8a]                                  ; $4d94: $f0 $8a
    ld l, b                                       ; $4d96: $68
    cp b                                          ; $4d97: $b8
    xor h                                         ; $4d98: $ac
    ld [hl], h                                    ; $4d99: $74
    ld [hl], d                                    ; $4d9a: $72
    cp $4a                                        ; $4d9b: $fe $4a
    adc $46                                       ; $4d9d: $ce $46
    add $02                                       ; $4d9f: $c6 $02
    add b                                         ; $4da1: $80
    ld [bc], a                                    ; $4da2: $02
    nop                                           ; $4da3: $00
    ld [bc], a                                    ; $4da4: $02
    inc bc                                        ; $4da5: $03
    ld [bc], a                                    ; $4da6: $02
    rrca                                          ; $4da7: $0f
    add [hl]                                      ; $4da8: $86
    rla                                           ; $4da9: $17
    rra                                           ; $4daa: $1f
    inc de                                        ; $4dab: $13
    rra                                           ; $4dac: $1f
    dec d                                         ; $4dad: $15
    dec e                                         ; $4dae: $1d
    ld [bc], a                                    ; $4daf: $02
    add hl, bc                                    ; $4db0: $09
    inc d                                         ; $4db1: $14
    nop                                           ; $4db2: $00
    rst $38                                       ; $4db3: $ff
    dec c                                         ; $4db4: $0d
    inc b                                         ; $4db5: $04
    push af                                       ; $4db6: $f5
    dec c                                         ; $4db7: $0d
    add sp, $02                                   ; $4db8: $e8 $02
    rst $28                                       ; $4dba: $ef
    push af                                       ; $4dbb: $f5
    xor $fd                                       ; $4dbc: $ee $fd
    push af                                       ; $4dbe: $f5
    nop                                           ; $4dbf: $00
    cp $f8                                        ; $4dc0: $fe $f8
    ld [bc], a                                    ; $4dc2: $02
    ld [bc], a                                    ; $4dc3: $02
    ld [bc], a                                    ; $4dc4: $02
    ld [$5702], sp                                ; $4dc5: $08 $02 $57
    adc [hl]                                      ; $4dc8: $8e
    inc a                                         ; $4dc9: $3c
    ccf                                           ; $4dca: $3f
    ld e, e                                       ; $4dcb: $5b
    ld a, h                                       ; $4dcc: $7c
    db $dd                                        ; $4dcd: $dd
    cp $25                                        ; $4dce: $fe $25
    ccf                                           ; $4dd0: $3f
    ld e, $1b                                     ; $4dd1: $1e $1b
    dec h                                         ; $4dd3: $25
    daa                                           ; $4dd4: $27
    inc bc                                        ; $4dd5: $03
    ld [bc], a                                    ; $4dd6: $02
    ld [bc], a                                    ; $4dd7: $02
    dec b                                         ; $4dd8: $05
    ld [bc], a                                    ; $4dd9: $02
    ld bc, $0002                                  ; $4dda: $01 $02 $00
    ld [bc], a                                    ; $4ddd: $02
    inc bc                                        ; $4dde: $03
    add h                                         ; $4ddf: $84
    dec b                                         ; $4de0: $05
    rlca                                          ; $4de1: $07
    inc b                                         ; $4de2: $04
    rlca                                          ; $4de3: $07
    ld [bc], a                                    ; $4de4: $02
    sub b                                         ; $4de5: $90
    ld [bc], a                                    ; $4de6: $02
    ld h, b                                       ; $4de7: $60
    sbc h                                         ; $4de8: $9c
    sbc b                                         ; $4de9: $98
    ld hl, sp+$70                                 ; $4dea: $f8 $70
    sub b                                         ; $4dec: $90
    inc [hl]                                      ; $4ded: $34
    call nc, $88f8                                ; $4dee: $d4 $f8 $88
    or l                                          ; $4df1: $b5
    ld c, l                                       ; $4df2: $4d
    ld a, d                                       ; $4df3: $7a

jr_0ef_4df4:
    sub [hl]                                      ; $4df4: $96
    cp c                                          ; $4df5: $b9
    rst $20                                       ; $4df6: $e7
    jp $beff                                      ; $4df7: $c3 $ff $be


    ld a, l                                       ; $4dfa: $7d
    rst $18                                       ; $4dfb: $df
    db $e3                                        ; $4dfc: $e3
    ld a, [hl]                                    ; $4dfd: $7e
    cp $dc                                        ; $4dfe: $fe $dc
    db $fc                                        ; $4e00: $fc
    jp c, $ebee                                   ; $4e01: $da $ee $eb

    db $dd                                        ; $4e04: $dd
    inc b                                         ; $4e05: $04
    inc b                                         ; $4e06: $04
    add d                                         ; $4e07: $82
    ld [bc], a                                    ; $4e08: $02
    ld b, $02                                     ; $4e09: $06 $02
    dec b                                         ; $4e0b: $05
    ld [bc], a                                    ; $4e0c: $02
    nop                                           ; $4e0d: $00
    ld [bc], a                                    ; $4e0e: $02
    inc b                                         ; $4e0f: $04
    ld b, $00                                     ; $4e10: $06 $00
    add h                                         ; $4e12: $84
    db $e4                                        ; $4e13: $e4
    db $fc                                        ; $4e14: $fc
    sub h                                         ; $4e15: $94
    sbc h                                         ; $4e16: $9c
    ld [bc], a                                    ; $4e17: $02
    adc h                                         ; $4e18: $8c
    ld [$8600], sp                                ; $4e19: $08 $00 $86
    ld b, $07                                     ; $4e1c: $06 $07
    ld a, [hl+]                                   ; $4e1e: $2a
    dec sp                                        ; $4e1f: $3b
    ld [de], a                                    ; $4e20: $12
    inc de                                        ; $4e21: $13
    ld [bc], a                                    ; $4e22: $02
    ld bc, $0018                                  ; $4e23: $01 $18 $00
    rst $38                                       ; $4e26: $ff
    dec c                                         ; $4e27: $0d
    inc b                                         ; $4e28: $04
    push af                                       ; $4e29: $f5
    dec c                                         ; $4e2a: $0d
    add sp, $02                                   ; $4e2b: $e8 $02
    db $ed                                        ; $4e2d: $ed
    ld hl, sp-$15                                 ; $4e2e: $f8 $eb
    nop                                           ; $4e30: $00
    ld a, [c]                                     ; $4e31: $f2
    inc bc                                        ; $4e32: $03
    ei                                            ; $4e33: $fb
    ei                                            ; $4e34: $fb
    ld [bc], a                                    ; $4e35: $02
    ld bc, $0a02                                  ; $4e36: $01 $02 $0a
    ld [bc], a                                    ; $4e39: $02
    daa                                           ; $4e3a: $27
    adc [hl]                                      ; $4e3b: $8e
    inc a                                         ; $4e3c: $3c
    ccf                                           ; $4e3d: $3f
    db $db                                        ; $4e3e: $db
    rst $38                                       ; $4e3f: $ff
    ld e, h                                       ; $4e40: $5c
    ld a, a                                       ; $4e41: $7f
    and [hl]                                      ; $4e42: $a6
    cp a                                          ; $4e43: $bf
    ld a, [de]                                    ; $4e44: $1a
    rra                                           ; $4e45: $1f
    cpl                                           ; $4e46: $2f
    dec l                                         ; $4e47: $2d
    ld a, [bc]                                    ; $4e48: $0a
    dec bc                                        ; $4e49: $0b
    ld [bc], a                                    ; $4e4a: $02
    rlca                                          ; $4e4b: $07
    add d                                         ; $4e4c: $82
    inc b                                         ; $4e4d: $04
    rlca                                          ; $4e4e: $07
    inc bc                                        ; $4e4f: $03
    inc bc                                        ; $4e50: $03
    add c                                         ; $4e51: $81
    ld [bc], a                                    ; $4e52: $02
    ld [bc], a                                    ; $4e53: $02
    ld bc, $0702                                  ; $4e54: $01 $02 $07
    ld [bc], a                                    ; $4e57: $02
    ld c, b                                       ; $4e58: $48
    ld [bc], a                                    ; $4e59: $02
    jr nc, jr_0ef_4df4                            ; $4e5a: $30 $98

    ld c, h                                       ; $4e5c: $4c
    ld a, h                                       ; $4e5d: $7c
    xor b                                         ; $4e5e: $a8
    ret c                                         ; $4e5f: $d8

    ld a, [hl+]                                   ; $4e60: $2a
    jp c, $9c74                                   ; $4e61: $da $74 $9c

    inc sp                                        ; $4e64: $33
    rst $08                                       ; $4e65: $cf
    ld [$bd96], a                                 ; $4e66: $ea $96 $bd
    ld b, e                                       ; $4e69: $43
    ld e, [hl]                                    ; $4e6a: $5e
    and l                                         ; $4e6b: $a5
    jp hl                                         ; $4e6c: $e9


    rst $30                                       ; $4e6d: $f7
    rst $38                                       ; $4e6e: $ff
    ld e, $ef                                     ; $4e6f: $1e $ef
    pop af                                        ; $4e71: $f1
    cp [hl]                                       ; $4e72: $be
    cp $02                                        ; $4e73: $fe $02
    db $e4                                        ; $4e75: $e4
    add d                                         ; $4e76: $82
    ldh [rNR41], a                                ; $4e77: $e0 $20
    ld [bc], a                                    ; $4e79: $02
    inc b                                         ; $4e7a: $04
    ld [bc], a                                    ; $4e7b: $02
    ld bc, $0602                                  ; $4e7c: $01 $02 $06
    add h                                         ; $4e7f: $84
    dec b                                         ; $4e80: $05
    rlca                                          ; $4e81: $07
    ld [bc], a                                    ; $4e82: $02
    ld b, $02                                     ; $4e83: $06 $02
    inc b                                         ; $4e85: $04
    ld [bc], a                                    ; $4e86: $02
    ld [bc], a                                    ; $4e87: $02
    inc b                                         ; $4e88: $04
    nop                                           ; $4e89: $00
    ld [bc], a                                    ; $4e8a: $02
    add b                                         ; $4e8b: $80
    adc b                                         ; $4e8c: $88
    ld b, b                                       ; $4e8d: $40
    ret nz                                        ; $4e8e: $c0

    ld h, b                                       ; $4e8f: $60
    and b                                         ; $4e90: $a0
    sub b                                         ; $4e91: $90
    ldh a, [$50]                                  ; $4e92: $f0 $50
    ld [hl], b                                    ; $4e94: $70
    ld [bc], a                                    ; $4e95: $02
    jr nc, jr_0ef_4e9a                            ; $4e96: $30 $02

    nop                                           ; $4e98: $00
    ld [bc], a                                    ; $4e99: $02

jr_0ef_4e9a:
    rlca                                          ; $4e9a: $07
    adc d                                         ; $4e9b: $8a
    inc bc                                        ; $4e9c: $03
    dec b                                         ; $4e9d: $05
    ld e, l                                       ; $4e9e: $5d
    ld a, e                                       ; $4e9f: $7b
    ld c, e                                       ; $4ea0: $4b
    ld a, a                                       ; $4ea1: $7f
    ld e, d                                       ; $4ea2: $5a
    ld a, [hl]                                    ; $4ea3: $7e
    ld a, [hl+]                                   ; $4ea4: $2a
    ld l, $02                                     ; $4ea5: $2e $02
    inc b                                         ; $4ea7: $04
    ld [de], a                                    ; $4ea8: $12
    nop                                           ; $4ea9: $00
    rst $38                                       ; $4eaa: $ff
    add hl, bc                                    ; $4eab: $09
    ld [bc], a                                    ; $4eac: $02
    pop af                                        ; $4ead: $f1
    nop                                           ; $4eae: $00
    ld a, [$fb07]                                 ; $4eaf: $fa $07 $fb
    db $f4                                        ; $4eb2: $f4
    ei                                            ; $4eb3: $fb
    ld sp, hl                                     ; $4eb4: $f9
    add h                                         ; $4eb5: $84
    jr nz, jr_0ef_4ef0                            ; $4eb6: $20 $38

    ld e, h                                       ; $4eb8: $5c
    ld h, d                                       ; $4eb9: $62
    ld b, $00                                     ; $4eba: $06 $00
    ld [bc], a                                    ; $4ebc: $02
    ld bc, $0006                                  ; $4ebd: $01 $06 $00
    add h                                         ; $4ec0: $84
    ld b, b                                       ; $4ec1: $40
    ld [hl], b                                    ; $4ec2: $70
    cp b                                          ; $4ec3: $b8
    call nz, Call_000_0012                        ; $4ec4: $c4 $12 $00
    add h                                         ; $4ec7: $84
    db $10                                        ; $4ec8: $10
    inc e                                         ; $4ec9: $1c
    ld c, $11                                     ; $4eca: $0e $11
    inc d                                         ; $4ecc: $14
    nop                                           ; $4ecd: $00
    rst $38                                       ; $4ece: $ff
    add hl, bc                                    ; $4ecf: $09
    ld [bc], a                                    ; $4ed0: $02
    pop af                                        ; $4ed1: $f1
    nop                                           ; $4ed2: $00
    ld a, [$fa07]                                 ; $4ed3: $fa $07 $fa
    db $f4                                        ; $4ed6: $f4
    ld a, [$84fa]                                 ; $4ed7: $fa $fa $84
    ld b, b                                       ; $4eda: $40
    ld [hl], b                                    ; $4edb: $70
    cp b                                          ; $4edc: $b8
    call nz, Call_000_0012                        ; $4edd: $c4 $12 $00
    add h                                         ; $4ee0: $84
    ld b, b                                       ; $4ee1: $40
    ld [hl], b                                    ; $4ee2: $70
    cp b                                          ; $4ee3: $b8
    call nz, RST_10                               ; $4ee4: $c4 $10 $00
    add h                                         ; $4ee7: $84
    db $10                                        ; $4ee8: $10
    inc e                                         ; $4ee9: $1c
    ld l, $31                                     ; $4eea: $2e $31
    ld [de], a                                    ; $4eec: $12
    nop                                           ; $4eed: $00
    rst $38                                       ; $4eee: $ff
    rrca                                          ; $4eef: $0f

jr_0ef_4ef0:
    dec b                                         ; $4ef0: $05
    or $0a                                        ; $4ef1: $f6 $0a
    db $ec                                        ; $4ef3: $ec
    ld bc, $f3f0                                  ; $4ef4: $01 $f0 $f3
    pop af                                        ; $4ef7: $f1
    ei                                            ; $4ef8: $fb
    ldh a, [$03]                                  ; $4ef9: $f0 $03

jr_0ef_4efb:
    pop af                                        ; $4efb: $f1
    ld [$f300], sp                                ; $4efc: $08 $00 $f3
    ld [bc], a                                    ; $4eff: $02
    ld bc, $0285                                  ; $4f00: $01 $85 $02
    inc bc                                        ; $4f03: $03
    ld [bc], a                                    ; $4f04: $02
    inc bc                                        ; $4f05: $03
    ld [bc], a                                    ; $4f06: $02
    inc bc                                        ; $4f07: $03
    inc bc                                        ; $4f08: $03
    add d                                         ; $4f09: $82
    ld [bc], a                                    ; $4f0a: $02
    inc bc                                        ; $4f0b: $03
    ld [bc], a                                    ; $4f0c: $02
    rlca                                          ; $4f0d: $07
    sub d                                         ; $4f0e: $92
    ld e, $1f                                     ; $4f0f: $1e $1f
    dec l                                         ; $4f11: $2d
    ccf                                           ; $4f12: $3f
    ld e, $1f                                     ; $4f13: $1e $1f
    dec bc                                        ; $4f15: $0b
    rrca                                          ; $4f16: $0f
    ld c, $0f                                     ; $4f17: $0e $0f
    ld e, $1f                                     ; $4f19: $1e $1f
    ld a, $3f                                     ; $4f1b: $3e $3f
    rst $38                                       ; $4f1d: $ff
    rst $08                                       ; $4f1e: $cf
    ccf                                           ; $4f1f: $3f
    cpl                                           ; $4f20: $2f
    ld [bc], a                                    ; $4f21: $02
    add c                                         ; $4f22: $81
    add d                                         ; $4f23: $82
    ld b, d                                       ; $4f24: $42
    jp $ff02                                      ; $4f25: $c3 $02 $ff


    sbc b                                         ; $4f28: $98
    and $ff                                       ; $4f29: $e6 $ff
    add c                                         ; $4f2b: $81
    rst $38                                       ; $4f2c: $ff
    ret nc                                        ; $4f2d: $d0

    rst $38                                       ; $4f2e: $ff
    inc b                                         ; $4f2f: $04
    rst $38                                       ; $4f30: $ff
    ld b, e                                       ; $4f31: $43
    rst $38                                       ; $4f32: $ff
    jp nz, Jump_000_11ff                          ; $4f33: $c2 $ff $11

    rst $38                                       ; $4f36: $ff
    dec c                                         ; $4f37: $0d
    rst $38                                       ; $4f38: $ff
    adc e                                         ; $4f39: $8b
    rst $38                                       ; $4f3a: $ff
    call Call_000_1aff                            ; $4f3b: $cd $ff $1a
    rst $38                                       ; $4f3e: $ff
    rst $28                                       ; $4f3f: $ef
    rst $38                                       ; $4f40: $ff
    ld [bc], a                                    ; $4f41: $02
    ld hl, sp+$02                                 ; $4f42: $f8 $02
    add b                                         ; $4f44: $80
    add l                                         ; $4f45: $85
    ld b, b                                       ; $4f46: $40
    ret nz                                        ; $4f47: $c0

    ld b, b                                       ; $4f48: $40
    ret nz                                        ; $4f49: $c0

    ld b, b                                       ; $4f4a: $40
    inc bc                                        ; $4f4b: $03
    ret nz                                        ; $4f4c: $c0

    sub h                                         ; $4f4d: $94
    and c                                         ; $4f4e: $a1
    pop hl                                        ; $4f4f: $e1
    jp nc, Jump_0ef_76f3                          ; $4f50: $d2 $f3 $76

    rst $30                                       ; $4f53: $f7
    ld l, a                                       ; $4f54: $6f
    db $fd                                        ; $4f55: $fd
    ccf                                           ; $4f56: $3f
    ld hl, sp+$3f                                 ; $4f57: $f8 $3f
    ld [c], a                                     ; $4f59: $e2
    cp a                                          ; $4f5a: $bf
    rst $28                                       ; $4f5b: $ef
    ccf                                           ; $4f5c: $3f
    db $f4                                        ; $4f5d: $f4
    ld a, a                                       ; $4f5e: $7f
    ld a, [$efff]                                 ; $4f5f: $fa $ff $ef
    ld [bc], a                                    ; $4f62: $02
    db $fc                                        ; $4f63: $fc
    ld [bc], a                                    ; $4f64: $02
    inc c                                         ; $4f65: $0c
    ld [bc], a                                    ; $4f66: $02
    db $10                                        ; $4f67: $10
    ld [bc], a                                    ; $4f68: $02
    ld d, $02                                     ; $4f69: $16 $02
    add hl, de                                    ; $4f6b: $19
    ld [bc], a                                    ; $4f6c: $02
    jr jr_0ef_4efb                                ; $4f6d: $18 $8c

    inc c                                         ; $4f6f: $0c
    inc e                                         ; $4f70: $1c
    ld c, $1a                                     ; $4f71: $0e $1a
    ld e, $12                                     ; $4f73: $1e $12
    inc e                                         ; $4f75: $1c
    inc b                                         ; $4f76: $04
    jr @+$0a                                      ; $4f77: $18 $08

    jr jr_0ef_4f83                                ; $4f79: $18 $08

    inc b                                         ; $4f7b: $04
    db $10                                        ; $4f7c: $10
    ld b, $00                                     ; $4f7d: $06 $00
    ld [bc], a                                    ; $4f7f: $02
    ld bc, $001e                                  ; $4f80: $01 $1e $00

jr_0ef_4f83:
    rst $38                                       ; $4f83: $ff
    ld de, $f606                                  ; $4f84: $11 $06 $f6
    ld a, [bc]                                    ; $4f87: $0a
    db $ec                                        ; $4f88: $ec
    ld bc, $f3ef                                  ; $4f89: $01 $ef $f3
    ldh a, [$fb]                                  ; $4f8c: $f0 $fb
    rst $28                                       ; $4f8e: $ef
    inc bc                                        ; $4f8f: $03
    ldh a, [$08]                                  ; $4f90: $f0 $08
    rst $38                                       ; $4f92: $ff
    di                                            ; $4f93: $f3

jr_0ef_4f94:
    rst $38                                       ; $4f94: $ff
    nop                                           ; $4f95: $00
    ld [bc], a                                    ; $4f96: $02
    ld bc, $0285                                  ; $4f97: $01 $85 $02
    inc bc                                        ; $4f9a: $03
    ld [bc], a                                    ; $4f9b: $02
    inc bc                                        ; $4f9c: $03
    ld [bc], a                                    ; $4f9d: $02
    inc bc                                        ; $4f9e: $03
    inc bc                                        ; $4f9f: $03
    add d                                         ; $4fa0: $82
    ld [bc], a                                    ; $4fa1: $02
    inc bc                                        ; $4fa2: $03
    ld [bc], a                                    ; $4fa3: $02
    rlca                                          ; $4fa4: $07
    sub d                                         ; $4fa5: $92
    ld e, $1f                                     ; $4fa6: $1e $1f
    dec l                                         ; $4fa8: $2d
    ccf                                           ; $4fa9: $3f
    ld e, $1f                                     ; $4faa: $1e $1f
    dec bc                                        ; $4fac: $0b
    rrca                                          ; $4fad: $0f
    ld c, $0f                                     ; $4fae: $0e $0f
    ld c, $0f                                     ; $4fb0: $0e $0f
    ld e, $1f                                     ; $4fb2: $1e $1f
    ccf                                           ; $4fb4: $3f
    scf                                           ; $4fb5: $37
    rst $38                                       ; $4fb6: $ff
    ret                                           ; $4fb7: $c9


    ld [bc], a                                    ; $4fb8: $02
    add c                                         ; $4fb9: $81
    add d                                         ; $4fba: $82
    ld b, d                                       ; $4fbb: $42
    jp $ff02                                      ; $4fbc: $c3 $02 $ff


    sbc b                                         ; $4fbf: $98
    and $ff                                       ; $4fc0: $e6 $ff
    add c                                         ; $4fc2: $81
    rst $38                                       ; $4fc3: $ff
    ret nc                                        ; $4fc4: $d0

    rst $38                                       ; $4fc5: $ff
    inc b                                         ; $4fc6: $04
    rst $38                                       ; $4fc7: $ff
    ld b, e                                       ; $4fc8: $43
    rst $38                                       ; $4fc9: $ff
    jp nz, Jump_000_11ff                          ; $4fca: $c2 $ff $11

    rst $38                                       ; $4fcd: $ff
    dec c                                         ; $4fce: $0d
    rst $38                                       ; $4fcf: $ff
    adc e                                         ; $4fd0: $8b
    rst $38                                       ; $4fd1: $ff
    call Call_000_1aff                            ; $4fd2: $cd $ff $1a
    rst $38                                       ; $4fd5: $ff
    rst $28                                       ; $4fd6: $ef
    rst $38                                       ; $4fd7: $ff
    ld [bc], a                                    ; $4fd8: $02
    ei                                            ; $4fd9: $fb
    ld [bc], a                                    ; $4fda: $02
    add b                                         ; $4fdb: $80
    add l                                         ; $4fdc: $85
    ld b, b                                       ; $4fdd: $40
    ret nz                                        ; $4fde: $c0

    ld b, b                                       ; $4fdf: $40
    ret nz                                        ; $4fe0: $c0

    ld b, b                                       ; $4fe1: $40
    inc bc                                        ; $4fe2: $03
    ret nz                                        ; $4fe3: $c0

    sub [hl]                                      ; $4fe4: $96
    and c                                         ; $4fe5: $a1
    pop hl                                        ; $4fe6: $e1
    jp nc, Jump_0ef_76f3                          ; $4fe7: $d2 $f3 $76

    rst $30                                       ; $4fea: $f7
    ld l, a                                       ; $4feb: $6f
    db $fd                                        ; $4fec: $fd
    ccf                                           ; $4fed: $3f
    ld hl, sp+$3f                                 ; $4fee: $f8 $3f
    ld [c], a                                     ; $4ff0: $e2
    cp a                                          ; $4ff1: $bf
    rst $28                                       ; $4ff2: $ef
    ccf                                           ; $4ff3: $3f
    db $f4                                        ; $4ff4: $f4
    ld a, a                                       ; $4ff5: $7f
    ld [$fcff], a                                 ; $4ff6: $ea $ff $fc
    rst $38                                       ; $4ff9: $ff
    db $d3                                        ; $4ffa: $d3
    ld [bc], a                                    ; $4ffb: $02
    ld b, $02                                     ; $4ffc: $06 $02
    ld [$1002], sp                                ; $4ffe: $08 $02 $10
    ld [bc], a                                    ; $5001: $02
    rra                                           ; $5002: $1f
    ld [bc], a                                    ; $5003: $02
    jr jr_0ef_4f94                                ; $5004: $18 $8e

    inc c                                         ; $5006: $0c
    inc e                                         ; $5007: $1c
    ld c, $1a                                     ; $5008: $0e $1a
    ld e, $12                                     ; $500a: $1e $12
    inc e                                         ; $500c: $1c
    inc b                                         ; $500d: $04
    jr jr_0ef_5018                                ; $500e: $18 $08

    jr jr_0ef_501a                                ; $5010: $18 $08

    jr jr_0ef_501c                                ; $5012: $18 $08

    inc b                                         ; $5014: $04
    db $10                                        ; $5015: $10
    ld [bc], a                                    ; $5016: $02

jr_0ef_5017:
    nop                                           ; $5017: $00

jr_0ef_5018:
    ld [bc], a                                    ; $5018: $02
    add b                                         ; $5019: $80

jr_0ef_501a:
    add d                                         ; $501a: $82
    ccf                                           ; $501b: $3f

jr_0ef_501c:
    cpl                                           ; $501c: $2f
    ld e, $00                                     ; $501d: $1e $00
    ld [bc], a                                    ; $501f: $02
    dec c                                         ; $5020: $0d
    ld e, $00                                     ; $5021: $1e $00
    rst $38                                       ; $5023: $ff
    ld de, $f606                                  ; $5024: $11 $06 $f6
    ld a, [bc]                                    ; $5027: $0a
    db $ec                                        ; $5028: $ec
    ld bc, $f1f4                                  ; $5029: $01 $f4 $f1
    xor $f9                                       ; $502c: $ee $f9
    cp $f9                                        ; $502e: $fe $f9
    xor $01                                       ; $5030: $ee $01
    cp $01                                        ; $5032: $fe $01
    rst $28                                       ; $5034: $ef
    add hl, bc                                    ; $5035: $09
    ld [bc], a                                    ; $5036: $02
    ld bc, $0702                                  ; $5037: $01 $02 $07
    add d                                         ; $503a: $82
    dec bc                                        ; $503b: $0b
    rrca                                          ; $503c: $0f
    ld [bc], a                                    ; $503d: $02
    rlca                                          ; $503e: $07
    add c                                         ; $503f: $81
    ld [bc], a                                    ; $5040: $02
    dec b                                         ; $5041: $05
    inc bc                                        ; $5042: $03
    ld [bc], a                                    ; $5043: $02
    ld bc, $0702                                  ; $5044: $01 $02 $07
    ld [bc], a                                    ; $5047: $02
    rrca                                          ; $5048: $0f
    add h                                         ; $5049: $84
    ccf                                           ; $504a: $3f
    ld [hl-], a                                   ; $504b: $32
    rrca                                          ; $504c: $0f
    dec bc                                        ; $504d: $0b
    ld [$0200], sp                                ; $504e: $08 $00 $02
    ld b, b                                       ; $5051: $40
    sbc l                                         ; $5052: $9d
    and b                                         ; $5053: $a0
    ldh [$90], a                                  ; $5054: $e0 $90
    ldh a, [$bf]                                  ; $5056: $f0 $bf
    rst $38                                       ; $5058: $ff
    ld sp, hl                                     ; $5059: $f9
    rst $38                                       ; $505a: $ff
    and b                                         ; $505b: $a0
    rst $38                                       ; $505c: $ff
    db $f4                                        ; $505d: $f4
    rst $38                                       ; $505e: $ff
    add c                                         ; $505f: $81
    rst $38                                       ; $5060: $ff
    ld d, b                                       ; $5061: $50
    rst $38                                       ; $5062: $ff
    or b                                          ; $5063: $b0
    rst $38                                       ; $5064: $ff
    call nz, $83ff                                ; $5065: $c4 $ff $83
    rst $38                                       ; $5068: $ff
    and d                                         ; $5069: $a2
    rst $38                                       ; $506a: $ff
    or e                                          ; $506b: $b3
    rst $38                                       ; $506c: $ff
    add $ff                                       ; $506d: $c6 $ff
    ei                                            ; $506f: $fb
    ld [bc], a                                    ; $5070: $02
    rst $38                                       ; $5071: $ff
    add e                                         ; $5072: $83
    ld a, a                                       ; $5073: $7f
    sbc $d6                                       ; $5074: $de $d6
    inc e                                         ; $5076: $1c
    nop                                           ; $5077: $00
    ld [bc], a                                    ; $5078: $02
    jr nz, jr_0ef_5017                            ; $5079: $20 $9c

    ld d, b                                       ; $507b: $50
    ld [hl], b                                    ; $507c: $70
    sub b                                         ; $507d: $90
    ldh a, [$d0]                                  ; $507e: $f0 $d0
    ldh a, [$b0]                                  ; $5080: $f0 $b0
    ldh a, [rBCPS]                                ; $5082: $f0 $68
    ld hl, sp+$34                                 ; $5084: $f8 $34
    db $fc                                        ; $5086: $fc
    inc e                                         ; $5087: $1c
    db $fc                                        ; $5088: $fc
    db $db                                        ; $5089: $db
    rst $38                                       ; $508a: $ff
    adc e                                         ; $508b: $8b
    rst $38                                       ; $508c: $ff
    ld c, a                                       ; $508d: $4f
    cp $6f                                        ; $508e: $fe $6f
    ld hl, sp-$31                                 ; $5090: $f8 $cf
    ei                                            ; $5092: $fb
    ld e, a                                       ; $5093: $5f
    db $fd                                        ; $5094: $fd
    cp a                                          ; $5095: $bf
    ld a, [$ff03]                                 ; $5096: $fa $03 $ff
    add c                                         ; $5099: $81
    inc [hl]                                      ; $509a: $34
    ld [bc], a                                    ; $509b: $02
    db $db                                        ; $509c: $db
    inc e                                         ; $509d: $1c
    nop                                           ; $509e: $00
    ld [bc], a                                    ; $509f: $02
    db $10                                        ; $50a0: $10
    inc b                                         ; $50a1: $04
    jr nz, jr_0ef_50a6                            ; $50a2: $20 $02

    ld l, $02                                     ; $50a4: $2e $02

jr_0ef_50a6:
    jr nc, jr_0ef_50aa                            ; $50a6: $30 $02

    ld [hl], b                                    ; $50a8: $70
    sub d                                         ; $50a9: $92

jr_0ef_50aa:
    sbc b                                         ; $50aa: $98
    ld hl, sp-$64                                 ; $50ab: $f8 $9c
    db $f4                                        ; $50ad: $f4
    db $fc                                        ; $50ae: $fc
    ld h, h                                       ; $50af: $64
    ld hl, sp+$08                                 ; $50b0: $f8 $08
    ldh a, [$90]                                  ; $50b2: $f0 $90
    ldh a, [$d0]                                  ; $50b4: $f0 $d0

jr_0ef_50b6:
    ldh a, [rNR10]                                ; $50b6: $f0 $10
    ldh [$a0], a                                  ; $50b8: $e0 $a0
    ldh [rNR41], a                                ; $50ba: $e0 $20
    ld [bc], a                                    ; $50bc: $02
    ret nz                                        ; $50bd: $c0

    rst $38                                       ; $50be: $ff
    ld de, $f606                                  ; $50bf: $11 $06 $f6
    ld a, [bc]                                    ; $50c2: $0a
    db $ec                                        ; $50c3: $ec
    ld bc, $f2f4                                  ; $50c4: $01 $f4 $f2
    xor $fa                                       ; $50c7: $ee $fa
    cp $fa                                        ; $50c9: $fe $fa
    xor $02                                       ; $50cb: $ee $02
    cp $02                                        ; $50cd: $fe $02
    rst $28                                       ; $50cf: $ef
    ld a, [bc]                                    ; $50d0: $0a
    ld [bc], a                                    ; $50d1: $02
    ld bc, $0702                                  ; $50d2: $01 $02 $07
    add d                                         ; $50d5: $82
    dec bc                                        ; $50d6: $0b
    rrca                                          ; $50d7: $0f
    ld [bc], a                                    ; $50d8: $02
    rlca                                          ; $50d9: $07
    add c                                         ; $50da: $81
    ld [bc], a                                    ; $50db: $02
    dec b                                         ; $50dc: $05
    inc bc                                        ; $50dd: $03
    ld [bc], a                                    ; $50de: $02
    ld bc, $0702                                  ; $50df: $01 $02 $07
    add [hl]                                      ; $50e2: $86
    rrca                                          ; $50e3: $0f
    ld c, $3f                                     ; $50e4: $0e $3f
    inc [hl]                                      ; $50e6: $34
    rrca                                          ; $50e7: $0f
    dec bc                                        ; $50e8: $0b
    ld [$0200], sp                                ; $50e9: $08 $00 $02
    ld b, b                                       ; $50ec: $40
    sbc l                                         ; $50ed: $9d
    and b                                         ; $50ee: $a0
    ldh [$90], a                                  ; $50ef: $e0 $90
    ldh a, [$bf]                                  ; $50f1: $f0 $bf
    rst $38                                       ; $50f3: $ff
    ld sp, hl                                     ; $50f4: $f9
    rst $38                                       ; $50f5: $ff
    and b                                         ; $50f6: $a0
    rst $38                                       ; $50f7: $ff
    db $f4                                        ; $50f8: $f4
    rst $38                                       ; $50f9: $ff
    add c                                         ; $50fa: $81
    rst $38                                       ; $50fb: $ff
    ld d, b                                       ; $50fc: $50
    rst $38                                       ; $50fd: $ff
    or b                                          ; $50fe: $b0
    rst $38                                       ; $50ff: $ff
    call nz, $83ff                                ; $5100: $c4 $ff $83
    rst $38                                       ; $5103: $ff
    and d                                         ; $5104: $a2
    rst $38                                       ; $5105: $ff
    or e                                          ; $5106: $b3
    rst $38                                       ; $5107: $ff
    sub $ff                                       ; $5108: $d6 $ff
    ei                                            ; $510a: $fb
    ld [bc], a                                    ; $510b: $02
    rst $38                                       ; $510c: $ff
    add e                                         ; $510d: $83
    cp $bd                                        ; $510e: $fe $bd
    xor l                                         ; $5110: $ad
    inc e                                         ; $5111: $1c
    nop                                           ; $5112: $00
    ld [bc], a                                    ; $5113: $02
    jr nz, jr_0ef_50b6                            ; $5114: $20 $a0

    ld d, b                                       ; $5116: $50
    ld [hl], b                                    ; $5117: $70
    sub b                                         ; $5118: $90
    ldh a, [$d0]                                  ; $5119: $f0 $d0
    ldh a, [$b0]                                  ; $511b: $f0 $b0
    ldh a, [rBCPS]                                ; $511d: $f0 $68
    ld hl, sp+$35                                 ; $511f: $f8 $35
    db $fd                                        ; $5121: $fd
    ld e, $ff                                     ; $5122: $1e $ff
    sbc $ff                                       ; $5124: $de $ff
    adc a                                         ; $5126: $8f
    db $fd                                        ; $5127: $fd
    ld c, a                                       ; $5128: $4f
    ld hl, sp+$6f                                 ; $5129: $f8 $6f
    ld a, [$ffcf]                                 ; $512b: $fa $cf $ff
    ld e, a                                       ; $512e: $5f
    db $fc                                        ; $512f: $fc
    cp a                                          ; $5130: $bf
    db $fd                                        ; $5131: $fd
    rst $38                                       ; $5132: $ff
    cp $ff                                        ; $5133: $fe $ff
    ld l, c                                       ; $5135: $69
    ld [bc], a                                    ; $5136: $02
    or [hl]                                       ; $5137: $b6
    inc e                                         ; $5138: $1c
    nop                                           ; $5139: $00
    ld [bc], a                                    ; $513a: $02
    ld b, b                                       ; $513b: $40
    inc b                                         ; $513c: $04
    add b                                         ; $513d: $80
    ld [bc], a                                    ; $513e: $02
    cp b                                          ; $513f: $b8
    inc b                                         ; $5140: $04
    ret nz                                        ; $5141: $c0

    sub d                                         ; $5142: $92
    ld h, b                                       ; $5143: $60
    ldh [rSVBK], a                                ; $5144: $e0 $70
    ret nc                                        ; $5146: $d0

    ldh a, [$90]                                  ; $5147: $f0 $90
    ldh [rNR41], a                                ; $5149: $e0 $20
    ret nz                                        ; $514b: $c0

    ld b, b                                       ; $514c: $40
    ret nz                                        ; $514d: $c0

    ld b, b                                       ; $514e: $40
    ret nz                                        ; $514f: $c0

    ld b, b                                       ; $5150: $40
    ret nz                                        ; $5151: $c0

    ld b, b                                       ; $5152: $40
    ret nz                                        ; $5153: $c0

    ld b, b                                       ; $5154: $40
    ld [bc], a                                    ; $5155: $02
    add b                                         ; $5156: $80
    rst $38                                       ; $5157: $ff
    ld de, $f606                                  ; $5158: $11 $06 $f6
    ld a, [bc]                                    ; $515b: $0a
    db $ec                                        ; $515c: $ec
    ld bc, $f4ef                                  ; $515d: $01 $ef $f4
    ldh a, [$fc]                                  ; $5160: $f0 $fc
    rst $28                                       ; $5162: $ef
    inc b                                         ; $5163: $04
    pop af                                        ; $5164: $f1
    rlca                                          ; $5165: $07
    rst $38                                       ; $5166: $ff
    db $f4                                        ; $5167: $f4
    rst $38                                       ; $5168: $ff
    cp $02                                        ; $5169: $fe $02
    ld bc, $0285                                  ; $516b: $01 $85 $02
    inc bc                                        ; $516e: $03
    ld [bc], a                                    ; $516f: $02
    inc bc                                        ; $5170: $03
    ld [bc], a                                    ; $5171: $02
    inc bc                                        ; $5172: $03
    inc bc                                        ; $5173: $03
    add d                                         ; $5174: $82
    ld [bc], a                                    ; $5175: $02
    inc bc                                        ; $5176: $03
    ld [bc], a                                    ; $5177: $02
    rlca                                          ; $5178: $07
    adc [hl]                                      ; $5179: $8e
    ld e, $1f                                     ; $517a: $1e $1f
    dec l                                         ; $517c: $2d
    ccf                                           ; $517d: $3f

Jump_0ef_517e:
    ld e, $1f                                     ; $517e: $1e $1f
    dec bc                                        ; $5180: $0b
    rrca                                          ; $5181: $0f
    ld c, $0f                                     ; $5182: $0e $0f
    ld c, $0f                                     ; $5184: $0e $0f
    ld e, $1f                                     ; $5186: $1e $1f
    ld [bc], a                                    ; $5188: $02
    ccf                                           ; $5189: $3f
    add d                                         ; $518a: $82
    rst $38                                       ; $518b: $ff
    db $d3                                        ; $518c: $d3
    ld [bc], a                                    ; $518d: $02
    add c                                         ; $518e: $81
    add d                                         ; $518f: $82
    ld b, d                                       ; $5190: $42
    jp $ff02                                      ; $5191: $c3 $02 $ff


    sbc b                                         ; $5194: $98
    and $ff                                       ; $5195: $e6 $ff
    add c                                         ; $5197: $81
    rst $38                                       ; $5198: $ff
    ret nc                                        ; $5199: $d0

    rst $38                                       ; $519a: $ff
    inc b                                         ; $519b: $04
    rst $38                                       ; $519c: $ff
    ld b, e                                       ; $519d: $43
    rst $38                                       ; $519e: $ff
    jp nz, Jump_000_11ff                          ; $519f: $c2 $ff $11

    rst $38                                       ; $51a2: $ff
    dec c                                         ; $51a3: $0d
    rst $38                                       ; $51a4: $ff
    adc e                                         ; $51a5: $8b
    rst $38                                       ; $51a6: $ff
    call Call_0ef_5aff                            ; $51a7: $cd $ff $5a
    rst $38                                       ; $51aa: $ff
    rst $28                                       ; $51ab: $ef
    rst $38                                       ; $51ac: $ff
    ld [bc], a                                    ; $51ad: $02
    ld a, [$8002]                                 ; $51ae: $fa $02 $80
    add [hl]                                      ; $51b1: $86
    ld b, b                                       ; $51b2: $40
    ret nz                                        ; $51b3: $c0

    ld b, b                                       ; $51b4: $40
    ret nz                                        ; $51b5: $c0

    ld b, c                                       ; $51b6: $41
    pop bc                                        ; $51b7: $c1
    ld [bc], a                                    ; $51b8: $02
    jp nz, $a396                                  ; $51b9: $c2 $96 $a3

    db $e3                                        ; $51bc: $e3
    rst $10                                       ; $51bd: $d7
    rst $30                                       ; $51be: $f7
    ld a, c                                       ; $51bf: $79
    rst $38                                       ; $51c0: $ff
    ld a, c                                       ; $51c1: $79
    rst $38                                       ; $51c2: $ff
    ccf                                           ; $51c3: $3f
    or $3f                                        ; $51c4: $f6 $3f
    ldh [$bf], a                                  ; $51c6: $e0 $bf
    jp hl                                         ; $51c8: $e9


    ccf                                           ; $51c9: $3f
    db $fd                                        ; $51ca: $fd
    ld a, a                                       ; $51cb: $7f
    pop af                                        ; $51cc: $f1
    rst $38                                       ; $51cd: $ff
    push af                                       ; $51ce: $f5
    cp $ee                                        ; $51cf: $fe $ee
    ld [bc], a                                    ; $51d1: $02
    ld b, $04                                     ; $51d2: $06 $04
    nop                                           ; $51d4: $00
    ld [bc], a                                    ; $51d5: $02
    rlca                                          ; $51d6: $07
    ld [bc], a                                    ; $51d7: $02
    nop                                           ; $51d8: $00
    ld [bc], a                                    ; $51d9: $02
    inc b                                         ; $51da: $04
    add h                                         ; $51db: $84
    ld b, $02                                     ; $51dc: $06 $02
    ld b, $02                                     ; $51de: $06 $02
    ld [bc], a                                    ; $51e0: $02
    inc b                                         ; $51e1: $04
    ld a, [bc]                                    ; $51e2: $0a
    nop                                           ; $51e3: $00
    ld [bc], a                                    ; $51e4: $02
    ret nz                                        ; $51e5: $c0

    ld [bc], a                                    ; $51e6: $02
    nop                                           ; $51e7: $00
    add d                                         ; $51e8: $82
    ccf                                           ; $51e9: $3f
    cpl                                           ; $51ea: $2f
    ld e, $00                                     ; $51eb: $1e $00
    ld [bc], a                                    ; $51ed: $02
    inc bc                                        ; $51ee: $03
    ld e, $00                                     ; $51ef: $1e $00
    rst $38                                       ; $51f1: $ff
    rrca                                          ; $51f2: $0f
    dec b                                         ; $51f3: $05
    or $0a                                        ; $51f4: $f6 $0a
    db $ec                                        ; $51f6: $ec
    ld bc, $f3f1                                  ; $51f7: $01 $f1 $f3
    ldh a, [$fb]                                  ; $51fa: $f0 $fb
    ldh a, [$03]                                  ; $51fc: $f0 $03
    ld a, [c]                                     ; $51fe: $f2
    ld [$f900], sp                                ; $51ff: $08 $00 $f9

Call_0ef_5202:
    ld a, [bc]                                    ; $5202: $0a
    ld bc, $0302                                  ; $5203: $01 $02 $03
    ld [bc], a                                    ; $5206: $02
    rrca                                          ; $5207: $0f
    add d                                         ; $5208: $82
    ld d, $1f                                     ; $5209: $16 $1f
    ld [bc], a                                    ; $520b: $02
    rrca                                          ; $520c: $0f
    add c                                         ; $520d: $81
    dec b                                         ; $520e: $05
    inc bc                                        ; $520f: $03
    rlca                                          ; $5210: $07
    ld [bc], a                                    ; $5211: $02
    rra                                           ; $5212: $1f
    ld [bc], a                                    ; $5213: $02
    ccf                                           ; $5214: $3f
    add h                                         ; $5215: $84
    rst $38                                       ; $5216: $ff
    db $d3                                        ; $5217: $d3
    ccf                                           ; $5218: $3f
    cpl                                           ; $5219: $2f
    ld [bc], a                                    ; $521a: $02
    nop                                           ; $521b: $00
    ld [bc], a                                    ; $521c: $02
    add b                                         ; $521d: $80
    sbc [hl]                                      ; $521e: $9e
    ld b, b                                       ; $521f: $40
    ret nz                                        ; $5220: $c0

    ld hl, $7fe1                                  ; $5221: $21 $e1 $7f
    rst $38                                       ; $5224: $ff
    di                                            ; $5225: $f3
    rst $38                                       ; $5226: $ff
    ld b, b                                       ; $5227: $40
    rst $38                                       ; $5228: $ff
    add sp, -$01                                  ; $5229: $e8 $ff
    ld [bc], a                                    ; $522b: $02
    rst $38                                       ; $522c: $ff
    and c                                         ; $522d: $a1
    rst $38                                       ; $522e: $ff
    ld h, c                                       ; $522f: $61
    rst $38                                       ; $5230: $ff
    adc b                                         ; $5231: $88
    rst $38                                       ; $5232: $ff
    ld b, $ff                                     ; $5233: $06 $ff
    ld b, l                                       ; $5235: $45
    rst $38                                       ; $5236: $ff
    ld h, [hl]                                    ; $5237: $66
    rst $38                                       ; $5238: $ff
    xor l                                         ; $5239: $ad
    rst $38                                       ; $523a: $ff
    rst $30                                       ; $523b: $f7
    rst $38                                       ; $523c: $ff
    ld [bc], a                                    ; $523d: $02
    ld b, b                                       ; $523e: $40
    sbc h                                         ; $523f: $9c
    and b                                         ; $5240: $a0
    ldh [rNR41], a                                ; $5241: $e0 $20
    ldh [$a0], a                                  ; $5243: $e0 $a0
    ldh [$60], a                                  ; $5245: $e0 $60
    ldh [$d1], a                                  ; $5247: $e0 $d1
    pop af                                        ; $5249: $f1
    ld l, d                                       ; $524a: $6a
    ei                                            ; $524b: $fb
    ld a, $ff                                     ; $524c: $3e $ff
    or a                                          ; $524e: $b7
    db $fd                                        ; $524f: $fd
    rla                                           ; $5250: $17
    ld hl, sp-$61                                 ; $5251: $f8 $9f
    ld a, [c]                                     ; $5253: $f2
    rst $18                                       ; $5254: $df
    cp $9f                                        ; $5255: $fe $9f
    ld hl, sp-$41                                 ; $5257: $f8 $bf
    ld a, [$f77f]                                 ; $5259: $fa $7f $f7
    ld [bc], a                                    ; $525c: $02
    db $ec                                        ; $525d: $ec
    ld [bc], a                                    ; $525e: $02
    ld c, $02                                     ; $525f: $0e $02
    db $10                                        ; $5261: $10
    ld [bc], a                                    ; $5262: $02
    ld e, $02                                     ; $5263: $1e $02
    add hl, de                                    ; $5265: $19
    adc d                                         ; $5266: $8a
    inc c                                         ; $5267: $0c
    inc e                                         ; $5268: $1c
    ld c, $1a                                     ; $5269: $0e $1a
    ld e, $12                                     ; $526b: $1e $12
    inc e                                         ; $526d: $1c
    inc b                                         ; $526e: $04
    jr jr_0ef_5279                                ; $526f: $18 $08

    ld b, $10                                     ; $5271: $06 $10
    ld [$0200], sp                                ; $5273: $08 $00 $02
    ccf                                           ; $5276: $3f
    ld e, $00                                     ; $5277: $1e $00

jr_0ef_5279:
    rst $38                                       ; $5279: $ff
    ld de, $f606                                  ; $527a: $11 $06 $f6
    ld a, [bc]                                    ; $527d: $0a
    db $ec                                        ; $527e: $ec
    ld bc, $f3ec                                  ; $527f: $01 $ec $f3
    db $ec                                        ; $5282: $ec
    ei                                            ; $5283: $fb
    pop af                                        ; $5284: $f1
    inc bc                                        ; $5285: $03
    ld a, [c]                                     ; $5286: $f2
    add hl, bc                                    ; $5287: $09
    db $fc                                        ; $5288: $fc
    db $f4                                        ; $5289: $f4
    db $fc                                        ; $528a: $fc
    or $02                                        ; $528b: $f6 $02
    inc b                                         ; $528d: $04
    add l                                         ; $528e: $85
    ld a, [bc]                                    ; $528f: $0a
    ld c, $09                                     ; $5290: $0e $09
    rrca                                          ; $5292: $0f
    dec bc                                        ; $5293: $0b
    inc bc                                        ; $5294: $03
    rrca                                          ; $5295: $0f
    add d                                         ; $5296: $82
    ld a, [bc]                                    ; $5297: $0a
    rrca                                          ; $5298: $0f
    ld [bc], a                                    ; $5299: $02
    rra                                           ; $529a: $1f
    adc h                                         ; $529b: $8c
    ld l, b                                       ; $529c: $68
    ld a, a                                       ; $529d: $7f
    or c                                          ; $529e: $b1
    rst $38                                       ; $529f: $ff
    ld l, e                                       ; $52a0: $6b
    ld a, a                                       ; $52a1: $7f
    inc [hl]                                      ; $52a2: $34
    ccf                                           ; $52a3: $3f
    jr c, jr_0ef_52e5                             ; $52a4: $38 $3f

    ld a, [hl+]                                   ; $52a6: $2a
    ccf                                           ; $52a7: $3f
    ld [bc], a                                    ; $52a8: $02
    rra                                           ; $52a9: $1f
    add d                                         ; $52aa: $82
    dec e                                         ; $52ab: $1d
    rra                                           ; $52ac: $1f
    ld [bc], a                                    ; $52ad: $02
    rrca                                          ; $52ae: $0f
    ld [bc], a                                    ; $52af: $02
    ld [bc], a                                    ; $52b0: $02
    sbc [hl]                                      ; $52b1: $9e
    dec b                                         ; $52b2: $05
    rlca                                          ; $52b3: $07
    add hl, bc                                    ; $52b4: $09
    rrca                                          ; $52b5: $0f
    db $fd                                        ; $52b6: $fd
    rst $38                                       ; $52b7: $ff
    dec de                                        ; $52b8: $1b

jr_0ef_52b9:
    rst $38                                       ; $52b9: $ff
    ld b, $ff                                     ; $52ba: $06 $ff
    ld b, e                                       ; $52bc: $43
    rst $38                                       ; $52bd: $ff
    ld de, $0dff                                  ; $52be: $11 $ff $0d
    rst $38                                       ; $52c1: $ff
    ld [$54ff], sp                                ; $52c2: $08 $ff $54
    rst $38                                       ; $52c5: $ff
    ld h, $ff                                     ; $52c6: $26 $ff
    inc [hl]                                      ; $52c8: $34
    rst $38                                       ; $52c9: $ff
    dec h                                         ; $52ca: $25
    rst $38                                       ; $52cb: $ff
    ld l, e                                       ; $52cc: $6b
    rst $38                                       ; $52cd: $ff
    db $dd                                        ; $52ce: $dd

jr_0ef_52cf:
    db $fd                                        ; $52cf: $fd
    ld [bc], a                                    ; $52d0: $02
    add b                                         ; $52d1: $80
    ld [bc], a                                    ; $52d2: $02
    ret nz                                        ; $52d3: $c0

    add l                                         ; $52d4: $85
    ld b, b                                       ; $52d5: $40
    ret nz                                        ; $52d6: $c0

    jr nz, jr_0ef_52b9                            ; $52d7: $20 $e0

    and b                                         ; $52d9: $a0
    ld [bc], a                                    ; $52da: $02
    ldh [$91], a                                  ; $52db: $e0 $91
    jr nz, jr_0ef_52cf                            ; $52dd: $20 $f0

    ld d, b                                       ; $52df: $50
    ldh a, [$90]                                  ; $52e0: $f0 $90
    ld hl, sp-$38                                 ; $52e2: $f8 $c8
    ld sp, hl                                     ; $52e4: $f9

jr_0ef_52e5:
    ld l, c                                       ; $52e5: $69
    rst $38                                       ; $52e6: $ff
    ld d, [hl]                                    ; $52e7: $56
    rst $38                                       ; $52e8: $ff
    jp hl                                         ; $52e9: $e9


    rst $38                                       ; $52ea: $ff
    cp [hl]                                       ; $52eb: $be
    ld a, a                                       ; $52ec: $7f
    ld c, b                                       ; $52ed: $48
    ld [bc], a                                    ; $52ee: $02
    scf                                           ; $52ef: $37
    ld [bc], a                                    ; $52f0: $02
    nop                                           ; $52f1: $00
    ld [bc], a                                    ; $52f2: $02
    inc b                                         ; $52f3: $04
    ld [bc], a                                    ; $52f4: $02
    add hl, bc                                    ; $52f5: $09
    inc b                                         ; $52f6: $04
    ld a, [bc]                                    ; $52f7: $0a
    ld [bc], a                                    ; $52f8: $02
    ld c, $02                                     ; $52f9: $0e $02
    inc e                                         ; $52fb: $1c
    adc d                                         ; $52fc: $8a
    ld h, $3e                                     ; $52fd: $26 $3e
    daa                                           ; $52ff: $27
    dec a                                         ; $5300: $3d
    ccf                                           ; $5301: $3f
    add hl, de                                    ; $5302: $19
    ld a, $02                                     ; $5303: $3e $02
    inc a                                         ; $5305: $3c
    inc c                                         ; $5306: $0c
    ld [bc], a                                    ; $5307: $02
    jr nc, jr_0ef_530c                            ; $5308: $30 $02

    jr nz, @+$08                                  ; $530a: $20 $06

jr_0ef_530c:
    nop                                           ; $530c: $00
    ld [bc], a                                    ; $530d: $02
    rrca                                          ; $530e: $0f
    add [hl]                                      ; $530f: $86
    ccf                                           ; $5310: $3f
    jr c, @+$01                                   ; $5311: $38 $ff

    rst $08                                       ; $5313: $cf
    inc a                                         ; $5314: $3c
    inc l                                         ; $5315: $2c
    jr jr_0ef_5318                                ; $5316: $18 $00

jr_0ef_5318:
    inc b                                         ; $5318: $04
    inc bc                                        ; $5319: $03
    ld [bc], a                                    ; $531a: $02
    ld [bc], a                                    ; $531b: $02
    ld a, [de]                                    ; $531c: $1a
    nop                                           ; $531d: $00
    rst $38                                       ; $531e: $ff
    rrca                                          ; $531f: $0f
    dec b                                         ; $5320: $05
    or $0a                                        ; $5321: $f6 $0a
    db $ec                                        ; $5323: $ec
    ld bc, $f1ef                                  ; $5324: $01 $ef $f1
    db $ec                                        ; $5327: $ec
    ld sp, hl                                     ; $5328: $f9
    ld a, [c]                                     ; $5329: $f2
    ld bc, $06f5                                  ; $532a: $01 $f5 $06
    db $fc                                        ; $532d: $fc
    push af                                       ; $532e: $f5
    ld [bc], a                                    ; $532f: $02
    inc bc                                        ; $5330: $03
    ld [bc], a                                    ; $5331: $02
    rrca                                          ; $5332: $0f
    sub [hl]                                      ; $5333: $96
    ld [hl], h                                    ; $5334: $74
    ld a, a                                       ; $5335: $7f
    sbc b                                         ; $5336: $98
    rst $38                                       ; $5337: $ff
    ld l, a                                       ; $5338: $6f
    ld a, a                                       ; $5339: $7f
    jr c, jr_0ef_537b                             ; $533a: $38 $3f

    ld h, d                                       ; $533c: $62
    ld a, a                                       ; $533d: $7f
    ld d, [hl]                                    ; $533e: $56
    ld a, a                                       ; $533f: $7f
    add sp, -$01                                  ; $5340: $e8 $ff
    ld [hl], b                                    ; $5342: $70
    ld a, a                                       ; $5343: $7f
    ld d, h                                       ; $5344: $54
    ld a, a                                       ; $5345: $7f
    ld a, $3f                                     ; $5346: $3e $3f
    add hl, sp                                    ; $5348: $39
    ccf                                           ; $5349: $3f
    inc b                                         ; $534a: $04
    rra                                           ; $534b: $1f
    add d                                         ; $534c: $82
    ccf                                           ; $534d: $3f
    ld [hl-], a                                   ; $534e: $32
    ld [bc], a                                    ; $534f: $02
    ld b, b                                       ; $5350: $40
    sbc [hl]                                      ; $5351: $9e
    and b                                         ; $5352: $a0
    ldh [$90], a                                  ; $5353: $e0 $90
    ldh a, [rNR32]                                ; $5355: $f0 $1c
    db $fc                                        ; $5357: $fc
    or [hl]                                       ; $5358: $b6
    cp $f9                                        ; $5359: $fe $f9
    rst $38                                       ; $535b: $ff
    dec b                                         ; $535c: $05
    rst $38                                       ; $535d: $ff
    ld [hl+], a                                   ; $535e: $22
    rst $38                                       ; $535f: $ff
    ld a, [de]                                    ; $5360: $1a
    rst $38                                       ; $5361: $ff
    ld [$a5ff], sp                                ; $5362: $08 $ff $a5
    cp $47                                        ; $5365: $fe $47
    rst $38                                       ; $5367: $ff
    dec [hl]                                      ; $5368: $35
    rst $38                                       ; $5369: $ff
    daa                                           ; $536a: $27
    cp $af                                        ; $536b: $fe $af
    rst $38                                       ; $536d: $ff
    ld e, b                                       ; $536e: $58
    ld hl, sp+$02                                 ; $536f: $f8 $02
    add b                                         ; $5371: $80
    inc b                                         ; $5372: $04
    ret nz                                        ; $5373: $c0

    sub h                                         ; $5374: $94
    ldh [$60], a                                  ; $5375: $e0 $60
    ldh a, [$90]                                  ; $5377: $f0 $90
    ld hl, sp+$28                                 ; $5379: $f8 $28

jr_0ef_537b:
    ld hl, sp-$38                                 ; $537b: $f8 $c8
    db $fc                                        ; $537d: $fc
    db $e4                                        ; $537e: $e4
    rst $38                                       ; $537f: $ff
    or e                                          ; $5380: $b3
    rst $38                                       ; $5381: $ff
    xor c                                         ; $5382: $a9
    ld a, a                                       ; $5383: $7f
    ld [hl], h                                    ; $5384: $74
    ld a, a                                       ; $5385: $7f
    ld e, a                                       ; $5386: $5f
    ccf                                           ; $5387: $3f
    inc h                                         ; $5388: $24
    ld [bc], a                                    ; $5389: $02
    dec de                                        ; $538a: $1b
    inc b                                         ; $538b: $04
    nop                                           ; $538c: $00
    ld [bc], a                                    ; $538d: $02
    ld [$1202], sp                                ; $538e: $08 $02 $12
    inc b                                         ; $5391: $04
    inc d                                         ; $5392: $14
    ld [bc], a                                    ; $5393: $02
    inc e                                         ; $5394: $1c
    adc d                                         ; $5395: $8a
    ld b, $1e                                     ; $5396: $06 $1e
    rlca                                          ; $5398: $07
    dec e                                         ; $5399: $1d
    rra                                           ; $539a: $1f
    add hl, de                                    ; $539b: $19
    ld e, $02                                     ; $539c: $1e $02
    inc e                                         ; $539e: $1c
    inc c                                         ; $539f: $0c
    ld [bc], a                                    ; $53a0: $02
    db $10                                        ; $53a1: $10
    ld a, [bc]                                    ; $53a2: $0a
    nop                                           ; $53a3: $00
    ld [bc], a                                    ; $53a4: $02
    rrca                                          ; $53a5: $0f
    ld [bc], a                                    ; $53a6: $02
    inc c                                         ; $53a7: $0c
    ld [bc], a                                    ; $53a8: $02
    ld [$f082], sp                                ; $53a9: $08 $82 $f0
    or b                                          ; $53ac: $b0
    jr jr_0ef_53af                                ; $53ad: $18 $00

jr_0ef_53af:
    rst $38                                       ; $53af: $ff
    ld de, $f606                                  ; $53b0: $11 $06 $f6
    ld a, [bc]                                    ; $53b3: $0a
    db $ec                                        ; $53b4: $ec
    ld bc, $faeb                                  ; $53b5: $01 $eb $fa
    jp hl                                         ; $53b8: $e9


    ld [bc], a                                    ; $53b9: $02
    ldh a, [$09]                                  ; $53ba: $f0 $09
    ld sp, hl                                     ; $53bc: $f9
    db $f4                                        ; $53bd: $f4
    ld sp, hl                                     ; $53be: $f9
    db $fc                                        ; $53bf: $fc
    ld sp, hl                                     ; $53c0: $f9
    ld bc, $0802                                  ; $53c1: $01 $02 $08
    add c                                         ; $53c4: $81
    rla                                           ; $53c5: $17
    inc bc                                        ; $53c6: $03
    rra                                           ; $53c7: $1f
    sub b                                         ; $53c8: $90
    ld d, $1f                                     ; $53c9: $16 $1f
    add hl, sp                                    ; $53cb: $39
    ccf                                           ; $53cc: $3f
    inc l                                         ; $53cd: $2c
    ccf                                           ; $53ce: $3f
    ld b, l                                       ; $53cf: $45
    ld a, a                                       ; $53d0: $7f
    ld l, c                                       ; $53d1: $69
    ld a, a                                       ; $53d2: $7f
    ld [hl], d                                    ; $53d3: $72
    ld a, a                                       ; $53d4: $7f
    ld l, h                                       ; $53d5: $6c
    ld a, a                                       ; $53d6: $7f
    jr nc, jr_0ef_5418                            ; $53d7: $30 $3f

    ld [bc], a                                    ; $53d9: $02
    ld a, a                                       ; $53da: $7f
    adc b                                         ; $53db: $88
    ld a, [$ff9f]                                 ; $53dc: $fa $9f $ff
    cp a                                          ; $53df: $bf
    db $fd                                        ; $53e0: $fd
    rst $18                                       ; $53e1: $df
    ei                                            ; $53e2: $fb
    dec hl                                        ; $53e3: $2b
    ld [bc], a                                    ; $53e4: $02
    db $10                                        ; $53e5: $10
    sbc [hl]                                      ; $53e6: $9e
    jr z, jr_0ef_5421                             ; $53e7: $28 $38

    ld c, b                                       ; $53e9: $48
    ld a, b                                       ; $53ea: $78
    add sp, -$08                                  ; $53eb: $e8 $f8
    cp b                                          ; $53ed: $b8
    ld hl, sp-$34                                 ; $53ee: $f8 $cc
    db $fc                                        ; $53f0: $fc
    ld l, d                                       ; $53f1: $6a
    cp $25                                        ; $53f2: $fe $25
    rst $38                                       ; $53f4: $ff
    dec [hl]                                      ; $53f5: $35
    rst $38                                       ; $53f6: $ff
    ld h, $ff                                     ; $53f7: $26 $ff
    inc bc                                        ; $53f9: $03
    rst $38                                       ; $53fa: $ff
    ld b, d                                       ; $53fb: $42
    rst $38                                       ; $53fc: $ff
    adc b                                         ; $53fd: $88
    rst $38                                       ; $53fe: $ff
    ld [de], a                                    ; $53ff: $12
    rst $38                                       ; $5400: $ff
    scf                                           ; $5401: $37
    rst $38                                       ; $5402: $ff
    call Call_000_02ff                            ; $5403: $cd $ff $02
    ld [hl], b                                    ; $5406: $70
    add h                                         ; $5407: $84
    ld [$1078], sp                                ; $5408: $08 $78 $10
    ld [hl], b                                    ; $540b: $70
    ld [bc], a                                    ; $540c: $02
    ld h, b                                       ; $540d: $60
    ld b, $40                                     ; $540e: $06 $40
    ld b, $00                                     ; $5410: $06 $00
    ld [bc], a                                    ; $5412: $02
    add b                                         ; $5413: $80
    adc b                                         ; $5414: $88
    ld a, a                                       ; $5415: $7f
    rst $38                                       ; $5416: $ff
    ld [hl], b                                    ; $5417: $70

jr_0ef_5418:
    ret nc                                        ; $5418: $d0

    cp $9e                                        ; $5419: $fe $9e
    ldh [rNR41], a                                ; $541b: $e0 $20
    ld [bc], a                                    ; $541d: $02
    ret nz                                        ; $541e: $c0

    ld [bc], a                                    ; $541f: $02
    nop                                           ; $5420: $00

jr_0ef_5421:
    ld [bc], a                                    ; $5421: $02
    inc b                                         ; $5422: $04
    adc d                                         ; $5423: $8a
    rlca                                          ; $5424: $07
    dec b                                         ; $5425: $05
    rrca                                          ; $5426: $0f
    add hl, bc                                    ; $5427: $09
    ccf                                           ; $5428: $3f
    inc sp                                        ; $5429: $33
    rst $38                                       ; $542a: $ff
    push bc                                       ; $542b: $c5
    ld a, $2e                                     ; $542c: $3e $2e
    inc de                                        ; $542e: $13

jr_0ef_542f:
    nop                                           ; $542f: $00
    add e                                         ; $5430: $83
    inc bc                                        ; $5431: $03
    ld bc, $0203                                  ; $5432: $01 $03 $02
    jp $c082                                      ; $5435: $c3 $82 $c0


    ld b, b                                       ; $5438: $40
    inc b                                         ; $5439: $04
    add b                                         ; $543a: $80
    inc d                                         ; $543b: $14
    nop                                           ; $543c: $00
    adc h                                         ; $543d: $8c
    rlca                                          ; $543e: $07
    dec de                                        ; $543f: $1b

jr_0ef_5440:
    rrca                                          ; $5440: $0f
    dec e                                         ; $5441: $1d
    ld e, $1b                                     ; $5442: $1e $1b
    ld e, $17                                     ; $5444: $1e $17
    rrca                                          ; $5446: $0f
    dec c                                         ; $5447: $0d
    rrca                                          ; $5448: $0f
    ld [$0702], sp                                ; $5449: $08 $02 $07
    ld [de], a                                    ; $544c: $12
    nop                                           ; $544d: $00
    rst $38                                       ; $544e: $ff
    inc de                                        ; $544f: $13
    rlca                                          ; $5450: $07
    or $0a                                        ; $5451: $f6 $0a
    db $ec                                        ; $5453: $ec
    ld bc, $feed                                  ; $5454: $01 $ed $fe
    ld [$ea06], a                                 ; $5457: $ea $06 $ea
    inc c                                         ; $545a: $0c
    ld a, [$faf7]                                 ; $545b: $fa $f7 $fa
    rst $38                                       ; $545e: $ff
    ld a, [$fa07]                                 ; $545f: $fa $07 $fa
    ld a, [bc]                                    ; $5462: $0a
    ld [bc], a                                    ; $5463: $02
    inc bc                                        ; $5464: $03
    add d                                         ; $5465: $82
    dec b                                         ; $5466: $05
    rlca                                          ; $5467: $07
    ld [bc], a                                    ; $5468: $02
    rrca                                          ; $5469: $0f
    sbc d                                         ; $546a: $9a
    inc c                                         ; $546b: $0c
    rrca                                          ; $546c: $0f
    ld a, [de]                                    ; $546d: $1a
    rra                                           ; $546e: $1f
    dec de                                        ; $546f: $1b
    rra                                           ; $5470: $1f
    inc e                                         ; $5471: $1c
    rra                                           ; $5472: $1f
    rla                                           ; $5473: $17
    rra                                           ; $5474: $1f
    dec e                                         ; $5475: $1d
    rra                                           ; $5476: $1f
    ld a, $3f                                     ; $5477: $3e $3f
    ld a, a                                       ; $5479: $7f
    ld c, a                                       ; $547a: $4f
    ld a, l                                       ; $547b: $7d
    ld e, a                                       ; $547c: $5f
    cp $ef                                        ; $547d: $fe $ef
    rst $38                                       ; $547f: $ff
    cpl                                           ; $5480: $2f
    db $fc                                        ; $5481: $fc
    ld a, h                                       ; $5482: $7c
    ld hl, sp-$68                                 ; $5483: $f8 $98
    ld [bc], a                                    ; $5485: $02
    ld b, b                                       ; $5486: $40
    sbc [hl]                                      ; $5487: $9e
    and c                                         ; $5488: $a1
    pop hl                                        ; $5489: $e1
    cp $ff                                        ; $548a: $fe $ff
    xor d                                         ; $548c: $aa
    rst $38                                       ; $548d: $ff
    push de                                       ; $548e: $d5
    rst $38                                       ; $548f: $ff
    jp z, $23ff                                   ; $5490: $ca $ff $23

    rst $38                                       ; $5493: $ff
    dec b                                         ; $5494: $05
    rst $38                                       ; $5495: $ff
    dec h                                         ; $5496: $25
    rst $38                                       ; $5497: $ff
    ld h, l                                       ; $5498: $65
    rst $38                                       ; $5499: $ff
    push bc                                       ; $549a: $c5
    rst $38                                       ; $549b: $ff
    ld a, [bc]                                    ; $549c: $0a
    rst $38                                       ; $549d: $ff
    add b                                         ; $549e: $80
    rst $38                                       ; $549f: $ff
    add sp, -$01                                  ; $54a0: $e8 $ff
    ld b, c                                       ; $54a2: $41
    rst $38                                       ; $54a3: $ff
    adc e                                         ; $54a4: $8b
    rst $38                                       ; $54a5: $ff
    ld [bc], a                                    ; $54a6: $02
    jr jr_0ef_542f                                ; $54a7: $18 $86

    jr z, jr_0ef_54e3                             ; $54a9: $28 $38

    ld [$1038], sp                                ; $54ab: $08 $38 $10
    jr nc, @+$06                                  ; $54ae: $30 $04

    jr nz, jr_0ef_5440                            ; $54b0: $20 $8e

    db $10                                        ; $54b2: $10
    jr nc, jr_0ef_54c5                            ; $54b3: $30 $10

    jr nc, jr_0ef_54c7                            ; $54b5: $30 $10

    jr nc, jr_0ef_54d1                            ; $54b7: $30 $18

    jr c, jr_0ef_54cf                             ; $54b9: $38 $14

    inc a                                         ; $54bb: $3c
    ld [de], a                                    ; $54bc: $12
    ld a, $11                                     ; $54bd: $3e $11
    ccf                                           ; $54bf: $3f
    ld [bc], a                                    ; $54c0: $02
    ld a, $02                                     ; $54c1: $3e $02
    jr nz, jr_0ef_54c7                            ; $54c3: $20 $02

jr_0ef_54c5:
    nop                                           ; $54c5: $00
    inc b                                         ; $54c6: $04

jr_0ef_54c7:
    ld [bc], a                                    ; $54c7: $02
    adc b                                         ; $54c8: $88
    ld c, $08                                     ; $54c9: $0e $08
    ccf                                           ; $54cb: $3f
    inc sp                                        ; $54cc: $33
    rst $38                                       ; $54cd: $ff
    push bc                                       ; $54ce: $c5

jr_0ef_54cf:
    ccf                                           ; $54cf: $3f
    cpl                                           ; $54d0: $2f

jr_0ef_54d1:
    inc d                                         ; $54d1: $14
    nop                                           ; $54d2: $00
    ld b, $01                                     ; $54d3: $06 $01
    ld [bc], a                                    ; $54d5: $02
    ldh [rSC], a                                  ; $54d6: $e0 $02
    ret nz                                        ; $54d8: $c0

    ld d, $00                                     ; $54d9: $16 $00
    adc d                                         ; $54db: $8a
    cp h                                          ; $54dc: $bc
    db $fc                                        ; $54dd: $fc
    rst $08                                       ; $54de: $cf
    ld a, a                                       ; $54df: $7f
    adc $fa                                       ; $54e0: $ce $fa
    rst $38                                       ; $54e2: $ff

jr_0ef_54e3:
    or e                                          ; $54e3: $b3
    db $fc                                        ; $54e4: $fc
    add h                                         ; $54e5: $84
    ld [bc], a                                    ; $54e6: $02
    ld a, b                                       ; $54e7: $78
    ld d, $00                                     ; $54e8: $16 $00
    ld [bc], a                                    ; $54ea: $02
    rlca                                          ; $54eb: $07
    ld [bc], a                                    ; $54ec: $02
    nop                                           ; $54ed: $00
    ld [bc], a                                    ; $54ee: $02
    ld b, $18                                     ; $54ef: $06 $18
    nop                                           ; $54f1: $00
    rst $38                                       ; $54f2: $ff
    ld de, $f606                                  ; $54f3: $11 $06 $f6
    ld a, [bc]                                    ; $54f6: $0a
    db $ec                                        ; $54f7: $ec
    ld bc, $f6f0                                  ; $54f8: $01 $f0 $f6
    db $ec                                        ; $54fb: $ec
    cp $fc                                        ; $54fc: $fe $fc
    cp $ef                                        ; $54fe: $fe $ef
    ld b, $ff                                     ; $5500: $06 $ff
    ld b, $f3                                     ; $5502: $06 $f3
    ld c, $02                                     ; $5504: $0e $02
    ld bc, $0302                                  ; $5506: $01 $02 $03
    adc b                                         ; $5509: $88
    dec b                                         ; $550a: $05
    rlca                                          ; $550b: $07
    ld b, $07                                     ; $550c: $06 $07
    dec bc                                        ; $550e: $0b
    rrca                                          ; $550f: $0f
    dec e                                         ; $5510: $1d
    rra                                           ; $5511: $1f
    ld [bc], a                                    ; $5512: $02
    ccf                                           ; $5513: $3f
    add e                                         ; $5514: $83
    ld a, [de]                                    ; $5515: $1a
    rra                                           ; $5516: $1f
    dec c                                         ; $5517: $0d
    inc bc                                        ; $5518: $03
    rrca                                          ; $5519: $0f
    add c                                         ; $551a: $81
    ld b, $05                                     ; $551b: $06 $05
    rlca                                          ; $551d: $07
    add [hl]                                      ; $551e: $86
    rra                                           ; $551f: $1f
    add hl, de                                    ; $5520: $19
    ld a, a                                       ; $5521: $7f
    ld h, h                                       ; $5522: $64
    rra                                           ; $5523: $1f
    rla                                           ; $5524: $17
    ld [bc], a                                    ; $5525: $02
    ld b, b                                       ; $5526: $40
    sbc a                                         ; $5527: $9f
    and b                                         ; $5528: $a0
    ldh [$80], a                                  ; $5529: $e0 $80
    ldh [$bc], a                                  ; $552b: $e0 $bc
    db $fc                                        ; $552d: $fc
    sub $fe                                       ; $552e: $d6 $fe
    add hl, bc                                    ; $5530: $09
    rst $38                                       ; $5531: $ff
    ldh [rIE], a                                  ; $5532: $e0 $ff
    ld [$04ff], sp                                ; $5534: $08 $ff $04
    rst $38                                       ; $5537: $ff
    jp nz, Jump_000_12ff                          ; $5538: $c2 $ff $12

    rst $38                                       ; $553b: $ff
    add hl, bc                                    ; $553c: $09
    rst $38                                       ; $553d: $ff
    ld c, c                                       ; $553e: $49
    rst $38                                       ; $553f: $ff
    ld c, c                                       ; $5540: $49
    rst $38                                       ; $5541: $ff
    call $f2ff                                    ; $5542: $cd $ff $f2
    rst $38                                       ; $5545: $ff
    ld d, a                                       ; $5546: $57
    inc bc                                        ; $5547: $03
    rst $38                                       ; $5548: $ff
    ld [bc], a                                    ; $5549: $02
    add b                                         ; $554a: $80
    ld a, [de]                                    ; $554b: $1a
    nop                                           ; $554c: $00
    ld [bc], a                                    ; $554d: $02
    ld h, b                                       ; $554e: $60
    sbc [hl]                                      ; $554f: $9e
    and b                                         ; $5550: $a0
    ldh [rNR41], a                                ; $5551: $e0 $20
    ldh [$a0], a                                  ; $5553: $e0 $a0
    ldh [$61], a                                  ; $5555: $e0 $61
    pop hl                                        ; $5557: $e1
    ld [de], a                                    ; $5558: $12
    ld a, [c]                                     ; $5559: $f2
    inc de                                        ; $555a: $13
    di                                            ; $555b: $f3
    ld [hl], a                                    ; $555c: $77
    rst $30                                       ; $555d: $f7
    ld e, c                                       ; $555e: $59
    rst $38                                       ; $555f: $ff
    add hl, sp                                    ; $5560: $39
    rst $28                                       ; $5561: $ef
    ccf                                           ; $5562: $3f
    and $ff                                       ; $5563: $e6 $ff
    ret nc                                        ; $5565: $d0

    ld a, a                                       ; $5566: $7f
    ei                                            ; $5567: $fb
    cp $da                                        ; $5568: $fe $da
    cp $76                                        ; $556a: $fe $76
    db $fc                                        ; $556c: $fc
    call nz, Call_000_3802                        ; $556d: $c4 $02 $38
    ld e, $00                                     ; $5570: $1e $00
    ld [bc], a                                    ; $5572: $02
    ret nz                                        ; $5573: $c0

    ld [bc], a                                    ; $5574: $02
    nop                                           ; $5575: $00
    ld [bc], a                                    ; $5576: $02
    ret nz                                        ; $5577: $c0

    ld [bc], a                                    ; $5578: $02
    jr nz, jr_0ef_557d                            ; $5579: $20 $02

    add b                                         ; $557b: $80
    add h                                         ; $557c: $84

jr_0ef_557d:
    ret nz                                        ; $557d: $c0

    ld b, b                                       ; $557e: $40
    ret nz                                        ; $557f: $c0

    ld b, b                                       ; $5580: $40
    ld [bc], a                                    ; $5581: $02
    add b                                         ; $5582: $80
    stop                                          ; $5583: $10 $00
    rst $38                                       ; $5585: $ff
    rrca                                          ; $5586: $0f
    dec b                                         ; $5587: $05
    or $0a                                        ; $5588: $f6 $0a
    db $ec                                        ; $558a: $ec
    ld bc, $f4f0                                  ; $558b: $01 $f0 $f4
    pop af                                        ; $558e: $f1
    db $fc                                        ; $558f: $fc
    ldh a, [rDIV]                                 ; $5590: $f0 $04
    ldh a, [$08]                                  ; $5592: $f0 $08
    nop                                           ; $5594: $00
    db $f4                                        ; $5595: $f4
    ld [bc], a                                    ; $5596: $02
    ld bc, $0285                                  ; $5597: $01 $85 $02
    inc bc                                        ; $559a: $03
    ld [bc], a                                    ; $559b: $02
    inc bc                                        ; $559c: $03
    ld [bc], a                                    ; $559d: $02
    inc bc                                        ; $559e: $03
    inc bc                                        ; $559f: $03
    add d                                         ; $55a0: $82
    ld [bc], a                                    ; $55a1: $02
    inc bc                                        ; $55a2: $03
    ld [bc], a                                    ; $55a3: $02
    rlca                                          ; $55a4: $07
    sub d                                         ; $55a5: $92
    ld e, $1f                                     ; $55a6: $1e $1f
    dec l                                         ; $55a8: $2d
    ccf                                           ; $55a9: $3f
    ld e, $1f                                     ; $55aa: $1e $1f
    dec bc                                        ; $55ac: $0b
    rrca                                          ; $55ad: $0f
    ld c, $0f                                     ; $55ae: $0e $0f
    ld e, $1f                                     ; $55b0: $1e $1f
    ld a, $37                                     ; $55b2: $3e $37
    rst $38                                       ; $55b4: $ff
    rst $00                                       ; $55b5: $c7
    ccf                                           ; $55b6: $3f
    cpl                                           ; $55b7: $2f
    ld [bc], a                                    ; $55b8: $02
    add c                                         ; $55b9: $81
    add d                                         ; $55ba: $82
    ld b, d                                       ; $55bb: $42
    jp $ff02                                      ; $55bc: $c3 $02 $ff


    sbc b                                         ; $55bf: $98
    and [hl]                                      ; $55c0: $a6
    rst $38                                       ; $55c1: $ff
    add c                                         ; $55c2: $81
    rst $38                                       ; $55c3: $ff
    ret nc                                        ; $55c4: $d0

    rst $38                                       ; $55c5: $ff
    inc b                                         ; $55c6: $04
    rst $38                                       ; $55c7: $ff
    ld b, e                                       ; $55c8: $43
    rst $38                                       ; $55c9: $ff
    jp nz, Jump_000_11ff                          ; $55ca: $c2 $ff $11

    rst $38                                       ; $55cd: $ff
    dec c                                         ; $55ce: $0d
    rst $38                                       ; $55cf: $ff
    adc e                                         ; $55d0: $8b
    rst $38                                       ; $55d1: $ff
    call Call_0ef_5aff                            ; $55d2: $cd $ff $5a
    rst $38                                       ; $55d5: $ff
    rst $28                                       ; $55d6: $ef
    rst $38                                       ; $55d7: $ff
    ld [bc], a                                    ; $55d8: $02
    db $fc                                        ; $55d9: $fc
    ld [bc], a                                    ; $55da: $02
    add b                                         ; $55db: $80
    add [hl]                                      ; $55dc: $86
    ld b, c                                       ; $55dd: $41
    pop bc                                        ; $55de: $c1
    ld b, c                                       ; $55df: $41
    pop bc                                        ; $55e0: $c1
    ld b, c                                       ; $55e1: $41
    pop bc                                        ; $55e2: $c1
    ld [bc], a                                    ; $55e3: $02
    jp $a494                                      ; $55e4: $c3 $94 $a4


    rst $20                                       ; $55e7: $e7
    call nc, Call_0ef_7ff7                        ; $55e8: $d4 $f7 $7f
    ei                                            ; $55eb: $fb
    ld l, a                                       ; $55ec: $6f
    ld hl, sp+$2f                                 ; $55ed: $f8 $2f
    db $f4                                        ; $55ef: $f4
    ccf                                           ; $55f0: $3f
    ld a, [$fcbf]                                 ; $55f1: $fa $bf $fc
    ccf                                           ; $55f4: $3f
    or $7f                                        ; $55f5: $f6 $7f
    db $fd                                        ; $55f7: $fd
    rst $38                                       ; $55f8: $ff
    pop de                                        ; $55f9: $d1
    ld [bc], a                                    ; $55fa: $02
    xor [hl]                                      ; $55fb: $ae
    ld [bc], a                                    ; $55fc: $02
    inc c                                         ; $55fd: $0c
    ld [bc], a                                    ; $55fe: $02
    nop                                           ; $55ff: $00
    ld [bc], a                                    ; $5600: $02
    ld [bc], a                                    ; $5601: $02
    ld [bc], a                                    ; $5602: $02
    dec c                                         ; $5603: $0d
    ld [bc], a                                    ; $5604: $02
    ld [$0c02], sp                                ; $5605: $08 $02 $0c
    add [hl]                                      ; $5608: $86
    ld c, $0a                                     ; $5609: $0e $0a
    ld c, $02                                     ; $560b: $0e $02
    inc c                                         ; $560d: $0c
    inc b                                         ; $560e: $04
    ld a, [bc]                                    ; $560f: $0a
    ld [$0004], sp                                ; $5610: $08 $04 $00
    ld [bc], a                                    ; $5613: $02
    ld bc, $001e                                  ; $5614: $01 $1e $00
    rst $38                                       ; $5617: $ff
    rrca                                          ; $5618: $0f
    dec b                                         ; $5619: $05
    or $0a                                        ; $561a: $f6 $0a
    db $ec                                        ; $561c: $ec
    ld bc, $f4f0                                  ; $561d: $01 $f0 $f4
    pop af                                        ; $5620: $f1
    db $fc                                        ; $5621: $fc
    ldh a, [rDIV]                                 ; $5622: $f0 $04
    di                                            ; $5624: $f3
    add hl, bc                                    ; $5625: $09
    nop                                           ; $5626: $00
    db $f4                                        ; $5627: $f4
    ld [bc], a                                    ; $5628: $02
    ld bc, $0285                                  ; $5629: $01 $85 $02
    inc bc                                        ; $562c: $03
    ld [bc], a                                    ; $562d: $02
    inc bc                                        ; $562e: $03
    ld [bc], a                                    ; $562f: $02
    inc bc                                        ; $5630: $03
    inc bc                                        ; $5631: $03
    add d                                         ; $5632: $82
    ld [bc], a                                    ; $5633: $02
    inc bc                                        ; $5634: $03
    ld [bc], a                                    ; $5635: $02
    rlca                                          ; $5636: $07
    sub d                                         ; $5637: $92
    ld e, $1f                                     ; $5638: $1e $1f
    dec l                                         ; $563a: $2d
    ccf                                           ; $563b: $3f
    ld e, $1f                                     ; $563c: $1e $1f
    dec bc                                        ; $563e: $0b
    rrca                                          ; $563f: $0f
    ld c, $0f                                     ; $5640: $0e $0f
    ld e, $1f                                     ; $5642: $1e $1f
    ld a, $37                                     ; $5644: $3e $37
    rst $38                                       ; $5646: $ff
    rst $00                                       ; $5647: $c7
    ccf                                           ; $5648: $3f
    cpl                                           ; $5649: $2f
    ld [bc], a                                    ; $564a: $02
    add c                                         ; $564b: $81
    add d                                         ; $564c: $82
    ld b, d                                       ; $564d: $42
    jp $ff02                                      ; $564e: $c3 $02 $ff


    sbc b                                         ; $5651: $98
    and [hl]                                      ; $5652: $a6
    rst $38                                       ; $5653: $ff
    add c                                         ; $5654: $81
    rst $38                                       ; $5655: $ff
    ret nc                                        ; $5656: $d0

    rst $38                                       ; $5657: $ff
    inc b                                         ; $5658: $04
    rst $38                                       ; $5659: $ff
    ld b, e                                       ; $565a: $43
    rst $38                                       ; $565b: $ff
    jp nz, Jump_000_11ff                          ; $565c: $c2 $ff $11

    rst $38                                       ; $565f: $ff
    dec c                                         ; $5660: $0d
    rst $38                                       ; $5661: $ff
    adc e                                         ; $5662: $8b
    rst $38                                       ; $5663: $ff
    call Call_0ef_5aff                            ; $5664: $cd $ff $5a
    rst $38                                       ; $5667: $ff
    rst $28                                       ; $5668: $ef
    rst $38                                       ; $5669: $ff
    ld [bc], a                                    ; $566a: $02
    db $fc                                        ; $566b: $fc
    ld [bc], a                                    ; $566c: $02
    add b                                         ; $566d: $80
    add l                                         ; $566e: $85
    ld b, b                                       ; $566f: $40
    ret nz                                        ; $5670: $c0

    ld b, b                                       ; $5671: $40
    ret nz                                        ; $5672: $c0

    ld b, b                                       ; $5673: $40
    inc bc                                        ; $5674: $03
    ret nz                                        ; $5675: $c0

    sub h                                         ; $5676: $94
    and c                                         ; $5677: $a1
    pop hl                                        ; $5678: $e1
    jp nc, Jump_0ef_76f3                          ; $5679: $d2 $f3 $76

    rst $30                                       ; $567c: $f7
    ld l, a                                       ; $567d: $6f
    db $fd                                        ; $567e: $fd
    cpl                                           ; $567f: $2f
    ld hl, sp+$3f                                 ; $5680: $f8 $3f
    ld a, [c]                                     ; $5682: $f2
    cp a                                          ; $5683: $bf
    rst $38                                       ; $5684: $ff
    ccf                                           ; $5685: $3f
    db $f4                                        ; $5686: $f4
    ld a, a                                       ; $5687: $7f
    ld a, [$efff]                                 ; $5688: $fa $ff $ef
    ld [bc], a                                    ; $568b: $02
    db $fc                                        ; $568c: $fc
    ld [bc], a                                    ; $568d: $02
    ld c, $02                                     ; $568e: $0e $02
    db $10                                        ; $5690: $10
    ld [bc], a                                    ; $5691: $02
    rra                                           ; $5692: $1f
    adc h                                         ; $5693: $8c
    inc c                                         ; $5694: $0c
    inc e                                         ; $5695: $1c
    ld c, $1a                                     ; $5696: $0e $1a
    ld e, $12                                     ; $5698: $1e $12
    inc e                                         ; $569a: $1c
    inc b                                         ; $569b: $04
    jr @+$0a                                      ; $569c: $18 $08

    jr jr_0ef_56a8                                ; $569e: $18 $08

    inc b                                         ; $56a0: $04
    db $10                                        ; $56a1: $10
    ld a, [bc]                                    ; $56a2: $0a
    nop                                           ; $56a3: $00
    ld [bc], a                                    ; $56a4: $02
    ld bc, $001e                                  ; $56a5: $01 $1e $00

jr_0ef_56a8:
    rst $38                                       ; $56a8: $ff
    rrca                                          ; $56a9: $0f
    dec b                                         ; $56aa: $05
    or $0a                                        ; $56ab: $f6 $0a
    db $ec                                        ; $56ad: $ec
    ld bc, $f5f0                                  ; $56ae: $01 $f0 $f5
    ldh a, [$fd]                                  ; $56b1: $f0 $fd
    pop af                                        ; $56b3: $f1
    dec b                                         ; $56b4: $05
    ld hl, sp+$08                                 ; $56b5: $f8 $08
    nop                                           ; $56b7: $00
    ld a, [$0202]                                 ; $56b8: $fa $02 $02
    add l                                         ; $56bb: $85
    dec b                                         ; $56bc: $05
    rlca                                          ; $56bd: $07
    inc b                                         ; $56be: $04
    rlca                                          ; $56bf: $07
    dec b                                         ; $56c0: $05
    inc bc                                        ; $56c1: $03
    rlca                                          ; $56c2: $07
    add d                                         ; $56c3: $82
    dec b                                         ; $56c4: $05
    rlca                                          ; $56c5: $07
    ld [bc], a                                    ; $56c6: $02
    rrca                                          ; $56c7: $0f
    sub d                                         ; $56c8: $92
    inc a                                         ; $56c9: $3c
    ccf                                           ; $56ca: $3f
    ld e, d                                       ; $56cb: $5a
    ld a, a                                       ; $56cc: $7f
    dec a                                         ; $56cd: $3d
    ccf                                           ; $56ce: $3f
    ld d, $1f                                     ; $56cf: $16 $1f
    inc e                                         ; $56d1: $1c
    rra                                           ; $56d2: $1f
    dec e                                         ; $56d3: $1d
    rra                                           ; $56d4: $1f
    dec a                                         ; $56d5: $3d
    ccf                                           ; $56d6: $3f
    cp $df                                        ; $56d7: $fe $df
    ccf                                           ; $56d9: $3f
    cpl                                           ; $56da: $2f
    ld [bc], a                                    ; $56db: $02
    ld bc, $029e                                  ; $56dc: $01 $9e $02
    inc bc                                        ; $56df: $03
    add h                                         ; $56e0: $84
    add a                                         ; $56e1: $87
    cp $ff                                        ; $56e2: $fe $ff
    ld c, l                                       ; $56e4: $4d
    rst $38                                       ; $56e5: $ff
    inc bc                                        ; $56e6: $03
    rst $38                                       ; $56e7: $ff
    and c                                         ; $56e8: $a1
    rst $38                                       ; $56e9: $ff
    ld [$86ff], sp                                ; $56ea: $08 $ff $86
    rst $38                                       ; $56ed: $ff
    add h                                         ; $56ee: $84
    rst $38                                       ; $56ef: $ff
    ld [hl+], a                                   ; $56f0: $22
    rst $38                                       ; $56f1: $ff
    dec de                                        ; $56f2: $1b
    rst $38                                       ; $56f3: $ff
    ld d, $ff                                     ; $56f4: $16 $ff
    sbc d                                         ; $56f6: $9a
    rst $38                                       ; $56f7: $ff
    or l                                          ; $56f8: $b5
    rst $38                                       ; $56f9: $ff
    rst $18                                       ; $56fa: $df
    rst $38                                       ; $56fb: $ff
    ld [$8380], sp                                ; $56fc: $08 $80 $83
    ld b, b                                       ; $56ff: $40
    ret nz                                        ; $5700: $c0

    and b                                         ; $5701: $a0
    inc bc                                        ; $5702: $03
    ldh [$8e], a                                  ; $5703: $e0 $8e
    db $db                                        ; $5705: $db
    ei                                            ; $5706: $fb
    ld b, a                                       ; $5707: $47
    rst $38                                       ; $5708: $ff
    ld h, a                                       ; $5709: $67
    db $fd                                        ; $570a: $fd
    ld a, a                                       ; $570b: $7f
    ld sp, hl                                     ; $570c: $f9
    ld a, [hl]                                    ; $570d: $7e
    ld [c], a                                     ; $570e: $e2
    db $fc                                        ; $570f: $fc
    db $ec                                        ; $5710: $ec
    ld hl, sp-$28                                 ; $5711: $f8 $d8
    ld [bc], a                                    ; $5713: $02
    ldh a, [rSC]                                  ; $5714: $f0 $02
    nop                                           ; $5716: $00
    ld [bc], a                                    ; $5717: $02
    inc b                                         ; $5718: $04
    ld [bc], a                                    ; $5719: $02
    ld b, $02                                     ; $571a: $06 $02
    ld bc, $001a                                  ; $571c: $01 $1a $00
    ld [bc], a                                    ; $571f: $02
    ld a, a                                       ; $5720: $7f
    ld e, $00                                     ; $5721: $1e $00
    rst $38                                       ; $5723: $ff
    dec c                                         ; $5724: $0d
    inc b                                         ; $5725: $04
    or $0a                                        ; $5726: $f6 $0a
    db $ec                                        ; $5728: $ec
    ld bc, $f7ef                                  ; $5729: $01 $ef $f7
    rst $28                                       ; $572c: $ef
    rst $38                                       ; $572d: $ff
    push af                                       ; $572e: $f5
    ld bc, $f9ff                                  ; $572f: $01 $ff $f9
    ld [bc], a                                    ; $5732: $02
    inc b                                         ; $5733: $04
    add l                                         ; $5734: $85
    ld a, [bc]                                    ; $5735: $0a
    ld c, $09                                     ; $5736: $0e $09
    rrca                                          ; $5738: $0f
    add hl, bc                                    ; $5739: $09
    inc bc                                        ; $573a: $03
    rrca                                          ; $573b: $0f
    add d                                         ; $573c: $82
    ld a, [bc]                                    ; $573d: $0a
    rrca                                          ; $573e: $0f
    ld [bc], a                                    ; $573f: $02
    rra                                           ; $5740: $1f
    sub b                                         ; $5741: $90
    ld a, b                                       ; $5742: $78
    ld a, a                                       ; $5743: $7f
    or l                                          ; $5744: $b5
    rst $38                                       ; $5745: $ff
    ld a, e                                       ; $5746: $7b
    ld a, a                                       ; $5747: $7f
    inc l                                         ; $5748: $2c
    ccf                                           ; $5749: $3f
    jr c, @+$41                                   ; $574a: $38 $3f

    ld a, $3f                                     ; $574c: $3e $3f
    dec de                                        ; $574e: $1b
    rra                                           ; $574f: $1f
    inc e                                         ; $5750: $1c
    rra                                           ; $5751: $1f
    ld [bc], a                                    ; $5752: $02
    rrca                                          ; $5753: $0f
    ld [bc], a                                    ; $5754: $02
    inc b                                         ; $5755: $04
    sbc [hl]                                      ; $5756: $9e
    ld a, [bc]                                    ; $5757: $0a
    ld c, $12                                     ; $5758: $0e $12
    ld e, $fa                                     ; $575a: $1e $fa
    cp $96                                        ; $575c: $fe $96
    cp $0d                                        ; $575e: $fe $0d
    rst $38                                       ; $5760: $ff
    ld b, $ff                                     ; $5761: $06 $ff
    inc hl                                        ; $5763: $23
    rst $38                                       ; $5764: $ff
    dec de                                        ; $5765: $1b
    rst $38                                       ; $5766: $ff
    ld de, $49ff                                  ; $5767: $11 $ff $49
    rst $38                                       ; $576a: $ff
    dec l                                         ; $576b: $2d
    rst $38                                       ; $576c: $ff
    add hl, sp                                    ; $576d: $39
    rst $38                                       ; $576e: $ff
    dec hl                                        ; $576f: $2b
    rst $38                                       ; $5770: $ff
    sub $fe                                       ; $5771: $d6 $fe
    ld a, h                                       ; $5773: $7c
    db $fc                                        ; $5774: $fc
    inc b                                         ; $5775: $04
    ld [bc], a                                    ; $5776: $02
    add h                                         ; $5777: $84
    ld bc, $0103                                  ; $5778: $01 $03 $01
    inc bc                                        ; $577b: $03
    ld [bc], a                                    ; $577c: $02
    ld [bc], a                                    ; $577d: $02
    ld d, $00                                     ; $577e: $16 $00
    ld [bc], a                                    ; $5780: $02
    rrca                                          ; $5781: $0f
    ld e, $00                                     ; $5782: $1e $00
    rst $38                                       ; $5784: $ff
    dec c                                         ; $5785: $0d
    inc b                                         ; $5786: $04
    or $0a                                        ; $5787: $f6 $0a
    db $ec                                        ; $5789: $ec
    ld bc, $f3f2                                  ; $578a: $01 $f2 $f3
    ld a, [c]                                     ; $578d: $f2
    ei                                            ; $578e: $fb
    ld a, [c]                                     ; $578f: $f2
    inc bc                                        ; $5790: $03
    ld a, [c]                                     ; $5791: $f2
    rlca                                          ; $5792: $07
    ld [bc], a                                    ; $5793: $02
    ld bc, $0285                                  ; $5794: $01 $85 $02
    inc bc                                        ; $5797: $03
    ld [bc], a                                    ; $5798: $02
    inc bc                                        ; $5799: $03
    ld [bc], a                                    ; $579a: $02
    inc bc                                        ; $579b: $03
    inc bc                                        ; $579c: $03
    sub h                                         ; $579d: $94
    ld [bc], a                                    ; $579e: $02
    inc bc                                        ; $579f: $03
    dec b                                         ; $57a0: $05
    rlca                                          ; $57a1: $07
    ld e, $1f                                     ; $57a2: $1e $1f
    inc l                                         ; $57a4: $2c
    ccf                                           ; $57a5: $3f
    dec de                                        ; $57a6: $1b
    rra                                           ; $57a7: $1f
    ld c, $0f                                     ; $57a8: $0e $0f
    ld a, [de]                                    ; $57aa: $1a
    rra                                           ; $57ab: $1f
    ld a, $3f                                     ; $57ac: $3e $3f
    rst $38                                       ; $57ae: $ff
    rst $08                                       ; $57af: $cf
    ccf                                           ; $57b0: $3f
    cpl                                           ; $57b1: $2f
    ld [bc], a                                    ; $57b2: $02
    ld bc, $0002                                  ; $57b3: $01 $02 $00
    ld [bc], a                                    ; $57b6: $02
    add c                                         ; $57b7: $81
    add d                                         ; $57b8: $82
    ld b, d                                       ; $57b9: $42
    jp $ff02                                      ; $57ba: $c3 $02 $ff


    sub [hl]                                      ; $57bd: $96
    and $ff                                       ; $57be: $e6 $ff
    ld bc, $d0ff                                  ; $57c0: $01 $ff $d0

jr_0ef_57c3:
    rst $38                                       ; $57c3: $ff
    inc b                                         ; $57c4: $04
    rst $38                                       ; $57c5: $ff
    jp Jump_000_12ff                              ; $57c6: $c3 $ff $12


    rst $38                                       ; $57c9: $ff
    rrca                                          ; $57ca: $0f
    rst $38                                       ; $57cb: $ff
    adc c                                         ; $57cc: $89
    rst $38                                       ; $57cd: $ff
    call Call_000_1aff                            ; $57ce: $cd $ff $1a
    rst $38                                       ; $57d1: $ff
    rst $28                                       ; $57d2: $ef
    rst $38                                       ; $57d3: $ff
    ld [bc], a                                    ; $57d4: $02
    ld hl, sp+$02                                 ; $57d5: $f8 $02
    add b                                         ; $57d7: $80
    add l                                         ; $57d8: $85
    ld b, b                                       ; $57d9: $40
    ret nz                                        ; $57da: $c0

    ld b, b                                       ; $57db: $40
    ret nz                                        ; $57dc: $c0

    ld b, b                                       ; $57dd: $40
    inc bc                                        ; $57de: $03
    ret nz                                        ; $57df: $c0

    adc l                                         ; $57e0: $8d
    jr nz, jr_0ef_57c3                            ; $57e1: $20 $e0

    or b                                          ; $57e3: $b0
    ldh a, [$50]                                  ; $57e4: $f0 $50
    ldh a, [$6e]                                  ; $57e6: $f0 $6e
    cp $2f                                        ; $57e8: $fe $2f
    ld sp, hl                                     ; $57ea: $f9
    xor a                                         ; $57eb: $af
    cp $69                                        ; $57ec: $fe $69
    ld [bc], a                                    ; $57ee: $02
    rst $38                                       ; $57ef: $ff
    add e                                         ; $57f0: $83
    cp $ff                                        ; $57f1: $fe $ff
    pop af                                        ; $57f3: $f1
    ld [bc], a                                    ; $57f4: $02
    cp $12                                        ; $57f5: $fe $12
    nop                                           ; $57f7: $00
    ld [bc], a                                    ; $57f8: $02
    inc bc                                        ; $57f9: $03
    ld [bc], a                                    ; $57fa: $02
    inc c                                         ; $57fb: $0c
    ld [bc], a                                    ; $57fc: $02
    ld [$0c84], sp                                ; $57fd: $08 $84 $0c
    inc b                                         ; $5800: $04
    inc c                                         ; $5801: $0c
    inc b                                         ; $5802: $04
    ld [bc], a                                    ; $5803: $02
    ld [$0004], sp                                ; $5804: $08 $04 $00
    rst $38                                       ; $5807: $ff
    dec c                                         ; $5808: $0d
    inc b                                         ; $5809: $04
    ld a, [$ed09]                                 ; $580a: $fa $09 $ed
    rst $30                                       ; $580d: $f7
    push hl                                       ; $580e: $e5
    ei                                            ; $580f: $fb
    add sp, $03                                   ; $5810: $e8 $03
    pop af                                        ; $5812: $f1
    inc b                                         ; $5813: $04
    push af                                       ; $5814: $f5
    ei                                            ; $5815: $fb
    add c                                         ; $5816: $81
    nop                                           ; $5817: $00
    ld [bc], a                                    ; $5818: $02
    ld [bc], a                                    ; $5819: $02
    or a                                          ; $581a: $b7
    dec b                                         ; $581b: $05
    ld [bc], a                                    ; $581c: $02
    dec h                                         ; $581d: $25
    inc hl                                        ; $581e: $23
    ld d, h                                       ; $581f: $54
    inc sp                                        ; $5820: $33
    ld c, h                                       ; $5821: $4c
    dec sp                                        ; $5822: $3b
    ld b, h                                       ; $5823: $44
    dec sp                                        ; $5824: $3b
    ld b, h                                       ; $5825: $44
    dec a                                         ; $5826: $3d
    ld b, d                                       ; $5827: $42
    ld e, $21                                     ; $5828: $1e $21
    inc d                                         ; $582a: $14
    ld hl, $100a                                  ; $582b: $21 $0a $10
    dec b                                         ; $582e: $05
    add hl, bc                                    ; $582f: $09
    dec e                                         ; $5830: $1d
    ld e, $29                                     ; $5831: $1e $29
    ld [hl], $59                                  ; $5833: $36 $59
    ld h, a                                       ; $5835: $67
    adc $b2                                       ; $5836: $ce $b2
    nop                                           ; $5838: $00
    add b                                         ; $5839: $80
    nop                                           ; $583a: $00
    and b                                         ; $583b: $a0
    add b                                         ; $583c: $80
    ld [hl], b                                    ; $583d: $70
    ret nz                                        ; $583e: $c0

    jr nc, @-$7e                                  ; $583f: $30 $80

    jr nc, jr_0ef_5883                            ; $5841: $30 $40

    jr nc, @-$5e                                  ; $5843: $30 $a0

    stop                                          ; $5845: $10 $00
    and b                                         ; $5847: $a0
    or c                                          ; $5848: $b1
    pop af                                        ; $5849: $f1
    rst $30                                       ; $584a: $f7
    ld c, [hl]                                    ; $584b: $4e
    cp a                                          ; $584c: $bf
    rst $08                                       ; $584d: $cf
    ld c, a                                       ; $584e: $4f
    ld a, d                                       ; $584f: $7a
    dec sp                                        ; $5850: $3b
    dec a                                         ; $5851: $3d
    inc b                                         ; $5852: $04
    ld c, [hl]                                    ; $5853: $4e
    ld [bc], a                                    ; $5854: $02
    sbc d                                         ; $5855: $9a
    ld [bc], a                                    ; $5856: $02
    ld bc, $0002                                  ; $5857: $01 $02 $00
    ld [bc], a                                    ; $585a: $02
    ld bc, $0008                                  ; $585b: $01 $08 $00
    ld [bc], a                                    ; $585e: $02
    jr z, @+$04                                   ; $585f: $28 $02

    ret nz                                        ; $5861: $c0

    ld c, $00                                     ; $5862: $0e $00
    add d                                         ; $5864: $82
    db $ec                                        ; $5865: $ec
    sbc h                                         ; $5866: $9c
    ld [bc], a                                    ; $5867: $02
    ldh a, [rSC]                                  ; $5868: $f0 $02
    add c                                         ; $586a: $81
    ld [bc], a                                    ; $586b: $02
    ld b, b                                       ; $586c: $40
    jr jr_0ef_586f                                ; $586d: $18 $00

jr_0ef_586f:
    rst $38                                       ; $586f: $ff
    add hl, bc                                    ; $5870: $09
    ld [bc], a                                    ; $5871: $02
    ld a, [$ed09]                                 ; $5872: $fa $09 $ed
    rst $30                                       ; $5875: $f7
    rst $28                                       ; $5876: $ef
    db $fc                                        ; $5877: $fc
    rst $28                                       ; $5878: $ef
    inc b                                         ; $5879: $04
    ld [bc], a                                    ; $587a: $02
    nop                                           ; $587b: $00
    ld [bc], a                                    ; $587c: $02
    ld c, $8c                                     ; $587d: $0e $8c
    ld sp, $5a3f                                  ; $587f: $31 $3f $5a
    ld h, l                                       ; $5882: $65

jr_0ef_5883:
    ld c, d                                       ; $5883: $4a
    ld [hl], l                                    ; $5884: $75
    push bc                                       ; $5885: $c5
    cp [hl]                                       ; $5886: $be
    jp hl                                         ; $5887: $e9


    sbc d                                         ; $5888: $9a
    ldh a, [$f1]                                  ; $5889: $f0 $f1
    ld [bc], a                                    ; $588b: $02
    add b                                         ; $588c: $80
    ld [bc], a                                    ; $588d: $02
    ld b, c                                       ; $588e: $41
    inc c                                         ; $588f: $0c
    nop                                           ; $5890: $00
    ld [bc], a                                    ; $5891: $02
    ld h, d                                       ; $5892: $62
    adc [hl]                                      ; $5893: $8e
    rst $28                                       ; $5894: $ef
    sbc l                                         ; $5895: $9d
    ld a, $de                                     ; $5896: $3e $de
    rst $18                                       ; $5898: $df
    dec [hl]                                      ; $5899: $35
    sub $3a                                       ; $589a: $d6 $3a
    call z, $8a2c                                 ; $589c: $cc $2c $8a
    ld c, d                                       ; $589f: $4a
    ld d, d                                       ; $58a0: $52
    jp nc, Jump_0ef_4402                          ; $58a1: $d2 $02 $44

    ld [bc], a                                    ; $58a4: $02
    add b                                         ; $58a5: $80
    inc c                                         ; $58a6: $0c
    nop                                           ; $58a7: $00
    rst $38                                       ; $58a8: $ff
    dec c                                         ; $58a9: $0d
    inc b                                         ; $58aa: $04
    ld a, [$ed09]                                 ; $58ab: $fa $09 $ed
    rst $30                                       ; $58ae: $f7
    add sp, -$0b                                  ; $58af: $e8 $f5
    push hl                                       ; $58b1: $e5
    db $fd                                        ; $58b2: $fd
    push af                                       ; $58b3: $f5
    db $fd                                        ; $58b4: $fd
    ld [$8a05], a                                 ; $58b5: $ea $05 $8a
    nop                                           ; $58b8: $00
    ld bc, $0100                                  ; $58b9: $01 $00 $01
    nop                                           ; $58bc: $00
    ld bc, $0100                                  ; $58bd: $01 $00 $01
    nop                                           ; $58c0: $00
    ld bc, $000a                                  ; $58c1: $01 $0a $00
    ld [bc], a                                    ; $58c4: $02
    ld bc, $0384                                  ; $58c5: $01 $84 $03
    ld [bc], a                                    ; $58c8: $02
    inc bc                                        ; $58c9: $03
    ld [bc], a                                    ; $58ca: $02
    ld [bc], a                                    ; $58cb: $02
    inc bc                                        ; $58cc: $03

jr_0ef_58cd:
    ld [bc], a                                    ; $58cd: $02
    ld [bc], a                                    ; $58ce: $02
    ld [bc], a                                    ; $58cf: $02
    ld bc, $0081                                  ; $58d0: $01 $81 $00
    ld [bc], a                                    ; $58d3: $02
    db $10                                        ; $58d4: $10
    sbc l                                         ; $58d5: $9d
    jr z, jr_0ef_58f0                             ; $58d6: $28 $18

    and h                                         ; $58d8: $a4
    sbc b                                         ; $58d9: $98
    ld h, h                                       ; $58da: $64
    call c, $dc22                                 ; $58db: $dc $22 $dc
    ld [hl+], a                                   ; $58de: $22
    xor $11                                       ; $58df: $ee $11
    or $08                                        ; $58e1: $f6 $08

jr_0ef_58e3:
    ld a, c                                       ; $58e3: $79
    add h                                         ; $58e4: $84
    ld d, d                                       ; $58e5: $52
    add h                                         ; $58e6: $84
    add hl, hl                                    ; $58e7: $29
    ld b, d                                       ; $58e8: $42
    ld e, l                                       ; $58e9: $5d
    ld a, c                                       ; $58ea: $79
    or e                                          ; $58eb: $b3
    adc $66                                       ; $58ec: $ce $66
    sbc e                                         ; $58ee: $9b
    dec l                                         ; $58ef: $2d

jr_0ef_58f0:
    db $dd                                        ; $58f0: $dd
    jr nc, jr_0ef_58e3                            ; $58f1: $30 $f0

    ld [bc], a                                    ; $58f3: $02
    ret nz                                        ; $58f4: $c0

    ld [bc], a                                    ; $58f5: $02
    nop                                           ; $58f6: $00
    ld [bc], a                                    ; $58f7: $02
    inc bc                                        ; $58f8: $03
    ld [bc], a                                    ; $58f9: $02
    nop                                           ; $58fa: $00
    ld [bc], a                                    ; $58fb: $02
    inc bc                                        ; $58fc: $03
    rla                                           ; $58fd: $17
    nop                                           ; $58fe: $00
    adc e                                         ; $58ff: $8b
    add b                                         ; $5900: $80
    nop                                           ; $5901: $00
    ret nz                                        ; $5902: $c0

    nop                                           ; $5903: $00
    ret nz                                        ; $5904: $c0

    nop                                           ; $5905: $00
    ret nz                                        ; $5906: $c0

    add b                                         ; $5907: $80
    ld b, b                                       ; $5908: $40
    nop                                           ; $5909: $00
    ld b, b                                       ; $590a: $40
    ld [bc], a                                    ; $590b: $02
    db $e4                                        ; $590c: $e4
    adc b                                         ; $590d: $88
    sbc $3a                                       ; $590e: $de $3a
    db $fc                                        ; $5910: $fc
    inc a                                         ; $5911: $3c
    ld a, $ea                                     ; $5912: $3e $ea
    db $ec                                        ; $5914: $ec
    db $f4                                        ; $5915: $f4
    ld [bc], a                                    ; $5916: $02
    ret c                                         ; $5917: $d8

    ld [bc], a                                    ; $5918: $02
    call nc, $a402                                ; $5919: $d4 $02 $a4
    ld [bc], a                                    ; $591c: $02
    adc b                                         ; $591d: $88
    ld [bc], a                                    ; $591e: $02
    nop                                           ; $591f: $00
    rst $38                                       ; $5920: $ff
    dec bc                                        ; $5921: $0b
    inc bc                                        ; $5922: $03
    ld a, [$ed09]                                 ; $5923: $fa $09 $ed
    rst $30                                       ; $5926: $f7
    rst $28                                       ; $5927: $ef
    ld a, [$02ef]                                 ; $5928: $fa $ef $02
    rst $28                                       ; $592b: $ef
    inc b                                         ; $592c: $04
    ld [bc], a                                    ; $592d: $02
    rlca                                          ; $592e: $07
    adc h                                         ; $592f: $8c
    inc e                                         ; $5930: $1c
    dec de                                        ; $5931: $1b
    inc l                                         ; $5932: $2c
    inc sp                                        ; $5933: $33
    ld h, l                                       ; $5934: $65
    ld e, d                                       ; $5935: $5a
    ld h, a                                       ; $5936: $67
    ld e, [hl]                                    ; $5937: $5e
    cp c                                          ; $5938: $b9
    cp d                                          ; $5939: $ba
    add b                                         ; $593a: $80
    add c                                         ; $593b: $81
    ld [de], a                                    ; $593c: $12
    nop                                           ; $593d: $00
    ld [bc], a                                    ; $593e: $02
    jr c, jr_0ef_58cd                             ; $593f: $38 $8c

    db $db                                        ; $5941: $db
    rst $20                                       ; $5942: $e7
    xor a                                         ; $5943: $af
    ld d, a                                       ; $5944: $57
    and a                                         ; $5945: $a7
    ld e, l                                       ; $5946: $5d
    xor l                                         ; $5947: $ad
    ld e, [hl]                                    ; $5948: $5e
    ld l, e                                       ; $5949: $6b
    sbc e                                         ; $594a: $9b
    ld a, [bc]                                    ; $594b: $0a
    ld [$1202], a                                 ; $594c: $ea $02 $12
    ld [bc], a                                    ; $594f: $02
    ld h, b                                       ; $5950: $60
    ld c, $00                                     ; $5951: $0e $00
    ld [bc], a                                    ; $5953: $02
    ld [bc], a                                    ; $5954: $02
    add d                                         ; $5955: $82
    inc bc                                        ; $5956: $03
    ld bc, $0202                                  ; $5957: $01 $02 $02
    add d                                         ; $595a: $82
    inc bc                                        ; $595b: $03
    ld bc, $0202                                  ; $595c: $01 $02 $02
    ld [bc], a                                    ; $595f: $02
    nop                                           ; $5960: $00
    ld b, $02                                     ; $5961: $06 $02
    ld c, $00                                     ; $5963: $0e $00
    rst $38                                       ; $5965: $ff
    dec c                                         ; $5966: $0d
    inc b                                         ; $5967: $04
    ld a, [$ed09]                                 ; $5968: $fa $09 $ed
    rst $30                                       ; $596b: $f7
    and $f9                                       ; $596c: $e6 $f9
    push hl                                       ; $596e: $e5
    ld bc, $04f0                                  ; $596f: $01 $f0 $04
    push af                                       ; $5972: $f5
    db $fc                                        ; $5973: $fc
    sub d                                         ; $5974: $92
    nop                                           ; $5975: $00
    ld bc, $0900                                  ; $5976: $01 $00 $09
    ld [$0c15], sp                                ; $5979: $08 $15 $0c
    inc de                                        ; $597c: $13
    ld c, $11                                     ; $597d: $0e $11

jr_0ef_597f:
    ld c, $11                                     ; $597f: $0e $11
    rrca                                          ; $5981: $0f
    db $10                                        ; $5982: $10

jr_0ef_5983:
    ld b, $08                                     ; $5983: $06 $08
    ld bc, $0204                                  ; $5985: $01 $04 $02
    rlca                                          ; $5988: $07
    add [hl]                                      ; $5989: $86
    ld e, $19                                     ; $598a: $1e $19
    inc sp                                        ; $598c: $33
    inc l                                         ; $598d: $2c
    ld [hl], d                                    ; $598e: $72
    ld c, l                                       ; $598f: $4d
    ld [bc], a                                    ; $5990: $02
    ld a, a                                       ; $5991: $7f
    inc b                                         ; $5992: $04
    add b                                         ; $5993: $80
    add c                                         ; $5994: $81
    nop                                           ; $5995: $00
    ld [bc], a                                    ; $5996: $02
    add b                                         ; $5997: $80
    sbc l                                         ; $5998: $9d
    ld b, b                                       ; $5999: $40
    ret nz                                        ; $599a: $c0

    jr nz, @-$3e                                  ; $599b: $20 $c0

    jr nz, jr_0ef_597f                            ; $599d: $20 $e0

    inc d                                         ; $599f: $14
    ldh [rNR21], a                                ; $59a0: $e0 $16
    ldh a, [$0e]                                  ; $59a2: $f0 $0e
    ld h, b                                       ; $59a4: $60
    adc [hl]                                      ; $59a5: $8e
    sub b                                         ; $59a6: $90
    ld c, h                                       ; $59a7: $4c
    jr z, jr_0ef_59ee                             ; $59a8: $28 $44

    ret nc                                        ; $59aa: $d0

    ld h, h                                       ; $59ab: $64
    ld l, h                                       ; $59ac: $6c
    cp h                                          ; $59ad: $bc
    dec e                                         ; $59ae: $1d
    db $e3                                        ; $59af: $e3
    ld l, a                                       ; $59b0: $6f
    or e                                          ; $59b1: $b3
    db $d3                                        ; $59b2: $d3
    sbc $1e                                       ; $59b3: $de $1e
    rra                                           ; $59b5: $1f
    ld [bc], a                                    ; $59b6: $02
    ld [bc], a                                    ; $59b7: $02
    add d                                         ; $59b8: $82
    rlca                                          ; $59b9: $07
    dec b                                         ; $59ba: $05
    ld [bc], a                                    ; $59bb: $02
    ld b, $84                                     ; $59bc: $06 $84
    rlca                                          ; $59be: $07
    dec b                                         ; $59bf: $05
    ld b, $02                                     ; $59c0: $06 $02
    ld [bc], a                                    ; $59c2: $02
    sbc h                                         ; $59c3: $9c
    inc b                                         ; $59c4: $04
    inc d                                         ; $59c5: $14
    ld [bc], a                                    ; $59c6: $02
    jr z, jr_0ef_59cb                             ; $59c7: $28 $02

    ret nz                                        ; $59c9: $c0

    inc c                                         ; $59ca: $0c

jr_0ef_59cb:
    nop                                           ; $59cb: $00
    ld [bc], a                                    ; $59cc: $02
    ld bc, $0602                                  ; $59cd: $01 $02 $06
    inc e                                         ; $59d0: $1c
    nop                                           ; $59d1: $00

jr_0ef_59d2:
    rst $38                                       ; $59d2: $ff
    dec bc                                        ; $59d3: $0b
    inc bc                                        ; $59d4: $03
    ld a, [$ed09]                                 ; $59d5: $fa $09 $ed
    rst $30                                       ; $59d8: $f7
    rst $28                                       ; $59d9: $ef
    ld a, [$02ef]                                 ; $59da: $fa $ef $02
    rst $28                                       ; $59dd: $ef
    inc b                                         ; $59de: $04
    ld [bc], a                                    ; $59df: $02
    rlca                                          ; $59e0: $07
    adc [hl]                                      ; $59e1: $8e
    inc e                                         ; $59e2: $1c
    dec de                                        ; $59e3: $1b
    inc l                                         ; $59e4: $2c
    inc sp                                        ; $59e5: $33
    ld h, h                                       ; $59e6: $64
    ld e, e                                       ; $59e7: $5b
    ld h, a                                       ; $59e8: $67
    ld e, [hl]                                    ; $59e9: $5e
    ld a, c                                       ; $59ea: $79
    ld a, d                                       ; $59eb: $7a
    add e                                         ; $59ec: $83
    add h                                         ; $59ed: $84

jr_0ef_59ee:
    add b                                         ; $59ee: $80
    add e                                         ; $59ef: $83
    stop                                          ; $59f0: $10 $00
    ld [bc], a                                    ; $59f2: $02
    jr c, jr_0ef_5983                             ; $59f3: $38 $8e

    db $eb                                        ; $59f5: $eb
    rst $10                                       ; $59f6: $d7
    rla                                           ; $59f7: $17
    rst $28                                       ; $59f8: $ef
    rst $10                                       ; $59f9: $d7
    dec l                                         ; $59fa: $2d
    or l                                          ; $59fb: $b5
    ld c, [hl]                                    ; $59fc: $4e
    xor a                                         ; $59fd: $af
    ld e, a                                       ; $59fe: $5f
    ld l, l                                       ; $59ff: $6d
    sbc l                                         ; $5a00: $9d
    ld b, $e6                                     ; $5a01: $06 $e6
    ld [bc], a                                    ; $5a03: $02
    inc c                                         ; $5a04: $0c
    ld [bc], a                                    ; $5a05: $02
    jr nc, @+$0e                                  ; $5a06: $30 $0c

    nop                                           ; $5a08: $00
    ld [bc], a                                    ; $5a09: $02
    ld [bc], a                                    ; $5a0a: $02
    add d                                         ; $5a0b: $82
    inc bc                                        ; $5a0c: $03
    ld bc, $0202                                  ; $5a0d: $01 $02 $02
    add d                                         ; $5a10: $82
    inc bc                                        ; $5a11: $03
    ld bc, $0202                                  ; $5a12: $01 $02 $02
    ld d, $00                                     ; $5a15: $16 $00
    rst $38                                       ; $5a17: $ff
    dec c                                         ; $5a18: $0d
    inc b                                         ; $5a19: $04
    ld a, [$ed09]                                 ; $5a1a: $fa $09 $ed
    rst $30                                       ; $5a1d: $f7
    add sp, -$04                                  ; $5a1e: $e8 $fc
    db $e3                                        ; $5a20: $e3
    inc b                                         ; $5a21: $04
    db $e3                                        ; $5a22: $e3
    ld b, $f3                                     ; $5a23: $06 $f3
    ld [bc], a                                    ; $5a25: $02
    ld [bc], a                                    ; $5a26: $02
    ld e, $88                                     ; $5a27: $1e $88
    di                                            ; $5a29: $f3
    db $ed                                        ; $5a2a: $ed
    ld [hl-], a                                   ; $5a2b: $32
    dec l                                         ; $5a2c: $2d
    ld d, $19                                     ; $5a2d: $16 $19
    inc c                                         ; $5a2f: $0c
    dec bc                                        ; $5a30: $0b
    ld [bc], a                                    ; $5a31: $02
    rlca                                          ; $5a32: $07
    ld [bc], a                                    ; $5a33: $02
    nop                                           ; $5a34: $00
    ld [bc], a                                    ; $5a35: $02
    ld bc, $0402                                  ; $5a36: $01 $02 $04
    ld [bc], a                                    ; $5a39: $02
    inc bc                                        ; $5a3a: $03
    ld [bc], a                                    ; $5a3b: $02
    ld bc, $000b                                  ; $5a3c: $01 $0b $00
    ld [bc], a                                    ; $5a3f: $02
    inc b                                         ; $5a40: $04
    sub l                                         ; $5a41: $95
    dec bc                                        ; $5a42: $0b
    dec b                                         ; $5a43: $05
    ld a, [bc]                                    ; $5a44: $0a
    dec c                                         ; $5a45: $0d
    ld [de], a                                    ; $5a46: $12
    dec bc                                        ; $5a47: $0b
    inc d                                         ; $5a48: $14
    rla                                           ; $5a49: $17
    jr z, jr_0ef_59d2                             ; $5a4a: $28 $86

    xor c                                         ; $5a4c: $a9
    ld b, [hl]                                    ; $5a4d: $46
    pop de                                        ; $5a4e: $d1
    call z, $d063                                 ; $5a4f: $cc $63 $d0
    ld d, l                                       ; $5a52: $55
    cp b                                          ; $5a53: $b8
    adc $b8                                       ; $5a54: $ce $b8
    ret z                                         ; $5a56: $c8

    ld [bc], a                                    ; $5a57: $02
    ld a, b                                       ; $5a58: $78
    add a                                         ; $5a59: $87
    db $f4                                        ; $5a5a: $f4
    db $ec                                        ; $5a5b: $ec
    cp h                                          ; $5a5c: $bc
    and h                                         ; $5a5d: $a4
    ld a, b                                       ; $5a5e: $78
    ld e, b                                       ; $5a5f: $58
    nop                                           ; $5a60: $00
    ld [bc], a                                    ; $5a61: $02
    ld [bc], a                                    ; $5a62: $02
    adc a                                         ; $5a63: $8f
    ld bc, $0102                                  ; $5a64: $01 $02 $01
    ld [bc], a                                    ; $5a67: $02
    ld bc, $0200                                  ; $5a68: $01 $00 $02
    nop                                           ; $5a6b: $00
    ld [bc], a                                    ; $5a6c: $02
    nop                                           ; $5a6d: $00
    inc bc                                        ; $5a6e: $03
    nop                                           ; $5a6f: $00
    inc bc                                        ; $5a70: $03
    nop                                           ; $5a71: $00
    ld [bc], a                                    ; $5a72: $02
    ld c, $00                                     ; $5a73: $0e $00
    add d                                         ; $5a75: $82
    ccf                                           ; $5a76: $3f
    dec a                                         ; $5a77: $3d
    ld [bc], a                                    ; $5a78: $02
    ld a, [bc]                                    ; $5a79: $0a
    ld [bc], a                                    ; $5a7a: $02
    jr nc, jr_0ef_5a97                            ; $5a7b: $30 $1a

    nop                                           ; $5a7d: $00
    rst $38                                       ; $5a7e: $ff
    dec bc                                        ; $5a7f: $0b
    inc bc                                        ; $5a80: $03
    ld a, [$ed09]                                 ; $5a81: $fa $09 $ed
    rst $30                                       ; $5a84: $f7
    rst $28                                       ; $5a85: $ef
    ei                                            ; $5a86: $fb
    rst $28                                       ; $5a87: $ef
    inc bc                                        ; $5a88: $03
    rst $28                                       ; $5a89: $ef
    inc b                                         ; $5a8a: $04
    ld [bc], a                                    ; $5a8b: $02
    rlca                                          ; $5a8c: $07
    sub h                                         ; $5a8d: $94
    dec de                                        ; $5a8e: $1b
    inc e                                         ; $5a8f: $1c
    ld [hl-], a                                   ; $5a90: $32
    dec l                                         ; $5a91: $2d
    ld [hl], l                                    ; $5a92: $75
    ld c, d                                       ; $5a93: $4a
    db $fd                                        ; $5a94: $fd
    cp $83                                        ; $5a95: $fe $83

jr_0ef_5a97:
    add h                                         ; $5a97: $84
    inc bc                                        ; $5a98: $03
    inc b                                         ; $5a99: $04
    ld b, $09                                     ; $5a9a: $06 $09
    ld b, $09                                     ; $5a9c: $06 $09
    inc b                                         ; $5a9e: $04
    dec bc                                        ; $5a9f: $0b
    nop                                           ; $5aa0: $00
    inc b                                         ; $5aa1: $04
    ld a, [bc]                                    ; $5aa2: $0a
    nop                                           ; $5aa3: $00
    sub [hl]                                      ; $5aa4: $96
    ld b, b                                       ; $5aa5: $40
    ret nz                                        ; $5aa6: $c0

    ld e, b                                       ; $5aa7: $58
    cp b                                          ; $5aa8: $b8
    db $ec                                        ; $5aa9: $ec
    inc [hl]                                      ; $5aaa: $34
    adc $76                                       ; $5aab: $ce $76
    xor a                                         ; $5aad: $af
    ld a, c                                       ; $5aae: $79
    xor a                                         ; $5aaf: $af
    ld e, [hl]                                    ; $5ab0: $5e
    ld c, a                                       ; $5ab1: $4f
    xor e                                         ; $5ab2: $ab
    call nc, $8034                                ; $5ab3: $d4 $34 $80
    ld b, b                                       ; $5ab6: $40
    add b                                         ; $5ab7: $80
    ld b, b                                       ; $5ab8: $40
    nop                                           ; $5ab9: $00
    add b                                         ; $5aba: $80
    inc d                                         ; $5abb: $14
    nop                                           ; $5abc: $00
    ld [bc], a                                    ; $5abd: $02
    ld bc, $0014                                  ; $5abe: $01 $14 $00
    rst $38                                       ; $5ac1: $ff
    dec bc                                        ; $5ac2: $0b
    inc bc                                        ; $5ac3: $03
    ld a, [$ed09]                                 ; $5ac4: $fa $09 $ed
    rst $30                                       ; $5ac7: $f7
    pop af                                        ; $5ac8: $f1
    cp $f1                                        ; $5ac9: $fe $f1
    ld b, $01                                     ; $5acb: $06 $01
    dec b                                         ; $5acd: $05
    adc [hl]                                      ; $5ace: $8e
    nop                                           ; $5acf: $00
    ld a, $1e                                     ; $5ad0: $3e $1e
    pop hl                                        ; $5ad2: $e1
    ld l, a                                       ; $5ad3: $6f
    sub b                                         ; $5ad4: $90
    ld h, $58                                     ; $5ad5: $26 $58
    add hl, de                                    ; $5ad7: $19
    ld h, $06                                     ; $5ad8: $26 $06
    jr jr_0ef_5adc                                ; $5ada: $18 $00

jr_0ef_5adc:
    rlca                                          ; $5adc: $07
    ld [bc], a                                    ; $5add: $02
    nop                                           ; $5ade: $00
    ld b, $01                                     ; $5adf: $06 $01
    dec bc                                        ; $5ae1: $0b
    nop                                           ; $5ae2: $00
    sbc e                                         ; $5ae3: $9b
    ld [$9800], sp                                ; $5ae4: $08 $00 $98
    add b                                         ; $5ae7: $80
    ld e, b                                       ; $5ae8: $58
    sbc d                                         ; $5ae9: $9a
    ld a, [hl-]                                   ; $5aea: $3a
    ld a, a                                       ; $5aeb: $7f
    dec h                                         ; $5aec: $25
    ld l, $ba                                     ; $5aed: $2e $ba
    ld e, [hl]                                    ; $5aef: $5e
    cp $bd                                        ; $5af0: $fe $bd
    call $fd0d                                    ; $5af2: $cd $0d $fd
    ld l, d                                       ; $5af5: $6a
    sbc d                                         ; $5af6: $9a
    db $f4                                        ; $5af7: $f4
    inc c                                         ; $5af8: $0c
    adc b                                         ; $5af9: $88
    ld hl, sp-$64                                 ; $5afa: $f8 $9c
    db $e4                                        ; $5afc: $e4
    ld a, h                                       ; $5afd: $7c
    ld h, h                                       ; $5afe: $64

Call_0ef_5aff:
    ld [bc], a                                    ; $5aff: $02
    inc e                                         ; $5b00: $1c
    ld [bc], a                                    ; $5b01: $02
    inc b                                         ; $5b02: $04
    ld [bc], a                                    ; $5b03: $02
    ld bc, $001e                                  ; $5b04: $01 $1e $00
    rst $38                                       ; $5b07: $ff
    add hl, bc                                    ; $5b08: $09
    ld [bc], a                                    ; $5b09: $02
    ld a, [$ed09]                                 ; $5b0a: $fa $09 $ed
    rst $30                                       ; $5b0d: $f7

jr_0ef_5b0e:
    db $f4                                        ; $5b0e: $f4
    ld [bc], a                                    ; $5b0f: $02
    push af                                       ; $5b10: $f5
    add hl, bc                                    ; $5b11: $09
    adc [hl]                                      ; $5b12: $8e
    nop                                           ; $5b13: $00
    ld a, $1e                                     ; $5b14: $3e $1e
    ld h, c                                       ; $5b16: $61
    ld e, a                                       ; $5b17: $5f
    and b                                         ; $5b18: $a0
    dec l                                         ; $5b19: $2d
    ld d, b                                       ; $5b1a: $50
    ld d, $28                                     ; $5b1b: $16 $28
    inc b                                         ; $5b1d: $04
    add hl, de                                    ; $5b1e: $19
    ld bc, $0207                                  ; $5b1f: $01 $07 $02
    ld bc, $0281                                  ; $5b22: $01 $81 $02
    ld [bc], a                                    ; $5b25: $02
    inc bc                                        ; $5b26: $03
    add e                                         ; $5b27: $83
    ld [bc], a                                    ; $5b28: $02
    inc bc                                        ; $5b29: $03
    ld [bc], a                                    ; $5b2a: $02
    inc b                                         ; $5b2b: $04
    ld bc, $0007                                  ; $5b2c: $01 $07 $00
    adc e                                         ; $5b2f: $8b
    ld [$5800], sp                                ; $5b30: $08 $00 $58
    nop                                           ; $5b33: $00
    jr @+$5c                                      ; $5b34: $18 $5a

    ld a, [hl-]                                   ; $5b36: $3a
    ld a, a                                       ; $5b37: $7f
    ld h, l                                       ; $5b38: $65
    ld l, [hl]                                    ; $5b39: $6e
    ld a, [hl-]                                   ; $5b3a: $3a
    ld [bc], a                                    ; $5b3b: $02
    ld a, [hl]                                    ; $5b3c: $7e
    adc h                                         ; $5b3d: $8c
    dec [hl]                                      ; $5b3e: $35
    ld d, l                                       ; $5b3f: $55
    ld a, c                                       ; $5b40: $79
    add hl, bc                                    ; $5b41: $09
    ld [$1878], sp                                ; $5b42: $08 $78 $18
    ld l, b                                       ; $5b45: $68
    inc a                                         ; $5b46: $3c
    ld b, h                                       ; $5b47: $44
    ld [hl], h                                    ; $5b48: $74
    ld l, h                                       ; $5b49: $6c
    ld [bc], a                                    ; $5b4a: $02
    inc e                                         ; $5b4b: $1c
    ld [bc], a                                    ; $5b4c: $02
    inc b                                         ; $5b4d: $04
    ld [bc], a                                    ; $5b4e: $02
    ld [bc], a                                    ; $5b4f: $02
    rst $38                                       ; $5b50: $ff
    dec bc                                        ; $5b51: $0b
    inc bc                                        ; $5b52: $03
    ld a, [$ed09]                                 ; $5b53: $fa $09 $ed
    rst $30                                       ; $5b56: $f7
    ldh a, [rIE]                                  ; $5b57: $f0 $ff
    db $f4                                        ; $5b59: $f4
    rlca                                          ; $5b5a: $07
    nop                                           ; $5b5b: $00
    rst $38                                       ; $5b5c: $ff
    sub b                                         ; $5b5d: $90
    nop                                           ; $5b5e: $00
    jr c, jr_0ef_5b79                             ; $5b5f: $38 $18

    inc h                                         ; $5b61: $24
    inc e                                         ; $5b62: $1c
    ld h, d                                       ; $5b63: $62
    ld e, [hl]                                    ; $5b64: $5e
    and c                                         ; $5b65: $a1
    ld l, l                                       ; $5b66: $6d
    sub b                                         ; $5b67: $90
    inc sp                                        ; $5b68: $33
    ld c, h                                       ; $5b69: $4c
    inc c                                         ; $5b6a: $0c
    ld [hl-], a                                   ; $5b6b: $32
    nop                                           ; $5b6c: $00
    dec c                                         ; $5b6d: $0d
    ld [bc], a                                    ; $5b6e: $02
    inc bc                                        ; $5b6f: $03
    adc h                                         ; $5b70: $8c
    dec c                                         ; $5b71: $0d
    ld c, $19                                     ; $5b72: $0e $19
    ld d, $2c                                     ; $5b74: $16 $2c
    inc sp                                        ; $5b76: $33
    daa                                           ; $5b77: $27
    add hl, sp                                    ; $5b78: $39

jr_0ef_5b79:
    ld h, [hl]                                    ; $5b79: $66
    ld e, [hl]                                    ; $5b7a: $5e
    ld a, b                                       ; $5b7b: $78
    ld c, b                                       ; $5b7c: $48
    ld [bc], a                                    ; $5b7d: $02
    jr nc, jr_0ef_5b0e                            ; $5b7e: $30 $8e

    nop                                           ; $5b80: $00
    add b                                         ; $5b81: $80
    nop                                           ; $5b82: $00
    ld b, b                                       ; $5b83: $40
    or d                                          ; $5b84: $b2
    ld [hl-], a                                   ; $5b85: $32
    ld a, a                                       ; $5b86: $7f
    ld c, l                                       ; $5b87: $4d
    ld a, [hl]                                    ; $5b88: $7e
    jp nc, $f5ff                                  ; $5b89: $d2 $ff $f5

    cp $7e                                        ; $5b8c: $fe $7e
    ld [bc], a                                    ; $5b8e: $02
    call c, Call_0ef_5202                         ; $5b8f: $dc $02 $52
    ld [bc], a                                    ; $5b92: $02
    and h                                         ; $5b93: $a4
    ld [bc], a                                    ; $5b94: $02
    add b                                         ; $5b95: $80
    ld a, [bc]                                    ; $5b96: $0a
    nop                                           ; $5b97: $00
    ld [bc], a                                    ; $5b98: $02
    jr nz, jr_0ef_5b9d                            ; $5b99: $20 $02

    db $10                                        ; $5b9b: $10
    inc e                                         ; $5b9c: $1c

jr_0ef_5b9d:
    nop                                           ; $5b9d: $00
    rst $38                                       ; $5b9e: $ff
    add hl, bc                                    ; $5b9f: $09
    ld [bc], a                                    ; $5ba0: $02
    ld a, [$ed09]                                 ; $5ba1: $fa $09 $ed
    rst $30                                       ; $5ba4: $f7
    ldh a, [$fc]                                  ; $5ba5: $f0 $fc
    ldh a, [rDIV]                                 ; $5ba7: $f0 $04
    ld [bc], a                                    ; $5ba9: $02
    rlca                                          ; $5baa: $07
    adc [hl]                                      ; $5bab: $8e
    ld e, $19                                     ; $5bac: $1e $19

jr_0ef_5bae:
    dec l                                         ; $5bae: $2d
    ld [hl-], a                                   ; $5baf: $32
    ld c, l                                       ; $5bb0: $4d
    ld [hl], d                                    ; $5bb1: $72
    res 6, h                                      ; $5bb2: $cb $b4
    db $eb                                        ; $5bb4: $eb
    sbc h                                         ; $5bb5: $9c
    ld a, [c]                                     ; $5bb6: $f2
    push af                                       ; $5bb7: $f5
    add b                                         ; $5bb8: $80
    add [hl]                                      ; $5bb9: $86
    ld [bc], a                                    ; $5bba: $02
    ld b, e                                       ; $5bbb: $43
    ld c, $00                                     ; $5bbc: $0e $00
    ld [bc], a                                    ; $5bbe: $02
    ld [hl-], a                                   ; $5bbf: $32
    adc h                                         ; $5bc0: $8c
    rst $38                                       ; $5bc1: $ff
    call $5ebe                                    ; $5bc2: $cd $be $5e
    sbc a                                         ; $5bc5: $9f
    ld [hl], l                                    ; $5bc6: $75
    ld d, [hl]                                    ; $5bc7: $56
    cp d                                          ; $5bc8: $ba
    ld e, [hl]                                    ; $5bc9: $5e
    cp [hl]                                       ; $5bca: $be
    ld a, [de]                                    ; $5bcb: $1a
    jp c, $ba02                                   ; $5bcc: $da $02 $ba

    ld [bc], a                                    ; $5bcf: $02
    inc [hl]                                      ; $5bd0: $34
    ld [bc], a                                    ; $5bd1: $02
    ret nz                                        ; $5bd2: $c0

    inc c                                         ; $5bd3: $0c
    nop                                           ; $5bd4: $00
    rst $38                                       ; $5bd5: $ff
    add hl, bc                                    ; $5bd6: $09
    ld [bc], a                                    ; $5bd7: $02
    ld a, [$ed09]                                 ; $5bd8: $fa $09 $ed
    rst $30                                       ; $5bdb: $f7
    db $eb                                        ; $5bdc: $eb
    push af                                       ; $5bdd: $f5
    jp hl                                         ; $5bde: $e9


    db $fd                                        ; $5bdf: $fd
    ld [bc], a                                    ; $5be0: $02
    ld bc, $0281                                  ; $5be1: $01 $81 $02
    ld [bc], a                                    ; $5be4: $02
    inc bc                                        ; $5be5: $03
    sbc e                                         ; $5be6: $9b
    ld b, $0f                                     ; $5be7: $06 $0f
    add hl, bc                                    ; $5be9: $09
    ld c, $19                                     ; $5bea: $0e $19
    dec b                                         ; $5bec: $05
    rla                                           ; $5bed: $17
    ld a, [de]                                    ; $5bee: $1a
    ld l, $0c                                     ; $5bef: $2e $0c

jr_0ef_5bf1:
    dec hl                                        ; $5bf1: $2b
    inc [hl]                                      ; $5bf2: $34
    ld c, a                                       ; $5bf3: $4f
    ld de, $354e                                  ; $5bf4: $11 $4e $35
    ld c, [hl]                                    ; $5bf7: $4e
    scf                                           ; $5bf8: $37
    ld c, e                                       ; $5bf9: $4b
    inc [hl]                                      ; $5bfa: $34
    ld c, d                                       ; $5bfb: $4a
    jr jr_0ef_5c22                                ; $5bfc: $18 $24

    nop                                           ; $5bfe: $00
    inc e                                         ; $5bff: $1c
    nop                                           ; $5c00: $00
    ld [$4002], sp                                ; $5c01: $08 $02 $40
    add d                                         ; $5c04: $82
    ldh [$a0], a                                  ; $5c05: $e0 $a0
    ld [bc], a                                    ; $5c07: $02
    ret nz                                        ; $5c08: $c0

    add h                                         ; $5c09: $84
    ldh [$a0], a                                  ; $5c0a: $e0 $a0
    ld [hl], b                                    ; $5c0c: $70
    ldh a, [rSC]                                  ; $5c0d: $f0 $02
    add sp, $02                                   ; $5c0f: $e8 $02
    or b                                          ; $5c11: $b0
    ld [bc], a                                    ; $5c12: $02
    ld h, b                                       ; $5c13: $60
    ld [bc], a                                    ; $5c14: $02
    db $10                                        ; $5c15: $10
    ld [bc], a                                    ; $5c16: $02
    sub b                                         ; $5c17: $90
    adc b                                         ; $5c18: $88
    ld a, b                                       ; $5c19: $78
    add sp, -$28                                  ; $5c1a: $e8 $d8
    jr z, jr_0ef_5bae                             ; $5c1c: $28 $90

    ld [hl], b                                    ; $5c1e: $70
    jr nc, jr_0ef_5bf1                            ; $5c1f: $30 $d0

    ld [bc], a                                    ; $5c21: $02

jr_0ef_5c22:
    ldh [rSC], a                                  ; $5c22: $e0 $02
    nop                                           ; $5c24: $00
    rst $38                                       ; $5c25: $ff
    dec bc                                        ; $5c26: $0b
    inc bc                                        ; $5c27: $03
    ld a, [$ed09]                                 ; $5c28: $fa $09 $ed
    rst $30                                       ; $5c2b: $f7
    or $eb                                        ; $5c2c: $f6 $eb
    or $f3                                        ; $5c2e: $f6 $f3
    or $f4                                        ; $5c30: $f6 $f4
    ld [bc], a                                    ; $5c32: $02
    rlca                                          ; $5c33: $07
    add [hl]                                      ; $5c34: $86
    rrca                                          ; $5c35: $0f
    ld [$1c1f], sp                                ; $5c36: $08 $1f $1c
    ld [bc], a                                    ; $5c39: $02
    inc bc                                        ; $5c3a: $03
    ld [bc], a                                    ; $5c3b: $02
    dec bc                                        ; $5c3c: $0b
    ld [bc], a                                    ; $5c3d: $02
    ld d, l                                       ; $5c3e: $55
    adc h                                         ; $5c3f: $8c
    rst $38                                       ; $5c40: $ff
    cp [hl]                                       ; $5c41: $be
    ld d, a                                       ; $5c42: $57
    ld a, a                                       ; $5c43: $7f
    rst $38                                       ; $5c44: $ff
    sub h                                         ; $5c45: $94
    ld l, e                                       ; $5c46: $6b
    ld [hl], h                                    ; $5c47: $74
    add hl, de                                    ; $5c48: $19
    dec de                                        ; $5c49: $1b
    nop                                           ; $5c4a: $00
    inc bc                                        ; $5c4b: $03
    ld [$0200], sp                                ; $5c4c: $08 $00 $02
    ret nz                                        ; $5c4f: $c0

    sub [hl]                                      ; $5c50: $96
    ldh [rNR41], a                                ; $5c51: $e0 $20
    sub b                                         ; $5c53: $90
    ld [hl], b                                    ; $5c54: $70
    db $10                                        ; $5c55: $10
    ldh a, [$78]                                  ; $5c56: $f0 $78
    adc e                                         ; $5c58: $8b
    ei                                            ; $5c59: $fb
    inc c                                         ; $5c5a: $0c
    ccf                                           ; $5c5b: $3f
    ret z                                         ; $5c5c: $c8

    adc a                                         ; $5c5d: $8f
    ld a, b                                       ; $5c5e: $78
    sbc [hl]                                      ; $5c5f: $9e
    ld [hl], c                                    ; $5c60: $71
    inc [hl]                                      ; $5c61: $34
    ld [c], a                                     ; $5c62: $e2
    ld d, b                                       ; $5c63: $50
    inc c                                         ; $5c64: $0c
    nop                                           ; $5c65: $00
    ldh a, [rNR13]                                ; $5c66: $f0 $13
    nop                                           ; $5c68: $00
    add l                                         ; $5c69: $85
    ld bc, $0100                                  ; $5c6a: $01 $00 $01
    nop                                           ; $5c6d: $00

jr_0ef_5c6e:
    ld bc, $0010                                  ; $5c6e: $01 $10 $00
    rst $38                                       ; $5c71: $ff
    dec bc                                        ; $5c72: $0b
    inc bc                                        ; $5c73: $03
    ld a, [$ed09]                                 ; $5c74: $fa $09 $ed
    rst $30                                       ; $5c77: $f7
    pop af                                        ; $5c78: $f1
    ld [c], a                                     ; $5c79: $e2
    di                                            ; $5c7a: $f3
    ld [$ebfc], a                                 ; $5c7b: $ea $fc $eb
    add c                                         ; $5c7e: $81
    nop                                           ; $5c7f: $00
    ld [bc], a                                    ; $5c80: $02
    ld [bc], a                                    ; $5c81: $02
    sub c                                         ; $5c82: $91
    dec d                                         ; $5c83: $15
    inc de                                        ; $5c84: $13
    inc l                                         ; $5c85: $2c
    rla                                           ; $5c86: $17
    jr z, jr_0ef_5ca0                             ; $5c87: $28 $17

    jr z, jr_0ef_5c96                             ; $5c89: $28 $0b

    inc d                                         ; $5c8b: $14
    dec bc                                        ; $5c8c: $0b
    inc d                                         ; $5c8d: $14
    dec b                                         ; $5c8e: $05
    ld a, [bc]                                    ; $5c8f: $0a
    ld [bc], a                                    ; $5c90: $02
    dec b                                         ; $5c91: $05
    ld bc, $0202                                  ; $5c92: $01 $02 $02
    inc bc                                        ; $5c95: $03

jr_0ef_5c96:
    adc b                                         ; $5c96: $88
    ld e, $1d                                     ; $5c97: $1e $1d
    ld h, $39                                     ; $5c99: $26 $39
    ld [hl], e                                    ; $5c9b: $73
    ld c, h                                       ; $5c9c: $4c
    di                                            ; $5c9d: $f3
    db $ed                                        ; $5c9e: $ed
    ld [bc], a                                    ; $5c9f: $02

jr_0ef_5ca0:
    ld e, $83                                     ; $5ca0: $1e $83
    nop                                           ; $5ca2: $00
    add b                                         ; $5ca3: $80
    nop                                           ; $5ca4: $00
    ld [bc], a                                    ; $5ca5: $02
    add b                                         ; $5ca6: $80
    sub e                                         ; $5ca7: $93
    ld b, b                                       ; $5ca8: $40
    add b                                         ; $5ca9: $80
    ld b, b                                       ; $5caa: $40
    ret nz                                        ; $5cab: $c0

    jr nz, jr_0ef_5c6e                            ; $5cac: $20 $c0

    jr nz, jr_0ef_5d10                            ; $5cae: $20 $60

    sub b                                         ; $5cb0: $90
    and b                                         ; $5cb1: $a0
    ld d, b                                       ; $5cb2: $50
    db $ed                                        ; $5cb3: $ed
    cp l                                          ; $5cb4: $bd
    dec de                                        ; $5cb5: $1b
    and $7f                                       ; $5cb6: $e6 $7f
    sub l                                         ; $5cb8: $95
    ld [hl], l                                    ; $5cb9: $75
    cp $02                                        ; $5cba: $fe $02
    cp a                                          ; $5cbc: $bf
    ld [bc], a                                    ; $5cbd: $02
    ld l, h                                       ; $5cbe: $6c
    ld [bc], a                                    ; $5cbf: $02
    sub d                                         ; $5cc0: $92
    ld [bc], a                                    ; $5cc1: $02
    nop                                           ; $5cc2: $00
    ld [bc], a                                    ; $5cc3: $02
    ld bc, $0002                                  ; $5cc4: $01 $02 $00
    ld [bc], a                                    ; $5cc7: $02
    ld bc, $0002                                  ; $5cc8: $01 $02 $00
    ld [bc], a                                    ; $5ccb: $02
    ld bc, $0016                                  ; $5ccc: $01 $16 $00
    rst $38                                       ; $5ccf: $ff
    add hl, bc                                    ; $5cd0: $09
    ld [bc], a                                    ; $5cd1: $02
    ld a, [$ed09]                                 ; $5cd2: $fa $09 $ed
    rst $30                                       ; $5cd5: $f7
    rst $28                                       ; $5cd6: $ef
    xor $ef                                       ; $5cd7: $ee $ef
    or $02                                        ; $5cd9: $f6 $02
    inc a                                         ; $5cdb: $3c
    adc e                                         ; $5cdc: $8b
    ei                                            ; $5cdd: $fb
    rst $00                                       ; $5cde: $c7

jr_0ef_5cdf:
    add hl, sp                                    ; $5cdf: $39
    ld h, $33                                     ; $5ce0: $26 $33
    inc l                                         ; $5ce2: $2c
    inc de                                        ; $5ce3: $13
    inc e                                         ; $5ce4: $1c
    inc c                                         ; $5ce5: $0c
    rrca                                          ; $5ce6: $0f
    inc bc                                        ; $5ce7: $03
    ld [bc], a                                    ; $5ce8: $02
    dec c                                         ; $5ce9: $0d
    adc a                                         ; $5cea: $8f
    db $10                                        ; $5ceb: $10
    ld e, $21                                     ; $5cec: $1e $21
    ld e, $21                                     ; $5cee: $1e $21
    dec a                                         ; $5cf0: $3d
    ld b, d                                       ; $5cf1: $42
    dec a                                         ; $5cf2: $3d
    ld b, d                                       ; $5cf3: $42
    dec de                                        ; $5cf4: $1b

jr_0ef_5cf5:
    inc h                                         ; $5cf5: $24
    inc de                                        ; $5cf6: $13
    inc l                                         ; $5cf7: $2c
    nop                                           ; $5cf8: $00
    inc de                                        ; $5cf9: $13
    ld b, $00                                     ; $5cfa: $06 $00
    ld [bc], a                                    ; $5cfc: $02
    add b                                         ; $5cfd: $80
    sub [hl]                                      ; $5cfe: $96
    ld b, b                                       ; $5cff: $40
    ret nz                                        ; $5d00: $c0

    nop                                           ; $5d01: $00
    ret nz                                        ; $5d02: $c0

    jr nz, jr_0ef_5cf5                            ; $5d03: $20 $f0

    jr z, jr_0ef_5cdf                             ; $5d05: $28 $d8

    ld e, b                                       ; $5d07: $58
    xor b                                         ; $5d08: $a8
    call c, $be6c                                 ; $5d09: $dc $6c $be
    ld [hl], d                                    ; $5d0c: $72
    sub a                                         ; $5d0d: $97
    ld e, l                                       ; $5d0e: $5d
    xor [hl]                                      ; $5d0f: $ae

jr_0ef_5d10:
    ld l, d                                       ; $5d10: $6a
    inc c                                         ; $5d11: $0c
    adc h                                         ; $5d12: $8c
    db $10                                        ; $5d13: $10
    sub b                                         ; $5d14: $90
    inc b                                         ; $5d15: $04
    nop                                           ; $5d16: $00
    rst $38                                       ; $5d17: $ff
    dec bc                                        ; $5d18: $0b
    inc bc                                        ; $5d19: $03
    rst $30                                       ; $5d1a: $f7
    add hl, bc                                    ; $5d1b: $09
    rst $28                                       ; $5d1c: $ef
    ld bc, $f7f3                                  ; $5d1d: $01 $f3 $f7
    di                                            ; $5d20: $f3
    rst $38                                       ; $5d21: $ff
    di                                            ; $5d22: $f3
    nop                                           ; $5d23: $00
    ld [bc], a                                    ; $5d24: $02
    ld bc, $0284                                  ; $5d25: $01 $84 $02
    inc bc                                        ; $5d28: $03
    ld [bc], a                                    ; $5d29: $02
    inc bc                                        ; $5d2a: $03
    ld [bc], a                                    ; $5d2b: $02
    ld bc, $0302                                  ; $5d2c: $01 $02 $03
    sub d                                         ; $5d2f: $92
    inc c                                         ; $5d30: $0c
    rrca                                          ; $5d31: $0f
    ld d, $19                                     ; $5d32: $16 $19
    ld h, l                                       ; $5d34: $65
    ld a, [hl]                                    ; $5d35: $7e
    sbc d                                         ; $5d36: $9a
    rst $20                                       ; $5d37: $e7
    call $41f3                                    ; $5d38: $cd $f3 $41
    ld a, a                                       ; $5d3b: $7f
    inc sp                                        ; $5d3c: $33
    cpl                                           ; $5d3d: $2f
    ld c, a                                       ; $5d3e: $4f
    ld a, a                                       ; $5d3f: $7f
    ld sp, $023f                                  ; $5d40: $31 $3f $02
    ld c, $02                                     ; $5d43: $0e $02
    nop                                           ; $5d45: $00
    ld [bc], a                                    ; $5d46: $02
    add b                                         ; $5d47: $80
    sub e                                         ; $5d48: $93
    call nz, Call_0ef_6e44                        ; $5d49: $c4 $44 $6e
    xor d                                         ; $5d4c: $aa
    ld d, $fa                                     ; $5d4d: $16 $fa
    xor d                                         ; $5d4f: $aa
    sbc $f6                                       ; $5d50: $de $f6
    xor $76                                       ; $5d52: $ee $76
    cp $71                                        ; $5d54: $fe $71
    rst $38                                       ; $5d56: $ff
    dec l                                         ; $5d57: $2d
    rst $30                                       ; $5d58: $f7
    ld hl, $2cfe                                  ; $5d59: $21 $fe $2c
    ld [bc], a                                    ; $5d5c: $02
    di                                            ; $5d5d: $f3
    add l                                         ; $5d5e: $85
    cp a                                          ; $5d5f: $bf
    cp h                                          ; $5d60: $bc
    call c, $feca                                 ; $5d61: $dc $ca $fe
    ld [bc], a                                    ; $5d64: $02
    ld [hl], $14                                  ; $5d65: $36 $14
    nop                                           ; $5d67: $00
    inc b                                         ; $5d68: $04
    ld bc, $000a                                  ; $5d69: $01 $0a $00
    rst $38                                       ; $5d6c: $ff
    dec bc                                        ; $5d6d: $0b
    inc bc                                        ; $5d6e: $03
    rst $30                                       ; $5d6f: $f7
    add hl, bc                                    ; $5d70: $09
    rst $28                                       ; $5d71: $ef
    ld bc, $f7f2                                  ; $5d72: $01 $f2 $f7
    ld a, [c]                                     ; $5d75: $f2
    rst $38                                       ; $5d76: $ff
    ld a, [c]                                     ; $5d77: $f2
    nop                                           ; $5d78: $00
    ld [bc], a                                    ; $5d79: $02
    ld bc, $0284                                  ; $5d7a: $01 $84 $02
    inc bc                                        ; $5d7d: $03
    ld [bc], a                                    ; $5d7e: $02
    inc bc                                        ; $5d7f: $03
    ld [bc], a                                    ; $5d80: $02
    ld bc, $0002                                  ; $5d81: $01 $02 $00
    ld [bc], a                                    ; $5d84: $02
    inc bc                                        ; $5d85: $03
    sub d                                         ; $5d86: $92
    inc c                                         ; $5d87: $0c
    rrca                                          ; $5d88: $0f
    rla                                           ; $5d89: $17
    jr jr_0ef_5df1                                ; $5d8a: $18 $65

    ld a, [hl]                                    ; $5d8c: $7e
    sbc d                                         ; $5d8d: $9a
    rst $20                                       ; $5d8e: $e7
    call $41f3                                    ; $5d8f: $cd $f3 $41
    ld a, a                                       ; $5d92: $7f
    inc sp                                        ; $5d93: $33
    cpl                                           ; $5d94: $2f
    ld c, a                                       ; $5d95: $4f
    ld a, a                                       ; $5d96: $7f
    ld sp, $023f                                  ; $5d97: $31 $3f $02
    ld c, $02                                     ; $5d9a: $0e $02
    add b                                         ; $5d9c: $80
    sub a                                         ; $5d9d: $97
    call nz, Call_0ef_6e44                        ; $5d9e: $c4 $44 $6e
    xor d                                         ; $5da1: $aa
    ld d, $fa                                     ; $5da2: $16 $fa
    xor d                                         ; $5da4: $aa
    sbc $f6                                       ; $5da5: $de $f6
    xor $f6                                       ; $5da7: $ee $f6
    cp $31                                        ; $5da9: $fe $31
    rst $38                                       ; $5dab: $ff
    dec l                                         ; $5dac: $2d
    rst $30                                       ; $5dad: $f7
    ld hl, $2cfe                                  ; $5dae: $21 $fe $2c
    di                                            ; $5db1: $f3
    ld d, e                                       ; $5db2: $53
    cp a                                          ; $5db3: $bf
    db $fc                                        ; $5db4: $fc
    ld [bc], a                                    ; $5db5: $02
    cp h                                          ; $5db6: $bc
    add e                                         ; $5db7: $83
    call c, $feca                                 ; $5db8: $dc $ca $fe
    ld [bc], a                                    ; $5dbb: $02
    ld [hl], $12                                  ; $5dbc: $36 $12
    nop                                           ; $5dbe: $00
    inc b                                         ; $5dbf: $04
    ld bc, $000a                                  ; $5dc0: $01 $0a $00
    rst $38                                       ; $5dc3: $ff
    dec bc                                        ; $5dc4: $0b
    inc bc                                        ; $5dc5: $03
    rst $30                                       ; $5dc6: $f7
    add hl, bc                                    ; $5dc7: $09
    rst $28                                       ; $5dc8: $ef
    ld bc, $f7f2                                  ; $5dc9: $01 $f2 $f7
    ld a, [c]                                     ; $5dcc: $f2
    rst $38                                       ; $5dcd: $ff
    ld a, [c]                                     ; $5dce: $f2
    nop                                           ; $5dcf: $00
    ld [bc], a                                    ; $5dd0: $02
    inc bc                                        ; $5dd1: $03
    add [hl]                                      ; $5dd2: $86
    dec b                                         ; $5dd3: $05
    ld b, $04                                     ; $5dd4: $06 $04
    rlca                                          ; $5dd6: $07
    ld [bc], a                                    ; $5dd7: $02
    inc bc                                        ; $5dd8: $03
    inc b                                         ; $5dd9: $04
    ld bc, $0702                                  ; $5dda: $01 $02 $07
    sub b                                         ; $5ddd: $90
    dec de                                        ; $5dde: $1b
    inc e                                         ; $5ddf: $1c
    ld h, $3d                                     ; $5de0: $26 $3d
    jp z, $9df7                                   ; $5de2: $ca $f7 $9d

    db $e3                                        ; $5de5: $e3
    ld b, l                                       ; $5de6: $45
    ld a, e                                       ; $5de7: $7b
    inc sp                                        ; $5de8: $33
    cpl                                           ; $5de9: $2f
    ld e, a                                       ; $5dea: $5f
    ld a, a                                       ; $5deb: $7f
    ld [hl], c                                    ; $5dec: $71
    ld a, a                                       ; $5ded: $7f
    ld [bc], a                                    ; $5dee: $02
    ld c, $02                                     ; $5def: $0e $02

jr_0ef_5df1:
    db $10                                        ; $5df1: $10
    sbc h                                         ; $5df2: $9c
    cp b                                          ; $5df3: $b8
    xor b                                         ; $5df4: $a8
    db $ec                                        ; $5df5: $ec
    ld [hl], h                                    ; $5df6: $74
    ld d, h                                       ; $5df7: $54
    cp h                                          ; $5df8: $bc
    xor h                                         ; $5df9: $ac
    call c, $fee6                                 ; $5dfa: $dc $e6 $fe
    ld [hl], c                                    ; $5dfd: $71
    rst $38                                       ; $5dfe: $ff
    xor l                                         ; $5dff: $ad
    halt                                          ; $5e00: $76
    jr nz, @+$01                                  ; $5e01: $20 $ff

    dec h                                         ; $5e03: $25
    ei                                            ; $5e04: $fb
    ld [hl], c                                    ; $5e05: $71
    cp a                                          ; $5e06: $bf
    ld e, $fe                                     ; $5e07: $1e $fe
    db $f4                                        ; $5e09: $f4
    cp h                                          ; $5e0a: $bc
    ld hl, sp-$48                                 ; $5e0b: $f8 $b8
    sub h                                         ; $5e0d: $94
    db $fc                                        ; $5e0e: $fc
    ld [bc], a                                    ; $5e0f: $02
    ld l, h                                       ; $5e10: $6c
    ld c, $00                                     ; $5e11: $0e $00
    ld b, $01                                     ; $5e13: $06 $01
    inc c                                         ; $5e15: $0c
    nop                                           ; $5e16: $00
    rst $38                                       ; $5e17: $ff
    dec bc                                        ; $5e18: $0b
    inc bc                                        ; $5e19: $03
    rst $30                                       ; $5e1a: $f7
    add hl, bc                                    ; $5e1b: $09
    rst $28                                       ; $5e1c: $ef
    ld bc, $f7f2                                  ; $5e1d: $01 $f2 $f7
    ld a, [c]                                     ; $5e20: $f2
    rst $38                                       ; $5e21: $ff
    ld a, [c]                                     ; $5e22: $f2
    nop                                           ; $5e23: $00
    ld [bc], a                                    ; $5e24: $02
    ld bc, $0284                                  ; $5e25: $01 $84 $02
    inc bc                                        ; $5e28: $03
    ld [bc], a                                    ; $5e29: $02
    inc bc                                        ; $5e2a: $03
    ld [bc], a                                    ; $5e2b: $02
    ld bc, $0002                                  ; $5e2c: $01 $02 $00
    ld [bc], a                                    ; $5e2f: $02
    ld bc, $0702                                  ; $5e30: $01 $02 $07
    sub b                                         ; $5e33: $90
    dec de                                        ; $5e34: $1b
    inc e                                         ; $5e35: $1c
    ld h, $3d                                     ; $5e36: $26 $3d
    jp z, $9df7                                   ; $5e38: $ca $f7 $9d

    db $e3                                        ; $5e3b: $e3
    ld b, l                                       ; $5e3c: $45
    ld a, e                                       ; $5e3d: $7b
    inc sp                                        ; $5e3e: $33
    cpl                                           ; $5e3f: $2f
    ld e, a                                       ; $5e40: $5f
    ld a, a                                       ; $5e41: $7f
    ld [hl], c                                    ; $5e42: $71
    ld a, a                                       ; $5e43: $7f
    ld [bc], a                                    ; $5e44: $02
    ld c, $02                                     ; $5e45: $0e $02
    add b                                         ; $5e47: $80
    sbc h                                         ; $5e48: $9c
    ret z                                         ; $5e49: $c8

    ld c, b                                       ; $5e4a: $48
    ld a, h                                       ; $5e4b: $7c
    or h                                          ; $5e4c: $b4
    inc e                                         ; $5e4d: $1c
    db $f4                                        ; $5e4e: $f4
    xor d                                         ; $5e4f: $aa
    sbc $f6                                       ; $5e50: $de $f6
    xor $76                                       ; $5e52: $ee $76
    cp $f1                                        ; $5e54: $fe $f1
    ld a, a                                       ; $5e56: $7f
    dec l                                         ; $5e57: $2d
    or $20                                        ; $5e58: $f6 $20
    rst $38                                       ; $5e5a: $ff
    ld l, l                                       ; $5e5b: $6d
    or e                                          ; $5e5c: $b3
    inc de                                        ; $5e5d: $13
    rst $38                                       ; $5e5e: $ff
    db $fc                                        ; $5e5f: $fc
    cp h                                          ; $5e60: $bc
    ld hl, sp-$48                                 ; $5e61: $f8 $b8
    sub h                                         ; $5e63: $94
    db $fc                                        ; $5e64: $fc
    ld [bc], a                                    ; $5e65: $02
    ld l, h                                       ; $5e66: $6c
    stop                                          ; $5e67: $10 $00
    ld b, $01                                     ; $5e69: $06 $01
    ld a, [bc]                                    ; $5e6b: $0a
    nop                                           ; $5e6c: $00
    rst $38                                       ; $5e6d: $ff
    dec bc                                        ; $5e6e: $0b
    inc bc                                        ; $5e6f: $03
    rst $30                                       ; $5e70: $f7
    add hl, bc                                    ; $5e71: $09
    rst $28                                       ; $5e72: $ef
    ld bc, $f7f2                                  ; $5e73: $01 $f2 $f7
    ld a, [c]                                     ; $5e76: $f2
    rst $38                                       ; $5e77: $ff
    ld a, [c]                                     ; $5e78: $f2
    nop                                           ; $5e79: $00
    ld [bc], a                                    ; $5e7a: $02
    inc bc                                        ; $5e7b: $03
    add [hl]                                      ; $5e7c: $86
    dec b                                         ; $5e7d: $05
    ld b, $04                                     ; $5e7e: $06 $04
    rlca                                          ; $5e80: $07
    ld [bc], a                                    ; $5e81: $02
    inc bc                                        ; $5e82: $03
    inc b                                         ; $5e83: $04
    ld bc, $0702                                  ; $5e84: $01 $02 $07
    sub b                                         ; $5e87: $90
    dec de                                        ; $5e88: $1b
    inc e                                         ; $5e89: $1c
    ld h, $3d                                     ; $5e8a: $26 $3d
    jp z, $9df7                                   ; $5e8c: $ca $f7 $9d

    db $e3                                        ; $5e8f: $e3
    ld b, l                                       ; $5e90: $45
    ld a, e                                       ; $5e91: $7b
    inc sp                                        ; $5e92: $33
    cpl                                           ; $5e93: $2f
    ld e, a                                       ; $5e94: $5f
    ld a, a                                       ; $5e95: $7f
    ld [hl], c                                    ; $5e96: $71
    ld a, a                                       ; $5e97: $7f
    ld [bc], a                                    ; $5e98: $02
    ld c, $02                                     ; $5e99: $0e $02
    db $10                                        ; $5e9b: $10
    sbc h                                         ; $5e9c: $9c
    cp b                                          ; $5e9d: $b8
    xor b                                         ; $5e9e: $a8
    db $ec                                        ; $5e9f: $ec
    ld [hl], h                                    ; $5ea0: $74
    ld d, h                                       ; $5ea1: $54
    cp h                                          ; $5ea2: $bc
    xor h                                         ; $5ea3: $ac
    call c, $fee6                                 ; $5ea4: $dc $e6 $fe
    ld [hl], c                                    ; $5ea7: $71
    rst $38                                       ; $5ea8: $ff
    xor l                                         ; $5ea9: $ad
    halt                                          ; $5eaa: $76
    jr nz, @+$01                                  ; $5eab: $20 $ff

    dec h                                         ; $5ead: $25

Jump_0ef_5eae:
    ei                                            ; $5eae: $fb
    ld [hl], c                                    ; $5eaf: $71
    cp a                                          ; $5eb0: $bf
    ld e, $fe                                     ; $5eb1: $1e $fe
    db $f4                                        ; $5eb3: $f4
    cp h                                          ; $5eb4: $bc
    ld hl, sp-$48                                 ; $5eb5: $f8 $b8
    sub h                                         ; $5eb7: $94
    db $fc                                        ; $5eb8: $fc
    ld [bc], a                                    ; $5eb9: $02
    ld l, h                                       ; $5eba: $6c
    ld c, $00                                     ; $5ebb: $0e $00
    ld b, $01                                     ; $5ebd: $06 $01
    inc c                                         ; $5ebf: $0c
    nop                                           ; $5ec0: $00
    rst $38                                       ; $5ec1: $ff
    dec bc                                        ; $5ec2: $0b
    inc bc                                        ; $5ec3: $03
    rst $30                                       ; $5ec4: $f7
    add hl, bc                                    ; $5ec5: $09
    rst $28                                       ; $5ec6: $ef
    ld bc, $f7f2                                  ; $5ec7: $01 $f2 $f7
    ld a, [c]                                     ; $5eca: $f2
    rst $38                                       ; $5ecb: $ff
    ld a, [c]                                     ; $5ecc: $f2
    nop                                           ; $5ecd: $00
    ld [bc], a                                    ; $5ece: $02
    ld bc, $0284                                  ; $5ecf: $01 $84 $02
    inc bc                                        ; $5ed2: $03
    ld [bc], a                                    ; $5ed3: $02
    inc bc                                        ; $5ed4: $03
    ld [bc], a                                    ; $5ed5: $02
    ld bc, $0002                                  ; $5ed6: $01 $02 $00
    ld [bc], a                                    ; $5ed9: $02
    ld bc, $0e92                                  ; $5eda: $01 $92 $0e
    rrca                                          ; $5edd: $0f
    ld d, $19                                     ; $5ede: $16 $19
    ld h, l                                       ; $5ee0: $65
    ld a, [hl]                                    ; $5ee1: $7e
    sbc d                                         ; $5ee2: $9a
    rst $20                                       ; $5ee3: $e7
    call $41f3                                    ; $5ee4: $cd $f3 $41
    ld a, a                                       ; $5ee7: $7f
    inc sp                                        ; $5ee8: $33
    cpl                                           ; $5ee9: $2f
    ld c, a                                       ; $5eea: $4f
    ld a, a                                       ; $5eeb: $7f
    ld sp, $023f                                  ; $5eec: $31 $3f $02
    ld c, $02                                     ; $5eef: $0e $02
    add b                                         ; $5ef1: $80
    sub a                                         ; $5ef2: $97
    ret z                                         ; $5ef3: $c8

    ld c, b                                       ; $5ef4: $48
    ld a, h                                       ; $5ef5: $7c
    or h                                          ; $5ef6: $b4
    inc e                                         ; $5ef7: $1c
    db $f4                                        ; $5ef8: $f4
    xor d                                         ; $5ef9: $aa
    sbc $f6                                       ; $5efa: $de $f6
    xor $76                                       ; $5efc: $ee $76
    cp $f1                                        ; $5efe: $fe $f1
    ld a, a                                       ; $5f00: $7f
    dec l                                         ; $5f01: $2d
    rst $30                                       ; $5f02: $f7
    ld hl, $2cfe                                  ; $5f03: $21 $fe $2c
    di                                            ; $5f06: $f3
    ld d, e                                       ; $5f07: $53
    cp a                                          ; $5f08: $bf
    db $fc                                        ; $5f09: $fc
    ld [bc], a                                    ; $5f0a: $02
    cp h                                          ; $5f0b: $bc
    add e                                         ; $5f0c: $83
    call c, $feca                                 ; $5f0d: $dc $ca $fe
    ld [bc], a                                    ; $5f10: $02
    ld [hl], $12                                  ; $5f11: $36 $12
    nop                                           ; $5f13: $00
    inc b                                         ; $5f14: $04
    ld bc, $000a                                  ; $5f15: $01 $0a $00
    rst $38                                       ; $5f18: $ff
    dec bc                                        ; $5f19: $0b
    inc bc                                        ; $5f1a: $03
    rst $30                                       ; $5f1b: $f7
    add hl, bc                                    ; $5f1c: $09
    rst $28                                       ; $5f1d: $ef
    ld bc, $f7f2                                  ; $5f1e: $01 $f2 $f7
    ld a, [c]                                     ; $5f21: $f2
    rst $38                                       ; $5f22: $ff
    ld a, [c]                                     ; $5f23: $f2
    nop                                           ; $5f24: $00
    ld [bc], a                                    ; $5f25: $02
    ld bc, $0284                                  ; $5f26: $01 $84 $02
    inc bc                                        ; $5f29: $03
    ld [bc], a                                    ; $5f2a: $02
    inc bc                                        ; $5f2b: $03
    ld [bc], a                                    ; $5f2c: $02
    ld bc, $0002                                  ; $5f2d: $01 $02 $00
    ld [bc], a                                    ; $5f30: $02
    ld bc, $0702                                  ; $5f31: $01 $02 $07
    sub b                                         ; $5f34: $90
    dec de                                        ; $5f35: $1b
    inc e                                         ; $5f36: $1c
    ld h, $3d                                     ; $5f37: $26 $3d
    jp z, $9df7                                   ; $5f39: $ca $f7 $9d

    db $e3                                        ; $5f3c: $e3
    ld b, l                                       ; $5f3d: $45
    ld a, e                                       ; $5f3e: $7b
    inc sp                                        ; $5f3f: $33
    cpl                                           ; $5f40: $2f
    ld e, a                                       ; $5f41: $5f
    ld a, a                                       ; $5f42: $7f
    ld [hl], c                                    ; $5f43: $71
    ld a, a                                       ; $5f44: $7f
    ld [bc], a                                    ; $5f45: $02
    ld c, $02                                     ; $5f46: $0e $02
    add b                                         ; $5f48: $80
    sbc h                                         ; $5f49: $9c
    ret z                                         ; $5f4a: $c8

    ld c, b                                       ; $5f4b: $48
    ld a, h                                       ; $5f4c: $7c
    or h                                          ; $5f4d: $b4
    inc e                                         ; $5f4e: $1c
    db $f4                                        ; $5f4f: $f4
    xor d                                         ; $5f50: $aa
    sbc $f6                                       ; $5f51: $de $f6
    xor $76                                       ; $5f53: $ee $76
    cp $f1                                        ; $5f55: $fe $f1
    ld a, a                                       ; $5f57: $7f
    dec l                                         ; $5f58: $2d
    or $20                                        ; $5f59: $f6 $20
    rst $38                                       ; $5f5b: $ff
    ld l, l                                       ; $5f5c: $6d
    or e                                          ; $5f5d: $b3
    inc de                                        ; $5f5e: $13
    rst $38                                       ; $5f5f: $ff
    db $fc                                        ; $5f60: $fc
    cp h                                          ; $5f61: $bc
    ld hl, sp-$48                                 ; $5f62: $f8 $b8
    sub h                                         ; $5f64: $94
    db $fc                                        ; $5f65: $fc
    ld [bc], a                                    ; $5f66: $02
    ld l, h                                       ; $5f67: $6c
    stop                                          ; $5f68: $10 $00
    ld b, $01                                     ; $5f6a: $06 $01
    ld a, [bc]                                    ; $5f6c: $0a
    nop                                           ; $5f6d: $00
    rst $38                                       ; $5f6e: $ff
    dec bc                                        ; $5f6f: $0b
    inc bc                                        ; $5f70: $03
    rst $30                                       ; $5f71: $f7
    add hl, bc                                    ; $5f72: $09
    rst $28                                       ; $5f73: $ef
    ld bc, $f7f2                                  ; $5f74: $01 $f2 $f7
    ld a, [c]                                     ; $5f77: $f2
    rst $38                                       ; $5f78: $ff
    ld a, [c]                                     ; $5f79: $f2
    nop                                           ; $5f7a: $00
    ld [bc], a                                    ; $5f7b: $02
    inc bc                                        ; $5f7c: $03
    add [hl]                                      ; $5f7d: $86
    dec b                                         ; $5f7e: $05
    ld b, $04                                     ; $5f7f: $06 $04
    rlca                                          ; $5f81: $07
    ld [bc], a                                    ; $5f82: $02
    inc bc                                        ; $5f83: $03
    ld [bc], a                                    ; $5f84: $02
    ld bc, $0002                                  ; $5f85: $01 $02 $00
    ld [bc], a                                    ; $5f88: $02
    rlca                                          ; $5f89: $07
    sub b                                         ; $5f8a: $90
    dec de                                        ; $5f8b: $1b
    inc e                                         ; $5f8c: $1c
    ld h, $3d                                     ; $5f8d: $26 $3d
    ld c, d                                       ; $5f8f: $4a
    ld [hl], a                                    ; $5f90: $77
    sbc l                                         ; $5f91: $9d
    db $e3                                        ; $5f92: $e3
    ld b, l                                       ; $5f93: $45
    ld a, e                                       ; $5f94: $7b
    ld [hl], e                                    ; $5f95: $73
    ld l, a                                       ; $5f96: $6f
    ld e, a                                       ; $5f97: $5f
    ld a, a                                       ; $5f98: $7f
    ld [hl], c                                    ; $5f99: $71
    ld a, a                                       ; $5f9a: $7f
    ld [bc], a                                    ; $5f9b: $02
    ld c, $02                                     ; $5f9c: $0e $02
    db $10                                        ; $5f9e: $10
    sbc h                                         ; $5f9f: $9c
    cp b                                          ; $5fa0: $b8
    xor b                                         ; $5fa1: $a8
    db $ec                                        ; $5fa2: $ec
    ld [hl], h                                    ; $5fa3: $74
    ld d, h                                       ; $5fa4: $54
    cp h                                          ; $5fa5: $bc
    xor h                                         ; $5fa6: $ac
    call c, $fee6                                 ; $5fa7: $dc $e6 $fe
    ld [hl], c                                    ; $5faa: $71
    rst $38                                       ; $5fab: $ff
    xor l                                         ; $5fac: $ad
    halt                                          ; $5fad: $76
    jr nz, @+$01                                  ; $5fae: $20 $ff

    dec hl                                        ; $5fb0: $2b
    rst $30                                       ; $5fb1: $f7
    ld [hl], e                                    ; $5fb2: $73
    cp a                                          ; $5fb3: $bf
    dec e                                         ; $5fb4: $1d
    rst $38                                       ; $5fb5: $ff
    xor $be                                       ; $5fb6: $ee $be
    ld hl, sp-$48                                 ; $5fb8: $f8 $b8
    sub h                                         ; $5fba: $94
    db $fc                                        ; $5fbb: $fc
    ld [bc], a                                    ; $5fbc: $02
    ld l, h                                       ; $5fbd: $6c
    ld c, $00                                     ; $5fbe: $0e $00
    ld b, $01                                     ; $5fc0: $06 $01
    inc c                                         ; $5fc2: $0c
    nop                                           ; $5fc3: $00
    rst $38                                       ; $5fc4: $ff
    dec bc                                        ; $5fc5: $0b
    inc bc                                        ; $5fc6: $03
    rst $30                                       ; $5fc7: $f7
    add hl, bc                                    ; $5fc8: $09
    rst $28                                       ; $5fc9: $ef
    ld bc, $f8f2                                  ; $5fca: $01 $f2 $f8
    pop af                                        ; $5fcd: $f1
    nop                                           ; $5fce: $00
    ld bc, $02fc                                  ; $5fcf: $01 $fc $02
    rrca                                          ; $5fd2: $0f
    add [hl]                                      ; $5fd3: $86
    rla                                           ; $5fd4: $17
    add hl, de                                    ; $5fd5: $19
    ld de, $0c1e                                  ; $5fd6: $11 $1e $0c
    rrca                                          ; $5fd9: $0f
    ld [bc], a                                    ; $5fda: $02
    inc bc                                        ; $5fdb: $03
    sub h                                         ; $5fdc: $94
    ld b, $07                                     ; $5fdd: $06 $07
    dec de                                        ; $5fdf: $1b
    inc e                                         ; $5fe0: $1c
    inc l                                         ; $5fe1: $2c
    inc sp                                        ; $5fe2: $33
    ld e, h                                       ; $5fe3: $5c
    ld a, a                                       ; $5fe4: $7f
    sbc d                                         ; $5fe5: $9a
    rst $20                                       ; $5fe6: $e7
    cp d                                          ; $5fe7: $ba
    rst $00                                       ; $5fe8: $c7
    add e                                         ; $5fe9: $83
    rst $38                                       ; $5fea: $ff
    rst $28                                       ; $5feb: $ef
    rst $18                                       ; $5fec: $df
    cp a                                          ; $5fed: $bf
    rst $38                                       ; $5fee: $ff
    db $e3                                        ; $5fef: $e3
    rst $38                                       ; $5ff0: $ff
    ld [bc], a                                    ; $5ff1: $02
    inc e                                         ; $5ff2: $1c
    ld [bc], a                                    ; $5ff3: $02
    ret nz                                        ; $5ff4: $c0

    sbc [hl]                                      ; $5ff5: $9e
    ld h, b                                       ; $5ff6: $60
    and b                                         ; $5ff7: $a0
    or b                                          ; $5ff8: $b0
    ret nc                                        ; $5ff9: $d0

    ld l, b                                       ; $5ffa: $68
    ld hl, sp+$78                                 ; $5ffb: $f8 $78
    cp b                                          ; $5ffd: $b8
    adc [hl]                                      ; $5ffe: $8e
    cp $e3                                        ; $5fff: $fe $e3
    db $fd                                        ; $6001: $fd
    ld e, c                                       ; $6002: $59
    rst $28                                       ; $6003: $ef
    ld c, a                                       ; $6004: $4f
    rst $30                                       ; $6005: $f7
    ld d, [hl]                                    ; $6006: $56
    xor $64                                       ; $6007: $ee $64
    db $fc                                        ; $6009: $fc
    cp d                                          ; $600a: $ba
    ld a, [hl]                                    ; $600b: $7e
    inc a                                         ; $600c: $3c
    db $fc                                        ; $600d: $fc
    ret z                                         ; $600e: $c8

    ld a, b                                       ; $600f: $78
    ldh a, [rSVBK]                                ; $6010: $f0 $70
    ld l, b                                       ; $6012: $68
    ld hl, sp+$02                                 ; $6013: $f8 $02
    add hl, bc                                    ; $6015: $09
    ld e, $00                                     ; $6016: $1e $00
    rst $38                                       ; $6018: $ff
    dec bc                                        ; $6019: $0b
    inc bc                                        ; $601a: $03
    rst $30                                       ; $601b: $f7
    add hl, bc                                    ; $601c: $09
    rst $28                                       ; $601d: $ef
    ld bc, $f7f3                                  ; $601e: $01 $f3 $f7
    di                                            ; $6021: $f3
    rst $38                                       ; $6022: $ff
    di                                            ; $6023: $f3
    ld [bc], a                                    ; $6024: $02
    ld a, [bc]                                    ; $6025: $0a
    nop                                           ; $6026: $00
    ld [bc], a                                    ; $6027: $02
    rrca                                          ; $6028: $0f
    sub b                                         ; $6029: $90
    ld d, $19                                     ; $602a: $16 $19
    ld h, l                                       ; $602c: $65
    ld a, [hl]                                    ; $602d: $7e
    sbc d                                         ; $602e: $9a
    rst $20                                       ; $602f: $e7
    call $41f3                                    ; $6030: $cd $f3 $41
    ld a, a                                       ; $6033: $7f
    inc sp                                        ; $6034: $33
    cpl                                           ; $6035: $2f
    ld c, a                                       ; $6036: $4f
    ld a, a                                       ; $6037: $7f
    ld sp, $023f                                  ; $6038: $31 $3f $02
    ld c, $02                                     ; $603b: $0e $02
    nop                                           ; $603d: $00
    ld [bc], a                                    ; $603e: $02
    ld h, b                                       ; $603f: $60
    sub l                                         ; $6040: $95
    or d                                          ; $6041: $b2
    jp nc, $ed9f                                  ; $6042: $d2 $9f $ed

    ld b, a                                       ; $6045: $47
    ld a, l                                       ; $6046: $7d
    ld a, [hl+]                                   ; $6047: $2a
    scf                                           ; $6048: $37
    sbc l                                         ; $6049: $9d
    sbc e                                         ; $604a: $9b
    ld a, l                                       ; $604b: $7d
    rst $38                                       ; $604c: $ff
    ld e, h                                       ; $604d: $5c
    cp a                                          ; $604e: $bf
    dec bc                                        ; $604f: $0b
    rst $38                                       ; $6050: $ff
    add hl, bc                                    ; $6051: $09
    cp $6a                                        ; $6052: $fe $6a
    sbc l                                         ; $6054: $9d
    adc h                                         ; $6055: $8c
    ld [bc], a                                    ; $6056: $02
    rst $38                                       ; $6057: $ff
    add e                                         ; $6058: $83
    cp a                                          ; $6059: $bf
    or h                                          ; $605a: $b4
    db $fc                                        ; $605b: $fc
    ld [bc], a                                    ; $605c: $02
    ld c, b                                       ; $605d: $48
    ld a, [bc]                                    ; $605e: $0a
    nop                                           ; $605f: $00
    ld b, $04                                     ; $6060: $06 $04
    adc d                                         ; $6062: $8a
    ld [bc], a                                    ; $6063: $02
    ld b, $02                                     ; $6064: $06 $02
    ld b, $03                                     ; $6066: $06 $03
    dec b                                         ; $6068: $05
    ld bc, $0207                                  ; $6069: $01 $07 $02
    ld b, $02                                     ; $606c: $06 $02
    inc b                                         ; $606e: $04
    ld b, $00                                     ; $606f: $06 $00
    rst $38                                       ; $6071: $ff
    dec bc                                        ; $6072: $0b
    inc bc                                        ; $6073: $03
    rst $30                                       ; $6074: $f7
    add hl, bc                                    ; $6075: $09
    rst $28                                       ; $6076: $ef
    ld bc, $f7f3                                  ; $6077: $01 $f3 $f7
    di                                            ; $607a: $f3
    rst $38                                       ; $607b: $ff
    di                                            ; $607c: $f3
    ld [bc], a                                    ; $607d: $02
    ld a, [bc]                                    ; $607e: $0a
    nop                                           ; $607f: $00
    ld [bc], a                                    ; $6080: $02
    rra                                           ; $6081: $1f
    sub b                                         ; $6082: $90
    ld h, $39                                     ; $6083: $26 $39
    ld h, h                                       ; $6085: $64
    ld a, a                                       ; $6086: $7f
    adc d                                         ; $6087: $8a
    rst $30                                       ; $6088: $f7
    call Call_0ef_45f3                            ; $6089: $cd $f3 $45
    ld a, e                                       ; $608c: $7b
    ld [hl], e                                    ; $608d: $73
    ld l, a                                       ; $608e: $6f
    ld c, a                                       ; $608f: $4f
    ld a, a                                       ; $6090: $7f
    inc sp                                        ; $6091: $33
    ccf                                           ; $6092: $3f
    ld [bc], a                                    ; $6093: $02
    inc e                                         ; $6094: $1c
    inc b                                         ; $6095: $04
    nop                                           ; $6096: $00
    ld [bc], a                                    ; $6097: $02
    ld bc, $0285                                  ; $6098: $01 $85 $02
    inc bc                                        ; $609b: $03
    ld [bc], a                                    ; $609c: $02
    inc bc                                        ; $609d: $03
    inc b                                         ; $609e: $04
    ld [bc], a                                    ; $609f: $02
    rlca                                          ; $60a0: $07
    adc h                                         ; $60a1: $8c
    dec b                                         ; $60a2: $05
    rst $00                                       ; $60a3: $c7
    push bc                                       ; $60a4: $c5
    db $fd                                        ; $60a5: $fd
    ccf                                           ; $60a6: $3f
    inc c                                         ; $60a7: $0c
    rst $38                                       ; $60a8: $ff
    dec bc                                        ; $60a9: $0b
    rst $38                                       ; $60aa: $ff
    add sp, -$61                                  ; $60ab: $e8 $9f
    adc e                                         ; $60ad: $8b
    ld [bc], a                                    ; $60ae: $02
    db $fc                                        ; $60af: $fc
    ld [bc], a                                    ; $60b0: $02
    cp a                                          ; $60b1: $bf
    add c                                         ; $60b2: $81
    rst $38                                       ; $60b3: $ff
    ld [bc], a                                    ; $60b4: $02
    ld c, b                                       ; $60b5: $48
    ld [bc], a                                    ; $60b6: $02
    nop                                           ; $60b7: $00
    ld [bc], a                                    ; $60b8: $02
    ld b, $8a                                     ; $60b9: $06 $8a
    ld bc, $0307                                  ; $60bb: $01 $07 $03
    dec b                                         ; $60be: $05
    ld b, $02                                     ; $60bf: $06 $02
    dec b                                         ; $60c1: $05
    rlca                                          ; $60c2: $07
    ld [bc], a                                    ; $60c3: $02
    ld b, $06                                     ; $60c4: $06 $06
    inc b                                         ; $60c6: $04
    adc b                                         ; $60c7: $88
    ld [bc], a                                    ; $60c8: $02
    ld b, $03                                     ; $60c9: $06 $03
    dec b                                         ; $60cb: $05
    ld bc, $0207                                  ; $60cc: $01 $07 $02
    ld b, $02                                     ; $60cf: $06 $02
    inc b                                         ; $60d1: $04
    inc b                                         ; $60d2: $04
    nop                                           ; $60d3: $00
    rst $38                                       ; $60d4: $ff
    dec bc                                        ; $60d5: $0b
    inc bc                                        ; $60d6: $03
    rst $30                                       ; $60d7: $f7
    add hl, bc                                    ; $60d8: $09
    rst $28                                       ; $60d9: $ef
    ld bc, $f7f2                                  ; $60da: $01 $f2 $f7
    ld a, [c]                                     ; $60dd: $f2
    rst $38                                       ; $60de: $ff
    ld a, [c]                                     ; $60df: $f2
    ld bc, $000a                                  ; $60e0: $01 $0a $00
    ld [bc], a                                    ; $60e3: $02
    inc bc                                        ; $60e4: $03
    sub d                                         ; $60e5: $92
    inc c                                         ; $60e6: $0c
    rrca                                          ; $60e7: $0f
    ld d, $19                                     ; $60e8: $16 $19
    ld h, l                                       ; $60ea: $65
    ld a, [hl]                                    ; $60eb: $7e
    sbc d                                         ; $60ec: $9a
    rst $20                                       ; $60ed: $e7
    call $41f3                                    ; $60ee: $cd $f3 $41
    ld a, a                                       ; $60f1: $7f
    ld [hl], e                                    ; $60f2: $73
    ld l, a                                       ; $60f3: $6f
    ld c, a                                       ; $60f4: $4f
    ld a, a                                       ; $60f5: $7f
    inc sp                                        ; $60f6: $33
    ccf                                           ; $60f7: $3f
    ld [bc], a                                    ; $60f8: $02
    ld e, $02                                     ; $60f9: $1e $02
    inc b                                         ; $60fb: $04
    sub l                                         ; $60fc: $95
    ld a, [bc]                                    ; $60fd: $0a
    ld c, $13                                     ; $60fe: $0e $13
    dec e                                         ; $6100: $1d
    ld d, $1a                                     ; $6101: $16 $1a
    ld d, $1a                                     ; $6103: $16 $1a
    inc de                                        ; $6105: $13
    rra                                           ; $6106: $1f
    sbc $d7                                       ; $6107: $de $d7
    ld a, l                                       ; $6109: $7d
    rst $30                                       ; $610a: $f7
    ld sp, $2dff                                  ; $610b: $31 $ff $2d
    rst $30                                       ; $610e: $f7
    ld hl, $2cfe                                  ; $610f: $21 $fe $2c
    ld [bc], a                                    ; $6112: $02
    di                                            ; $6113: $f3
    add l                                         ; $6114: $85
    cp a                                          ; $6115: $bf
    db $fc                                        ; $6116: $fc
    cp h                                          ; $6117: $bc
    sub h                                         ; $6118: $94
    db $fc                                        ; $6119: $fc
    ld [bc], a                                    ; $611a: $02
    ld l, h                                       ; $611b: $6c
    ld a, [bc]                                    ; $611c: $0a
    nop                                           ; $611d: $00
    ld [bc], a                                    ; $611e: $02
    ld [bc], a                                    ; $611f: $02
    add d                                         ; $6120: $82
    inc bc                                        ; $6121: $03
    ld bc, $0302                                  ; $6122: $01 $02 $03
    inc b                                         ; $6125: $04
    nop                                           ; $6126: $00
    inc b                                         ; $6127: $04
    ld [bc], a                                    ; $6128: $02
    ld [$ff00], sp                                ; $6129: $08 $00 $ff
    dec bc                                        ; $612c: $0b
    inc bc                                        ; $612d: $03
    rst $30                                       ; $612e: $f7
    add hl, bc                                    ; $612f: $09
    rst $28                                       ; $6130: $ef
    ld bc, $f7f4                                  ; $6131: $01 $f4 $f7
    db $f4                                        ; $6134: $f4
    rst $38                                       ; $6135: $ff
    db $f4                                        ; $6136: $f4
    ld [bc], a                                    ; $6137: $02
    ld b, $00                                     ; $6138: $06 $00
    ld [bc], a                                    ; $613a: $02
    inc bc                                        ; $613b: $03
    sub d                                         ; $613c: $92
    inc c                                         ; $613d: $0c
    rrca                                          ; $613e: $0f
    scf                                           ; $613f: $37
    jr c, jr_0ef_61a7                             ; $6140: $38 $65

    ld a, [hl]                                    ; $6142: $7e
    ld c, d                                       ; $6143: $4a
    ld [hl], a                                    ; $6144: $77
    call Call_0ef_45f3                            ; $6145: $cd $f3 $45
    ld a, e                                       ; $6148: $7b
    inc sp                                        ; $6149: $33
    cpl                                           ; $614a: $2f
    ld c, a                                       ; $614b: $4f
    ld a, a                                       ; $614c: $7f
    ld sp, $023f                                  ; $614d: $31 $3f $02
    ld c, $04                                     ; $6150: $0e $04
    nop                                           ; $6152: $00
    ld [bc], a                                    ; $6153: $02

jr_0ef_6154:
    ld bc, $0298                                  ; $6154: $01 $98 $02
    inc bc                                        ; $6157: $03
    inc b                                         ; $6158: $04
    rlca                                          ; $6159: $07
    adc e                                         ; $615a: $8b
    adc l                                         ; $615b: $8d
    rst $28                                       ; $615c: $ef
    db $eb                                        ; $615d: $eb
    ld [hl], $ff                                  ; $615e: $36 $ff
    scf                                           ; $6160: $37
    rst $38                                       ; $6161: $ff
    ld sp, $2dff                                  ; $6162: $31 $ff $2d
    rst $38                                       ; $6165: $ff
    add hl, hl                                    ; $6166: $29
    or $e8                                        ; $6167: $f6 $e8
    or a                                          ; $6169: $b7
    or e                                          ; $616a: $b3
    rst $18                                       ; $616b: $df
    adc $fe                                       ; $616c: $ce $fe
    ld [bc], a                                    ; $616e: $02
    ld [hl], $04                                  ; $616f: $36 $04
    nop                                           ; $6171: $00
    ld [bc], a                                    ; $6172: $02
    ld b, $81                                     ; $6173: $06 $81
    rlca                                          ; $6175: $07
    ld [bc], a                                    ; $6176: $02
    ld bc, $0781                                  ; $6177: $01 $81 $07
    inc b                                         ; $617a: $04
    ld b, $84                                     ; $617b: $06 $84
    rlca                                          ; $617d: $07
    ld bc, $0705                                  ; $617e: $01 $05 $07
    ld [bc], a                                    ; $6181: $02
    ld [bc], a                                    ; $6182: $02
    ld [bc], a                                    ; $6183: $02
    nop                                           ; $6184: $00
    inc b                                         ; $6185: $04
    inc b                                         ; $6186: $04
    ld a, [bc]                                    ; $6187: $0a

jr_0ef_6188:
    nop                                           ; $6188: $00
    rst $38                                       ; $6189: $ff
    dec bc                                        ; $618a: $0b
    inc bc                                        ; $618b: $03
    rst $30                                       ; $618c: $f7
    add hl, bc                                    ; $618d: $09
    rst $28                                       ; $618e: $ef
    ld bc, $f8f7                                  ; $618f: $01 $f7 $f8
    rst $28                                       ; $6192: $ef
    nop                                           ; $6193: $00
    rst $38                                       ; $6194: $ff
    db $fd                                        ; $6195: $fd
    ld [bc], a                                    ; $6196: $02
    rlca                                          ; $6197: $07
    sub d                                         ; $6198: $92
    dec de                                        ; $6199: $1b
    inc e                                         ; $619a: $1c
    jr z, jr_0ef_61d4                             ; $619b: $28 $37

    ld e, h                                       ; $619d: $5c
    ld a, a                                       ; $619e: $7f
    sbc d                                         ; $619f: $9a
    rst $20                                       ; $61a0: $e7
    cp d                                          ; $61a1: $ba
    rst $00                                       ; $61a2: $c7
    add e                                         ; $61a3: $83
    rst $38                                       ; $61a4: $ff
    rst $28                                       ; $61a5: $ef
    rst $18                                       ; $61a6: $df

jr_0ef_61a7:
    cp a                                          ; $61a7: $bf
    rst $38                                       ; $61a8: $ff
    db $e3                                        ; $61a9: $e3
    rst $38                                       ; $61aa: $ff
    ld [bc], a                                    ; $61ab: $02
    inc e                                         ; $61ac: $1c
    ld a, [bc]                                    ; $61ad: $0a
    nop                                           ; $61ae: $00
    ld [bc], a                                    ; $61af: $02
    jr jr_0ef_6154                                ; $61b0: $18 $a2

    inc l                                         ; $61b2: $2c
    inc [hl]                                      ; $61b3: $34
    ld d, h                                       ; $61b4: $54
    ld l, h                                       ; $61b5: $6c
    ld e, b                                       ; $61b6: $58
    ld l, b                                       ; $61b7: $68
    ld c, [hl]                                    ; $61b8: $4e
    ld a, [hl]                                    ; $61b9: $7e
    ld a, e                                       ; $61ba: $7b
    ld e, l                                       ; $61bb: $5d
    halt                                          ; $61bc: $76
    ld e, [hl]                                    ; $61bd: $5e
    ld b, [hl]                                    ; $61be: $46
    ld a, [hl]                                    ; $61bf: $7e
    db $db                                        ; $61c0: $db
    push af                                       ; $61c1: $f5
    reti                                          ; $61c2: $d9


    rst $38                                       ; $61c3: $ff
    ld b, a                                       ; $61c4: $47
    rst $38                                       ; $61c5: $ff
    ld d, [hl]                                    ; $61c6: $56
    xor $64                                       ; $61c7: $ee $64
    db $fc                                        ; $61c9: $fc
    cp d                                          ; $61ca: $ba
    ld a, [hl]                                    ; $61cb: $7e
    inc a                                         ; $61cc: $3c
    db $fc                                        ; $61cd: $fc
    ret z                                         ; $61ce: $c8

    ld a, b                                       ; $61cf: $78
    ld e, $0e                                     ; $61d0: $1e $0e
    dec b                                         ; $61d2: $05
    rra                                           ; $61d3: $1f

jr_0ef_61d4:
    ld [bc], a                                    ; $61d4: $02
    dec de                                        ; $61d5: $1b
    ld a, [de]                                    ; $61d6: $1a
    nop                                           ; $61d7: $00
    rst $38                                       ; $61d8: $ff
    dec c                                         ; $61d9: $0d
    inc b                                         ; $61da: $04
    rst $30                                       ; $61db: $f7
    add hl, bc                                    ; $61dc: $09
    rst $28                                       ; $61dd: $ef
    ld bc, $f7f8                                  ; $61de: $01 $f8 $f7
    ldh a, [rIE]                                  ; $61e1: $f0 $ff
    ld hl, sp+$00                                 ; $61e3: $f8 $00
    nop                                           ; $61e5: $00
    ld hl, sp+$02                                 ; $61e6: $f8 $02
    rlca                                          ; $61e8: $07
    sub b                                         ; $61e9: $90
    dec de                                        ; $61ea: $1b
    inc e                                         ; $61eb: $1c
    ld h, $3d                                     ; $61ec: $26 $3d
    jp z, $9df7                                   ; $61ee: $ca $f7 $9d

    db $e3                                        ; $61f1: $e3
    ld b, l                                       ; $61f2: $45
    ld a, e                                       ; $61f3: $7b
    ld [hl], e                                    ; $61f4: $73
    ld l, a                                       ; $61f5: $6f
    ld e, a                                       ; $61f6: $5f
    ld a, a                                       ; $61f7: $7f
    ld [hl], c                                    ; $61f8: $71
    ld a, a                                       ; $61f9: $7f
    ld [bc], a                                    ; $61fa: $02
    ld c, $0c                                     ; $61fb: $0e $0c
    nop                                           ; $61fd: $00
    ld [bc], a                                    ; $61fe: $02
    jr c, jr_0ef_6188                             ; $61ff: $38 $87

    ld d, h                                       ; $6201: $54
    ld l, h                                       ; $6202: $6c
    ld c, h                                       ; $6203: $4c
    ld [hl], h                                    ; $6204: $74
    cpl                                           ; $6205: $2f
    scf                                           ; $6206: $37
    daa                                           ; $6207: $27
    ld [bc], a                                    ; $6208: $02
    dec a                                         ; $6209: $3d
    sub l                                         ; $620a: $95
    cpl                                           ; $620b: $2f
    dec sp                                        ; $620c: $3b
    cpl                                           ; $620d: $2f
    db $e3                                        ; $620e: $e3
    rst $38                                       ; $620f: $ff
    ld l, l                                       ; $6210: $6d
    ld a, [$7fac]                                 ; $6211: $fa $ac $7f
    inc hl                                        ; $6214: $23
    rst $38                                       ; $6215: $ff
    dec hl                                        ; $6216: $2b
    rst $30                                       ; $6217: $f7
    ld [hl], d                                    ; $6218: $72
    cp [hl]                                       ; $6219: $be
    dec e                                         ; $621a: $1d
    rst $38                                       ; $621b: $ff
    xor $be                                       ; $621c: $ee $be
    ld hl, sp-$48                                 ; $621e: $f8 $b8
    ld b, $01                                     ; $6220: $06 $01
    ld a, [bc]                                    ; $6222: $0a
    nop                                           ; $6223: $00
    add d                                         ; $6224: $82
    ld l, b                                       ; $6225: $68
    ld hl, sp+$02                                 ; $6226: $f8 $02
    sub b                                         ; $6228: $90
    inc c                                         ; $6229: $0c
    nop                                           ; $622a: $00
    ld [bc], a                                    ; $622b: $02
    ld bc, $001e                                  ; $622c: $01 $1e $00
    rst $38                                       ; $622f: $ff
    dec bc                                        ; $6230: $0b
    inc bc                                        ; $6231: $03
    rst $30                                       ; $6232: $f7
    add hl, bc                                    ; $6233: $09
    rst $28                                       ; $6234: $ef
    ld bc, $f7f2                                  ; $6235: $01 $f2 $f7
    ld a, [c]                                     ; $6238: $f2
    rst $38                                       ; $6239: $ff
    ld a, [c]                                     ; $623a: $f2
    nop                                           ; $623b: $00
    ld [bc], a                                    ; $623c: $02
    inc bc                                        ; $623d: $03
    add [hl]                                      ; $623e: $86
    dec b                                         ; $623f: $05
    ld b, $04                                     ; $6240: $06 $04
    rlca                                          ; $6242: $07
    ld [bc], a                                    ; $6243: $02
    inc bc                                        ; $6244: $03
    ld [bc], a                                    ; $6245: $02
    ld bc, $0002                                  ; $6246: $01 $02 $00
    ld [bc], a                                    ; $6249: $02
    rlca                                          ; $624a: $07
    sub b                                         ; $624b: $90
    dec de                                        ; $624c: $1b
    inc e                                         ; $624d: $1c
    ld h, $3d                                     ; $624e: $26 $3d
    jp z, $9df7                                   ; $6250: $ca $f7 $9d

    db $e3                                        ; $6253: $e3
    ld b, l                                       ; $6254: $45
    ld a, e                                       ; $6255: $7b
    ld [hl], e                                    ; $6256: $73
    ld l, a                                       ; $6257: $6f
    ld e, a                                       ; $6258: $5f
    ld a, a                                       ; $6259: $7f
    ld [hl], c                                    ; $625a: $71
    ld a, a                                       ; $625b: $7f
    ld [bc], a                                    ; $625c: $02
    ld c, $02                                     ; $625d: $0e $02
    db $10                                        ; $625f: $10
    sbc h                                         ; $6260: $9c
    cp b                                          ; $6261: $b8
    xor b                                         ; $6262: $a8
    db $ec                                        ; $6263: $ec
    ld [hl], h                                    ; $6264: $74
    ld d, h                                       ; $6265: $54
    cp h                                          ; $6266: $bc
    xor h                                         ; $6267: $ac
    call c, $fee6                                 ; $6268: $dc $e6 $fe
    ld h, c                                       ; $626b: $61

jr_0ef_626c:
    rst $38                                       ; $626c: $ff
    xor l                                         ; $626d: $ad
    ld a, [hl]                                    ; $626e: $7e
    jr nz, @+$01                                  ; $626f: $20 $ff

    dec hl                                        ; $6271: $2b
    rst $30                                       ; $6272: $f7
    ld [hl], e                                    ; $6273: $73
    cp a                                          ; $6274: $bf
    dec a                                         ; $6275: $3d
    rst $38                                       ; $6276: $ff
    cp $be                                        ; $6277: $fe $be
    ld hl, sp-$48                                 ; $6279: $f8 $b8
    sub h                                         ; $627b: $94
    db $fc                                        ; $627c: $fc
    ld [bc], a                                    ; $627d: $02
    ld l, h                                       ; $627e: $6c
    ld c, $00                                     ; $627f: $0e $00
    ld b, $01                                     ; $6281: $06 $01
    inc c                                         ; $6283: $0c
    nop                                           ; $6284: $00
    rst $38                                       ; $6285: $ff
    ld hl, $ed0e                                  ; $6286: $21 $0e $ed
    dec l                                         ; $6289: $2d
    call nc, $ea23                                ; $628a: $d4 $23 $ea

jr_0ef_628d:
    push af                                       ; $628d: $f5
    and $fd                                       ; $628e: $e6 $fd
    di                                            ; $6290: $f3
    inc bc                                        ; $6291: $03
    or $ef                                        ; $6292: $f6 $ef
    or $f7                                        ; $6294: $f6 $f7

jr_0ef_6296:
    or $ff                                        ; $6296: $f6 $ff
    inc bc                                        ; $6298: $03
    inc b                                         ; $6299: $04
    ld b, $f0                                     ; $629a: $06 $f0
    ld b, $f8                                     ; $629c: $06 $f8
    ld b, $00                                     ; $629e: $06 $00
    inc de                                        ; $62a0: $13
    rlca                                          ; $62a1: $07
    ld d, $f2                                     ; $62a2: $16 $f2
    ld d, $fa                                     ; $62a4: $16 $fa
    ld d, $ff                                     ; $62a6: $16 $ff
    ld [bc], a                                    ; $62a8: $02
    ld bc, $0383                                  ; $62a9: $01 $83 $03
    ld [bc], a                                    ; $62ac: $02
    inc bc                                        ; $62ad: $03
    ld [bc], a                                    ; $62ae: $02
    ld [bc], a                                    ; $62af: $02
    add c                                         ; $62b0: $81
    inc bc                                        ; $62b1: $03
    ld [bc], a                                    ; $62b2: $02
    ld bc, $0696                                  ; $62b3: $01 $96 $06
    rlca                                          ; $62b6: $07
    ld c, $0f                                     ; $62b7: $0e $0f
    rra                                           ; $62b9: $1f
    inc e                                         ; $62ba: $1c
    ccf                                           ; $62bb: $3f
    inc a                                         ; $62bc: $3c
    ld a, a                                       ; $62bd: $7f
    ld a, [hl]                                    ; $62be: $7e
    sbc $ef                                       ; $62bf: $de $ef
    cp e                                          ; $62c1: $bb
    adc $7f                                       ; $62c2: $ce $7f
    adc [hl]                                      ; $62c4: $8e
    rst $28                                       ; $62c5: $ef
    ld e, $7e                                     ; $62c6: $1e $7e
    sbc a                                         ; $62c8: $9f
    dec e                                         ; $62c9: $1d
    rst $38                                       ; $62ca: $ff
    ld [bc], a                                    ; $62cb: $02
    inc d                                         ; $62cc: $14
    ld [bc], a                                    ; $62cd: $02
    jr c, jr_0ef_626c                             ; $62ce: $38 $9c

    ld a, h                                       ; $62d0: $7c
    ld b, h                                       ; $62d1: $44
    adc d                                         ; $62d2: $8a
    or $b6                                        ; $62d3: $f6 $b6
    sbc $ff                                       ; $62d5: $de $ff
    ld b, c                                       ; $62d7: $41
    cp [hl]                                       ; $62d8: $be
    jp nz, $5faf                                  ; $62d9: $c2 $af $5f

    ld [hl], a                                    ; $62dc: $77
    reti                                          ; $62dd: $d9


    ld [hl], $ce                                  ; $62de: $36 $ce
    cp $62                                        ; $62e0: $fe $62
    cp h                                          ; $62e2: $bc
    db $fc                                        ; $62e3: $fc
    sbc e                                         ; $62e4: $9b
    ld a, a                                       ; $62e5: $7f
    ld e, e                                       ; $62e6: $5b
    rst $20                                       ; $62e7: $e7
    ld hl, $dbff                                  ; $62e8: $21 $ff $db
    rst $38                                       ; $62eb: $ff
    ld [bc], a                                    ; $62ec: $02
    jr nz, jr_0ef_62f1                            ; $62ed: $20 $02

    jr nc, jr_0ef_628d                            ; $62ef: $30 $9c

jr_0ef_62f1:
    jr c, jr_0ef_631b                             ; $62f1: $38 $28

    add sp, $38                                   ; $62f3: $e8 $38
    ret c                                         ; $62f5: $d8

    jr c, @-$06                                   ; $62f6: $38 $f8

    jr jr_0ef_6296                                ; $62f8: $18 $9c

    db $f4                                        ; $62fa: $f4
    ld a, h                                       ; $62fb: $7c
    db $f4                                        ; $62fc: $f4
    sub h                                         ; $62fd: $94
    ld a, h                                       ; $62fe: $7c
    call c, $ea3c                                 ; $62ff: $dc $3c $ea
    ld e, $fa                                     ; $6302: $1e $fa
    ld c, $f6                                     ; $6304: $0e $f6
    ld c, $7e                                     ; $6306: $0e $7e
    add [hl]                                      ; $6308: $86
    rst $08                                       ; $6309: $cf
    or l                                          ; $630a: $b5
    rst $10                                       ; $630b: $d7
    xor a                                         ; $630c: $af
    ld [$8f04], sp                                ; $630d: $08 $04 $8f
    rlca                                          ; $6310: $07
    ld b, $05                                     ; $6311: $06 $05
    ld b, $07                                     ; $6313: $06 $07
    dec b                                         ; $6315: $05
    dec bc                                        ; $6316: $0b
    inc c                                         ; $6317: $0c
    rrca                                          ; $6318: $0f
    inc c                                         ; $6319: $0c
    rrca                                          ; $631a: $0f

jr_0ef_631b:
    ld c, $0b                                     ; $631b: $0e $0b
    ld c, $05                                     ; $631d: $0e $05
    ld [bc], a                                    ; $631f: $02
    ld b, $f4                                     ; $6320: $06 $f4
    rlca                                          ; $6322: $07
    ld h, l                                       ; $6323: $65
    ld h, [hl]                                    ; $6324: $66
    or l                                          ; $6325: $b5
    or $6f                                        ; $6326: $f6 $6f
    ld a, h                                       ; $6328: $7c
    inc bc                                        ; $6329: $03

jr_0ef_632a:
    nop                                           ; $632a: $00
    inc bc                                        ; $632b: $03
    nop                                           ; $632c: $00
    inc bc                                        ; $632d: $03
    nop                                           ; $632e: $00
    ld bc, $bc02                                  ; $632f: $01 $02 $bc
    ld a, a                                       ; $6332: $7f
    rst $38                                       ; $6333: $ff
    ccf                                           ; $6334: $3f
    cp $3f                                        ; $6335: $fe $3f
    or h                                          ; $6337: $b4
    ld a, a                                       ; $6338: $7f
    db $fd                                        ; $6339: $fd
    ld a, [hl]                                    ; $633a: $7e
    ld a, l                                       ; $633b: $7d
    cp $ab                                        ; $633c: $fe $ab
    ld a, h                                       ; $633e: $7c
    pop de                                        ; $633f: $d1
    ld a, $d3                                     ; $6340: $3e $d3
    ld a, $e8                                     ; $6342: $3e $e8
    rra                                           ; $6344: $1f
    db $ec                                        ; $6345: $ec
    rra                                           ; $6346: $1f
    ld a, [$f08f]                                 ; $6347: $fa $8f $f0
    nop                                           ; $634a: $00
    ldh [rNR10], a                                ; $634b: $e0 $10
    ret nz                                        ; $634d: $c0

    jr nc, jr_0ef_6370                            ; $634e: $30 $20

    ldh a, [$c0]                                  ; $6350: $f0 $c0
    ldh a, [rNR41]                                ; $6352: $f0 $20
    ret nc                                        ; $6354: $d0

    ld [hl], b                                    ; $6355: $70
    sub b                                         ; $6356: $90
    ret nc                                        ; $6357: $d0

    jr nz, jr_0ef_632a                            ; $6358: $20 $d0

    jr nz, @-$0e                                  ; $635a: $20 $f0

    nop                                           ; $635c: $00
    ldh a, [rP1]                                  ; $635d: $f0 $00
    sub b                                         ; $635f: $90
    ld h, b                                       ; $6360: $60
    add b                                         ; $6361: $80
    ld [hl], b                                    ; $6362: $70
    rst $38                                       ; $6363: $ff
    jr jr_0ef_638e                                ; $6364: $18 $28

    rst $18                                       ; $6366: $df
    ld b, c                                       ; $6367: $41
    rst $38                                       ; $6368: $ff
    ld c, $1a                                     ; $6369: $0e $1a
    ld e, $1a                                     ; $636b: $1e $1a
    rla                                           ; $636d: $17
    rra                                           ; $636e: $1f
    db $fd                                        ; $636f: $fd

jr_0ef_6370:
    ei                                            ; $6370: $fb
    rst $38                                       ; $6371: $ff
    ei                                            ; $6372: $fb
    rst $30                                       ; $6373: $f7
    ld sp, hl                                     ; $6374: $f9
    rst $38                                       ; $6375: $ff
    push af                                       ; $6376: $f5
    rst $18                                       ; $6377: $df
    push af                                       ; $6378: $f5
    adc $fa                                       ; $6379: $ce $fa

jr_0ef_637b:
    sbc $fa                                       ; $637b: $de $fa
    call c, $9cf4                                 ; $637d: $dc $f4 $9c
    db $ec                                        ; $6380: $ec
    sbc h                                         ; $6381: $9c
    db $e4                                        ; $6382: $e4
    cp h                                          ; $6383: $bc
    call nc, $ecb4                                ; $6384: $d4 $b4 $ec
    ld a, b                                       ; $6387: $78
    cp b                                          ; $6388: $b8
    sbc e                                         ; $6389: $9b
    db $fc                                        ; $638a: $fc
    ld c, a                                       ; $638b: $4f
    ld a, h                                       ; $638c: $7c
    ld l, l                                       ; $638d: $6d

jr_0ef_638e:
    ld a, [hl]                                    ; $638e: $7e
    dec [hl]                                      ; $638f: $35
    ccf                                           ; $6390: $3f
    ld l, $3f                                     ; $6391: $2e $3f
    ld d, $1f                                     ; $6393: $16 $1f
    dec bc                                        ; $6395: $0b
    inc bc                                        ; $6396: $03
    rrca                                          ; $6397: $0f
    add h                                         ; $6398: $84
    ld b, $07                                     ; $6399: $06 $07
    inc bc                                        ; $639b: $03
    ld [bc], a                                    ; $639c: $02
    ld b, $03                                     ; $639d: $06 $03
    and a                                         ; $639f: $a7
    ld [bc], a                                    ; $63a0: $02
    inc bc                                        ; $63a1: $03
    rlca                                          ; $63a2: $07
    ld b, $05                                     ; $63a3: $06 $05
    rlca                                          ; $63a5: $07
    db $fd                                        ; $63a6: $fd
    rrca                                          ; $63a7: $0f
    rst $28                                       ; $63a8: $ef
    sbc a                                         ; $63a9: $9f
    rst $38                                       ; $63aa: $ff
    rrca                                          ; $63ab: $0f
    rst $38                                       ; $63ac: $ff
    ld c, a                                       ; $63ad: $4f
    rst $38                                       ; $63ae: $ff
    adc a                                         ; $63af: $8f
    ld a, e                                       ; $63b0: $7b
    xor a                                         ; $63b1: $af
    ei                                            ; $63b2: $fb
    adc a                                         ; $63b3: $8f
    ld a, a                                       ; $63b4: $7f
    rst $00                                       ; $63b5: $c7
    rst $30                                       ; $63b6: $f7
    dec bc                                        ; $63b7: $0b
    rst $28                                       ; $63b8: $ef
    sbc a                                         ; $63b9: $9f
    ld a, e                                       ; $63ba: $7b
    sbc a                                         ; $63bb: $9f
    push af                                       ; $63bc: $f5
    ld e, a                                       ; $63bd: $5f
    ret nc                                        ; $63be: $d0

    rst $38                                       ; $63bf: $ff
    ld a, b                                       ; $63c0: $78
    rst $38                                       ; $63c1: $ff
    or h                                          ; $63c2: $b4
    ld a, a                                       ; $63c3: $7f
    call c, Call_000_203f                         ; $63c4: $dc $3f $20
    rla                                           ; $63c7: $17
    ldh a, [rSC]                                  ; $63c8: $f0 $02
    sub b                                         ; $63ca: $90
    add [hl]                                      ; $63cb: $86
    ld a, l                                       ; $63cc: $7d
    cp $07                                        ; $63cd: $fe $07
    rst $38                                       ; $63cf: $ff
    ld l, $fd                                     ; $63d0: $2e $fd
    ld [bc], a                                    ; $63d2: $02
    ld b, b                                       ; $63d3: $40
    add c                                         ; $63d4: $81
    jr nz, jr_0ef_63d9                            ; $63d5: $20 $02

    ld h, b                                       ; $63d7: $60
    sub a                                         ; $63d8: $97

jr_0ef_63d9:
    jr nz, jr_0ef_637b                            ; $63d9: $20 $a0

    ld h, b                                       ; $63db: $60
    ld [hl], b                                    ; $63dc: $70
    ret nc                                        ; $63dd: $d0

    sub b                                         ; $63de: $90
    ldh a, [rBCPS]                                ; $63df: $f0 $68
    ld hl, sp+$38                                 ; $63e1: $f8 $38
    ld hl, sp+$16                                 ; $63e3: $f8 $16
    cp $09                                        ; $63e5: $fe $09
    rst $38                                       ; $63e7: $ff
    rrca                                          ; $63e8: $0f
    ei                                            ; $63e9: $fb
    adc $fe                                       ; $63ea: $ce $fe
    jr c, @-$06                                   ; $63ec: $38 $f8

    and b                                         ; $63ee: $a0
    ldh [rSC], a                                  ; $63ef: $e0 $02
    ret nz                                        ; $63f1: $c0

    ld [bc], a                                    ; $63f2: $02
    add b                                         ; $63f3: $80
    sub [hl]                                      ; $63f4: $96
    inc de                                        ; $63f5: $13
    dec e                                         ; $63f6: $1d
    inc [hl]                                      ; $63f7: $34
    dec sp                                        ; $63f8: $3b
    ld a, [hl-]                                   ; $63f9: $3a
    daa                                           ; $63fa: $27
    ld e, e                                       ; $63fb: $5b
    ld l, h                                       ; $63fc: $6c
    ld a, [hl+]                                   ; $63fd: $2a
    dec [hl]                                      ; $63fe: $35
    ld d, l                                       ; $63ff: $55
    ld a, a                                       ; $6400: $7f
    ld l, b                                       ; $6401: $68
    ld d, a                                       ; $6402: $57
    and [hl]                                      ; $6403: $a6
    ei                                            ; $6404: $fb
    ld e, a                                       ; $6405: $5f
    ld a, a                                       ; $6406: $7f
    ld [hl], l                                    ; $6407: $75
    ld l, [hl]                                    ; $6408: $6e
    ld e, a                                       ; $6409: $5f
    ld h, [hl]                                    ; $640a: $66
    ld [bc], a                                    ; $640b: $02
    add hl, sp                                    ; $640c: $39
    ld [$9300], sp                                ; $640d: $08 $00 $93
    ld hl, sp-$01                                 ; $6410: $f8 $ff
    ld a, d                                       ; $6412: $7a
    rst $38                                       ; $6413: $ff
    ld l, l                                       ; $6414: $6d
    rst $28                                       ; $6415: $ef
    and h                                         ; $6416: $a4
    rst $20                                       ; $6417: $e7
    and [hl]                                      ; $6418: $a6
    rst $20                                       ; $6419: $e7
    ld d, e                                       ; $641a: $53
    or e                                          ; $641b: $b3
    and c                                         ; $641c: $a1
    ld h, c                                       ; $641d: $61
    ld d, c                                       ; $641e: $51
    pop af                                        ; $641f: $f1
    and b                                         ; $6420: $a0
    ldh [$60], a                                  ; $6421: $e0 $60
    ld [bc], a                                    ; $6423: $02
    ldh [$81], a                                  ; $6424: $e0 $81
    ld h, b                                       ; $6426: $60
    ld [bc], a                                    ; $6427: $02
    ret nz                                        ; $6428: $c0

    ld [$9800], sp                                ; $6429: $08 $00 $98
    ld [bc], a                                    ; $642c: $02
    rra                                           ; $642d: $1f
    ld bc, $001f                                  ; $642e: $01 $1f $00
    rra                                           ; $6431: $1f
    db $10                                        ; $6432: $10
    rra                                           ; $6433: $1f
    db $10                                        ; $6434: $10
    rra                                           ; $6435: $1f
    ld [$141f], sp                                ; $6436: $08 $1f $14
    rra                                           ; $6439: $1f
    dec de                                        ; $643a: $1b
    rra                                           ; $643b: $1f
    inc d                                         ; $643c: $14
    rra                                           ; $643d: $1f
    ld a, [bc]                                    ; $643e: $0a
    rrca                                          ; $643f: $0f
    dec b                                         ; $6440: $05
    rlca                                          ; $6441: $07
    ld [bc], a                                    ; $6442: $02
    inc bc                                        ; $6443: $03
    ld [bc], a                                    ; $6444: $02
    ld bc, $0006                                  ; $6445: $01 $06 $00
    rst $38                                       ; $6448: $ff
    ld hl, $ed0e                                  ; $6449: $21 $0e $ed
    dec l                                         ; $644c: $2d
    call nc, $ea23                                ; $644d: $d4 $23 $ea

jr_0ef_6450:
    push af                                       ; $6450: $f5
    and $fd                                       ; $6451: $e6 $fd
    di                                            ; $6453: $f3
    inc bc                                        ; $6454: $03
    or $ef                                        ; $6455: $f6 $ef
    or $f7                                        ; $6457: $f6 $f7
    or $ff                                        ; $6459: $f6 $ff
    inc bc                                        ; $645b: $03
    inc b                                         ; $645c: $04
    ld b, $f0                                     ; $645d: $06 $f0
    ld b, $f8                                     ; $645f: $06 $f8
    ld b, $00                                     ; $6461: $06 $00
    inc de                                        ; $6463: $13
    rlca                                          ; $6464: $07
    ld d, $f2                                     ; $6465: $16 $f2
    ld d, $fa                                     ; $6467: $16 $fa
    ld d, $ff                                     ; $6469: $16 $ff
    ld [bc], a                                    ; $646b: $02
    ld bc, $0383                                  ; $646c: $01 $83 $03
    ld [bc], a                                    ; $646f: $02
    inc bc                                        ; $6470: $03
    ld [bc], a                                    ; $6471: $02
    ld [bc], a                                    ; $6472: $02
    add c                                         ; $6473: $81
    inc bc                                        ; $6474: $03
    ld [bc], a                                    ; $6475: $02
    ld bc, $0696                                  ; $6476: $01 $96 $06
    rlca                                          ; $6479: $07
    ld c, $0f                                     ; $647a: $0e $0f
    rra                                           ; $647c: $1f
    inc e                                         ; $647d: $1c
    ccf                                           ; $647e: $3f
    inc a                                         ; $647f: $3c
    ld a, a                                       ; $6480: $7f
    ld a, [hl]                                    ; $6481: $7e
    sbc $ef                                       ; $6482: $de $ef
    cp e                                          ; $6484: $bb
    adc $7f                                       ; $6485: $ce $7f
    adc [hl]                                      ; $6487: $8e
    rst $28                                       ; $6488: $ef
    ld e, $7e                                     ; $6489: $1e $7e
    sbc a                                         ; $648b: $9f
    dec e                                         ; $648c: $1d
    rst $38                                       ; $648d: $ff
    ld [bc], a                                    ; $648e: $02
    inc d                                         ; $648f: $14
    ld [bc], a                                    ; $6490: $02
    jr c, @-$62                                   ; $6491: $38 $9c

    ld a, h                                       ; $6493: $7c
    ld b, h                                       ; $6494: $44
    adc d                                         ; $6495: $8a
    or $b6                                        ; $6496: $f6 $b6
    sbc $ff                                       ; $6498: $de $ff
    ld b, c                                       ; $649a: $41
    cp [hl]                                       ; $649b: $be
    jp nz, $5faf                                  ; $649c: $c2 $af $5f

    ld [hl], a                                    ; $649f: $77
    reti                                          ; $64a0: $d9


    ld [hl], $ce                                  ; $64a1: $36 $ce
    cp $62                                        ; $64a3: $fe $62
    cp h                                          ; $64a5: $bc
    db $fc                                        ; $64a6: $fc
    sbc e                                         ; $64a7: $9b
    ld a, a                                       ; $64a8: $7f
    ld e, e                                       ; $64a9: $5b
    rst $20                                       ; $64aa: $e7
    ld hl, $dbff                                  ; $64ab: $21 $ff $db
    rst $38                                       ; $64ae: $ff
    ld [bc], a                                    ; $64af: $02
    jr nz, jr_0ef_64b4                            ; $64b0: $20 $02

    jr nc, jr_0ef_6450                            ; $64b2: $30 $9c

jr_0ef_64b4:
    jr c, jr_0ef_64de                             ; $64b4: $38 $28

    add sp, $38                                   ; $64b6: $e8 $38
    ld hl, sp+$18                                 ; $64b8: $f8 $18
    ld hl, sp+$18                                 ; $64ba: $f8 $18
    call c, $3cf4                                 ; $64bc: $dc $f4 $3c
    db $f4                                        ; $64bf: $f4
    sub h                                         ; $64c0: $94
    ld a, h                                       ; $64c1: $7c
    call z, $fa3c                                 ; $64c2: $cc $3c $fa
    ld c, $f6                                     ; $64c5: $0e $f6
    ld c, $fe                                     ; $64c7: $0e $fe
    ld b, $7e                                     ; $64c9: $06 $7e
    add [hl]                                      ; $64cb: $86
    rst $08                                       ; $64cc: $cf
    or l                                          ; $64cd: $b5
    rst $10                                       ; $64ce: $d7
    xor a                                         ; $64cf: $af
    ld [$8f04], sp                                ; $64d0: $08 $04 $8f
    rlca                                          ; $64d3: $07
    ld b, $05                                     ; $64d4: $06 $05
    ld b, $07                                     ; $64d6: $06 $07
    dec b                                         ; $64d8: $05
    dec bc                                        ; $64d9: $0b
    inc c                                         ; $64da: $0c
    rrca                                          ; $64db: $0f
    inc c                                         ; $64dc: $0c
    rrca                                          ; $64dd: $0f

jr_0ef_64de:
    ld c, $0b                                     ; $64de: $0e $0b
    ld c, $05                                     ; $64e0: $0e $05
    ld [bc], a                                    ; $64e2: $02
    ld b, $8c                                     ; $64e3: $06 $8c
    rlca                                          ; $64e5: $07
    ld h, l                                       ; $64e6: $65
    ld h, [hl]                                    ; $64e7: $66
    or l                                          ; $64e8: $b5
    or $6f                                        ; $64e9: $f6 $6f
    ld a, h                                       ; $64eb: $7c
    inc bc                                        ; $64ec: $03
    nop                                           ; $64ed: $00

jr_0ef_64ee:
    inc bc                                        ; $64ee: $03
    nop                                           ; $64ef: $00
    inc bc                                        ; $64f0: $03
    ld [bc], a                                    ; $64f1: $02
    nop                                           ; $64f2: $00
    and $03                                       ; $64f3: $e6 $03
    cp l                                          ; $64f5: $bd
    ld a, a                                       ; $64f6: $7f
    rst $38                                       ; $64f7: $ff
    ccf                                           ; $64f8: $3f
    cp $3f                                        ; $64f9: $fe $3f
    or l                                          ; $64fb: $b5
    ld a, [hl]                                    ; $64fc: $7e
    db $fd                                        ; $64fd: $fd
    ld a, [hl]                                    ; $64fe: $7e
    ld [hl], l                                    ; $64ff: $75
    cp $ab                                        ; $6500: $fe $ab
    ld a, h                                       ; $6502: $7c
    db $d3                                        ; $6503: $d3
    inc a                                         ; $6504: $3c
    db $d3                                        ; $6505: $d3
    ld a, $e8                                     ; $6506: $3e $e8
    rra                                           ; $6508: $1f
    db $ec                                        ; $6509: $ec
    rra                                           ; $650a: $1f
    ld a, [$f08f]                                 ; $650b: $fa $8f $f0
    nop                                           ; $650e: $00
    ldh [rNR10], a                                ; $650f: $e0 $10
    ret nz                                        ; $6511: $c0

    jr nc, jr_0ef_6534                            ; $6512: $30 $20

    ldh a, [$c0]                                  ; $6514: $f0 $c0
    ldh a, [rNR41]                                ; $6516: $f0 $20
    ret nc                                        ; $6518: $d0

    ldh a, [rNR10]                                ; $6519: $f0 $10
    ret nc                                        ; $651b: $d0

    jr nz, jr_0ef_64ee                            ; $651c: $20 $d0

    jr nz, @-$0e                                  ; $651e: $20 $f0

    nop                                           ; $6520: $00
    ldh a, [rP1]                                  ; $6521: $f0 $00
    sub b                                         ; $6523: $90
    ld h, b                                       ; $6524: $60
    add b                                         ; $6525: $80
    ld [hl], b                                    ; $6526: $70
    rst $38                                       ; $6527: $ff
    jr jr_0ef_6554                                ; $6528: $18 $2a

    db $dd                                        ; $652a: $dd
    ld b, c                                       ; $652b: $41
    rst $38                                       ; $652c: $ff
    ld c, $1a                                     ; $652d: $0e $1a
    ld e, $1a                                     ; $652f: $1e $1a
    rla                                           ; $6531: $17
    rra                                           ; $6532: $1f
    db $fd                                        ; $6533: $fd

jr_0ef_6534:
    ei                                            ; $6534: $fb
    rst $38                                       ; $6535: $ff
    ei                                            ; $6536: $fb
    rst $30                                       ; $6537: $f7
    ld sp, hl                                     ; $6538: $f9
    rst $38                                       ; $6539: $ff
    push af                                       ; $653a: $f5
    rst $18                                       ; $653b: $df
    push af                                       ; $653c: $f5
    adc $fa                                       ; $653d: $ce $fa

jr_0ef_653f:
    sbc $fa                                       ; $653f: $de $fa
    call c, $9cf4                                 ; $6541: $dc $f4 $9c
    db $ec                                        ; $6544: $ec
    sbc h                                         ; $6545: $9c
    db $e4                                        ; $6546: $e4
    cp h                                          ; $6547: $bc
    call nc, $ecb4                                ; $6548: $d4 $b4 $ec
    ld a, b                                       ; $654b: $78
    cp b                                          ; $654c: $b8
    sbc e                                         ; $654d: $9b
    db $fc                                        ; $654e: $fc
    ld c, a                                       ; $654f: $4f
    ld a, h                                       ; $6550: $7c
    ld l, l                                       ; $6551: $6d
    ld a, [hl]                                    ; $6552: $7e
    dec [hl]                                      ; $6553: $35

jr_0ef_6554:
    ccf                                           ; $6554: $3f
    ld l, $3f                                     ; $6555: $2e $3f
    ld d, $1f                                     ; $6557: $16 $1f
    dec bc                                        ; $6559: $0b
    inc bc                                        ; $655a: $03
    rrca                                          ; $655b: $0f
    add h                                         ; $655c: $84
    ld b, $07                                     ; $655d: $06 $07
    inc bc                                        ; $655f: $03
    ld [bc], a                                    ; $6560: $02
    ld b, $03                                     ; $6561: $06 $03
    and a                                         ; $6563: $a7
    ld [bc], a                                    ; $6564: $02
    inc bc                                        ; $6565: $03
    rlca                                          ; $6566: $07
    ld b, $05                                     ; $6567: $06 $05
    rlca                                          ; $6569: $07
    db $fd                                        ; $656a: $fd
    rrca                                          ; $656b: $0f
    rst $28                                       ; $656c: $ef
    sbc a                                         ; $656d: $9f
    rst $38                                       ; $656e: $ff
    rrca                                          ; $656f: $0f
    rst $38                                       ; $6570: $ff
    ld c, a                                       ; $6571: $4f
    rst $38                                       ; $6572: $ff
    adc a                                         ; $6573: $8f
    ld a, e                                       ; $6574: $7b
    xor a                                         ; $6575: $af
    ei                                            ; $6576: $fb
    adc a                                         ; $6577: $8f
    ld a, a                                       ; $6578: $7f
    rst $00                                       ; $6579: $c7
    rst $30                                       ; $657a: $f7
    dec bc                                        ; $657b: $0b
    rst $28                                       ; $657c: $ef
    sbc a                                         ; $657d: $9f
    ld a, e                                       ; $657e: $7b
    sbc a                                         ; $657f: $9f
    push af                                       ; $6580: $f5
    ld e, a                                       ; $6581: $5f
    ret nc                                        ; $6582: $d0

    rst $38                                       ; $6583: $ff
    ld a, b                                       ; $6584: $78
    rst $38                                       ; $6585: $ff
    or h                                          ; $6586: $b4
    ld a, a                                       ; $6587: $7f
    call c, Call_000_203f                         ; $6588: $dc $3f $20
    rla                                           ; $658b: $17
    ldh a, [rSC]                                  ; $658c: $f0 $02
    sub b                                         ; $658e: $90
    add [hl]                                      ; $658f: $86
    ld a, l                                       ; $6590: $7d
    cp $07                                        ; $6591: $fe $07
    rst $38                                       ; $6593: $ff
    ld l, $fd                                     ; $6594: $2e $fd
    ld [bc], a                                    ; $6596: $02
    ld b, b                                       ; $6597: $40
    add c                                         ; $6598: $81
    jr nz, jr_0ef_659d                            ; $6599: $20 $02

    ld h, b                                       ; $659b: $60
    sub a                                         ; $659c: $97

jr_0ef_659d:
    jr nz, jr_0ef_653f                            ; $659d: $20 $a0

    ld h, b                                       ; $659f: $60
    ld [hl], b                                    ; $65a0: $70
    ret nc                                        ; $65a1: $d0

    sub b                                         ; $65a2: $90
    ldh a, [rBCPS]                                ; $65a3: $f0 $68
    ld hl, sp+$38                                 ; $65a5: $f8 $38
    ld hl, sp+$16                                 ; $65a7: $f8 $16
    cp $09                                        ; $65a9: $fe $09
    rst $38                                       ; $65ab: $ff
    rrca                                          ; $65ac: $0f
    ei                                            ; $65ad: $fb
    adc $fe                                       ; $65ae: $ce $fe
    jr c, @-$06                                   ; $65b0: $38 $f8

    and b                                         ; $65b2: $a0
    ldh [rSC], a                                  ; $65b3: $e0 $02
    ret nz                                        ; $65b5: $c0

    ld [bc], a                                    ; $65b6: $02
    add b                                         ; $65b7: $80
    sub [hl]                                      ; $65b8: $96
    inc de                                        ; $65b9: $13
    dec e                                         ; $65ba: $1d
    inc [hl]                                      ; $65bb: $34
    dec sp                                        ; $65bc: $3b
    ld a, [hl-]                                   ; $65bd: $3a
    daa                                           ; $65be: $27
    ld e, e                                       ; $65bf: $5b
    ld l, h                                       ; $65c0: $6c
    ld a, [hl+]                                   ; $65c1: $2a
    dec [hl]                                      ; $65c2: $35
    ld d, l                                       ; $65c3: $55
    ld a, a                                       ; $65c4: $7f
    ld l, b                                       ; $65c5: $68
    ld d, a                                       ; $65c6: $57
    and [hl]                                      ; $65c7: $a6
    ei                                            ; $65c8: $fb
    ld e, a                                       ; $65c9: $5f
    ld a, a                                       ; $65ca: $7f
    ld [hl], l                                    ; $65cb: $75
    ld l, [hl]                                    ; $65cc: $6e
    ld e, a                                       ; $65cd: $5f
    ld h, [hl]                                    ; $65ce: $66
    ld [bc], a                                    ; $65cf: $02
    add hl, sp                                    ; $65d0: $39
    ld [$9300], sp                                ; $65d1: $08 $00 $93
    ld hl, sp-$01                                 ; $65d4: $f8 $ff
    ld a, d                                       ; $65d6: $7a
    rst $38                                       ; $65d7: $ff
    ld l, l                                       ; $65d8: $6d
    rst $28                                       ; $65d9: $ef
    and h                                         ; $65da: $a4
    rst $20                                       ; $65db: $e7
    and [hl]                                      ; $65dc: $a6
    rst $20                                       ; $65dd: $e7
    ld d, e                                       ; $65de: $53
    or e                                          ; $65df: $b3
    and c                                         ; $65e0: $a1
    ld h, c                                       ; $65e1: $61
    ld d, c                                       ; $65e2: $51
    pop af                                        ; $65e3: $f1
    and b                                         ; $65e4: $a0
    ldh [$60], a                                  ; $65e5: $e0 $60
    ld [bc], a                                    ; $65e7: $02
    ldh [$81], a                                  ; $65e8: $e0 $81
    ld h, b                                       ; $65ea: $60
    ld [bc], a                                    ; $65eb: $02
    ret nz                                        ; $65ec: $c0

    ld [$9800], sp                                ; $65ed: $08 $00 $98
    ld [bc], a                                    ; $65f0: $02
    rra                                           ; $65f1: $1f
    ld bc, $001f                                  ; $65f2: $01 $1f $00
    rra                                           ; $65f5: $1f
    db $10                                        ; $65f6: $10
    rra                                           ; $65f7: $1f
    db $10                                        ; $65f8: $10
    rra                                           ; $65f9: $1f
    ld [$141f], sp                                ; $65fa: $08 $1f $14
    rra                                           ; $65fd: $1f
    dec de                                        ; $65fe: $1b
    rra                                           ; $65ff: $1f
    inc d                                         ; $6600: $14
    rra                                           ; $6601: $1f
    ld a, [bc]                                    ; $6602: $0a
    rrca                                          ; $6603: $0f
    dec b                                         ; $6604: $05
    rlca                                          ; $6605: $07
    ld [bc], a                                    ; $6606: $02
    inc bc                                        ; $6607: $03
    ld [bc], a                                    ; $6608: $02
    ld bc, $0006                                  ; $6609: $01 $06 $00
    rst $38                                       ; $660c: $ff
    ld hl, $ed0e                                  ; $660d: $21 $0e $ed
    dec l                                         ; $6610: $2d
    call nc, $e923                                ; $6611: $d4 $23 $e9
    push af                                       ; $6614: $f5
    and $fd                                       ; $6615: $e6 $fd
    di                                            ; $6617: $f3
    inc bc                                        ; $6618: $03
    or $ef                                        ; $6619: $f6 $ef
    or $f7                                        ; $661b: $f6 $f7
    or $ff                                        ; $661d: $f6 $ff
    inc bc                                        ; $661f: $03
    inc b                                         ; $6620: $04
    ld b, $f0                                     ; $6621: $06 $f0
    ld b, $f8                                     ; $6623: $06 $f8
    ld b, $00                                     ; $6625: $06 $00
    inc de                                        ; $6627: $13
    rlca                                          ; $6628: $07
    ld d, $f2                                     ; $6629: $16 $f2
    ld d, $fa                                     ; $662b: $16 $fa
    ld d, $ff                                     ; $662d: $16 $ff
    inc b                                         ; $662f: $04
    ld bc, $0386                                  ; $6630: $01 $86 $03
    ld [bc], a                                    ; $6633: $02
    rlca                                          ; $6634: $07
    dec b                                         ; $6635: $05
    inc bc                                        ; $6636: $03
    ld [bc], a                                    ; $6637: $02
    ld [bc], a                                    ; $6638: $02
    inc bc                                        ; $6639: $03
    sub h                                         ; $663a: $94
    ld [bc], a                                    ; $663b: $02
    inc bc                                        ; $663c: $03
    rrca                                          ; $663d: $0f
    ld c, $1f                                     ; $663e: $0e $1f
    inc e                                         ; $6640: $1c
    ld a, a                                       ; $6641: $7f
    ld a, h                                       ; $6642: $7c
    ld a, a                                       ; $6643: $7f
    ld a, [hl]                                    ; $6644: $7e
    sbc [hl]                                      ; $6645: $9e
    rst $28                                       ; $6646: $ef
    ei                                            ; $6647: $fb
    adc [hl]                                      ; $6648: $8e
    ld a, a                                       ; $6649: $7f
    adc [hl]                                      ; $664a: $8e
    rst $28                                       ; $664b: $ef
    ld e, $7f                                     ; $664c: $1e $7f
    sbc a                                         ; $664e: $9f
    ld [bc], a                                    ; $664f: $02
    db $10                                        ; $6650: $10
    ld [bc], a                                    ; $6651: $02
    ld a, h                                       ; $6652: $7c
    sub d                                         ; $6653: $92
    cp b                                          ; $6654: $b8
    ret z                                         ; $6655: $c8

    inc e                                         ; $6656: $1c
    db $e4                                        ; $6657: $e4
    db $ec                                        ; $6658: $ec
    cp h                                          ; $6659: $bc
    cp $02                                        ; $665a: $fe $02
    ld a, h                                       ; $665c: $7c
    add h                                         ; $665d: $84
    ld e, [hl]                                    ; $665e: $5e
    cp [hl]                                       ; $665f: $be
    xor $b2                                       ; $6660: $ee $b2
    ld l, [hl]                                    ; $6662: $6e
    sbc [hl]                                      ; $6663: $9e
    ld a, d                                       ; $6664: $7a
    add $02                                       ; $6665: $c6 $02
    db $fc                                        ; $6667: $fc
    adc b                                         ; $6668: $88
    cp e                                          ; $6669: $bb
    ld a, a                                       ; $666a: $7f
    ld e, e                                       ; $666b: $5b
    rst $20                                       ; $666c: $e7
    ld sp, $8bff                                  ; $666d: $31 $ff $8b
    rst $38                                       ; $6670: $ff
    ld [bc], a                                    ; $6671: $02
    jr nz, jr_0ef_6676                            ; $6672: $20 $02

    jr nc, @-$62                                  ; $6674: $30 $9c

jr_0ef_6676:
    jr c, jr_0ef_66a0                             ; $6676: $38 $28

    add sp, $38                                   ; $6678: $e8 $38
    ld hl, sp+$18                                 ; $667a: $f8 $18
    ld hl, sp+$18                                 ; $667c: $f8 $18
    db $fc                                        ; $667e: $fc
    db $f4                                        ; $667f: $f4
    inc a                                         ; $6680: $3c
    db $f4                                        ; $6681: $f4
    sub h                                         ; $6682: $94
    ld a, h                                       ; $6683: $7c
    db $ec                                        ; $6684: $ec
    inc e                                         ; $6685: $1c
    ld a, [$f60e]                                 ; $6686: $fa $0e $f6
    ld c, $7e                                     ; $6689: $0e $7e
    add [hl]                                      ; $668b: $86
    sbc $a6                                       ; $668c: $de $a6
    ld c, a                                       ; $668e: $4f
    or l                                          ; $668f: $b5
    db $fd                                        ; $6690: $fd
    add a                                         ; $6691: $87

jr_0ef_6692:
    ld b, $04                                     ; $6692: $06 $04
    add l                                         ; $6694: $85
    dec b                                         ; $6695: $05
    ld b, $07                                     ; $6696: $06 $07
    ld b, $04                                     ; $6698: $06 $04
    ld [bc], a                                    ; $669a: $02
    rlca                                          ; $669b: $07
    adc d                                         ; $669c: $8a
    dec b                                         ; $669d: $05
    dec bc                                        ; $669e: $0b
    inc c                                         ; $669f: $0c

jr_0ef_66a0:
    dec c                                         ; $66a0: $0d
    ld c, $0b                                     ; $66a1: $0e $0b
    ld c, $0b                                     ; $66a3: $0e $0b
    ld c, $05                                     ; $66a5: $0e $05
    ld [bc], a                                    ; $66a7: $02
    ld b, $f4                                     ; $66a8: $06 $f4
    rlca                                          ; $66aa: $07
    ld h, l                                       ; $66ab: $65
    ld h, [hl]                                    ; $66ac: $66
    or l                                          ; $66ad: $b5
    or $6f                                        ; $66ae: $f6 $6f
    ld a, h                                       ; $66b0: $7c
    inc bc                                        ; $66b1: $03
    nop                                           ; $66b2: $00
    inc bc                                        ; $66b3: $03
    nop                                           ; $66b4: $00
    inc bc                                        ; $66b5: $03
    nop                                           ; $66b6: $00
    ld [hl], h                                    ; $66b7: $74
    rst $38                                       ; $66b8: $ff
    cp a                                          ; $66b9: $bf
    ld a, a                                       ; $66ba: $7f
    db $fd                                        ; $66bb: $fd
    ccf                                           ; $66bc: $3f
    cp $3f                                        ; $66bd: $fe $3f
    or l                                          ; $66bf: $b5
    ld a, [hl]                                    ; $66c0: $7e
    db $fd                                        ; $66c1: $fd
    ld a, [hl]                                    ; $66c2: $7e
    ld [hl], a                                    ; $66c3: $77
    db $fc                                        ; $66c4: $fc
    xor e                                         ; $66c5: $ab
    ld a, h                                       ; $66c6: $7c
    db $d3                                        ; $66c7: $d3
    inc a                                         ; $66c8: $3c

jr_0ef_66c9:
    db $d3                                        ; $66c9: $d3
    ld a, $e8                                     ; $66ca: $3e $e8
    rra                                           ; $66cc: $1f
    db $ec                                        ; $66cd: $ec
    rra                                           ; $66ce: $1f
    ld a, [$f08f]                                 ; $66cf: $fa $8f $f0
    nop                                           ; $66d2: $00
    ldh a, [rNR10]                                ; $66d3: $f0 $10
    add b                                         ; $66d5: $80
    ld [hl], b                                    ; $66d6: $70
    jr nz, jr_0ef_66c9                            ; $66d7: $20 $f0

    ret nz                                        ; $66d9: $c0

    ldh a, [$30]                                  ; $66da: $f0 $30
    ret nc                                        ; $66dc: $d0

    ldh a, [rP1]                                  ; $66dd: $f0 $00
    ret nc                                        ; $66df: $d0

    jr nz, jr_0ef_6692                            ; $66e0: $20 $b0

    ld b, b                                       ; $66e2: $40
    ldh a, [rP1]                                  ; $66e3: $f0 $00
    or b                                          ; $66e5: $b0
    ld b, b                                       ; $66e6: $40
    db $10                                        ; $66e7: $10
    ldh [$a0], a                                  ; $66e8: $e0 $a0
    ld d, b                                       ; $66ea: $50
    rst $38                                       ; $66eb: $ff
    jr @+$7c                                      ; $66ec: $18 $7a

    sbc l                                         ; $66ee: $9d
    ld b, c                                       ; $66ef: $41
    rst $38                                       ; $66f0: $ff
    ld c, $1a                                     ; $66f1: $0e $1a
    ld e, $1a                                     ; $66f3: $1e $1a
    rla                                           ; $66f5: $17
    rra                                           ; $66f6: $1f
    db $fd                                        ; $66f7: $fd
    ei                                            ; $66f8: $fb
    rst $38                                       ; $66f9: $ff
    ei                                            ; $66fa: $fb
    rst $30                                       ; $66fb: $f7
    ld sp, hl                                     ; $66fc: $f9
    rst $38                                       ; $66fd: $ff
    push af                                       ; $66fe: $f5
    rst $10                                       ; $66ff: $d7
    db $fd                                        ; $6700: $fd
    adc $fa                                       ; $6701: $ce $fa

jr_0ef_6703:
    sub $fa                                       ; $6703: $d6 $fa
    call c, $9cf4                                 ; $6705: $dc $f4 $9c
    db $ec                                        ; $6708: $ec
    sbc h                                         ; $6709: $9c
    db $e4                                        ; $670a: $e4
    cp h                                          ; $670b: $bc
    call nc, $ecb4                                ; $670c: $d4 $b4 $ec
    ld a, b                                       ; $670f: $78
    cp b                                          ; $6710: $b8
    sbc e                                         ; $6711: $9b
    db $fc                                        ; $6712: $fc
    ld c, a                                       ; $6713: $4f
    ld a, h                                       ; $6714: $7c
    ld l, l                                       ; $6715: $6d
    ld a, [hl]                                    ; $6716: $7e
    dec [hl]                                      ; $6717: $35
    ccf                                           ; $6718: $3f
    ld l, $3f                                     ; $6719: $2e $3f
    ld d, $1f                                     ; $671b: $16 $1f
    dec bc                                        ; $671d: $0b
    inc bc                                        ; $671e: $03
    rrca                                          ; $671f: $0f
    add h                                         ; $6720: $84
    ld b, $07                                     ; $6721: $06 $07
    inc bc                                        ; $6723: $03
    ld [bc], a                                    ; $6724: $02
    ld b, $03                                     ; $6725: $06 $03
    and a                                         ; $6727: $a7
    ld [bc], a                                    ; $6728: $02
    inc bc                                        ; $6729: $03
    rlca                                          ; $672a: $07
    ld b, $05                                     ; $672b: $06 $05
    rlca                                          ; $672d: $07
    jp hl                                         ; $672e: $e9


    rra                                           ; $672f: $1f
    rst $28                                       ; $6730: $ef
    sbc a                                         ; $6731: $9f
    rst $38                                       ; $6732: $ff
    rrca                                          ; $6733: $0f
    rst $38                                       ; $6734: $ff
    ld c, a                                       ; $6735: $4f
    rst $38                                       ; $6736: $ff
    adc a                                         ; $6737: $8f
    ld a, e                                       ; $6738: $7b
    xor a                                         ; $6739: $af
    ei                                            ; $673a: $fb
    adc a                                         ; $673b: $8f
    ld a, a                                       ; $673c: $7f
    rst $00                                       ; $673d: $c7
    rst $30                                       ; $673e: $f7
    dec bc                                        ; $673f: $0b
    rst $28                                       ; $6740: $ef
    sbc a                                         ; $6741: $9f
    ld a, e                                       ; $6742: $7b
    sbc a                                         ; $6743: $9f
    push af                                       ; $6744: $f5
    ld e, a                                       ; $6745: $5f
    ret nc                                        ; $6746: $d0

    rst $38                                       ; $6747: $ff
    ld a, b                                       ; $6748: $78
    rst $38                                       ; $6749: $ff
    or h                                          ; $674a: $b4
    ld a, a                                       ; $674b: $7f
    call c, Call_000_203f                         ; $674c: $dc $3f $20
    rla                                           ; $674f: $17
    ldh a, [rSC]                                  ; $6750: $f0 $02
    sub b                                         ; $6752: $90
    add [hl]                                      ; $6753: $86
    ld a, l                                       ; $6754: $7d
    cp $07                                        ; $6755: $fe $07
    rst $38                                       ; $6757: $ff
    ld l, $fd                                     ; $6758: $2e $fd
    ld [bc], a                                    ; $675a: $02
    ld b, b                                       ; $675b: $40
    add c                                         ; $675c: $81
    jr nz, jr_0ef_6761                            ; $675d: $20 $02

    ld h, b                                       ; $675f: $60
    sub a                                         ; $6760: $97

jr_0ef_6761:
    jr nz, jr_0ef_6703                            ; $6761: $20 $a0

    ld h, b                                       ; $6763: $60
    ld [hl], b                                    ; $6764: $70
    ret nc                                        ; $6765: $d0

    sub b                                         ; $6766: $90
    ldh a, [rBCPS]                                ; $6767: $f0 $68
    ld hl, sp+$38                                 ; $6769: $f8 $38
    ld hl, sp+$16                                 ; $676b: $f8 $16
    cp $09                                        ; $676d: $fe $09
    rst $38                                       ; $676f: $ff
    rrca                                          ; $6770: $0f
    ei                                            ; $6771: $fb
    adc $fe                                       ; $6772: $ce $fe
    jr c, @-$06                                   ; $6774: $38 $f8

    and b                                         ; $6776: $a0
    ldh [rSC], a                                  ; $6777: $e0 $02
    ret nz                                        ; $6779: $c0

    ld [bc], a                                    ; $677a: $02
    add b                                         ; $677b: $80
    sub [hl]                                      ; $677c: $96
    inc de                                        ; $677d: $13
    dec e                                         ; $677e: $1d
    inc [hl]                                      ; $677f: $34
    dec sp                                        ; $6780: $3b
    ld a, [hl-]                                   ; $6781: $3a
    daa                                           ; $6782: $27
    ld e, e                                       ; $6783: $5b
    ld l, h                                       ; $6784: $6c
    ld a, [hl+]                                   ; $6785: $2a
    dec [hl]                                      ; $6786: $35
    ld d, l                                       ; $6787: $55
    ld a, a                                       ; $6788: $7f
    ld l, b                                       ; $6789: $68
    ld d, a                                       ; $678a: $57
    and [hl]                                      ; $678b: $a6
    ei                                            ; $678c: $fb
    ld e, a                                       ; $678d: $5f
    ld a, a                                       ; $678e: $7f
    ld [hl], l                                    ; $678f: $75
    ld l, [hl]                                    ; $6790: $6e
    ld e, a                                       ; $6791: $5f
    ld h, [hl]                                    ; $6792: $66
    ld [bc], a                                    ; $6793: $02
    add hl, sp                                    ; $6794: $39
    ld [$9300], sp                                ; $6795: $08 $00 $93
    ld hl, sp-$01                                 ; $6798: $f8 $ff
    ld a, d                                       ; $679a: $7a
    rst $38                                       ; $679b: $ff
    ld l, l                                       ; $679c: $6d
    rst $28                                       ; $679d: $ef
    and h                                         ; $679e: $a4
    rst $20                                       ; $679f: $e7
    and [hl]                                      ; $67a0: $a6
    rst $20                                       ; $67a1: $e7
    ld d, e                                       ; $67a2: $53
    or e                                          ; $67a3: $b3
    and c                                         ; $67a4: $a1
    ld h, c                                       ; $67a5: $61
    ld d, c                                       ; $67a6: $51
    pop af                                        ; $67a7: $f1
    and b                                         ; $67a8: $a0
    ldh [$60], a                                  ; $67a9: $e0 $60
    ld [bc], a                                    ; $67ab: $02
    ldh [$81], a                                  ; $67ac: $e0 $81
    ld h, b                                       ; $67ae: $60
    ld [bc], a                                    ; $67af: $02
    ret nz                                        ; $67b0: $c0

    ld [$9800], sp                                ; $67b1: $08 $00 $98
    ld [bc], a                                    ; $67b4: $02
    rra                                           ; $67b5: $1f
    ld bc, $001f                                  ; $67b6: $01 $1f $00
    rra                                           ; $67b9: $1f
    db $10                                        ; $67ba: $10
    rra                                           ; $67bb: $1f
    db $10                                        ; $67bc: $10
    rra                                           ; $67bd: $1f
    ld [$141f], sp                                ; $67be: $08 $1f $14
    rra                                           ; $67c1: $1f
    dec de                                        ; $67c2: $1b
    rra                                           ; $67c3: $1f
    inc d                                         ; $67c4: $14
    rra                                           ; $67c5: $1f
    ld a, [bc]                                    ; $67c6: $0a
    rrca                                          ; $67c7: $0f
    dec b                                         ; $67c8: $05
    rlca                                          ; $67c9: $07
    ld [bc], a                                    ; $67ca: $02
    inc bc                                        ; $67cb: $03
    ld [bc], a                                    ; $67cc: $02
    ld bc, $0006                                  ; $67cd: $01 $06 $00
    rst $38                                       ; $67d0: $ff
    ld hl, $ed0e                                  ; $67d1: $21 $0e $ed
    dec l                                         ; $67d4: $2d
    call nc, $e923                                ; $67d5: $d4 $23 $e9
    push af                                       ; $67d8: $f5

jr_0ef_67d9:
    and $fd                                       ; $67d9: $e6 $fd
    di                                            ; $67db: $f3
    inc bc                                        ; $67dc: $03
    or $ef                                        ; $67dd: $f6 $ef
    or $f7                                        ; $67df: $f6 $f7
    or $ff                                        ; $67e1: $f6 $ff
    inc bc                                        ; $67e3: $03
    inc b                                         ; $67e4: $04
    ld b, $f1                                     ; $67e5: $06 $f1
    ld b, $f9                                     ; $67e7: $06 $f9
    ld b, $01                                     ; $67e9: $06 $01
    inc d                                         ; $67eb: $14
    rlca                                          ; $67ec: $07
    ld d, $f2                                     ; $67ed: $16 $f2
    ld d, $fa                                     ; $67ef: $16 $fa
    ld d, $ff                                     ; $67f1: $16 $ff
    ld [bc], a                                    ; $67f3: $02
    ld bc, $0302                                  ; $67f4: $01 $02 $03
    add e                                         ; $67f7: $83
    dec b                                         ; $67f8: $05
    ld b, $07                                     ; $67f9: $06 $07
    ld [bc], a                                    ; $67fb: $02
    dec b                                         ; $67fc: $05
    add c                                         ; $67fd: $81
    ld b, $02                                     ; $67fe: $06 $02
    inc bc                                        ; $6800: $03
    sub h                                         ; $6801: $94
    ld [bc], a                                    ; $6802: $02
    inc bc                                        ; $6803: $03
    dec c                                         ; $6804: $0d
    ld c, $3b                                     ; $6805: $0e $3b
    inc a                                         ; $6807: $3c
    ld a, a                                       ; $6808: $7f
    ld a, h                                       ; $6809: $7c
    ld e, l                                       ; $680a: $5d
    ld a, [hl]                                    ; $680b: $7e
    xor d                                         ; $680c: $aa
    rst $18                                       ; $680d: $df
    rst $38                                       ; $680e: $ff
    adc [hl]                                      ; $680f: $8e
    ld a, a                                       ; $6810: $7f
    adc [hl]                                      ; $6811: $8e
    rst $28                                       ; $6812: $ef
    ld e, $7d                                     ; $6813: $1e $7d
    sbc a                                         ; $6815: $9f
    ld [bc], a                                    ; $6816: $02
    jr nz, jr_0ef_681b                            ; $6817: $20 $02

    ld a, h                                       ; $6819: $7c
    sub d                                         ; $681a: $92

jr_0ef_681b:
    ld hl, sp-$78                                 ; $681b: $f8 $88
    inc d                                         ; $681d: $14
    db $ec                                        ; $681e: $ec
    ld l, h                                       ; $681f: $6c
    cp h                                          ; $6820: $bc
    cp $82                                        ; $6821: $fe $82
    ld a, h                                       ; $6823: $7c
    add h                                         ; $6824: $84
    ld e, [hl]                                    ; $6825: $5e
    cp [hl]                                       ; $6826: $be
    xor $b2                                       ; $6827: $ee $b2
    ld l, [hl]                                    ; $6829: $6e
    sbc [hl]                                      ; $682a: $9e
    ld a, d                                       ; $682b: $7a
    add $02                                       ; $682c: $c6 $02
    db $fc                                        ; $682e: $fc
    adc b                                         ; $682f: $88
    ld [hl-], a                                   ; $6830: $32
    cp $19                                        ; $6831: $fe $19
    rst $20                                       ; $6833: $e7
    or c                                          ; $6834: $b1
    rst $38                                       ; $6835: $ff
    ld c, e                                       ; $6836: $4b
    cp a                                          ; $6837: $bf
    ld [bc], a                                    ; $6838: $02
    jr nz, jr_0ef_683d                            ; $6839: $20 $02

    jr nc, jr_0ef_67d9                            ; $683b: $30 $9c

jr_0ef_683d:
    jr c, jr_0ef_6867                             ; $683d: $38 $28

    ret c                                         ; $683f: $d8

    jr c, @-$06                                   ; $6840: $38 $f8

    jr jr_0ef_68c0                                ; $6842: $18 $7c

    sbc h                                         ; $6844: $9c
    db $fc                                        ; $6845: $fc
    db $f4                                        ; $6846: $f4
    inc [hl]                                      ; $6847: $34
    db $fc                                        ; $6848: $fc
    call c, $ec3c                                 ; $6849: $dc $3c $ec
    inc e                                         ; $684c: $1c
    or $0e                                        ; $684d: $f6 $0e
    or $0e                                        ; $684f: $f6 $0e
    cp $06                                        ; $6851: $fe $06
    ld e, [hl]                                    ; $6853: $5e
    and [hl]                                      ; $6854: $a6
    rst $28                                       ; $6855: $ef
    sub l                                         ; $6856: $95
    ld a, l                                       ; $6857: $7d
    add a                                         ; $6858: $87
    ld b, $04                                     ; $6859: $06 $04
    add l                                         ; $685b: $85
    rlca                                          ; $685c: $07
    ld b, $07                                     ; $685d: $06 $07
    ld b, $05                                     ; $685f: $06 $05
    ld [bc], a                                    ; $6861: $02
    rlca                                          ; $6862: $07
    cp [hl]                                       ; $6863: $be
    inc b                                         ; $6864: $04
    dec bc                                        ; $6865: $0b
    inc c                                         ; $6866: $0c

jr_0ef_6867:
    dec c                                         ; $6867: $0d
    ld c, $0b                                     ; $6868: $0e $0b
    ld c, $0f                                     ; $686a: $0e $0f
    ld c, $05                                     ; $686c: $0e $05
    ld b, $47                                     ; $686e: $06 $47

jr_0ef_6870:
    ld b, [hl]                                    ; $6870: $46
    and l                                         ; $6871: $a5
    and $f7                                       ; $6872: $e6 $f7
    db $f4                                        ; $6874: $f4
    ld c, a                                       ; $6875: $4f
    ld a, l                                       ; $6876: $7d
    inc bc                                        ; $6877: $03
    nop                                           ; $6878: $00
    inc bc                                        ; $6879: $03
    nop                                           ; $687a: $00
    inc bc                                        ; $687b: $03
    nop                                           ; $687c: $00
    inc a                                         ; $687d: $3c
    rst $38                                       ; $687e: $ff
    cp a                                          ; $687f: $bf
    ld a, a                                       ; $6880: $7f
    cp $3f                                        ; $6881: $fe $3f
    rst $30                                       ; $6883: $f7
    ld a, $bd                                     ; $6884: $3e $bd
    ld a, [hl]                                    ; $6886: $7e
    db $fd                                        ; $6887: $fd
    ld a, [hl]                                    ; $6888: $7e
    ld l, e                                       ; $6889: $6b
    db $fc                                        ; $688a: $fc
    or e                                          ; $688b: $b3
    ld a, h                                       ; $688c: $7c
    db $d3                                        ; $688d: $d3
    inc a                                         ; $688e: $3c
    pop de                                        ; $688f: $d1
    ld a, $fa                                     ; $6890: $3e $fa
    rra                                           ; $6892: $1f
    db $ec                                        ; $6893: $ec
    rra                                           ; $6894: $1f
    db $fc                                        ; $6895: $fc
    rrca                                          ; $6896: $0f
    ldh [rNR10], a                                ; $6897: $e0 $10
    ldh a, [rNR10]                                ; $6899: $f0 $10
    add b                                         ; $689b: $80
    ld [hl], b                                    ; $689c: $70
    ld h, b                                       ; $689d: $60
    ldh a, [$90]                                  ; $689e: $f0 $90
    ldh a, [rSVBK]                                ; $68a0: $f0 $70
    ld [bc], a                                    ; $68a2: $02
    sub b                                         ; $68a3: $90

jr_0ef_68a4:
    jp z, $b060                                   ; $68a4: $ca $60 $b0

    ld b, b                                       ; $68a7: $40
    ldh a, [rP1]                                  ; $68a8: $f0 $00
    ldh a, [rP1]                                  ; $68aa: $f0 $00
    ldh a, [rP1]                                  ; $68ac: $f0 $00
    jr nc, jr_0ef_6870                            ; $68ae: $30 $c0

    or b                                          ; $68b0: $b0
    ld b, b                                       ; $68b1: $40
    rst $38                                       ; $68b2: $ff
    jr @+$80                                      ; $68b3: $18 $7e

    sbc c                                         ; $68b5: $99
    ld bc, $0eff                                  ; $68b6: $01 $ff $0e
    ld a, [de]                                    ; $68b9: $1a
    ld e, $1a                                     ; $68ba: $1e $1a
    dec de                                        ; $68bc: $1b
    rra                                           ; $68bd: $1f
    ld a, l                                       ; $68be: $7d
    ei                                            ; $68bf: $fb

jr_0ef_68c0:
    rst $38                                       ; $68c0: $ff
    ei                                            ; $68c1: $fb
    rst $30                                       ; $68c2: $f7
    ld sp, hl                                     ; $68c3: $f9
    rst $38                                       ; $68c4: $ff
    push af                                       ; $68c5: $f5
    db $db                                        ; $68c6: $db
    db $fd                                        ; $68c7: $fd
    adc $fa                                       ; $68c8: $ce $fa
    sub $fa                                       ; $68ca: $d6 $fa
    call c, $d4fc                                 ; $68cc: $dc $fc $d4
    db $ec                                        ; $68cf: $ec
    sbc h                                         ; $68d0: $9c
    db $e4                                        ; $68d1: $e4
    cp h                                          ; $68d2: $bc
    call nc, $ecb4                                ; $68d3: $d4 $b4 $ec
    ld a, b                                       ; $68d6: $78
    cp b                                          ; $68d7: $b8
    sub a                                         ; $68d8: $97
    ld sp, hl                                     ; $68d9: $f9
    rst $18                                       ; $68da: $df
    ld hl, sp-$15                                 ; $68db: $f8 $eb
    cp $69                                        ; $68dd: $fe $69
    ld a, [hl]                                    ; $68df: $7e
    dec a                                         ; $68e0: $3d
    ccf                                           ; $68e1: $3f
    inc d                                         ; $68e2: $14
    rra                                           ; $68e3: $1f
    rla                                           ; $68e4: $17
    rra                                           ; $68e5: $1f
    inc c                                         ; $68e6: $0c
    rrca                                          ; $68e7: $0f
    dec c                                         ; $68e8: $0d
    ld c, $07                                     ; $68e9: $0e $07
    dec b                                         ; $68eb: $05
    ld b, $07                                     ; $68ec: $06 $07
    ld b, $03                                     ; $68ee: $06 $03
    rlca                                          ; $68f0: $07
    and a                                         ; $68f1: $a7
    inc b                                         ; $68f2: $04
    rlca                                          ; $68f3: $07
    rrca                                          ; $68f4: $0f
    inc c                                         ; $68f5: $0c
    dec bc                                        ; $68f6: $0b
    ld c, $fb                                     ; $68f7: $0e $fb
    ccf                                           ; $68f9: $3f
    rst $18                                       ; $68fa: $df
    ccf                                           ; $68fb: $3f
    rst $38                                       ; $68fc: $ff
    rra                                           ; $68fd: $1f
    rst $38                                       ; $68fe: $ff
    sbc a                                         ; $68ff: $9f
    rst $38                                       ; $6900: $ff
    rra                                           ; $6901: $1f
    rst $38                                       ; $6902: $ff
    sbc a                                         ; $6903: $9f
    rst $30                                       ; $6904: $f7
    rra                                           ; $6905: $1f
    rst $38                                       ; $6906: $ff
    adc a                                         ; $6907: $8f
    rst $20                                       ; $6908: $e7
    rra                                           ; $6909: $1f
    rst $18                                       ; $690a: $df
    ccf                                           ; $690b: $3f
    rst $30                                       ; $690c: $f7
    ccf                                           ; $690d: $3f
    db $e3                                        ; $690e: $e3
    cp a                                          ; $690f: $bf
    and c                                         ; $6910: $a1
    rst $38                                       ; $6911: $ff
    ret nc                                        ; $6912: $d0

    rst $38                                       ; $6913: $ff
    ld [hl], b                                    ; $6914: $70
    rst $38                                       ; $6915: $ff
    cp b                                          ; $6916: $b8
    ld a, a                                       ; $6917: $7f
    jr nz, @+$19                                  ; $6918: $20 $17

    ldh [rSC], a                                  ; $691a: $e0 $02
    jr nz, jr_0ef_68a4                            ; $691c: $20 $86

    ei                                            ; $691e: $fb
    db $fd                                        ; $691f: $fd
    adc [hl]                                      ; $6920: $8e
    rst $38                                       ; $6921: $ff
    dec a                                         ; $6922: $3d
    ld a, [$2004]                                 ; $6923: $fa $04 $20
    sub [hl]                                      ; $6926: $96
    and b                                         ; $6927: $a0
    ld h, b                                       ; $6928: $60
    ld [hl], b                                    ; $6929: $70
    ret nc                                        ; $692a: $d0

    sub b                                         ; $692b: $90
    ldh a, [rBCPS]                                ; $692c: $f0 $68
    ld hl, sp+$38                                 ; $692e: $f8 $38
    ld hl, sp+$16                                 ; $6930: $f8 $16
    cp $19                                        ; $6932: $fe $19
    rst $38                                       ; $6934: $ff
    rrca                                          ; $6935: $0f
    ei                                            ; $6936: $fb
    adc [hl]                                      ; $6937: $8e
    cp $78                                        ; $6938: $fe $78
    ld hl, sp+$30                                 ; $693a: $f8 $30
    ldh a, [rSC]                                  ; $693c: $f0 $02
    ret nz                                        ; $693e: $c0

    inc b                                         ; $693f: $04
    nop                                           ; $6940: $00
    sub [hl]                                      ; $6941: $96
    inc de                                        ; $6942: $13
    dec e                                         ; $6943: $1d
    inc [hl]                                      ; $6944: $34
    dec sp                                        ; $6945: $3b
    ld a, [hl-]                                   ; $6946: $3a
    daa                                           ; $6947: $27
    ld e, e                                       ; $6948: $5b
    ld l, h                                       ; $6949: $6c
    ld a, [hl+]                                   ; $694a: $2a
    dec [hl]                                      ; $694b: $35
    ld d, l                                       ; $694c: $55
    ld a, a                                       ; $694d: $7f
    ld l, b                                       ; $694e: $68
    ld d, a                                       ; $694f: $57
    and [hl]                                      ; $6950: $a6
    ei                                            ; $6951: $fb
    ld e, a                                       ; $6952: $5f
    ld a, a                                       ; $6953: $7f
    ld [hl], l                                    ; $6954: $75
    ld l, [hl]                                    ; $6955: $6e
    ld e, a                                       ; $6956: $5f
    ld h, [hl]                                    ; $6957: $66
    ld [bc], a                                    ; $6958: $02
    add hl, sp                                    ; $6959: $39
    ld [$9300], sp                                ; $695a: $08 $00 $93
    db $f4                                        ; $695d: $f4
    rst $38                                       ; $695e: $ff
    ld a, d                                       ; $695f: $7a
    rst $38                                       ; $6960: $ff
    ld l, l                                       ; $6961: $6d
    rst $28                                       ; $6962: $ef
    and [hl]                                      ; $6963: $a6
    rst $20                                       ; $6964: $e7
    and [hl]                                      ; $6965: $a6
    rst $20                                       ; $6966: $e7
    ld d, e                                       ; $6967: $53
    or e                                          ; $6968: $b3
    and c                                         ; $6969: $a1
    ld h, c                                       ; $696a: $61
    ld d, c                                       ; $696b: $51
    pop af                                        ; $696c: $f1
    and b                                         ; $696d: $a0
    ldh [$60], a                                  ; $696e: $e0 $60
    ld [bc], a                                    ; $6970: $02
    ldh [$81], a                                  ; $6971: $e0 $81
    ld h, b                                       ; $6973: $60
    ld [bc], a                                    ; $6974: $02
    ret nz                                        ; $6975: $c0

    ld [$9800], sp                                ; $6976: $08 $00 $98
    ld [bc], a                                    ; $6979: $02
    rra                                           ; $697a: $1f
    ld bc, $001f                                  ; $697b: $01 $1f $00
    rra                                           ; $697e: $1f
    db $10                                        ; $697f: $10
    rra                                           ; $6980: $1f
    db $10                                        ; $6981: $10
    rra                                           ; $6982: $1f
    ld [$161f], sp                                ; $6983: $08 $1f $16
    rra                                           ; $6986: $1f
    dec bc                                        ; $6987: $0b
    rra                                           ; $6988: $1f
    inc d                                         ; $6989: $14
    rra                                           ; $698a: $1f
    ld a, [bc]                                    ; $698b: $0a
    rrca                                          ; $698c: $0f
    add hl, bc                                    ; $698d: $09
    rrca                                          ; $698e: $0f
    inc b                                         ; $698f: $04
    rlca                                          ; $6990: $07
    ld [bc], a                                    ; $6991: $02
    inc bc                                        ; $6992: $03
    ld b, $00                                     ; $6993: $06 $00
    rst $38                                       ; $6995: $ff
    ld hl, $ed0e                                  ; $6996: $21 $0e $ed
    dec l                                         ; $6999: $2d
    call nc, $e923                                ; $699a: $d4 $23 $e9
    push af                                       ; $699d: $f5

jr_0ef_699e:
    and $fd                                       ; $699e: $e6 $fd
    di                                            ; $69a0: $f3
    inc bc                                        ; $69a1: $03
    or $ef                                        ; $69a2: $f6 $ef
    or $f7                                        ; $69a4: $f6 $f7
    or $ff                                        ; $69a6: $f6 $ff
    inc bc                                        ; $69a8: $03
    inc b                                         ; $69a9: $04
    ld b, $f1                                     ; $69aa: $06 $f1
    ld b, $f9                                     ; $69ac: $06 $f9
    ld b, $01                                     ; $69ae: $06 $01
    inc d                                         ; $69b0: $14
    rlca                                          ; $69b1: $07
    ld d, $f2                                     ; $69b2: $16 $f2
    ld d, $fa                                     ; $69b4: $16 $fa
    ld d, $ff                                     ; $69b6: $16 $ff
    ld [bc], a                                    ; $69b8: $02
    ld bc, $0302                                  ; $69b9: $01 $02 $03
    add e                                         ; $69bc: $83
    dec b                                         ; $69bd: $05
    ld b, $07                                     ; $69be: $06 $07
    ld [bc], a                                    ; $69c0: $02
    dec b                                         ; $69c1: $05
    add c                                         ; $69c2: $81
    ld b, $02                                     ; $69c3: $06 $02
    inc bc                                        ; $69c5: $03
    sub h                                         ; $69c6: $94
    ld [bc], a                                    ; $69c7: $02
    inc bc                                        ; $69c8: $03
    dec c                                         ; $69c9: $0d
    ld c, $3b                                     ; $69ca: $0e $3b
    inc a                                         ; $69cc: $3c
    ld a, a                                       ; $69cd: $7f
    ld a, h                                       ; $69ce: $7c
    ld e, l                                       ; $69cf: $5d
    ld a, [hl]                                    ; $69d0: $7e
    xor d                                         ; $69d1: $aa
    rst $18                                       ; $69d2: $df
    rst $38                                       ; $69d3: $ff
    adc [hl]                                      ; $69d4: $8e
    ld a, a                                       ; $69d5: $7f
    adc [hl]                                      ; $69d6: $8e
    rst $28                                       ; $69d7: $ef
    ld e, $7d                                     ; $69d8: $1e $7d
    sbc a                                         ; $69da: $9f
    ld [bc], a                                    ; $69db: $02
    jr z, jr_0ef_69e0                             ; $69dc: $28 $02

    ld [hl], b                                    ; $69de: $70
    sub d                                         ; $69df: $92

jr_0ef_69e0:
    ld hl, sp-$78                                 ; $69e0: $f8 $88
    inc d                                         ; $69e2: $14
    db $ec                                        ; $69e3: $ec
    ld l, h                                       ; $69e4: $6c
    cp h                                          ; $69e5: $bc
    cp $82                                        ; $69e6: $fe $82
    ld a, h                                       ; $69e8: $7c
    add h                                         ; $69e9: $84
    ld e, [hl]                                    ; $69ea: $5e
    cp [hl]                                       ; $69eb: $be
    xor $b2                                       ; $69ec: $ee $b2
    ld l, [hl]                                    ; $69ee: $6e
    sbc [hl]                                      ; $69ef: $9e
    ld a, d                                       ; $69f0: $7a
    add $02                                       ; $69f1: $c6 $02
    db $fc                                        ; $69f3: $fc
    adc b                                         ; $69f4: $88
    ld [hl-], a                                   ; $69f5: $32
    cp $59                                        ; $69f6: $fe $59
    rst $20                                       ; $69f8: $e7
    or c                                          ; $69f9: $b1
    rst $38                                       ; $69fa: $ff
    ld [$021f], a                                 ; $69fb: $ea $1f $02
    jr nz, jr_0ef_6a02                            ; $69fe: $20 $02

    jr nc, jr_0ef_699e                            ; $6a00: $30 $9c

jr_0ef_6a02:
    jr c, jr_0ef_6a2c                             ; $6a02: $38 $28

    ret c                                         ; $6a04: $d8

    jr c, @-$06                                   ; $6a05: $38 $f8

    jr jr_0ef_6a35                                ; $6a07: $18 $2c

    call c, $f47c                                 ; $6a09: $dc $7c $f4
    inc d                                         ; $6a0c: $14
    db $fc                                        ; $6a0d: $fc
    call z, $fc3c                                 ; $6a0e: $cc $3c $fc
    inc c                                         ; $6a11: $0c
    or $0e                                        ; $6a12: $f6 $0e
    cp $06                                        ; $6a14: $fe $06
    cp $06                                        ; $6a16: $fe $06
    ld l, [hl]                                    ; $6a18: $6e
    sub [hl]                                      ; $6a19: $96
    ld l, a                                       ; $6a1a: $6f
    sub l                                         ; $6a1b: $95
    rst $38                                       ; $6a1c: $ff
    dec b                                         ; $6a1d: $05
    ld b, $04                                     ; $6a1e: $06 $04
    add l                                         ; $6a20: $85
    rlca                                          ; $6a21: $07
    ld b, $07                                     ; $6a22: $06 $07
    ld b, $05                                     ; $6a24: $06 $05
    ld [bc], a                                    ; $6a26: $02
    rlca                                          ; $6a27: $07
    cp $04                                        ; $6a28: $fe $04
    dec bc                                        ; $6a2a: $0b
    inc c                                         ; $6a2b: $0c

jr_0ef_6a2c:
    dec c                                         ; $6a2c: $0d
    ld c, $0b                                     ; $6a2d: $0e $0b
    ld c, $0f                                     ; $6a2f: $0e $0f
    ld c, $05                                     ; $6a31: $0e $05
    ld b, $47                                     ; $6a33: $06 $47

jr_0ef_6a35:
    ld b, [hl]                                    ; $6a35: $46

jr_0ef_6a36:
    and l                                         ; $6a36: $a5
    and $d7                                       ; $6a37: $e6 $d7
    db $f4                                        ; $6a39: $f4
    ld c, a                                       ; $6a3a: $4f
    ld a, l                                       ; $6a3b: $7d

Call_0ef_6a3c:
    inc bc                                        ; $6a3c: $03
    nop                                           ; $6a3d: $00
    inc bc                                        ; $6a3e: $03
    nop                                           ; $6a3f: $00
    inc bc                                        ; $6a40: $03
    nop                                           ; $6a41: $00
    ccf                                           ; $6a42: $3f
    rst $38                                       ; $6a43: $ff
    cp a                                          ; $6a44: $bf
    ld a, a                                       ; $6a45: $7f
    cp $3f                                        ; $6a46: $fe $3f
    push af                                       ; $6a48: $f5
    ld a, $bd                                     ; $6a49: $3e $bd
    ld a, [hl]                                    ; $6a4b: $7e
    rst $38                                       ; $6a4c: $ff
    ld a, h                                       ; $6a4d: $7c
    ld l, e                                       ; $6a4e: $6b
    db $fc                                        ; $6a4f: $fc
    or e                                          ; $6a50: $b3
    ld a, h                                       ; $6a51: $7c
    db $d3                                        ; $6a52: $d3
    inc a                                         ; $6a53: $3c
    pop de                                        ; $6a54: $d1
    ld a, $fb                                     ; $6a55: $3e $fb
    ld e, $ec                                     ; $6a57: $1e $ec
    rra                                           ; $6a59: $1f
    db $ec                                        ; $6a5a: $ec
    rra                                           ; $6a5b: $1f
    ldh [rNR10], a                                ; $6a5c: $e0 $10
    ldh a, [rNR10]                                ; $6a5e: $f0 $10
    nop                                           ; $6a60: $00
    ldh a, [$e0]                                  ; $6a61: $f0 $e0
    ldh a, [rNR10]                                ; $6a63: $f0 $10
    ldh a, [rSVBK]                                ; $6a65: $f0 $70
    add b                                         ; $6a67: $80
    or b                                          ; $6a68: $b0

jr_0ef_6a69:
    ld b, b                                       ; $6a69: $40
    ld [hl], b                                    ; $6a6a: $70
    add b                                         ; $6a6b: $80
    ldh a, [rP1]                                  ; $6a6c: $f0 $00
    ldh a, [rP1]                                  ; $6a6e: $f0 $00
    ldh a, [rP1]                                  ; $6a70: $f0 $00
    jr nc, @-$3e                                  ; $6a72: $30 $c0

    jr nc, jr_0ef_6a36                            ; $6a74: $30 $c0

    rst $28                                       ; $6a76: $ef

jr_0ef_6a77:
    jr jr_0ef_6a77                                ; $6a77: $18 $fe

    add hl, de                                    ; $6a79: $19
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    ld c, $1a                                     ; $6a7c: $0e $1a
    ld e, $1a                                     ; $6a7e: $1e $1a
    dec de                                        ; $6a80: $1b
    rra                                           ; $6a81: $1f
    ld a, l                                       ; $6a82: $7d
    ei                                            ; $6a83: $fb
    rst $38                                       ; $6a84: $ff
    ei                                            ; $6a85: $fb
    rst $30                                       ; $6a86: $f7
    ld sp, hl                                     ; $6a87: $f9
    rst $38                                       ; $6a88: $ff
    push af                                       ; $6a89: $f5
    ei                                            ; $6a8a: $fb
    db $fd                                        ; $6a8b: $fd
    adc $fa                                       ; $6a8c: $ce $fa
    sub $fa                                       ; $6a8e: $d6 $fa
    call c, $d4fc                                 ; $6a90: $dc $fc $d4
    db $ec                                        ; $6a93: $ec
    sbc h                                         ; $6a94: $9c
    db $e4                                        ; $6a95: $e4
    cp h                                          ; $6a96: $bc
    call nc, $ecb4                                ; $6a97: $d4 $b4 $ec
    ld a, b                                       ; $6a9a: $78
    cp b                                          ; $6a9b: $b8
    rst $10                                       ; $6a9c: $d7
    ld sp, hl                                     ; $6a9d: $f9
    rst $18                                       ; $6a9e: $df
    ld hl, sp-$15                                 ; $6a9f: $f8 $eb
    cp $69                                        ; $6aa1: $fe $69
    ld a, [hl]                                    ; $6aa3: $7e
    dec a                                         ; $6aa4: $3d
    ccf                                           ; $6aa5: $3f
    inc d                                         ; $6aa6: $14
    adc h                                         ; $6aa7: $8c
    rra                                           ; $6aa8: $1f
    rla                                           ; $6aa9: $17
    rra                                           ; $6aaa: $1f
    inc c                                         ; $6aab: $0c
    rrca                                          ; $6aac: $0f
    dec c                                         ; $6aad: $0d
    ld c, $07                                     ; $6aae: $0e $07
    dec b                                         ; $6ab0: $05
    ld b, $07                                     ; $6ab1: $06 $07
    ld b, $03                                     ; $6ab3: $06 $03
    rlca                                          ; $6ab5: $07
    and a                                         ; $6ab6: $a7
    inc b                                         ; $6ab7: $04
    rlca                                          ; $6ab8: $07
    rrca                                          ; $6ab9: $0f
    inc c                                         ; $6aba: $0c
    dec bc                                        ; $6abb: $0b
    ld c, $fb                                     ; $6abc: $0e $fb
    ccf                                           ; $6abe: $3f
    rst $18                                       ; $6abf: $df
    ccf                                           ; $6ac0: $3f
    rst $18                                       ; $6ac1: $df
    ccf                                           ; $6ac2: $3f
    rst $18                                       ; $6ac3: $df
    cp a                                          ; $6ac4: $bf
    rst $38                                       ; $6ac5: $ff
    rra                                           ; $6ac6: $1f
    rst $38                                       ; $6ac7: $ff
    sbc a                                         ; $6ac8: $9f
    rst $30                                       ; $6ac9: $f7
    rra                                           ; $6aca: $1f
    rst $38                                       ; $6acb: $ff
    adc a                                         ; $6acc: $8f
    rst $30                                       ; $6acd: $f7
    rra                                           ; $6ace: $1f
    rst $18                                       ; $6acf: $df
    ccf                                           ; $6ad0: $3f
    rst $30                                       ; $6ad1: $f7
    ccf                                           ; $6ad2: $3f
    db $e3                                        ; $6ad3: $e3
    cp a                                          ; $6ad4: $bf
    pop hl                                        ; $6ad5: $e1
    rst $38                                       ; $6ad6: $ff
    ret nc                                        ; $6ad7: $d0

    rst $38                                       ; $6ad8: $ff
    ld [hl], b                                    ; $6ad9: $70
    rst $38                                       ; $6ada: $ff
    or h                                          ; $6adb: $b4
    ld a, a                                       ; $6adc: $7f
    jr nz, @+$19                                  ; $6add: $20 $17

    ldh [rSC], a                                  ; $6adf: $e0 $02
    jr nz, jr_0ef_6a69                            ; $6ae1: $20 $86

    ei                                            ; $6ae3: $fb
    db $fd                                        ; $6ae4: $fd
    sbc [hl]                                      ; $6ae5: $9e
    rst $38                                       ; $6ae6: $ff
    ld a, l                                       ; $6ae7: $7d
    ld a, [$2004]                                 ; $6ae8: $fa $04 $20
    sub [hl]                                      ; $6aeb: $96
    and b                                         ; $6aec: $a0
    ld h, b                                       ; $6aed: $60
    ld [hl], b                                    ; $6aee: $70
    ret nc                                        ; $6aef: $d0

    sub b                                         ; $6af0: $90
    ldh a, [rBCPS]                                ; $6af1: $f0 $68
    ld hl, sp+$38                                 ; $6af3: $f8 $38
    ld hl, sp+$16                                 ; $6af5: $f8 $16
    cp $19                                        ; $6af7: $fe $19
    rst $38                                       ; $6af9: $ff
    rrca                                          ; $6afa: $0f
    ei                                            ; $6afb: $fb
    adc [hl]                                      ; $6afc: $8e
    cp $58                                        ; $6afd: $fe $58
    ld hl, sp+$30                                 ; $6aff: $f8 $30
    ldh a, [rSC]                                  ; $6b01: $f0 $02
    ret nz                                        ; $6b03: $c0

    inc b                                         ; $6b04: $04
    nop                                           ; $6b05: $00
    sub [hl]                                      ; $6b06: $96
    inc de                                        ; $6b07: $13
    dec e                                         ; $6b08: $1d
    inc [hl]                                      ; $6b09: $34
    dec sp                                        ; $6b0a: $3b
    ld a, [hl-]                                   ; $6b0b: $3a
    daa                                           ; $6b0c: $27
    ld e, e                                       ; $6b0d: $5b
    ld l, h                                       ; $6b0e: $6c
    ld a, [hl+]                                   ; $6b0f: $2a
    dec [hl]                                      ; $6b10: $35
    ld d, l                                       ; $6b11: $55
    ld a, a                                       ; $6b12: $7f
    ld l, b                                       ; $6b13: $68
    ld d, a                                       ; $6b14: $57
    and [hl]                                      ; $6b15: $a6
    ei                                            ; $6b16: $fb
    ld e, a                                       ; $6b17: $5f
    ld a, a                                       ; $6b18: $7f
    ld [hl], l                                    ; $6b19: $75
    ld l, [hl]                                    ; $6b1a: $6e
    ld e, a                                       ; $6b1b: $5f
    ld h, [hl]                                    ; $6b1c: $66
    ld [bc], a                                    ; $6b1d: $02
    add hl, sp                                    ; $6b1e: $39
    ld [$9300], sp                                ; $6b1f: $08 $00 $93
    db $f4                                        ; $6b22: $f4
    rst $38                                       ; $6b23: $ff
    ld a, d                                       ; $6b24: $7a
    rst $38                                       ; $6b25: $ff
    ld l, l                                       ; $6b26: $6d
    rst $28                                       ; $6b27: $ef
    and [hl]                                      ; $6b28: $a6
    rst $20                                       ; $6b29: $e7
    and [hl]                                      ; $6b2a: $a6
    rst $20                                       ; $6b2b: $e7
    ld d, e                                       ; $6b2c: $53
    or e                                          ; $6b2d: $b3
    and c                                         ; $6b2e: $a1
    ld h, c                                       ; $6b2f: $61
    ld d, c                                       ; $6b30: $51
    pop af                                        ; $6b31: $f1
    and b                                         ; $6b32: $a0
    ldh [$60], a                                  ; $6b33: $e0 $60
    ld [bc], a                                    ; $6b35: $02
    ldh [$81], a                                  ; $6b36: $e0 $81
    ld h, b                                       ; $6b38: $60
    ld [bc], a                                    ; $6b39: $02
    ret nz                                        ; $6b3a: $c0

    ld [$9800], sp                                ; $6b3b: $08 $00 $98
    ld [bc], a                                    ; $6b3e: $02
    rra                                           ; $6b3f: $1f
    ld bc, $011f                                  ; $6b40: $01 $1f $01
    rra                                           ; $6b43: $1f
    db $10                                        ; $6b44: $10
    rra                                           ; $6b45: $1f
    db $10                                        ; $6b46: $10
    rra                                           ; $6b47: $1f
    ld [$161f], sp                                ; $6b48: $08 $1f $16
    rra                                           ; $6b4b: $1f
    dec bc                                        ; $6b4c: $0b
    rra                                           ; $6b4d: $1f
    inc d                                         ; $6b4e: $14
    rra                                           ; $6b4f: $1f
    ld a, [bc]                                    ; $6b50: $0a
    rrca                                          ; $6b51: $0f
    dec bc                                        ; $6b52: $0b
    rrca                                          ; $6b53: $0f
    dec b                                         ; $6b54: $05
    rlca                                          ; $6b55: $07
    ld [bc], a                                    ; $6b56: $02
    inc bc                                        ; $6b57: $03
    ld b, $00                                     ; $6b58: $06 $00
    rst $38                                       ; $6b5a: $ff
    ld hl, $ed0e                                  ; $6b5b: $21 $0e $ed
    dec l                                         ; $6b5e: $2d
    call nc, $e923                                ; $6b5f: $d4 $23 $e9
    push af                                       ; $6b62: $f5

jr_0ef_6b63:
    and $fd                                       ; $6b63: $e6 $fd
    di                                            ; $6b65: $f3
    inc bc                                        ; $6b66: $03
    or $ef                                        ; $6b67: $f6 $ef
    or $f7                                        ; $6b69: $f6 $f7
    or $ff                                        ; $6b6b: $f6 $ff
    inc bc                                        ; $6b6d: $03
    inc b                                         ; $6b6e: $04
    ld b, $f1                                     ; $6b6f: $06 $f1
    ld b, $f9                                     ; $6b71: $06 $f9
    ld b, $01                                     ; $6b73: $06 $01
    inc d                                         ; $6b75: $14
    rlca                                          ; $6b76: $07
    ld d, $f2                                     ; $6b77: $16 $f2
    ld d, $fa                                     ; $6b79: $16 $fa
    ld d, $ff                                     ; $6b7b: $16 $ff
    ld [bc], a                                    ; $6b7d: $02
    ld bc, $0302                                  ; $6b7e: $01 $02 $03
    add e                                         ; $6b81: $83
    dec b                                         ; $6b82: $05
    ld b, $07                                     ; $6b83: $06 $07
    ld [bc], a                                    ; $6b85: $02
    dec b                                         ; $6b86: $05
    add c                                         ; $6b87: $81
    ld b, $02                                     ; $6b88: $06 $02
    inc bc                                        ; $6b8a: $03
    sub h                                         ; $6b8b: $94
    ld [bc], a                                    ; $6b8c: $02
    inc bc                                        ; $6b8d: $03
    dec c                                         ; $6b8e: $0d
    ld c, $1f                                     ; $6b8f: $0e $1f
    inc e                                         ; $6b91: $1c
    ld a, a                                       ; $6b92: $7f
    ld a, h                                       ; $6b93: $7c
    ld a, a                                       ; $6b94: $7f
    ld a, [hl]                                    ; $6b95: $7e
    sbc d                                         ; $6b96: $9a
    rst $28                                       ; $6b97: $ef
    rst $38                                       ; $6b98: $ff
    adc [hl]                                      ; $6b99: $8e
    ld a, a                                       ; $6b9a: $7f
    adc [hl]                                      ; $6b9b: $8e
    rst $28                                       ; $6b9c: $ef
    rra                                           ; $6b9d: $1f
    ld a, l                                       ; $6b9e: $7d
    sbc a                                         ; $6b9f: $9f
    ld [bc], a                                    ; $6ba0: $02
    jr z, jr_0ef_6ba5                             ; $6ba1: $28 $02

    ld [hl], b                                    ; $6ba3: $70
    sub d                                         ; $6ba4: $92

jr_0ef_6ba5:
    ld hl, sp-$78                                 ; $6ba5: $f8 $88
    inc d                                         ; $6ba7: $14
    db $ec                                        ; $6ba8: $ec
    ld l, h                                       ; $6ba9: $6c
    cp h                                          ; $6baa: $bc
    cp $82                                        ; $6bab: $fe $82
    ld a, h                                       ; $6bad: $7c
    add h                                         ; $6bae: $84
    ld e, [hl]                                    ; $6baf: $5e
    cp [hl]                                       ; $6bb0: $be
    xor $b2                                       ; $6bb1: $ee $b2
    ld l, [hl]                                    ; $6bb3: $6e
    sbc [hl]                                      ; $6bb4: $9e
    ld a, d                                       ; $6bb5: $7a
    add $02                                       ; $6bb6: $c6 $02
    db $fc                                        ; $6bb8: $fc
    adc b                                         ; $6bb9: $88
    or e                                          ; $6bba: $b3
    ld a, a                                       ; $6bbb: $7f
    ld e, c                                       ; $6bbc: $59
    rst $20                                       ; $6bbd: $e7
    or e                                          ; $6bbe: $b3
    rst $38                                       ; $6bbf: $ff
    ld c, d                                       ; $6bc0: $4a
    cp a                                          ; $6bc1: $bf
    ld [bc], a                                    ; $6bc2: $02
    jr nz, jr_0ef_6bc7                            ; $6bc3: $20 $02

    jr nc, jr_0ef_6b63                            ; $6bc5: $30 $9c

jr_0ef_6bc7:
    jr c, jr_0ef_6bf1                             ; $6bc7: $38 $28

    ret c                                         ; $6bc9: $d8

    jr c, @-$06                                   ; $6bca: $38 $f8

    jr jr_0ef_6c36                                ; $6bcc: $18 $68

    sbc b                                         ; $6bce: $98
    db $fc                                        ; $6bcf: $fc
    db $f4                                        ; $6bd0: $f4
    inc [hl]                                      ; $6bd1: $34
    db $fc                                        ; $6bd2: $fc
    call nc, $ec3c                                ; $6bd3: $d4 $3c $ec
    inc e                                         ; $6bd6: $1c
    or $0e                                        ; $6bd7: $f6 $0e
    or $0e                                        ; $6bd9: $f6 $0e
    cp $06                                        ; $6bdb: $fe $06
    ld e, [hl]                                    ; $6bdd: $5e
    and [hl]                                      ; $6bde: $a6
    rst $28                                       ; $6bdf: $ef
    sub l                                         ; $6be0: $95
    ld a, l                                       ; $6be1: $7d
    add a                                         ; $6be2: $87
    ld b, $04                                     ; $6be3: $06 $04
    add l                                         ; $6be5: $85
    dec b                                         ; $6be6: $05
    ld b, $07                                     ; $6be7: $06 $07
    ld b, $04                                     ; $6be9: $06 $04
    ld [bc], a                                    ; $6beb: $02
    rlca                                          ; $6bec: $07
    cp [hl]                                       ; $6bed: $be
    dec b                                         ; $6bee: $05
    dec bc                                        ; $6bef: $0b
    inc c                                         ; $6bf0: $0c

jr_0ef_6bf1:
    dec c                                         ; $6bf1: $0d
    ld c, $0b                                     ; $6bf2: $0e $0b
    ld c, $0b                                     ; $6bf4: $0e $0b
    ld c, $05                                     ; $6bf6: $0e $05
    ld b, $46                                     ; $6bf8: $06 $46

jr_0ef_6bfa:
    ld b, a                                       ; $6bfa: $47
    and l                                         ; $6bfb: $a5
    and $f5                                       ; $6bfc: $e6 $f5
    or $4f                                        ; $6bfe: $f6 $4f
    ld a, h                                       ; $6c00: $7c
    inc bc                                        ; $6c01: $03
    nop                                           ; $6c02: $00
    inc bc                                        ; $6c03: $03
    nop                                           ; $6c04: $00
    inc bc                                        ; $6c05: $03
    nop                                           ; $6c06: $00
    ld a, h                                       ; $6c07: $7c
    rst $38                                       ; $6c08: $ff
    cp a                                          ; $6c09: $bf
    ld a, a                                       ; $6c0a: $7f
    cp $3f                                        ; $6c0b: $fe $3f
    rst $30                                       ; $6c0d: $f7
    ld a, $bd                                     ; $6c0e: $3e $bd
    ld a, [hl]                                    ; $6c10: $7e
    db $fd                                        ; $6c11: $fd
    ld a, [hl]                                    ; $6c12: $7e
    ld l, e                                       ; $6c13: $6b
    db $fc                                        ; $6c14: $fc
    or e                                          ; $6c15: $b3
    ld a, h                                       ; $6c16: $7c
    db $d3                                        ; $6c17: $d3
    inc a                                         ; $6c18: $3c
    pop de                                        ; $6c19: $d1
    ld a, $ea                                     ; $6c1a: $3e $ea
    rra                                           ; $6c1c: $1f
    db $ec                                        ; $6c1d: $ec
    rra                                           ; $6c1e: $1f
    db $fc                                        ; $6c1f: $fc
    adc a                                         ; $6c20: $8f
    ldh [rNR10], a                                ; $6c21: $e0 $10
    ldh a, [rNR10]                                ; $6c23: $f0 $10
    add b                                         ; $6c25: $80
    ld [hl], b                                    ; $6c26: $70
    ld h, b                                       ; $6c27: $60
    ldh a, [$90]                                  ; $6c28: $f0 $90
    ldh a, [rSVBK]                                ; $6c2a: $f0 $70
    ld [bc], a                                    ; $6c2c: $02
    sub b                                         ; $6c2d: $90

jr_0ef_6c2e:
    jp z, $b060                                   ; $6c2e: $ca $60 $b0

    ld b, b                                       ; $6c31: $40
    ldh a, [rP1]                                  ; $6c32: $f0 $00
    ldh a, [rP1]                                  ; $6c34: $f0 $00

jr_0ef_6c36:
    ldh a, [rP1]                                  ; $6c36: $f0 $00
    jr nc, jr_0ef_6bfa                            ; $6c38: $30 $c0

    or b                                          ; $6c3a: $b0
    ld b, b                                       ; $6c3b: $40
    rst $38                                       ; $6c3c: $ff
    jr @+$80                                      ; $6c3d: $18 $7e

    sbc c                                         ; $6c3f: $99
    nop                                           ; $6c40: $00
    rst $38                                       ; $6c41: $ff
    ld c, $1a                                     ; $6c42: $0e $1a
    ld e, $1a                                     ; $6c44: $1e $1a
    rla                                           ; $6c46: $17
    rra                                           ; $6c47: $1f
    ld a, l                                       ; $6c48: $7d
    ei                                            ; $6c49: $fb
    rst $38                                       ; $6c4a: $ff
    ei                                            ; $6c4b: $fb
    rst $30                                       ; $6c4c: $f7
    ld sp, hl                                     ; $6c4d: $f9
    rst $38                                       ; $6c4e: $ff
    push af                                       ; $6c4f: $f5
    rst $10                                       ; $6c50: $d7
    db $fd                                        ; $6c51: $fd
    adc $fa                                       ; $6c52: $ce $fa
    sub $fa                                       ; $6c54: $d6 $fa
    call c, $dcf4                                 ; $6c56: $dc $f4 $dc
    db $ec                                        ; $6c59: $ec
    sbc h                                         ; $6c5a: $9c
    db $e4                                        ; $6c5b: $e4
    cp h                                          ; $6c5c: $bc
    call nc, $ecb4                                ; $6c5d: $d4 $b4 $ec
    ld a, b                                       ; $6c60: $78
    cp b                                          ; $6c61: $b8
    sub a                                         ; $6c62: $97
    ld hl, sp-$21                                 ; $6c63: $f8 $df
    ld sp, hl                                     ; $6c65: $f9
    db $eb                                        ; $6c66: $eb
    db $fc                                        ; $6c67: $fc
    ld l, e                                       ; $6c68: $6b
    ld a, [hl]                                    ; $6c69: $7e
    dec a                                         ; $6c6a: $3d
    ccf                                           ; $6c6b: $3f
    inc [hl]                                      ; $6c6c: $34
    ccf                                           ; $6c6d: $3f
    rla                                           ; $6c6e: $17
    rra                                           ; $6c6f: $1f
    inc c                                         ; $6c70: $0c
    rrca                                          ; $6c71: $0f
    dec c                                         ; $6c72: $0d
    ld c, $07                                     ; $6c73: $0e $07
    dec b                                         ; $6c75: $05
    ld b, $07                                     ; $6c76: $06 $07
    ld b, $03                                     ; $6c78: $06 $03
    rlca                                          ; $6c7a: $07
    and a                                         ; $6c7b: $a7
    inc b                                         ; $6c7c: $04
    rlca                                          ; $6c7d: $07
    rrca                                          ; $6c7e: $0f
    inc c                                         ; $6c7f: $0c
    dec bc                                        ; $6c80: $0b
    ld c, $db                                     ; $6c81: $0e $db
    ccf                                           ; $6c83: $3f
    rst $18                                       ; $6c84: $df
    ccf                                           ; $6c85: $3f
    rst $38                                       ; $6c86: $ff
    rra                                           ; $6c87: $1f
    rst $38                                       ; $6c88: $ff
    sbc a                                         ; $6c89: $9f
    rst $38                                       ; $6c8a: $ff
    rra                                           ; $6c8b: $1f
    rst $30                                       ; $6c8c: $f7
    ld e, a                                       ; $6c8d: $5f
    rst $30                                       ; $6c8e: $f7
    rra                                           ; $6c8f: $1f
    rst $38                                       ; $6c90: $ff
    adc a                                         ; $6c91: $8f
    rst $20                                       ; $6c92: $e7
    rra                                           ; $6c93: $1f
    rst $18                                       ; $6c94: $df
    ccf                                           ; $6c95: $3f
    rst $30                                       ; $6c96: $f7
    ccf                                           ; $6c97: $3f
    db $e3                                        ; $6c98: $e3
    cp a                                          ; $6c99: $bf
    and c                                         ; $6c9a: $a1
    rst $38                                       ; $6c9b: $ff
    ret nc                                        ; $6c9c: $d0

    rst $38                                       ; $6c9d: $ff
    ld [hl], b                                    ; $6c9e: $70
    rst $38                                       ; $6c9f: $ff
    cp b                                          ; $6ca0: $b8
    ld a, a                                       ; $6ca1: $7f
    jr nz, @+$19                                  ; $6ca2: $20 $17

    ldh [rSC], a                                  ; $6ca4: $e0 $02
    jr nz, jr_0ef_6c2e                            ; $6ca6: $20 $86

    ei                                            ; $6ca8: $fb
    db $fd                                        ; $6ca9: $fd
    adc [hl]                                      ; $6caa: $8e
    rst $38                                       ; $6cab: $ff
    dec a                                         ; $6cac: $3d
    ld a, [$2004]                                 ; $6cad: $fa $04 $20
    sub [hl]                                      ; $6cb0: $96
    and b                                         ; $6cb1: $a0
    ld h, b                                       ; $6cb2: $60
    ld [hl], b                                    ; $6cb3: $70
    ret nc                                        ; $6cb4: $d0

    sub b                                         ; $6cb5: $90
    ldh a, [rBCPS]                                ; $6cb6: $f0 $68
    ld hl, sp+$38                                 ; $6cb8: $f8 $38
    ld hl, sp+$16                                 ; $6cba: $f8 $16
    cp $19                                        ; $6cbc: $fe $19
    rst $38                                       ; $6cbe: $ff
    rrca                                          ; $6cbf: $0f
    ei                                            ; $6cc0: $fb
    adc [hl]                                      ; $6cc1: $8e
    cp $78                                        ; $6cc2: $fe $78
    ld hl, sp+$30                                 ; $6cc4: $f8 $30
    ldh a, [rSC]                                  ; $6cc6: $f0 $02
    ret nz                                        ; $6cc8: $c0

    ld [bc], a                                    ; $6cc9: $02
    add b                                         ; $6cca: $80
    ld [bc], a                                    ; $6ccb: $02
    nop                                           ; $6ccc: $00
    sub [hl]                                      ; $6ccd: $96
    inc de                                        ; $6cce: $13
    dec e                                         ; $6ccf: $1d
    inc [hl]                                      ; $6cd0: $34
    dec sp                                        ; $6cd1: $3b
    ld a, [hl-]                                   ; $6cd2: $3a
    daa                                           ; $6cd3: $27
    ld e, e                                       ; $6cd4: $5b
    ld l, h                                       ; $6cd5: $6c
    ld a, [hl+]                                   ; $6cd6: $2a
    dec [hl]                                      ; $6cd7: $35
    ld d, l                                       ; $6cd8: $55
    ld a, a                                       ; $6cd9: $7f
    ld l, b                                       ; $6cda: $68
    ld d, a                                       ; $6cdb: $57
    and [hl]                                      ; $6cdc: $a6
    ei                                            ; $6cdd: $fb
    ld e, a                                       ; $6cde: $5f
    ld a, a                                       ; $6cdf: $7f
    ld [hl], l                                    ; $6ce0: $75
    ld l, [hl]                                    ; $6ce1: $6e
    ld e, a                                       ; $6ce2: $5f
    ld h, [hl]                                    ; $6ce3: $66
    ld [bc], a                                    ; $6ce4: $02
    add hl, sp                                    ; $6ce5: $39
    ld [$9300], sp                                ; $6ce6: $08 $00 $93
    db $f4                                        ; $6ce9: $f4
    rst $38                                       ; $6cea: $ff
    ld a, d                                       ; $6ceb: $7a
    rst $38                                       ; $6cec: $ff
    ld l, l                                       ; $6ced: $6d
    rst $28                                       ; $6cee: $ef
    and [hl]                                      ; $6cef: $a6
    rst $20                                       ; $6cf0: $e7
    and [hl]                                      ; $6cf1: $a6
    rst $20                                       ; $6cf2: $e7
    ld d, e                                       ; $6cf3: $53
    or e                                          ; $6cf4: $b3
    and c                                         ; $6cf5: $a1
    ld h, c                                       ; $6cf6: $61
    ld d, c                                       ; $6cf7: $51
    pop af                                        ; $6cf8: $f1
    and b                                         ; $6cf9: $a0
    ldh [$60], a                                  ; $6cfa: $e0 $60
    ld [bc], a                                    ; $6cfc: $02
    ldh [$81], a                                  ; $6cfd: $e0 $81
    ld h, b                                       ; $6cff: $60
    ld [bc], a                                    ; $6d00: $02
    ret nz                                        ; $6d01: $c0

    ld [$9800], sp                                ; $6d02: $08 $00 $98
    ld [bc], a                                    ; $6d05: $02
    rra                                           ; $6d06: $1f
    ld bc, $001f                                  ; $6d07: $01 $1f $00
    rra                                           ; $6d0a: $1f
    db $10                                        ; $6d0b: $10
    rra                                           ; $6d0c: $1f
    db $10                                        ; $6d0d: $10
    rra                                           ; $6d0e: $1f
    ld [$161f], sp                                ; $6d0f: $08 $1f $16
    rra                                           ; $6d12: $1f
    dec bc                                        ; $6d13: $0b
    rra                                           ; $6d14: $1f
    inc d                                         ; $6d15: $14
    rra                                           ; $6d16: $1f
    ld a, [bc]                                    ; $6d17: $0a
    rrca                                          ; $6d18: $0f
    add hl, bc                                    ; $6d19: $09
    rrca                                          ; $6d1a: $0f
    inc b                                         ; $6d1b: $04
    rlca                                          ; $6d1c: $07
    ld [bc], a                                    ; $6d1d: $02
    inc bc                                        ; $6d1e: $03
    ld b, $00                                     ; $6d1f: $06 $00
    rst $38                                       ; $6d21: $ff
    ld hl, $ed0e                                  ; $6d22: $21 $0e $ed
    dec l                                         ; $6d25: $2d
    call nc, $ea23                                ; $6d26: $d4 $23 $ea

jr_0ef_6d29:
    push af                                       ; $6d29: $f5
    and $fd                                       ; $6d2a: $e6 $fd
    di                                            ; $6d2c: $f3
    inc bc                                        ; $6d2d: $03
    or $ef                                        ; $6d2e: $f6 $ef
    or $f7                                        ; $6d30: $f6 $f7
    or $ff                                        ; $6d32: $f6 $ff
    inc bc                                        ; $6d34: $03
    inc b                                         ; $6d35: $04
    ld b, $f0                                     ; $6d36: $06 $f0
    ld b, $f8                                     ; $6d38: $06 $f8
    ld b, $00                                     ; $6d3a: $06 $00
    inc de                                        ; $6d3c: $13
    rlca                                          ; $6d3d: $07
    ld d, $f2                                     ; $6d3e: $16 $f2
    ld d, $fa                                     ; $6d40: $16 $fa
    ld d, $ff                                     ; $6d42: $16 $ff
    ld [bc], a                                    ; $6d44: $02
    ld bc, $0383                                  ; $6d45: $01 $83 $03
    ld [bc], a                                    ; $6d48: $02
    inc bc                                        ; $6d49: $03
    ld [bc], a                                    ; $6d4a: $02
    ld [bc], a                                    ; $6d4b: $02
    add c                                         ; $6d4c: $81
    inc bc                                        ; $6d4d: $03
    ld [bc], a                                    ; $6d4e: $02
    ld bc, $0696                                  ; $6d4f: $01 $96 $06
    rlca                                          ; $6d52: $07
    ld c, $0f                                     ; $6d53: $0e $0f
    rra                                           ; $6d55: $1f
    inc e                                         ; $6d56: $1c
    ccf                                           ; $6d57: $3f
    inc a                                         ; $6d58: $3c
    ld a, a                                       ; $6d59: $7f
    ld a, [hl]                                    ; $6d5a: $7e
    sbc $ef                                       ; $6d5b: $de $ef
    cp e                                          ; $6d5d: $bb
    adc $7f                                       ; $6d5e: $ce $7f
    adc [hl]                                      ; $6d60: $8e
    rst $28                                       ; $6d61: $ef
    ld e, $7f                                     ; $6d62: $1e $7f
    sbc a                                         ; $6d64: $9f
    dec e                                         ; $6d65: $1d
    rst $38                                       ; $6d66: $ff
    ld [bc], a                                    ; $6d67: $02
    jr jr_0ef_6d6c                                ; $6d68: $18 $02

    jr c, @-$62                                   ; $6d6a: $38 $9c

jr_0ef_6d6c:
    ld a, h                                       ; $6d6c: $7c
    ld b, h                                       ; $6d6d: $44
    adc d                                         ; $6d6e: $8a
    or $b6                                        ; $6d6f: $f6 $b6
    sbc $ff                                       ; $6d71: $de $ff
    ld b, c                                       ; $6d73: $41
    cp [hl]                                       ; $6d74: $be
    jp nz, Jump_0ef_5eae                          ; $6d75: $c2 $ae $5e

    rst $30                                       ; $6d78: $f7
    reti                                          ; $6d79: $d9


    ld [hl], $ce                                  ; $6d7a: $36 $ce
    cp $42                                        ; $6d7c: $fe $42
    cp h                                          ; $6d7e: $bc
    db $fc                                        ; $6d7f: $fc
    sbc e                                         ; $6d80: $9b
    ld a, a                                       ; $6d81: $7f
    ld e, c                                       ; $6d82: $59
    rst $20                                       ; $6d83: $e7
    ld sp, $8aff                                  ; $6d84: $31 $ff $8a
    rst $38                                       ; $6d87: $ff
    ld [bc], a                                    ; $6d88: $02
    jr nz, jr_0ef_6d8d                            ; $6d89: $20 $02

    jr nc, jr_0ef_6d29                            ; $6d8b: $30 $9c

jr_0ef_6d8d:
    jr c, jr_0ef_6db7                             ; $6d8d: $38 $28

    add sp, $38                                   ; $6d8f: $e8 $38
    ld hl, sp+$18                                 ; $6d91: $f8 $18
    ld hl, sp+$18                                 ; $6d93: $f8 $18
    db $fc                                        ; $6d95: $fc
    db $f4                                        ; $6d96: $f4
    inc a                                         ; $6d97: $3c
    db $f4                                        ; $6d98: $f4
    sub h                                         ; $6d99: $94
    ld a, h                                       ; $6d9a: $7c
    db $ec                                        ; $6d9b: $ec
    inc e                                         ; $6d9c: $1c
    ld a, [$f60e]                                 ; $6d9d: $fa $0e $f6
    ld c, $7e                                     ; $6da0: $0e $7e
    add [hl]                                      ; $6da2: $86
    sbc $a6                                       ; $6da3: $de $a6
    ld c, a                                       ; $6da5: $4f
    or l                                          ; $6da6: $b5

jr_0ef_6da7:
    rst $38                                       ; $6da7: $ff
    add a                                         ; $6da8: $87
    ld [$8f04], sp                                ; $6da9: $08 $04 $8f
    rlca                                          ; $6dac: $07
    ld b, $05                                     ; $6dad: $06 $05
    ld b, $07                                     ; $6daf: $06 $07
    dec b                                         ; $6db1: $05
    dec bc                                        ; $6db2: $0b
    inc c                                         ; $6db3: $0c
    rrca                                          ; $6db4: $0f
    inc c                                         ; $6db5: $0c
    rrca                                          ; $6db6: $0f

jr_0ef_6db7:
    ld c, $0b                                     ; $6db7: $0e $0b
    ld c, $05                                     ; $6db9: $0e $05
    ld [bc], a                                    ; $6dbb: $02
    ld b, $8c                                     ; $6dbc: $06 $8c
    rlca                                          ; $6dbe: $07
    ld h, l                                       ; $6dbf: $65
    ld h, [hl]                                    ; $6dc0: $66
    or l                                          ; $6dc1: $b5
    or $6f                                        ; $6dc2: $f6 $6f
    ld a, h                                       ; $6dc4: $7c
    inc bc                                        ; $6dc5: $03
    nop                                           ; $6dc6: $00
    inc bc                                        ; $6dc7: $03
    nop                                           ; $6dc8: $00
    inc bc                                        ; $6dc9: $03
    ld [bc], a                                    ; $6dca: $02
    nop                                           ; $6dcb: $00
    and $03                                       ; $6dcc: $e6 $03
    cp a                                          ; $6dce: $bf
    ld a, a                                       ; $6dcf: $7f
    db $fd                                        ; $6dd0: $fd
    ccf                                           ; $6dd1: $3f
    cp $3f                                        ; $6dd2: $fe $3f
    or l                                          ; $6dd4: $b5
    ld a, [hl]                                    ; $6dd5: $7e
    db $fd                                        ; $6dd6: $fd
    ld a, [hl]                                    ; $6dd7: $7e
    ld [hl], a                                    ; $6dd8: $77
    db $fc                                        ; $6dd9: $fc
    xor e                                         ; $6dda: $ab
    ld a, h                                       ; $6ddb: $7c
    db $d3                                        ; $6ddc: $d3
    inc a                                         ; $6ddd: $3c

jr_0ef_6dde:
    db $d3                                        ; $6dde: $d3
    ld a, $e8                                     ; $6ddf: $3e $e8
    rra                                           ; $6de1: $1f
    db $ec                                        ; $6de2: $ec
    rra                                           ; $6de3: $1f
    ld a, [$f08f]                                 ; $6de4: $fa $8f $f0
    nop                                           ; $6de7: $00
    ldh a, [rNR10]                                ; $6de8: $f0 $10
    add b                                         ; $6dea: $80
    ld [hl], b                                    ; $6deb: $70
    jr nz, jr_0ef_6dde                            ; $6dec: $20 $f0

    ret nz                                        ; $6dee: $c0

    ldh a, [$30]                                  ; $6def: $f0 $30
    ret nc                                        ; $6df1: $d0

    ldh a, [rP1]                                  ; $6df2: $f0 $00
    ret nc                                        ; $6df4: $d0

    jr nz, jr_0ef_6da7                            ; $6df5: $20 $b0

    ld b, b                                       ; $6df7: $40
    ldh a, [rP1]                                  ; $6df8: $f0 $00
    or b                                          ; $6dfa: $b0
    ld b, b                                       ; $6dfb: $40
    db $10                                        ; $6dfc: $10
    ldh [$a0], a                                  ; $6dfd: $e0 $a0
    ld d, b                                       ; $6dff: $50
    rst $38                                       ; $6e00: $ff
    jr @+$7c                                      ; $6e01: $18 $7a

    sbc l                                         ; $6e03: $9d
    ld b, c                                       ; $6e04: $41
    rst $38                                       ; $6e05: $ff
    ld c, $1a                                     ; $6e06: $0e $1a
    ld e, $1a                                     ; $6e08: $1e $1a
    rla                                           ; $6e0a: $17
    rra                                           ; $6e0b: $1f
    db $fd                                        ; $6e0c: $fd
    ei                                            ; $6e0d: $fb
    rst $38                                       ; $6e0e: $ff
    ei                                            ; $6e0f: $fb
    rst $30                                       ; $6e10: $f7
    ld sp, hl                                     ; $6e11: $f9
    rst $38                                       ; $6e12: $ff
    push af                                       ; $6e13: $f5
    rst $18                                       ; $6e14: $df
    push af                                       ; $6e15: $f5
    adc $fa                                       ; $6e16: $ce $fa

jr_0ef_6e18:
    sbc $fa                                       ; $6e18: $de $fa
    call c, $9cf4                                 ; $6e1a: $dc $f4 $9c
    db $ec                                        ; $6e1d: $ec
    sbc h                                         ; $6e1e: $9c
    db $e4                                        ; $6e1f: $e4
    cp h                                          ; $6e20: $bc
    call nc, $ecb4                                ; $6e21: $d4 $b4 $ec
    ld a, b                                       ; $6e24: $78
    cp b                                          ; $6e25: $b8
    sbc e                                         ; $6e26: $9b
    db $fc                                        ; $6e27: $fc
    ld c, a                                       ; $6e28: $4f
    ld a, h                                       ; $6e29: $7c
    ld l, l                                       ; $6e2a: $6d
    ld a, [hl]                                    ; $6e2b: $7e
    dec [hl]                                      ; $6e2c: $35
    ccf                                           ; $6e2d: $3f
    ld l, $3f                                     ; $6e2e: $2e $3f
    ld d, $1f                                     ; $6e30: $16 $1f
    dec bc                                        ; $6e32: $0b
    inc bc                                        ; $6e33: $03
    rrca                                          ; $6e34: $0f
    add h                                         ; $6e35: $84
    ld b, $07                                     ; $6e36: $06 $07
    inc bc                                        ; $6e38: $03
    ld [bc], a                                    ; $6e39: $02
    ld b, $03                                     ; $6e3a: $06 $03
    and a                                         ; $6e3c: $a7
    ld [bc], a                                    ; $6e3d: $02
    inc bc                                        ; $6e3e: $03
    rlca                                          ; $6e3f: $07
    ld b, $05                                     ; $6e40: $06 $05
    rlca                                          ; $6e42: $07
    ld sp, hl                                     ; $6e43: $f9

Call_0ef_6e44:
    rrca                                          ; $6e44: $0f
    rst $28                                       ; $6e45: $ef
    sbc a                                         ; $6e46: $9f
    rst $38                                       ; $6e47: $ff
    rrca                                          ; $6e48: $0f
    rst $38                                       ; $6e49: $ff
    ld c, a                                       ; $6e4a: $4f
    rst $38                                       ; $6e4b: $ff
    adc a                                         ; $6e4c: $8f
    ld a, e                                       ; $6e4d: $7b
    xor a                                         ; $6e4e: $af
    ei                                            ; $6e4f: $fb
    adc a                                         ; $6e50: $8f
    ld a, a                                       ; $6e51: $7f
    rst $00                                       ; $6e52: $c7
    rst $30                                       ; $6e53: $f7
    dec bc                                        ; $6e54: $0b
    rst $28                                       ; $6e55: $ef
    sbc a                                         ; $6e56: $9f
    ld a, e                                       ; $6e57: $7b
    sbc a                                         ; $6e58: $9f
    push af                                       ; $6e59: $f5
    ld e, a                                       ; $6e5a: $5f
    ret nc                                        ; $6e5b: $d0

    rst $38                                       ; $6e5c: $ff
    ld a, b                                       ; $6e5d: $78
    rst $38                                       ; $6e5e: $ff
    or h                                          ; $6e5f: $b4
    ld a, a                                       ; $6e60: $7f
    call c, Call_000_203f                         ; $6e61: $dc $3f $20
    rla                                           ; $6e64: $17
    ldh a, [rSC]                                  ; $6e65: $f0 $02
    sub b                                         ; $6e67: $90
    add [hl]                                      ; $6e68: $86
    ld a, l                                       ; $6e69: $7d
    cp $07                                        ; $6e6a: $fe $07
    rst $38                                       ; $6e6c: $ff
    ld l, $fd                                     ; $6e6d: $2e $fd
    ld [bc], a                                    ; $6e6f: $02
    ld b, b                                       ; $6e70: $40
    add c                                         ; $6e71: $81
    jr nz, jr_0ef_6e76                            ; $6e72: $20 $02

    ld h, b                                       ; $6e74: $60
    sub a                                         ; $6e75: $97

jr_0ef_6e76:
    jr nz, jr_0ef_6e18                            ; $6e76: $20 $a0

    ld h, b                                       ; $6e78: $60
    ld [hl], b                                    ; $6e79: $70
    ret nc                                        ; $6e7a: $d0

    sub b                                         ; $6e7b: $90
    ldh a, [rBCPS]                                ; $6e7c: $f0 $68
    ld hl, sp+$38                                 ; $6e7e: $f8 $38
    ld hl, sp+$16                                 ; $6e80: $f8 $16
    cp $09                                        ; $6e82: $fe $09
    rst $38                                       ; $6e84: $ff
    rrca                                          ; $6e85: $0f
    ei                                            ; $6e86: $fb
    adc $fe                                       ; $6e87: $ce $fe
    jr c, @-$06                                   ; $6e89: $38 $f8

    and b                                         ; $6e8b: $a0
    ldh [rSC], a                                  ; $6e8c: $e0 $02
    ret nz                                        ; $6e8e: $c0

    ld [bc], a                                    ; $6e8f: $02
    add b                                         ; $6e90: $80
    sub [hl]                                      ; $6e91: $96
    inc de                                        ; $6e92: $13
    dec e                                         ; $6e93: $1d
    inc [hl]                                      ; $6e94: $34
    dec sp                                        ; $6e95: $3b
    ld a, [hl-]                                   ; $6e96: $3a
    daa                                           ; $6e97: $27
    ld e, e                                       ; $6e98: $5b
    ld l, h                                       ; $6e99: $6c
    ld a, [hl+]                                   ; $6e9a: $2a
    dec [hl]                                      ; $6e9b: $35
    ld d, l                                       ; $6e9c: $55
    ld a, a                                       ; $6e9d: $7f
    ld l, b                                       ; $6e9e: $68
    ld d, a                                       ; $6e9f: $57
    and [hl]                                      ; $6ea0: $a6
    ei                                            ; $6ea1: $fb
    ld e, a                                       ; $6ea2: $5f
    ld a, a                                       ; $6ea3: $7f
    ld [hl], l                                    ; $6ea4: $75
    ld l, [hl]                                    ; $6ea5: $6e
    ld e, a                                       ; $6ea6: $5f
    ld h, [hl]                                    ; $6ea7: $66
    ld [bc], a                                    ; $6ea8: $02
    add hl, sp                                    ; $6ea9: $39
    ld [$9300], sp                                ; $6eaa: $08 $00 $93
    ld hl, sp-$01                                 ; $6ead: $f8 $ff
    ld a, d                                       ; $6eaf: $7a
    rst $38                                       ; $6eb0: $ff
    ld l, l                                       ; $6eb1: $6d
    rst $28                                       ; $6eb2: $ef
    and h                                         ; $6eb3: $a4
    rst $20                                       ; $6eb4: $e7
    and [hl]                                      ; $6eb5: $a6
    rst $20                                       ; $6eb6: $e7
    ld d, e                                       ; $6eb7: $53
    or e                                          ; $6eb8: $b3
    and c                                         ; $6eb9: $a1
    ld h, c                                       ; $6eba: $61
    ld d, c                                       ; $6ebb: $51
    pop af                                        ; $6ebc: $f1
    and b                                         ; $6ebd: $a0
    ldh [$60], a                                  ; $6ebe: $e0 $60
    ld [bc], a                                    ; $6ec0: $02
    ldh [$81], a                                  ; $6ec1: $e0 $81
    ld h, b                                       ; $6ec3: $60
    ld [bc], a                                    ; $6ec4: $02
    ret nz                                        ; $6ec5: $c0

    ld [$9800], sp                                ; $6ec6: $08 $00 $98
    ld [bc], a                                    ; $6ec9: $02
    rra                                           ; $6eca: $1f
    ld bc, $001f                                  ; $6ecb: $01 $1f $00
    rra                                           ; $6ece: $1f
    db $10                                        ; $6ecf: $10
    rra                                           ; $6ed0: $1f
    db $10                                        ; $6ed1: $10
    rra                                           ; $6ed2: $1f
    ld [$141f], sp                                ; $6ed3: $08 $1f $14
    rra                                           ; $6ed6: $1f
    dec de                                        ; $6ed7: $1b
    rra                                           ; $6ed8: $1f
    inc d                                         ; $6ed9: $14
    rra                                           ; $6eda: $1f
    ld a, [bc]                                    ; $6edb: $0a
    rrca                                          ; $6edc: $0f
    dec b                                         ; $6edd: $05
    rlca                                          ; $6ede: $07
    ld [bc], a                                    ; $6edf: $02
    inc bc                                        ; $6ee0: $03
    ld [bc], a                                    ; $6ee1: $02
    ld bc, $0006                                  ; $6ee2: $01 $06 $00
    rst $38                                       ; $6ee5: $ff
    ld hl, $ed0e                                  ; $6ee6: $21 $0e $ed
    dec l                                         ; $6ee9: $2d
    call nc, $ea23                                ; $6eea: $d4 $23 $ea

jr_0ef_6eed:
    push af                                       ; $6eed: $f5
    and $fd                                       ; $6eee: $e6 $fd
    di                                            ; $6ef0: $f3
    inc bc                                        ; $6ef1: $03
    or $ef                                        ; $6ef2: $f6 $ef
    or $f7                                        ; $6ef4: $f6 $f7
    or $ff                                        ; $6ef6: $f6 $ff
    inc bc                                        ; $6ef8: $03
    inc b                                         ; $6ef9: $04
    ld b, $f0                                     ; $6efa: $06 $f0
    ld b, $f8                                     ; $6efc: $06 $f8
    ld b, $00                                     ; $6efe: $06 $00
    inc de                                        ; $6f00: $13
    rlca                                          ; $6f01: $07
    ld d, $f2                                     ; $6f02: $16 $f2
    ld d, $fa                                     ; $6f04: $16 $fa
    ld d, $ff                                     ; $6f06: $16 $ff
    ld [bc], a                                    ; $6f08: $02
    ld bc, $0383                                  ; $6f09: $01 $83 $03
    ld [bc], a                                    ; $6f0c: $02
    inc bc                                        ; $6f0d: $03
    ld [bc], a                                    ; $6f0e: $02
    ld [bc], a                                    ; $6f0f: $02
    add c                                         ; $6f10: $81
    inc bc                                        ; $6f11: $03
    ld [bc], a                                    ; $6f12: $02
    ld bc, $0696                                  ; $6f13: $01 $96 $06
    rlca                                          ; $6f16: $07
    ld c, $0f                                     ; $6f17: $0e $0f
    rra                                           ; $6f19: $1f
    inc e                                         ; $6f1a: $1c
    ccf                                           ; $6f1b: $3f
    inc a                                         ; $6f1c: $3c
    ld a, a                                       ; $6f1d: $7f
    ld a, [hl]                                    ; $6f1e: $7e
    sbc $ef                                       ; $6f1f: $de $ef
    cp e                                          ; $6f21: $bb
    adc $7f                                       ; $6f22: $ce $7f
    adc [hl]                                      ; $6f24: $8e
    rst $28                                       ; $6f25: $ef
    ld e, $7e                                     ; $6f26: $1e $7e
    sbc a                                         ; $6f28: $9f
    dec e                                         ; $6f29: $1d
    rst $38                                       ; $6f2a: $ff
    ld [bc], a                                    ; $6f2b: $02
    inc d                                         ; $6f2c: $14
    ld [bc], a                                    ; $6f2d: $02
    jr c, @-$62                                   ; $6f2e: $38 $9c

    ld a, h                                       ; $6f30: $7c
    ld b, h                                       ; $6f31: $44
    adc d                                         ; $6f32: $8a
    or $b6                                        ; $6f33: $f6 $b6
    sbc $ff                                       ; $6f35: $de $ff
    ld b, c                                       ; $6f37: $41
    cp [hl]                                       ; $6f38: $be
    jp nz, $5faf                                  ; $6f39: $c2 $af $5f

    ld [hl], a                                    ; $6f3c: $77
    reti                                          ; $6f3d: $d9


    ld [hl], $ce                                  ; $6f3e: $36 $ce
    cp $62                                        ; $6f40: $fe $62
    cp h                                          ; $6f42: $bc
    db $fc                                        ; $6f43: $fc
    sbc e                                         ; $6f44: $9b
    ld a, a                                       ; $6f45: $7f
    ld e, e                                       ; $6f46: $5b
    rst $20                                       ; $6f47: $e7
    ld hl, $dbff                                  ; $6f48: $21 $ff $db
    rst $38                                       ; $6f4b: $ff
    ld [bc], a                                    ; $6f4c: $02
    jr nz, jr_0ef_6f51                            ; $6f4d: $20 $02

    jr nc, jr_0ef_6eed                            ; $6f4f: $30 $9c

jr_0ef_6f51:
    jr c, jr_0ef_6f7b                             ; $6f51: $38 $28

    add sp, $38                                   ; $6f53: $e8 $38
    ld hl, sp+$18                                 ; $6f55: $f8 $18
    ld hl, sp+$18                                 ; $6f57: $f8 $18
    call c, $3cf4                                 ; $6f59: $dc $f4 $3c
    db $f4                                        ; $6f5c: $f4
    sub h                                         ; $6f5d: $94
    ld a, h                                       ; $6f5e: $7c
    call z, $fa3c                                 ; $6f5f: $cc $3c $fa
    ld c, $f6                                     ; $6f62: $0e $f6
    ld c, $fe                                     ; $6f64: $0e $fe
    ld b, $7e                                     ; $6f66: $06 $7e
    add [hl]                                      ; $6f68: $86
    rst $08                                       ; $6f69: $cf
    or l                                          ; $6f6a: $b5
    rst $10                                       ; $6f6b: $d7
    xor a                                         ; $6f6c: $af
    ld [$8f04], sp                                ; $6f6d: $08 $04 $8f
    rlca                                          ; $6f70: $07
    ld b, $05                                     ; $6f71: $06 $05
    ld b, $07                                     ; $6f73: $06 $07
    dec b                                         ; $6f75: $05
    dec bc                                        ; $6f76: $0b
    inc c                                         ; $6f77: $0c
    rrca                                          ; $6f78: $0f
    inc c                                         ; $6f79: $0c
    rrca                                          ; $6f7a: $0f

jr_0ef_6f7b:
    ld c, $0b                                     ; $6f7b: $0e $0b
    ld c, $05                                     ; $6f7d: $0e $05
    ld [bc], a                                    ; $6f7f: $02
    ld b, $8c                                     ; $6f80: $06 $8c
    rlca                                          ; $6f82: $07
    ld h, l                                       ; $6f83: $65
    ld h, [hl]                                    ; $6f84: $66
    or l                                          ; $6f85: $b5
    or $6f                                        ; $6f86: $f6 $6f
    ld a, h                                       ; $6f88: $7c
    inc bc                                        ; $6f89: $03
    nop                                           ; $6f8a: $00

jr_0ef_6f8b:
    inc bc                                        ; $6f8b: $03
    nop                                           ; $6f8c: $00
    inc bc                                        ; $6f8d: $03
    ld [bc], a                                    ; $6f8e: $02
    nop                                           ; $6f8f: $00
    and $03                                       ; $6f90: $e6 $03
    cp l                                          ; $6f92: $bd
    ld a, a                                       ; $6f93: $7f
    rst $38                                       ; $6f94: $ff
    ccf                                           ; $6f95: $3f
    cp $3f                                        ; $6f96: $fe $3f
    or l                                          ; $6f98: $b5
    ld a, [hl]                                    ; $6f99: $7e
    db $fd                                        ; $6f9a: $fd
    ld a, [hl]                                    ; $6f9b: $7e
    ld [hl], l                                    ; $6f9c: $75
    cp $ab                                        ; $6f9d: $fe $ab
    ld a, h                                       ; $6f9f: $7c
    db $d3                                        ; $6fa0: $d3
    inc a                                         ; $6fa1: $3c
    db $d3                                        ; $6fa2: $d3
    ld a, $e8                                     ; $6fa3: $3e $e8
    rra                                           ; $6fa5: $1f
    db $ec                                        ; $6fa6: $ec
    rra                                           ; $6fa7: $1f
    ld a, [$f08f]                                 ; $6fa8: $fa $8f $f0
    nop                                           ; $6fab: $00
    ldh a, [rNR10]                                ; $6fac: $f0 $10
    ret nz                                        ; $6fae: $c0

    jr nc, jr_0ef_6fd1                            ; $6faf: $30 $20

    ldh a, [$c0]                                  ; $6fb1: $f0 $c0
    ldh a, [rNR41]                                ; $6fb3: $f0 $20
    ret nc                                        ; $6fb5: $d0

    ldh a, [rNR10]                                ; $6fb6: $f0 $10
    ret nc                                        ; $6fb8: $d0

    jr nz, jr_0ef_6f8b                            ; $6fb9: $20 $d0

    jr nz, @-$0e                                  ; $6fbb: $20 $f0

    nop                                           ; $6fbd: $00
    ldh a, [rP1]                                  ; $6fbe: $f0 $00
    sub b                                         ; $6fc0: $90
    ld h, b                                       ; $6fc1: $60
    add b                                         ; $6fc2: $80
    ld [hl], b                                    ; $6fc3: $70
    rst $38                                       ; $6fc4: $ff
    jr jr_0ef_6ff1                                ; $6fc5: $18 $2a

    db $dd                                        ; $6fc7: $dd
    ld b, c                                       ; $6fc8: $41
    rst $38                                       ; $6fc9: $ff
    ld c, $1a                                     ; $6fca: $0e $1a
    ld e, $1a                                     ; $6fcc: $1e $1a
    rla                                           ; $6fce: $17
    rra                                           ; $6fcf: $1f
    db $fd                                        ; $6fd0: $fd

jr_0ef_6fd1:
    ei                                            ; $6fd1: $fb
    rst $38                                       ; $6fd2: $ff
    ei                                            ; $6fd3: $fb
    rst $30                                       ; $6fd4: $f7
    ld sp, hl                                     ; $6fd5: $f9
    rst $38                                       ; $6fd6: $ff
    push af                                       ; $6fd7: $f5
    rst $18                                       ; $6fd8: $df
    push af                                       ; $6fd9: $f5
    adc $fa                                       ; $6fda: $ce $fa

jr_0ef_6fdc:
    sbc $fa                                       ; $6fdc: $de $fa
    call c, $9cf4                                 ; $6fde: $dc $f4 $9c
    db $ec                                        ; $6fe1: $ec
    sbc h                                         ; $6fe2: $9c
    db $e4                                        ; $6fe3: $e4
    cp h                                          ; $6fe4: $bc
    call nc, $ecb4                                ; $6fe5: $d4 $b4 $ec
    ld a, b                                       ; $6fe8: $78
    cp b                                          ; $6fe9: $b8
    sbc e                                         ; $6fea: $9b
    db $fc                                        ; $6feb: $fc
    ld c, a                                       ; $6fec: $4f
    ld a, h                                       ; $6fed: $7c
    ld l, l                                       ; $6fee: $6d
    ld a, [hl]                                    ; $6fef: $7e
    dec [hl]                                      ; $6ff0: $35

jr_0ef_6ff1:
    ccf                                           ; $6ff1: $3f
    ld l, $3f                                     ; $6ff2: $2e $3f
    ld d, $1f                                     ; $6ff4: $16 $1f
    dec bc                                        ; $6ff6: $0b
    inc bc                                        ; $6ff7: $03
    rrca                                          ; $6ff8: $0f
    add h                                         ; $6ff9: $84
    ld b, $07                                     ; $6ffa: $06 $07
    inc bc                                        ; $6ffc: $03
    ld [bc], a                                    ; $6ffd: $02
    ld b, $03                                     ; $6ffe: $06 $03
    and a                                         ; $7000: $a7
    ld [bc], a                                    ; $7001: $02
    inc bc                                        ; $7002: $03
    rlca                                          ; $7003: $07
    ld b, $05                                     ; $7004: $06 $05
    rlca                                          ; $7006: $07
    db $fd                                        ; $7007: $fd
    rrca                                          ; $7008: $0f
    rst $28                                       ; $7009: $ef
    sbc a                                         ; $700a: $9f
    rst $38                                       ; $700b: $ff
    rrca                                          ; $700c: $0f
    rst $38                                       ; $700d: $ff
    ld c, a                                       ; $700e: $4f
    rst $38                                       ; $700f: $ff
    adc a                                         ; $7010: $8f
    ld a, e                                       ; $7011: $7b
    xor a                                         ; $7012: $af
    ei                                            ; $7013: $fb
    adc a                                         ; $7014: $8f
    ld a, a                                       ; $7015: $7f
    rst $00                                       ; $7016: $c7
    rst $30                                       ; $7017: $f7
    dec bc                                        ; $7018: $0b
    rst $28                                       ; $7019: $ef
    sbc a                                         ; $701a: $9f
    ld a, e                                       ; $701b: $7b
    sbc a                                         ; $701c: $9f
    push af                                       ; $701d: $f5
    ld e, a                                       ; $701e: $5f
    ret nc                                        ; $701f: $d0

    rst $38                                       ; $7020: $ff
    ld a, b                                       ; $7021: $78
    rst $38                                       ; $7022: $ff
    or h                                          ; $7023: $b4
    ld a, a                                       ; $7024: $7f
    call c, Call_000_203f                         ; $7025: $dc $3f $20
    rla                                           ; $7028: $17
    ldh a, [rSC]                                  ; $7029: $f0 $02
    sub b                                         ; $702b: $90
    add [hl]                                      ; $702c: $86
    ld a, l                                       ; $702d: $7d
    cp $07                                        ; $702e: $fe $07
    rst $38                                       ; $7030: $ff
    ld l, $fd                                     ; $7031: $2e $fd
    ld [bc], a                                    ; $7033: $02
    ld b, b                                       ; $7034: $40
    add c                                         ; $7035: $81
    jr nz, jr_0ef_703a                            ; $7036: $20 $02

    ld h, b                                       ; $7038: $60
    sub a                                         ; $7039: $97

jr_0ef_703a:
    jr nz, jr_0ef_6fdc                            ; $703a: $20 $a0

    ld h, b                                       ; $703c: $60
    ld [hl], b                                    ; $703d: $70
    ret nc                                        ; $703e: $d0

    sub b                                         ; $703f: $90
    ldh a, [rBCPS]                                ; $7040: $f0 $68
    ld hl, sp+$38                                 ; $7042: $f8 $38
    ld hl, sp+$16                                 ; $7044: $f8 $16
    cp $09                                        ; $7046: $fe $09
    rst $38                                       ; $7048: $ff
    rrca                                          ; $7049: $0f
    ei                                            ; $704a: $fb
    adc $fe                                       ; $704b: $ce $fe
    jr c, @-$06                                   ; $704d: $38 $f8

    and b                                         ; $704f: $a0
    ldh [rSC], a                                  ; $7050: $e0 $02
    ret nz                                        ; $7052: $c0

    ld [bc], a                                    ; $7053: $02
    add b                                         ; $7054: $80
    sub [hl]                                      ; $7055: $96
    inc de                                        ; $7056: $13
    dec e                                         ; $7057: $1d
    inc [hl]                                      ; $7058: $34
    dec sp                                        ; $7059: $3b
    ld a, [hl-]                                   ; $705a: $3a
    daa                                           ; $705b: $27
    ld e, e                                       ; $705c: $5b
    ld l, h                                       ; $705d: $6c
    ld a, [hl+]                                   ; $705e: $2a
    dec [hl]                                      ; $705f: $35
    ld d, l                                       ; $7060: $55
    ld a, a                                       ; $7061: $7f
    ld l, b                                       ; $7062: $68
    ld d, a                                       ; $7063: $57
    and [hl]                                      ; $7064: $a6
    ei                                            ; $7065: $fb
    ld e, a                                       ; $7066: $5f
    ld a, a                                       ; $7067: $7f
    ld [hl], l                                    ; $7068: $75
    ld l, [hl]                                    ; $7069: $6e
    ld e, a                                       ; $706a: $5f
    ld h, [hl]                                    ; $706b: $66
    ld [bc], a                                    ; $706c: $02
    add hl, sp                                    ; $706d: $39
    ld [$9300], sp                                ; $706e: $08 $00 $93
    ld hl, sp-$01                                 ; $7071: $f8 $ff
    ld a, d                                       ; $7073: $7a
    rst $38                                       ; $7074: $ff
    ld l, l                                       ; $7075: $6d
    rst $28                                       ; $7076: $ef
    and h                                         ; $7077: $a4
    rst $20                                       ; $7078: $e7
    and [hl]                                      ; $7079: $a6
    rst $20                                       ; $707a: $e7
    ld d, e                                       ; $707b: $53
    or e                                          ; $707c: $b3
    and c                                         ; $707d: $a1
    ld h, c                                       ; $707e: $61
    ld d, c                                       ; $707f: $51
    pop af                                        ; $7080: $f1
    and b                                         ; $7081: $a0
    ldh [$60], a                                  ; $7082: $e0 $60
    ld [bc], a                                    ; $7084: $02
    ldh [$81], a                                  ; $7085: $e0 $81
    ld h, b                                       ; $7087: $60
    ld [bc], a                                    ; $7088: $02
    ret nz                                        ; $7089: $c0

    ld [$9800], sp                                ; $708a: $08 $00 $98
    ld [bc], a                                    ; $708d: $02
    rra                                           ; $708e: $1f
    ld bc, $001f                                  ; $708f: $01 $1f $00
    rra                                           ; $7092: $1f
    db $10                                        ; $7093: $10
    rra                                           ; $7094: $1f
    db $10                                        ; $7095: $10
    rra                                           ; $7096: $1f
    ld [$141f], sp                                ; $7097: $08 $1f $14
    rra                                           ; $709a: $1f
    dec de                                        ; $709b: $1b
    rra                                           ; $709c: $1f
    inc d                                         ; $709d: $14
    rra                                           ; $709e: $1f
    ld a, [bc]                                    ; $709f: $0a
    rrca                                          ; $70a0: $0f
    dec b                                         ; $70a1: $05
    rlca                                          ; $70a2: $07
    ld [bc], a                                    ; $70a3: $02
    inc bc                                        ; $70a4: $03
    ld [bc], a                                    ; $70a5: $02
    ld bc, $0006                                  ; $70a6: $01 $06 $00
    rst $38                                       ; $70a9: $ff
    ld hl, $ed0e                                  ; $70aa: $21 $0e $ed
    dec l                                         ; $70ad: $2d
    call nc, $ea23                                ; $70ae: $d4 $23 $ea

jr_0ef_70b1:
    push af                                       ; $70b1: $f5
    and $fd                                       ; $70b2: $e6 $fd
    di                                            ; $70b4: $f3
    inc bc                                        ; $70b5: $03
    or $ef                                        ; $70b6: $f6 $ef
    or $f7                                        ; $70b8: $f6 $f7
    or $ff                                        ; $70ba: $f6 $ff
    inc bc                                        ; $70bc: $03
    inc b                                         ; $70bd: $04
    ld b, $f0                                     ; $70be: $06 $f0
    ld b, $f8                                     ; $70c0: $06 $f8
    ld b, $00                                     ; $70c2: $06 $00
    inc de                                        ; $70c4: $13
    rlca                                          ; $70c5: $07
    ld d, $f2                                     ; $70c6: $16 $f2
    ld d, $fa                                     ; $70c8: $16 $fa
    ld d, $ff                                     ; $70ca: $16 $ff
    ld [bc], a                                    ; $70cc: $02
    ld bc, $0383                                  ; $70cd: $01 $83 $03
    ld [bc], a                                    ; $70d0: $02
    inc bc                                        ; $70d1: $03
    ld [bc], a                                    ; $70d2: $02
    ld [bc], a                                    ; $70d3: $02
    add c                                         ; $70d4: $81
    inc bc                                        ; $70d5: $03
    ld [bc], a                                    ; $70d6: $02
    ld bc, $0696                                  ; $70d7: $01 $96 $06
    rlca                                          ; $70da: $07
    ld c, $0f                                     ; $70db: $0e $0f
    rra                                           ; $70dd: $1f
    inc e                                         ; $70de: $1c
    ld a, a                                       ; $70df: $7f
    ld a, h                                       ; $70e0: $7c
    ld a, a                                       ; $70e1: $7f
    ld a, [hl]                                    ; $70e2: $7e
    sbc [hl]                                      ; $70e3: $9e
    rst $28                                       ; $70e4: $ef
    ei                                            ; $70e5: $fb
    adc [hl]                                      ; $70e6: $8e
    ld a, a                                       ; $70e7: $7f
    adc [hl]                                      ; $70e8: $8e
    rst $28                                       ; $70e9: $ef
    ld e, $7f                                     ; $70ea: $1e $7f
    sbc a                                         ; $70ec: $9f
    ld e, l                                       ; $70ed: $5d
    cp a                                          ; $70ee: $bf
    ld [bc], a                                    ; $70ef: $02
    inc d                                         ; $70f0: $14
    ld [bc], a                                    ; $70f1: $02
    jr c, @-$62                                   ; $70f2: $38 $9c

    ld e, [hl]                                    ; $70f4: $5e
    ld h, [hl]                                    ; $70f5: $66
    and d                                         ; $70f6: $a2
    cp $b6                                        ; $70f7: $fe $b6
    sbc $ff                                       ; $70f9: $de $ff
    ld b, c                                       ; $70fb: $41
    cp $82                                        ; $70fc: $fe $82
    xor [hl]                                      ; $70fe: $ae
    ld e, [hl]                                    ; $70ff: $5e
    rst $30                                       ; $7100: $f7
    reti                                          ; $7101: $d9


    ld [hl], $ce                                  ; $7102: $36 $ce
    sbc $62                                       ; $7104: $de $62
    cp h                                          ; $7106: $bc
    db $fc                                        ; $7107: $fc
    sbc e                                         ; $7108: $9b
    ld a, a                                       ; $7109: $7f
    ld e, e                                       ; $710a: $5b
    rst $20                                       ; $710b: $e7
    ld sp, $8bff                                  ; $710c: $31 $ff $8b
    rst $38                                       ; $710f: $ff
    ld [bc], a                                    ; $7110: $02
    jr nz, jr_0ef_7115                            ; $7111: $20 $02

    jr nc, jr_0ef_70b1                            ; $7113: $30 $9c

jr_0ef_7115:
    jr c, @+$2a                                   ; $7115: $38 $28

    add sp, $38                                   ; $7117: $e8 $38
    ld hl, sp+$18                                 ; $7119: $f8 $18
    ld hl, sp+$18                                 ; $711b: $f8 $18
    db $fc                                        ; $711d: $fc
    db $f4                                        ; $711e: $f4
    inc a                                         ; $711f: $3c
    db $f4                                        ; $7120: $f4
    sub h                                         ; $7121: $94
    ld a, h                                       ; $7122: $7c
    call z, $fa3c                                 ; $7123: $cc $3c $fa
    ld c, $f6                                     ; $7126: $0e $f6
    ld c, $fe                                     ; $7128: $0e $fe
    ld b, $7e                                     ; $712a: $06 $7e
    add [hl]                                      ; $712c: $86
    rst $08                                       ; $712d: $cf
    or l                                          ; $712e: $b5
    rst $10                                       ; $712f: $d7
    xor a                                         ; $7130: $af
    ld [$8304], sp                                ; $7131: $08 $04 $83
    rlca                                          ; $7134: $07
    ld b, $04                                     ; $7135: $06 $04
    ld [bc], a                                    ; $7137: $02
    rlca                                          ; $7138: $07
    adc d                                         ; $7139: $8a
    dec b                                         ; $713a: $05
    dec bc                                        ; $713b: $0b
    inc c                                         ; $713c: $0c
    dec c                                         ; $713d: $0d
    ld c, $0b                                     ; $713e: $0e $0b
    ld c, $0b                                     ; $7140: $0e $0b
    ld c, $05                                     ; $7142: $0e $05
    ld [bc], a                                    ; $7144: $02
    ld b, $8c                                     ; $7145: $06 $8c
    rlca                                          ; $7147: $07
    ld h, l                                       ; $7148: $65
    ld h, [hl]                                    ; $7149: $66
    or l                                          ; $714a: $b5
    or $6f                                        ; $714b: $f6 $6f
    ld a, h                                       ; $714d: $7c
    inc bc                                        ; $714e: $03
    nop                                           ; $714f: $00

jr_0ef_7150:
    inc bc                                        ; $7150: $03
    nop                                           ; $7151: $00
    inc bc                                        ; $7152: $03
    ld [bc], a                                    ; $7153: $02
    nop                                           ; $7154: $00
    and $03                                       ; $7155: $e6 $03
    cp a                                          ; $7157: $bf
    ld a, a                                       ; $7158: $7f
    rst $38                                       ; $7159: $ff
    ccf                                           ; $715a: $3f
    cp $3f                                        ; $715b: $fe $3f
    or l                                          ; $715d: $b5
    ld a, [hl]                                    ; $715e: $7e
    db $fd                                        ; $715f: $fd
    ld a, [hl]                                    ; $7160: $7e
    ld [hl], l                                    ; $7161: $75
    cp $ab                                        ; $7162: $fe $ab
    ld a, h                                       ; $7164: $7c
    db $d3                                        ; $7165: $d3
    inc a                                         ; $7166: $3c

jr_0ef_7167:
    db $d3                                        ; $7167: $d3
    ld a, $e8                                     ; $7168: $3e $e8
    rra                                           ; $716a: $1f
    db $ec                                        ; $716b: $ec
    rra                                           ; $716c: $1f
    ld a, [$f08f]                                 ; $716d: $fa $8f $f0
    nop                                           ; $7170: $00
    ldh a, [rNR10]                                ; $7171: $f0 $10
    add b                                         ; $7173: $80
    ld [hl], b                                    ; $7174: $70
    jr nz, jr_0ef_7167                            ; $7175: $20 $f0

    ret nz                                        ; $7177: $c0

    ldh a, [rNR41]                                ; $7178: $f0 $20
    ret nc                                        ; $717a: $d0

    ldh a, [rNR10]                                ; $717b: $f0 $10
    ret nc                                        ; $717d: $d0

    jr nz, jr_0ef_7150                            ; $717e: $20 $d0

    jr nz, @-$0e                                  ; $7180: $20 $f0

    nop                                           ; $7182: $00
    ldh a, [rP1]                                  ; $7183: $f0 $00
    sub b                                         ; $7185: $90
    ld h, b                                       ; $7186: $60
    add b                                         ; $7187: $80
    ld [hl], b                                    ; $7188: $70
    rst $38                                       ; $7189: $ff
    jr jr_0ef_71b6                                ; $718a: $18 $2a

    db $dd                                        ; $718c: $dd
    ld b, c                                       ; $718d: $41
    rst $38                                       ; $718e: $ff
    ld c, $1a                                     ; $718f: $0e $1a
    ld e, $1a                                     ; $7191: $1e $1a
    rla                                           ; $7193: $17
    rra                                           ; $7194: $1f
    db $fd                                        ; $7195: $fd
    ei                                            ; $7196: $fb
    rst $38                                       ; $7197: $ff
    ei                                            ; $7198: $fb
    rst $30                                       ; $7199: $f7
    ld sp, hl                                     ; $719a: $f9
    rst $38                                       ; $719b: $ff
    push af                                       ; $719c: $f5
    rst $18                                       ; $719d: $df
    push af                                       ; $719e: $f5
    adc $fa                                       ; $719f: $ce $fa

jr_0ef_71a1:
    sbc $fa                                       ; $71a1: $de $fa
    call c, $9cf4                                 ; $71a3: $dc $f4 $9c
    db $ec                                        ; $71a6: $ec
    sbc h                                         ; $71a7: $9c
    db $e4                                        ; $71a8: $e4
    cp h                                          ; $71a9: $bc
    call nc, $ecb4                                ; $71aa: $d4 $b4 $ec
    ld a, b                                       ; $71ad: $78
    cp b                                          ; $71ae: $b8
    sbc e                                         ; $71af: $9b
    db $fc                                        ; $71b0: $fc
    ld c, a                                       ; $71b1: $4f
    ld a, h                                       ; $71b2: $7c
    ld l, l                                       ; $71b3: $6d
    ld a, [hl]                                    ; $71b4: $7e
    dec [hl]                                      ; $71b5: $35

jr_0ef_71b6:
    ccf                                           ; $71b6: $3f
    ld l, $3f                                     ; $71b7: $2e $3f
    ld d, $1f                                     ; $71b9: $16 $1f
    dec bc                                        ; $71bb: $0b
    inc bc                                        ; $71bc: $03
    rrca                                          ; $71bd: $0f
    add h                                         ; $71be: $84
    ld b, $07                                     ; $71bf: $06 $07
    inc bc                                        ; $71c1: $03
    ld [bc], a                                    ; $71c2: $02
    ld b, $03                                     ; $71c3: $06 $03
    and a                                         ; $71c5: $a7
    ld [bc], a                                    ; $71c6: $02
    inc bc                                        ; $71c7: $03
    rlca                                          ; $71c8: $07
    ld b, $05                                     ; $71c9: $06 $05
    rlca                                          ; $71cb: $07
    db $ed                                        ; $71cc: $ed
    rra                                           ; $71cd: $1f
    rst $28                                       ; $71ce: $ef
    sbc a                                         ; $71cf: $9f
    rst $38                                       ; $71d0: $ff
    rrca                                          ; $71d1: $0f
    rst $38                                       ; $71d2: $ff
    ld c, a                                       ; $71d3: $4f
    rst $38                                       ; $71d4: $ff
    adc a                                         ; $71d5: $8f
    ld a, e                                       ; $71d6: $7b
    xor a                                         ; $71d7: $af
    ei                                            ; $71d8: $fb
    adc a                                         ; $71d9: $8f
    ld a, a                                       ; $71da: $7f
    rst $00                                       ; $71db: $c7
    rst $30                                       ; $71dc: $f7
    dec bc                                        ; $71dd: $0b
    rst $28                                       ; $71de: $ef
    sbc a                                         ; $71df: $9f
    ld a, e                                       ; $71e0: $7b
    sbc a                                         ; $71e1: $9f
    push af                                       ; $71e2: $f5
    ld e, a                                       ; $71e3: $5f
    ret nc                                        ; $71e4: $d0

    rst $38                                       ; $71e5: $ff
    ld a, b                                       ; $71e6: $78
    rst $38                                       ; $71e7: $ff
    or h                                          ; $71e8: $b4
    ld a, a                                       ; $71e9: $7f
    call c, Call_000_203f                         ; $71ea: $dc $3f $20
    rla                                           ; $71ed: $17
    ldh a, [rSC]                                  ; $71ee: $f0 $02
    sub b                                         ; $71f0: $90
    add [hl]                                      ; $71f1: $86
    ld a, l                                       ; $71f2: $7d
    cp $07                                        ; $71f3: $fe $07
    rst $38                                       ; $71f5: $ff
    ld l, $fd                                     ; $71f6: $2e $fd
    ld [bc], a                                    ; $71f8: $02
    ld b, b                                       ; $71f9: $40
    add c                                         ; $71fa: $81
    jr nz, jr_0ef_71ff                            ; $71fb: $20 $02

    ld h, b                                       ; $71fd: $60
    sub a                                         ; $71fe: $97

jr_0ef_71ff:
    jr nz, jr_0ef_71a1                            ; $71ff: $20 $a0

    ld h, b                                       ; $7201: $60
    ld [hl], b                                    ; $7202: $70
    ret nc                                        ; $7203: $d0

    sub b                                         ; $7204: $90
    ldh a, [rBCPS]                                ; $7205: $f0 $68
    ld hl, sp+$38                                 ; $7207: $f8 $38
    ld hl, sp+$16                                 ; $7209: $f8 $16
    cp $09                                        ; $720b: $fe $09
    rst $38                                       ; $720d: $ff
    rrca                                          ; $720e: $0f
    ei                                            ; $720f: $fb
    adc $fe                                       ; $7210: $ce $fe
    jr c, @-$06                                   ; $7212: $38 $f8

    and b                                         ; $7214: $a0
    ldh [rSC], a                                  ; $7215: $e0 $02
    ret nz                                        ; $7217: $c0

    ld [bc], a                                    ; $7218: $02
    add b                                         ; $7219: $80
    sub [hl]                                      ; $721a: $96
    inc de                                        ; $721b: $13
    dec e                                         ; $721c: $1d
    inc [hl]                                      ; $721d: $34
    dec sp                                        ; $721e: $3b
    ld a, [hl-]                                   ; $721f: $3a
    daa                                           ; $7220: $27
    ld e, e                                       ; $7221: $5b
    ld l, h                                       ; $7222: $6c
    ld a, [hl+]                                   ; $7223: $2a
    dec [hl]                                      ; $7224: $35
    ld d, l                                       ; $7225: $55
    ld a, a                                       ; $7226: $7f
    ld l, b                                       ; $7227: $68
    ld d, a                                       ; $7228: $57
    and [hl]                                      ; $7229: $a6
    ei                                            ; $722a: $fb
    ld e, a                                       ; $722b: $5f
    ld a, a                                       ; $722c: $7f
    ld [hl], l                                    ; $722d: $75
    ld l, [hl]                                    ; $722e: $6e
    ld e, a                                       ; $722f: $5f
    ld h, [hl]                                    ; $7230: $66
    ld [bc], a                                    ; $7231: $02
    add hl, sp                                    ; $7232: $39
    ld [$9300], sp                                ; $7233: $08 $00 $93
    ld hl, sp-$01                                 ; $7236: $f8 $ff
    ld a, d                                       ; $7238: $7a
    rst $38                                       ; $7239: $ff
    ld l, l                                       ; $723a: $6d
    rst $28                                       ; $723b: $ef
    and h                                         ; $723c: $a4
    rst $20                                       ; $723d: $e7
    and [hl]                                      ; $723e: $a6
    rst $20                                       ; $723f: $e7
    ld d, e                                       ; $7240: $53
    or e                                          ; $7241: $b3
    and c                                         ; $7242: $a1
    ld h, c                                       ; $7243: $61
    ld d, c                                       ; $7244: $51
    pop af                                        ; $7245: $f1
    and b                                         ; $7246: $a0
    ldh [$60], a                                  ; $7247: $e0 $60
    ld [bc], a                                    ; $7249: $02
    ldh [$81], a                                  ; $724a: $e0 $81
    ld h, b                                       ; $724c: $60
    ld [bc], a                                    ; $724d: $02
    ret nz                                        ; $724e: $c0

    ld [$9800], sp                                ; $724f: $08 $00 $98
    ld [bc], a                                    ; $7252: $02
    rra                                           ; $7253: $1f
    ld bc, $001f                                  ; $7254: $01 $1f $00
    rra                                           ; $7257: $1f
    db $10                                        ; $7258: $10
    rra                                           ; $7259: $1f
    db $10                                        ; $725a: $10
    rra                                           ; $725b: $1f
    ld [$141f], sp                                ; $725c: $08 $1f $14
    rra                                           ; $725f: $1f
    dec de                                        ; $7260: $1b
    rra                                           ; $7261: $1f
    inc d                                         ; $7262: $14
    rra                                           ; $7263: $1f
    ld a, [bc]                                    ; $7264: $0a
    rrca                                          ; $7265: $0f
    dec b                                         ; $7266: $05
    rlca                                          ; $7267: $07
    ld [bc], a                                    ; $7268: $02
    inc bc                                        ; $7269: $03
    ld [bc], a                                    ; $726a: $02
    ld bc, $0006                                  ; $726b: $01 $06 $00
    rst $38                                       ; $726e: $ff
    inc hl                                        ; $726f: $23
    rrca                                          ; $7270: $0f
    db $ed                                        ; $7271: $ed
    dec l                                         ; $7272: $2d
    call nc, $eb23                                ; $7273: $d4 $23 $eb
    push af                                       ; $7276: $f5
    and $fd                                       ; $7277: $e6 $fd
    db $eb                                        ; $7279: $eb
    ld bc, $eff6                                  ; $727a: $01 $f6 $ef
    or $f7                                        ; $727d: $f6 $f7
    or $ff                                        ; $727f: $f6 $ff
    ei                                            ; $7281: $fb
    inc b                                         ; $7282: $04
    ld b, $f1                                     ; $7283: $06 $f1
    ld b, $f9                                     ; $7285: $06 $f9
    ld b, $01                                     ; $7287: $06 $01
    dec bc                                        ; $7289: $0b
    inc b                                         ; $728a: $04
    ld d, $f2                                     ; $728b: $16 $f2
    ld d, $fa                                     ; $728d: $16 $fa
    ld d, $02                                     ; $728f: $16 $02
    ld d, $07                                     ; $7291: $16 $07
    ld b, $01                                     ; $7293: $06 $01
    ld [bc], a                                    ; $7295: $02
    nop                                           ; $7296: $00
    ld [bc], a                                    ; $7297: $02
    inc bc                                        ; $7298: $03
    ld [bc], a                                    ; $7299: $02
    rrca                                          ; $729a: $0f
    sub h                                         ; $729b: $94
    ccf                                           ; $729c: $3f
    ld a, $7f                                     ; $729d: $3e $7f
    ld a, [hl]                                    ; $729f: $7e
    ld e, a                                       ; $72a0: $5f
    ld a, [hl]                                    ; $72a1: $7e
    xor [hl]                                      ; $72a2: $ae
    rst $18                                       ; $72a3: $df
    ei                                            ; $72a4: $fb
    adc [hl]                                      ; $72a5: $8e
    ld a, a                                       ; $72a6: $7f
    adc [hl]                                      ; $72a7: $8e
    rst $28                                       ; $72a8: $ef
    ld e, $7f                                     ; $72a9: $1e $7f
    sbc a                                         ; $72ab: $9f
    call $efbf                                    ; $72ac: $cd $bf $ef
    sbc a                                         ; $72af: $9f
    ld [bc], a                                    ; $72b0: $02
    ld a, [bc]                                    ; $72b1: $0a
    ld [bc], a                                    ; $72b2: $02
    inc e                                         ; $72b3: $1c
    sbc h                                         ; $72b4: $9c
    cpl                                           ; $72b5: $2f
    inc sp                                        ; $72b6: $33
    ld d, l                                       ; $72b7: $55
    ld a, a                                       ; $72b8: $7f
    db $db                                        ; $72b9: $db
    rst $28                                       ; $72ba: $ef
    rst $38                                       ; $72bb: $ff
    jr nz, @+$01                                  ; $72bc: $20 $ff

    ld b, c                                       ; $72be: $41
    ld e, e                                       ; $72bf: $5b
    xor a                                         ; $72c0: $af
    call Call_000_1bff                            ; $72c1: $cd $ff $1b
    db $e4                                        ; $72c4: $e4
    ld a, a                                       ; $72c5: $7f
    and e                                         ; $72c6: $a3
    sbc $7e                                       ; $72c7: $de $7e
    srl a                                         ; $72c9: $cb $3f
    ld e, e                                       ; $72cb: $5b
    rst $20                                       ; $72cc: $e7
    ld sp, $8bff                                  ; $72cd: $31 $ff $8b
    rst $38                                       ; $72d0: $ff
    ld [bc], a                                    ; $72d1: $02
    ld [$0004], sp                                ; $72d2: $08 $04 $00
    inc b                                         ; $72d5: $04
    ld [$0006], sp                                ; $72d6: $08 $06 $00
    ld [bc], a                                    ; $72d9: $02
    ld [$0c02], sp                                ; $72da: $08 $02 $0c
    adc h                                         ; $72dd: $8c
    ld c, $0a                                     ; $72de: $0e $0a
    ld a, [$fe0e]                                 ; $72e0: $fa $0e $fe
    ld b, [hl]                                    ; $72e3: $46
    ld a, $c6                                     ; $72e4: $3e $c6
    cp a                                          ; $72e6: $bf
    db $fd                                        ; $72e7: $fd
    rrca                                          ; $72e8: $0f
    db $fd                                        ; $72e9: $fd
    ld a, [bc]                                    ; $72ea: $0a
    inc b                                         ; $72eb: $04
    add c                                         ; $72ec: $81
    dec b                                         ; $72ed: $05
    ld [bc], a                                    ; $72ee: $02
    rlca                                          ; $72ef: $07
    sbc b                                         ; $72f0: $98
    inc b                                         ; $72f1: $04
    dec bc                                        ; $72f2: $0b
    inc c                                         ; $72f3: $0c
    dec c                                         ; $72f4: $0d
    ld c, $0b                                     ; $72f5: $0e $0b
    ld c, $0f                                     ; $72f7: $0e $0f
    ld c, $05                                     ; $72f9: $0e $05
    ld b, $47                                     ; $72fb: $06 $47
    ld b, [hl]                                    ; $72fd: $46
    and l                                         ; $72fe: $a5
    and $f7                                       ; $72ff: $e6 $f7
    db $f4                                        ; $7301: $f4
    ld c, a                                       ; $7302: $4f
    ld a, l                                       ; $7303: $7d
    inc bc                                        ; $7304: $03
    nop                                           ; $7305: $00
    inc bc                                        ; $7306: $03
    nop                                           ; $7307: $00
    inc bc                                        ; $7308: $03
    ld [bc], a                                    ; $7309: $02
    nop                                           ; $730a: $00
    inc bc                                        ; $730b: $03
    inc bc                                        ; $730c: $03
    sbc l                                         ; $730d: $9d
    rst $38                                       ; $730e: $ff
    ccf                                           ; $730f: $3f
    cp $3f                                        ; $7310: $fe $3f
    or h                                          ; $7312: $b4
    ld a, a                                       ; $7313: $7f
    db $fd                                        ; $7314: $fd
    ld a, [hl]                                    ; $7315: $7e
    ld [hl], l                                    ; $7316: $75
    cp $bb                                        ; $7317: $fe $bb
    ld a, h                                       ; $7319: $7c
    pop de                                        ; $731a: $d1
    ld a, $d3                                     ; $731b: $3e $d3
    ld a, $f8                                     ; $731d: $3e $f8
    rra                                           ; $731f: $1f
    db $ec                                        ; $7320: $ec
    rra                                           ; $7321: $1f
    ld a, [$c00f]                                 ; $7322: $fa $0f $c0
    nop                                           ; $7325: $00
    ret nz                                        ; $7326: $c0

    nop                                           ; $7327: $00
    add b                                         ; $7328: $80
    ld b, b                                       ; $7329: $40
    nop                                           ; $732a: $00
    inc bc                                        ; $732b: $03
    ret nz                                        ; $732c: $c0

    sub a                                         ; $732d: $97
    add hl, hl                                    ; $732e: $29
    rst $10                                       ; $732f: $d7
    ld a, l                                       ; $7330: $7d
    sub e                                         ; $7331: $93
    sbc $21                                       ; $7332: $de $21
    rst $18                                       ; $7334: $df
    jr nz, @+$01                                  ; $7335: $20 $ff

    nop                                           ; $7337: $00
    rst $30                                       ; $7338: $f7
    ld [$6b9c], sp                                ; $7339: $08 $9c $6b
    adc l                                         ; $733c: $8d
    ld a, d                                       ; $733d: $7a
    rst $38                                       ; $733e: $ff
    jr @+$2a                                      ; $733f: $18 $28

    rst $18                                       ; $7341: $df
    ld b, c                                       ; $7342: $41
    rst $38                                       ; $7343: $ff
    ld [$1803], sp                                ; $7344: $08 $03 $18
    add c                                         ; $7347: $81
    inc d                                         ; $7348: $14
    inc bc                                        ; $7349: $03
    inc e                                         ; $734a: $1c
    add c                                         ; $734b: $81
    inc c                                         ; $734c: $0c
    ld [bc], a                                    ; $734d: $02
    inc e                                         ; $734e: $1c
    xor h                                         ; $734f: $ac
    inc c                                         ; $7350: $0c
    ld e, $0a                                     ; $7351: $1e $0a
    ld c, $1e                                     ; $7353: $0e $1e
    ld c, $1a                                     ; $7355: $0e $1a
    ld e, $1a                                     ; $7357: $1e $1a
    rla                                           ; $7359: $17
    rra                                           ; $735a: $1f
    db $fd                                        ; $735b: $fd
    ei                                            ; $735c: $fb
    rst $38                                       ; $735d: $ff
    ei                                            ; $735e: $fb
    rst $30                                       ; $735f: $f7
    ld sp, hl                                     ; $7360: $f9
    rst $38                                       ; $7361: $ff
    push af                                       ; $7362: $f5
    rst $18                                       ; $7363: $df
    push af                                       ; $7364: $f5
    sub a                                         ; $7365: $97
    ld sp, hl                                     ; $7366: $f9
    rst $18                                       ; $7367: $df
    ld hl, sp-$15                                 ; $7368: $f8 $eb
    cp $69                                        ; $736a: $fe $69
    ld a, [hl]                                    ; $736c: $7e
    dec a                                         ; $736d: $3d
    ccf                                           ; $736e: $3f
    inc d                                         ; $736f: $14
    rra                                           ; $7370: $1f
    rla                                           ; $7371: $17
    rra                                           ; $7372: $1f
    inc c                                         ; $7373: $0c
    rrca                                          ; $7374: $0f
    dec c                                         ; $7375: $0d
    ld c, $07                                     ; $7376: $0e $07
    dec b                                         ; $7378: $05
    ld b, $07                                     ; $7379: $06 $07
    ld b, $03                                     ; $737b: $06 $03
    rlca                                          ; $737d: $07
    and a                                         ; $737e: $a7
    inc b                                         ; $737f: $04
    rlca                                          ; $7380: $07
    rrca                                          ; $7381: $0f
    inc c                                         ; $7382: $0c
    dec bc                                        ; $7383: $0b
    ld c, $fa                                     ; $7384: $0e $fa
    ccf                                           ; $7386: $3f
    rst $18                                       ; $7387: $df
    ccf                                           ; $7388: $3f
    rst $38                                       ; $7389: $ff
    rra                                           ; $738a: $1f
    rst $38                                       ; $738b: $ff
    sbc a                                         ; $738c: $9f
    rst $38                                       ; $738d: $ff
    rra                                           ; $738e: $1f
    rst $30                                       ; $738f: $f7
    sbc a                                         ; $7390: $9f
    rst $30                                       ; $7391: $f7
    rra                                           ; $7392: $1f
    rst $38                                       ; $7393: $ff
    adc a                                         ; $7394: $8f
    rst $20                                       ; $7395: $e7
    rra                                           ; $7396: $1f
    rst $18                                       ; $7397: $df
    ccf                                           ; $7398: $3f
    rst $30                                       ; $7399: $f7
    ccf                                           ; $739a: $3f
    db $e3                                        ; $739b: $e3
    cp a                                          ; $739c: $bf
    and c                                         ; $739d: $a1
    rst $38                                       ; $739e: $ff
    ret nc                                        ; $739f: $d0

    rst $38                                       ; $73a0: $ff
    ld [hl], b                                    ; $73a1: $70
    rst $38                                       ; $73a2: $ff
    cp b                                          ; $73a3: $b8
    ld a, a                                       ; $73a4: $7f
    ld b, b                                       ; $73a5: $40
    add hl, bc                                    ; $73a6: $09
    ldh [$9a], a                                  ; $73a7: $e0 $9a
    ld sp, hl                                     ; $73a9: $f9
    rst $38                                       ; $73aa: $ff
    ei                                            ; $73ab: $fb
    rst $38                                       ; $73ac: $ff
    ei                                            ; $73ad: $fb
    cp $f3                                        ; $73ae: $fe $f3
    db $fd                                        ; $73b0: $fd
    di                                            ; $73b1: $f3
    db $fc                                        ; $73b2: $fc
    rst $30                                       ; $73b3: $f7
    ld a, [$fdf6]                                 ; $73b4: $fa $f6 $fd
    cpl                                           ; $73b7: $2f
    scf                                           ; $73b8: $37
    ei                                            ; $73b9: $fb
    db $fd                                        ; $73ba: $fd
    adc [hl]                                      ; $73bb: $8e
    rst $38                                       ; $73bc: $ff
    dec a                                         ; $73bd: $3d
    ld a, [$0206]                                 ; $73be: $fa $06 $02
    ld b, $02                                     ; $73c1: $06 $02
    ld a, [bc]                                    ; $73c3: $0a
    inc b                                         ; $73c4: $04
    inc b                                         ; $73c5: $04
    nop                                           ; $73c6: $00
    inc b                                         ; $73c7: $04
    inc b                                         ; $73c8: $04
    and b                                         ; $73c9: $a0
    ld d, h                                       ; $73ca: $54
    db $ec                                        ; $73cb: $ec
    ld l, $fa                                     ; $73cc: $2e $fa
    ld [de], a                                    ; $73ce: $12
    cp $0d                                        ; $73cf: $fe $0d
    rst $38                                       ; $73d1: $ff
    rlca                                          ; $73d2: $07
    rst $38                                       ; $73d3: $ff
    inc de                                        ; $73d4: $13
    dec e                                         ; $73d5: $1d
    inc [hl]                                      ; $73d6: $34
    dec sp                                        ; $73d7: $3b
    ld a, [hl-]                                   ; $73d8: $3a
    daa                                           ; $73d9: $27
    ld e, e                                       ; $73da: $5b
    ld l, h                                       ; $73db: $6c
    ld a, [hl+]                                   ; $73dc: $2a
    dec [hl]                                      ; $73dd: $35
    ld d, l                                       ; $73de: $55
    ld a, a                                       ; $73df: $7f
    ld l, b                                       ; $73e0: $68
    ld d, a                                       ; $73e1: $57
    and [hl]                                      ; $73e2: $a6
    ei                                            ; $73e3: $fb
    ld e, a                                       ; $73e4: $5f
    ld a, a                                       ; $73e5: $7f
    ld [hl], l                                    ; $73e6: $75
    ld l, [hl]                                    ; $73e7: $6e
    ld e, a                                       ; $73e8: $5f
    ld h, [hl]                                    ; $73e9: $66
    ld [bc], a                                    ; $73ea: $02
    add hl, sp                                    ; $73eb: $39
    ld [$9300], sp                                ; $73ec: $08 $00 $93
    db $f4                                        ; $73ef: $f4
    rst $38                                       ; $73f0: $ff
    ld a, d                                       ; $73f1: $7a
    rst $38                                       ; $73f2: $ff
    ld l, l                                       ; $73f3: $6d
    rst $28                                       ; $73f4: $ef
    and [hl]                                      ; $73f5: $a6
    rst $20                                       ; $73f6: $e7
    and [hl]                                      ; $73f7: $a6
    rst $20                                       ; $73f8: $e7
    ld d, e                                       ; $73f9: $53
    or e                                          ; $73fa: $b3
    and c                                         ; $73fb: $a1
    ld h, c                                       ; $73fc: $61
    ld d, c                                       ; $73fd: $51
    pop af                                        ; $73fe: $f1

Call_0ef_73ff:
    and b                                         ; $73ff: $a0
    ldh [$60], a                                  ; $7400: $e0 $60
    ld [bc], a                                    ; $7402: $02
    ldh [$81], a                                  ; $7403: $e0 $81
    ld h, b                                       ; $7405: $60
    ld [bc], a                                    ; $7406: $02
    ret nz                                        ; $7407: $c0

    add hl, bc                                    ; $7408: $09
    nop                                           ; $7409: $00
    sub a                                         ; $740a: $97
    ret nz                                        ; $740b: $c0

    nop                                           ; $740c: $00
    ret nz                                        ; $740d: $c0

    nop                                           ; $740e: $00
    ret nz                                        ; $740f: $c0

    add b                                         ; $7410: $80
    ret nz                                        ; $7411: $c0

    add b                                         ; $7412: $80
    ret nz                                        ; $7413: $c0

    ld b, b                                       ; $7414: $40
    rst $38                                       ; $7415: $ff
    or b                                          ; $7416: $b0
    rst $38                                       ; $7417: $ff
    ld e, b                                       ; $7418: $58
    rst $38                                       ; $7419: $ff
    and h                                         ; $741a: $a4
    rst $38                                       ; $741b: $ff
    ld d, e                                       ; $741c: $53
    ld a, a                                       ; $741d: $7f
    ld c, c                                       ; $741e: $49
    ld a, a                                       ; $741f: $7f
    ld h, $3e                                     ; $7420: $26 $3e
    ld [bc], a                                    ; $7422: $02
    jr jr_0ef_7435                                ; $7423: $18 $10

    nop                                           ; $7425: $00
    adc b                                         ; $7426: $88
    ld d, $1e                                     ; $7427: $16 $1e
    add hl, de                                    ; $7429: $19
    rra                                           ; $742a: $1f
    rrca                                          ; $742b: $0f
    dec de                                        ; $742c: $1b
    ld c, $1e                                     ; $742d: $0e $1e
    ld [bc], a                                    ; $742f: $02
    jr jr_0ef_7434                                ; $7430: $18 $02

    db $10                                        ; $7432: $10
    ld a, [bc]                                    ; $7433: $0a

jr_0ef_7434:
    nop                                           ; $7434: $00

Jump_0ef_7435:
jr_0ef_7435:
    rst $38                                       ; $7435: $ff
    inc hl                                        ; $7436: $23
    rrca                                          ; $7437: $0f
    db $ed                                        ; $7438: $ed
    dec l                                         ; $7439: $2d
    call nc, $ef23                                ; $743a: $d4 $23 $ef
    push af                                       ; $743d: $f5
    and $fd                                       ; $743e: $e6 $fd
    add sp, $01                                   ; $7440: $e8 $01
    rst $30                                       ; $7442: $f7
    xor $f6                                       ; $7443: $ee $f6
    or $f6                                        ; $7445: $f6 $f6
    cp $f8                                        ; $7447: $fe $f8
    ld b, $06                                     ; $7449: $06 $06
    ldh a, [rTMA]                                 ; $744b: $f0 $06
    ld hl, sp+$06                                 ; $744d: $f8 $06
    nop                                           ; $744f: $00
    ld [$1606], sp                                ; $7450: $08 $06 $16
    ld a, [c]                                     ; $7453: $f2
    ld d, $fa                                     ; $7454: $16 $fa
    ld d, $02                                     ; $7456: $16 $02
    ld d, $07                                     ; $7458: $16 $07
    ld [bc], a                                    ; $745a: $02
    ld bc, $0f02                                  ; $745b: $01 $02 $0f
    sbc h                                         ; $745e: $9c
    ld a, $3f                                     ; $745f: $3e $3f
    cpl                                           ; $7461: $2f
    ld a, $56                                     ; $7462: $3e $56
    ld l, a                                       ; $7464: $6f
    cp [hl]                                       ; $7465: $be
    rst $00                                       ; $7466: $c7
    db $fd                                        ; $7467: $fd
    add a                                         ; $7468: $87
    rst $30                                       ; $7469: $f7
    adc a                                         ; $746a: $8f
    xor a                                         ; $746b: $af
    rst $18                                       ; $746c: $df
    sbc a                                         ; $746d: $9f
    rst $38                                       ; $746e: $ff
    db $ed                                        ; $746f: $ed
    sbc a                                         ; $7470: $9f
    rst $28                                       ; $7471: $ef
    rra                                           ; $7472: $1f
    rst $38                                       ; $7473: $ff
    rra                                           ; $7474: $1f
    rst $18                                       ; $7475: $df
    ccf                                           ; $7476: $3f
    dec a                                         ; $7477: $3d
    rst $38                                       ; $7478: $ff
    ld a, a                                       ; $7479: $7f
    rst $38                                       ; $747a: $ff
    ld [bc], a                                    ; $747b: $02
    dec b                                         ; $747c: $05
    ld [bc], a                                    ; $747d: $02
    ld c, $9c                                     ; $747e: $0e $9c
    rla                                           ; $7480: $17
    add hl, de                                    ; $7481: $19
    ld a, [hl+]                                   ; $7482: $2a
    ccf                                           ; $7483: $3f
    ld h, l                                       ; $7484: $65
    ld a, a                                       ; $7485: $7f
    rst $38                                       ; $7486: $ff
    sub b                                         ; $7487: $90
    cp $a1                                        ; $7488: $fe $a1
    or l                                          ; $748a: $b5
    rst $08                                       ; $748b: $cf
    ld l, a                                       ; $748c: $6f
    ld a, a                                       ; $748d: $7f
    sbc l                                         ; $748e: $9d
    rst $20                                       ; $748f: $e7
    ccf                                           ; $7490: $3f
    ret nc                                        ; $7491: $d0

    db $eb                                        ; $7492: $eb
    ccf                                           ; $7493: $3f
    rst $20                                       ; $7494: $e7
    rra                                           ; $7495: $1f
    ld e, e                                       ; $7496: $5b
    rst $20                                       ; $7497: $e7
    or c                                          ; $7498: $b1
    rst $38                                       ; $7499: $ff
    ld l, e                                       ; $749a: $6b
    sbc a                                         ; $749b: $9f
    ld b, $08                                     ; $749c: $06 $08
    add d                                         ; $749e: $82
    inc c                                         ; $749f: $0c
    inc b                                         ; $74a0: $04
    ld [bc], a                                    ; $74a1: $02
    ld [$0002], sp                                ; $74a2: $08 $02 $00
    ld [bc], a                                    ; $74a5: $02
    ld [$0482], sp                                ; $74a6: $08 $82 $04
    inc c                                         ; $74a9: $0c
    ld [bc], a                                    ; $74aa: $02
    ld [$0004], sp                                ; $74ab: $08 $04 $00
    ld [bc], a                                    ; $74ae: $02
    ld [$0c02], sp                                ; $74af: $08 $02 $0c
    add [hl]                                      ; $74b2: $86
    ld c, $0a                                     ; $74b3: $0e $0a
    cp d                                          ; $74b5: $ba
    ld c, [hl]                                    ; $74b6: $4e
    rst $38                                       ; $74b7: $ff
    ld b, l                                       ; $74b8: $45
    ld [bc], a                                    ; $74b9: $02
    ld [bc], a                                    ; $74ba: $02
    and e                                         ; $74bb: $a3
    inc b                                         ; $74bc: $04
    ld b, $04                                     ; $74bd: $06 $04
    ld b, $08                                     ; $74bf: $06 $08
    ld c, $08                                     ; $74c1: $0e $08
    ld c, $18                                     ; $74c3: $0e $18
    ld e, $14                                     ; $74c5: $1e $14
    ld e, $1a                                     ; $74c7: $1e $1a
    inc e                                         ; $74c9: $1c
    rra                                           ; $74ca: $1f
    jr @+$19                                      ; $74cb: $18 $17

    jr jr_0ef_74da                                ; $74cd: $18 $0b

    inc c                                         ; $74cf: $0c
    dec bc                                        ; $74d0: $0b
    inc c                                         ; $74d1: $0c
    ld c, e                                       ; $74d2: $4b
    ld c, h                                       ; $74d3: $4c
    and l                                         ; $74d4: $a5
    rst $20                                       ; $74d5: $e7
    ld a, l                                       ; $74d6: $7d
    ld a, [hl]                                    ; $74d7: $7e
    ld c, a                                       ; $74d8: $4f
    ld a, a                                       ; $74d9: $7f

jr_0ef_74da:
    ld bc, $0100                                  ; $74da: $01 $00 $01
    nop                                           ; $74dd: $00
    ld bc, $0002                                  ; $74de: $01 $02 $00
    rlca                                          ; $74e1: $07
    ld bc, $00b2                                  ; $74e2: $01 $b2 $00
    ld bc, $0100                                  ; $74e5: $01 $00 $01
    ld a, [$bd7f]                                 ; $74e8: $fa $7f $bd
    ld a, [hl]                                    ; $74eb: $7e
    ld sp, hl                                     ; $74ec: $f9
    ld a, $d1                                     ; $74ed: $3e $d1
    ccf                                           ; $74ef: $3f
    db $fc                                        ; $74f0: $fc
    rra                                           ; $74f1: $1f
    xor $1f                                       ; $74f2: $ee $1f
    db $fd                                        ; $74f4: $fd
    rrca                                          ; $74f5: $0f
    ldh [rP1], a                                  ; $74f6: $e0 $00
    ldh [rP1], a                                  ; $74f8: $e0 $00
    rst $20                                       ; $74fa: $e7
    jr @+$39                                      ; $74fb: $18 $37

    rst $38                                       ; $74fd: $ff
    pop bc                                        ; $74fe: $c1
    rst $38                                       ; $74ff: $ff
    sub h                                         ; $7500: $94
    db $eb                                        ; $7501: $eb
    ld a, [hl]                                    ; $7502: $7e
    adc c                                         ; $7503: $89
    rst $28                                       ; $7504: $ef
    db $10                                        ; $7505: $10
    rst $28                                       ; $7506: $ef
    db $10                                        ; $7507: $10
    rst $38                                       ; $7508: $ff
    nop                                           ; $7509: $00
    ei                                            ; $750a: $fb
    inc b                                         ; $750b: $04
    adc $35                                       ; $750c: $ce $35
    add $3d                                       ; $750e: $c6 $3d
    ld a, a                                       ; $7510: $7f
    adc h                                         ; $7511: $8c
    dec d                                         ; $7512: $15
    xor $20                                       ; $7513: $ee $20
    rst $38                                       ; $7515: $ff
    inc bc                                        ; $7516: $03
    ldh [$86], a                                  ; $7517: $e0 $86
    and b                                         ; $7519: $a0
    ldh [$a0], a                                  ; $751a: $e0 $a0
    or b                                          ; $751c: $b0
    ret nc                                        ; $751d: $d0

    ld d, b                                       ; $751e: $50
    ld [bc], a                                    ; $751f: $02
    ldh a, [$a2]                                  ; $7520: $f0 $a2
    ld [hl], b                                    ; $7522: $70
    cp b                                          ; $7523: $b8
    ld a, b                                       ; $7524: $78
    add sp, $38                                   ; $7525: $e8 $38
    db $f4                                        ; $7527: $f4
    inc l                                         ; $7528: $2c
    ld l, h                                       ; $7529: $6c
    cp h                                          ; $752a: $bc
    xor h                                         ; $752b: $ac
    ld [hl], h                                    ; $752c: $74
    xor [hl]                                      ; $752d: $ae
    ld a, d                                       ; $752e: $7a
    ld h, [hl]                                    ; $752f: $66

jr_0ef_7530:
    cp $f6                                        ; $7530: $fe $f6
    ld a, [$fbff]                                 ; $7532: $fa $ff $fb
    rst $30                                       ; $7535: $f7
    ld sp, hl                                     ; $7536: $f9
    inc bc                                        ; $7537: $03
    ld bc, $fceb                                  ; $7538: $01 $eb $fc
    dec h                                         ; $753b: $25
    ccf                                           ; $753c: $3f
    ld [hl-], a                                   ; $753d: $32
    ccf                                           ; $753e: $3f
    dec de                                        ; $753f: $1b
    rra                                           ; $7540: $1f
    ld b, $07                                     ; $7541: $06 $07
    ld [bc], a                                    ; $7543: $02
    inc bc                                        ; $7544: $03
    inc bc                                        ; $7545: $03
    ld [bc], a                                    ; $7546: $02
    ld bc, $0281                                  ; $7547: $01 $81 $02
    ld [bc], a                                    ; $754a: $02
    inc bc                                        ; $754b: $03
    ld [bc], a                                    ; $754c: $02

jr_0ef_754d:
    ld [bc], a                                    ; $754d: $02
    inc bc                                        ; $754e: $03
    inc bc                                        ; $754f: $03
    and a                                         ; $7550: $a7
    ld [bc], a                                    ; $7551: $02
    inc bc                                        ; $7552: $03
    rlca                                          ; $7553: $07
    ld b, $05                                     ; $7554: $06 $05
    rlca                                          ; $7556: $07
    db $fd                                        ; $7557: $fd
    ccf                                           ; $7558: $3f
    rst $18                                       ; $7559: $df
    ccf                                           ; $755a: $3f
    rst $18                                       ; $755b: $df
    ld a, a                                       ; $755c: $7f
    rst $38                                       ; $755d: $ff
    rra                                           ; $755e: $1f
    ld a, a                                       ; $755f: $7f
    rst $08                                       ; $7560: $cf
    cp a                                          ; $7561: $bf
    rst $00                                       ; $7562: $c7
    ld a, e                                       ; $7563: $7b
    rst $00                                       ; $7564: $c7
    ld l, a                                       ; $7565: $6f
    sbc a                                         ; $7566: $9f
    db $d3                                        ; $7567: $d3
    cp a                                          ; $7568: $bf
    reti                                          ; $7569: $d9


    cp a                                          ; $756a: $bf
    ld [hl], b                                    ; $756b: $70
    rst $38                                       ; $756c: $ff
    cp b                                          ; $756d: $b8
    ld e, a                                       ; $756e: $5f
    ld c, [hl]                                    ; $756f: $4e
    rst $38                                       ; $7570: $ff
    dec a                                         ; $7571: $3d
    rst $38                                       ; $7572: $ff
    jp c, $d97b                                   ; $7573: $da $7b $d9

    add hl, sp                                    ; $7576: $39
    inc l                                         ; $7577: $2c
    inc bc                                        ; $7578: $03
    db $fc                                        ; $7579: $fc
    inc b                                         ; $757a: $04
    rst $38                                       ; $757b: $ff
    and h                                         ; $757c: $a4
    db $fc                                        ; $757d: $fc
    rst $38                                       ; $757e: $ff
    db $fc                                        ; $757f: $fc
    rst $38                                       ; $7580: $ff
    db $fd                                        ; $7581: $fd
    cp $fd                                        ; $7582: $fe $fd
    cp $f9                                        ; $7584: $fe $f9
    cp $f9                                        ; $7586: $fe $f9
    cp $7b                                        ; $7588: $fe $7b
    db $fd                                        ; $758a: $fd
    ccf                                           ; $758b: $3f
    cp $19                                        ; $758c: $fe $19
    rst $38                                       ; $758e: $ff
    rrca                                          ; $758f: $0f
    rst $38                                       ; $7590: $ff
    add c                                         ; $7591: $81
    rst $38                                       ; $7592: $ff
    ld b, b                                       ; $7593: $40
    rst $38                                       ; $7594: $ff
    ccf                                           ; $7595: $3f
    dec [hl]                                      ; $7596: $35
    ccf                                           ; $7597: $3f
    dec [hl]                                      ; $7598: $35
    ld a, $3a                                     ; $7599: $3e $3a
    ld e, $3a                                     ; $759b: $1e $3a
    inc e                                         ; $759d: $1c
    inc [hl]                                      ; $759e: $34
    jr c, jr_0ef_75b9                             ; $759f: $38 $18

    inc bc                                        ; $75a1: $03
    jr nc, @-$7c                                  ; $75a2: $30 $82

    db $10                                        ; $75a4: $10
    jr nc, jr_0ef_75a9                            ; $75a5: $30 $02

    db $10                                        ; $75a7: $10
    add c                                         ; $75a8: $81

jr_0ef_75a9:
    jr nc, jr_0ef_75ad                            ; $75a9: $30 $02

    jr nz, jr_0ef_75af                            ; $75ab: $20 $02

jr_0ef_75ad:
    jr nc, jr_0ef_7530                            ; $75ad: $30 $81

jr_0ef_75af:
    db $10                                        ; $75af: $10
    inc bc                                        ; $75b0: $03
    jr nc, jr_0ef_754d                            ; $75b1: $30 $9a

    jr jr_0ef_75ad                                ; $75b3: $18 $f8

    inc b                                         ; $75b5: $04
    db $fc                                        ; $75b6: $fc
    inc de                                        ; $75b7: $13
    dec e                                         ; $75b8: $1d

jr_0ef_75b9:
    inc [hl]                                      ; $75b9: $34
    dec sp                                        ; $75ba: $3b
    ld a, [hl-]                                   ; $75bb: $3a
    daa                                           ; $75bc: $27
    ld e, e                                       ; $75bd: $5b
    ld l, h                                       ; $75be: $6c
    ld a, [hl+]                                   ; $75bf: $2a
    dec [hl]                                      ; $75c0: $35
    ld d, l                                       ; $75c1: $55
    ld a, a                                       ; $75c2: $7f
    ld l, b                                       ; $75c3: $68
    ld d, a                                       ; $75c4: $57
    and [hl]                                      ; $75c5: $a6
    ei                                            ; $75c6: $fb
    ld e, a                                       ; $75c7: $5f
    ld a, a                                       ; $75c8: $7f
    ld [hl], l                                    ; $75c9: $75
    ld l, [hl]                                    ; $75ca: $6e
    ld e, a                                       ; $75cb: $5f
    ld h, [hl]                                    ; $75cc: $66
    ld [bc], a                                    ; $75cd: $02
    add hl, sp                                    ; $75ce: $39
    ld [$9300], sp                                ; $75cf: $08 $00 $93
    ld [c], a                                     ; $75d2: $e2
    db $e3                                        ; $75d3: $e3
    ld h, c                                       ; $75d4: $61
    pop hl                                        ; $75d5: $e1
    ld h, b                                       ; $75d6: $60
    ldh [$a0], a                                  ; $75d7: $e0 $a0
    ldh [$a0], a                                  ; $75d9: $e0 $a0
    ldh [$50], a                                  ; $75db: $e0 $50
    or b                                          ; $75dd: $b0
    and b                                         ; $75de: $a0
    ld h, b                                       ; $75df: $60
    ld d, b                                       ; $75e0: $50
    ldh a, [$a0]                                  ; $75e1: $f0 $a0
    ldh [$60], a                                  ; $75e3: $e0 $60
    ld [bc], a                                    ; $75e5: $02
    ldh [$81], a                                  ; $75e6: $e0 $81
    ld h, b                                       ; $75e8: $60
    ld [bc], a                                    ; $75e9: $02
    ret nz                                        ; $75ea: $c0

    ld [$9200], sp                                ; $75eb: $08 $00 $92
    add b                                         ; $75ee: $80
    ldh a, [$60]                                  ; $75ef: $f0 $60
    ldh a, [$94]                                  ; $75f1: $f0 $94
    rst $38                                       ; $75f3: $ff
    ret z                                         ; $75f4: $c8

    rst $38                                       ; $75f5: $ff
    and h                                         ; $75f6: $a4
    rst $38                                       ; $75f7: $ff
    ld [hl], d                                    ; $75f8: $72
    ld a, a                                       ; $75f9: $7f
    dec e                                         ; $75fa: $1d
    rra                                           ; $75fb: $1f
    ld a, [bc]                                    ; $75fc: $0a
    rrca                                          ; $75fd: $0f
    dec b                                         ; $75fe: $05
    rlca                                          ; $75ff: $07
    ld [bc], a                                    ; $7600: $02
    inc bc                                        ; $7601: $03
    stop                                          ; $7602: $10 $00
    adc [hl]                                      ; $7604: $8e
    ld b, $1e                                     ; $7605: $06 $1e
    ld bc, $111f                                  ; $7607: $01 $1f $11
    rra                                           ; $760a: $1f
    add hl, bc                                    ; $760b: $09
    rra                                           ; $760c: $1f
    inc bc                                        ; $760d: $03
    rra                                           ; $760e: $1f
    dec de                                        ; $760f: $1b
    rra                                           ; $7610: $1f
    ld b, $1e                                     ; $7611: $06 $1e
    ld [bc], a                                    ; $7613: $02
    jr jr_0ef_7618                                ; $7614: $18 $02

    db $10                                        ; $7616: $10
    ld a, [bc]                                    ; $7617: $0a

jr_0ef_7618:
    nop                                           ; $7618: $00
    rst $38                                       ; $7619: $ff
    dec h                                         ; $761a: $25
    db $10                                        ; $761b: $10
    db $ed                                        ; $761c: $ed
    dec l                                         ; $761d: $2d
    call nc, $f023                                ; $761e: $d4 $23 $f0
    db $f4                                        ; $7621: $f4
    and $fc                                       ; $7622: $e6 $fc
    and $00                                       ; $7624: $e6 $00
    or $ed                                        ; $7626: $f6 $ed
    or $f5                                        ; $7628: $f6 $f5
    or $fd                                        ; $762a: $f6 $fd

Call_0ef_762c:
    or $05                                        ; $762c: $f6 $05
    ld bc, $0607                                  ; $762e: $01 $07 $06
    rst $28                                       ; $7631: $ef
    ld b, $f7                                     ; $7632: $06 $f7
    ld b, $ff                                     ; $7634: $06 $ff
    ld de, $1107                                  ; $7636: $11 $07 $11
    dec bc                                        ; $7639: $0b
    ld d, $f2                                     ; $763a: $16 $f2
    ld d, $f6                                     ; $763c: $16 $f6
    ld d, $ff                                     ; $763e: $16 $ff
    ld [bc], a                                    ; $7640: $02
    rlca                                          ; $7641: $07
    ld [bc], a                                    ; $7642: $02
    rra                                           ; $7643: $1f
    sbc h                                         ; $7644: $9c
    dec hl                                        ; $7645: $2b
    scf                                           ; $7646: $37
    ld e, c                                       ; $7647: $59
    ld h, a                                       ; $7648: $67
    ld a, a                                       ; $7649: $7f
    ld b, c                                       ; $764a: $41
    db $dd                                        ; $764b: $dd
    db $e3                                        ; $764c: $e3
    ld c, e                                       ; $764d: $4b
    rst $30                                       ; $764e: $f7
    ld e, a                                       ; $764f: $5f
    rst $38                                       ; $7650: $ff
    rst $20                                       ; $7651: $e7
    sbc a                                         ; $7652: $9f
    cp $0f                                        ; $7653: $fe $0f
    rst $38                                       ; $7655: $ff
    rrca                                          ; $7656: $0f
    rst $38                                       ; $7657: $ff
    rra                                           ; $7658: $1f
    ccf                                           ; $7659: $3f
    rst $38                                       ; $765a: $ff
    cp $7f                                        ; $765b: $fe $7f
    rst $18                                       ; $765d: $df
    ccf                                           ; $765e: $3f
    cp $1f                                        ; $765f: $fe $1f
    ld [bc], a                                    ; $7661: $02
    ld [bc], a                                    ; $7662: $02
    ld [bc], a                                    ; $7663: $02
    rlca                                          ; $7664: $07
    sbc h                                         ; $7665: $9c
    dec bc                                        ; $7666: $0b
    inc c                                         ; $7667: $0c
    dec d                                         ; $7668: $15
    rra                                           ; $7669: $1f
    ld [hl-], a                                   ; $766a: $32
    ccf                                           ; $766b: $3f
    ld a, a                                       ; $766c: $7f
    ld c, b                                       ; $766d: $48
    ld a, [hl]                                    ; $766e: $7e
    ld d, c                                       ; $766f: $51
    ld e, e                                       ; $7670: $5b
    ld h, a                                       ; $7671: $67
    scf                                           ; $7672: $37
    ccf                                           ; $7673: $3f
    call $97f7                                    ; $7674: $cd $f7 $97
    ld hl, sp+$7c                                 ; $7677: $f8 $7c
    sbc a                                         ; $7679: $9f
    rst $30                                       ; $767a: $f7
    rrca                                          ; $767b: $0f
    dec l                                         ; $767c: $2d
    di                                            ; $767d: $f3
    ld e, b                                       ; $767e: $58
    rst $38                                       ; $767f: $ff
    push af                                       ; $7680: $f5
    adc a                                         ; $7681: $8f
    ld [bc], a                                    ; $7682: $02
    ld [$0002], sp                                ; $7683: $08 $02 $00
    ld [bc], a                                    ; $7686: $02
    inc c                                         ; $7687: $0c
    add c                                         ; $7688: $81
    inc b                                         ; $7689: $04
    inc bc                                        ; $768a: $03
    inc c                                         ; $768b: $0c
    add h                                         ; $768c: $84
    ld c, $02                                     ; $768d: $0e $02
    inc b                                         ; $768f: $04
    inc c                                         ; $7690: $0c
    ld [bc], a                                    ; $7691: $02
    ld [$0c02], sp                                ; $7692: $08 $02 $0c
    add c                                         ; $7695: $81
    inc b                                         ; $7696: $04
    ld [bc], a                                    ; $7697: $02
    inc c                                         ; $7698: $0c
    add c                                         ; $7699: $81
    inc b                                         ; $769a: $04
    inc b                                         ; $769b: $04
    ld [$0c02], sp                                ; $769c: $08 $02 $0c
    ld [bc], a                                    ; $769f: $02
    ld c, $82                                     ; $76a0: $0e $82
    rrca                                          ; $76a2: $0f
    dec c                                         ; $76a3: $0d
    ld [bc], a                                    ; $76a4: $02
    ld [bc], a                                    ; $76a5: $02
    adc c                                         ; $76a6: $89
    inc b                                         ; $76a7: $04
    ld b, $04                                     ; $76a8: $06 $04
    ld b, $08                                     ; $76aa: $06 $08
    ld c, $08                                     ; $76ac: $0e $08
    ld c, $14                                     ; $76ae: $0e $14
    inc bc                                        ; $76b0: $03
    ld e, $92                                     ; $76b1: $1e $92
    jr @+$20                                      ; $76b3: $18 $1e

    ld [de], a                                    ; $76b5: $12
    inc e                                         ; $76b6: $1c
    ld c, $08                                     ; $76b7: $0e $08
    dec bc                                        ; $76b9: $0b
    ld c, $07                                     ; $76ba: $0e $07
    inc b                                         ; $76bc: $04
    dec b                                         ; $76bd: $05
    ld b, $e2                                     ; $76be: $06 $e2
    db $e3                                        ; $76c0: $e3
    sub c                                         ; $76c1: $91
    pop af                                        ; $76c2: $f1
    ld l, h                                       ; $76c3: $6c
    ld a, h                                       ; $76c4: $7c
    inc d                                         ; $76c5: $14
    ld bc, $fecc                                  ; $76c6: $01 $cc $fe
    rra                                           ; $76c9: $1f
    db $fc                                        ; $76ca: $fc
    cpl                                           ; $76cb: $2f
    db $f4                                        ; $76cc: $f4
    adc a                                         ; $76cd: $8f
    cp $27                                        ; $76ce: $fe $27
    ld a, a                                       ; $76d0: $7f
    jp $d3bd                                      ; $76d1: $c3 $bd $d3


    ei                                            ; $76d4: $fb
    inc b                                         ; $76d5: $04
    rst $38                                       ; $76d6: $ff
    inc b                                         ; $76d7: $04
    pop af                                        ; $76d8: $f1
    ld c, $3b                                     ; $76d9: $0e $3b
    rst $38                                       ; $76db: $ff
    ldh [rIE], a                                  ; $76dc: $e0 $ff
    ld c, [hl]                                    ; $76de: $4e
    push af                                       ; $76df: $f5
    cp a                                          ; $76e0: $bf
    ret nz                                        ; $76e1: $c0

    ld [hl], a                                    ; $76e2: $77
    adc b                                         ; $76e3: $88
    ld l, a                                       ; $76e4: $6f
    sub b                                         ; $76e5: $90
    db $fd                                        ; $76e6: $fd
    ld [bc], a                                    ; $76e7: $02
    rst $28                                       ; $76e8: $ef
    ld [de], a                                    ; $76e9: $12
    push bc                                       ; $76ea: $c5
    ld a, [hl-]                                   ; $76eb: $3a
    db $eb                                        ; $76ec: $eb
    sub [hl]                                      ; $76ed: $96
    ccf                                           ; $76ee: $3f
    add $0e                                       ; $76ef: $c6 $0e
    rst $30                                       ; $76f1: $f7
    sub b                                         ; $76f2: $90

Jump_0ef_76f3:
    rst $38                                       ; $76f3: $ff
    or b                                          ; $76f4: $b0
    ret nc                                        ; $76f5: $d0

    ldh a, [$50]                                  ; $76f6: $f0 $50
    add sp, $78                                   ; $76f8: $e8 $78
    add sp, -$08                                  ; $76fa: $e8 $f8
    call nc, Call_0ef_7cec                        ; $76fc: $d4 $ec $7c
    db $e4                                        ; $76ff: $e4
    or [hl]                                       ; $7700: $b6
    ld l, [hl]                                    ; $7701: $6e
    ld a, [$d53e]                                 ; $7702: $fa $3e $d5
    dec sp                                        ; $7705: $3b
    rst $38                                       ; $7706: $ff
    ld de, $9d77                                  ; $7707: $11 $77 $9d
    ld a, [hl-]                                   ; $770a: $3a
    rst $18                                       ; $770b: $df
    ei                                            ; $770c: $fb
    inc e                                         ; $770d: $1c
    db $db                                        ; $770e: $db
    dec a                                         ; $770f: $3d
    cp l                                          ; $7710: $bd
    ld a, [hl]                                    ; $7711: $7e
    ld l, e                                       ; $7712: $6b
    db $ec                                        ; $7713: $ec
    ld [$9102], sp                                ; $7714: $08 $02 $91
    ld bc, $ff03                                  ; $7717: $01 $03 $ff
    pop hl                                        ; $771a: $e1
    db $fd                                        ; $771b: $fd
    db $eb                                        ; $771c: $eb

jr_0ef_771d:
    db $ed                                        ; $771d: $ed
    ei                                            ; $771e: $fb
    cp $f6                                        ; $771f: $fe $f6
    ld a, b                                       ; $7721: $78
    ld hl, sp+$20                                 ; $7722: $f8 $20
    ldh [$a0], a                                  ; $7724: $e0 $a0
    ldh [$60], a                                  ; $7726: $e0 $60
    inc bc                                        ; $7728: $03
    ldh [$8c], a                                  ; $7729: $e0 $8c
    jr nc, jr_0ef_771d                            ; $772b: $30 $f0

    ld c, $fe                                     ; $772d: $0e $fe
    rst $08                                       ; $772f: $cf
    rst $38                                       ; $7730: $ff
    dec hl                                        ; $7731: $2b
    ccf                                           ; $7732: $3f
    add hl, de                                    ; $7733: $19
    rra                                           ; $7734: $1f
    ld c, $0f                                     ; $7735: $0e $0f
    ld [bc], a                                    ; $7737: $02
    inc bc                                        ; $7738: $03
    ld [bc], a                                    ; $7739: $02
    ld bc, $0006                                  ; $773a: $01 $06 $00
    ld a, [bc]                                    ; $773d: $0a
    ld bc, $0302                                  ; $773e: $01 $02 $03
    and e                                         ; $7741: $a3
    ld [bc], a                                    ; $7742: $02
    inc bc                                        ; $7743: $03
    inc e                                         ; $7744: $1c
    rst $30                                       ; $7745: $f7
    adc a                                         ; $7746: $8f
    di                                            ; $7747: $f3
    rst $20                                       ; $7748: $e7
    ei                                            ; $7749: $fb
    adc a                                         ; $774a: $8f
    ld sp, hl                                     ; $774b: $f9
    cp l                                          ; $774c: $bd
    jp $c7ba                                      ; $774d: $c3 $ba $c7


    ld a, [$f6d7]                                 ; $7750: $fa $d7 $f6
    cp e                                          ; $7753: $bb
    xor a                                         ; $7754: $af
    rst $18                                       ; $7755: $df
    ld c, a                                       ; $7756: $4f
    or c                                          ; $7757: $b1
    db $dd                                        ; $7758: $dd
    inc hl                                        ; $7759: $23
    ld e, e                                       ; $775a: $5b
    and a                                         ; $775b: $a7
    and [hl]                                      ; $775c: $a6
    cp $1e                                        ; $775d: $fe $1e
    cp $ec                                        ; $775f: $fe $ec
    inc a                                         ; $7761: $3c
    db $ec                                        ; $7762: $ec
    sbc h                                         ; $7763: $9c
    sub a                                         ; $7764: $97
    rlca                                          ; $7765: $07
    rst $38                                       ; $7766: $ff
    or h                                          ; $7767: $b4
    cp $ff                                        ; $7768: $fe $ff
    cp $ff                                        ; $776a: $fe $ff
    ld a, $ff                                     ; $776c: $3e $ff
    adc a                                         ; $776e: $8f
    rst $38                                       ; $776f: $ff
    ld d, b                                       ; $7770: $50
    rst $38                                       ; $7771: $ff
    ret nz                                        ; $7772: $c0

    rst $38                                       ; $7773: $ff
    db $f4                                        ; $7774: $f4
    rst $38                                       ; $7775: $ff
    dec l                                         ; $7776: $2d
    ccf                                           ; $7777: $3f
    dec de                                        ; $7778: $1b
    rra                                           ; $7779: $1f
    ld b, $07                                     ; $777a: $06 $07
    dec b                                         ; $777c: $05
    rlca                                          ; $777d: $07
    ld [$810f], sp                                ; $777e: $08 $0f $81
    rst $38                                       ; $7781: $ff
    ld h, b                                       ; $7782: $60
    rst $38                                       ; $7783: $ff
    call c, Call_0ef_73ff                         ; $7784: $dc $ff $73
    rst $38                                       ; $7787: $ff
    db $fc                                        ; $7788: $fc
    rst $38                                       ; $7789: $ff
    db $eb                                        ; $778a: $eb
    rst $38                                       ; $778b: $ff
    ld e, h                                       ; $778c: $5c
    cp a                                          ; $778d: $bf
    xor [hl]                                      ; $778e: $ae
    ld a, a                                       ; $778f: $7f
    ret                                           ; $7790: $c9


    ld a, c                                       ; $7791: $79
    ld d, $fe                                     ; $7792: $16 $fe
    ld a, c                                       ; $7794: $79
    rst $30                                       ; $7795: $f7
    sbc a                                         ; $7796: $9f
    ei                                            ; $7797: $fb
    xor $9e                                       ; $7798: $ee $9e
    or b                                          ; $779a: $b0
    ret nc                                        ; $779b: $d0

    ld [bc], a                                    ; $779c: $02
    ld h, b                                       ; $779d: $60
    ld [bc], a                                    ; $779e: $02
    nop                                           ; $779f: $00
    ld [bc], a                                    ; $77a0: $02
    ld [$0689], sp                                ; $77a1: $08 $89 $06
    ld c, $01                                     ; $77a4: $0e $01
    rrca                                          ; $77a6: $0f
    ld bc, $0d0f                                  ; $77a7: $01 $0f $0d
    rrca                                          ; $77aa: $0f
    ld [bc], a                                    ; $77ab: $02
    inc bc                                        ; $77ac: $03
    ld c, $81                                     ; $77ad: $0e $81
    inc b                                         ; $77af: $04
    inc bc                                        ; $77b0: $03
    inc c                                         ; $77b1: $0c
    ld [bc], a                                    ; $77b2: $02
    ld [$000c], sp                                ; $77b3: $08 $0c $00
    sub [hl]                                      ; $77b6: $96
    inc de                                        ; $77b7: $13
    dec e                                         ; $77b8: $1d
    inc [hl]                                      ; $77b9: $34
    dec sp                                        ; $77ba: $3b
    ld a, [hl-]                                   ; $77bb: $3a
    daa                                           ; $77bc: $27
    ld e, e                                       ; $77bd: $5b
    ld l, h                                       ; $77be: $6c
    ld a, [hl+]                                   ; $77bf: $2a
    dec [hl]                                      ; $77c0: $35
    ld d, l                                       ; $77c1: $55
    ld a, a                                       ; $77c2: $7f
    ld l, b                                       ; $77c3: $68
    ld d, a                                       ; $77c4: $57
    and [hl]                                      ; $77c5: $a6
    ei                                            ; $77c6: $fb
    ld e, a                                       ; $77c7: $5f
    ld a, a                                       ; $77c8: $7f
    ld [hl], l                                    ; $77c9: $75
    ld l, [hl]                                    ; $77ca: $6e
    ld e, a                                       ; $77cb: $5f
    ld h, [hl]                                    ; $77cc: $66
    ld [bc], a                                    ; $77cd: $02
    add hl, sp                                    ; $77ce: $39
    ld [$0200], sp                                ; $77cf: $08 $00 $02
    ld c, $91                                     ; $77d2: $0e $91
    ld b, $0e                                     ; $77d4: $06 $0e
    ld b, $0e                                     ; $77d6: $06 $0e
    ld a, [bc]                                    ; $77d8: $0a
    ld c, $0a                                     ; $77d9: $0e $0a
    ld c, $05                                     ; $77db: $0e $05
    dec bc                                        ; $77dd: $0b
    ld a, [bc]                                    ; $77de: $0a
    ld b, $05                                     ; $77df: $06 $05
    rrca                                          ; $77e1: $0f
    ld a, [bc]                                    ; $77e2: $0a
    ld c, $06                                     ; $77e3: $0e $06
    ld [bc], a                                    ; $77e5: $02
    ld c, $81                                     ; $77e6: $0e $81
    ld b, $02                                     ; $77e8: $06 $02
    inc c                                         ; $77ea: $0c
    ld [$8e00], sp                                ; $77eb: $08 $00 $8e
    ld c, $0b                                     ; $77ee: $0e $0b
    ld c, $09                                     ; $77f0: $0e $09
    inc de                                        ; $77f2: $13
    ld e, $1d                                     ; $77f3: $1e $1d
    dec de                                        ; $77f5: $1b
    ld [de], a                                    ; $77f6: $12
    dec e                                         ; $77f7: $1d
    dec c                                         ; $77f8: $0d
    rrca                                          ; $77f9: $0f
    ld [bc], a                                    ; $77fa: $02
    inc bc                                        ; $77fb: $03
    ld [bc], a                                    ; $77fc: $02
    ld bc, $0010                                  ; $77fd: $01 $10 $00
    rst $38                                       ; $7800: $ff
    dec hl                                        ; $7801: $2b
    inc de                                        ; $7802: $13
    db $ed                                        ; $7803: $ed
    dec l                                         ; $7804: $2d
    call nc, $f223                                ; $7805: $d4 $23 $f2
    rst $28                                       ; $7808: $ef
    ld [bc], a                                    ; $7809: $02
    rst $28                                       ; $780a: $ef
    ld [de], a                                    ; $780b: $12
    or $14                                        ; $780c: $f6 $14
    push af                                       ; $780e: $f5
    rla                                           ; $780f: $17
    db $f4                                        ; $7810: $f4
    add hl, de                                    ; $7811: $19
    di                                            ; $7812: $f3
    dec e                                         ; $7813: $1d
    ld a, [c]                                     ; $7814: $f2
    ld [$faf7], a                                 ; $7815: $ea $f7 $fa
    rst $30                                       ; $7818: $f7
    ld a, [bc]                                    ; $7819: $0a
    rst $30                                       ; $781a: $f7
    and $ff                                       ; $781b: $e6 $ff
    or $ff                                        ; $781d: $f6 $ff
    ld b, $ff                                     ; $781f: $06 $ff
    ld d, $03                                     ; $7821: $16 $03
    jr jr_0ef_7827                                ; $7823: $18 $02

    db $f4                                        ; $7825: $f4
    rlca                                          ; $7826: $07

jr_0ef_7827:
    inc b                                         ; $7827: $04
    rlca                                          ; $7828: $07
    inc d                                         ; $7829: $14
    rlca                                          ; $782a: $07
    inc b                                         ; $782b: $04
    rrca                                          ; $782c: $0f
    ld [bc], a                                    ; $782d: $02
    ld bc, $039c                                  ; $782e: $01 $9c $03
    ld [bc], a                                    ; $7831: $02
    rlca                                          ; $7832: $07
    ld b, $0a                                     ; $7833: $06 $0a
    rrca                                          ; $7835: $0f
    dec d                                         ; $7836: $15
    ld e, $13                                     ; $7837: $1e $13
    inc e                                         ; $7839: $1c
    inc sp                                        ; $783a: $33
    inc a                                         ; $783b: $3c
    ld [hl], a                                    ; $783c: $77
    ld a, a                                       ; $783d: $7f
    ld h, [hl]                                    ; $783e: $66
    ld e, c                                       ; $783f: $59
    ld a, a                                       ; $7840: $7f
    ld b, b                                       ; $7841: $40
    ccf                                           ; $7842: $3f
    inc h                                         ; $7843: $24
    cpl                                           ; $7844: $2f
    jr nc, jr_0ef_785e                            ; $7845: $30 $17

    ld a, [de]                                    ; $7847: $1a
    add hl, bc                                    ; $7848: $09
    ld c, $24                                     ; $7849: $0e $24
    daa                                           ; $784b: $27
    ld [bc], a                                    ; $784c: $02
    ld [hl], e                                    ; $784d: $73
    add h                                         ; $784e: $84
    xor a                                         ; $784f: $af
    rst $38                                       ; $7850: $ff
    ld [c], a                                     ; $7851: $e2
    rst $38                                       ; $7852: $ff
    ld [bc], a                                    ; $7853: $02
    rra                                           ; $7854: $1f
    ld [bc], a                                    ; $7855: $02
    ld bc, $0012                                  ; $7856: $01 $12 $00
    ld b, $01                                     ; $7859: $06 $01
    sbc [hl]                                      ; $785b: $9e
    db $d3                                        ; $785c: $d3
    rst $38                                       ; $785d: $ff

jr_0ef_785e:
    adc a                                         ; $785e: $8f
    rst $38                                       ; $785f: $ff
    or $9e                                        ; $7860: $f6 $9e
    halt                                          ; $7862: $76
    adc $3e                                       ; $7863: $ce $3e
    sbc $46                                       ; $7865: $de $46
    cp [hl]                                       ; $7867: $be
    and [hl]                                      ; $7868: $a6
    ld a, [hl]                                    ; $7869: $7e
    cp d                                          ; $786a: $ba
    adc $aa                                       ; $786b: $ce $aa
    ld e, [hl]                                    ; $786d: $5e
    ld d, l                                       ; $786e: $55
    ei                                            ; $786f: $fb
    adc d                                         ; $7870: $8a
    halt                                          ; $7871: $76
    ld h, l                                       ; $7872: $65
    cp a                                          ; $7873: $bf
    ld a, [$56fe]                                 ; $7874: $fa $fe $56
    xor $fe                                       ; $7877: $ee $fe
    ld h, [hl]                                    ; $7879: $66
    ld [bc], a                                    ; $787a: $02
    sbc h                                         ; $787b: $9c
    add hl, bc                                    ; $787c: $09
    add b                                         ; $787d: $80
    add d                                         ; $787e: $82
    nop                                           ; $787f: $00
    add b                                         ; $7880: $80
    ld [bc], a                                    ; $7881: $02
    nop                                           ; $7882: $00
    inc bc                                        ; $7883: $03
    add b                                         ; $7884: $80
    add e                                         ; $7885: $83
    nop                                           ; $7886: $00
    add b                                         ; $7887: $80
    nop                                           ; $7888: $00
    inc b                                         ; $7889: $04
    add b                                         ; $788a: $80
    add e                                         ; $788b: $83
    nop                                           ; $788c: $00
    add b                                         ; $788d: $80
    nop                                           ; $788e: $00
    ld [bc], a                                    ; $788f: $02
    add b                                         ; $7890: $80
    inc b                                         ; $7891: $04
    nop                                           ; $7892: $00
    inc b                                         ; $7893: $04
    add b                                         ; $7894: $80
    add c                                         ; $7895: $81
    nop                                           ; $7896: $00
    inc bc                                        ; $7897: $03
    add b                                         ; $7898: $80
    add c                                         ; $7899: $81
    nop                                           ; $789a: $00
    ld [bc], a                                    ; $789b: $02
    add b                                         ; $789c: $80
    add c                                         ; $789d: $81
    nop                                           ; $789e: $00
    ld [bc], a                                    ; $789f: $02
    add b                                         ; $78a0: $80
    add c                                         ; $78a1: $81
    nop                                           ; $78a2: $00
    inc bc                                        ; $78a3: $03

jr_0ef_78a4:
    add b                                         ; $78a4: $80
    add c                                         ; $78a5: $81
    nop                                           ; $78a6: $00
    inc bc                                        ; $78a7: $03
    add b                                         ; $78a8: $80
    ld a, [bc]                                    ; $78a9: $0a
    nop                                           ; $78aa: $00
    ld [bc], a                                    ; $78ab: $02
    add b                                         ; $78ac: $80
    ld [bc], a                                    ; $78ad: $02
    nop                                           ; $78ae: $00
    inc b                                         ; $78af: $04
    add b                                         ; $78b0: $80
    add c                                         ; $78b1: $81
    nop                                           ; $78b2: $00
    rlca                                          ; $78b3: $07
    add b                                         ; $78b4: $80
    stop                                          ; $78b5: $10 $00
    ld [bc], a                                    ; $78b7: $02
    add b                                         ; $78b8: $80
    ld e, $00                                     ; $78b9: $1e $00
    ld [bc], a                                    ; $78bb: $02
    ld bc, $0383                                  ; $78bc: $01 $83 $03
    ld [bc], a                                    ; $78bf: $02
    inc bc                                        ; $78c0: $03
    ld [bc], a                                    ; $78c1: $02
    ld [bc], a                                    ; $78c2: $02
    add c                                         ; $78c3: $81
    inc bc                                        ; $78c4: $03
    ld [bc], a                                    ; $78c5: $02
    ld bc, $0695                                  ; $78c6: $01 $95 $06
    rlca                                          ; $78c9: $07
    inc a                                         ; $78ca: $3c
    ccf                                           ; $78cb: $3f
    ei                                            ; $78cc: $fb
    db $fc                                        ; $78cd: $fc
    rst $18                                       ; $78ce: $df
    jr c, @-$15                                   ; $78cf: $38 $e9

    rra                                           ; $78d1: $1f
    ld a, [$2f0f]                                 ; $78d2: $fa $0f $2f
    call c, Call_0ef_7cdf                         ; $78d5: $dc $df $7c
    rst $38                                       ; $78d8: $ff
    inc a                                         ; $78d9: $3c
    cp a                                          ; $78da: $bf
    ld a, h                                       ; $78db: $7c
    ld [hl], h                                    ; $78dc: $74
    inc bc                                        ; $78dd: $03
    rst $38                                       ; $78de: $ff
    xor [hl]                                      ; $78df: $ae
    ld a, l                                       ; $78e0: $7d
    rst $38                                       ; $78e1: $ff
    cp $3f                                        ; $78e2: $fe $3f
    push af                                       ; $78e4: $f5
    ld e, $ed                                     ; $78e5: $1e $ed
    ld e, [hl]                                    ; $78e7: $5e
    rst $30                                       ; $78e8: $f7
    inc c                                         ; $78e9: $0c
    ld a, a                                       ; $78ea: $7f
    call nc, $e23f                                ; $78eb: $d4 $3f $e2
    rst $00                                       ; $78ee: $c7
    ld sp, hl                                     ; $78ef: $f9
    ld [hl], l                                    ; $78f0: $75
    cp $23                                        ; $78f1: $fe $23
    db $fc                                        ; $78f3: $fc
    di                                            ; $78f4: $f3
    db $ec                                        ; $78f5: $ec
    ld a, d                                       ; $78f6: $7a
    ld h, l                                       ; $78f7: $65
    rst $38                                       ; $78f8: $ff
    db $fd                                        ; $78f9: $fd
    xor a                                         ; $78fa: $af
    rst $30                                       ; $78fb: $f7
    and e                                         ; $78fc: $a3
    rst $38                                       ; $78fd: $ff
    rst $08                                       ; $78fe: $cf
    rst $30                                       ; $78ff: $f7
    reti                                          ; $7900: $d9


    rst $28                                       ; $7901: $ef
    add l                                         ; $7902: $85
    ei                                            ; $7903: $fb
    push de                                       ; $7904: $d5
    cp e                                          ; $7905: $bb
    cp [hl]                                       ; $7906: $be
    pop de                                        ; $7907: $d1
    ld c, a                                       ; $7908: $4f
    or c                                          ; $7909: $b1
    db $dd                                        ; $790a: $dd
    inc hl                                        ; $790b: $23
    ld e, e                                       ; $790c: $5b
    and a                                         ; $790d: $a7
    stop                                          ; $790e: $10 $00
    ld [bc], a                                    ; $7910: $02
    inc d                                         ; $7911: $14
    ld [bc], a                                    ; $7912: $02
    jr c, jr_0ef_78a4                             ; $7913: $38 $8f

    ld e, [hl]                                    ; $7915: $5e
    ld h, [hl]                                    ; $7916: $66
    xor d                                         ; $7917: $aa
    cp $96                                        ; $7918: $fe $96
    cp $ff                                        ; $791a: $fe $ff
    ld b, c                                       ; $791c: $41
    ld a, [c]                                     ; $791d: $f2
    adc [hl]                                      ; $791e: $8e
    call c, $bc3c                                 ; $791f: $dc $3c $bc
    db $fc                                        ; $7922: $fc
    ld l, d                                       ; $7923: $6a
    ld [bc], a                                    ; $7924: $02
    cp [hl]                                       ; $7925: $be
    xor [hl]                                      ; $7926: $ae
    jp nz, $fce4                                  ; $7927: $c2 $e4 $fc

    cp h                                          ; $792a: $bc
    ld a, h                                       ; $792b: $7c
    ld l, [hl]                                    ; $792c: $6e
    sbc [hl]                                      ; $792d: $9e
    rst $00                                       ; $792e: $c7
    rst $38                                       ; $792f: $ff
    xor a                                         ; $7930: $af
    ld a, [hl]                                    ; $7931: $7e
    rst $28                                       ; $7932: $ef
    inc de                                        ; $7933: $13
    rst $38                                       ; $7934: $ff
    ld de, $7987                                  ; $7935: $11 $87 $79
    rst $28                                       ; $7938: $ef
    rst $38                                       ; $7939: $ff
    sub e                                         ; $793a: $93
    rst $38                                       ; $793b: $ff
    ld a, c                                       ; $793c: $79
    sub a                                         ; $793d: $97
    cp $01                                        ; $793e: $fe $01
    sbc a                                         ; $7940: $9f
    ld h, b                                       ; $7941: $60
    cp a                                          ; $7942: $bf
    ld b, b                                       ; $7943: $40
    rst $30                                       ; $7944: $f7
    ld [$49be], sp                                ; $7945: $08 $be $49
    inc [hl]                                      ; $7948: $34
    res 5, a                                      ; $7949: $cb $af
    ret c                                         ; $794b: $d8

    rst $38                                       ; $794c: $ff
    ld a, a                                       ; $794d: $7f
    ret nz                                        ; $794e: $c0

    rst $38                                       ; $794f: $ff
    add b                                         ; $7950: $80
    rst $38                                       ; $7951: $ff
    rst $10                                       ; $7952: $d7
    rst $38                                       ; $7953: $ff
    db $f4                                        ; $7954: $f4
    dec b                                         ; $7955: $05
    rst $38                                       ; $7956: $ff
    xor d                                         ; $7957: $aa
    cp $ff                                        ; $7958: $fe $ff
    cp $ff                                        ; $795a: $fe $ff
    cp $ff                                        ; $795c: $fe $ff
    cp $ff                                        ; $795e: $fe $ff
    db $fc                                        ; $7960: $fc
    rst $38                                       ; $7961: $ff
    db $fc                                        ; $7962: $fc
    rst $38                                       ; $7963: $ff
    db $fd                                        ; $7964: $fd
    cp $0d                                        ; $7965: $fe $0d
    rrca                                          ; $7967: $0f
    dec bc                                        ; $7968: $0b
    dec c                                         ; $7969: $0d
    dec b                                         ; $796a: $05
    rlca                                          ; $796b: $07
    dec b                                         ; $796c: $05
    ld b, $08                                     ; $796d: $06 $08
    rrca                                          ; $796f: $0f
    rst $28                                       ; $7970: $ef
    cp l                                          ; $7971: $bd
    push hl                                       ; $7972: $e5
    sbc e                                         ; $7973: $9b
    ld a, [hl-]                                   ; $7974: $3a
    rst $20                                       ; $7975: $e7
    call c, Call_000_21b7                         ; $7976: $dc $b7 $21
    rst $18                                       ; $7979: $df
    rst $10                                       ; $797a: $d7
    rst $38                                       ; $797b: $ff
    add hl, hl                                    ; $797c: $29
    ccf                                           ; $797d: $3f
    ld e, $19                                     ; $797e: $1e $19
    dec bc                                        ; $7980: $0b
    dec c                                         ; $7981: $0d
    ld [bc], a                                    ; $7982: $02
    ld b, $0c                                     ; $7983: $06 $0c
    nop                                           ; $7985: $00
    ld b, $80                                     ; $7986: $06 $80
    ld a, [de]                                    ; $7988: $1a
    nop                                           ; $7989: $00
    inc b                                         ; $798a: $04
    add b                                         ; $798b: $80
    or l                                          ; $798c: $b5
    ld h, b                                       ; $798d: $60
    ldh [$d0], a                                  ; $798e: $e0 $d0
    or b                                          ; $7990: $b0
    ld l, b                                       ; $7991: $68
    sbc b                                         ; $7992: $98
    db $ec                                        ; $7993: $ec
    sbc h                                         ; $7994: $9c
    jp c, $e6fe                                   ; $7995: $da $fe $e6

    cp $ae                                        ; $7998: $fe $ae
    or d                                          ; $799a: $b2
    db $dd                                        ; $799b: $dd
    di                                            ; $799c: $f3
    ld e, l                                       ; $799d: $5d
    rst $20                                       ; $799e: $e7
    db $fd                                        ; $799f: $fd
    ld h, e                                       ; $79a0: $63
    db $ed                                        ; $79a1: $ed
    ld a, e                                       ; $79a2: $7b
    rst $28                                       ; $79a3: $ef
    ld [hl], e                                    ; $79a4: $73
    rst $18                                       ; $79a5: $df
    ld d, l                                       ; $79a6: $55
    rst $30                                       ; $79a7: $f7
    ld sp, hl                                     ; $79a8: $f9
    rra                                           ; $79a9: $1f
    rst $38                                       ; $79aa: $ff
    add b                                         ; $79ab: $80
    rst $38                                       ; $79ac: $ff
    adc l                                         ; $79ad: $8d
    rst $38                                       ; $79ae: $ff
    db $fc                                        ; $79af: $fc
    rst $38                                       ; $79b0: $ff
    sub e                                         ; $79b1: $93
    rst $38                                       ; $79b2: $ff
    db $fd                                        ; $79b3: $fd
    rst $38                                       ; $79b4: $ff
    ld l, a                                       ; $79b5: $6f
    rst $28                                       ; $79b6: $ef
    jr nz, @-$1e                                  ; $79b7: $20 $e0

    and b                                         ; $79b9: $a0
    ld h, b                                       ; $79ba: $60
    ldh [rNR41], a                                ; $79bb: $e0 $20
    ldh [rNR41], a                                ; $79bd: $e0 $20
    ldh [rNR41], a                                ; $79bf: $e0 $20
    ldh [rSC], a                                  ; $79c1: $e0 $02
    and b                                         ; $79c3: $a0
    add c                                         ; $79c4: $81
    ld h, b                                       ; $79c5: $60
    ld [bc], a                                    ; $79c6: $02
    ret nz                                        ; $79c7: $c0

    add e                                         ; $79c8: $83
    and b                                         ; $79c9: $a0
    ldh [$60], a                                  ; $79ca: $e0 $60
    ld [bc], a                                    ; $79cc: $02
    and b                                         ; $79cd: $a0
    add c                                         ; $79ce: $81
    ld h, b                                       ; $79cf: $60
    inc b                                         ; $79d0: $04
    nop                                           ; $79d1: $00
    inc b                                         ; $79d2: $04
    ld [$0686], sp                                ; $79d3: $08 $86 $06
    ld c, $09                                     ; $79d6: $0e $09
    rlca                                          ; $79d8: $07
    rrca                                          ; $79d9: $0f
    dec bc                                        ; $79da: $0b
    ld [bc], a                                    ; $79db: $02
    ld c, $0c                                     ; $79dc: $0e $0c
    nop                                           ; $79de: $00
    ld [bc], a                                    ; $79df: $02
    ld hl, sp-$7b                                 ; $79e0: $f8 $85
    inc b                                         ; $79e2: $04
    db $fc                                        ; $79e3: $fc
    ld d, h                                       ; $79e4: $54
    db $fc                                        ; $79e5: $fc
    ld a, [bc]                                    ; $79e6: $0a
    inc bc                                        ; $79e7: $03
    cp $84                                        ; $79e8: $fe $84
    ld d, [hl]                                    ; $79ea: $56
    cp $d2                                        ; $79eb: $fe $d2
    cp $02                                        ; $79ed: $fe $02
    inc a                                         ; $79ef: $3c

jr_0ef_79f0:
    stop                                          ; $79f0: $10 $00
    rst $38                                       ; $79f2: $ff
    dec h                                         ; $79f3: $25
    db $10                                        ; $79f4: $10
    db $ed                                        ; $79f5: $ed
    dec l                                         ; $79f6: $2d
    call nc, $f123                                ; $79f7: $d4 $23 $f1
    rst $28                                       ; $79fa: $ef
    ld [$e6f7], a                                 ; $79fb: $ea $f7 $e6
    rst $38                                       ; $79fe: $ff
    db $f4                                        ; $79ff: $f4
    rlca                                          ; $7a00: $07
    or $ee                                        ; $7a01: $f6 $ee
    ld a, [$f6f7]                                 ; $7a03: $fa $f7 $f6
    rst $38                                       ; $7a06: $ff
    inc b                                         ; $7a07: $04
    ld [bc], a                                    ; $7a08: $02
    rst $30                                       ; $7a09: $f7
    dec c                                         ; $7a0a: $0d
    ld a, [bc]                                    ; $7a0b: $0a
    push af                                       ; $7a0c: $f5
    ld b, $fd                                     ; $7a0d: $06 $fd
    inc d                                         ; $7a0f: $14
    dec b                                         ; $7a10: $05
    ld d, $f2                                     ; $7a11: $16 $f2
    ld d, $f6                                     ; $7a13: $16 $f6
    ld d, $fd                                     ; $7a15: $16 $fd
    ld d, $07                                     ; $7a17: $16 $07
    ld [bc], a                                    ; $7a19: $02
    ld bc, $0392                                  ; $7a1a: $01 $92 $03
    ld [bc], a                                    ; $7a1d: $02
    ld c, $0f                                     ; $7a1e: $0e $0f
    jr c, jr_0ef_7a61                             ; $7a20: $38 $3f

    rst $18                                       ; $7a22: $df
    and $fd                                       ; $7a23: $e6 $fd
    add e                                         ; $7a25: $83
    ld a, a                                       ; $7a26: $7f
    adc d                                         ; $7a27: $8a
    cpl                                           ; $7a28: $2f
    ldh a, [$85]                                  ; $7a29: $f0 $85
    cp $70                                        ; $7a2b: $fe $70
    ld a, a                                       ; $7a2d: $7f
    ld [bc], a                                    ; $7a2e: $02
    ccf                                           ; $7a2f: $3f
    add h                                         ; $7a30: $84
    ld c, c                                       ; $7a31: $49
    ld a, a                                       ; $7a32: $7f
    ld l, [hl]                                    ; $7a33: $6e
    ld a, a                                       ; $7a34: $7f
    ld [bc], a                                    ; $7a35: $02
    ld sp, $0004                                  ; $7a36: $31 $04 $00
    ld [bc], a                                    ; $7a39: $02
    ld bc, $0383                                  ; $7a3a: $01 $83 $03
    ld [bc], a                                    ; $7a3d: $02
    inc bc                                        ; $7a3e: $03
    ld [bc], a                                    ; $7a3f: $02
    ld [bc], a                                    ; $7a40: $02
    add c                                         ; $7a41: $81
    inc bc                                        ; $7a42: $03
    ld [bc], a                                    ; $7a43: $02
    ld bc, $0696                                  ; $7a44: $01 $96 $06
    rlca                                          ; $7a47: $07
    db $fc                                        ; $7a48: $fc
    rst $38                                       ; $7a49: $ff
    db $db                                        ; $7a4a: $db
    inc a                                         ; $7a4b: $3c
    db $eb                                        ; $7a4c: $eb
    inc e                                         ; $7a4d: $1c
    ld a, l                                       ; $7a4e: $7d
    adc a                                         ; $7a4f: $8f
    or [hl]                                       ; $7a50: $b6
    rst $08                                       ; $7a51: $cf
    rst $28                                       ; $7a52: $ef
    ld a, h                                       ; $7a53: $7c
    cp a                                          ; $7a54: $bf
    db $fc                                        ; $7a55: $fc
    ld a, a                                       ; $7a56: $7f
    db $fc                                        ; $7a57: $fc
    rst $08                                       ; $7a58: $cf
    ld a, $ff                                     ; $7a59: $3e $ff
    or c                                          ; $7a5b: $b1
    ld [bc], a                                    ; $7a5c: $02
    inc d                                         ; $7a5d: $14
    ld [bc], a                                    ; $7a5e: $02
    jr c, jr_0ef_79f0                             ; $7a5f: $38 $8f

jr_0ef_7a61:
    ld e, [hl]                                    ; $7a61: $5e
    ld h, [hl]                                    ; $7a62: $66
    xor d                                         ; $7a63: $aa
    cp $96                                        ; $7a64: $fe $96
    cp $ff                                        ; $7a66: $fe $ff
    ld b, c                                       ; $7a68: $41
    ld a, [c]                                     ; $7a69: $f2
    adc [hl]                                      ; $7a6a: $8e
    call c, $bc3c                                 ; $7a6b: $dc $3c $bc
    db $fc                                        ; $7a6e: $fc
    ld l, d                                       ; $7a6f: $6a
    ld [bc], a                                    ; $7a70: $02
    cp [hl]                                       ; $7a71: $be
    adc e                                         ; $7a72: $8b
    jp nz, $fce4                                  ; $7a73: $c2 $e4 $fc

    cp h                                          ; $7a76: $bc
    ld a, h                                       ; $7a77: $7c
    ld l, [hl]                                    ; $7a78: $6e
    sbc [hl]                                      ; $7a79: $9e
    rst $10                                       ; $7a7a: $d7
    rst $38                                       ; $7a7b: $ff
    xor a                                         ; $7a7c: $af

jr_0ef_7a7d:
    ld a, [hl]                                    ; $7a7d: $7e
    ld [bc], a                                    ; $7a7e: $02
    add b                                         ; $7a7f: $80
    ld [bc], a                                    ; $7a80: $02
    ldh [$9c], a                                  ; $7a81: $e0 $9c
    jr jr_0ef_7a7d                                ; $7a83: $18 $f8

    rst $38                                       ; $7a85: $ff
    ccf                                           ; $7a86: $3f
    ret nz                                        ; $7a87: $c0

    rst $38                                       ; $7a88: $ff
    ld bc, $52ff                                  ; $7a89: $01 $ff $52
    rst $38                                       ; $7a8c: $ff
    ld hl, sp-$01                                 ; $7a8d: $f8 $ff
    scf                                           ; $7a8f: $37
    rst $38                                       ; $7a90: $ff
    jp z, Jump_0ef_7fff                           ; $7a91: $ca $ff $7f

    rst $38                                       ; $7a94: $ff
    rst $28                                       ; $7a95: $ef
    ld a, c                                       ; $7a96: $79
    db $d3                                        ; $7a97: $d3
    ld e, [hl]                                    ; $7a98: $5e
    db $dd                                        ; $7a99: $dd
    ld e, [hl]                                    ; $7a9a: $5e
    adc $4f                                       ; $7a9b: $ce $4f
    ld b, e                                       ; $7a9d: $43
    jp $8006                                      ; $7a9e: $c3 $06 $80


    ld a, [de]                                    ; $7aa1: $1a
    nop                                           ; $7aa2: $00
    xor l                                         ; $7aa3: $ad
    ld a, a                                       ; $7aa4: $7f
    ret nz                                        ; $7aa5: $c0

    or $e9                                        ; $7aa6: $f6 $e9
    ld h, $fd                                     ; $7aa8: $26 $fd
    or h                                          ; $7aaa: $b4
    rst $38                                       ; $7aab: $ff
    db $fd                                        ; $7aac: $fd
    rst $38                                       ; $7aad: $ff
    ld [hl], a                                    ; $7aae: $77
    ld a, [hl]                                    ; $7aaf: $7e
    ld a, e                                       ; $7ab0: $7b
    ld a, h                                       ; $7ab1: $7c
    ld d, e                                       ; $7ab2: $53
    ld a, h                                       ; $7ab3: $7c
    ld h, e                                       ; $7ab4: $63
    ld a, [hl]                                    ; $7ab5: $7e
    ld e, b                                       ; $7ab6: $58
    ld a, a                                       ; $7ab7: $7f
    ld [hl], h                                    ; $7ab8: $74
    ld a, a                                       ; $7ab9: $7f
    ld a, d                                       ; $7aba: $7a
    ld a, a                                       ; $7abb: $7f
    ld a, h                                       ; $7abc: $7c
    ld a, a                                       ; $7abd: $7f
    rst $28                                       ; $7abe: $ef
    rst $38                                       ; $7abf: $ff
    xor a                                         ; $7ac0: $af
    rst $30                                       ; $7ac1: $f7
    and e                                         ; $7ac2: $a3
    rst $38                                       ; $7ac3: $ff
    rst $28                                       ; $7ac4: $ef
    inc de                                        ; $7ac5: $13
    rst $38                                       ; $7ac6: $ff
    ld de, $ff0f                                  ; $7ac7: $11 $0f $ff
    ldh a, [rIE]                                  ; $7aca: $f0 $ff
    sub d                                         ; $7acc: $92
    rst $38                                       ; $7acd: $ff
    ret nz                                        ; $7ace: $c0

    rst $38                                       ; $7acf: $ff
    cp a                                          ; $7ad0: $bf
    inc bc                                        ; $7ad1: $03
    rst $38                                       ; $7ad2: $ff
    sub b                                         ; $7ad3: $90
    cp a                                          ; $7ad4: $bf
    ld b, b                                       ; $7ad5: $40
    rst $30                                       ; $7ad6: $f7
    ld [$49be], sp                                ; $7ad7: $08 $be $49
    inc [hl]                                      ; $7ada: $34
    res 5, a                                      ; $7adb: $cb $af
    ld e, b                                       ; $7add: $58
    rst $38                                       ; $7ade: $ff
    jr jr_0ef_7b1b                                ; $7adf: $18 $3a

    db $dd                                        ; $7ae1: $dd
    ld b, c                                       ; $7ae2: $41
    rst $38                                       ; $7ae3: $ff
    ld [bc], a                                    ; $7ae4: $02
    ld b, $02                                     ; $7ae5: $06 $02
    inc b                                         ; $7ae7: $04
    add c                                         ; $7ae8: $81
    cp [hl]                                       ; $7ae9: $be
    rlca                                          ; $7aea: $07
    cp $94                                        ; $7aeb: $fe $94
    di                                            ; $7aed: $f3
    rst $38                                       ; $7aee: $ff
    pop af                                        ; $7aef: $f1
    rst $38                                       ; $7af0: $ff
    push af                                       ; $7af1: $f5
    ei                                            ; $7af2: $fb
    rst $30                                       ; $7af3: $f7
    ld sp, hl                                     ; $7af4: $f9
    rst $20                                       ; $7af5: $e7
    ld sp, hl                                     ; $7af6: $f9
    rst $20                                       ; $7af7: $e7
    ld sp, hl                                     ; $7af8: $f9
    rst $28                                       ; $7af9: $ef
    push af                                       ; $7afa: $f5
    ld l, l                                       ; $7afb: $6d
    ld a, e                                       ; $7afc: $7b
    ld e, [hl]                                    ; $7afd: $5e
    ld l, [hl]                                    ; $7afe: $6e
    dec l                                         ; $7aff: $2d
    ccf                                           ; $7b00: $3f

jr_0ef_7b01:
    ld [bc], a                                    ; $7b01: $02
    ld a, $8c                                     ; $7b02: $3e $8c
    ld bc, $0a3f                                  ; $7b04: $01 $3f $0a
    ld a, $11                                     ; $7b07: $3e $11
    ccf                                           ; $7b09: $3f
    rlca                                          ; $7b0a: $07
    ccf                                           ; $7b0b: $3f
    add hl, sp                                    ; $7b0c: $39
    ccf                                           ; $7b0d: $3f
    ld b, $3e                                     ; $7b0e: $06 $3e
    ld [bc], a                                    ; $7b10: $02
    jr c, jr_0ef_7b1b                             ; $7b11: $38 $08

    jr nz, @+$0a                                  ; $7b13: $20 $08

    nop                                           ; $7b15: $00
    adc a                                         ; $7b16: $8f
    inc sp                                        ; $7b17: $33
    dec a                                         ; $7b18: $3d
    ld [hl], $3b                                  ; $7b19: $36 $3b

jr_0ef_7b1b:
    ld hl, $353e                                  ; $7b1b: $21 $3e $35
    ld l, $2f                                     ; $7b1e: $2e $2f
    inc [hl]                                      ; $7b20: $34
    ld d, e                                       ; $7b21: $53
    ld l, h                                       ; $7b22: $6c
    ld [hl], a                                    ; $7b23: $77
    ld c, b                                       ; $7b24: $48
    ld d, [hl]                                    ; $7b25: $56
    ld [bc], a                                    ; $7b26: $02
    ld l, c                                       ; $7b27: $69
    sub b                                         ; $7b28: $90
    ld a, a                                       ; $7b29: $7f
    ld b, a                                       ; $7b2a: $47
    ld a, a                                       ; $7b2b: $7f
    ei                                            ; $7b2c: $fb
    rst $08                                       ; $7b2d: $cf
    cp e                                          ; $7b2e: $bb
    rst $20                                       ; $7b2f: $e7

jr_0ef_7b30:
    sbc a                                         ; $7b30: $9f
    rst $28                                       ; $7b31: $ef
    and e                                         ; $7b32: $a3
    rst $18                                       ; $7b33: $df
    db $d3                                        ; $7b34: $d3
    ccf                                           ; $7b35: $3f
    db $dd                                        ; $7b36: $dd
    ld h, a                                       ; $7b37: $67
    jr nz, jr_0ef_7b41                            ; $7b38: $20 $07

    jr c, jr_0ef_7b3e                             ; $7b3a: $38 $02

    ld hl, sp-$77                                 ; $7b3c: $f8 $89

jr_0ef_7b3e:
    ld a, b                                       ; $7b3e: $78
    ld hl, sp+$78                                 ; $7b3f: $f8 $78

jr_0ef_7b41:
    ld hl, sp+$78                                 ; $7b41: $f8 $78
    ld hl, sp-$48                                 ; $7b43: $f8 $b8
    ld a, b                                       ; $7b45: $78
    ld hl, sp+$02                                 ; $7b46: $f8 $02
    ld a, b                                       ; $7b48: $78
    add c                                         ; $7b49: $81
    ld hl, sp+$02                                 ; $7b4a: $f8 $02
    ret nz                                        ; $7b4c: $c0

    inc b                                         ; $7b4d: $04
    add b                                         ; $7b4e: $80
    ld [bc], a                                    ; $7b4f: $02
    ld bc, $0298                                  ; $7b50: $01 $98 $02
    inc bc                                        ; $7b53: $03
    ld e, b                                       ; $7b54: $58
    xor b                                         ; $7b55: $a8
    jr z, jr_0ef_7b30                             ; $7b56: $28 $d8

    cp h                                          ; $7b58: $bc
    db $f4                                        ; $7b59: $f4
    sub h                                         ; $7b5a: $94
    ld l, h                                       ; $7b5b: $6c
    ld [$729e], a                                 ; $7b5c: $ea $9e $72
    sbc $85                                       ; $7b5f: $de $85
    ld a, a                                       ; $7b61: $7f
    ld e, [hl]                                    ; $7b62: $5e
    db $fd                                        ; $7b63: $fd
    and a                                         ; $7b64: $a7
    cp $7b                                        ; $7b65: $fe $7b
    ld h, a                                       ; $7b67: $67
    inc l                                         ; $7b68: $2c
    inc [hl]                                      ; $7b69: $34
    ld [bc], a                                    ; $7b6a: $02
    jr jr_0ef_7b77                                ; $7b6b: $18 $0a

    nop                                           ; $7b6d: $00
    inc b                                         ; $7b6e: $04
    jr nz, jr_0ef_7b01                            ; $7b6f: $20 $90

    ld b, b                                       ; $7b71: $40
    ld h, b                                       ; $7b72: $60
    ld a, [hl+]                                   ; $7b73: $2a
    dec [hl]                                      ; $7b74: $35
    ld d, l                                       ; $7b75: $55
    ld a, a                                       ; $7b76: $7f

jr_0ef_7b77:
    ld l, b                                       ; $7b77: $68
    ld d, a                                       ; $7b78: $57
    and [hl]                                      ; $7b79: $a6
    ei                                            ; $7b7a: $fb
    ld e, a                                       ; $7b7b: $5f
    ld a, a                                       ; $7b7c: $7f
    ld [hl], l                                    ; $7b7d: $75
    ld l, [hl]                                    ; $7b7e: $6e
    ld e, a                                       ; $7b7f: $5f
    ld h, [hl]                                    ; $7b80: $66
    ld [bc], a                                    ; $7b81: $02
    add hl, sp                                    ; $7b82: $39
    stop                                          ; $7b83: $10 $00
    adc e                                         ; $7b85: $8b
    ld a, [bc]                                    ; $7b86: $0a
    ld c, $05                                     ; $7b87: $0e $05
    dec bc                                        ; $7b89: $0b
    ld a, [bc]                                    ; $7b8a: $0a
    ld b, $05                                     ; $7b8b: $06 $05
    rrca                                          ; $7b8d: $0f
    ld a, [bc]                                    ; $7b8e: $0a
    ld c, $06                                     ; $7b8f: $0e $06
    ld [bc], a                                    ; $7b91: $02
    ld c, $81                                     ; $7b92: $0e $81
    ld b, $02                                     ; $7b94: $06 $02
    inc c                                         ; $7b96: $0c
    ld [$8500], sp                                ; $7b97: $08 $00 $85
    inc bc                                        ; $7b9a: $03
    ld [bc], a                                    ; $7b9b: $02
    inc bc                                        ; $7b9c: $03
    ld [bc], a                                    ; $7b9d: $02
    inc b                                         ; $7b9e: $04
    ld [bc], a                                    ; $7b9f: $02
    rlca                                          ; $7ba0: $07
    add e                                         ; $7ba1: $83
    ld b, $04                                     ; $7ba2: $06 $04
    rlca                                          ; $7ba4: $07
    ld [bc], a                                    ; $7ba5: $02
    inc bc                                        ; $7ba6: $03
    inc e                                         ; $7ba7: $1c
    nop                                           ; $7ba8: $00
    ld [bc], a                                    ; $7ba9: $02
    ld [bc], a                                    ; $7baa: $02
    add c                                         ; $7bab: $81
    ld bc, $0303                                  ; $7bac: $01 $03 $03
    ld [bc], a                                    ; $7baf: $02
    ld [bc], a                                    ; $7bb0: $02
    stop                                          ; $7bb1: $10 $00
    rst $38                                       ; $7bb3: $ff
    add hl, hl                                    ; $7bb4: $29
    ld [de], a                                    ; $7bb5: $12
    db $ed                                        ; $7bb6: $ed
    dec l                                         ; $7bb7: $2d
    call nc, $e423                                ; $7bb8: $d4 $23 $e4
    ei                                            ; $7bbb: $fb
    call c, $dc03                                 ; $7bbc: $dc $03 $dc
    ld [$eeee], sp                                ; $7bbf: $08 $ee $ee
    db $ec                                        ; $7bc2: $ec
    or $ec                                        ; $7bc3: $f6 $ec
    cp $ec                                        ; $7bc5: $fe $ec
    ld b, $f7                                     ; $7bc7: $06 $f7
    ld a, [bc]                                    ; $7bc9: $0a
    db $fc                                        ; $7bca: $fc
    rst $30                                       ; $7bcb: $f7
    db $fc                                        ; $7bcc: $fc
    rst $38                                       ; $7bcd: $ff
    db $fc                                        ; $7bce: $fc
    ld [bc], a                                    ; $7bcf: $02
    inc c                                         ; $7bd0: $0c
    di                                            ; $7bd1: $f3
    inc c                                         ; $7bd2: $0c
    ei                                            ; $7bd3: $fb
    inc c                                         ; $7bd4: $0c
    inc bc                                        ; $7bd5: $03
    jr jr_0ef_7bdf                                ; $7bd6: $18 $07

    inc e                                         ; $7bd8: $1c
    ld a, [c]                                     ; $7bd9: $f2
    inc e                                         ; $7bda: $1c
    or $1c                                        ; $7bdb: $f6 $1c
    rst $38                                       ; $7bdd: $ff
    inc b                                         ; $7bde: $04

jr_0ef_7bdf:
    ld bc, $029c                                  ; $7bdf: $01 $9c $02
    inc bc                                        ; $7be2: $03
    inc b                                         ; $7be3: $04
    rlca                                          ; $7be4: $07
    ld [$110f], sp                                ; $7be5: $08 $0f $11
    rra                                           ; $7be8: $1f
    ld h, $3f                                     ; $7be9: $26 $3f
    ret                                           ; $7beb: $c9


    rst $38                                       ; $7bec: $ff
    rst $30                                       ; $7bed: $f7
    ld a, $fe                                     ; $7bee: $3e $fe
    ld e, c                                       ; $7bf0: $59
    db $ed                                        ; $7bf1: $ed
    ccf                                           ; $7bf2: $3f
    xor e                                         ; $7bf3: $ab
    db $fd                                        ; $7bf4: $fd
    ld d, l                                       ; $7bf5: $55
    cp $7f                                        ; $7bf6: $fe $7f
    rst $20                                       ; $7bf8: $e7
    db $fc                                        ; $7bf9: $fc
    di                                            ; $7bfa: $f3
    cp e                                          ; $7bfb: $bb
    ld a, [hl]                                    ; $7bfc: $7e
    ld [bc], a                                    ; $7bfd: $02
    ld bc, $029e                                  ; $7bfe: $01 $9e $02
    inc bc                                        ; $7c01: $03
    inc b                                         ; $7c02: $04
    rlca                                          ; $7c03: $07
    ld [$100f], sp                                ; $7c04: $08 $0f $10
    rra                                           ; $7c07: $1f
    inc hl                                        ; $7c08: $23
    ccf                                           ; $7c09: $3f
    ld b, l                                       ; $7c0a: $45
    ld a, a                                       ; $7c0b: $7f
    adc e                                         ; $7c0c: $8b
    rst $38                                       ; $7c0d: $ff
    dec b                                         ; $7c0e: $05
    rst $38                                       ; $7c0f: $ff
    dec de                                        ; $7c10: $1b
    rst $38                                       ; $7c11: $ff
    ld h, [hl]                                    ; $7c12: $66
    cp $c8                                        ; $7c13: $fe $c8
    ld hl, sp-$50                                 ; $7c15: $f8 $b0
    ldh a, [$50]                                  ; $7c17: $f0 $50
    ldh a, [$b0]                                  ; $7c19: $f0 $b0
    ldh a, [$f8]                                  ; $7c1b: $f0 $f8
    ld [$1002], sp                                ; $7c1d: $08 $02 $10
    adc [hl]                                      ; $7c20: $8e
    inc c                                         ; $7c21: $0c
    inc e                                         ; $7c22: $1c
    ld [de], a                                    ; $7c23: $12
    ld e, $0e                                     ; $7c24: $1e $0e
    ld e, $16                                     ; $7c26: $1e $16
    ld e, $0d                                     ; $7c28: $1e $0d
    rra                                           ; $7c2a: $1f
    ld [de], a                                    ; $7c2b: $12
    ld e, $0c                                     ; $7c2c: $1e $0c
    inc e                                         ; $7c2e: $1c
    ld [bc], a                                    ; $7c2f: $02
    db $10                                        ; $7c30: $10
    ld c, $00                                     ; $7c31: $0e $00
    ld [bc], a                                    ; $7c33: $02
    inc bc                                        ; $7c34: $03
    sub d                                         ; $7c35: $92
    rrca                                          ; $7c36: $0f
    inc c                                         ; $7c37: $0c
    rra                                           ; $7c38: $1f
    ld [de], a                                    ; $7c39: $12

jr_0ef_7c3a:
    ld a, [hl]                                    ; $7c3a: $7e
    ld l, c                                       ; $7c3b: $69
    pop af                                        ; $7c3c: $f1
    adc a                                         ; $7c3d: $8f
    ld [c], a                                     ; $7c3e: $e2
    cp a                                          ; $7c3f: $bf
    add [hl]                                      ; $7c40: $86
    rst $38                                       ; $7c41: $ff
    ld a, e                                       ; $7c42: $7b
    ld a, a                                       ; $7c43: $7f
    add hl, de                                    ; $7c44: $19
    rra                                           ; $7c45: $1f
    rla                                           ; $7c46: $17
    rra                                           ; $7c47: $1f
    ld [bc], a                                    ; $7c48: $02
    jr @+$0c                                      ; $7c49: $18 $0a

    nop                                           ; $7c4b: $00
    ld [bc], a                                    ; $7c4c: $02
    ld [$3093], sp                                ; $7c4d: $08 $93 $30
    jr c, jr_0ef_7c3a                             ; $7c50: $38 $e8

    ldh a, [$b8]                                  ; $7c52: $f0 $b8
    ldh [$f8], a                                  ; $7c54: $e0 $f8
    ld a, b                                       ; $7c56: $78
    ld l, b                                       ; $7c57: $68
    ld hl, sp-$18                                 ; $7c58: $f8 $e8
    ld hl, sp-$68                                 ; $7c5a: $f8 $98
    ld hl, sp+$7b                                 ; $7c5c: $f8 $7b
    db $fd                                        ; $7c5e: $fd
    or $cf                                        ; $7c5f: $f6 $cf
    rra                                           ; $7c61: $1f
    inc bc                                        ; $7c62: $03
    rst $38                                       ; $7c63: $ff
    ld [bc], a                                    ; $7c64: $02
    rra                                           ; $7c65: $1f
    add c                                         ; $7c66: $81
    dec e                                         ; $7c67: $1d
    inc bc                                        ; $7c68: $03
    rra                                           ; $7c69: $1f
    ld [bc], a                                    ; $7c6a: $02
    ccf                                           ; $7c6b: $3f
    add d                                         ; $7c6c: $82
    inc b                                         ; $7c6d: $04
    inc bc                                        ; $7c6e: $03
    inc b                                         ; $7c6f: $04
    rlca                                          ; $7c70: $07
    add c                                         ; $7c71: $81
    ld [bc], a                                    ; $7c72: $02
    ld [bc], a                                    ; $7c73: $02
    rlca                                          ; $7c74: $07
    add d                                         ; $7c75: $82
    nop                                           ; $7c76: $00
    ld bc, $0703                                  ; $7c77: $01 $03 $07
    sub d                                         ; $7c7a: $92
    inc bc                                        ; $7c7b: $03
    rlca                                          ; $7c7c: $07
    or l                                          ; $7c7d: $b5
    rst $38                                       ; $7c7e: $ff
    db $eb                                        ; $7c7f: $eb
    sbc a                                         ; $7c80: $9f
    ei                                            ; $7c81: $fb
    inc b                                         ; $7c82: $04
    ld a, a                                       ; $7c83: $7f
    add h                                         ; $7c84: $84
    inc sp                                        ; $7c85: $33
    call z, $fffb                                 ; $7c86: $cc $fb $ff
    add h                                         ; $7c89: $84
    rst $38                                       ; $7c8a: $ff
    ld c, $f5                                     ; $7c8b: $0e $f5
    ld [bc], a                                    ; $7c8d: $02
    add b                                         ; $7c8e: $80
    inc b                                         ; $7c8f: $04
    nop                                           ; $7c90: $00
    inc b                                         ; $7c91: $04
    add b                                         ; $7c92: $80
    inc b                                         ; $7c93: $04
    nop                                           ; $7c94: $00
    ld [bc], a                                    ; $7c95: $02
    add b                                         ; $7c96: $80
    ld [bc], a                                    ; $7c97: $02
    ldh [$8e], a                                  ; $7c98: $e0 $8e
    ldh a, [$b0]                                  ; $7c9a: $f0 $b0
    ld c, h                                       ; $7c9c: $4c
    db $fc                                        ; $7c9d: $fc
    db $db                                        ; $7c9e: $db
    ld h, a                                       ; $7c9f: $67
    ld a, [hl]                                    ; $7ca0: $7e
    db $e3                                        ; $7ca1: $e3
    push af                                       ; $7ca2: $f5
    xor $fd                                       ; $7ca3: $ee $fd
    cp $5d                                        ; $7ca5: $fe $5d
    rst $18                                       ; $7ca7: $df
    ld [bc], a                                    ; $7ca8: $02
    ld [$0c92], sp                                ; $7ca9: $08 $92 $0c
    inc b                                         ; $7cac: $04
    ld c, $0a                                     ; $7cad: $0e $0a
    dec c                                         ; $7caf: $0d
    rlca                                          ; $7cb0: $07
    add hl, bc                                    ; $7cb1: $09
    rrca                                          ; $7cb2: $0f
    ld l, a                                       ; $7cb3: $6f
    ld [hl], a                                    ; $7cb4: $77
    cp $e2                                        ; $7cb5: $fe $e2
    cp l                                          ; $7cb7: $bd
    db $eb                                        ; $7cb8: $eb
    ld [hl], a                                    ; $7cb9: $77
    ld e, l                                       ; $7cba: $5d
    ld a, [hl-]                                   ; $7cbb: $3a
    ld a, $02                                     ; $7cbc: $3e $02
    inc e                                         ; $7cbe: $1c
    ld a, [bc]                                    ; $7cbf: $0a
    nop                                           ; $7cc0: $00
    or l                                          ; $7cc1: $b5
    halt                                          ; $7cc2: $76
    ld a, a                                       ; $7cc3: $7f
    ld a, h                                       ; $7cc4: $7c
    ld a, a                                       ; $7cc5: $7f

jr_0ef_7cc6:
    inc e                                         ; $7cc6: $1c
    rra                                           ; $7cc7: $1f
    add hl, de                                    ; $7cc8: $19
    ld e, $3d                                     ; $7cc9: $1e $3d
    ld a, $29                                     ; $7ccb: $3e $29
    ld a, $31                                     ; $7ccd: $3e $31
    ccf                                           ; $7ccf: $3f
    ld e, b                                       ; $7cd0: $58
    ld a, a                                       ; $7cd1: $7f
    ld [hl], h                                    ; $7cd2: $74
    ld a, a                                       ; $7cd3: $7f
    ld a, d                                       ; $7cd4: $7a
    ld a, a                                       ; $7cd5: $7f
    ld a, h                                       ; $7cd6: $7c
    ld a, a                                       ; $7cd7: $7f
    rst $28                                       ; $7cd8: $ef
    rst $38                                       ; $7cd9: $ff
    xor a                                         ; $7cda: $af
    rst $30                                       ; $7cdb: $f7
    and e                                         ; $7cdc: $a3
    rst $38                                       ; $7cdd: $ff
    rst $08                                       ; $7cde: $cf

Call_0ef_7cdf:
    rst $30                                       ; $7cdf: $f7
    reti                                          ; $7ce0: $d9


    rst $28                                       ; $7ce1: $ef
    ld a, a                                       ; $7ce2: $7f
    add b                                         ; $7ce3: $80

jr_0ef_7ce4:
    rst $18                                       ; $7ce4: $df
    jr nz, jr_0ef_7cc6                            ; $7ce5: $20 $df

    jr nz, jr_0ef_7ce4                            ; $7ce7: $20 $fb

    inc b                                         ; $7ce9: $04
    sbc $25                                       ; $7cea: $de $25

Call_0ef_7cec:
    sbc d                                         ; $7cec: $9a
    ld h, l                                       ; $7ced: $65
    sub a                                         ; $7cee: $97
    ld l, h                                       ; $7cef: $6c
    rst $38                                       ; $7cf0: $ff
    jr jr_0ef_7d1d                                ; $7cf1: $18 $2a

    db $dd                                        ; $7cf3: $dd
    jr nz, @+$01                                  ; $7cf4: $20 $ff

    sub a                                         ; $7cf6: $97
    rlca                                          ; $7cf7: $07
    rst $38                                       ; $7cf8: $ff
    add h                                         ; $7cf9: $84
    cp $ff                                        ; $7cfa: $fe $ff
    cp $ff                                        ; $7cfc: $fe $ff
    ld [bc], a                                    ; $7cfe: $02
    inc b                                         ; $7cff: $04
    add c                                         ; $7d00: $81
    ld [bc], a                                    ; $7d01: $02
    ld [bc], a                                    ; $7d02: $02
    ld b, $84                                     ; $7d03: $06 $84
    ld [bc], a                                    ; $7d05: $02
    ld b, $02                                     ; $7d06: $06 $02
    ld b, $02                                     ; $7d08: $06 $02
    ld [bc], a                                    ; $7d0a: $02
    ld [bc], a                                    ; $7d0b: $02
    ld b, $02                                     ; $7d0c: $06 $02
    ld [bc], a                                    ; $7d0e: $02
    add e                                         ; $7d0f: $83
    ld b, $02                                     ; $7d10: $06 $02
    ld b, $02                                     ; $7d12: $06 $02
    inc b                                         ; $7d14: $04
    ld [$8706], sp                                ; $7d15: $08 $06 $87
    inc bc                                        ; $7d18: $03
    rlca                                          ; $7d19: $07
    ld bc, $0807                                  ; $7d1a: $01 $07 $08

jr_0ef_7d1d:
    rrca                                          ; $7d1d: $0f
    dec c                                         ; $7d1e: $0d
    ld [bc], a                                    ; $7d1f: $02
    dec bc                                        ; $7d20: $0b
    add [hl]                                      ; $7d21: $86
    dec c                                         ; $7d22: $0d
    inc d                                         ; $7d23: $14
    dec de                                        ; $7d24: $1b
    dec e                                         ; $7d25: $1d
    ld [de], a                                    ; $7d26: $12
    dec d                                         ; $7d27: $15
    ld [bc], a                                    ; $7d28: $02
    ld a, [de]                                    ; $7d29: $1a
    and b                                         ; $7d2a: $a0
    rra                                           ; $7d2b: $1f
    ld de, $3e1f                                  ; $7d2c: $11 $1f $3e
    inc sp                                        ; $7d2f: $33
    ld l, $39                                     ; $7d30: $2e $39
    daa                                           ; $7d32: $27
    dec sp                                        ; $7d33: $3b
    ld l, b                                       ; $7d34: $68
    ld [hl], a                                    ; $7d35: $77
    ld [hl], h                                    ; $7d36: $74
    ld c, a                                       ; $7d37: $4f
    or a                                          ; $7d38: $b7
    reti                                          ; $7d39: $d9


    ld d, l                                       ; $7d3a: $55
    ld l, e                                       ; $7d3b: $6b
    xor d                                         ; $7d3c: $aa
    rst $38                                       ; $7d3d: $ff
    ld e, a                                       ; $7d3e: $5f
    cp a                                          ; $7d3f: $bf
    ld e, a                                       ; $7d40: $5f
    cp a                                          ; $7d41: $bf
    rst $28                                       ; $7d42: $ef
    rra                                           ; $7d43: $1f
    rst $38                                       ; $7d44: $ff
    rra                                           ; $7d45: $1f
    rst $18                                       ; $7d46: $df
    ccf                                           ; $7d47: $3f
    or b                                          ; $7d48: $b0
    ld [hl], b                                    ; $7d49: $70
    ld h, b                                       ; $7d4a: $60
    inc bc                                        ; $7d4b: $03
    ldh [rTMA], a                                 ; $7d4c: $e0 $06
    ret nz                                        ; $7d4e: $c0

    inc b                                         ; $7d4f: $04
    pop bc                                        ; $7d50: $c1
    and [hl]                                      ; $7d51: $a6
    ld b, c                                       ; $7d52: $41
    pop bc                                        ; $7d53: $c1
    ld b, b                                       ; $7d54: $40
    ret nz                                        ; $7d55: $c0

    and b                                         ; $7d56: $a0
    ld h, b                                       ; $7d57: $60
    ld [$edf6], a                                 ; $7d58: $ea $f6 $ed
    di                                            ; $7d5b: $f3
    db $ed                                        ; $7d5c: $ed
    di                                            ; $7d5d: $f3
    db $dd                                        ; $7d5e: $dd
    db $e3                                        ; $7d5f: $e3
    db $d3                                        ; $7d60: $d3
    rst $28                                       ; $7d61: $ef
    ld l, a                                       ; $7d62: $6f
    ld a, c                                       ; $7d63: $79
    ccf                                           ; $7d64: $3f
    cpl                                           ; $7d65: $2f
    dec h                                         ; $7d66: $25
    ccf                                           ; $7d67: $3f
    ld b, e                                       ; $7d68: $43
    ld a, l                                       ; $7d69: $7d
    ld [hl], l                                    ; $7d6a: $75
    ld e, e                                       ; $7d6b: $5b
    rst $28                                       ; $7d6c: $ef
    sbc l                                         ; $7d6d: $9d
    dec [hl]                                      ; $7d6e: $35
    db $eb                                        ; $7d6f: $eb
    jp c, $2cb7                                   ; $7d70: $da $b7 $2c

    rst $10                                       ; $7d73: $d7
    pop de                                        ; $7d74: $d1
    rst $38                                       ; $7d75: $ff
    daa                                           ; $7d76: $27
    ccf                                           ; $7d77: $3f
    inc b                                         ; $7d78: $04
    ld [$068a], sp                                ; $7d79: $08 $8a $06
    ld c, $09                                     ; $7d7c: $0e $09
    rlca                                          ; $7d7e: $07
    sbc a                                         ; $7d7f: $9f
    ei                                            ; $7d80: $fb
    xor $9e                                       ; $7d81: $ee $9e
    or b                                          ; $7d83: $b0
    ret nc                                        ; $7d84: $d0

    ld [bc], a                                    ; $7d85: $02
    ld h, b                                       ; $7d86: $60
    stop                                          ; $7d87: $10 $00
    adc d                                         ; $7d89: $8a
    ld l, b                                       ; $7d8a: $68
    ld d, a                                       ; $7d8b: $57
    and [hl]                                      ; $7d8c: $a6
    ei                                            ; $7d8d: $fb
    ld e, a                                       ; $7d8e: $5f
    ld a, a                                       ; $7d8f: $7f
    ld [hl], l                                    ; $7d90: $75
    ld l, [hl]                                    ; $7d91: $6e
    ld e, a                                       ; $7d92: $5f
    ld h, [hl]                                    ; $7d93: $66
    ld [bc], a                                    ; $7d94: $02
    add hl, sp                                    ; $7d95: $39
    inc d                                         ; $7d96: $14
    nop                                           ; $7d97: $00
    add a                                         ; $7d98: $87
    ld a, [bc]                                    ; $7d99: $0a
    ld b, $05                                     ; $7d9a: $06 $05
    rrca                                          ; $7d9c: $0f
    ld a, [bc]                                    ; $7d9d: $0a
    ld c, $06                                     ; $7d9e: $0e $06
    ld [bc], a                                    ; $7da0: $02
    ld c, $81                                     ; $7da1: $0e $81
    ld b, $02                                     ; $7da3: $06 $02
    inc c                                         ; $7da5: $0c
    inc d                                         ; $7da6: $14
    nop                                           ; $7da7: $00
    add d                                         ; $7da8: $82
    ld [bc], a                                    ; $7da9: $02
    inc bc                                        ; $7daa: $03
    ld [bc], a                                    ; $7dab: $02
    ld bc, $001c                                  ; $7dac: $01 $1c $00
    rst $38                                       ; $7daf: $ff
    daa                                           ; $7db0: $27
    ld de, $2ded                                  ; $7db1: $11 $ed $2d
    call nc, $d423                                ; $7db4: $d4 $23 $d4
    ld hl, sp-$2b                                 ; $7db7: $f8 $d5
    ld sp, hl                                     ; $7db9: $f9
    jp hl                                         ; $7dba: $e9


    rst $28                                       ; $7dbb: $ef
    db $e4                                        ; $7dbc: $e4
    rst $30                                       ; $7dbd: $f7
    and $ff                                       ; $7dbe: $e6 $ff
    add sp, $06                                   ; $7dc0: $e8 $06
    db $f4                                        ; $7dc2: $f4
    rst $30                                       ; $7dc3: $f7
    or $ff                                        ; $7dc4: $f6 $ff
    ld hl, sp+$07                                 ; $7dc6: $f8 $07
    ld hl, sp+$0c                                 ; $7dc8: $f8 $0c
    inc b                                         ; $7dca: $04
    or $04                                        ; $7dcb: $f6 $04
    cp $06                                        ; $7dcd: $fe $06
    inc bc                                        ; $7dcf: $03
    inc d                                         ; $7dd0: $14
    ld a, [c]                                     ; $7dd1: $f2
    inc d                                         ; $7dd2: $14
    or $14                                        ; $7dd3: $f6 $14
    ld [bc], a                                    ; $7dd5: $02
    inc d                                         ; $7dd6: $14
    rlca                                          ; $7dd7: $07
    ld [bc], a                                    ; $7dd8: $02
    ld c, $9e                                     ; $7dd9: $0e $9e
    dec [hl]                                      ; $7ddb: $35
    ccf                                           ; $7ddc: $3f
    ld b, l                                       ; $7ddd: $45
    ld a, a                                       ; $7dde: $7f
    ld d, l                                       ; $7ddf: $55
    ld a, a                                       ; $7de0: $7f
    ld c, d                                       ; $7de1: $4a
    ld a, a                                       ; $7de2: $7f
    ld e, d                                       ; $7de3: $5a
    ld a, a                                       ; $7de4: $7f
    ld c, d                                       ; $7de5: $4a
    ld a, a                                       ; $7de6: $7f
    ld c, d                                       ; $7de7: $4a
    ld a, a                                       ; $7de8: $7f
    ld b, l                                       ; $7de9: $45
    ld a, a                                       ; $7dea: $7f
    ld d, l                                       ; $7deb: $55
    ld a, a                                       ; $7dec: $7f
    ld b, a                                       ; $7ded: $47
    ld a, a                                       ; $7dee: $7f
    sub a                                         ; $7def: $97
    rst $38                                       ; $7df0: $ff
    adc d                                         ; $7df1: $8a
    rst $38                                       ; $7df2: $ff
    adc a                                         ; $7df3: $8f

jr_0ef_7df4:
    rst $38                                       ; $7df4: $ff
    xor h                                         ; $7df5: $ac
    db $fc                                        ; $7df6: $fc
    adc h                                         ; $7df7: $8c
    db $fc                                        ; $7df8: $fc
    ld c, $01                                     ; $7df9: $0e $01
    ld b, $00                                     ; $7dfb: $06 $00
    inc b                                         ; $7dfd: $04
    ld bc, $0006                                  ; $7dfe: $01 $06 $00
    add d                                         ; $7e01: $82
    jr nc, jr_0ef_7df4                            ; $7e02: $30 $f0

    ld [bc], a                                    ; $7e04: $02
    ld bc, $0302                                  ; $7e05: $01 $02 $03
    sub h                                         ; $7e08: $94
    rlca                                          ; $7e09: $07
    dec b                                         ; $7e0a: $05
    rrca                                          ; $7e0b: $0f
    add hl, bc                                    ; $7e0c: $09
    ld e, $15                                     ; $7e0d: $1e $15
    ld a, $21                                     ; $7e0f: $3e $21
    ld a, h                                       ; $7e11: $7c
    ld c, e                                       ; $7e12: $4b
    ld hl, sp-$59                                 ; $7e13: $f8 $a7
    pop hl                                        ; $7e15: $e1
    sbc a                                         ; $7e16: $9f
    add c                                         ; $7e17: $81
    rst $38                                       ; $7e18: $ff
    ld b, d                                       ; $7e19: $42
    ld a, a                                       ; $7e1a: $7f
    dec a                                         ; $7e1b: $3d
    ccf                                           ; $7e1c: $3f
    ld [bc], a                                    ; $7e1d: $02
    rrca                                          ; $7e1e: $0f
    ld [bc], a                                    ; $7e1f: $02
    ld bc, $0004                                  ; $7e20: $01 $04 $00
    ld [bc], a                                    ; $7e23: $02
    ld b, b                                       ; $7e24: $40
    add d                                         ; $7e25: $82
    ld c, h                                       ; $7e26: $4c
    ld a, h                                       ; $7e27: $7c
    ld [bc], a                                    ; $7e28: $02
    ld a, b                                       ; $7e29: $78
    sub b                                         ; $7e2a: $90
    add sp, -$68                                  ; $7e2b: $e8 $98
    db $f4                                        ; $7e2d: $f4
    cp h                                          ; $7e2e: $bc
    inc l                                         ; $7e2f: $2c
    call c, $b878                                 ; $7e30: $dc $78 $b8
    ld l, b                                       ; $7e33: $68
    sbc b                                         ; $7e34: $98
    ld a, b                                       ; $7e35: $78
    ld hl, sp-$38                                 ; $7e36: $f8 $c8
    ld hl, sp+$50                                 ; $7e38: $f8 $50
    ldh a, [rSC]                                  ; $7e3a: $f0 $02
    pop af                                        ; $7e3c: $f1
    add c                                         ; $7e3d: $81
    sbc a                                         ; $7e3e: $9f
    ld [bc], a                                    ; $7e3f: $02
    rst $38                                       ; $7e40: $ff
    add l                                         ; $7e41: $85
    di                                            ; $7e42: $f3
    sbc l                                         ; $7e43: $9d
    di                                            ; $7e44: $f3
    xor e                                         ; $7e45: $ab
    db $fd                                        ; $7e46: $fd
    ld [bc], a                                    ; $7e47: $02
    dec b                                         ; $7e48: $05
    ld [bc], a                                    ; $7e49: $02
    ld c, $9c                                     ; $7e4a: $0e $9c
    rla                                           ; $7e4c: $17
    add hl, de                                    ; $7e4d: $19
    ld a, [hl+]                                   ; $7e4e: $2a
    ccf                                           ; $7e4f: $3f
    ld h, l                                       ; $7e50: $65
    ld a, a                                       ; $7e51: $7f
    rst $38                                       ; $7e52: $ff
    sub b                                         ; $7e53: $90
    db $fc                                        ; $7e54: $fc
    and e                                         ; $7e55: $a3
    or a                                          ; $7e56: $b7
    rst $08                                       ; $7e57: $cf
    ld l, a                                       ; $7e58: $6f
    ld a, a                                       ; $7e59: $7f
    sbc d                                         ; $7e5a: $9a
    rst $28                                       ; $7e5b: $ef
    cpl                                           ; $7e5c: $2f
    ldh a, [$f9]                                  ; $7e5d: $f0 $f9
    ccf                                           ; $7e5f: $3f
    xor $9e                                       ; $7e60: $ee $9e
    db $db                                        ; $7e62: $db
    rst $30                                       ; $7e63: $f7
    or l                                          ; $7e64: $b5
    rst $38                                       ; $7e65: $ff
    db $eb                                        ; $7e66: $eb
    sbc a                                         ; $7e67: $9f
    ld b, $40                                     ; $7e68: $06 $40
    add d                                         ; $7e6a: $82
    ld h, b                                       ; $7e6b: $60
    jr nz, jr_0ef_7e70                            ; $7e6c: $20 $02

    ld b, b                                       ; $7e6e: $40
    inc b                                         ; $7e6f: $04

jr_0ef_7e70:
    nop                                           ; $7e70: $00
    inc b                                         ; $7e71: $04
    ld b, b                                       ; $7e72: $40
    inc b                                         ; $7e73: $04
    nop                                           ; $7e74: $00
    ld [bc], a                                    ; $7e75: $02
    ld b, b                                       ; $7e76: $40
    ld [bc], a                                    ; $7e77: $02
    ld h, b                                       ; $7e78: $60
    adc c                                         ; $7e79: $89
    ld e, b                                       ; $7e7a: $58
    ld a, b                                       ; $7e7b: $78
    db $e4                                        ; $7e7c: $e4
    ld a, h                                       ; $7e7d: $7c
    xor e                                         ; $7e7e: $ab
    ld [hl], a                                    ; $7e7f: $77
    rst $30                                       ; $7e80: $f7
    db $ed                                        ; $7e81: $ed
    and [hl]                                      ; $7e82: $a6
    inc bc                                        ; $7e83: $03
    rst $38                                       ; $7e84: $ff
    inc b                                         ; $7e85: $04
    rra                                           ; $7e86: $1f
    add c                                         ; $7e87: $81
    ld a, $05                                     ; $7e88: $3e $05
    ccf                                           ; $7e8a: $3f
    push bc                                       ; $7e8b: $c5
    dec a                                         ; $7e8c: $3d
    ccf                                           ; $7e8d: $3f
    ld e, $1f                                     ; $7e8e: $1e $1f
    jr jr_0ef_7eb1                                ; $7e90: $18 $1f

    inc e                                         ; $7e92: $1c
    rra                                           ; $7e93: $1f
    inc [hl]                                      ; $7e94: $34
    ccf                                           ; $7e95: $3f
    jr z, jr_0ef_7ed7                             ; $7e96: $28 $3f

    dec [hl]                                      ; $7e98: $35
    ccf                                           ; $7e99: $3f
    ld e, b                                       ; $7e9a: $58
    ld a, a                                       ; $7e9b: $7f
    ld a, [$fe84]                                 ; $7e9c: $fa $84 $fe
    add h                                         ; $7e9f: $84
    and c                                         ; $7ea0: $a1
    sbc $fb                                       ; $7ea1: $de $fb
    rst $38                                       ; $7ea3: $ff
    add h                                         ; $7ea4: $84
    rst $38                                       ; $7ea5: $ff
    ld a, $c1                                     ; $7ea6: $3e $c1
    ld l, a                                       ; $7ea8: $6f
    sub b                                         ; $7ea9: $90
    ld e, a                                       ; $7eaa: $5f
    and b                                         ; $7eab: $a0
    ld a, a                                       ; $7eac: $7f
    add b                                         ; $7ead: $80
    ei                                            ; $7eae: $fb
    inc b                                         ; $7eaf: $04
    sbc a                                         ; $7eb0: $9f

jr_0ef_7eb1:
    ld h, h                                       ; $7eb1: $64
    sbc e                                         ; $7eb2: $9b
    ld h, h                                       ; $7eb3: $64
    rst $10                                       ; $7eb4: $d7
    inc l                                         ; $7eb5: $2c
    rst $28                                       ; $7eb6: $ef
    inc e                                         ; $7eb7: $1c
    ld l, d                                       ; $7eb8: $6a
    sbc l                                         ; $7eb9: $9d
    inc h                                         ; $7eba: $24
    ei                                            ; $7ebb: $fb
    ld a, c                                       ; $7ebc: $79
    rst $20                                       ; $7ebd: $e7
    ld a, [hl]                                    ; $7ebe: $7e
    db $e3                                        ; $7ebf: $e3
    push af                                       ; $7ec0: $f5
    cp $dd                                        ; $7ec1: $fe $dd
    sbc $4e                                       ; $7ec3: $de $4e
    rst $08                                       ; $7ec5: $cf
    rst $00                                       ; $7ec6: $c7
    ld b, a                                       ; $7ec7: $47
    jp $c543                                      ; $7ec8: $c3 $43 $c5


    ld b, a                                       ; $7ecb: $47
    ld b, e                                       ; $7ecc: $43
    jp nz, $c141                                  ; $7ecd: $c2 $41 $c1

    ret nz                                        ; $7ed0: $c0

    ld [bc], a                                    ; $7ed1: $02
    ld b, b                                       ; $7ed2: $40
    add e                                         ; $7ed3: $83
    ret nz                                        ; $7ed4: $c0

    ld b, b                                       ; $7ed5: $40
    ret nz                                        ; $7ed6: $c0

jr_0ef_7ed7:
    ld [bc], a                                    ; $7ed7: $02
    add b                                         ; $7ed8: $80
    inc b                                         ; $7ed9: $04
    ret nz                                        ; $7eda: $c0

    ld [bc], a                                    ; $7edb: $02
    db $10                                        ; $7edc: $10
    sub d                                         ; $7edd: $92
    jr @+$0a                                      ; $7ede: $18 $08

    inc e                                         ; $7ee0: $1c
    inc d                                         ; $7ee1: $14
    ld e, $06                                     ; $7ee2: $1e $06
    ld a, [de]                                    ; $7ee4: $1a
    ld e, $0e                                     ; $7ee5: $1e $0e
    ld d, $1e                                     ; $7ee7: $16 $1e
    ld [bc], a                                    ; $7ee9: $02
    dec e                                         ; $7eea: $1d
    dec bc                                        ; $7eeb: $0b
    rla                                           ; $7eec: $17
    dec e                                         ; $7eed: $1d
    ld a, [de]                                    ; $7eee: $1a
    ld e, $02                                     ; $7eef: $1e $02
    inc c                                         ; $7ef1: $0c
    ld a, [bc]                                    ; $7ef2: $0a
    nop                                           ; $7ef3: $00
    add e                                         ; $7ef4: $83
    ld a, [hl-]                                   ; $7ef5: $3a
    ccf                                           ; $7ef6: $3f
    dec a                                         ; $7ef7: $3d
    inc bc                                        ; $7ef8: $03
    ccf                                           ; $7ef9: $3f
    sub l                                         ; $7efa: $95
    ld [hl], a                                    ; $7efb: $77
    ld a, a                                       ; $7efc: $7f
    ld d, a                                       ; $7efd: $57
    ld a, e                                       ; $7efe: $7b
    ld h, a                                       ; $7eff: $67
    ld a, e                                       ; $7f00: $7b
    ld l, d                                       ; $7f01: $6a
    ld [hl], a                                    ; $7f02: $77
    ld l, h                                       ; $7f03: $6c
    ld [hl], a                                    ; $7f04: $77
    ld c, d                                       ; $7f05: $4a
    ld a, l                                       ; $7f06: $7d
    ld l, e                                       ; $7f07: $6b
    ld e, h                                       ; $7f08: $5c
    sub a                                         ; $7f09: $97
    add sp, -$59                                  ; $7f0a: $e8 $a7
    ret c                                         ; $7f0c: $d8

    xor $91                                       ; $7f0d: $ee $91
    cp l                                          ; $7f0f: $bd
    ld [bc], a                                    ; $7f10: $02
    db $d3                                        ; $7f11: $d3
    adc b                                         ; $7f12: $88
    rst $38                                       ; $7f13: $ff
    adc [hl]                                      ; $7f14: $8e
    cp $00                                        ; $7f15: $fe $00
    add b                                         ; $7f17: $80
    nop                                           ; $7f18: $00
    add b                                         ; $7f19: $80
    ld c, c                                       ; $7f1a: $49
    rrca                                          ; $7f1b: $0f
    rst $38                                       ; $7f1c: $ff
    add h                                         ; $7f1d: $84
    ld a, a                                       ; $7f1e: $7f
    rst $38                                       ; $7f1f: $ff
    cp $ff                                        ; $7f20: $fe $ff
    ld [bc], a                                    ; $7f22: $02
    cp a                                          ; $7f23: $bf
    ld [bc], a                                    ; $7f24: $02
    add e                                         ; $7f25: $83

jr_0ef_7f26:
    inc b                                         ; $7f26: $04
    ld bc, $1004                                  ; $7f27: $01 $04 $10
    inc b                                         ; $7f2a: $04
    inc e                                         ; $7f2b: $1c
    or d                                          ; $7f2c: $b2
    ld [de], a                                    ; $7f2d: $12
    ld e, $02                                     ; $7f2e: $1e $02
    ld e, $0e                                     ; $7f30: $1e $0e
    ld [de], a                                    ; $7f32: $12
    dec c                                         ; $7f33: $0d
    inc de                                        ; $7f34: $13
    dec c                                         ; $7f35: $0d
    inc de                                        ; $7f36: $13
    dec e                                         ; $7f37: $1d
    inc bc                                        ; $7f38: $03
    rla                                           ; $7f39: $17
    dec bc                                        ; $7f3a: $0b
    rrca                                          ; $7f3b: $0f
    add hl, de                                    ; $7f3c: $19
    rla                                           ; $7f3d: $17
    rra                                           ; $7f3e: $1f
    dec b                                         ; $7f3f: $05
    rra                                           ; $7f40: $1f
    ld e, e                                       ; $7f41: $5b
    ld [hl], l                                    ; $7f42: $75
    or l                                          ; $7f43: $b5
    db $db                                        ; $7f44: $db
    rra                                           ; $7f45: $1f
    add hl, de                                    ; $7f46: $19
    rla                                           ; $7f47: $17
    inc e                                         ; $7f48: $1c
    ld [de], a                                    ; $7f49: $12
    dec e                                         ; $7f4a: $1d
    inc [hl]                                      ; $7f4b: $34
    dec sp                                        ; $7f4c: $3b
    ld a, [hl-]                                   ; $7f4d: $3a
    daa                                           ; $7f4e: $27
    ld e, e                                       ; $7f4f: $5b
    ld l, h                                       ; $7f50: $6c
    ld a, [hl+]                                   ; $7f51: $2a
    dec [hl]                                      ; $7f52: $35
    ld d, l                                       ; $7f53: $55
    ld a, a                                       ; $7f54: $7f
    ld l, b                                       ; $7f55: $68
    ld d, a                                       ; $7f56: $57
    and [hl]                                      ; $7f57: $a6
    ei                                            ; $7f58: $fb
    ld e, a                                       ; $7f59: $5f
    ld a, a                                       ; $7f5a: $7f
    ld [hl], l                                    ; $7f5b: $75
    ld l, [hl]                                    ; $7f5c: $6e
    ld e, l                                       ; $7f5d: $5d
    ld h, [hl]                                    ; $7f5e: $66
    ld [bc], a                                    ; $7f5f: $02
    dec sp                                        ; $7f60: $3b
    inc b                                         ; $7f61: $04
    nop                                           ; $7f62: $00
    sbc d                                         ; $7f63: $9a
    ld b, $0e                                     ; $7f64: $06 $0e
    ld b, $0e                                     ; $7f66: $06 $0e
    ld a, [bc]                                    ; $7f68: $0a
    ld c, $06                                     ; $7f69: $0e $06
    ld c, $06                                     ; $7f6b: $0e $06
    ld c, $0a                                     ; $7f6d: $0e $0a
    ld c, $0b                                     ; $7f6f: $0e $0b
    rrca                                          ; $7f71: $0f
    dec b                                         ; $7f72: $05
    dec bc                                        ; $7f73: $0b
    ld a, [bc]                                    ; $7f74: $0a
    ld b, $05                                     ; $7f75: $06 $05
    rrca                                          ; $7f77: $0f
    ld a, [bc]                                    ; $7f78: $0a
    ld c, $06                                     ; $7f79: $0e $06
    ld c, $0c                                     ; $7f7b: $0e $0c
    inc b                                         ; $7f7d: $04
    ld [bc], a                                    ; $7f7e: $02
    inc c                                         ; $7f7f: $0c
    ld [$9200], sp                                ; $7f80: $08 $00 $92
    or h                                          ; $7f83: $b4
    rst $08                                       ; $7f84: $cf
    sbc d                                         ; $7f85: $9a
    push af                                       ; $7f86: $f5
    db $ed                                        ; $7f87: $ed
    db $db                                        ; $7f88: $db
    ld d, a                                       ; $7f89: $57
    ld l, e                                       ; $7f8a: $6b
    jr z, jr_0ef_7fcc                             ; $7f8b: $28 $3f

    inc de                                        ; $7f8d: $13
    rra                                           ; $7f8e: $1f
    dec e                                         ; $7f8f: $1d
    rra                                           ; $7f90: $1f
    dec bc                                        ; $7f91: $0b
    inc c                                         ; $7f92: $0c
    dec b                                         ; $7f93: $05
    ld b, $02                                     ; $7f94: $06 $02
    inc bc                                        ; $7f96: $03
    inc c                                         ; $7f97: $0c
    nop                                           ; $7f98: $00
    inc b                                         ; $7f99: $04
    db $10                                        ; $7f9a: $10
    ld [bc], a                                    ; $7f9b: $02
    jr jr_0ef_7f26                                ; $7f9c: $18 $88

    inc c                                         ; $7f9e: $0c
    inc e                                         ; $7f9f: $1c
    inc d                                         ; $7fa0: $14
    inc e                                         ; $7fa1: $1c
    dec bc                                        ; $7fa2: $0b
    rla                                           ; $7fa3: $17
    ld d, $1a                                     ; $7fa4: $16 $1a
    ld [bc], a                                    ; $7fa6: $02
    inc e                                         ; $7fa7: $1c
    ld [bc], a                                    ; $7fa8: $02
    db $10                                        ; $7fa9: $10
    ld a, [bc]                                    ; $7faa: $0a
    nop                                           ; $7fab: $00
    rst $38                                       ; $7fac: $ff
    add hl, bc                                    ; $7fad: $09
    ld [bc], a                                    ; $7fae: $02
    ld a, [c]                                     ; $7faf: $f2
    rrca                                          ; $7fb0: $0f
    jp hl                                         ; $7fb1: $e9


    ld bc, $f9f3                                  ; $7fb2: $01 $f3 $f9
    di                                            ; $7fb5: $f3
    ld bc, $0004                                  ; $7fb6: $01 $04 $00
    ld [bc], a                                    ; $7fb9: $02
    ld d, b                                       ; $7fba: $50
    sub d                                         ; $7fbb: $92
    rst $38                                       ; $7fbc: $ff
    xor a                                         ; $7fbd: $af
    ld a, a                                       ; $7fbe: $7f
    ld b, h                                       ; $7fbf: $44
    rst $38                                       ; $7fc0: $ff
    sbc d                                         ; $7fc1: $9a
    rst $38                                       ; $7fc2: $ff
    and h                                         ; $7fc3: $a4
    ld a, a                                       ; $7fc4: $7f
    ld d, b                                       ; $7fc5: $50
    ld a, a                                       ; $7fc6: $7f
    ld e, b                                       ; $7fc7: $58
    ccf                                           ; $7fc8: $3f
    cpl                                           ; $7fc9: $2f
    rra                                           ; $7fca: $1f
    db $10                                        ; $7fcb: $10

jr_0ef_7fcc:
    rrca                                          ; $7fcc: $0f
    dec c                                         ; $7fcd: $0d
    inc b                                         ; $7fce: $04
    ld b, $02                                     ; $7fcf: $06 $02
    dec b                                         ; $7fd1: $05
    ld [bc], a                                    ; $7fd2: $02
    nop                                           ; $7fd3: $00
    ld [bc], a                                    ; $7fd4: $02
    inc a                                         ; $7fd5: $3c
    sub h                                         ; $7fd6: $94
    ld a, d                                       ; $7fd7: $7a
    ld c, [hl]                                    ; $7fd8: $4e
    db $fd                                        ; $7fd9: $fd
    add a                                         ; $7fda: $87
    ld a, [$fa2e]                                 ; $7fdb: $fa $2e $fa
    adc $fc                                       ; $7fde: $ce $fc
    ld b, h                                       ; $7fe0: $44
    db $fc                                        ; $7fe1: $fc
    inc h                                         ; $7fe2: $24
    db $fc                                        ; $7fe3: $fc
    inc h                                         ; $7fe4: $24
    db $fc                                        ; $7fe5: $fc
    ld b, h                                       ; $7fe6: $44
    ld hl, sp-$78                                 ; $7fe7: $f8 $88
    ldh a, [$b0]                                  ; $7fe9: $f0 $b0
    inc b                                         ; $7feb: $04
    ret nz                                        ; $7fec: $c0

    ld [bc], a                                    ; $7fed: $02
    and b                                         ; $7fee: $a0
    inc b                                         ; $7fef: $04
    nop                                           ; $7ff0: $00
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff

Call_0ef_7ff7:
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Jump_0ef_7fff:
    rst $38                                       ; $7fff: $ff
