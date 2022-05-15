; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    inc sp                                        ; $4000: $33
    nop                                           ; $4001: $00
    sbc c                                         ; $4002: $99
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    and a                                         ; $4005: $a7
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    or d                                          ; $4008: $b2
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    adc $24                                       ; $400b: $ce $24
    nop                                           ; $400d: $00
    rst $10                                       ; $400e: $d7
    inc h                                         ; $400f: $24
    nop                                           ; $4010: $00
    db $db                                        ; $4011: $db
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    ld [c], a                                     ; $4014: $e2
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    rst $20                                       ; $4017: $e7
    inc h                                         ; $4018: $24
    nop                                           ; $4019: $00
    di                                            ; $401a: $f3
    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    rst $38                                       ; $401d: $ff
    inc h                                         ; $401e: $24
    nop                                           ; $401f: $00
    add hl, bc                                    ; $4020: $09
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    inc de                                        ; $4023: $13
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    dec e                                         ; $4026: $1d
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    jr z, jr_033_4050                             ; $4029: $28 $25

    nop                                           ; $402b: $00
    inc sp                                        ; $402c: $33
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld a, $25                                     ; $402f: $3e $25
    nop                                           ; $4031: $00
    ld c, d                                       ; $4032: $4a
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld d, [hl]                                    ; $4035: $56
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld h, e                                       ; $4038: $63
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld l, h                                       ; $403b: $6c
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld [hl], l                                    ; $403e: $75
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld a, [hl]                                    ; $4041: $7e
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    adc e                                         ; $4044: $8b
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    sbc b                                         ; $4047: $98
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    and h                                         ; $404a: $a4
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    or b                                          ; $404d: $b0
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00

jr_033_4050:
    cp h                                          ; $4050: $bc
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    db $db                                        ; $4053: $db
    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00
    ld [bc], a                                    ; $4056: $02
    ld h, $00                                     ; $4057: $26 $00
    ld [de], a                                    ; $4059: $12
    ld h, $00                                     ; $405a: $26 $00
    ld a, [hl+]                                   ; $405c: $2a
    ld h, $00                                     ; $405d: $26 $00
    ld b, b                                       ; $405f: $40
    ld h, $00                                     ; $4060: $26 $00
    push de                                       ; $4062: $d5
    ld h, $00                                     ; $4063: $26 $00
    ld [hl+], a                                   ; $4065: $22
    daa                                           ; $4066: $27
    nop                                           ; $4067: $00
    dec [hl]                                      ; $4068: $35
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    ld d, d                                       ; $406b: $52
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld e, a                                       ; $406e: $5f
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    add h                                         ; $4071: $84
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    sub a                                         ; $4074: $97
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    cp [hl]                                       ; $4077: $be
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    sbc $27                                       ; $407a: $de $27
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    jr z, jr_033_4080                             ; $407e: $28 $00

jr_033_4080:
    ld [hl+], a                                   ; $4080: $22
    jr z, jr_033_4083                             ; $4081: $28 $00

jr_033_4083:
    ld b, [hl]                                    ; $4083: $46
    jr z, jr_033_4086                             ; $4084: $28 $00

jr_033_4086:
    ld d, c                                       ; $4086: $51
    jr z, jr_033_4089                             ; $4087: $28 $00

jr_033_4089:
    ld [hl], d                                    ; $4089: $72
    jr z, jr_033_408c                             ; $408a: $28 $00

jr_033_408c:
    adc c                                         ; $408c: $89
    jr z, jr_033_408f                             ; $408d: $28 $00

jr_033_408f:
    sbc e                                         ; $408f: $9b
    jr z, jr_033_4092                             ; $4090: $28 $00

jr_033_4092:
    ld [c], a                                     ; $4092: $e2
    jr z, jr_033_4095                             ; $4093: $28 $00

jr_033_4095:
    inc b                                         ; $4095: $04
    add hl, hl                                    ; $4096: $29
    nop                                           ; $4097: $00
    inc de                                        ; $4098: $13
    add hl, hl                                    ; $4099: $29
    nop                                           ; $409a: $00
    inc hl                                        ; $409b: $23
    add hl, hl                                    ; $409c: $29
    nop                                           ; $409d: $00
    scf                                           ; $409e: $37
    add hl, hl                                    ; $409f: $29
    nop                                           ; $40a0: $00
    ld c, l                                       ; $40a1: $4d
    add hl, hl                                    ; $40a2: $29
    nop                                           ; $40a3: $00
    halt                                          ; $40a4: $76
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    cp e                                          ; $40a7: $bb
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    xor $29                                       ; $40aa: $ee $29
    nop                                           ; $40ac: $00
    ld [$002a], sp                                ; $40ad: $08 $2a $00
    ld b, e                                       ; $40b0: $43
    ld a, [hl+]                                   ; $40b1: $2a
    nop                                           ; $40b2: $00
    ld l, [hl]                                    ; $40b3: $6e
    ld a, [hl+]                                   ; $40b4: $2a
    nop                                           ; $40b5: $00
    and b                                         ; $40b6: $a0
    ld a, [hl+]                                   ; $40b7: $2a
    nop                                           ; $40b8: $00
    cp h                                          ; $40b9: $bc
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    rst $08                                       ; $40bc: $cf
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    ei                                            ; $40bf: $fb
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ld c, $2b                                     ; $40c2: $0e $2b
    nop                                           ; $40c4: $00
    ld b, a                                       ; $40c5: $47
    dec hl                                        ; $40c6: $2b
    nop                                           ; $40c7: $00
    ld l, b                                       ; $40c8: $68
    dec hl                                        ; $40c9: $2b
    nop                                           ; $40ca: $00
    pop hl                                        ; $40cb: $e1
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ld hl, sp+$2b                                 ; $40ce: $f8 $2b
    nop                                           ; $40d0: $00
    add hl, hl                                    ; $40d1: $29
    inc l                                         ; $40d2: $2c
    nop                                           ; $40d3: $00
    inc a                                         ; $40d4: $3c
    inc l                                         ; $40d5: $2c
    nop                                           ; $40d6: $00
    ld c, l                                       ; $40d7: $4d
    inc l                                         ; $40d8: $2c
    nop                                           ; $40d9: $00
    ld h, d                                       ; $40da: $62
    inc l                                         ; $40db: $2c
    nop                                           ; $40dc: $00
    and b                                         ; $40dd: $a0
    inc l                                         ; $40de: $2c
    nop                                           ; $40df: $00
    cp e                                          ; $40e0: $bb
    inc l                                         ; $40e1: $2c
    nop                                           ; $40e2: $00
    cp a                                          ; $40e3: $bf
    inc l                                         ; $40e4: $2c
    nop                                           ; $40e5: $00
    push bc                                       ; $40e6: $c5
    inc l                                         ; $40e7: $2c
    nop                                           ; $40e8: $00
    adc $2c                                       ; $40e9: $ce $2c
    nop                                           ; $40eb: $00
    inc h                                         ; $40ec: $24
    dec l                                         ; $40ed: $2d
    nop                                           ; $40ee: $00
    ld d, c                                       ; $40ef: $51
    dec l                                         ; $40f0: $2d
    nop                                           ; $40f1: $00
    ld [hl], d                                    ; $40f2: $72
    dec l                                         ; $40f3: $2d
    nop                                           ; $40f4: $00
    rst $00                                       ; $40f5: $c7
    dec l                                         ; $40f6: $2d
    nop                                           ; $40f7: $00
    db $fd                                        ; $40f8: $fd
    dec l                                         ; $40f9: $2d
    nop                                           ; $40fa: $00
    ld [hl], $2e                                  ; $40fb: $36 $2e
    nop                                           ; $40fd: $00
    ld h, e                                       ; $40fe: $63
    ld l, $00                                     ; $40ff: $2e $00
    adc l                                         ; $4101: $8d
    ld l, $00                                     ; $4102: $2e $00
    ld [c], a                                     ; $4104: $e2
    ld l, $00                                     ; $4105: $2e $00
    db $ed                                        ; $4107: $ed
    ld l, $00                                     ; $4108: $2e $00
    inc de                                        ; $410a: $13
    cpl                                           ; $410b: $2f
    nop                                           ; $410c: $00
    ld h, $2f                                     ; $410d: $26 $2f
    nop                                           ; $410f: $00
    ld c, a                                       ; $4110: $4f
    cpl                                           ; $4111: $2f
    nop                                           ; $4112: $00
    ld h, e                                       ; $4113: $63
    cpl                                           ; $4114: $2f
    nop                                           ; $4115: $00
    or a                                          ; $4116: $b7
    cpl                                           ; $4117: $2f
    nop                                           ; $4118: $00
    dec d                                         ; $4119: $15
    jr nc, jr_033_411c                            ; $411a: $30 $00

jr_033_411c:
    ld b, e                                       ; $411c: $43
    jr nc, jr_033_411f                            ; $411d: $30 $00

jr_033_411f:
    add a                                         ; $411f: $87
    jr nc, jr_033_4122                            ; $4120: $30 $00

jr_033_4122:
    ld bc, $0031                                  ; $4122: $01 $31 $00
    rra                                           ; $4125: $1f
    ld sp, $8800                                  ; $4126: $31 $00 $88
    ld sp, $9b00                                  ; $4129: $31 $00 $9b
    ld sp, $be00                                  ; $412c: $31 $00 $be
    ld sp, $e200                                  ; $412f: $31 $00 $e2
    ld sp, $f800                                  ; $4132: $31 $00 $f8
    ld sp, $3000                                  ; $4135: $31 $00 $30
    ld [hl-], a                                   ; $4138: $32
    nop                                           ; $4139: $00
    ld l, l                                       ; $413a: $6d
    ld [hl-], a                                   ; $413b: $32
    nop                                           ; $413c: $00
    ld [hl], c                                    ; $413d: $71
    ld [hl-], a                                   ; $413e: $32
    nop                                           ; $413f: $00
    sbc b                                         ; $4140: $98
    ld [hl-], a                                   ; $4141: $32
    nop                                           ; $4142: $00
    call $0032                                    ; $4143: $cd $32 $00
    rst $18                                       ; $4146: $df
    ld [hl-], a                                   ; $4147: $32
    nop                                           ; $4148: $00
    ld b, $33                                     ; $4149: $06 $33
    nop                                           ; $414b: $00
    ld hl, $0033                                  ; $414c: $21 $33 $00
    ld c, [hl]                                    ; $414f: $4e
    inc sp                                        ; $4150: $33
    nop                                           ; $4151: $00
    ld h, e                                       ; $4152: $63
    inc sp                                        ; $4153: $33
    nop                                           ; $4154: $00
    db $d3                                        ; $4155: $d3
    inc sp                                        ; $4156: $33
    nop                                           ; $4157: $00
    ld sp, hl                                     ; $4158: $f9
    inc sp                                        ; $4159: $33
    nop                                           ; $415a: $00
    ld [$0034], sp                                ; $415b: $08 $34 $00
    inc [hl]                                      ; $415e: $34
    inc [hl]                                      ; $415f: $34
    nop                                           ; $4160: $00
    ccf                                           ; $4161: $3f
    inc [hl]                                      ; $4162: $34
    nop                                           ; $4163: $00
    sub c                                         ; $4164: $91
    inc [hl]                                      ; $4165: $34
    nop                                           ; $4166: $00
    or [hl]                                       ; $4167: $b6
    inc [hl]                                      ; $4168: $34
    nop                                           ; $4169: $00
    call nz, Call_000_0034                        ; $416a: $c4 $34 $00
    db $e4                                        ; $416d: $e4
    inc [hl]                                      ; $416e: $34
    nop                                           ; $416f: $00
    cp $34                                        ; $4170: $fe $34
    nop                                           ; $4172: $00
    ld e, $35                                     ; $4173: $1e $35
    nop                                           ; $4175: $00
    inc sp                                        ; $4176: $33
    dec [hl]                                      ; $4177: $35
    nop                                           ; $4178: $00
    ld [hl], h                                    ; $4179: $74
    dec [hl]                                      ; $417a: $35
    nop                                           ; $417b: $00
    ld a, h                                       ; $417c: $7c
    dec [hl]                                      ; $417d: $35
    nop                                           ; $417e: $00
    sub e                                         ; $417f: $93
    dec [hl]                                      ; $4180: $35
    nop                                           ; $4181: $00
    sbc e                                         ; $4182: $9b
    dec [hl]                                      ; $4183: $35
    nop                                           ; $4184: $00
    and l                                         ; $4185: $a5
    dec [hl]                                      ; $4186: $35
    nop                                           ; $4187: $00
    xor l                                         ; $4188: $ad
    dec [hl]                                      ; $4189: $35
    nop                                           ; $418a: $00
    cp l                                          ; $418b: $bd
    dec [hl]                                      ; $418c: $35
    nop                                           ; $418d: $00
    adc $35                                       ; $418e: $ce $35
    nop                                           ; $4190: $00
    pop hl                                        ; $4191: $e1
    dec [hl]                                      ; $4192: $35
    nop                                           ; $4193: $00
    ld a, [c]                                     ; $4194: $f2
    dec [hl]                                      ; $4195: $35
    nop                                           ; $4196: $00
    ld hl, sp+$35                                 ; $4197: $f8 $35
    nop                                           ; $4199: $00
    ld bc, $0036                                  ; $419a: $01 $36 $00
    inc l                                         ; $419d: $2c
    ld [hl], $00                                  ; $419e: $36 $00
    ld a, h                                       ; $41a0: $7c
    ld [hl], $00                                  ; $41a1: $36 $00
    xor [hl]                                      ; $41a3: $ae
    ld [hl], $00                                  ; $41a4: $36 $00
    ret nz                                        ; $41a6: $c0

    ld [hl], $00                                  ; $41a7: $36 $00
    call nc, $0036                                ; $41a9: $d4 $36 $00
    ldh a, [$36]                                  ; $41ac: $f0 $36
    nop                                           ; $41ae: $00
    ld hl, $0037                                  ; $41af: $21 $37 $00
    ld h, l                                       ; $41b2: $65
    scf                                           ; $41b3: $37
    nop                                           ; $41b4: $00
    add b                                         ; $41b5: $80
    scf                                           ; $41b6: $37
    nop                                           ; $41b7: $00
    cp d                                          ; $41b8: $ba
    scf                                           ; $41b9: $37
    nop                                           ; $41ba: $00
    jp Jump_000_0037                              ; $41bb: $c3 $37 $00


    db $e3                                        ; $41be: $e3
    scf                                           ; $41bf: $37
    nop                                           ; $41c0: $00
    dec hl                                        ; $41c1: $2b
    jr c, jr_033_41c4                             ; $41c2: $38 $00

jr_033_41c4:
    ld b, h                                       ; $41c4: $44
    jr c, jr_033_41c7                             ; $41c5: $38 $00

jr_033_41c7:
    ld l, b                                       ; $41c7: $68
    jr c, jr_033_41ca                             ; $41c8: $38 $00

jr_033_41ca:
    add c                                         ; $41ca: $81
    jr c, jr_033_41cd                             ; $41cb: $38 $00

jr_033_41cd:
    sbc a                                         ; $41cd: $9f
    jr c, jr_033_41d0                             ; $41ce: $38 $00

jr_033_41d0:
    or h                                          ; $41d0: $b4
    jr c, jr_033_41d3                             ; $41d1: $38 $00

jr_033_41d3:
    call nc, $0038                                ; $41d3: $d4 $38 $00
    call c, $0038                                 ; $41d6: $dc $38 $00
    rst $30                                       ; $41d9: $f7
    jr c, jr_033_41dc                             ; $41da: $38 $00

jr_033_41dc:
    add hl, de                                    ; $41dc: $19
    add hl, sp                                    ; $41dd: $39
    nop                                           ; $41de: $00
    inc h                                         ; $41df: $24
    add hl, sp                                    ; $41e0: $39
    nop                                           ; $41e1: $00
    dec sp                                        ; $41e2: $3b
    add hl, sp                                    ; $41e3: $39
    nop                                           ; $41e4: $00
    ld d, h                                       ; $41e5: $54
    add hl, sp                                    ; $41e6: $39
    nop                                           ; $41e7: $00
    add b                                         ; $41e8: $80
    add hl, sp                                    ; $41e9: $39
    nop                                           ; $41ea: $00
    or l                                          ; $41eb: $b5
    add hl, sp                                    ; $41ec: $39
    nop                                           ; $41ed: $00
    ld hl, sp+$39                                 ; $41ee: $f8 $39
    nop                                           ; $41f0: $00
    inc hl                                        ; $41f1: $23
    ld a, [hl-]                                   ; $41f2: $3a
    nop                                           ; $41f3: $00
    ld d, c                                       ; $41f4: $51
    ld a, [hl-]                                   ; $41f5: $3a
    nop                                           ; $41f6: $00
    ld l, a                                       ; $41f7: $6f
    ld a, [hl-]                                   ; $41f8: $3a
    nop                                           ; $41f9: $00
    add l                                         ; $41fa: $85
    ld a, [hl-]                                   ; $41fb: $3a
    nop                                           ; $41fc: $00
    sbc h                                         ; $41fd: $9c
    ld a, [hl-]                                   ; $41fe: $3a
    nop                                           ; $41ff: $00
    add $3a                                       ; $4200: $c6 $3a
    nop                                           ; $4202: $00
    call c, Call_000_003a                         ; $4203: $dc $3a $00
    db $fd                                        ; $4206: $fd
    ld a, [hl-]                                   ; $4207: $3a
    nop                                           ; $4208: $00
    inc de                                        ; $4209: $13
    dec sp                                        ; $420a: $3b
    nop                                           ; $420b: $00
    dec sp                                        ; $420c: $3b
    dec sp                                        ; $420d: $3b
    nop                                           ; $420e: $00
    ld e, c                                       ; $420f: $59
    dec sp                                        ; $4210: $3b
    nop                                           ; $4211: $00
    ld [hl], h                                    ; $4212: $74
    dec sp                                        ; $4213: $3b
    nop                                           ; $4214: $00
    adc h                                         ; $4215: $8c
    dec sp                                        ; $4216: $3b
    nop                                           ; $4217: $00
    sbc c                                         ; $4218: $99
    dec sp                                        ; $4219: $3b
    nop                                           ; $421a: $00
    xor b                                         ; $421b: $a8
    dec sp                                        ; $421c: $3b
    nop                                           ; $421d: $00
    or h                                          ; $421e: $b4
    dec sp                                        ; $421f: $3b
    nop                                           ; $4220: $00
    jp c, Jump_000_003b                           ; $4221: $da $3b $00

    jr nz, @+$3e                                  ; $4224: $20 $3c

    nop                                           ; $4226: $00
    ld b, c                                       ; $4227: $41
    inc a                                         ; $4228: $3c
    nop                                           ; $4229: $00
    ld h, l                                       ; $422a: $65
    inc a                                         ; $422b: $3c
    nop                                           ; $422c: $00
    halt                                          ; $422d: $76
    inc a                                         ; $422e: $3c
    nop                                           ; $422f: $00
    adc c                                         ; $4230: $89
    inc a                                         ; $4231: $3c
    nop                                           ; $4232: $00
    sbc b                                         ; $4233: $98
    inc a                                         ; $4234: $3c
    nop                                           ; $4235: $00
    or [hl]                                       ; $4236: $b6
    inc a                                         ; $4237: $3c
    nop                                           ; $4238: $00
    rst $10                                       ; $4239: $d7
    inc a                                         ; $423a: $3c
    nop                                           ; $423b: $00
    cp $3c                                        ; $423c: $fe $3c
    nop                                           ; $423e: $00
    dec bc                                        ; $423f: $0b
    dec a                                         ; $4240: $3d
    nop                                           ; $4241: $00
    ld b, [hl]                                    ; $4242: $46
    dec a                                         ; $4243: $3d
    nop                                           ; $4244: $00
    ld e, b                                       ; $4245: $58
    dec a                                         ; $4246: $3d
    nop                                           ; $4247: $00
    ld [hl], b                                    ; $4248: $70
    dec a                                         ; $4249: $3d
    nop                                           ; $424a: $00
    cp h                                          ; $424b: $bc
    dec a                                         ; $424c: $3d
    nop                                           ; $424d: $00
    ret nc                                        ; $424e: $d0

    dec a                                         ; $424f: $3d
    nop                                           ; $4250: $00
    ld a, [c]                                     ; $4251: $f2
    dec a                                         ; $4252: $3d
    nop                                           ; $4253: $00
    inc b                                         ; $4254: $04
    ld a, $00                                     ; $4255: $3e $00
    db $10                                        ; $4257: $10
    ld a, $00                                     ; $4258: $3e $00
    inc [hl]                                      ; $425a: $34
    ld a, $00                                     ; $425b: $3e $00
    ld [hl], c                                    ; $425d: $71
    ld a, $00                                     ; $425e: $3e $00
    ld a, c                                       ; $4260: $79
    ld a, $00                                     ; $4261: $3e $00
    cp d                                          ; $4263: $ba
    ld a, $00                                     ; $4264: $3e $00
    rst $08                                       ; $4266: $cf
    ld a, $00                                     ; $4267: $3e $00
    jr nz, jr_033_42aa                            ; $4269: $20 $3f

    nop                                           ; $426b: $00
    ld b, a                                       ; $426c: $47
    ccf                                           ; $426d: $3f
    nop                                           ; $426e: $00
    ld d, d                                       ; $426f: $52
    ccf                                           ; $4270: $3f
    nop                                           ; $4271: $00
    add e                                         ; $4272: $83
    ccf                                           ; $4273: $3f
    nop                                           ; $4274: $00
    or e                                          ; $4275: $b3
    ccf                                           ; $4276: $3f
    nop                                           ; $4277: $00
    cp b                                          ; $4278: $b8
    ccf                                           ; $4279: $3f
    nop                                           ; $427a: $00
    ret nc                                        ; $427b: $d0

    ccf                                           ; $427c: $3f
    nop                                           ; $427d: $00
    reti                                          ; $427e: $d9


    ccf                                           ; $427f: $3f
    nop                                           ; $4280: $00
    xor $3f                                       ; $4281: $ee $3f
    ld bc, $0001                                  ; $4283: $01 $01 $00
    ld bc, $000b                                  ; $4286: $01 $0b $00
    ld bc, $00d4                                  ; $4289: $01 $d4 $00
    ld bc, $0113                                  ; $428c: $01 $13 $01
    ld bc, $016a                                  ; $428f: $01 $6a $01
    ld bc, $017d                                  ; $4292: $01 $7d $01
    ld bc, $019f                                  ; $4295: $01 $9f $01
    ld bc, $01e2                                  ; $4298: $01 $e2 $01
    ld bc, $0205                                  ; $429b: $01 $05 $02
    ld bc, $0293                                  ; $429e: $01 $93 $02
    ld bc, $02e7                                  ; $42a1: $01 $e7 $02
    ld bc, $0343                                  ; $42a4: $01 $43 $03
    ld bc, $0371                                  ; $42a7: $01 $71 $03

jr_033_42aa:
    ld bc, $03bc                                  ; $42aa: $01 $bc $03
    ld bc, $03dc                                  ; $42ad: $01 $dc $03
    ld bc, $043c                                  ; $42b0: $01 $3c $04
    ld bc, $0452                                  ; $42b3: $01 $52 $04
    ld bc, $0468                                  ; $42b6: $01 $68 $04
    ld bc, $048c                                  ; $42b9: $01 $8c $04
    ld bc, $04ae                                  ; $42bc: $01 $ae $04
    ld bc, $04d7                                  ; $42bf: $01 $d7 $04
    ld bc, $04fc                                  ; $42c2: $01 $fc $04
    ld bc, $0516                                  ; $42c5: $01 $16 $05
    ld bc, $0521                                  ; $42c8: $01 $21 $05
    ld bc, $0547                                  ; $42cb: $01 $47 $05
    ld bc, $054c                                  ; $42ce: $01 $4c $05
    ld bc, $0553                                  ; $42d1: $01 $53 $05
    ld bc, $05a7                                  ; $42d4: $01 $a7 $05
    ld bc, $05c4                                  ; $42d7: $01 $c4 $05
    ld bc, $05f8                                  ; $42da: $01 $f8 $05
    ld bc, $060b                                  ; $42dd: $01 $0b $06
    ld bc, $0659                                  ; $42e0: $01 $59 $06
    ld bc, $065f                                  ; $42e3: $01 $5f $06
    ld bc, $067b                                  ; $42e6: $01 $7b $06
    ld bc, $068c                                  ; $42e9: $01 $8c $06
    ld bc, $06bb                                  ; $42ec: $01 $bb $06
    ld bc, $06ff                                  ; $42ef: $01 $ff $06
    ld bc, $071d                                  ; $42f2: $01 $1d $07
    ld bc, $072b                                  ; $42f5: $01 $2b $07
    ld bc, $0742                                  ; $42f8: $01 $42 $07
    ld bc, $0751                                  ; $42fb: $01 $51 $07
    ld bc, $077a                                  ; $42fe: $01 $7a $07
    ld bc, $079d                                  ; $4301: $01 $9d $07
    ld bc, $07e3                                  ; $4304: $01 $e3 $07
    ld bc, $07ef                                  ; $4307: $01 $ef $07
    ld bc, $0872                                  ; $430a: $01 $72 $08
    ld bc, $0879                                  ; $430d: $01 $79 $08
    ld bc, $0897                                  ; $4310: $01 $97 $08
    ld bc, $08a4                                  ; $4313: $01 $a4 $08
    ld bc, $08bb                                  ; $4316: $01 $bb $08
    ld bc, $08d6                                  ; $4319: $01 $d6 $08
    ld bc, $08f8                                  ; $431c: $01 $f8 $08
    ld bc, $090b                                  ; $431f: $01 $0b $09
    ld bc, $0921                                  ; $4322: $01 $21 $09
    ld bc, $0990                                  ; $4325: $01 $90 $09
    ld bc, $09a6                                  ; $4328: $01 $a6 $09
    ld bc, $09c7                                  ; $432b: $01 $c7 $09
    ld bc, $09f0                                  ; $432e: $01 $f0 $09
    ld bc, $0a09                                  ; $4331: $01 $09 $0a
    ld bc, $0a44                                  ; $4334: $01 $44 $0a
    ld bc, $0a56                                  ; $4337: $01 $56 $0a
    ld bc, $0a83                                  ; $433a: $01 $83 $0a
    ld bc, $0a9f                                  ; $433d: $01 $9f $0a
    ld bc, $0ac7                                  ; $4340: $01 $c7 $0a
    ld bc, $0af4                                  ; $4343: $01 $f4 $0a
    ld bc, $0b0e                                  ; $4346: $01 $0e $0b
    ld bc, $0bcd                                  ; $4349: $01 $cd $0b
    ld bc, $0be3                                  ; $434c: $01 $e3 $0b
    ld bc, $0c68                                  ; $434f: $01 $68 $0c
    ld bc, $0c7c                                  ; $4352: $01 $7c $0c
    ld bc, $0c9a                                  ; $4355: $01 $9a $0c
    ld bc, $0ca6                                  ; $4358: $01 $a6 $0c
    ld bc, $0cfc                                  ; $435b: $01 $fc $0c
    ld bc, $0d58                                  ; $435e: $01 $58 $0d
    ld bc, $0d74                                  ; $4361: $01 $74 $0d
    ld bc, $0d8c                                  ; $4364: $01 $8c $0d
    ld bc, $0da4                                  ; $4367: $01 $a4 $0d
    ld bc, $0db8                                  ; $436a: $01 $b8 $0d
    ld bc, $0dc4                                  ; $436d: $01 $c4 $0d
    ld bc, $0dd0                                  ; $4370: $01 $d0 $0d
    ld bc, $0ddd                                  ; $4373: $01 $dd $0d
    ld bc, $0de9                                  ; $4376: $01 $e9 $0d
    ld bc, $0df5                                  ; $4379: $01 $f5 $0d
    ld bc, $0dfe                                  ; $437c: $01 $fe $0d
    ld bc, $0e09                                  ; $437f: $01 $09 $0e
    ld bc, $0e24                                  ; $4382: $01 $24 $0e
    ld bc, $0e4c                                  ; $4385: $01 $4c $0e
    ld bc, $0e77                                  ; $4388: $01 $77 $0e
    ld bc, $0ea0                                  ; $438b: $01 $a0 $0e
    ld bc, $0ead                                  ; $438e: $01 $ad $0e
    ld bc, $0ed5                                  ; $4391: $01 $d5 $0e
    ld bc, $0f01                                  ; $4394: $01 $01 $0f
    ld bc, $0f26                                  ; $4397: $01 $26 $0f
    ld bc, $0f3f                                  ; $439a: $01 $3f $0f
    ld bc, $0f58                                  ; $439d: $01 $58 $0f
    ld bc, $0f6e                                  ; $43a0: $01 $6e $0f
    ld bc, $0f8f                                  ; $43a3: $01 $8f $0f
    ld bc, $0fa4                                  ; $43a6: $01 $a4 $0f
    ld bc, $0fca                                  ; $43a9: $01 $ca $0f
    ld bc, $0fdf                                  ; $43ac: $01 $df $0f
    ld bc, $0ff5                                  ; $43af: $01 $f5 $0f
    ld bc, $100d                                  ; $43b2: $01 $0d $10
    ld bc, $1031                                  ; $43b5: $01 $31 $10
    ld bc, $1076                                  ; $43b8: $01 $76 $10
    ld bc, $1091                                  ; $43bb: $01 $91 $10
    ld bc, $1094                                  ; $43be: $01 $94 $10
    ld bc, $10b9                                  ; $43c1: $01 $b9 $10
    ld bc, $10d3                                  ; $43c4: $01 $d3 $10
    ld bc, $10fe                                  ; $43c7: $01 $fe $10
    ld bc, $110c                                  ; $43ca: $01 $0c $11
    ld bc, $1124                                  ; $43cd: $01 $24 $11
    ld bc, $1156                                  ; $43d0: $01 $56 $11
    ld bc, $11da                                  ; $43d3: $01 $da $11
    ld bc, $11f3                                  ; $43d6: $01 $f3 $11
    ld bc, $1200                                  ; $43d9: $01 $00 $12
    ld bc, $1216                                  ; $43dc: $01 $16 $12
    ld bc, $1224                                  ; $43df: $01 $24 $12
    ld bc, $125e                                  ; $43e2: $01 $5e $12
    ld bc, $128e                                  ; $43e5: $01 $8e $12
    ld bc, $12b5                                  ; $43e8: $01 $b5 $12
    ld bc, $12e8                                  ; $43eb: $01 $e8 $12
    ld bc, $1328                                  ; $43ee: $01 $28 $13
    ld bc, $1377                                  ; $43f1: $01 $77 $13
    ld bc, $13aa                                  ; $43f4: $01 $aa $13
    ld bc, $13eb                                  ; $43f7: $01 $eb $13
    ld bc, $1422                                  ; $43fa: $01 $22 $14
    ld bc, $1476                                  ; $43fd: $01 $76 $14
    ld bc, $14c3                                  ; $4400: $01 $c3 $14
    ld bc, $1507                                  ; $4403: $01 $07 $15
    ld bc, $1559                                  ; $4406: $01 $59 $15
    ld bc, $15a4                                  ; $4409: $01 $a4 $15
    ld bc, $15d6                                  ; $440c: $01 $d6 $15
    ld bc, $1608                                  ; $440f: $01 $08 $16
    ld bc, $1643                                  ; $4412: $01 $43 $16
    ld bc, $1694                                  ; $4415: $01 $94 $16
    ld bc, $16d8                                  ; $4418: $01 $d8 $16
    ld bc, $1732                                  ; $441b: $01 $32 $17
    ld bc, $1779                                  ; $441e: $01 $79 $17
    ld bc, $17b8                                  ; $4421: $01 $b8 $17
    ld bc, $17fe                                  ; $4424: $01 $fe $17
    ld bc, $1844                                  ; $4427: $01 $44 $18
    ld bc, $1873                                  ; $442a: $01 $73 $18
    ld bc, $18b6                                  ; $442d: $01 $b6 $18
    ld bc, $18ee                                  ; $4430: $01 $ee $18
    ld bc, $1920                                  ; $4433: $01 $20 $19
    ld bc, $1965                                  ; $4436: $01 $65 $19
    ld bc, $19ab                                  ; $4439: $01 $ab $19
    ld bc, $1a00                                  ; $443c: $01 $00 $1a
    ld bc, $1a6d                                  ; $443f: $01 $6d $1a
    ld bc, $1acd                                  ; $4442: $01 $cd $1a
    ld bc, $1b05                                  ; $4445: $01 $05 $1b
    ld bc, $1b37                                  ; $4448: $01 $37 $1b
    ld bc, $1b74                                  ; $444b: $01 $74 $1b
    ld bc, $1bc2                                  ; $444e: $01 $c2 $1b
    ld bc, $1c17                                  ; $4451: $01 $17 $1c
    ld bc, $1c84                                  ; $4454: $01 $84 $1c
    ld bc, $1cce                                  ; $4457: $01 $ce $1c
    ld bc, $1d14                                  ; $445a: $01 $14 $1d
    ld bc, $1d50                                  ; $445d: $01 $50 $1d
    ld bc, $1d9a                                  ; $4460: $01 $9a $1d
    ld bc, $1dd6                                  ; $4463: $01 $d6 $1d
    ld bc, $1e11                                  ; $4466: $01 $11 $1e
    ld bc, $1e4a                                  ; $4469: $01 $4a $1e
    ld bc, $1e5d                                  ; $446c: $01 $5d $1e
    ld bc, $1e7d                                  ; $446f: $01 $7d $1e
    ld bc, $1e97                                  ; $4472: $01 $97 $1e
    ld bc, $1eb7                                  ; $4475: $01 $b7 $1e
    ld bc, $1eee                                  ; $4478: $01 $ee $1e
    ld bc, $1ef7                                  ; $447b: $01 $f7 $1e
    ld bc, $1f04                                  ; $447e: $01 $04 $1f
    ld bc, $1f08                                  ; $4481: $01 $08 $1f
    ld bc, $1f38                                  ; $4484: $01 $38 $1f
    ld bc, $1f60                                  ; $4487: $01 $60 $1f
    ld bc, $1f88                                  ; $448a: $01 $88 $1f
    ld bc, $1fad                                  ; $448d: $01 $ad $1f
    ld bc, $1fc3                                  ; $4490: $01 $c3 $1f
    ld bc, $1fce                                  ; $4493: $01 $ce $1f
    ld bc, $2020                                  ; $4496: $01 $20 $20
    ld bc, $2052                                  ; $4499: $01 $52 $20
    ld bc, $208c                                  ; $449c: $01 $8c $20
    ld bc, $209d                                  ; $449f: $01 $9d $20
    ld bc, $20c1                                  ; $44a2: $01 $c1 $20
    ld bc, $20d6                                  ; $44a5: $01 $d6 $20
    ld bc, $20ec                                  ; $44a8: $01 $ec $20
    ld bc, $20fa                                  ; $44ab: $01 $fa $20
    ld bc, $2112                                  ; $44ae: $01 $12 $21
    ld bc, $2126                                  ; $44b1: $01 $26 $21
    ld bc, $214d                                  ; $44b4: $01 $4d $21
    ld bc, $2160                                  ; $44b7: $01 $60 $21
    ld bc, $2178                                  ; $44ba: $01 $78 $21
    ld bc, $218c                                  ; $44bd: $01 $8c $21
    ld bc, $21d7                                  ; $44c0: $01 $d7 $21
    ld bc, $21f0                                  ; $44c3: $01 $f0 $21
    ld bc, $2205                                  ; $44c6: $01 $05 $22
    ld bc, $2222                                  ; $44c9: $01 $22 $22
    ld bc, $2250                                  ; $44cc: $01 $50 $22
    ld bc, $2273                                  ; $44cf: $01 $73 $22
    ld bc, $227c                                  ; $44d2: $01 $7c $22
    ld bc, $229e                                  ; $44d5: $01 $9e $22
    ld bc, $22ad                                  ; $44d8: $01 $ad $22
    ld bc, $2303                                  ; $44db: $01 $03 $23
    ld bc, $2320                                  ; $44de: $01 $20 $23
    ld bc, $232f                                  ; $44e1: $01 $2f $23
    ld bc, $234e                                  ; $44e4: $01 $4e $23
    ld bc, $2357                                  ; $44e7: $01 $57 $23
    ld bc, $239c                                  ; $44ea: $01 $9c $23
    ld bc, $23ab                                  ; $44ed: $01 $ab $23
    ld bc, $23cb                                  ; $44f0: $01 $cb $23
    ld bc, $23e2                                  ; $44f3: $01 $e2 $23
    ld bc, $23f0                                  ; $44f6: $01 $f0 $23
    ld bc, $245d                                  ; $44f9: $01 $5d $24
    ld bc, $2477                                  ; $44fc: $01 $77 $24
    ld bc, $2490                                  ; $44ff: $01 $90 $24
    ld bc, $249d                                  ; $4502: $01 $9d $24
    ld bc, $24ac                                  ; $4505: $01 $ac $24
    ld bc, $24d0                                  ; $4508: $01 $d0 $24
    ld bc, $24e8                                  ; $450b: $01 $e8 $24
    ld bc, $24fa                                  ; $450e: $01 $fa $24
    ld bc, $2506                                  ; $4511: $01 $06 $25
    ld bc, $2526                                  ; $4514: $01 $26 $25
    ld bc, $252c                                  ; $4517: $01 $2c $25
    ld bc, $254f                                  ; $451a: $01 $4f $25
    ld bc, $2572                                  ; $451d: $01 $72 $25
    ld bc, $2583                                  ; $4520: $01 $83 $25
    ld bc, $25a4                                  ; $4523: $01 $a4 $25
    ld bc, $25c4                                  ; $4526: $01 $c4 $25
    ld bc, $2605                                  ; $4529: $01 $05 $26
    ld bc, $261f                                  ; $452c: $01 $1f $26
    ld bc, $266c                                  ; $452f: $01 $6c $26
    ld bc, $26b2                                  ; $4532: $01 $b2 $26
    ld bc, $26de                                  ; $4535: $01 $de $26
    ld bc, $273f                                  ; $4538: $01 $3f $27
    ld bc, $276d                                  ; $453b: $01 $6d $27
    ld bc, $279e                                  ; $453e: $01 $9e $27
    ld bc, $280e                                  ; $4541: $01 $0e $28
    ld bc, $2831                                  ; $4544: $01 $31 $28
    ld bc, $289a                                  ; $4547: $01 $9a $28
    ld bc, $28ac                                  ; $454a: $01 $ac $28
    ld bc, $28dd                                  ; $454d: $01 $dd $28
    ld bc, $29da                                  ; $4550: $01 $da $29
    ld bc, $2a0a                                  ; $4553: $01 $0a $2a
    ld bc, $2a29                                  ; $4556: $01 $29 $2a
    ld bc, $2a54                                  ; $4559: $01 $54 $2a
    ld bc, $2a82                                  ; $455c: $01 $82 $2a
    ld bc, $2a98                                  ; $455f: $01 $98 $2a
    ld bc, $2aa5                                  ; $4562: $01 $a5 $2a
    ld bc, $2ae8                                  ; $4565: $01 $e8 $2a
    ld bc, $2af1                                  ; $4568: $01 $f1 $2a
    ld bc, $2b02                                  ; $456b: $01 $02 $2b
    ld bc, $2b4a                                  ; $456e: $01 $4a $2b
    ld bc, $2b79                                  ; $4571: $01 $79 $2b
    ld bc, $2ba3                                  ; $4574: $01 $a3 $2b
    ld bc, $2bba                                  ; $4577: $01 $ba $2b
    ld bc, $2beb                                  ; $457a: $01 $eb $2b
    ld bc, $2c1c                                  ; $457d: $01 $1c $2c
    ld bc, $2c3a                                  ; $4580: $01 $3a $2c
    ld bc, $2c75                                  ; $4583: $01 $75 $2c
    ld bc, $2c8d                                  ; $4586: $01 $8d $2c
    ld bc, $2ca9                                  ; $4589: $01 $a9 $2c
    ld bc, $2cd2                                  ; $458c: $01 $d2 $2c
    ld bc, $2d01                                  ; $458f: $01 $01 $2d
    ld bc, $2d20                                  ; $4592: $01 $20 $2d
    ld bc, $2d51                                  ; $4595: $01 $51 $2d
    ld bc, $2d7e                                  ; $4598: $01 $7e $2d
    ld bc, $2d8f                                  ; $459b: $01 $8f $2d
    ld bc, $2dbf                                  ; $459e: $01 $bf $2d
    ld bc, $2dd9                                  ; $45a1: $01 $d9 $2d
    ld bc, $2de5                                  ; $45a4: $01 $e5 $2d
    ld bc, $2e32                                  ; $45a7: $01 $32 $2e
    ld bc, $2e39                                  ; $45aa: $01 $39 $2e
    ld bc, $2ef9                                  ; $45ad: $01 $f9 $2e
    ld bc, $2f0c                                  ; $45b0: $01 $0c $2f
    ld bc, $2f18                                  ; $45b3: $01 $18 $2f
    ld bc, $2f36                                  ; $45b6: $01 $36 $2f
    ld bc, $2f60                                  ; $45b9: $01 $60 $2f
    ld bc, $2fa1                                  ; $45bc: $01 $a1 $2f
    ld bc, $2ff0                                  ; $45bf: $01 $f0 $2f
    ld bc, $3024                                  ; $45c2: $01 $24 $30
    ld bc, $3048                                  ; $45c5: $01 $48 $30
    ld bc, $3096                                  ; $45c8: $01 $96 $30
    ld bc, $3114                                  ; $45cb: $01 $14 $31
    ld bc, $3143                                  ; $45ce: $01 $43 $31
    ld bc, $3181                                  ; $45d1: $01 $81 $31
    ld bc, $3194                                  ; $45d4: $01 $94 $31
    ld bc, $31ba                                  ; $45d7: $01 $ba $31
    ld bc, $31d8                                  ; $45da: $01 $d8 $31
    ld bc, $31fd                                  ; $45dd: $01 $fd $31
    ld bc, $321b                                  ; $45e0: $01 $1b $32
    ld bc, $3245                                  ; $45e3: $01 $45 $32
    ld bc, $3280                                  ; $45e6: $01 $80 $32
    ld bc, $32c1                                  ; $45e9: $01 $c1 $32
    ld bc, $32e9                                  ; $45ec: $01 $e9 $32
    ld bc, $3352                                  ; $45ef: $01 $52 $33
    ld bc, $3382                                  ; $45f2: $01 $82 $33
    ld bc, $340e                                  ; $45f5: $01 $0e $34
    ld bc, $3453                                  ; $45f8: $01 $53 $34

Call_033_45fb:
    ld bc, $3493                                  ; $45fb: $01 $93 $34
    ld bc, $34dc                                  ; $45fe: $01 $dc $34
    ld bc, $3529                                  ; $4601: $01 $29 $35
    ld bc, $354b                                  ; $4604: $01 $4b $35
    ld bc, $3571                                  ; $4607: $01 $71 $35
    ld bc, $3592                                  ; $460a: $01 $92 $35
    ld bc, $35be                                  ; $460d: $01 $be $35
    ld bc, $35e5                                  ; $4610: $01 $e5 $35
    ld bc, $3600                                  ; $4613: $01 $00 $36
    ld bc, $3615                                  ; $4616: $01 $15 $36
    ld bc, $365c                                  ; $4619: $01 $5c $36
    ld bc, $3697                                  ; $461c: $01 $97 $36
    ld bc, $36b0                                  ; $461f: $01 $b0 $36
    ld bc, $36cb                                  ; $4622: $01 $cb $36
    ld bc, $36f6                                  ; $4625: $01 $f6 $36
    ld bc, $371b                                  ; $4628: $01 $1b $37
    ld bc, $3782                                  ; $462b: $01 $82 $37
    ld bc, $37a5                                  ; $462e: $01 $a5 $37
    ld bc, $37ea                                  ; $4631: $01 $ea $37
    ld bc, $3819                                  ; $4634: $01 $19 $38
    ld bc, $384b                                  ; $4637: $01 $4b $38
    ld bc, $3894                                  ; $463a: $01 $94 $38
    ld bc, $38ae                                  ; $463d: $01 $ae $38
    ld bc, $38f1                                  ; $4640: $01 $f1 $38
    ld bc, $390d                                  ; $4643: $01 $0d $39
    ld bc, $3956                                  ; $4646: $01 $56 $39
    ld bc, $3974                                  ; $4649: $01 $74 $39
    ld bc, $39b1                                  ; $464c: $01 $b1 $39
    ld bc, $39e7                                  ; $464f: $01 $e7 $39
    ld bc, $3a01                                  ; $4652: $01 $01 $3a
    ld bc, $3a47                                  ; $4655: $01 $47 $3a
    ld bc, $3a8c                                  ; $4658: $01 $8c $3a
    ld bc, $3ab8                                  ; $465b: $01 $b8 $3a
    ld bc, $3aeb                                  ; $465e: $01 $eb $3a
    ld bc, $3b3c                                  ; $4661: $01 $3c $3b
    ld bc, $3b78                                  ; $4664: $01 $78 $3b
    ld bc, $3bac                                  ; $4667: $01 $ac $3b
    ld bc, $3c03                                  ; $466a: $01 $03 $3c
    ld bc, $3c5e                                  ; $466d: $01 $5e $3c
    ld bc, $3c97                                  ; $4670: $01 $97 $3c
    ld bc, $3cce                                  ; $4673: $01 $ce $3c
    ld bc, $3d08                                  ; $4676: $01 $08 $3d
    ld bc, $3d29                                  ; $4679: $01 $29 $3d
    ld bc, $3d60                                  ; $467c: $01 $60 $3d
    ld bc, $3db9                                  ; $467f: $01 $b9 $3d
    ld bc, $3de7                                  ; $4682: $01 $e7 $3d
    ld bc, $3e27                                  ; $4685: $01 $27 $3e
    ld bc, $3e58                                  ; $4688: $01 $58 $3e
    ld bc, $3e80                                  ; $468b: $01 $80 $3e
    ld bc, $3ec9                                  ; $468e: $01 $c9 $3e
    ld bc, $3ef2                                  ; $4691: $01 $f2 $3e
    ld bc, $3efc                                  ; $4694: $01 $fc $3e
    ld bc, $3f39                                  ; $4697: $01 $39 $3f
    ld bc, $3f4e                                  ; $469a: $01 $4e $3f
    ld bc, $3f7b                                  ; $469d: $01 $7b $3f
    ld bc, $3f92                                  ; $46a0: $01 $92 $3f
    ld bc, $3f9b                                  ; $46a3: $01 $9b $3f
    ld bc, $3fad                                  ; $46a6: $01 $ad $3f
    ld bc, $3fc1                                  ; $46a9: $01 $c1 $3f
    ld [bc], a                                    ; $46ac: $02
    ld bc, $0200                                  ; $46ad: $01 $00 $02
    ld c, [hl]                                    ; $46b0: $4e
    nop                                           ; $46b1: $00

Jump_033_46b2:
    ld [bc], a                                    ; $46b2: $02
    ld d, [hl]                                    ; $46b3: $56
    nop                                           ; $46b4: $00
    ld [bc], a                                    ; $46b5: $02
    cp [hl]                                       ; $46b6: $be
    nop                                           ; $46b7: $00
    ld [bc], a                                    ; $46b8: $02
    sub $00                                       ; $46b9: $d6 $00
    ld [bc], a                                    ; $46bb: $02
    cpl                                           ; $46bc: $2f
    ld bc, $5102                                  ; $46bd: $01 $02 $51
    ld bc, $6b02                                  ; $46c0: $01 $02 $6b
    ld bc, $9c02                                  ; $46c3: $01 $02 $9c
    ld bc, $ec02                                  ; $46c6: $01 $02 $ec
    ld bc, $3a02                                  ; $46c9: $01 $02 $3a
    ld [bc], a                                    ; $46cc: $02
    ld [bc], a                                    ; $46cd: $02
    ld c, [hl]                                    ; $46ce: $4e
    ld [bc], a                                    ; $46cf: $02
    ld [bc], a                                    ; $46d0: $02
    ld l, h                                       ; $46d1: $6c
    ld [bc], a                                    ; $46d2: $02
    ld [bc], a                                    ; $46d3: $02
    adc b                                         ; $46d4: $88
    ld [bc], a                                    ; $46d5: $02
    ld [bc], a                                    ; $46d6: $02
    cp h                                          ; $46d7: $bc
    ld [bc], a                                    ; $46d8: $02
    ld [bc], a                                    ; $46d9: $02
    sbc $02                                       ; $46da: $de $02
    ld [bc], a                                    ; $46dc: $02
    pop af                                        ; $46dd: $f1
    ld [bc], a                                    ; $46de: $02
    ld [bc], a                                    ; $46df: $02
    nop                                           ; $46e0: $00
    inc bc                                        ; $46e1: $03
    ld [bc], a                                    ; $46e2: $02
    ld c, h                                       ; $46e3: $4c
    inc bc                                        ; $46e4: $03
    ld [bc], a                                    ; $46e5: $02
    adc [hl]                                      ; $46e6: $8e
    inc bc                                        ; $46e7: $03
    ld [bc], a                                    ; $46e8: $02
    xor c                                         ; $46e9: $a9
    inc bc                                        ; $46ea: $03
    ld [bc], a                                    ; $46eb: $02
    rst $18                                       ; $46ec: $df
    inc bc                                        ; $46ed: $03
    ld [bc], a                                    ; $46ee: $02
    dec e                                         ; $46ef: $1d
    inc b                                         ; $46f0: $04
    ld [bc], a                                    ; $46f1: $02
    add hl, sp                                    ; $46f2: $39
    inc b                                         ; $46f3: $04

Call_033_46f4:
    ld [bc], a                                    ; $46f4: $02
    ld e, a                                       ; $46f5: $5f
    inc b                                         ; $46f6: $04
    ld [bc], a                                    ; $46f7: $02
    halt                                          ; $46f8: $76
    inc b                                         ; $46f9: $04
    ld [bc], a                                    ; $46fa: $02
    sub a                                         ; $46fb: $97
    inc b                                         ; $46fc: $04
    ld [bc], a                                    ; $46fd: $02
    xor [hl]                                      ; $46fe: $ae
    inc b                                         ; $46ff: $04
    ld [bc], a                                    ; $4700: $02
    ret nz                                        ; $4701: $c0

    inc b                                         ; $4702: $04
    ld [bc], a                                    ; $4703: $02
    add sp, $04                                   ; $4704: $e8 $04
    ld [bc], a                                    ; $4706: $02
    dec c                                         ; $4707: $0d
    dec b                                         ; $4708: $05
    ld [bc], a                                    ; $4709: $02
    ld e, [hl]                                    ; $470a: $5e
    dec b                                         ; $470b: $05
    ld [bc], a                                    ; $470c: $02
    ld [hl], l                                    ; $470d: $75
    dec b                                         ; $470e: $05
    ld [bc], a                                    ; $470f: $02
    db $ed                                        ; $4710: $ed
    dec b                                         ; $4711: $05
    ld [bc], a                                    ; $4712: $02
    inc l                                         ; $4713: $2c
    ld b, $02                                     ; $4714: $06 $02
    ld d, [hl]                                    ; $4716: $56
    ld b, $02                                     ; $4717: $06 $02
    ld a, l                                       ; $4719: $7d
    ld b, $02                                     ; $471a: $06 $02
    rst $00                                       ; $471c: $c7
    ld b, $02                                     ; $471d: $06 $02
    ld e, $07                                     ; $471f: $1e $07
    ld [bc], a                                    ; $4721: $02
    ld l, c                                       ; $4722: $69
    rlca                                          ; $4723: $07
    ld [bc], a                                    ; $4724: $02
    ld a, d                                       ; $4725: $7a
    rlca                                          ; $4726: $07
    ld [bc], a                                    ; $4727: $02
    adc e                                         ; $4728: $8b
    rlca                                          ; $4729: $07
    ld [bc], a                                    ; $472a: $02
    or [hl]                                       ; $472b: $b6
    rlca                                          ; $472c: $07
    ld [bc], a                                    ; $472d: $02
    adc $07                                       ; $472e: $ce $07
    ld [bc], a                                    ; $4730: $02
    jp c, Jump_000_0207                           ; $4731: $da $07 $02

    pop af                                        ; $4734: $f1
    rlca                                          ; $4735: $07
    ld [bc], a                                    ; $4736: $02
    ld b, $08                                     ; $4737: $06 $08
    ld [bc], a                                    ; $4739: $02
    daa                                           ; $473a: $27
    ld [$5802], sp                                ; $473b: $08 $02 $58
    ld [$7502], sp                                ; $473e: $08 $02 $75
    ld [$8402], sp                                ; $4741: $08 $02 $84
    ld [$a402], sp                                ; $4744: $08 $02 $a4
    ld [$4302], sp                                ; $4747: $08 $02 $43
    add hl, bc                                    ; $474a: $09
    ld [bc], a                                    ; $474b: $02
    ld d, h                                       ; $474c: $54
    add hl, bc                                    ; $474d: $09
    ld [bc], a                                    ; $474e: $02
    ld [hl], h                                    ; $474f: $74
    add hl, bc                                    ; $4750: $09
    ld [bc], a                                    ; $4751: $02
    cp c                                          ; $4752: $b9
    add hl, bc                                    ; $4753: $09
    ld [bc], a                                    ; $4754: $02
    jp c, Jump_000_0209                           ; $4755: $da $09 $02

    add hl, de                                    ; $4758: $19
    ld a, [bc]                                    ; $4759: $0a
    ld [bc], a                                    ; $475a: $02
    ld h, b                                       ; $475b: $60
    ld a, [bc]                                    ; $475c: $0a
    ld [bc], a                                    ; $475d: $02
    add a                                         ; $475e: $87
    ld a, [bc]                                    ; $475f: $0a
    ld [bc], a                                    ; $4760: $02
    db $f4                                        ; $4761: $f4
    ld a, [bc]                                    ; $4762: $0a
    ld [bc], a                                    ; $4763: $02
    ei                                            ; $4764: $fb
    ld a, [bc]                                    ; $4765: $0a
    ld [bc], a                                    ; $4766: $02
    add hl, de                                    ; $4767: $19
    dec bc                                        ; $4768: $0b
    ld [bc], a                                    ; $4769: $02
    ld h, $0b                                     ; $476a: $26 $0b
    ld [bc], a                                    ; $476c: $02
    ld a, [hl-]                                   ; $476d: $3a
    dec bc                                        ; $476e: $0b
    ld [bc], a                                    ; $476f: $02

Call_033_4770:
    ld e, d                                       ; $4770: $5a
    dec bc                                        ; $4771: $0b
    ld [bc], a                                    ; $4772: $02
    sbc [hl]                                      ; $4773: $9e
    dec bc                                        ; $4774: $0b
    ld [bc], a                                    ; $4775: $02
    call c, $020b                                 ; $4776: $dc $0b $02
    inc b                                         ; $4779: $04
    inc c                                         ; $477a: $0c
    ld [bc], a                                    ; $477b: $02
    ld b, l                                       ; $477c: $45
    inc c                                         ; $477d: $0c
    ld [bc], a                                    ; $477e: $02
    ld e, a                                       ; $477f: $5f
    inc c                                         ; $4780: $0c
    ld [bc], a                                    ; $4781: $02
    ld [hl], b                                    ; $4782: $70
    inc c                                         ; $4783: $0c
    ld [bc], a                                    ; $4784: $02
    add d                                         ; $4785: $82
    inc c                                         ; $4786: $0c
    ld [bc], a                                    ; $4787: $02
    sbc b                                         ; $4788: $98
    inc c                                         ; $4789: $0c
    ld [bc], a                                    ; $478a: $02
    cp [hl]                                       ; $478b: $be
    inc c                                         ; $478c: $0c
    ld [bc], a                                    ; $478d: $02
    dec de                                        ; $478e: $1b
    dec c                                         ; $478f: $0d
    ld [bc], a                                    ; $4790: $02
    ld d, [hl]                                    ; $4791: $56
    dec c                                         ; $4792: $0d
    ld [bc], a                                    ; $4793: $02
    adc e                                         ; $4794: $8b
    dec c                                         ; $4795: $0d
    ld [bc], a                                    ; $4796: $02
    sbc $0d                                       ; $4797: $de $0d
    ld [bc], a                                    ; $4799: $02
    inc hl                                        ; $479a: $23
    ld c, $02                                     ; $479b: $0e $02
    ld c, c                                       ; $479d: $49
    ld c, $02                                     ; $479e: $0e $02
    ld h, c                                       ; $47a0: $61
    ld c, $02                                     ; $47a1: $0e $02
    sub h                                         ; $47a3: $94
    ld c, $02                                     ; $47a4: $0e $02
    or e                                          ; $47a6: $b3
    ld c, $02                                     ; $47a7: $0e $02
    cp h                                          ; $47a9: $bc
    ld c, $02                                     ; $47aa: $0e $02
    ret c                                         ; $47ac: $d8

    ld c, $02                                     ; $47ad: $0e $02
    pop af                                        ; $47af: $f1
    ld c, $02                                     ; $47b0: $0e $02
    inc e                                         ; $47b2: $1c
    rrca                                          ; $47b3: $0f
    ld [bc], a                                    ; $47b4: $02
    ld a, [hl-]                                   ; $47b5: $3a
    rrca                                          ; $47b6: $0f
    ld [bc], a                                    ; $47b7: $02
    ld d, b                                       ; $47b8: $50
    rrca                                          ; $47b9: $0f
    ld [bc], a                                    ; $47ba: $02
    ld l, b                                       ; $47bb: $68
    rrca                                          ; $47bc: $0f
    ld [bc], a                                    ; $47bd: $02
    and e                                         ; $47be: $a3
    rrca                                          ; $47bf: $0f
    ld [bc], a                                    ; $47c0: $02
    call c, $020f                                 ; $47c1: $dc $0f $02
    rst $28                                       ; $47c4: $ef
    rrca                                          ; $47c5: $0f
    ld [bc], a                                    ; $47c6: $02
    ld [hl+], a                                   ; $47c7: $22
    db $10                                        ; $47c8: $10
    ld [bc], a                                    ; $47c9: $02
    dec a                                         ; $47ca: $3d
    db $10                                        ; $47cb: $10
    ld [bc], a                                    ; $47cc: $02
    ld c, a                                       ; $47cd: $4f
    db $10                                        ; $47ce: $10
    ld [bc], a                                    ; $47cf: $02
    ld h, [hl]                                    ; $47d0: $66
    db $10                                        ; $47d1: $10
    ld [bc], a                                    ; $47d2: $02
    ld a, d                                       ; $47d3: $7a
    db $10                                        ; $47d4: $10
    ld [bc], a                                    ; $47d5: $02
    sbc l                                         ; $47d6: $9d
    db $10                                        ; $47d7: $10
    ld [bc], a                                    ; $47d8: $02
    jp Jump_000_0210                              ; $47d9: $c3 $10 $02


    jp hl                                         ; $47dc: $e9


    db $10                                        ; $47dd: $10
    ld [bc], a                                    ; $47de: $02
    rrca                                          ; $47df: $0f
    ld de, $4002                                  ; $47e0: $11 $02 $40
    ld de, $7802                                  ; $47e3: $11 $02 $78
    ld de, $ac02                                  ; $47e6: $11 $02 $ac
    ld de, $f402                                  ; $47e9: $11 $02 $f4
    ld de, $0a02                                  ; $47ec: $11 $02 $0a
    ld [de], a                                    ; $47ef: $12
    ld [bc], a                                    ; $47f0: $02
    ld b, l                                       ; $47f1: $45
    ld [de], a                                    ; $47f2: $12
    ld [bc], a                                    ; $47f3: $02
    ld l, h                                       ; $47f4: $6c
    ld [de], a                                    ; $47f5: $12
    ld [bc], a                                    ; $47f6: $02
    ld a, a                                       ; $47f7: $7f
    ld [de], a                                    ; $47f8: $12
    ld [bc], a                                    ; $47f9: $02
    or e                                          ; $47fa: $b3
    ld [de], a                                    ; $47fb: $12
    ld [bc], a                                    ; $47fc: $02
    jp z, $0212                                   ; $47fd: $ca $12 $02

    rst $28                                       ; $4800: $ef
    ld [de], a                                    ; $4801: $12
    ld [bc], a                                    ; $4802: $02
    db $f4                                        ; $4803: $f4
    ld [de], a                                    ; $4804: $12
    ld [bc], a                                    ; $4805: $02
    ld sp, hl                                     ; $4806: $f9
    ld [de], a                                    ; $4807: $12
    ld [bc], a                                    ; $4808: $02
    cp $12                                        ; $4809: $fe $12
    ld [bc], a                                    ; $480b: $02
    dec c                                         ; $480c: $0d
    inc de                                        ; $480d: $13
    ld [bc], a                                    ; $480e: $02
    ld d, $13                                     ; $480f: $16 $13
    ld [bc], a                                    ; $4811: $02
    ld h, c                                       ; $4812: $61
    inc de                                        ; $4813: $13
    ld [bc], a                                    ; $4814: $02
    adc l                                         ; $4815: $8d
    inc de                                        ; $4816: $13
    ld [bc], a                                    ; $4817: $02
    sbc l                                         ; $4818: $9d
    inc de                                        ; $4819: $13
    ld [bc], a                                    ; $481a: $02
    xor b                                         ; $481b: $a8
    inc de                                        ; $481c: $13
    ld [bc], a                                    ; $481d: $02
    jp nc, $0213                                  ; $481e: $d2 $13 $02

    db $ec                                        ; $4821: $ec
    inc de                                        ; $4822: $13
    ld [bc], a                                    ; $4823: $02
    ld [bc], a                                    ; $4824: $02
    inc d                                         ; $4825: $14
    ld [bc], a                                    ; $4826: $02
    ld c, $14                                     ; $4827: $0e $14
    ld [bc], a                                    ; $4829: $02
    dec l                                         ; $482a: $2d
    inc d                                         ; $482b: $14
    ld [bc], a                                    ; $482c: $02
    ld a, $14                                     ; $482d: $3e $14
    ld [bc], a                                    ; $482f: $02
    ld l, b                                       ; $4830: $68
    inc d                                         ; $4831: $14
    ld [bc], a                                    ; $4832: $02
    adc e                                         ; $4833: $8b
    inc d                                         ; $4834: $14
    ld [bc], a                                    ; $4835: $02
    and h                                         ; $4836: $a4
    inc d                                         ; $4837: $14
    ld [bc], a                                    ; $4838: $02
    ret                                           ; $4839: $c9


    inc d                                         ; $483a: $14
    ld [bc], a                                    ; $483b: $02
    jp nc, Jump_000_0214                          ; $483c: $d2 $14 $02

    rst $38                                       ; $483f: $ff
    inc d                                         ; $4840: $14
    ld [bc], a                                    ; $4841: $02
    ld b, $15                                     ; $4842: $06 $15
    ld [bc], a                                    ; $4844: $02
    inc [hl]                                      ; $4845: $34
    dec d                                         ; $4846: $15
    ld [bc], a                                    ; $4847: $02
    ld b, d                                       ; $4848: $42
    dec d                                         ; $4849: $15
    ld [bc], a                                    ; $484a: $02
    ld d, b                                       ; $484b: $50
    dec d                                         ; $484c: $15
    ld [bc], a                                    ; $484d: $02
    sbc $15                                       ; $484e: $de $15
    ld [bc], a                                    ; $4850: $02
    xor $15                                       ; $4851: $ee $15
    ld [bc], a                                    ; $4853: $02
    db $f4                                        ; $4854: $f4
    dec d                                         ; $4855: $15
    ld [bc], a                                    ; $4856: $02
    rlca                                          ; $4857: $07
    ld d, $02                                     ; $4858: $16 $02
    ld b, l                                       ; $485a: $45
    ld d, $02                                     ; $485b: $16 $02
    jr z, jr_033_4876                             ; $485d: $28 $17

    ld [bc], a                                    ; $485f: $02
    ld d, [hl]                                    ; $4860: $56
    rla                                           ; $4861: $17
    ld [bc], a                                    ; $4862: $02
    ld l, [hl]                                    ; $4863: $6e
    rla                                           ; $4864: $17
    ld [bc], a                                    ; $4865: $02
    add b                                         ; $4866: $80
    rla                                           ; $4867: $17
    ld [bc], a                                    ; $4868: $02
    sub e                                         ; $4869: $93
    rla                                           ; $486a: $17
    ld [bc], a                                    ; $486b: $02
    and b                                         ; $486c: $a0
    rla                                           ; $486d: $17
    ld [bc], a                                    ; $486e: $02
    or a                                          ; $486f: $b7
    rla                                           ; $4870: $17
    ld [bc], a                                    ; $4871: $02
    pop de                                        ; $4872: $d1
    rla                                           ; $4873: $17
    ld [bc], a                                    ; $4874: $02
    rst $38                                       ; $4875: $ff

jr_033_4876:
    rla                                           ; $4876: $17
    ld [bc], a                                    ; $4877: $02
    inc h                                         ; $4878: $24
    jr @+$04                                      ; $4879: $18 $02

    ld [hl], h                                    ; $487b: $74
    jr @+$04                                      ; $487c: $18 $02

    or [hl]                                       ; $487e: $b6
    jr @+$04                                      ; $487f: $18 $02

    call $0218                                    ; $4881: $cd $18 $02
    dec [hl]                                      ; $4884: $35
    add hl, de                                    ; $4885: $19
    ld [bc], a                                    ; $4886: $02
    inc a                                         ; $4887: $3c
    add hl, de                                    ; $4888: $19
    ld [bc], a                                    ; $4889: $02
    add h                                         ; $488a: $84
    add hl, de                                    ; $488b: $19
    ld [bc], a                                    ; $488c: $02
    sbc d                                         ; $488d: $9a
    add hl, de                                    ; $488e: $19
    ld [bc], a                                    ; $488f: $02
    cp b                                          ; $4890: $b8
    add hl, de                                    ; $4891: $19
    ld [bc], a                                    ; $4892: $02
    or $19                                        ; $4893: $f6 $19
    ld [bc], a                                    ; $4895: $02
    inc d                                         ; $4896: $14
    ld a, [de]                                    ; $4897: $1a
    ld [bc], a                                    ; $4898: $02
    add hl, hl                                    ; $4899: $29
    ld a, [de]                                    ; $489a: $1a
    ld [bc], a                                    ; $489b: $02
    ld b, [hl]                                    ; $489c: $46
    ld a, [de]                                    ; $489d: $1a
    ld [bc], a                                    ; $489e: $02
    ld d, d                                       ; $489f: $52
    ld a, [de]                                    ; $48a0: $1a
    ld [bc], a                                    ; $48a1: $02
    ld e, l                                       ; $48a2: $5d
    ld a, [de]                                    ; $48a3: $1a
    ld [bc], a                                    ; $48a4: $02
    ld [hl], d                                    ; $48a5: $72
    ld a, [de]                                    ; $48a6: $1a
    ld [bc], a                                    ; $48a7: $02
    ld a, l                                       ; $48a8: $7d
    ld a, [de]                                    ; $48a9: $1a
    ld [bc], a                                    ; $48aa: $02
    xor e                                         ; $48ab: $ab
    ld a, [de]                                    ; $48ac: $1a
    ld [bc], a                                    ; $48ad: $02
    adc $1a                                       ; $48ae: $ce $1a
    ld [bc], a                                    ; $48b0: $02
    rst $20                                       ; $48b1: $e7
    ld a, [de]                                    ; $48b2: $1a
    ld [bc], a                                    ; $48b3: $02
    db $fc                                        ; $48b4: $fc
    ld a, [de]                                    ; $48b5: $1a
    ld [bc], a                                    ; $48b6: $02
    inc d                                         ; $48b7: $14
    dec de                                        ; $48b8: $1b
    ld [bc], a                                    ; $48b9: $02
    dec hl                                        ; $48ba: $2b
    dec de                                        ; $48bb: $1b
    ld [bc], a                                    ; $48bc: $02
    ld b, b                                       ; $48bd: $40
    dec de                                        ; $48be: $1b
    ld [bc], a                                    ; $48bf: $02
    ld h, e                                       ; $48c0: $63
    dec de                                        ; $48c1: $1b
    ld [bc], a                                    ; $48c2: $02
    add a                                         ; $48c3: $87
    dec de                                        ; $48c4: $1b
    ld [bc], a                                    ; $48c5: $02
    ldh [rNR31], a                                ; $48c6: $e0 $1b
    ld [bc], a                                    ; $48c8: $02
    ld d, d                                       ; $48c9: $52
    inc e                                         ; $48ca: $1c
    ld [bc], a                                    ; $48cb: $02
    ld e, a                                       ; $48cc: $5f
    inc e                                         ; $48cd: $1c
    ld [bc], a                                    ; $48ce: $02
    sub [hl]                                      ; $48cf: $96
    inc e                                         ; $48d0: $1c
    ld [bc], a                                    ; $48d1: $02
    and l                                         ; $48d2: $a5
    inc e                                         ; $48d3: $1c
    ld [bc], a                                    ; $48d4: $02
    dec b                                         ; $48d5: $05
    dec e                                         ; $48d6: $1d
    ld [bc], a                                    ; $48d7: $02
    inc [hl]                                      ; $48d8: $34
    dec e                                         ; $48d9: $1d
    ld [bc], a                                    ; $48da: $02
    ld e, d                                       ; $48db: $5a
    dec e                                         ; $48dc: $1d
    ld [bc], a                                    ; $48dd: $02
    adc b                                         ; $48de: $88
    dec e                                         ; $48df: $1d
    ld [bc], a                                    ; $48e0: $02
    cp c                                          ; $48e1: $b9
    dec e                                         ; $48e2: $1d
    ld [bc], a                                    ; $48e3: $02
    call nc, $021d                                ; $48e4: $d4 $1d $02
    daa                                           ; $48e7: $27
    ld e, $02                                     ; $48e8: $1e $02
    ld l, $1e                                     ; $48ea: $2e $1e
    ld [bc], a                                    ; $48ec: $02
    ld b, a                                       ; $48ed: $47
    ld e, $02                                     ; $48ee: $1e $02
    ld l, h                                       ; $48f0: $6c
    ld e, $02                                     ; $48f1: $1e $02
    adc h                                         ; $48f3: $8c
    ld e, $02                                     ; $48f4: $1e $02
    xor h                                         ; $48f6: $ac
    ld e, $02                                     ; $48f7: $1e $02
    push hl                                       ; $48f9: $e5
    ld e, $02                                     ; $48fa: $1e $02
    inc bc                                        ; $48fc: $03
    rra                                           ; $48fd: $1f
    ld [bc], a                                    ; $48fe: $02
    rrca                                          ; $48ff: $0f
    rra                                           ; $4900: $1f
    ld [bc], a                                    ; $4901: $02
    dec de                                        ; $4902: $1b
    rra                                           ; $4903: $1f
    ld [bc], a                                    ; $4904: $02
    dec a                                         ; $4905: $3d
    rra                                           ; $4906: $1f
    ld [bc], a                                    ; $4907: $02
    ld e, d                                       ; $4908: $5a
    rra                                           ; $4909: $1f
    ld [bc], a                                    ; $490a: $02
    ld h, e                                       ; $490b: $63
    rra                                           ; $490c: $1f
    ld [bc], a                                    ; $490d: $02
    ld a, d                                       ; $490e: $7a
    rra                                           ; $490f: $1f
    ld [bc], a                                    ; $4910: $02
    call nz, Call_000_021f                        ; $4911: $c4 $1f $02
    scf                                           ; $4914: $37
    jr nz, @+$04                                  ; $4915: $20 $02

    ld b, a                                       ; $4917: $47
    jr nz, @+$04                                  ; $4918: $20 $02

    call nz, $0220                                ; $491a: $c4 $20 $02
    db $fd                                        ; $491d: $fd
    jr nz, @+$04                                  ; $491e: $20 $02

    ld e, b                                       ; $4920: $58
    ld hl, $6c02                                  ; $4921: $21 $02 $6c
    ld hl, $d702                                  ; $4924: $21 $02 $d7
    ld hl, $e102                                  ; $4927: $21 $02 $e1
    ld hl, $1202                                  ; $492a: $21 $02 $12
    ld [hl+], a                                   ; $492d: $22
    ld [bc], a                                    ; $492e: $02
    dec l                                         ; $492f: $2d
    ld [hl+], a                                   ; $4930: $22
    ld [bc], a                                    ; $4931: $02
    ld h, b                                       ; $4932: $60
    ld [hl+], a                                   ; $4933: $22
    ld [bc], a                                    ; $4934: $02
    ld a, [$0222]                                 ; $4935: $fa $22 $02
    jr nz, @+$25                                  ; $4938: $20 $23

    ld [bc], a                                    ; $493a: $02
    ld e, b                                       ; $493b: $58
    inc hl                                        ; $493c: $23
    ld [bc], a                                    ; $493d: $02
    sub [hl]                                      ; $493e: $96
    inc hl                                        ; $493f: $23
    ld [bc], a                                    ; $4940: $02
    ret nz                                        ; $4941: $c0

    inc hl                                        ; $4942: $23
    ld [bc], a                                    ; $4943: $02
    call Call_000_0223                            ; $4944: $cd $23 $02
    ld [c], a                                     ; $4947: $e2
    inc hl                                        ; $4948: $23
    ld [bc], a                                    ; $4949: $02
    rla                                           ; $494a: $17
    inc h                                         ; $494b: $24
    ld [bc], a                                    ; $494c: $02
    jr z, @+$26                                   ; $494d: $28 $24

    ld [bc], a                                    ; $494f: $02
    ld d, b                                       ; $4950: $50
    inc h                                         ; $4951: $24
    ld [bc], a                                    ; $4952: $02
    ld [hl], a                                    ; $4953: $77
    inc h                                         ; $4954: $24
    ld [bc], a                                    ; $4955: $02
    pop af                                        ; $4956: $f1
    inc h                                         ; $4957: $24
    ld [bc], a                                    ; $4958: $02
    ld sp, hl                                     ; $4959: $f9
    inc h                                         ; $495a: $24
    ld [bc], a                                    ; $495b: $02
    jr c, jr_033_4983                             ; $495c: $38 $25

    ld [bc], a                                    ; $495e: $02
    ld d, [hl]                                    ; $495f: $56
    dec h                                         ; $4960: $25
    ld [bc], a                                    ; $4961: $02
    adc e                                         ; $4962: $8b
    dec h                                         ; $4963: $25
    ld [bc], a                                    ; $4964: $02
    pop bc                                        ; $4965: $c1
    dec h                                         ; $4966: $25
    ld [bc], a                                    ; $4967: $02
    push bc                                       ; $4968: $c5
    dec h                                         ; $4969: $25
    ld [bc], a                                    ; $496a: $02
    push de                                       ; $496b: $d5
    dec h                                         ; $496c: $25
    ld [bc], a                                    ; $496d: $02
    jr c, jr_033_4996                             ; $496e: $38 $26

    ld [bc], a                                    ; $4970: $02
    ld d, e                                       ; $4971: $53
    ld h, $02                                     ; $4972: $26 $02
    add h                                         ; $4974: $84
    ld h, $02                                     ; $4975: $26 $02
    or b                                          ; $4977: $b0
    ld h, $02                                     ; $4978: $26 $02
    ld b, $27                                     ; $497a: $06 $27
    ld [bc], a                                    ; $497c: $02
    inc l                                         ; $497d: $2c
    daa                                           ; $497e: $27
    ld [bc], a                                    ; $497f: $02
    ld b, d                                       ; $4980: $42
    daa                                           ; $4981: $27
    ld [bc], a                                    ; $4982: $02

jr_033_4983:
    ld e, c                                       ; $4983: $59
    daa                                           ; $4984: $27
    ld [bc], a                                    ; $4985: $02
    ld [hl], c                                    ; $4986: $71
    daa                                           ; $4987: $27
    ld [bc], a                                    ; $4988: $02
    adc l                                         ; $4989: $8d
    daa                                           ; $498a: $27
    ld [bc], a                                    ; $498b: $02
    xor [hl]                                      ; $498c: $ae
    daa                                           ; $498d: $27
    ld [bc], a                                    ; $498e: $02
    cp e                                          ; $498f: $bb
    daa                                           ; $4990: $27
    ld [bc], a                                    ; $4991: $02
    ret nz                                        ; $4992: $c0

    daa                                           ; $4993: $27
    ld [bc], a                                    ; $4994: $02
    ld [c], a                                     ; $4995: $e2

jr_033_4996:
    daa                                           ; $4996: $27
    ld [bc], a                                    ; $4997: $02
    ld [$0228], sp                                ; $4998: $08 $28 $02
    dec l                                         ; $499b: $2d
    jr z, @+$04                                   ; $499c: $28 $02

    ld b, d                                       ; $499e: $42
    jr z, @+$04                                   ; $499f: $28 $02

    ld h, h                                       ; $49a1: $64
    jr z, @+$04                                   ; $49a2: $28 $02

    add c                                         ; $49a4: $81
    jr z, @+$04                                   ; $49a5: $28 $02

    or e                                          ; $49a7: $b3
    jr z, @+$04                                   ; $49a8: $28 $02

    ret nc                                        ; $49aa: $d0

    jr z, @+$04                                   ; $49ab: $28 $02

    rst $30                                       ; $49ad: $f7
    jr z, jr_033_49b2                             ; $49ae: $28 $02

    ld b, $29                                     ; $49b0: $06 $29

jr_033_49b2:
    ld [bc], a                                    ; $49b2: $02
    dec l                                         ; $49b3: $2d
    add hl, hl                                    ; $49b4: $29
    ld [bc], a                                    ; $49b5: $02
    ld b, d                                       ; $49b6: $42
    add hl, hl                                    ; $49b7: $29
    ld [bc], a                                    ; $49b8: $02
    ld l, c                                       ; $49b9: $69
    add hl, hl                                    ; $49ba: $29
    ld [bc], a                                    ; $49bb: $02
    add [hl]                                      ; $49bc: $86
    add hl, hl                                    ; $49bd: $29
    ld [bc], a                                    ; $49be: $02
    sub e                                         ; $49bf: $93
    add hl, hl                                    ; $49c0: $29
    ld [bc], a                                    ; $49c1: $02
    db $d3                                        ; $49c2: $d3
    add hl, hl                                    ; $49c3: $29
    ld [bc], a                                    ; $49c4: $02
    ld c, b                                       ; $49c5: $48
    ld a, [hl+]                                   ; $49c6: $2a
    ld [bc], a                                    ; $49c7: $02
    ld d, e                                       ; $49c8: $53
    ld a, [hl+]                                   ; $49c9: $2a
    ld [bc], a                                    ; $49ca: $02
    ld [hl], l                                    ; $49cb: $75
    ld a, [hl+]                                   ; $49cc: $2a
    ld [bc], a                                    ; $49cd: $02
    and a                                         ; $49ce: $a7
    ld a, [hl+]                                   ; $49cf: $2a
    ld [bc], a                                    ; $49d0: $02
    cp l                                          ; $49d1: $bd
    ld a, [hl+]                                   ; $49d2: $2a
    ld [bc], a                                    ; $49d3: $02
    ld de, $022b                                  ; $49d4: $11 $2b $02
    ld l, h                                       ; $49d7: $6c
    dec hl                                        ; $49d8: $2b
    ld [bc], a                                    ; $49d9: $02
    xor [hl]                                      ; $49da: $ae
    dec hl                                        ; $49db: $2b
    ld [bc], a                                    ; $49dc: $02
    ldh a, [$2b]                                  ; $49dd: $f0 $2b
    ld [bc], a                                    ; $49df: $02
    dec hl                                        ; $49e0: $2b
    inc l                                         ; $49e1: $2c
    ld [bc], a                                    ; $49e2: $02
    ld d, c                                       ; $49e3: $51
    inc l                                         ; $49e4: $2c
    ld [bc], a                                    ; $49e5: $02
    ld [hl], c                                    ; $49e6: $71
    inc l                                         ; $49e7: $2c
    ld [bc], a                                    ; $49e8: $02
    ld a, l                                       ; $49e9: $7d
    inc l                                         ; $49ea: $2c
    ld [bc], a                                    ; $49eb: $02
    cp l                                          ; $49ec: $bd
    inc l                                         ; $49ed: $2c
    ld [bc], a                                    ; $49ee: $02
    db $ed                                        ; $49ef: $ed
    inc l                                         ; $49f0: $2c
    ld [bc], a                                    ; $49f1: $02
    dec hl                                        ; $49f2: $2b
    dec l                                         ; $49f3: $2d
    ld [bc], a                                    ; $49f4: $02
    ccf                                           ; $49f5: $3f
    dec l                                         ; $49f6: $2d
    ld [bc], a                                    ; $49f7: $02
    ld e, h                                       ; $49f8: $5c
    dec l                                         ; $49f9: $2d
    ld [bc], a                                    ; $49fa: $02
    ld h, l                                       ; $49fb: $65
    dec l                                         ; $49fc: $2d
    ld [bc], a                                    ; $49fd: $02
    adc h                                         ; $49fe: $8c
    dec l                                         ; $49ff: $2d
    ld [bc], a                                    ; $4a00: $02
    or l                                          ; $4a01: $b5
    dec l                                         ; $4a02: $2d
    ld [bc], a                                    ; $4a03: $02
    ret z                                         ; $4a04: $c8

    dec l                                         ; $4a05: $2d
    ld [bc], a                                    ; $4a06: $02
    jr z, @+$30                                   ; $4a07: $28 $2e

    ld [bc], a                                    ; $4a09: $02
    ld c, [hl]                                    ; $4a0a: $4e
    ld l, $02                                     ; $4a0b: $2e $02
    adc [hl]                                      ; $4a0d: $8e
    ld l, $02                                     ; $4a0e: $2e $02
    or c                                          ; $4a10: $b1
    ld l, $02                                     ; $4a11: $2e $02
    push af                                       ; $4a13: $f5
    ld l, $02                                     ; $4a14: $2e $02
    ld a, [hl+]                                   ; $4a16: $2a
    cpl                                           ; $4a17: $2f
    ld [bc], a                                    ; $4a18: $02
    ld e, h                                       ; $4a19: $5c
    cpl                                           ; $4a1a: $2f
    ld [bc], a                                    ; $4a1b: $02
    and h                                         ; $4a1c: $a4
    cpl                                           ; $4a1d: $2f
    ld [bc], a                                    ; $4a1e: $02
    ret z                                         ; $4a1f: $c8

    cpl                                           ; $4a20: $2f
    ld [bc], a                                    ; $4a21: $02
    db $eb                                        ; $4a22: $eb
    cpl                                           ; $4a23: $2f
    ld [bc], a                                    ; $4a24: $02
    ld e, d                                       ; $4a25: $5a
    jr nc, @+$04                                  ; $4a26: $30 $02

    sub l                                         ; $4a28: $95
    jr nc, @+$04                                  ; $4a29: $30 $02

    xor a                                         ; $4a2b: $af
    jr nc, @+$04                                  ; $4a2c: $30 $02

    rst $30                                       ; $4a2e: $f7
    jr nc, @+$04                                  ; $4a2f: $30 $02

    rla                                           ; $4a31: $17
    ld sp, $4d02                                  ; $4a32: $31 $02 $4d
    ld sp, $7102                                  ; $4a35: $31 $02 $71
    ld sp, $8c02                                  ; $4a38: $31 $02 $8c
    ld sp, $a302                                  ; $4a3b: $31 $02 $a3
    ld sp, $cf02                                  ; $4a3e: $31 $02 $cf
    ld sp, $ec02                                  ; $4a41: $31 $02 $ec
    ld sp, $5602                                  ; $4a44: $31 $02 $56
    ld [hl-], a                                   ; $4a47: $32
    ld [bc], a                                    ; $4a48: $02
    ld l, l                                       ; $4a49: $6d
    ld [hl-], a                                   ; $4a4a: $32
    ld [bc], a                                    ; $4a4b: $02
    jp z, Jump_000_0232                           ; $4a4c: $ca $32 $02

    rst $30                                       ; $4a4f: $f7
    ld [hl-], a                                   ; $4a50: $32
    ld [bc], a                                    ; $4a51: $02
    inc e                                         ; $4a52: $1c
    inc sp                                        ; $4a53: $33
    ld [bc], a                                    ; $4a54: $02
    ld c, c                                       ; $4a55: $49
    inc sp                                        ; $4a56: $33
    ld [bc], a                                    ; $4a57: $02
    ld e, a                                       ; $4a58: $5f
    inc sp                                        ; $4a59: $33
    ld [bc], a                                    ; $4a5a: $02
    ld a, d                                       ; $4a5b: $7a
    inc sp                                        ; $4a5c: $33
    ld [bc], a                                    ; $4a5d: $02
    cp a                                          ; $4a5e: $bf
    inc sp                                        ; $4a5f: $33
    ld [bc], a                                    ; $4a60: $02
    and $33                                       ; $4a61: $e6 $33
    ld [bc], a                                    ; $4a63: $02
    ld [$0234], sp                                ; $4a64: $08 $34 $02

Jump_033_4a67:
    dec [hl]                                      ; $4a67: $35
    inc [hl]                                      ; $4a68: $34
    ld [bc], a                                    ; $4a69: $02
    ld h, [hl]                                    ; $4a6a: $66
    inc [hl]                                      ; $4a6b: $34
    ld [bc], a                                    ; $4a6c: $02
    add h                                         ; $4a6d: $84
    inc [hl]                                      ; $4a6e: $34
    ld [bc], a                                    ; $4a6f: $02
    and a                                         ; $4a70: $a7
    inc [hl]                                      ; $4a71: $34
    ld [bc], a                                    ; $4a72: $02
    jp $0234                                      ; $4a73: $c3 $34 $02


    swap h                                        ; $4a76: $cb $34
    ld [bc], a                                    ; $4a78: $02
    push hl                                       ; $4a79: $e5
    inc [hl]                                      ; $4a7a: $34
    ld [bc], a                                    ; $4a7b: $02
    pop af                                        ; $4a7c: $f1
    inc [hl]                                      ; $4a7d: $34
    ld [bc], a                                    ; $4a7e: $02
    ld b, $35                                     ; $4a7f: $06 $35
    ld [bc], a                                    ; $4a81: $02
    jr jr_033_4ab9                                ; $4a82: $18 $35

    ld [bc], a                                    ; $4a84: $02
    ld [hl], $35                                  ; $4a85: $36 $35
    ld [bc], a                                    ; $4a87: $02
    inc a                                         ; $4a88: $3c
    dec [hl]                                      ; $4a89: $35
    ld [bc], a                                    ; $4a8a: $02
    ld c, l                                       ; $4a8b: $4d
    dec [hl]                                      ; $4a8c: $35
    ld [bc], a                                    ; $4a8d: $02
    ld l, b                                       ; $4a8e: $68
    dec [hl]                                      ; $4a8f: $35
    ld [bc], a                                    ; $4a90: $02
    sub e                                         ; $4a91: $93
    dec [hl]                                      ; $4a92: $35
    ld [bc], a                                    ; $4a93: $02
    call c, $0235                                 ; $4a94: $dc $35 $02
    rla                                           ; $4a97: $17
    ld [hl], $02                                  ; $4a98: $36 $02
    jr nc, @+$38                                  ; $4a9a: $30 $36

    ld [bc], a                                    ; $4a9c: $02
    ld b, c                                       ; $4a9d: $41
    ld [hl], $02                                  ; $4a9e: $36 $02
    ld h, d                                       ; $4aa0: $62
    ld [hl], $02                                  ; $4aa1: $36 $02
    adc d                                         ; $4aa3: $8a
    ld [hl], $02                                  ; $4aa4: $36 $02
    cp [hl]                                       ; $4aa6: $be
    ld [hl], $02                                  ; $4aa7: $36 $02
    ld hl, sp+$36                                 ; $4aa9: $f8 $36
    ld [bc], a                                    ; $4aab: $02
    ld [hl-], a                                   ; $4aac: $32
    scf                                           ; $4aad: $37
    ld [bc], a                                    ; $4aae: $02
    dec a                                         ; $4aaf: $3d
    scf                                           ; $4ab0: $37
    ld [bc], a                                    ; $4ab1: $02
    ld c, d                                       ; $4ab2: $4a
    scf                                           ; $4ab3: $37
    ld [bc], a                                    ; $4ab4: $02
    ld l, d                                       ; $4ab5: $6a
    scf                                           ; $4ab6: $37
    ld [bc], a                                    ; $4ab7: $02
    cp e                                          ; $4ab8: $bb

jr_033_4ab9:
    scf                                           ; $4ab9: $37
    ld [bc], a                                    ; $4aba: $02
    call z, $0237                                 ; $4abb: $cc $37 $02
    ldh [$37], a                                  ; $4abe: $e0 $37
    ld [bc], a                                    ; $4ac0: $02
    inc c                                         ; $4ac1: $0c
    jr c, jr_033_4ac6                             ; $4ac2: $38 $02

    ld h, $38                                     ; $4ac4: $26 $38

jr_033_4ac6:
    ld [bc], a                                    ; $4ac6: $02
    dec sp                                        ; $4ac7: $3b
    jr c, @+$04                                   ; $4ac8: $38 $02

    ld e, a                                       ; $4aca: $5f
    jr c, @+$04                                   ; $4acb: $38 $02

    adc d                                         ; $4acd: $8a
    jr c, @+$04                                   ; $4ace: $38 $02

    jp Jump_000_0238                              ; $4ad0: $c3 $38 $02


    ld [de], a                                    ; $4ad3: $12
    add hl, sp                                    ; $4ad4: $39
    ld [bc], a                                    ; $4ad5: $02
    ld e, [hl]                                    ; $4ad6: $5e
    add hl, sp                                    ; $4ad7: $39
    ld [bc], a                                    ; $4ad8: $02
    and a                                         ; $4ad9: $a7
    add hl, sp                                    ; $4ada: $39
    ld [bc], a                                    ; $4adb: $02
    jp $0239                                      ; $4adc: $c3 $39 $02


    inc bc                                        ; $4adf: $03
    ld a, [hl-]                                   ; $4ae0: $3a
    ld [bc], a                                    ; $4ae1: $02
    inc a                                         ; $4ae2: $3c
    ld a, [hl-]                                   ; $4ae3: $3a
    ld [bc], a                                    ; $4ae4: $02
    ld l, l                                       ; $4ae5: $6d
    ld a, [hl-]                                   ; $4ae6: $3a
    ld [bc], a                                    ; $4ae7: $02
    ld a, [hl]                                    ; $4ae8: $7e
    ld a, [hl-]                                   ; $4ae9: $3a
    ld [bc], a                                    ; $4aea: $02
    and [hl]                                      ; $4aeb: $a6
    ld a, [hl-]                                   ; $4aec: $3a
    ld [bc], a                                    ; $4aed: $02
    pop bc                                        ; $4aee: $c1
    ld a, [hl-]                                   ; $4aef: $3a
    ld [bc], a                                    ; $4af0: $02
    rst $10                                       ; $4af1: $d7
    ld a, [hl-]                                   ; $4af2: $3a
    ld [bc], a                                    ; $4af3: $02
    dec bc                                        ; $4af4: $0b
    dec sp                                        ; $4af5: $3b
    ld [bc], a                                    ; $4af6: $02
    dec l                                         ; $4af7: $2d
    dec sp                                        ; $4af8: $3b
    ld [bc], a                                    ; $4af9: $02
    ld h, h                                       ; $4afa: $64
    dec sp                                        ; $4afb: $3b
    ld [bc], a                                    ; $4afc: $02
    ld [hl], e                                    ; $4afd: $73
    dec sp                                        ; $4afe: $3b
    ld [bc], a                                    ; $4aff: $02
    sbc e                                         ; $4b00: $9b
    dec sp                                        ; $4b01: $3b
    ld [bc], a                                    ; $4b02: $02
    cp l                                          ; $4b03: $bd
    dec sp                                        ; $4b04: $3b
    ld [bc], a                                    ; $4b05: $02
    call c, Call_000_023b                         ; $4b06: $dc $3b $02
    pop af                                        ; $4b09: $f1
    dec sp                                        ; $4b0a: $3b
    ld [bc], a                                    ; $4b0b: $02
    rla                                           ; $4b0c: $17
    inc a                                         ; $4b0d: $3c
    ld [bc], a                                    ; $4b0e: $02
    dec [hl]                                      ; $4b0f: $35
    inc a                                         ; $4b10: $3c
    ld [bc], a                                    ; $4b11: $02
    ld b, a                                       ; $4b12: $47
    inc a                                         ; $4b13: $3c
    ld [bc], a                                    ; $4b14: $02
    ld a, e                                       ; $4b15: $7b
    inc a                                         ; $4b16: $3c
    ld [bc], a                                    ; $4b17: $02
    adc d                                         ; $4b18: $8a
    inc a                                         ; $4b19: $3c
    ld [bc], a                                    ; $4b1a: $02
    and e                                         ; $4b1b: $a3
    inc a                                         ; $4b1c: $3c
    ld [bc], a                                    ; $4b1d: $02
    db $d3                                        ; $4b1e: $d3
    inc a                                         ; $4b1f: $3c
    ld [bc], a                                    ; $4b20: $02
    dec b                                         ; $4b21: $05
    dec a                                         ; $4b22: $3d
    ld [bc], a                                    ; $4b23: $02
    ld b, d                                       ; $4b24: $42
    dec a                                         ; $4b25: $3d
    ld [bc], a                                    ; $4b26: $02
    ld h, a                                       ; $4b27: $67
    dec a                                         ; $4b28: $3d
    ld [bc], a                                    ; $4b29: $02
    add l                                         ; $4b2a: $85
    dec a                                         ; $4b2b: $3d
    ld [bc], a                                    ; $4b2c: $02
    xor h                                         ; $4b2d: $ac
    dec a                                         ; $4b2e: $3d
    ld [bc], a                                    ; $4b2f: $02
    call z, Call_000_023d                         ; $4b30: $cc $3d $02
    rst $38                                       ; $4b33: $ff
    dec a                                         ; $4b34: $3d
    ld [bc], a                                    ; $4b35: $02
    ld hl, $023e                                  ; $4b36: $21 $3e $02
    ld c, h                                       ; $4b39: $4c
    ld a, $02                                     ; $4b3a: $3e $02
    halt                                          ; $4b3c: $76
    ld a, $02                                     ; $4b3d: $3e $02
    sbc d                                         ; $4b3f: $9a
    ld a, $02                                     ; $4b40: $3e $02
    cp e                                          ; $4b42: $bb
    ld a, $02                                     ; $4b43: $3e $02
    db $db                                        ; $4b45: $db
    ld a, $02                                     ; $4b46: $3e $02
    rst $38                                       ; $4b48: $ff
    ld a, $02                                     ; $4b49: $3e $02
    add hl, hl                                    ; $4b4b: $29
    ccf                                           ; $4b4c: $3f
    ld [bc], a                                    ; $4b4d: $02
    ld e, l                                       ; $4b4e: $5d
    ccf                                           ; $4b4f: $3f
    ld [bc], a                                    ; $4b50: $02
    sub l                                         ; $4b51: $95
    ccf                                           ; $4b52: $3f
    ld [bc], a                                    ; $4b53: $02
    sub $3f                                       ; $4b54: $d6 $3f
    ld [bc], a                                    ; $4b56: $02
    ldh [$3f], a                                  ; $4b57: $e0 $3f
    inc bc                                        ; $4b59: $03
    ld bc, $0300                                  ; $4b5a: $01 $00 $03
    ld l, $00                                     ; $4b5d: $2e $00
    inc bc                                        ; $4b5f: $03
    ld a, $00                                     ; $4b60: $3e $00
    inc bc                                        ; $4b62: $03
    sub [hl]                                      ; $4b63: $96
    nop                                           ; $4b64: $00
    inc bc                                        ; $4b65: $03
    rst $08                                       ; $4b66: $cf

Jump_033_4b67:
    nop                                           ; $4b67: $00
    inc bc                                        ; $4b68: $03
    db $fc                                        ; $4b69: $fc

Jump_033_4b6a:
    nop                                           ; $4b6a: $00
    inc bc                                        ; $4b6b: $03
    ld d, $01                                     ; $4b6c: $16 $01
    inc bc                                        ; $4b6e: $03
    ld b, c                                       ; $4b6f: $41
    ld bc, $5103                                  ; $4b70: $01 $03 $51
    ld bc, $7603                                  ; $4b73: $01 $03 $76
    ld bc, $7c03                                  ; $4b76: $01 $03 $7c
    ld bc, $9c03                                  ; $4b79: $01 $03 $9c
    ld bc, $d903                                  ; $4b7c: $01 $03 $d9
    ld bc, $e903                                  ; $4b7f: $01 $03 $e9
    ld bc, $fc03                                  ; $4b82: $01 $03 $fc
    ld bc, $2903                                  ; $4b85: $01 $03 $29
    ld [bc], a                                    ; $4b88: $02
    inc bc                                        ; $4b89: $03
    ld h, c                                       ; $4b8a: $61
    ld [bc], a                                    ; $4b8b: $02
    inc bc                                        ; $4b8c: $03
    ld [hl], e                                    ; $4b8d: $73
    ld [bc], a                                    ; $4b8e: $02
    inc bc                                        ; $4b8f: $03
    add c                                         ; $4b90: $81
    ld [bc], a                                    ; $4b91: $02
    inc bc                                        ; $4b92: $03
    sub h                                         ; $4b93: $94
    ld [bc], a                                    ; $4b94: $02
    inc bc                                        ; $4b95: $03
    or [hl]                                       ; $4b96: $b6
    ld [bc], a                                    ; $4b97: $02
    inc bc                                        ; $4b98: $03
    jp hl                                         ; $4b99: $e9


    ld [bc], a                                    ; $4b9a: $02
    inc bc                                        ; $4b9b: $03
    pop af                                        ; $4b9c: $f1
    ld [bc], a                                    ; $4b9d: $02
    inc bc                                        ; $4b9e: $03
    ei                                            ; $4b9f: $fb
    ld [bc], a                                    ; $4ba0: $02

Jump_033_4ba1:
    inc bc                                        ; $4ba1: $03
    jr jr_033_4ba7                                ; $4ba2: $18 $03

    inc bc                                        ; $4ba4: $03
    cpl                                           ; $4ba5: $2f
    inc bc                                        ; $4ba6: $03

jr_033_4ba7:
    inc bc                                        ; $4ba7: $03
    xor [hl]                                      ; $4ba8: $ae
    inc bc                                        ; $4ba9: $03
    inc bc                                        ; $4baa: $03
    cp c                                          ; $4bab: $b9
    inc bc                                        ; $4bac: $03
    inc bc                                        ; $4bad: $03
    cp a                                          ; $4bae: $bf
    inc bc                                        ; $4baf: $03
    inc bc                                        ; $4bb0: $03
    rst $08                                       ; $4bb1: $cf
    inc bc                                        ; $4bb2: $03
    inc bc                                        ; $4bb3: $03
    db $10                                        ; $4bb4: $10
    inc b                                         ; $4bb5: $04
    inc bc                                        ; $4bb6: $03
    add hl, sp                                    ; $4bb7: $39
    inc b                                         ; $4bb8: $04
    inc bc                                        ; $4bb9: $03
    ld c, d                                       ; $4bba: $4a
    inc b                                         ; $4bbb: $04
    inc bc                                        ; $4bbc: $03
    ld a, b                                       ; $4bbd: $78
    inc b                                         ; $4bbe: $04
    inc bc                                        ; $4bbf: $03
    sub [hl]                                      ; $4bc0: $96
    inc b                                         ; $4bc1: $04
    inc bc                                        ; $4bc2: $03
    rlc h                                         ; $4bc3: $cb $04
    inc bc                                        ; $4bc5: $03
    db $e3                                        ; $4bc6: $e3
    inc b                                         ; $4bc7: $04
    inc bc                                        ; $4bc8: $03
    db $f4                                        ; $4bc9: $f4
    inc b                                         ; $4bca: $04
    inc bc                                        ; $4bcb: $03
    ld de, $0305                                  ; $4bcc: $11 $05 $03
    jr z, jr_033_4bd6                             ; $4bcf: $28 $05

    inc bc                                        ; $4bd1: $03
    scf                                           ; $4bd2: $37
    dec b                                         ; $4bd3: $05
    inc bc                                        ; $4bd4: $03
    ld d, b                                       ; $4bd5: $50

jr_033_4bd6:
    dec b                                         ; $4bd6: $05
    inc bc                                        ; $4bd7: $03
    ld [hl], l                                    ; $4bd8: $75
    dec b                                         ; $4bd9: $05
    inc bc                                        ; $4bda: $03
    ld a, [hl]                                    ; $4bdb: $7e
    dec b                                         ; $4bdc: $05
    inc bc                                        ; $4bdd: $03
    and e                                         ; $4bde: $a3
    dec b                                         ; $4bdf: $05
    inc bc                                        ; $4be0: $03
    jp nz, $0305                                  ; $4be1: $c2 $05 $03

    pop af                                        ; $4be4: $f1
    dec b                                         ; $4be5: $05
    inc bc                                        ; $4be6: $03
    ld a, [bc]                                    ; $4be7: $0a
    ld b, $03                                     ; $4be8: $06 $03
    ld d, h                                       ; $4bea: $54
    ld b, $03                                     ; $4beb: $06 $03
    ld l, [hl]                                    ; $4bed: $6e
    ld b, $03                                     ; $4bee: $06 $03
    add [hl]                                      ; $4bf0: $86
    ld b, $03                                     ; $4bf1: $06 $03
    ret nc                                        ; $4bf3: $d0

    ld b, $03                                     ; $4bf4: $06 $03
    push af                                       ; $4bf6: $f5
    ld b, $03                                     ; $4bf7: $06 $03
    inc de                                        ; $4bf9: $13
    rlca                                          ; $4bfa: $07
    inc bc                                        ; $4bfb: $03
    ld h, b                                       ; $4bfc: $60
    rlca                                          ; $4bfd: $07
    inc bc                                        ; $4bfe: $03
    add d                                         ; $4bff: $82
    rlca                                          ; $4c00: $07

Call_033_4c01:
    inc bc                                        ; $4c01: $03
    rst $00                                       ; $4c02: $c7
    rlca                                          ; $4c03: $07
    inc bc                                        ; $4c04: $03
    ld sp, hl                                     ; $4c05: $f9
    rlca                                          ; $4c06: $07
    inc bc                                        ; $4c07: $03
    dec b                                         ; $4c08: $05
    ld [$3103], sp                                ; $4c09: $08 $03 $31
    ld [$5b03], sp                                ; $4c0c: $08 $03 $5b
    ld [$7b03], sp                                ; $4c0f: $08 $03 $7b
    ld [$8603], sp                                ; $4c12: $08 $03 $86
    ld [$a303], sp                                ; $4c15: $08 $03 $a3
    ld [$b703], sp                                ; $4c18: $08 $03 $b7
    ld [$e203], sp                                ; $4c1b: $08 $03 $e2
    ld [$1303], sp                                ; $4c1e: $08 $03 $13
    add hl, bc                                    ; $4c21: $09
    inc bc                                        ; $4c22: $03
    ld sp, $0309                                  ; $4c23: $31 $09 $03
    ld b, b                                       ; $4c26: $40
    add hl, bc                                    ; $4c27: $09
    inc bc                                        ; $4c28: $03
    ld l, [hl]                                    ; $4c29: $6e
    add hl, bc                                    ; $4c2a: $09
    inc bc                                        ; $4c2b: $03
    ld a, [hl]                                    ; $4c2c: $7e
    add hl, bc                                    ; $4c2d: $09
    inc bc                                        ; $4c2e: $03
    jp nc, $0309                                  ; $4c2f: $d2 $09 $03

    dec bc                                        ; $4c32: $0b
    ld a, [bc]                                    ; $4c33: $0a
    inc bc                                        ; $4c34: $03
    ld h, [hl]                                    ; $4c35: $66
    ld a, [bc]                                    ; $4c36: $0a
    inc bc                                        ; $4c37: $03
    ld [hl], l                                    ; $4c38: $75
    ld a, [bc]                                    ; $4c39: $0a
    inc bc                                        ; $4c3a: $03
    sbc c                                         ; $4c3b: $99
    ld a, [bc]                                    ; $4c3c: $0a
    inc bc                                        ; $4c3d: $03
    add $0a                                       ; $4c3e: $c6 $0a
    inc bc                                        ; $4c40: $03
    db $fd                                        ; $4c41: $fd
    ld a, [bc]                                    ; $4c42: $0a
    inc bc                                        ; $4c43: $03
    inc h                                         ; $4c44: $24
    dec bc                                        ; $4c45: $0b
    inc bc                                        ; $4c46: $03
    ld h, c                                       ; $4c47: $61
    dec bc                                        ; $4c48: $0b
    inc bc                                        ; $4c49: $03
    ld [hl], c                                    ; $4c4a: $71
    dec bc                                        ; $4c4b: $0b
    inc bc                                        ; $4c4c: $03
    or l                                          ; $4c4d: $b5
    dec bc                                        ; $4c4e: $0b
    inc bc                                        ; $4c4f: $03
    db $eb                                        ; $4c50: $eb
    dec bc                                        ; $4c51: $0b
    inc bc                                        ; $4c52: $03
    dec d                                         ; $4c53: $15
    inc c                                         ; $4c54: $0c
    inc bc                                        ; $4c55: $03
    ld d, a                                       ; $4c56: $57
    inc c                                         ; $4c57: $0c
    inc bc                                        ; $4c58: $03
    add l                                         ; $4c59: $85
    inc c                                         ; $4c5a: $0c
    inc bc                                        ; $4c5b: $03
    or h                                          ; $4c5c: $b4
    inc c                                         ; $4c5d: $0c
    inc bc                                        ; $4c5e: $03
    pop hl                                        ; $4c5f: $e1
    inc c                                         ; $4c60: $0c
    inc bc                                        ; $4c61: $03
    push af                                       ; $4c62: $f5
    inc c                                         ; $4c63: $0c
    inc bc                                        ; $4c64: $03
    scf                                           ; $4c65: $37
    dec c                                         ; $4c66: $0d
    inc bc                                        ; $4c67: $03
    ld e, l                                       ; $4c68: $5d
    dec c                                         ; $4c69: $0d
    inc bc                                        ; $4c6a: $03
    ld [hl], l                                    ; $4c6b: $75
    dec c                                         ; $4c6c: $0d
    inc bc                                        ; $4c6d: $03
    ld a, d                                       ; $4c6e: $7a
    dec c                                         ; $4c6f: $0d
    inc bc                                        ; $4c70: $03
    xor d                                         ; $4c71: $aa
    dec c                                         ; $4c72: $0d
    inc bc                                        ; $4c73: $03
    jp nz, $030d                                  ; $4c74: $c2 $0d $03

    call c, $030d                                 ; $4c77: $dc $0d $03
    db $ec                                        ; $4c7a: $ec
    dec c                                         ; $4c7b: $0d
    inc bc                                        ; $4c7c: $03
    ld d, $0e                                     ; $4c7d: $16 $0e
    inc bc                                        ; $4c7f: $03
    ld l, $0e                                     ; $4c80: $2e $0e
    inc bc                                        ; $4c82: $03
    ld e, a                                       ; $4c83: $5f
    ld c, $03                                     ; $4c84: $0e $03
    ld l, e                                       ; $4c86: $6b
    ld c, $03                                     ; $4c87: $0e $03
    add d                                         ; $4c89: $82
    ld c, $03                                     ; $4c8a: $0e $03
    xor l                                         ; $4c8c: $ad
    ld c, $03                                     ; $4c8d: $0e $03
    ld a, [de]                                    ; $4c8f: $1a
    rrca                                          ; $4c90: $0f
    inc bc                                        ; $4c91: $03
    ld [hl], $0f                                  ; $4c92: $36 $0f
    inc bc                                        ; $4c94: $03
    sub a                                         ; $4c95: $97
    rrca                                          ; $4c96: $0f
    inc bc                                        ; $4c97: $03
    pop bc                                        ; $4c98: $c1
    rrca                                          ; $4c99: $0f
    inc bc                                        ; $4c9a: $03
    rst $38                                       ; $4c9b: $ff
    rrca                                          ; $4c9c: $0f
    inc bc                                        ; $4c9d: $03
    dec bc                                        ; $4c9e: $0b
    db $10                                        ; $4c9f: $10
    inc bc                                        ; $4ca0: $03
    jr c, @+$12                                   ; $4ca1: $38 $10

    inc bc                                        ; $4ca3: $03
    ld c, l                                       ; $4ca4: $4d
    db $10                                        ; $4ca5: $10
    inc bc                                        ; $4ca6: $03
    ld a, b                                       ; $4ca7: $78
    db $10                                        ; $4ca8: $10
    inc bc                                        ; $4ca9: $03
    adc c                                         ; $4caa: $89
    db $10                                        ; $4cab: $10
    inc bc                                        ; $4cac: $03
    and [hl]                                      ; $4cad: $a6
    db $10                                        ; $4cae: $10
    inc bc                                        ; $4caf: $03
    dec bc                                        ; $4cb0: $0b
    ld de, $2203                                  ; $4cb1: $11 $03 $22
    ld de, $3c03                                  ; $4cb4: $11 $03 $3c
    ld de, $5903                                  ; $4cb7: $11 $03 $59
    ld de, $8303                                  ; $4cba: $11 $03 $83
    ld de, $9003                                  ; $4cbd: $11 $03 $90
    ld de, $9d03                                  ; $4cc0: $11 $03 $9d
    ld de, $f803                                  ; $4cc3: $11 $03 $f8
    ld de, $0f03                                  ; $4cc6: $11 $03 $0f
    ld [de], a                                    ; $4cc9: $12
    inc bc                                        ; $4cca: $03
    dec e                                         ; $4ccb: $1d
    ld [de], a                                    ; $4ccc: $12
    inc bc                                        ; $4ccd: $03
    ld a, [hl+]                                   ; $4cce: $2a
    ld [de], a                                    ; $4ccf: $12
    inc bc                                        ; $4cd0: $03
    ld c, b                                       ; $4cd1: $48
    ld [de], a                                    ; $4cd2: $12
    inc bc                                        ; $4cd3: $03
    and a                                         ; $4cd4: $a7
    ld [de], a                                    ; $4cd5: $12
    inc bc                                        ; $4cd6: $03
    push de                                       ; $4cd7: $d5
    ld [de], a                                    ; $4cd8: $12
    inc bc                                        ; $4cd9: $03
    pop af                                        ; $4cda: $f1
    ld [de], a                                    ; $4cdb: $12
    inc bc                                        ; $4cdc: $03
    ei                                            ; $4cdd: $fb
    ld [de], a                                    ; $4cde: $12
    inc bc                                        ; $4cdf: $03
    dec a                                         ; $4ce0: $3d
    inc de                                        ; $4ce1: $13
    inc bc                                        ; $4ce2: $03
    ld l, d                                       ; $4ce3: $6a
    inc de                                        ; $4ce4: $13
    inc bc                                        ; $4ce5: $03
    ld a, d                                       ; $4ce6: $7a
    inc de                                        ; $4ce7: $13
    inc bc                                        ; $4ce8: $03
    adc b                                         ; $4ce9: $88
    inc de                                        ; $4cea: $13
    inc bc                                        ; $4ceb: $03
    sbc c                                         ; $4cec: $99
    inc de                                        ; $4ced: $13
    inc bc                                        ; $4cee: $03
    or c                                          ; $4cef: $b1
    inc de                                        ; $4cf0: $13
    inc bc                                        ; $4cf1: $03
    db $ed                                        ; $4cf2: $ed
    inc de                                        ; $4cf3: $13
    inc bc                                        ; $4cf4: $03
    rra                                           ; $4cf5: $1f
    inc d                                         ; $4cf6: $14
    inc bc                                        ; $4cf7: $03
    jr c, jr_033_4d0e                             ; $4cf8: $38 $14

    inc bc                                        ; $4cfa: $03
    adc e                                         ; $4cfb: $8b
    inc d                                         ; $4cfc: $14
    inc bc                                        ; $4cfd: $03
    or e                                          ; $4cfe: $b3
    inc d                                         ; $4cff: $14
    inc bc                                        ; $4d00: $03
    add sp, $14                                   ; $4d01: $e8 $14
    inc bc                                        ; $4d03: $03
    add hl, bc                                    ; $4d04: $09
    dec d                                         ; $4d05: $15
    inc bc                                        ; $4d06: $03
    add hl, hl                                    ; $4d07: $29
    dec d                                         ; $4d08: $15
    inc bc                                        ; $4d09: $03
    ld l, a                                       ; $4d0a: $6f
    dec d                                         ; $4d0b: $15
    inc bc                                        ; $4d0c: $03
    ld a, b                                       ; $4d0d: $78

jr_033_4d0e:
    dec d                                         ; $4d0e: $15
    inc bc                                        ; $4d0f: $03
    dec de                                        ; $4d10: $1b
    ld d, $03                                     ; $4d11: $16 $03
    dec h                                         ; $4d13: $25
    ld d, $03                                     ; $4d14: $16 $03
    ld a, [hl-]                                   ; $4d16: $3a
    ld d, $03                                     ; $4d17: $16 $03
    ld d, h                                       ; $4d19: $54
    ld d, $03                                     ; $4d1a: $16 $03
    ld h, l                                       ; $4d1c: $65
    ld d, $03                                     ; $4d1d: $16 $03
    and c                                         ; $4d1f: $a1
    ld d, $03                                     ; $4d20: $16 $03
    rst $20                                       ; $4d22: $e7
    ld d, $03                                     ; $4d23: $16 $03
    ld hl, sp+$16                                 ; $4d25: $f8 $16
    inc bc                                        ; $4d27: $03
    jr z, jr_033_4d41                             ; $4d28: $28 $17

    inc bc                                        ; $4d2a: $03
    ld h, a                                       ; $4d2b: $67
    rla                                           ; $4d2c: $17
    inc bc                                        ; $4d2d: $03
    ld a, l                                       ; $4d2e: $7d
    rla                                           ; $4d2f: $17
    inc bc                                        ; $4d30: $03
    sbc l                                         ; $4d31: $9d
    rla                                           ; $4d32: $17
    inc bc                                        ; $4d33: $03
    rl a                                          ; $4d34: $cb $17
    inc bc                                        ; $4d36: $03
    push af                                       ; $4d37: $f5
    rla                                           ; $4d38: $17
    inc bc                                        ; $4d39: $03
    ld e, $18                                     ; $4d3a: $1e $18
    inc bc                                        ; $4d3c: $03
    ld b, d                                       ; $4d3d: $42
    jr jr_033_4d43                                ; $4d3e: $18 $03

    ld c, b                                       ; $4d40: $48

jr_033_4d41:
    jr jr_033_4d46                                ; $4d41: $18 $03

jr_033_4d43:
    xor l                                         ; $4d43: $ad
    jr jr_033_4d49                                ; $4d44: $18 $03

jr_033_4d46:
    or e                                          ; $4d46: $b3
    jr jr_033_4d4c                                ; $4d47: $18 $03

jr_033_4d49:
    ld [$0318], a                                 ; $4d49: $ea $18 $03

jr_033_4d4c:
    ld a, [de]                                    ; $4d4c: $1a
    add hl, de                                    ; $4d4d: $19
    inc bc                                        ; $4d4e: $03
    ld l, $19                                     ; $4d4f: $2e $19
    inc bc                                        ; $4d51: $03
    ld b, b                                       ; $4d52: $40
    add hl, de                                    ; $4d53: $19
    inc bc                                        ; $4d54: $03
    ld c, a                                       ; $4d55: $4f
    add hl, de                                    ; $4d56: $19
    inc bc                                        ; $4d57: $03
    ld l, e                                       ; $4d58: $6b
    add hl, de                                    ; $4d59: $19
    inc bc                                        ; $4d5a: $03
    rr c                                          ; $4d5b: $cb $19
    inc bc                                        ; $4d5d: $03
    push de                                       ; $4d5e: $d5
    add hl, de                                    ; $4d5f: $19
    inc bc                                        ; $4d60: $03
    db $e4                                        ; $4d61: $e4
    add hl, de                                    ; $4d62: $19
    inc bc                                        ; $4d63: $03
    db $eb                                        ; $4d64: $eb
    add hl, de                                    ; $4d65: $19
    inc bc                                        ; $4d66: $03
    dec e                                         ; $4d67: $1d
    ld a, [de]                                    ; $4d68: $1a
    inc bc                                        ; $4d69: $03
    ld b, [hl]                                    ; $4d6a: $46
    ld a, [de]                                    ; $4d6b: $1a
    inc bc                                        ; $4d6c: $03
    ld h, b                                       ; $4d6d: $60
    ld a, [de]                                    ; $4d6e: $1a
    inc bc                                        ; $4d6f: $03
    cp c                                          ; $4d70: $b9
    ld a, [de]                                    ; $4d71: $1a
    inc bc                                        ; $4d72: $03
    db $d3                                        ; $4d73: $d3
    ld a, [de]                                    ; $4d74: $1a
    inc bc                                        ; $4d75: $03
    push hl                                       ; $4d76: $e5
    ld a, [de]                                    ; $4d77: $1a
    inc bc                                        ; $4d78: $03
    dec b                                         ; $4d79: $05
    dec de                                        ; $4d7a: $1b
    inc bc                                        ; $4d7b: $03
    ld l, [hl]                                    ; $4d7c: $6e
    dec de                                        ; $4d7d: $1b
    inc bc                                        ; $4d7e: $03
    and d                                         ; $4d7f: $a2
    dec de                                        ; $4d80: $1b
    inc bc                                        ; $4d81: $03
    reti                                          ; $4d82: $d9


    dec de                                        ; $4d83: $1b
    inc bc                                        ; $4d84: $03
    dec bc                                        ; $4d85: $0b
    inc e                                         ; $4d86: $1c
    inc bc                                        ; $4d87: $03
    jr jr_033_4da6                                ; $4d88: $18 $1c

    inc bc                                        ; $4d8a: $03
    jr nc, jr_033_4da9                            ; $4d8b: $30 $1c

    inc bc                                        ; $4d8d: $03
    jr c, jr_033_4dac                             ; $4d8e: $38 $1c

    inc bc                                        ; $4d90: $03
    ld h, a                                       ; $4d91: $67
    inc e                                         ; $4d92: $1c
    inc bc                                        ; $4d93: $03
    adc d                                         ; $4d94: $8a
    inc e                                         ; $4d95: $1c
    inc bc                                        ; $4d96: $03
    pop bc                                        ; $4d97: $c1
    inc e                                         ; $4d98: $1c
    inc bc                                        ; $4d99: $03
    ret c                                         ; $4d9a: $d8

    inc e                                         ; $4d9b: $1c
    inc bc                                        ; $4d9c: $03
    rla                                           ; $4d9d: $17
    dec e                                         ; $4d9e: $1d
    inc bc                                        ; $4d9f: $03
    ld a, [hl+]                                   ; $4da0: $2a
    dec e                                         ; $4da1: $1d
    inc bc                                        ; $4da2: $03
    ld c, c                                       ; $4da3: $49
    dec e                                         ; $4da4: $1d
    inc bc                                        ; $4da5: $03

jr_033_4da6:
    ld d, h                                       ; $4da6: $54
    dec e                                         ; $4da7: $1d
    inc bc                                        ; $4da8: $03

jr_033_4da9:
    ld [hl-], a                                   ; $4da9: $32
    ld e, $03                                     ; $4daa: $1e $03

jr_033_4dac:
    ld b, c                                       ; $4dac: $41
    ld e, $03                                     ; $4dad: $1e $03
    pop bc                                        ; $4daf: $c1
    ld e, $03                                     ; $4db0: $1e $03
    and $1e                                       ; $4db2: $e6 $1e
    inc bc                                        ; $4db4: $03
    db $10                                        ; $4db5: $10
    rra                                           ; $4db6: $1f
    inc bc                                        ; $4db7: $03
    ld sp, $031f                                  ; $4db8: $31 $1f $03
    add c                                         ; $4dbb: $81
    rra                                           ; $4dbc: $1f
    inc bc                                        ; $4dbd: $03
    sub b                                         ; $4dbe: $90
    rra                                           ; $4dbf: $1f
    inc bc                                        ; $4dc0: $03
    sbc c                                         ; $4dc1: $99
    rra                                           ; $4dc2: $1f
    inc bc                                        ; $4dc3: $03
    and h                                         ; $4dc4: $a4
    rra                                           ; $4dc5: $1f
    inc bc                                        ; $4dc6: $03
    add $1f                                       ; $4dc7: $c6 $1f
    inc bc                                        ; $4dc9: $03
    ld [c], a                                     ; $4dca: $e2
    rra                                           ; $4dcb: $1f
    inc bc                                        ; $4dcc: $03
    ld hl, sp+$1f                                 ; $4dcd: $f8 $1f
    inc bc                                        ; $4dcf: $03
    inc [hl]                                      ; $4dd0: $34
    jr nz, jr_033_4dd6                            ; $4dd1: $20 $03

    ld c, [hl]                                    ; $4dd3: $4e
    jr nz, jr_033_4dd9                            ; $4dd4: $20 $03

jr_033_4dd6:
    ld h, d                                       ; $4dd6: $62
    jr nz, jr_033_4ddc                            ; $4dd7: $20 $03

jr_033_4dd9:
    sbc l                                         ; $4dd9: $9d
    jr nz, jr_033_4ddf                            ; $4dda: $20 $03

jr_033_4ddc:
    pop bc                                        ; $4ddc: $c1
    jr nz, jr_033_4de2                            ; $4ddd: $20 $03

jr_033_4ddf:
    ld a, [c]                                     ; $4ddf: $f2
    jr nz, @+$05                                  ; $4de0: $20 $03

jr_033_4de2:
    inc de                                        ; $4de2: $13
    ld hl, $4103                                  ; $4de3: $21 $03 $41
    ld hl, $7303                                  ; $4de6: $21 $03 $73
    ld hl, $9c03                                  ; $4de9: $21 $03 $9c
    ld hl, $a903                                  ; $4dec: $21 $03 $a9
    ld hl, $b503                                  ; $4def: $21 $03 $b5
    ld hl, $cc03                                  ; $4df2: $21 $03 $cc
    ld hl, $fa03                                  ; $4df5: $21 $03 $fa
    ld hl, $1e03                                  ; $4df8: $21 $03 $1e
    ld [hl+], a                                   ; $4dfb: $22
    inc bc                                        ; $4dfc: $03
    jr nc, jr_033_4e21                            ; $4dfd: $30 $22

    inc bc                                        ; $4dff: $03
    ld d, e                                       ; $4e00: $53
    ld [hl+], a                                   ; $4e01: $22
    inc bc                                        ; $4e02: $03
    add d                                         ; $4e03: $82
    ld [hl+], a                                   ; $4e04: $22
    inc bc                                        ; $4e05: $03
    push bc                                       ; $4e06: $c5
    ld [hl+], a                                   ; $4e07: $22
    inc bc                                        ; $4e08: $03
    cp $22                                        ; $4e09: $fe $22
    inc bc                                        ; $4e0b: $03
    dec hl                                        ; $4e0c: $2b
    inc hl                                        ; $4e0d: $23
    inc bc                                        ; $4e0e: $03
    ld e, e                                       ; $4e0f: $5b
    inc hl                                        ; $4e10: $23
    inc bc                                        ; $4e11: $03
    sub $23                                       ; $4e12: $d6 $23
    inc bc                                        ; $4e14: $03
    dec bc                                        ; $4e15: $0b
    inc h                                         ; $4e16: $24
    inc bc                                        ; $4e17: $03
    jr z, @+$26                                   ; $4e18: $28 $24

    inc bc                                        ; $4e1a: $03
    ld e, h                                       ; $4e1b: $5c
    inc h                                         ; $4e1c: $24
    inc bc                                        ; $4e1d: $03
    ld l, a                                       ; $4e1e: $6f
    inc h                                         ; $4e1f: $24
    inc bc                                        ; $4e20: $03

jr_033_4e21:
    adc [hl]                                      ; $4e21: $8e
    inc h                                         ; $4e22: $24
    inc bc                                        ; $4e23: $03
    xor c                                         ; $4e24: $a9
    inc h                                         ; $4e25: $24
    inc bc                                        ; $4e26: $03
    rst $10                                       ; $4e27: $d7
    inc h                                         ; $4e28: $24
    inc bc                                        ; $4e29: $03
    dec b                                         ; $4e2a: $05
    dec h                                         ; $4e2b: $25
    inc bc                                        ; $4e2c: $03
    ld sp, $0325                                  ; $4e2d: $31 $25 $03
    ld l, b                                       ; $4e30: $68
    dec h                                         ; $4e31: $25
    inc bc                                        ; $4e32: $03
    adc a                                         ; $4e33: $8f
    dec h                                         ; $4e34: $25
    inc bc                                        ; $4e35: $03
    db $e3                                        ; $4e36: $e3
    dec h                                         ; $4e37: $25
    inc bc                                        ; $4e38: $03
    ld sp, hl                                     ; $4e39: $f9
    dec h                                         ; $4e3a: $25
    inc bc                                        ; $4e3b: $03
    ld [$0326], sp                                ; $4e3c: $08 $26 $03
    jr nc, jr_033_4e67                            ; $4e3f: $30 $26

    inc bc                                        ; $4e41: $03
    sbc h                                         ; $4e42: $9c
    ld h, $03                                     ; $4e43: $26 $03
    db $e4                                        ; $4e45: $e4
    ld h, $03                                     ; $4e46: $26 $03
    inc bc                                        ; $4e48: $03
    daa                                           ; $4e49: $27
    inc bc                                        ; $4e4a: $03
    dec c                                         ; $4e4b: $0d
    daa                                           ; $4e4c: $27
    inc bc                                        ; $4e4d: $03
    inc d                                         ; $4e4e: $14
    daa                                           ; $4e4f: $27
    inc bc                                        ; $4e50: $03
    dec [hl]                                      ; $4e51: $35
    daa                                           ; $4e52: $27
    inc bc                                        ; $4e53: $03
    ld e, d                                       ; $4e54: $5a
    daa                                           ; $4e55: $27
    inc bc                                        ; $4e56: $03
    ld l, b                                       ; $4e57: $68
    daa                                           ; $4e58: $27
    inc bc                                        ; $4e59: $03
    ld a, h                                       ; $4e5a: $7c
    daa                                           ; $4e5b: $27
    inc bc                                        ; $4e5c: $03
    sbc c                                         ; $4e5d: $99
    daa                                           ; $4e5e: $27
    inc bc                                        ; $4e5f: $03
    jp nc, Jump_000_0327                          ; $4e60: $d2 $27 $03

    jp hl                                         ; $4e63: $e9


    daa                                           ; $4e64: $27
    inc bc                                        ; $4e65: $03
    inc l                                         ; $4e66: $2c

jr_033_4e67:
    jr z, jr_033_4e6c                             ; $4e67: $28 $03

    ld e, e                                       ; $4e69: $5b
    jr z, jr_033_4e6f                             ; $4e6a: $28 $03

jr_033_4e6c:
    ld [hl], d                                    ; $4e6c: $72
    jr z, jr_033_4e72                             ; $4e6d: $28 $03

jr_033_4e6f:
    adc a                                         ; $4e6f: $8f
    jr z, jr_033_4e75                             ; $4e70: $28 $03

jr_033_4e72:
    xor e                                         ; $4e72: $ab
    jr z, jr_033_4e78                             ; $4e73: $28 $03

jr_033_4e75:
    jp $0328                                      ; $4e75: $c3 $28 $03


jr_033_4e78:
    sbc $28                                       ; $4e78: $de $28
    inc bc                                        ; $4e7a: $03
    ld a, [$0328]                                 ; $4e7b: $fa $28 $03
    dec h                                         ; $4e7e: $25
    add hl, hl                                    ; $4e7f: $29
    inc bc                                        ; $4e80: $03
    jr c, jr_033_4eac                             ; $4e81: $38 $29

    inc bc                                        ; $4e83: $03
    ld d, b                                       ; $4e84: $50
    add hl, hl                                    ; $4e85: $29
    inc bc                                        ; $4e86: $03
    ld e, l                                       ; $4e87: $5d
    add hl, hl                                    ; $4e88: $29
    inc bc                                        ; $4e89: $03
    add d                                         ; $4e8a: $82
    add hl, hl                                    ; $4e8b: $29
    inc bc                                        ; $4e8c: $03
    sbc [hl]                                      ; $4e8d: $9e
    add hl, hl                                    ; $4e8e: $29
    inc bc                                        ; $4e8f: $03
    cp a                                          ; $4e90: $bf
    add hl, hl                                    ; $4e91: $29
    inc bc                                        ; $4e92: $03
    and $29                                       ; $4e93: $e6 $29
    inc bc                                        ; $4e95: $03
    ld [bc], a                                    ; $4e96: $02
    ld a, [hl+]                                   ; $4e97: $2a
    inc bc                                        ; $4e98: $03
    ld h, $2a                                     ; $4e99: $26 $2a
    inc bc                                        ; $4e9b: $03
    ld c, a                                       ; $4e9c: $4f
    ld a, [hl+]                                   ; $4e9d: $2a
    inc bc                                        ; $4e9e: $03
    ld a, c                                       ; $4e9f: $79
    ld a, [hl+]                                   ; $4ea0: $2a
    inc bc                                        ; $4ea1: $03
    sbc c                                         ; $4ea2: $99
    ld a, [hl+]                                   ; $4ea3: $2a
    inc bc                                        ; $4ea4: $03
    cp h                                          ; $4ea5: $bc
    ld a, [hl+]                                   ; $4ea6: $2a
    inc bc                                        ; $4ea7: $03
    jp nc, Jump_000_032a                          ; $4ea8: $d2 $2a $03

    ld [bc], a                                    ; $4eab: $02

jr_033_4eac:
    dec hl                                        ; $4eac: $2b
    inc bc                                        ; $4ead: $03
    dec e                                         ; $4eae: $1d
    dec hl                                        ; $4eaf: $2b
    inc bc                                        ; $4eb0: $03
    ld a, [hl-]                                   ; $4eb1: $3a
    dec hl                                        ; $4eb2: $2b
    inc bc                                        ; $4eb3: $03
    ld [hl], l                                    ; $4eb4: $75
    dec hl                                        ; $4eb5: $2b
    inc bc                                        ; $4eb6: $03
    and b                                         ; $4eb7: $a0
    dec hl                                        ; $4eb8: $2b
    inc bc                                        ; $4eb9: $03
    ret                                           ; $4eba: $c9


    dec hl                                        ; $4ebb: $2b
    inc bc                                        ; $4ebc: $03
    reti                                          ; $4ebd: $d9


    dec hl                                        ; $4ebe: $2b
    inc bc                                        ; $4ebf: $03
    ld a, [$032b]                                 ; $4ec0: $fa $2b $03
    ld a, [de]                                    ; $4ec3: $1a
    inc l                                         ; $4ec4: $2c
    inc bc                                        ; $4ec5: $03
    ld b, e                                       ; $4ec6: $43
    inc l                                         ; $4ec7: $2c
    inc bc                                        ; $4ec8: $03
    ld h, h                                       ; $4ec9: $64
    inc l                                         ; $4eca: $2c
    inc bc                                        ; $4ecb: $03
    adc b                                         ; $4ecc: $88
    inc l                                         ; $4ecd: $2c
    inc bc                                        ; $4ece: $03
    or c                                          ; $4ecf: $b1
    inc l                                         ; $4ed0: $2c
    inc bc                                        ; $4ed1: $03
    add sp, $2c                                   ; $4ed2: $e8 $2c
    inc bc                                        ; $4ed4: $03
    dec d                                         ; $4ed5: $15
    dec l                                         ; $4ed6: $2d
    inc bc                                        ; $4ed7: $03
    cpl                                           ; $4ed8: $2f
    dec l                                         ; $4ed9: $2d
    inc bc                                        ; $4eda: $03
    ld e, h                                       ; $4edb: $5c
    dec l                                         ; $4edc: $2d
    inc bc                                        ; $4edd: $03
    ld [hl], d                                    ; $4ede: $72
    dec l                                         ; $4edf: $2d
    inc bc                                        ; $4ee0: $03
    add d                                         ; $4ee1: $82
    dec l                                         ; $4ee2: $2d
    inc bc                                        ; $4ee3: $03
    add a                                         ; $4ee4: $87
    dec l                                         ; $4ee5: $2d
    inc bc                                        ; $4ee6: $03
    sub [hl]                                      ; $4ee7: $96
    dec l                                         ; $4ee8: $2d
    inc bc                                        ; $4ee9: $03
    xor b                                         ; $4eea: $a8
    dec l                                         ; $4eeb: $2d
    inc bc                                        ; $4eec: $03
    rrca                                          ; $4eed: $0f
    ld l, $03                                     ; $4eee: $2e $03
    dec a                                         ; $4ef0: $3d
    ld l, $03                                     ; $4ef1: $2e $03
    ld e, [hl]                                    ; $4ef3: $5e
    ld l, $03                                     ; $4ef4: $2e $03
    add d                                         ; $4ef6: $82
    ld l, $03                                     ; $4ef7: $2e $03
    push bc                                       ; $4ef9: $c5
    ld l, $03                                     ; $4efa: $2e $03
    push hl                                       ; $4efc: $e5
    ld l, $03                                     ; $4efd: $2e $03
    inc c                                         ; $4eff: $0c
    cpl                                           ; $4f00: $2f
    inc bc                                        ; $4f01: $03
    ld d, $2f                                     ; $4f02: $16 $2f
    inc bc                                        ; $4f04: $03
    ld [hl-], a                                   ; $4f05: $32
    cpl                                           ; $4f06: $2f
    inc bc                                        ; $4f07: $03
    ld d, l                                       ; $4f08: $55
    cpl                                           ; $4f09: $2f
    inc bc                                        ; $4f0a: $03
    ld a, d                                       ; $4f0b: $7a
    cpl                                           ; $4f0c: $2f
    inc bc                                        ; $4f0d: $03
    xor c                                         ; $4f0e: $a9
    cpl                                           ; $4f0f: $2f
    inc bc                                        ; $4f10: $03
    ret nz                                        ; $4f11: $c0

    cpl                                           ; $4f12: $2f
    inc bc                                        ; $4f13: $03
    di                                            ; $4f14: $f3
    cpl                                           ; $4f15: $2f
    inc bc                                        ; $4f16: $03
    inc c                                         ; $4f17: $0c
    jr nc, jr_033_4f1d                            ; $4f18: $30 $03

    ccf                                           ; $4f1a: $3f
    jr nc, jr_033_4f20                            ; $4f1b: $30 $03

jr_033_4f1d:
    ld d, l                                       ; $4f1d: $55
    jr nc, jr_033_4f23                            ; $4f1e: $30 $03

jr_033_4f20:
    ld a, e                                       ; $4f20: $7b
    jr nc, jr_033_4f26                            ; $4f21: $30 $03

jr_033_4f23:
    call nz, $0330                                ; $4f23: $c4 $30 $03

jr_033_4f26:
    call z, $0330                                 ; $4f26: $cc $30 $03
    ret c                                         ; $4f29: $d8

    jr nc, jr_033_4f2f                            ; $4f2a: $30 $03

    ld a, [$0330]                                 ; $4f2c: $fa $30 $03

jr_033_4f2f:
    ld b, $31                                     ; $4f2f: $06 $31
    inc bc                                        ; $4f31: $03
    ld de, $0331                                  ; $4f32: $11 $31 $03
    dec sp                                        ; $4f35: $3b
    ld sp, $7d03                                  ; $4f36: $31 $03 $7d
    ld sp, $9203                                  ; $4f39: $31 $03 $92
    ld sp, $cb03                                  ; $4f3c: $31 $03 $cb
    ld sp, $f303                                  ; $4f3f: $31 $03 $f3
    ld sp, $2403                                  ; $4f42: $31 $03 $24
    ld [hl-], a                                   ; $4f45: $32
    inc bc                                        ; $4f46: $03
    inc sp                                        ; $4f47: $33
    ld [hl-], a                                   ; $4f48: $32
    inc bc                                        ; $4f49: $03
    or $32                                        ; $4f4a: $f6 $32
    inc bc                                        ; $4f4c: $03
    ld b, $33                                     ; $4f4d: $06 $33
    inc bc                                        ; $4f4f: $03
    ld a, [hl-]                                   ; $4f50: $3a
    inc sp                                        ; $4f51: $33
    inc bc                                        ; $4f52: $03
    sub d                                         ; $4f53: $92
    inc sp                                        ; $4f54: $33
    inc bc                                        ; $4f55: $03
    cp l                                          ; $4f56: $bd
    inc sp                                        ; $4f57: $33
    inc bc                                        ; $4f58: $03
    jp c, $0333                                   ; $4f59: $da $33 $03

    inc de                                        ; $4f5c: $13
    inc [hl]                                      ; $4f5d: $34
    inc bc                                        ; $4f5e: $03
    ld b, [hl]                                    ; $4f5f: $46
    inc [hl]                                      ; $4f60: $34
    inc bc                                        ; $4f61: $03
    adc h                                         ; $4f62: $8c
    inc [hl]                                      ; $4f63: $34
    inc bc                                        ; $4f64: $03
    rst $08                                       ; $4f65: $cf
    inc [hl]                                      ; $4f66: $34
    inc bc                                        ; $4f67: $03
    ldh a, [$34]                                  ; $4f68: $f0 $34
    inc bc                                        ; $4f6a: $03
    jr nz, @+$37                                  ; $4f6b: $20 $35

    inc bc                                        ; $4f6d: $03
    scf                                           ; $4f6e: $37
    dec [hl]                                      ; $4f6f: $35
    inc bc                                        ; $4f70: $03
    ld d, d                                       ; $4f71: $52
    dec [hl]                                      ; $4f72: $35
    inc bc                                        ; $4f73: $03
    or c                                          ; $4f74: $b1
    dec [hl]                                      ; $4f75: $35
    inc bc                                        ; $4f76: $03
    ld sp, hl                                     ; $4f77: $f9
    dec [hl]                                      ; $4f78: $35
    inc bc                                        ; $4f79: $03
    inc c                                         ; $4f7a: $0c
    ld [hl], $03                                  ; $4f7b: $36 $03
    add hl, hl                                    ; $4f7d: $29
    ld [hl], $03                                  ; $4f7e: $36 $03
    ld d, c                                       ; $4f80: $51
    ld [hl], $03                                  ; $4f81: $36 $03
    ld d, [hl]                                    ; $4f83: $56
    ld [hl], $03                                  ; $4f84: $36 $03
    ld [hl], e                                    ; $4f86: $73
    ld [hl], $03                                  ; $4f87: $36 $03
    sbc e                                         ; $4f89: $9b
    ld [hl], $03                                  ; $4f8a: $36 $03
    jp z, $0337                                   ; $4f8c: $ca $37 $03

    pop de                                        ; $4f8f: $d1
    scf                                           ; $4f90: $37
    inc bc                                        ; $4f91: $03
    rst $18                                       ; $4f92: $df
    scf                                           ; $4f93: $37
    inc bc                                        ; $4f94: $03
    pop af                                        ; $4f95: $f1
    scf                                           ; $4f96: $37
    inc bc                                        ; $4f97: $03
    jr c, @+$3a                                   ; $4f98: $38 $38

    inc bc                                        ; $4f9a: $03
    ld e, h                                       ; $4f9b: $5c
    jr c, jr_033_4fa1                             ; $4f9c: $38 $03

    sbc a                                         ; $4f9e: $9f
    jr c, jr_033_4fa4                             ; $4f9f: $38 $03

jr_033_4fa1:
    jp Jump_000_0338                              ; $4fa1: $c3 $38 $03


jr_033_4fa4:
    db $ed                                        ; $4fa4: $ed
    jr c, jr_033_4faa                             ; $4fa5: $38 $03

    ld bc, $0339                                  ; $4fa7: $01 $39 $03

jr_033_4faa:
    inc c                                         ; $4faa: $0c
    add hl, sp                                    ; $4fab: $39
    inc bc                                        ; $4fac: $03
    ld [hl+], a                                   ; $4fad: $22
    add hl, sp                                    ; $4fae: $39
    inc bc                                        ; $4faf: $03
    or a                                          ; $4fb0: $b7
    add hl, sp                                    ; $4fb1: $39
    inc bc                                        ; $4fb2: $03
    call nc, Call_000_0339                        ; $4fb3: $d4 $39 $03
    ld d, b                                       ; $4fb6: $50
    ld a, [hl-]                                   ; $4fb7: $3a
    inc bc                                        ; $4fb8: $03
    or a                                          ; $4fb9: $b7
    ld a, [hl-]                                   ; $4fba: $3a
    inc bc                                        ; $4fbb: $03
    ld [hl-], a                                   ; $4fbc: $32
    dec sp                                        ; $4fbd: $3b
    inc bc                                        ; $4fbe: $03
    sbc l                                         ; $4fbf: $9d
    dec sp                                        ; $4fc0: $3b
    inc bc                                        ; $4fc1: $03
    ld bc, $033c                                  ; $4fc2: $01 $3c $03
    ld [hl], $3c                                  ; $4fc5: $36 $3c
    inc bc                                        ; $4fc7: $03
    ld a, c                                       ; $4fc8: $79
    inc a                                         ; $4fc9: $3c
    inc bc                                        ; $4fca: $03
    cp b                                          ; $4fcb: $b8
    inc a                                         ; $4fcc: $3c
    inc bc                                        ; $4fcd: $03
    jr nz, jr_033_500d                            ; $4fce: $20 $3d

    inc bc                                        ; $4fd0: $03
    jr nc, jr_033_5010                            ; $4fd1: $30 $3d

    inc bc                                        ; $4fd3: $03
    ld [hl], $3d                                  ; $4fd4: $36 $3d
    inc bc                                        ; $4fd6: $03
    ld b, [hl]                                    ; $4fd7: $46
    dec a                                         ; $4fd8: $3d
    inc bc                                        ; $4fd9: $03
    ld a, c                                       ; $4fda: $79
    dec a                                         ; $4fdb: $3d
    inc bc                                        ; $4fdc: $03
    adc e                                         ; $4fdd: $8b
    dec a                                         ; $4fde: $3d
    inc bc                                        ; $4fdf: $03
    and h                                         ; $4fe0: $a4
    dec a                                         ; $4fe1: $3d
    inc bc                                        ; $4fe2: $03
    or [hl]                                       ; $4fe3: $b6
    dec a                                         ; $4fe4: $3d
    inc bc                                        ; $4fe5: $03
    jp nc, $033d                                  ; $4fe6: $d2 $3d $03

    db $e3                                        ; $4fe9: $e3
    dec a                                         ; $4fea: $3d
    inc bc                                        ; $4feb: $03
    rst $30                                       ; $4fec: $f7
    dec a                                         ; $4fed: $3d
    inc bc                                        ; $4fee: $03
    inc hl                                        ; $4fef: $23
    ld a, $03                                     ; $4ff0: $3e $03
    ld [hl], $3e                                  ; $4ff2: $36 $3e
    inc bc                                        ; $4ff4: $03
    ld d, c                                       ; $4ff5: $51
    ld a, $03                                     ; $4ff6: $3e $03
    ld e, e                                       ; $4ff8: $5b
    ld a, $03                                     ; $4ff9: $3e $03
    ld a, b                                       ; $4ffb: $78
    ld a, $03                                     ; $4ffc: $3e $03
    and e                                         ; $4ffe: $a3
    ld a, $03                                     ; $4fff: $3e $03
    push bc                                       ; $5001: $c5
    ld a, $03                                     ; $5002: $3e $03
    rlca                                          ; $5004: $07
    ccf                                           ; $5005: $3f
    inc bc                                        ; $5006: $03
    cpl                                           ; $5007: $2f
    ccf                                           ; $5008: $3f
    inc bc                                        ; $5009: $03
    ld a, a                                       ; $500a: $7f
    ccf                                           ; $500b: $3f
    inc bc                                        ; $500c: $03

jr_033_500d:
    xor l                                         ; $500d: $ad
    ccf                                           ; $500e: $3f
    inc bc                                        ; $500f: $03

jr_033_5010:
    jp c, Jump_000_043f                           ; $5010: $da $3f $04

    ld bc, $0400                                  ; $5013: $01 $00 $04
    inc [hl]                                      ; $5016: $34
    nop                                           ; $5017: $00
    inc b                                         ; $5018: $04
    ld d, a                                       ; $5019: $57
    nop                                           ; $501a: $00
    inc b                                         ; $501b: $04
    ld h, d                                       ; $501c: $62
    nop                                           ; $501d: $00
    inc b                                         ; $501e: $04
    add h                                         ; $501f: $84
    nop                                           ; $5020: $00
    inc b                                         ; $5021: $04
    adc h                                         ; $5022: $8c
    nop                                           ; $5023: $00
    inc b                                         ; $5024: $04
    and e                                         ; $5025: $a3
    nop                                           ; $5026: $00
    inc b                                         ; $5027: $04
    or e                                          ; $5028: $b3
    nop                                           ; $5029: $00
    inc b                                         ; $502a: $04
    ret                                           ; $502b: $c9


    nop                                           ; $502c: $00
    inc b                                         ; $502d: $04
    ldh [rP1], a                                  ; $502e: $e0 $00
    inc b                                         ; $5030: $04
    pop af                                        ; $5031: $f1
    nop                                           ; $5032: $00
    inc b                                         ; $5033: $04
    ei                                            ; $5034: $fb
    nop                                           ; $5035: $00
    inc b                                         ; $5036: $04
    dec c                                         ; $5037: $0d
    ld bc, $1a04                                  ; $5038: $01 $04 $1a
    ld bc, $2104                                  ; $503b: $01 $04 $21
    ld bc, $2b04                                  ; $503e: $01 $04 $2b
    ld bc, $3304                                  ; $5041: $01 $04 $33
    ld bc, $3f04                                  ; $5044: $01 $04 $3f
    ld bc, $4904                                  ; $5047: $01 $04 $49
    ld bc, $4e04                                  ; $504a: $01 $04 $4e
    ld bc, $5504                                  ; $504d: $01 $04 $55
    ld bc, $5f04                                  ; $5050: $01 $04 $5f
    ld bc, $6404                                  ; $5053: $01 $04 $64
    ld bc, $6904                                  ; $5056: $01 $04 $69
    ld bc, $6e04                                  ; $5059: $01 $04 $6e
    ld bc, $7304                                  ; $505c: $01 $04 $73
    ld bc, $7904                                  ; $505f: $01 $04 $79
    ld bc, $7f04                                  ; $5062: $01 $04 $7f
    ld bc, $8804                                  ; $5065: $01 $04 $88
    ld bc, $9104                                  ; $5068: $01 $04 $91
    ld bc, $9904                                  ; $506b: $01 $04 $99
    ld bc, $a904                                  ; $506e: $01 $04 $a9
    ld bc, $b704                                  ; $5071: $01 $04 $b7
    ld bc, $c504                                  ; $5074: $01 $04 $c5
    ld bc, $d304                                  ; $5077: $01 $04 $d3
    ld bc, $e104                                  ; $507a: $01 $04 $e1
    ld bc, $ee04                                  ; $507d: $01 $04 $ee
    ld bc, $fc04                                  ; $5080: $01 $04 $fc
    ld bc, $0904                                  ; $5083: $01 $04 $09
    ld [bc], a                                    ; $5086: $02
    inc b                                         ; $5087: $04
    db $10                                        ; $5088: $10
    ld [bc], a                                    ; $5089: $02
    inc b                                         ; $508a: $04
    inc e                                         ; $508b: $1c
    ld [bc], a                                    ; $508c: $02
    inc b                                         ; $508d: $04
    inc hl                                        ; $508e: $23
    ld [bc], a                                    ; $508f: $02
    inc b                                         ; $5090: $04
    jr nc, @+$04                                  ; $5091: $30 $02

    inc b                                         ; $5093: $04
    jr c, jr_033_5098                             ; $5094: $38 $02

    inc b                                         ; $5096: $04
    ld b, d                                       ; $5097: $42

jr_033_5098:
    ld [bc], a                                    ; $5098: $02
    inc b                                         ; $5099: $04
    ld d, c                                       ; $509a: $51
    ld [bc], a                                    ; $509b: $02
    inc b                                         ; $509c: $04
    ld h, b                                       ; $509d: $60
    ld [bc], a                                    ; $509e: $02
    inc b                                         ; $509f: $04
    ld l, b                                       ; $50a0: $68
    ld [bc], a                                    ; $50a1: $02
    inc b                                         ; $50a2: $04
    ld [hl], a                                    ; $50a3: $77
    ld [bc], a                                    ; $50a4: $02
    inc b                                         ; $50a5: $04
    add [hl]                                      ; $50a6: $86
    ld [bc], a                                    ; $50a7: $02
    inc b                                         ; $50a8: $04
    sub c                                         ; $50a9: $91
    ld [bc], a                                    ; $50aa: $02
    inc b                                         ; $50ab: $04
    sbc l                                         ; $50ac: $9d
    ld [bc], a                                    ; $50ad: $02
    inc b                                         ; $50ae: $04
    xor e                                         ; $50af: $ab
    ld [bc], a                                    ; $50b0: $02
    inc b                                         ; $50b1: $04
    or e                                          ; $50b2: $b3
    ld [bc], a                                    ; $50b3: $02
    inc b                                         ; $50b4: $04
    cp [hl]                                       ; $50b5: $be
    ld [bc], a                                    ; $50b6: $02
    inc b                                         ; $50b7: $04
    ret z                                         ; $50b8: $c8

    ld [bc], a                                    ; $50b9: $02
    inc b                                         ; $50ba: $04
    jp nc, $0402                                  ; $50bb: $d2 $02 $04

    db $dd                                        ; $50be: $dd
    ld [bc], a                                    ; $50bf: $02
    inc b                                         ; $50c0: $04
    and $02                                       ; $50c1: $e6 $02
    inc b                                         ; $50c3: $04
    db $f4                                        ; $50c4: $f4
    ld [bc], a                                    ; $50c5: $02
    inc b                                         ; $50c6: $04
    cp $02                                        ; $50c7: $fe $02
    inc b                                         ; $50c9: $04
    add hl, bc                                    ; $50ca: $09
    inc bc                                        ; $50cb: $03
    inc b                                         ; $50cc: $04
    dec d                                         ; $50cd: $15
    inc bc                                        ; $50ce: $03
    inc b                                         ; $50cf: $04
    inc hl                                        ; $50d0: $23
    inc bc                                        ; $50d1: $03
    inc b                                         ; $50d2: $04
    ld l, $03                                     ; $50d3: $2e $03
    inc b                                         ; $50d5: $04
    ld a, [hl-]                                   ; $50d6: $3a
    inc bc                                        ; $50d7: $03
    inc b                                         ; $50d8: $04
    ld b, a                                       ; $50d9: $47
    inc bc                                        ; $50da: $03
    inc b                                         ; $50db: $04
    ld d, b                                       ; $50dc: $50
    inc bc                                        ; $50dd: $03
    inc b                                         ; $50de: $04
    ld e, b                                       ; $50df: $58
    inc bc                                        ; $50e0: $03
    inc b                                         ; $50e1: $04
    ld h, e                                       ; $50e2: $63
    inc bc                                        ; $50e3: $03
    inc b                                         ; $50e4: $04
    ld [hl], e                                    ; $50e5: $73
    inc bc                                        ; $50e6: $03
    inc b                                         ; $50e7: $04
    ld a, e                                       ; $50e8: $7b
    inc bc                                        ; $50e9: $03
    inc b                                         ; $50ea: $04
    add d                                         ; $50eb: $82
    inc bc                                        ; $50ec: $03
    inc b                                         ; $50ed: $04
    adc c                                         ; $50ee: $89
    inc bc                                        ; $50ef: $03
    inc b                                         ; $50f0: $04
    sub [hl]                                      ; $50f1: $96
    inc bc                                        ; $50f2: $03
    inc b                                         ; $50f3: $04
    and a                                         ; $50f4: $a7
    inc bc                                        ; $50f5: $03
    inc b                                         ; $50f6: $04
    or [hl]                                       ; $50f7: $b6
    inc bc                                        ; $50f8: $03
    inc b                                         ; $50f9: $04
    push bc                                       ; $50fa: $c5
    inc bc                                        ; $50fb: $03
    inc b                                         ; $50fc: $04
    pop de                                        ; $50fd: $d1
    inc bc                                        ; $50fe: $03
    inc b                                         ; $50ff: $04
    pop hl                                        ; $5100: $e1
    inc bc                                        ; $5101: $03
    inc b                                         ; $5102: $04
    ld a, [c]                                     ; $5103: $f2
    inc bc                                        ; $5104: $03
    inc b                                         ; $5105: $04
    db $fd                                        ; $5106: $fd
    inc bc                                        ; $5107: $03
    inc b                                         ; $5108: $04
    ld b, $04                                     ; $5109: $06 $04
    inc b                                         ; $510b: $04
    rrca                                          ; $510c: $0f
    inc b                                         ; $510d: $04
    inc b                                         ; $510e: $04
    rla                                           ; $510f: $17
    inc b                                         ; $5110: $04
    inc b                                         ; $5111: $04
    ld h, $04                                     ; $5112: $26 $04
    inc b                                         ; $5114: $04
    ld l, $04                                     ; $5115: $2e $04
    inc b                                         ; $5117: $04
    ld [hl], $04                                  ; $5118: $36 $04
    inc b                                         ; $511a: $04
    ld b, d                                       ; $511b: $42
    inc b                                         ; $511c: $04
    inc b                                         ; $511d: $04
    ld c, d                                       ; $511e: $4a
    inc b                                         ; $511f: $04
    inc b                                         ; $5120: $04
    ld d, d                                       ; $5121: $52
    inc b                                         ; $5122: $04
    inc b                                         ; $5123: $04
    ld e, h                                       ; $5124: $5c
    inc b                                         ; $5125: $04
    inc b                                         ; $5126: $04
    ld l, b                                       ; $5127: $68
    inc b                                         ; $5128: $04
    inc b                                         ; $5129: $04
    ld [hl], d                                    ; $512a: $72
    inc b                                         ; $512b: $04
    inc b                                         ; $512c: $04
    ld a, e                                       ; $512d: $7b
    inc b                                         ; $512e: $04
    inc b                                         ; $512f: $04
    add h                                         ; $5130: $84
    inc b                                         ; $5131: $04
    inc b                                         ; $5132: $04
    adc a                                         ; $5133: $8f
    inc b                                         ; $5134: $04
    inc b                                         ; $5135: $04
    sbc c                                         ; $5136: $99
    inc b                                         ; $5137: $04
    inc b                                         ; $5138: $04
    sbc a                                         ; $5139: $9f
    inc b                                         ; $513a: $04
    inc b                                         ; $513b: $04
    xor l                                         ; $513c: $ad
    inc b                                         ; $513d: $04
    inc b                                         ; $513e: $04
    or e                                          ; $513f: $b3
    inc b                                         ; $5140: $04
    inc b                                         ; $5141: $04
    cp b                                          ; $5142: $b8
    inc b                                         ; $5143: $04
    inc b                                         ; $5144: $04
    cp [hl]                                       ; $5145: $be
    inc b                                         ; $5146: $04
    inc b                                         ; $5147: $04
    jp z, Jump_000_0404                           ; $5148: $ca $04 $04

    db $db                                        ; $514b: $db
    inc b                                         ; $514c: $04
    inc b                                         ; $514d: $04
    add sp, $04                                   ; $514e: $e8 $04
    inc b                                         ; $5150: $04
    ldh a, [rDIV]                                 ; $5151: $f0 $04
    inc b                                         ; $5153: $04
    ei                                            ; $5154: $fb
    inc b                                         ; $5155: $04
    inc b                                         ; $5156: $04
    dec b                                         ; $5157: $05
    dec b                                         ; $5158: $05
    inc b                                         ; $5159: $04
    ld c, $05                                     ; $515a: $0e $05
    inc b                                         ; $515c: $04
    dec e                                         ; $515d: $1d
    dec b                                         ; $515e: $05
    inc b                                         ; $515f: $04
    dec h                                         ; $5160: $25
    dec b                                         ; $5161: $05
    inc b                                         ; $5162: $04
    inc l                                         ; $5163: $2c
    dec b                                         ; $5164: $05
    inc b                                         ; $5165: $04
    inc a                                         ; $5166: $3c
    dec b                                         ; $5167: $05
    inc b                                         ; $5168: $04
    ld b, [hl]                                    ; $5169: $46
    dec b                                         ; $516a: $05
    inc b                                         ; $516b: $04
    ld d, h                                       ; $516c: $54
    dec b                                         ; $516d: $05
    inc b                                         ; $516e: $04
    ld e, [hl]                                    ; $516f: $5e
    dec b                                         ; $5170: $05
    inc b                                         ; $5171: $04
    ld h, [hl]                                    ; $5172: $66
    dec b                                         ; $5173: $05
    inc b                                         ; $5174: $04
    ld [hl], l                                    ; $5175: $75
    dec b                                         ; $5176: $05
    inc b                                         ; $5177: $04
    add b                                         ; $5178: $80
    dec b                                         ; $5179: $05
    inc b                                         ; $517a: $04
    add [hl]                                      ; $517b: $86
    dec b                                         ; $517c: $05
    inc b                                         ; $517d: $04
    adc a                                         ; $517e: $8f
    dec b                                         ; $517f: $05
    inc b                                         ; $5180: $04
    sbc b                                         ; $5181: $98
    dec b                                         ; $5182: $05
    inc b                                         ; $5183: $04
    sbc l                                         ; $5184: $9d
    dec b                                         ; $5185: $05
    inc b                                         ; $5186: $04
    and e                                         ; $5187: $a3
    dec b                                         ; $5188: $05
    inc b                                         ; $5189: $04
    xor h                                         ; $518a: $ac
    dec b                                         ; $518b: $05
    inc b                                         ; $518c: $04
    or [hl]                                       ; $518d: $b6
    dec b                                         ; $518e: $05
    inc b                                         ; $518f: $04
    cp a                                          ; $5190: $bf
    dec b                                         ; $5191: $05
    inc b                                         ; $5192: $04
    rlc l                                         ; $5193: $cb $05
    inc b                                         ; $5195: $04
    jp c, Jump_000_0405                           ; $5196: $da $05 $04

    rst $20                                       ; $5199: $e7
    dec b                                         ; $519a: $05
    inc b                                         ; $519b: $04
    pop af                                        ; $519c: $f1
    dec b                                         ; $519d: $05
    inc b                                         ; $519e: $04
    db $fd                                        ; $519f: $fd
    dec b                                         ; $51a0: $05
    inc b                                         ; $51a1: $04
    rlca                                          ; $51a2: $07
    ld b, $04                                     ; $51a3: $06 $04
    inc de                                        ; $51a5: $13
    ld b, $04                                     ; $51a6: $06 $04
    dec de                                        ; $51a8: $1b
    ld b, $04                                     ; $51a9: $06 $04
    dec h                                         ; $51ab: $25
    ld b, $04                                     ; $51ac: $06 $04
    ld a, [hl+]                                   ; $51ae: $2a
    ld b, $04                                     ; $51af: $06 $04
    scf                                           ; $51b1: $37
    ld b, $04                                     ; $51b2: $06 $04
    inc a                                         ; $51b4: $3c
    ld b, $04                                     ; $51b5: $06 $04
    ld b, [hl]                                    ; $51b7: $46
    ld b, $04                                     ; $51b8: $06 $04
    ld c, [hl]                                    ; $51ba: $4e
    ld b, $04                                     ; $51bb: $06 $04
    ld e, d                                       ; $51bd: $5a
    ld b, $04                                     ; $51be: $06 $04
    ld l, h                                       ; $51c0: $6c
    ld b, $04                                     ; $51c1: $06 $04
    add c                                         ; $51c3: $81
    ld b, $04                                     ; $51c4: $06 $04
    adc a                                         ; $51c6: $8f
    ld b, $04                                     ; $51c7: $06 $04
    sub h                                         ; $51c9: $94
    ld b, $04                                     ; $51ca: $06 $04
    sbc a                                         ; $51cc: $9f
    ld b, $04                                     ; $51cd: $06 $04
    or b                                          ; $51cf: $b0
    ld b, $04                                     ; $51d0: $06 $04
    ret z                                         ; $51d2: $c8

    ld b, $04                                     ; $51d3: $06 $04
    pop hl                                        ; $51d5: $e1
    ld b, $04                                     ; $51d6: $06 $04
    ld hl, sp+$06                                 ; $51d8: $f8 $06
    inc b                                         ; $51da: $04
    dec e                                         ; $51db: $1d
    rlca                                          ; $51dc: $07
    inc b                                         ; $51dd: $04
    ld a, [hl-]                                   ; $51de: $3a
    rlca                                          ; $51df: $07
    inc b                                         ; $51e0: $04
    ld e, l                                       ; $51e1: $5d
    rlca                                          ; $51e2: $07
    inc b                                         ; $51e3: $04
    ld a, d                                       ; $51e4: $7a
    rlca                                          ; $51e5: $07
    inc b                                         ; $51e6: $04
    sbc c                                         ; $51e7: $99
    rlca                                          ; $51e8: $07
    inc b                                         ; $51e9: $04
    cp b                                          ; $51ea: $b8
    rlca                                          ; $51eb: $07
    inc b                                         ; $51ec: $04
    cp e                                          ; $51ed: $bb
    rlca                                          ; $51ee: $07
    inc b                                         ; $51ef: $04
    cp a                                          ; $51f0: $bf
    rlca                                          ; $51f1: $07
    inc b                                         ; $51f2: $04
    add $07                                       ; $51f3: $c6 $07
    inc b                                         ; $51f5: $04
    ret                                           ; $51f6: $c9


    rlca                                          ; $51f7: $07
    inc b                                         ; $51f8: $04
    adc $07                                       ; $51f9: $ce $07
    inc b                                         ; $51fb: $04
    push de                                       ; $51fc: $d5
    rlca                                          ; $51fd: $07
    inc b                                         ; $51fe: $04
    db $db                                        ; $51ff: $db
    rlca                                          ; $5200: $07
    inc b                                         ; $5201: $04
    ld [$0407], a                                 ; $5202: $ea $07 $04
    ld [bc], a                                    ; $5205: $02
    ld [$1f04], sp                                ; $5206: $08 $04 $1f
    ld [$2c04], sp                                ; $5209: $08 $04 $2c
    ld [$4104], sp                                ; $520c: $08 $04 $41
    ld [$5204], sp                                ; $520f: $08 $04 $52
    ld [$6404], sp                                ; $5212: $08 $04 $64
    ld [$8604], sp                                ; $5215: $08 $04 $86
    ld [$9704], sp                                ; $5218: $08 $04 $97
    ld [$b804], sp                                ; $521b: $08 $04 $b8
    ld [$c704], sp                                ; $521e: $08 $04 $c7
    ld [$e404], sp                                ; $5221: $08 $04 $e4
    ld [$f604], sp                                ; $5224: $08 $04 $f6
    ld [$1304], sp                                ; $5227: $08 $04 $13
    add hl, bc                                    ; $522a: $09
    inc b                                         ; $522b: $04
    add hl, sp                                    ; $522c: $39
    add hl, bc                                    ; $522d: $09
    inc b                                         ; $522e: $04
    ld e, d                                       ; $522f: $5a
    add hl, bc                                    ; $5230: $09
    inc b                                         ; $5231: $04
    ld l, [hl]                                    ; $5232: $6e
    add hl, bc                                    ; $5233: $09
    inc b                                         ; $5234: $04
    sub c                                         ; $5235: $91
    add hl, bc                                    ; $5236: $09
    inc b                                         ; $5237: $04
    and b                                         ; $5238: $a0
    add hl, bc                                    ; $5239: $09
    inc b                                         ; $523a: $04
    or e                                          ; $523b: $b3
    add hl, bc                                    ; $523c: $09
    inc b                                         ; $523d: $04
    jp Jump_000_0409                              ; $523e: $c3 $09 $04


    ld [c], a                                     ; $5241: $e2
    add hl, bc                                    ; $5242: $09
    inc b                                         ; $5243: $04
    ld c, $0a                                     ; $5244: $0e $0a
    inc b                                         ; $5246: $04
    inc e                                         ; $5247: $1c
    ld a, [bc]                                    ; $5248: $0a
    inc b                                         ; $5249: $04
    ld b, c                                       ; $524a: $41
    ld a, [bc]                                    ; $524b: $0a
    inc b                                         ; $524c: $04
    ld h, l                                       ; $524d: $65
    ld a, [bc]                                    ; $524e: $0a
    inc b                                         ; $524f: $04
    ld [hl], e                                    ; $5250: $73
    ld a, [bc]                                    ; $5251: $0a
    inc b                                         ; $5252: $04
    add b                                         ; $5253: $80
    ld a, [bc]                                    ; $5254: $0a
    inc b                                         ; $5255: $04
    adc [hl]                                      ; $5256: $8e
    ld a, [bc]                                    ; $5257: $0a
    inc b                                         ; $5258: $04
    or [hl]                                       ; $5259: $b6
    ld a, [bc]                                    ; $525a: $0a
    inc b                                         ; $525b: $04
    ret nz                                        ; $525c: $c0

    ld a, [bc]                                    ; $525d: $0a
    inc b                                         ; $525e: $04
    push hl                                       ; $525f: $e5
    ld a, [bc]                                    ; $5260: $0a
    inc b                                         ; $5261: $04
    inc bc                                        ; $5262: $03
    dec bc                                        ; $5263: $0b
    inc b                                         ; $5264: $04
    ld h, $0b                                     ; $5265: $26 $0b
    inc b                                         ; $5267: $04
    ld b, a                                       ; $5268: $47
    dec bc                                        ; $5269: $0b
    inc b                                         ; $526a: $04
    ld e, [hl]                                    ; $526b: $5e
    dec bc                                        ; $526c: $0b
    inc b                                         ; $526d: $04
    ld l, e                                       ; $526e: $6b
    dec bc                                        ; $526f: $0b
    inc b                                         ; $5270: $04
    ld a, a                                       ; $5271: $7f
    dec bc                                        ; $5272: $0b
    inc b                                         ; $5273: $04
    adc c                                         ; $5274: $89
    dec bc                                        ; $5275: $0b
    inc b                                         ; $5276: $04
    or h                                          ; $5277: $b4
    dec bc                                        ; $5278: $0b
    inc b                                         ; $5279: $04
    pop bc                                        ; $527a: $c1
    dec bc                                        ; $527b: $0b
    inc b                                         ; $527c: $04
    db $e3                                        ; $527d: $e3
    dec bc                                        ; $527e: $0b
    inc b                                         ; $527f: $04
    ld hl, sp+$0b                                 ; $5280: $f8 $0b
    inc b                                         ; $5282: $04
    ld a, [bc]                                    ; $5283: $0a
    inc c                                         ; $5284: $0c
    inc b                                         ; $5285: $04
    dec l                                         ; $5286: $2d
    inc c                                         ; $5287: $0c
    inc b                                         ; $5288: $04
    ld c, c                                       ; $5289: $49
    inc c                                         ; $528a: $0c
    inc b                                         ; $528b: $04
    ld e, h                                       ; $528c: $5c
    inc c                                         ; $528d: $0c
    inc b                                         ; $528e: $04
    ld l, h                                       ; $528f: $6c
    inc c                                         ; $5290: $0c
    inc b                                         ; $5291: $04
    ld a, [hl]                                    ; $5292: $7e
    inc c                                         ; $5293: $0c
    inc b                                         ; $5294: $04
    and h                                         ; $5295: $a4
    inc c                                         ; $5296: $0c
    inc b                                         ; $5297: $04
    or c                                          ; $5298: $b1
    inc c                                         ; $5299: $0c
    inc b                                         ; $529a: $04
    ret nc                                        ; $529b: $d0

    inc c                                         ; $529c: $0c
    inc b                                         ; $529d: $04
    pop hl                                        ; $529e: $e1
    inc c                                         ; $529f: $0c
    inc b                                         ; $52a0: $04
    db $eb                                        ; $52a1: $eb
    inc c                                         ; $52a2: $0c
    inc b                                         ; $52a3: $04
    dec c                                         ; $52a4: $0d
    dec c                                         ; $52a5: $0d
    inc b                                         ; $52a6: $04
    inc sp                                        ; $52a7: $33
    dec c                                         ; $52a8: $0d
    inc b                                         ; $52a9: $04
    ld b, b                                       ; $52aa: $40
    dec c                                         ; $52ab: $0d
    inc b                                         ; $52ac: $04
    ld e, [hl]                                    ; $52ad: $5e
    dec c                                         ; $52ae: $0d
    inc b                                         ; $52af: $04
    ld l, l                                       ; $52b0: $6d
    dec c                                         ; $52b1: $0d
    inc b                                         ; $52b2: $04
    add h                                         ; $52b3: $84
    dec c                                         ; $52b4: $0d
    inc b                                         ; $52b5: $04
    sub h                                         ; $52b6: $94
    dec c                                         ; $52b7: $0d
    inc b                                         ; $52b8: $04
    xor [hl]                                      ; $52b9: $ae
    dec c                                         ; $52ba: $0d
    inc b                                         ; $52bb: $04
    cp [hl]                                       ; $52bc: $be
    dec c                                         ; $52bd: $0d
    inc b                                         ; $52be: $04
    rrc l                                         ; $52bf: $cb $0d
    inc b                                         ; $52c1: $04
    db $ed                                        ; $52c2: $ed
    dec c                                         ; $52c3: $0d
    inc b                                         ; $52c4: $04
    ld [bc], a                                    ; $52c5: $02
    ld c, $04                                     ; $52c6: $0e $04
    rrca                                          ; $52c8: $0f
    ld c, $04                                     ; $52c9: $0e $04
    dec l                                         ; $52cb: $2d
    ld c, $04                                     ; $52cc: $0e $04
    inc a                                         ; $52ce: $3c
    ld c, $04                                     ; $52cf: $0e $04
    ld l, e                                       ; $52d1: $6b
    ld c, $04                                     ; $52d2: $0e $04
    or h                                          ; $52d4: $b4
    ld c, $04                                     ; $52d5: $0e $04
    db $ed                                        ; $52d7: $ed
    ld c, $04                                     ; $52d8: $0e $04
    dec h                                         ; $52da: $25
    rrca                                          ; $52db: $0f
    inc b                                         ; $52dc: $04
    ld l, e                                       ; $52dd: $6b
    rrca                                          ; $52de: $0f
    inc b                                         ; $52df: $04
    sub [hl]                                      ; $52e0: $96
    rrca                                          ; $52e1: $0f
    inc b                                         ; $52e2: $04
    ret z                                         ; $52e3: $c8

    rrca                                          ; $52e4: $0f
    inc b                                         ; $52e5: $04
    ld [de], a                                    ; $52e6: $12
    db $10                                        ; $52e7: $10
    inc b                                         ; $52e8: $04
    ld e, a                                       ; $52e9: $5f
    db $10                                        ; $52ea: $10
    inc b                                         ; $52eb: $04
    sbc a                                         ; $52ec: $9f
    db $10                                        ; $52ed: $10
    inc b                                         ; $52ee: $04
    ret nc                                        ; $52ef: $d0

    db $10                                        ; $52f0: $10
    inc b                                         ; $52f1: $04
    db $eb                                        ; $52f2: $eb
    db $10                                        ; $52f3: $10
    inc b                                         ; $52f4: $04
    inc e                                         ; $52f5: $1c
    ld de, $4604                                  ; $52f6: $11 $04 $46
    ld de, $7b04                                  ; $52f9: $11 $04 $7b
    ld de, $a504                                  ; $52fc: $11 $04 $a5

Call_033_52ff:
    ld de, $0204                                  ; $52ff: $11 $04 $02
    ld [de], a                                    ; $5302: $12
    inc b                                         ; $5303: $04
    inc c                                         ; $5304: $0c
    ld [de], a                                    ; $5305: $12
    inc b                                         ; $5306: $04
    inc de                                        ; $5307: $13
    ld [de], a                                    ; $5308: $12
    inc b                                         ; $5309: $04
    jr nz, jr_033_531e                            ; $530a: $20 $12

    inc b                                         ; $530c: $04
    dec l                                         ; $530d: $2d
    ld [de], a                                    ; $530e: $12
    inc b                                         ; $530f: $04
    add hl, sp                                    ; $5310: $39
    ld [de], a                                    ; $5311: $12
    inc b                                         ; $5312: $04
    ld b, l                                       ; $5313: $45
    ld [de], a                                    ; $5314: $12
    inc b                                         ; $5315: $04
    ld d, c                                       ; $5316: $51
    ld [de], a                                    ; $5317: $12
    inc b                                         ; $5318: $04
    ld h, b                                       ; $5319: $60
    ld [de], a                                    ; $531a: $12
    inc b                                         ; $531b: $04
    ld l, h                                       ; $531c: $6c
    ld [de], a                                    ; $531d: $12

jr_033_531e:
    inc b                                         ; $531e: $04
    ld a, c                                       ; $531f: $79
    ld [de], a                                    ; $5320: $12
    inc b                                         ; $5321: $04
    add h                                         ; $5322: $84
    ld [de], a                                    ; $5323: $12
    inc b                                         ; $5324: $04
    adc [hl]                                      ; $5325: $8e
    ld [de], a                                    ; $5326: $12
    inc b                                         ; $5327: $04
    sbc c                                         ; $5328: $99
    ld [de], a                                    ; $5329: $12
    inc b                                         ; $532a: $04
    and h                                         ; $532b: $a4
    ld [de], a                                    ; $532c: $12
    inc b                                         ; $532d: $04
    or b                                          ; $532e: $b0
    ld [de], a                                    ; $532f: $12
    inc b                                         ; $5330: $04
    cp h                                          ; $5331: $bc

Jump_033_5332:
    ld [de], a                                    ; $5332: $12
    inc b                                         ; $5333: $04
    add $12                                       ; $5334: $c6 $12
    inc b                                         ; $5336: $04
    call $0412                                    ; $5337: $cd $12 $04
    jp c, $0412                                   ; $533a: $da $12 $04

    push hl                                       ; $533d: $e5
    ld [de], a                                    ; $533e: $12
    inc b                                         ; $533f: $04
    ldh a, [rNR12]                                ; $5340: $f0 $12
    inc b                                         ; $5342: $04
    ld a, [$0412]                                 ; $5343: $fa $12 $04
    add hl, bc                                    ; $5346: $09
    inc de                                        ; $5347: $13
    inc b                                         ; $5348: $04
    dec d                                         ; $5349: $15
    inc de                                        ; $534a: $13
    inc b                                         ; $534b: $04
    ld hl, $0413                                  ; $534c: $21 $13 $04
    inc l                                         ; $534f: $2c
    inc de                                        ; $5350: $13
    inc b                                         ; $5351: $04
    ld [hl], $13                                  ; $5352: $36 $13
    inc b                                         ; $5354: $04
    ld b, d                                       ; $5355: $42
    inc de                                        ; $5356: $13
    inc b                                         ; $5357: $04
    ld d, c                                       ; $5358: $51
    inc de                                        ; $5359: $13
    inc b                                         ; $535a: $04
    ld e, l                                       ; $535b: $5d
    inc de                                        ; $535c: $13
    inc b                                         ; $535d: $04
    ld h, [hl]                                    ; $535e: $66
    inc de                                        ; $535f: $13
    inc b                                         ; $5360: $04
    ld [hl], e                                    ; $5361: $73
    inc de                                        ; $5362: $13
    inc b                                         ; $5363: $04
    ld a, [hl]                                    ; $5364: $7e
    inc de                                        ; $5365: $13
    inc b                                         ; $5366: $04
    adc d                                         ; $5367: $8a
    inc de                                        ; $5368: $13
    inc b                                         ; $5369: $04
    sub l                                         ; $536a: $95
    inc de                                        ; $536b: $13
    inc b                                         ; $536c: $04
    and d                                         ; $536d: $a2
    inc de                                        ; $536e: $13
    inc b                                         ; $536f: $04
    xor h                                         ; $5370: $ac
    inc de                                        ; $5371: $13
    inc b                                         ; $5372: $04
    or a                                          ; $5373: $b7
    inc de                                        ; $5374: $13
    inc b                                         ; $5375: $04
    call nz, $0413                                ; $5376: $c4 $13 $04
    ret nc                                        ; $5379: $d0

    inc de                                        ; $537a: $13
    inc b                                         ; $537b: $04
    db $db                                        ; $537c: $db
    inc de                                        ; $537d: $13
    inc b                                         ; $537e: $04
    and $13                                       ; $537f: $e6 $13
    inc b                                         ; $5381: $04
    di                                            ; $5382: $f3
    inc de                                        ; $5383: $13
    inc b                                         ; $5384: $04
    rst $38                                       ; $5385: $ff
    inc de                                        ; $5386: $13
    inc b                                         ; $5387: $04
    ld c, $14                                     ; $5388: $0e $14
    inc b                                         ; $538a: $04
    inc d                                         ; $538b: $14
    inc d                                         ; $538c: $14
    inc b                                         ; $538d: $04
    ld e, $14                                     ; $538e: $1e $14
    inc b                                         ; $5390: $04
    ld a, [hl+]                                   ; $5391: $2a
    inc d                                         ; $5392: $14
    inc b                                         ; $5393: $04
    cpl                                           ; $5394: $2f
    inc d                                         ; $5395: $14
    inc b                                         ; $5396: $04
    add hl, sp                                    ; $5397: $39
    inc d                                         ; $5398: $14
    inc b                                         ; $5399: $04
    ld b, d                                       ; $539a: $42
    inc d                                         ; $539b: $14
    inc b                                         ; $539c: $04
    ld c, [hl]                                    ; $539d: $4e
    inc d                                         ; $539e: $14
    inc b                                         ; $539f: $04
    ld e, e                                       ; $53a0: $5b
    inc d                                         ; $53a1: $14
    inc b                                         ; $53a2: $04
    ld h, [hl]                                    ; $53a3: $66
    inc d                                         ; $53a4: $14
    inc b                                         ; $53a5: $04
    ld [hl], e                                    ; $53a6: $73
    inc d                                         ; $53a7: $14
    inc b                                         ; $53a8: $04
    add b                                         ; $53a9: $80
    inc d                                         ; $53aa: $14
    inc b                                         ; $53ab: $04
    adc c                                         ; $53ac: $89
    inc d                                         ; $53ad: $14
    inc b                                         ; $53ae: $04
    sub l                                         ; $53af: $95
    inc d                                         ; $53b0: $14
    inc b                                         ; $53b1: $04
    and e                                         ; $53b2: $a3
    inc d                                         ; $53b3: $14
    inc b                                         ; $53b4: $04
    xor c                                         ; $53b5: $a9
    inc d                                         ; $53b6: $14
    inc b                                         ; $53b7: $04
    cp b                                          ; $53b8: $b8
    inc d                                         ; $53b9: $14
    inc b                                         ; $53ba: $04
    push bc                                       ; $53bb: $c5
    inc d                                         ; $53bc: $14
    inc b                                         ; $53bd: $04
    rst $08                                       ; $53be: $cf
    inc d                                         ; $53bf: $14
    inc b                                         ; $53c0: $04
    jp c, Jump_000_0414                           ; $53c1: $da $14 $04

    push hl                                       ; $53c4: $e5
    inc d                                         ; $53c5: $14
    inc b                                         ; $53c6: $04
    ld a, [c]                                     ; $53c7: $f2
    inc d                                         ; $53c8: $14
    inc b                                         ; $53c9: $04
    db $fd                                        ; $53ca: $fd
    inc d                                         ; $53cb: $14
    inc b                                         ; $53cc: $04
    add hl, bc                                    ; $53cd: $09
    dec d                                         ; $53ce: $15
    inc b                                         ; $53cf: $04
    ld de, $0415                                  ; $53d0: $11 $15 $04
    dec e                                         ; $53d3: $1d
    dec d                                         ; $53d4: $15
    inc b                                         ; $53d5: $04
    add hl, hl                                    ; $53d6: $29
    dec d                                         ; $53d7: $15
    inc b                                         ; $53d8: $04
    scf                                           ; $53d9: $37
    dec d                                         ; $53da: $15
    inc b                                         ; $53db: $04
    ld b, d                                       ; $53dc: $42
    dec d                                         ; $53dd: $15
    inc b                                         ; $53de: $04
    ld c, [hl]                                    ; $53df: $4e
    dec d                                         ; $53e0: $15
    inc b                                         ; $53e1: $04
    ld e, d                                       ; $53e2: $5a
    dec d                                         ; $53e3: $15
    inc b                                         ; $53e4: $04
    ld h, [hl]                                    ; $53e5: $66
    dec d                                         ; $53e6: $15
    inc b                                         ; $53e7: $04
    ld l, a                                       ; $53e8: $6f
    dec d                                         ; $53e9: $15
    inc b                                         ; $53ea: $04
    ld a, e                                       ; $53eb: $7b
    dec d                                         ; $53ec: $15
    inc b                                         ; $53ed: $04
    add h                                         ; $53ee: $84
    dec d                                         ; $53ef: $15
    inc b                                         ; $53f0: $04
    adc [hl]                                      ; $53f1: $8e
    dec d                                         ; $53f2: $15
    inc b                                         ; $53f3: $04
    sbc c                                         ; $53f4: $99
    dec d                                         ; $53f5: $15
    inc b                                         ; $53f6: $04
    and l                                         ; $53f7: $a5
    dec d                                         ; $53f8: $15
    inc b                                         ; $53f9: $04
    or c                                          ; $53fa: $b1
    dec d                                         ; $53fb: $15
    inc b                                         ; $53fc: $04
    cp d                                          ; $53fd: $ba
    dec d                                         ; $53fe: $15
    inc b                                         ; $53ff: $04
    call nz, Call_000_0415                        ; $5400: $c4 $15 $04
    pop de                                        ; $5403: $d1
    dec d                                         ; $5404: $15
    inc b                                         ; $5405: $04
    jp c, Jump_000_0415                           ; $5406: $da $15 $04

    push hl                                       ; $5409: $e5
    dec d                                         ; $540a: $15
    inc b                                         ; $540b: $04
    ldh a, [$15]                                  ; $540c: $f0 $15
    inc b                                         ; $540e: $04
    db $fc                                        ; $540f: $fc
    dec d                                         ; $5410: $15
    inc b                                         ; $5411: $04
    dec bc                                        ; $5412: $0b
    ld d, $04                                     ; $5413: $16 $04
    jr jr_033_542d                                ; $5415: $18 $16

    inc b                                         ; $5417: $04
    ld hl, $0416                                  ; $5418: $21 $16 $04
    dec hl                                        ; $541b: $2b
    ld d, $04                                     ; $541c: $16 $04
    ld a, [hl-]                                   ; $541e: $3a
    ld d, $04                                     ; $541f: $16 $04
    ld c, d                                       ; $5421: $4a
    ld d, $04                                     ; $5422: $16 $04
    ld e, b                                       ; $5424: $58
    ld d, $04                                     ; $5425: $16 $04
    ld e, h                                       ; $5427: $5c
    ld d, $04                                     ; $5428: $16 $04
    ld l, b                                       ; $542a: $68
    ld d, $04                                     ; $542b: $16 $04

jr_033_542d:
    ld [hl], b                                    ; $542d: $70
    ld d, $04                                     ; $542e: $16 $04
    ld a, h                                       ; $5430: $7c
    ld d, $04                                     ; $5431: $16 $04
    add e                                         ; $5433: $83
    ld d, $04                                     ; $5434: $16 $04
    add l                                         ; $5436: $85
    ld d, $04                                     ; $5437: $16 $04
    sub c                                         ; $5439: $91
    ld d, $04                                     ; $543a: $16 $04
    add $16                                       ; $543c: $c6 $16
    inc b                                         ; $543e: $04
    db $e4                                        ; $543f: $e4
    ld d, $04                                     ; $5440: $16 $04
    dec h                                         ; $5442: $25
    rla                                           ; $5443: $17
    inc b                                         ; $5444: $04
    ld e, l                                       ; $5445: $5d
    rla                                           ; $5446: $17
    inc b                                         ; $5447: $04
    ld a, e                                       ; $5448: $7b
    rla                                           ; $5449: $17
    inc b                                         ; $544a: $04
    sbc l                                         ; $544b: $9d
    rla                                           ; $544c: $17
    inc b                                         ; $544d: $04
    or d                                          ; $544e: $b2
    rla                                           ; $544f: $17
    inc b                                         ; $5450: $04
    push bc                                       ; $5451: $c5
    rla                                           ; $5452: $17
    inc b                                         ; $5453: $04
    db $e3                                        ; $5454: $e3
    rla                                           ; $5455: $17
    inc b                                         ; $5456: $04
    ld [$0418], sp                                ; $5457: $08 $18 $04
    jr nz, jr_033_5474                            ; $545a: $20 $18

    inc b                                         ; $545c: $04
    dec a                                         ; $545d: $3d
    jr jr_033_5464                                ; $545e: $18 $04

    ld d, c                                       ; $5460: $51
    jr jr_033_5467                                ; $5461: $18 $04

    ld l, a                                       ; $5463: $6f

jr_033_5464:
    jr jr_033_546a                                ; $5464: $18 $04

    sub d                                         ; $5466: $92

jr_033_5467:
    jr @+$06                                      ; $5467: $18 $04

    ret nz                                        ; $5469: $c0

jr_033_546a:
    jr jr_033_5470                                ; $546a: $18 $04

    and $18                                       ; $546c: $e6 $18
    inc b                                         ; $546e: $04
    add hl, bc                                    ; $546f: $09

jr_033_5470:
    add hl, de                                    ; $5470: $19
    inc b                                         ; $5471: $04
    jr z, jr_033_548d                             ; $5472: $28 $19

jr_033_5474:
    inc b                                         ; $5474: $04
    ld b, h                                       ; $5475: $44
    add hl, de                                    ; $5476: $19
    inc b                                         ; $5477: $04
    ld [hl], h                                    ; $5478: $74
    add hl, de                                    ; $5479: $19
    inc b                                         ; $547a: $04
    and h                                         ; $547b: $a4
    add hl, de                                    ; $547c: $19
    inc b                                         ; $547d: $04
    push de                                       ; $547e: $d5
    add hl, de                                    ; $547f: $19
    inc b                                         ; $5480: $04
    ld d, $1a                                     ; $5481: $16 $1a
    inc b                                         ; $5483: $04
    ld b, c                                       ; $5484: $41
    ld a, [de]                                    ; $5485: $1a
    inc b                                         ; $5486: $04
    add b                                         ; $5487: $80
    ld a, [de]                                    ; $5488: $1a
    inc b                                         ; $5489: $04
    adc h                                         ; $548a: $8c
    ld a, [de]                                    ; $548b: $1a
    inc b                                         ; $548c: $04

jr_033_548d:
    rr d                                          ; $548d: $cb $1a
    inc b                                         ; $548f: $04
    dec c                                         ; $5490: $0d
    dec de                                        ; $5491: $1b
    inc b                                         ; $5492: $04
    ld c, b                                       ; $5493: $48
    dec de                                        ; $5494: $1b
    inc b                                         ; $5495: $04
    ld a, l                                       ; $5496: $7d
    dec de                                        ; $5497: $1b
    inc b                                         ; $5498: $04
    or [hl]                                       ; $5499: $b6
    dec de                                        ; $549a: $1b
    inc b                                         ; $549b: $04
    call Call_000_041b                            ; $549c: $cd $1b $04
    ld a, [$041b]                                 ; $549f: $fa $1b $04
    jr z, jr_033_54c0                             ; $54a2: $28 $1c

    inc b                                         ; $54a4: $04
    ld c, c                                       ; $54a5: $49
    inc e                                         ; $54a6: $1c
    inc b                                         ; $54a7: $04
    halt                                          ; $54a8: $76
    inc e                                         ; $54a9: $1c
    inc b                                         ; $54aa: $04
    adc d                                         ; $54ab: $8a
    inc e                                         ; $54ac: $1c
    inc b                                         ; $54ad: $04
    add $1c                                       ; $54ae: $c6 $1c
    inc b                                         ; $54b0: $04
    ld [$041d], sp                                ; $54b1: $08 $1d $04
    ld sp, $041d                                  ; $54b4: $31 $1d $04
    ld l, b                                       ; $54b7: $68
    dec e                                         ; $54b8: $1d
    inc b                                         ; $54b9: $04
    ld a, [hl]                                    ; $54ba: $7e
    dec e                                         ; $54bb: $1d
    inc b                                         ; $54bc: $04
    sub c                                         ; $54bd: $91
    dec e                                         ; $54be: $1d
    inc b                                         ; $54bf: $04

jr_033_54c0:
    cp c                                          ; $54c0: $b9
    dec e                                         ; $54c1: $1d
    inc b                                         ; $54c2: $04
    ld [c], a                                     ; $54c3: $e2
    dec e                                         ; $54c4: $1d
    inc b                                         ; $54c5: $04
    db $fd                                        ; $54c6: $fd
    dec e                                         ; $54c7: $1d
    inc b                                         ; $54c8: $04
    rrca                                          ; $54c9: $0f
    ld e, $04                                     ; $54ca: $1e $04
    dec a                                         ; $54cc: $3d
    ld e, $04                                     ; $54cd: $1e $04
    ld h, e                                       ; $54cf: $63
    ld e, $04                                     ; $54d0: $1e $04
    add e                                         ; $54d2: $83
    ld e, $04                                     ; $54d3: $1e $04
    and h                                         ; $54d5: $a4
    ld e, $04                                     ; $54d6: $1e $04
    call c, Call_000_041e                         ; $54d8: $dc $1e $04
    rst $30                                       ; $54db: $f7
    ld e, $04                                     ; $54dc: $1e $04
    dec hl                                        ; $54de: $2b
    rra                                           ; $54df: $1f
    inc b                                         ; $54e0: $04
    ld c, [hl]                                    ; $54e1: $4e
    rra                                           ; $54e2: $1f
    inc b                                         ; $54e3: $04
    ld h, b                                       ; $54e4: $60
    rra                                           ; $54e5: $1f
    inc b                                         ; $54e6: $04
    sbc l                                         ; $54e7: $9d
    rra                                           ; $54e8: $1f
    inc b                                         ; $54e9: $04
    ret                                           ; $54ea: $c9


    rra                                           ; $54eb: $1f
    inc b                                         ; $54ec: $04
    and $1f                                       ; $54ed: $e6 $1f
    inc b                                         ; $54ef: $04
    ld c, $20                                     ; $54f0: $0e $20
    inc b                                         ; $54f2: $04
    ld a, [hl+]                                   ; $54f3: $2a
    jr nz, jr_033_54fa                            ; $54f4: $20 $04

    ld e, l                                       ; $54f6: $5d
    jr nz, jr_033_54fd                            ; $54f7: $20 $04

    adc d                                         ; $54f9: $8a

jr_033_54fa:
    jr nz, @+$06                                  ; $54fa: $20 $04

    cp c                                          ; $54fc: $b9

jr_033_54fd:
    jr nz, jr_033_5503                            ; $54fd: $20 $04

    and $20                                       ; $54ff: $e6 $20
    inc b                                         ; $5501: $04
    rst $38                                       ; $5502: $ff

jr_033_5503:
    jr nz, jr_033_5509                            ; $5503: $20 $04

    inc l                                         ; $5505: $2c
    ld hl, $5204                                  ; $5506: $21 $04 $52

jr_033_5509:
    ld hl, $8004                                  ; $5509: $21 $04 $80
    ld hl, $ae04                                  ; $550c: $21 $04 $ae
    ld hl, $bf04                                  ; $550f: $21 $04 $bf
    ld hl, $d704                                  ; $5512: $21 $04 $d7
    ld hl, $0e04                                  ; $5515: $21 $04 $0e
    ld [hl+], a                                   ; $5518: $22
    inc b                                         ; $5519: $04
    ld a, [hl-]                                   ; $551a: $3a
    ld [hl+], a                                   ; $551b: $22
    inc b                                         ; $551c: $04
    ld [hl], h                                    ; $551d: $74
    ld [hl+], a                                   ; $551e: $22
    inc b                                         ; $551f: $04
    and a                                         ; $5520: $a7
    ld [hl+], a                                   ; $5521: $22
    inc b                                         ; $5522: $04
    call nc, Call_000_0422                        ; $5523: $d4 $22 $04
    inc b                                         ; $5526: $04
    inc hl                                        ; $5527: $23
    inc b                                         ; $5528: $04
    ld a, [hl+]                                   ; $5529: $2a
    inc hl                                        ; $552a: $23
    inc b                                         ; $552b: $04
    ld e, b                                       ; $552c: $58
    inc hl                                        ; $552d: $23
    inc b                                         ; $552e: $04
    ld l, [hl]                                    ; $552f: $6e
    inc hl                                        ; $5530: $23
    inc b                                         ; $5531: $04
    and c                                         ; $5532: $a1
    inc hl                                        ; $5533: $23
    inc b                                         ; $5534: $04
    adc $23                                       ; $5535: $ce $23
    inc b                                         ; $5537: $04
    push hl                                       ; $5538: $e5
    inc hl                                        ; $5539: $23
    inc b                                         ; $553a: $04
    inc c                                         ; $553b: $0c
    inc h                                         ; $553c: $24
    inc b                                         ; $553d: $04
    dec a                                         ; $553e: $3d
    inc h                                         ; $553f: $24
    inc b                                         ; $5540: $04
    ld l, l                                       ; $5541: $6d
    inc h                                         ; $5542: $24
    inc b                                         ; $5543: $04
    adc d                                         ; $5544: $8a
    inc h                                         ; $5545: $24
    inc b                                         ; $5546: $04
    xor [hl]                                      ; $5547: $ae
    inc h                                         ; $5548: $24
    inc b                                         ; $5549: $04
    call c, $0424                                 ; $554a: $dc $24 $04
    add hl, bc                                    ; $554d: $09
    dec h                                         ; $554e: $25
    inc b                                         ; $554f: $04
    ld [hl-], a                                   ; $5550: $32
    dec h                                         ; $5551: $25
    inc b                                         ; $5552: $04
    ld b, l                                       ; $5553: $45
    dec h                                         ; $5554: $25
    inc b                                         ; $5555: $04
    ld [hl], c                                    ; $5556: $71
    dec h                                         ; $5557: $25
    inc b                                         ; $5558: $04
    sbc h                                         ; $5559: $9c
    dec h                                         ; $555a: $25
    inc b                                         ; $555b: $04
    or d                                          ; $555c: $b2
    dec h                                         ; $555d: $25
    inc b                                         ; $555e: $04
    db $e4                                        ; $555f: $e4
    dec h                                         ; $5560: $25
    inc b                                         ; $5561: $04
    dec h                                         ; $5562: $25
    ld h, $04                                     ; $5563: $26 $04
    ld c, e                                       ; $5565: $4b
    ld h, $04                                     ; $5566: $26 $04
    ld [hl], c                                    ; $5568: $71
    ld h, $04                                     ; $5569: $26 $04
    add a                                         ; $556b: $87
    ld h, $04                                     ; $556c: $26 $04
    and l                                         ; $556e: $a5
    ld h, $04                                     ; $556f: $26 $04
    cp b                                          ; $5571: $b8
    ld h, $04                                     ; $5572: $26 $04
    cp [hl]                                       ; $5574: $be
    ld h, $04                                     ; $5575: $26 $04
    add $26                                       ; $5577: $c6 $26
    inc b                                         ; $5579: $04
    call z, Call_000_0426                         ; $557a: $cc $26 $04
    call nc, Call_000_0426                        ; $557d: $d4 $26 $04
    db $db                                        ; $5580: $db
    ld h, $04                                     ; $5581: $26 $04
    ld [c], a                                     ; $5583: $e2
    ld h, $04                                     ; $5584: $26 $04
    jp hl                                         ; $5586: $e9


    ld h, $04                                     ; $5587: $26 $04
    ldh a, [rNR52]                                ; $5589: $f0 $26
    inc b                                         ; $558b: $04
    or $26                                        ; $558c: $f6 $26
    inc b                                         ; $558e: $04
    db $fd                                        ; $558f: $fd
    ld h, $04                                     ; $5590: $26 $04
    ld b, $27                                     ; $5592: $06 $27
    inc b                                         ; $5594: $04
    dec bc                                        ; $5595: $0b
    daa                                           ; $5596: $27
    inc b                                         ; $5597: $04
    db $10                                        ; $5598: $10
    daa                                           ; $5599: $27
    inc b                                         ; $559a: $04
    dec de                                        ; $559b: $1b
    daa                                           ; $559c: $27
    inc b                                         ; $559d: $04
    add hl, hl                                    ; $559e: $29
    daa                                           ; $559f: $27
    inc b                                         ; $55a0: $04
    ld l, $27                                     ; $55a1: $2e $27
    inc b                                         ; $55a3: $04
    inc sp                                        ; $55a4: $33
    daa                                           ; $55a5: $27
    inc b                                         ; $55a6: $04
    ld b, a                                       ; $55a7: $47
    daa                                           ; $55a8: $27
    inc b                                         ; $55a9: $04
    ld h, e                                       ; $55aa: $63
    daa                                           ; $55ab: $27
    inc b                                         ; $55ac: $04
    sub b                                         ; $55ad: $90
    daa                                           ; $55ae: $27
    inc b                                         ; $55af: $04
    and e                                         ; $55b0: $a3
    daa                                           ; $55b1: $27
    inc b                                         ; $55b2: $04
    cp e                                          ; $55b3: $bb
    daa                                           ; $55b4: $27
    inc b                                         ; $55b5: $04
    db $dd                                        ; $55b6: $dd
    daa                                           ; $55b7: $27
    inc b                                         ; $55b8: $04
    di                                            ; $55b9: $f3
    daa                                           ; $55ba: $27
    inc b                                         ; $55bb: $04
    dec hl                                        ; $55bc: $2b
    jr z, jr_033_55c3                             ; $55bd: $28 $04

    ld b, e                                       ; $55bf: $43
    jr z, jr_033_55c6                             ; $55c0: $28 $04

    ld h, e                                       ; $55c2: $63

jr_033_55c3:
    jr z, jr_033_55c9                             ; $55c3: $28 $04

    ld a, a                                       ; $55c5: $7f

jr_033_55c6:
    jr z, @+$06                                   ; $55c6: $28 $04

    xor h                                         ; $55c8: $ac

jr_033_55c9:
    jr z, jr_033_55cf                             ; $55c9: $28 $04

    sra b                                         ; $55cb: $cb $28
    inc b                                         ; $55cd: $04
    db $e3                                        ; $55ce: $e3

jr_033_55cf:
    jr z, jr_033_55d5                             ; $55cf: $28 $04

    ld a, [bc]                                    ; $55d1: $0a
    add hl, hl                                    ; $55d2: $29
    inc b                                         ; $55d3: $04
    ld b, b                                       ; $55d4: $40

jr_033_55d5:
    add hl, hl                                    ; $55d5: $29
    inc b                                         ; $55d6: $04
    ld e, h                                       ; $55d7: $5c
    add hl, hl                                    ; $55d8: $29
    inc b                                         ; $55d9: $04
    ld a, b                                       ; $55da: $78
    add hl, hl                                    ; $55db: $29
    inc b                                         ; $55dc: $04
    adc e                                         ; $55dd: $8b
    add hl, hl                                    ; $55de: $29
    inc b                                         ; $55df: $04
    xor [hl]                                      ; $55e0: $ae
    add hl, hl                                    ; $55e1: $29
    inc b                                         ; $55e2: $04
    or b                                          ; $55e3: $b0
    add hl, hl                                    ; $55e4: $29
    inc b                                         ; $55e5: $04
    or d                                          ; $55e6: $b2
    add hl, hl                                    ; $55e7: $29
    inc b                                         ; $55e8: $04
    call z, Call_000_0429                         ; $55e9: $cc $29 $04
    call c, Call_000_0429                         ; $55ec: $dc $29 $04
    db $e4                                        ; $55ef: $e4
    add hl, hl                                    ; $55f0: $29
    inc b                                         ; $55f1: $04
    db $ec                                        ; $55f2: $ec
    add hl, hl                                    ; $55f3: $29
    inc b                                         ; $55f4: $04
    or $29                                        ; $55f5: $f6 $29
    inc b                                         ; $55f7: $04
    nop                                           ; $55f8: $00
    ld a, [hl+]                                   ; $55f9: $2a
    inc b                                         ; $55fa: $04
    daa                                           ; $55fb: $27
    ld a, [hl+]                                   ; $55fc: $2a
    inc b                                         ; $55fd: $04
    ld b, d                                       ; $55fe: $42
    ld a, [hl+]                                   ; $55ff: $2a
    inc b                                         ; $5600: $04
    ld e, [hl]                                    ; $5601: $5e
    ld a, [hl+]                                   ; $5602: $2a
    inc b                                         ; $5603: $04
    ld a, b                                       ; $5604: $78
    ld a, [hl+]                                   ; $5605: $2a
    inc b                                         ; $5606: $04
    adc h                                         ; $5607: $8c
    ld a, [hl+]                                   ; $5608: $2a
    inc b                                         ; $5609: $04
    or a                                          ; $560a: $b7
    ld a, [hl+]                                   ; $560b: $2a
    inc b                                         ; $560c: $04
    push hl                                       ; $560d: $e5
    ld a, [hl+]                                   ; $560e: $2a
    inc b                                         ; $560f: $04
    inc h                                         ; $5610: $24
    dec hl                                        ; $5611: $2b
    inc b                                         ; $5612: $04
    ld e, d                                       ; $5613: $5a
    dec hl                                        ; $5614: $2b
    inc b                                         ; $5615: $04
    add e                                         ; $5616: $83
    dec hl                                        ; $5617: $2b
    inc b                                         ; $5618: $04
    push de                                       ; $5619: $d5
    dec hl                                        ; $561a: $2b
    inc b                                         ; $561b: $04
    ld a, [$042b]                                 ; $561c: $fa $2b $04
    inc e                                         ; $561f: $1c
    inc l                                         ; $5620: $2c
    inc b                                         ; $5621: $04
    dec hl                                        ; $5622: $2b
    inc l                                         ; $5623: $2c
    inc b                                         ; $5624: $04
    ld c, c                                       ; $5625: $49
    inc l                                         ; $5626: $2c
    inc b                                         ; $5627: $04
    ld a, a                                       ; $5628: $7f
    inc l                                         ; $5629: $2c
    inc b                                         ; $562a: $04
    and h                                         ; $562b: $a4
    inc l                                         ; $562c: $2c
    inc b                                         ; $562d: $04
    call c, $042c                                 ; $562e: $dc $2c $04
    push af                                       ; $5631: $f5
    inc l                                         ; $5632: $2c
    inc b                                         ; $5633: $04
    db $10                                        ; $5634: $10
    dec l                                         ; $5635: $2d
    inc b                                         ; $5636: $04
    scf                                           ; $5637: $37
    dec l                                         ; $5638: $2d
    inc b                                         ; $5639: $04
    ld h, [hl]                                    ; $563a: $66
    dec l                                         ; $563b: $2d
    inc b                                         ; $563c: $04
    sub b                                         ; $563d: $90
    dec l                                         ; $563e: $2d
    inc b                                         ; $563f: $04
    xor h                                         ; $5640: $ac
    dec l                                         ; $5641: $2d
    inc b                                         ; $5642: $04
    ret nz                                        ; $5643: $c0

    dec l                                         ; $5644: $2d
    inc b                                         ; $5645: $04
    push hl                                       ; $5646: $e5
    dec l                                         ; $5647: $2d
    inc b                                         ; $5648: $04
    inc d                                         ; $5649: $14
    ld l, $04                                     ; $564a: $2e $04
    daa                                           ; $564c: $27
    ld l, $04                                     ; $564d: $2e $04
    ld d, l                                       ; $564f: $55
    ld l, $04                                     ; $5650: $2e $04
    ld h, b                                       ; $5652: $60
    ld l, $04                                     ; $5653: $2e $04
    xor e                                         ; $5655: $ab
    ld l, $04                                     ; $5656: $2e $04
    or [hl]                                       ; $5658: $b6
    ld l, $04                                     ; $5659: $2e $04
    pop bc                                        ; $565b: $c1
    ld l, $04                                     ; $565c: $2e $04
    ret                                           ; $565e: $c9


    ld l, $04                                     ; $565f: $2e $04
    jp nc, $042e                                  ; $5661: $d2 $2e $04

    jp hl                                         ; $5664: $e9


    ld l, $04                                     ; $5665: $2e $04
    ld a, [$042e]                                 ; $5667: $fa $2e $04
    ld e, b                                       ; $566a: $58
    cpl                                           ; $566b: $2f
    inc b                                         ; $566c: $04
    xor a                                         ; $566d: $af
    cpl                                           ; $566e: $2f
    inc b                                         ; $566f: $04
    jp $042f                                      ; $5670: $c3 $2f $04


    pop de                                        ; $5673: $d1
    cpl                                           ; $5674: $2f
    inc b                                         ; $5675: $04
    db $f4                                        ; $5676: $f4
    cpl                                           ; $5677: $2f
    inc b                                         ; $5678: $04
    ld h, $30                                     ; $5679: $26 $30
    inc b                                         ; $567b: $04
    and h                                         ; $567c: $a4
    jr nc, jr_033_5683                            ; $567d: $30 $04

    ld a, [$0430]                                 ; $567f: $fa $30 $04
    ld e, d                                       ; $5682: $5a

jr_033_5683:
    ld sp, $7f04                                  ; $5683: $31 $04 $7f
    ld sp, $a804                                  ; $5686: $31 $04 $a8
    ld sp, $0004                                  ; $5689: $31 $04 $00
    ld [hl-], a                                   ; $568c: $32
    inc b                                         ; $568d: $04
    rla                                           ; $568e: $17
    ld [hl-], a                                   ; $568f: $32
    inc b                                         ; $5690: $04
    ld [hl], $32                                  ; $5691: $36 $32
    inc b                                         ; $5693: $04
    sub e                                         ; $5694: $93
    ld [hl-], a                                   ; $5695: $32
    inc b                                         ; $5696: $04
    jp c, $0432                                   ; $5697: $da $32 $04

    ld d, $33                                     ; $569a: $16 $33
    inc b                                         ; $569c: $04
    inc sp                                        ; $569d: $33
    inc sp                                        ; $569e: $33
    inc b                                         ; $569f: $04
    add e                                         ; $56a0: $83
    inc sp                                        ; $56a1: $33
    inc b                                         ; $56a2: $04
    db $f4                                        ; $56a3: $f4
    inc sp                                        ; $56a4: $33
    inc b                                         ; $56a5: $04
    ld d, $34                                     ; $56a6: $16 $34
    inc b                                         ; $56a8: $04
    adc c                                         ; $56a9: $89
    inc [hl]                                      ; $56aa: $34
    inc b                                         ; $56ab: $04
    di                                            ; $56ac: $f3
    inc [hl]                                      ; $56ad: $34
    inc b                                         ; $56ae: $04
    inc bc                                        ; $56af: $03
    dec [hl]                                      ; $56b0: $35
    inc b                                         ; $56b1: $04
    ld e, h                                       ; $56b2: $5c
    dec [hl]                                      ; $56b3: $35
    inc b                                         ; $56b4: $04
    ld a, l                                       ; $56b5: $7d
    dec [hl]                                      ; $56b6: $35
    inc b                                         ; $56b7: $04
    adc c                                         ; $56b8: $89
    dec [hl]                                      ; $56b9: $35
    inc b                                         ; $56ba: $04
    cp c                                          ; $56bb: $b9
    dec [hl]                                      ; $56bc: $35
    inc b                                         ; $56bd: $04
    ret c                                         ; $56be: $d8

    dec [hl]                                      ; $56bf: $35
    inc b                                         ; $56c0: $04
    ld c, $36                                     ; $56c1: $0e $36
    inc b                                         ; $56c3: $04
    ld [de], a                                    ; $56c4: $12
    ld [hl], $04                                  ; $56c5: $36 $04
    adc e                                         ; $56c7: $8b
    ld [hl], $04                                  ; $56c8: $36 $04
    sub d                                         ; $56ca: $92
    ld [hl], $04                                  ; $56cb: $36 $04
    ret c                                         ; $56cd: $d8

    ld [hl], $04                                  ; $56ce: $36 $04
    and $36                                       ; $56d0: $e6 $36
    inc b                                         ; $56d2: $04
    ld h, b                                       ; $56d3: $60
    scf                                           ; $56d4: $37
    inc b                                         ; $56d5: $04
    and d                                         ; $56d6: $a2
    scf                                           ; $56d7: $37
    inc b                                         ; $56d8: $04
    inc bc                                        ; $56d9: $03
    jr c, jr_033_56e0                             ; $56da: $38 $04

    dec de                                        ; $56dc: $1b
    jr c, jr_033_56e3                             ; $56dd: $38 $04

    cpl                                           ; $56df: $2f

jr_033_56e0:
    jr c, jr_033_56e6                             ; $56e0: $38 $04

    dec a                                         ; $56e2: $3d

jr_033_56e3:
    jr c, jr_033_56e9                             ; $56e3: $38 $04

    ld e, [hl]                                    ; $56e5: $5e

jr_033_56e6:
    jr c, jr_033_56ec                             ; $56e6: $38 $04

    sbc c                                         ; $56e8: $99

jr_033_56e9:
    jr c, @+$06                                   ; $56e9: $38 $04

    xor h                                         ; $56eb: $ac

jr_033_56ec:
    jr c, jr_033_56f2                             ; $56ec: $38 $04

    jp nc, $0438                                  ; $56ee: $d2 $38 $04

    db $fc                                        ; $56f1: $fc

jr_033_56f2:
    jr c, jr_033_56f8                             ; $56f2: $38 $04

    add hl, sp                                    ; $56f4: $39
    add hl, sp                                    ; $56f5: $39
    inc b                                         ; $56f6: $04
    ld a, h                                       ; $56f7: $7c

jr_033_56f8:
    add hl, sp                                    ; $56f8: $39
    inc b                                         ; $56f9: $04
    cp d                                          ; $56fa: $ba
    add hl, sp                                    ; $56fb: $39
    inc b                                         ; $56fc: $04
    push af                                       ; $56fd: $f5
    add hl, sp                                    ; $56fe: $39
    inc b                                         ; $56ff: $04
    rrca                                          ; $5700: $0f
    ld a, [hl-]                                   ; $5701: $3a
    inc b                                         ; $5702: $04
    ld hl, $043a                                  ; $5703: $21 $3a $04
    sbc h                                         ; $5706: $9c
    ld a, [hl-]                                   ; $5707: $3a
    inc b                                         ; $5708: $04
    srl d                                         ; $5709: $cb $3a
    inc b                                         ; $570b: $04
    jr z, jr_033_5749                             ; $570c: $28 $3b

    inc b                                         ; $570e: $04
    ld b, l                                       ; $570f: $45
    dec sp                                        ; $5710: $3b
    inc b                                         ; $5711: $04
    or h                                          ; $5712: $b4
    dec sp                                        ; $5713: $3b
    inc b                                         ; $5714: $04
    db $dd                                        ; $5715: $dd
    dec sp                                        ; $5716: $3b
    inc b                                         ; $5717: $04
    db $ed                                        ; $5718: $ed
    dec sp                                        ; $5719: $3b
    inc b                                         ; $571a: $04
    nop                                           ; $571b: $00
    inc a                                         ; $571c: $3c
    inc b                                         ; $571d: $04
    ld b, e                                       ; $571e: $43
    inc a                                         ; $571f: $3c
    inc b                                         ; $5720: $04
    ld d, h                                       ; $5721: $54
    inc a                                         ; $5722: $3c
    inc b                                         ; $5723: $04
    add b                                         ; $5724: $80
    inc a                                         ; $5725: $3c
    inc b                                         ; $5726: $04
    sbc e                                         ; $5727: $9b
    inc a                                         ; $5728: $3c
    inc b                                         ; $5729: $04
    cp c                                          ; $572a: $b9
    inc a                                         ; $572b: $3c
    inc b                                         ; $572c: $04
    call Call_000_043c                            ; $572d: $cd $3c $04
    db $ec                                        ; $5730: $ec
    inc a                                         ; $5731: $3c
    inc b                                         ; $5732: $04
    rst $30                                       ; $5733: $f7
    inc a                                         ; $5734: $3c
    inc b                                         ; $5735: $04
    dec a                                         ; $5736: $3d
    dec a                                         ; $5737: $3d
    inc b                                         ; $5738: $04
    ld d, [hl]                                    ; $5739: $56
    dec a                                         ; $573a: $3d
    inc b                                         ; $573b: $04
    or l                                          ; $573c: $b5
    dec a                                         ; $573d: $3d
    inc b                                         ; $573e: $04
    db $e3                                        ; $573f: $e3
    dec a                                         ; $5740: $3d
    inc b                                         ; $5741: $04
    ld b, $3e                                     ; $5742: $06 $3e
    inc b                                         ; $5744: $04
    inc sp                                        ; $5745: $33
    ld a, $04                                     ; $5746: $3e $04
    ld e, h                                       ; $5748: $5c

jr_033_5749:
    ld a, $04                                     ; $5749: $3e $04
    ld [hl], l                                    ; $574b: $75
    ld a, $04                                     ; $574c: $3e $04
    adc d                                         ; $574e: $8a
    ld a, $04                                     ; $574f: $3e $04
    or d                                          ; $5751: $b2
    ld a, $04                                     ; $5752: $3e $04
    cp h                                          ; $5754: $bc
    ld a, $04                                     ; $5755: $3e $04
    ret nc                                        ; $5757: $d0

    ld a, $04                                     ; $5758: $3e $04
    db $e3                                        ; $575a: $e3
    ld a, $04                                     ; $575b: $3e $04
    xor $3e                                       ; $575d: $ee $3e
    inc b                                         ; $575f: $04
    dec l                                         ; $5760: $2d
    ccf                                           ; $5761: $3f
    inc b                                         ; $5762: $04
    add [hl]                                      ; $5763: $86
    ccf                                           ; $5764: $3f
    inc b                                         ; $5765: $04
    and e                                         ; $5766: $a3
    ccf                                           ; $5767: $3f
    inc b                                         ; $5768: $04
    xor e                                         ; $5769: $ab
    ccf                                           ; $576a: $3f
    inc b                                         ; $576b: $04
    call nz, $053f                                ; $576c: $c4 $3f $05
    ld bc, $0500                                  ; $576f: $01 $00 $05
    inc sp                                        ; $5772: $33
    nop                                           ; $5773: $00
    dec b                                         ; $5774: $05
    ld d, c                                       ; $5775: $51
    nop                                           ; $5776: $00
    dec b                                         ; $5777: $05
    or e                                          ; $5778: $b3
    nop                                           ; $5779: $00
    dec b                                         ; $577a: $05
    db $e3                                        ; $577b: $e3
    nop                                           ; $577c: $00
    dec b                                         ; $577d: $05
    ld b, a                                       ; $577e: $47
    ld bc, $4f05                                  ; $577f: $01 $05 $4f
    ld bc, $6505                                  ; $5782: $01 $05 $65
    ld bc, $8205                                  ; $5785: $01 $05 $82
    ld bc, $c705                                  ; $5788: $01 $05 $c7
    ld bc, $f205                                  ; $578b: $01 $05 $f2
    ld bc, $2d05                                  ; $578e: $01 $05 $2d
    ld [bc], a                                    ; $5791: $02
    dec b                                         ; $5792: $05
    ld a, $02                                     ; $5793: $3e $02
    dec b                                         ; $5795: $05
    ld l, d                                       ; $5796: $6a
    ld [bc], a                                    ; $5797: $02
    dec b                                         ; $5798: $05
    ld [hl], l                                    ; $5799: $75
    ld [bc], a                                    ; $579a: $02
    dec b                                         ; $579b: $05
    add [hl]                                      ; $579c: $86
    ld [bc], a                                    ; $579d: $02
    dec b                                         ; $579e: $05
    pop de                                        ; $579f: $d1
    ld [bc], a                                    ; $57a0: $02
    dec b                                         ; $57a1: $05
    db $e4                                        ; $57a2: $e4
    ld [bc], a                                    ; $57a3: $02
    dec b                                         ; $57a4: $05
    ld l, $03                                     ; $57a5: $2e $03
    dec b                                         ; $57a7: $05
    ld h, d                                       ; $57a8: $62
    inc bc                                        ; $57a9: $03
    dec b                                         ; $57aa: $05
    ret nz                                        ; $57ab: $c0

    inc bc                                        ; $57ac: $03
    dec b                                         ; $57ad: $05
    ld [c], a                                     ; $57ae: $e2
    inc bc                                        ; $57af: $03
    dec b                                         ; $57b0: $05
    ldh a, [$03]                                  ; $57b1: $f0 $03
    dec b                                         ; $57b3: $05
    ld c, $04                                     ; $57b4: $0e $04
    dec b                                         ; $57b6: $05
    dec h                                         ; $57b7: $25
    inc b                                         ; $57b8: $04
    dec b                                         ; $57b9: $05
    ld b, e                                       ; $57ba: $43
    inc b                                         ; $57bb: $04
    dec b                                         ; $57bc: $05
    ld e, a                                       ; $57bd: $5f
    inc b                                         ; $57be: $04
    dec b                                         ; $57bf: $05
    ld a, e                                       ; $57c0: $7b
    inc b                                         ; $57c1: $04
    dec b                                         ; $57c2: $05
    sub [hl]                                      ; $57c3: $96
    inc b                                         ; $57c4: $04
    dec b                                         ; $57c5: $05
    xor d                                         ; $57c6: $aa
    inc b                                         ; $57c7: $04
    dec b                                         ; $57c8: $05
    or [hl]                                       ; $57c9: $b6
    inc b                                         ; $57ca: $04
    dec b                                         ; $57cb: $05
    jp z, $0504                                   ; $57cc: $ca $04 $05

    call c, $0504                                 ; $57cf: $dc $04 $05
    sbc $04                                       ; $57d2: $de $04
    dec b                                         ; $57d4: $05
    xor $04                                       ; $57d5: $ee $04
    dec b                                         ; $57d7: $05
    ld c, $05                                     ; $57d8: $0e $05
    dec b                                         ; $57da: $05
    ld l, $05                                     ; $57db: $2e $05
    dec b                                         ; $57dd: $05
    jr nc, jr_033_57e5                            ; $57de: $30 $05

    dec b                                         ; $57e0: $05
    ld [hl-], a                                   ; $57e1: $32
    dec b                                         ; $57e2: $05
    dec b                                         ; $57e3: $05
    ld d, l                                       ; $57e4: $55

jr_033_57e5:
    dec b                                         ; $57e5: $05
    dec b                                         ; $57e6: $05
    ld l, [hl]                                    ; $57e7: $6e

Call_033_57e8:
    dec b                                         ; $57e8: $05
    dec b                                         ; $57e9: $05
    ld [hl], b                                    ; $57ea: $70
    dec b                                         ; $57eb: $05
    dec b                                         ; $57ec: $05
    adc b                                         ; $57ed: $88
    dec b                                         ; $57ee: $05
    dec b                                         ; $57ef: $05
    adc d                                         ; $57f0: $8a
    dec b                                         ; $57f1: $05
    dec b                                         ; $57f2: $05
    adc h                                         ; $57f3: $8c
    dec b                                         ; $57f4: $05
    dec b                                         ; $57f5: $05
    and e                                         ; $57f6: $a3
    dec b                                         ; $57f7: $05
    dec b                                         ; $57f8: $05
    or d                                          ; $57f9: $b2
    dec b                                         ; $57fa: $05
    dec b                                         ; $57fb: $05
    pop bc                                        ; $57fc: $c1
    dec b                                         ; $57fd: $05
    dec b                                         ; $57fe: $05
    jp Jump_000_0505                              ; $57ff: $c3 $05 $05


    push bc                                       ; $5802: $c5
    dec b                                         ; $5803: $05
    dec b                                         ; $5804: $05
    rst $00                                       ; $5805: $c7
    dec b                                         ; $5806: $05
    dec b                                         ; $5807: $05
    sbc $05                                       ; $5808: $de $05
    dec b                                         ; $580a: $05
    ldh [rTIMA], a                                ; $580b: $e0 $05
    dec b                                         ; $580d: $05
    ld [c], a                                     ; $580e: $e2
    dec b                                         ; $580f: $05
    dec b                                         ; $5810: $05
    db $e4                                        ; $5811: $e4
    dec b                                         ; $5812: $05
    dec b                                         ; $5813: $05
    and $05                                       ; $5814: $e6 $05
    dec b                                         ; $5816: $05
    add sp, $05                                   ; $5817: $e8 $05
    dec b                                         ; $5819: $05
    ld [$0505], a                                 ; $581a: $ea $05 $05
    db $ec                                        ; $581d: $ec
    dec b                                         ; $581e: $05
    dec b                                         ; $581f: $05
    xor $05                                       ; $5820: $ee $05
    dec b                                         ; $5822: $05
    ld hl, sp+$05                                 ; $5823: $f8 $05
    dec b                                         ; $5825: $05
    inc de                                        ; $5826: $13
    ld b, $05                                     ; $5827: $06 $05
    ld h, $06                                     ; $5829: $26 $06
    dec b                                         ; $582b: $05

Jump_033_582c:
    jr z, @+$08                                   ; $582c: $28 $06

    dec b                                         ; $582e: $05
    ld a, [hl+]                                   ; $582f: $2a
    ld b, $05                                     ; $5830: $06 $05
    inc l                                         ; $5832: $2c
    ld b, $05                                     ; $5833: $06 $05
    ld l, $06                                     ; $5835: $2e $06
    dec b                                         ; $5837: $05
    jr nc, @+$08                                  ; $5838: $30 $06

    dec b                                         ; $583a: $05
    ld [hl-], a                                   ; $583b: $32
    ld b, $05                                     ; $583c: $06 $05
    inc [hl]                                      ; $583e: $34
    ld b, $05                                     ; $583f: $06 $05
    ld [hl], $06                                  ; $5841: $36 $06
    dec b                                         ; $5843: $05
    jr c, @+$08                                   ; $5844: $38 $06

    dec b                                         ; $5846: $05
    ld a, [hl-]                                   ; $5847: $3a
    ld b, $05                                     ; $5848: $06 $05
    ld c, e                                       ; $584a: $4b
    ld b, $05                                     ; $584b: $06 $05
    ld e, l                                       ; $584d: $5d
    ld b, $05                                     ; $584e: $06 $05
    ld l, h                                       ; $5850: $6c
    ld b, $05                                     ; $5851: $06 $05
    ld a, d                                       ; $5853: $7a
    ld b, $05                                     ; $5854: $06 $05
    adc [hl]                                      ; $5856: $8e
    ld b, $05                                     ; $5857: $06 $05
    and [hl]                                      ; $5859: $a6
    ld b, $05                                     ; $585a: $06 $05
    xor b                                         ; $585c: $a8
    ld b, $05                                     ; $585d: $06 $05
    cp d                                          ; $585f: $ba
    ld b, $05                                     ; $5860: $06 $05
    cp h                                          ; $5862: $bc
    ld b, $05                                     ; $5863: $06 $05
    call $0506                                    ; $5865: $cd $06 $05
    rst $08                                       ; $5868: $cf
    ld b, $05                                     ; $5869: $06 $05
    sbc $06                                       ; $586b: $de $06
    dec b                                         ; $586d: $05
    ldh [rTMA], a                                 ; $586e: $e0 $06
    dec b                                         ; $5870: $05
    ld a, [c]                                     ; $5871: $f2
    ld b, $05                                     ; $5872: $06 $05
    inc b                                         ; $5874: $04
    rlca                                          ; $5875: $07
    dec b                                         ; $5876: $05
    inc e                                         ; $5877: $1c
    rlca                                          ; $5878: $07
    dec b                                         ; $5879: $05
    cpl                                           ; $587a: $2f

Call_033_587b:
Jump_033_587b:
    rlca                                          ; $587b: $07
    dec b                                         ; $587c: $05
    ld b, c                                       ; $587d: $41
    rlca                                          ; $587e: $07
    dec b                                         ; $587f: $05
    ld b, e                                       ; $5880: $43
    rlca                                          ; $5881: $07
    dec b                                         ; $5882: $05
    ld b, l                                       ; $5883: $45
    rlca                                          ; $5884: $07
    dec b                                         ; $5885: $05
    ld b, a                                       ; $5886: $47
    rlca                                          ; $5887: $07
    dec b                                         ; $5888: $05
    ld c, c                                       ; $5889: $49
    rlca                                          ; $588a: $07
    dec b                                         ; $588b: $05
    ld e, h                                       ; $588c: $5c
    rlca                                          ; $588d: $07
    dec b                                         ; $588e: $05
    ld l, [hl]                                    ; $588f: $6e
    rlca                                          ; $5890: $07
    dec b                                         ; $5891: $05
    add [hl]                                      ; $5892: $86
    rlca                                          ; $5893: $07
    dec b                                         ; $5894: $05
    sbc l                                         ; $5895: $9d
    rlca                                          ; $5896: $07
    dec b                                         ; $5897: $05
    or c                                          ; $5898: $b1
    rlca                                          ; $5899: $07
    dec b                                         ; $589a: $05
    push bc                                       ; $589b: $c5
    rlca                                          ; $589c: $07
    dec b                                         ; $589d: $05
    push de                                       ; $589e: $d5
    rlca                                          ; $589f: $07
    dec b                                         ; $58a0: $05
    db $e4                                        ; $58a1: $e4
    rlca                                          ; $58a2: $07
    dec b                                         ; $58a3: $05
    db $f4                                        ; $58a4: $f4
    rlca                                          ; $58a5: $07
    dec b                                         ; $58a6: $05
    inc b                                         ; $58a7: $04
    ld [$1c05], sp                                ; $58a8: $08 $05 $1c
    ld [$3205], sp                                ; $58ab: $08 $05 $32
    ld [$5605], sp                                ; $58ae: $08 $05 $56
    ld [$5805], sp                                ; $58b1: $08 $05 $58
    ld [$7005], sp                                ; $58b4: $08 $05 $70
    ld [$8205], sp                                ; $58b7: $08 $05 $82
    ld [$9305], sp                                ; $58ba: $08 $05 $93
    ld [$ab05], sp                                ; $58bd: $08 $05 $ab
    ld [$be05], sp                                ; $58c0: $08 $05 $be
    ld [$d105], sp                                ; $58c3: $08 $05 $d1
    ld [$e005], sp                                ; $58c6: $08 $05 $e0
    ld [$f405], sp                                ; $58c9: $08 $05 $f4
    ld [$0305], sp                                ; $58cc: $08 $05 $03
    add hl, bc                                    ; $58cf: $09
    dec b                                         ; $58d0: $05
    dec bc                                        ; $58d1: $0b
    add hl, bc                                    ; $58d2: $09
    dec b                                         ; $58d3: $05
    dec d                                         ; $58d4: $15
    add hl, bc                                    ; $58d5: $09
    dec b                                         ; $58d6: $05
    inc e                                         ; $58d7: $1c
    add hl, bc                                    ; $58d8: $09
    dec b                                         ; $58d9: $05
    ld h, $09                                     ; $58da: $26 $09
    dec b                                         ; $58dc: $05
    inc sp                                        ; $58dd: $33
    add hl, bc                                    ; $58de: $09
    dec b                                         ; $58df: $05
    inc a                                         ; $58e0: $3c
    add hl, bc                                    ; $58e1: $09
    dec b                                         ; $58e2: $05
    ld b, [hl]                                    ; $58e3: $46
    add hl, bc                                    ; $58e4: $09
    dec b                                         ; $58e5: $05
    ld d, b                                       ; $58e6: $50
    add hl, bc                                    ; $58e7: $09
    dec b                                         ; $58e8: $05
    ld e, l                                       ; $58e9: $5d
    add hl, bc                                    ; $58ea: $09
    dec b                                         ; $58eb: $05
    ld l, e                                       ; $58ec: $6b
    add hl, bc                                    ; $58ed: $09
    dec b                                         ; $58ee: $05
    ld a, b                                       ; $58ef: $78
    add hl, bc                                    ; $58f0: $09
    dec b                                         ; $58f1: $05
    add l                                         ; $58f2: $85
    add hl, bc                                    ; $58f3: $09
    dec b                                         ; $58f4: $05
    sub d                                         ; $58f5: $92
    add hl, bc                                    ; $58f6: $09
    dec b                                         ; $58f7: $05
    sbc a                                         ; $58f8: $9f
    add hl, bc                                    ; $58f9: $09
    dec b                                         ; $58fa: $05
    xor h                                         ; $58fb: $ac
    add hl, bc                                    ; $58fc: $09
    dec b                                         ; $58fd: $05
    cp l                                          ; $58fe: $bd
    add hl, bc                                    ; $58ff: $09
    dec b                                         ; $5900: $05
    rst $08                                       ; $5901: $cf
    add hl, bc                                    ; $5902: $09
    dec b                                         ; $5903: $05
    reti                                          ; $5904: $d9


    add hl, bc                                    ; $5905: $09
    dec b                                         ; $5906: $05
    ld [$0509], a                                 ; $5907: $ea $09 $05
    or $09                                        ; $590a: $f6 $09
    dec b                                         ; $590c: $05
    rst $38                                       ; $590d: $ff
    add hl, bc                                    ; $590e: $09
    dec b                                         ; $590f: $05
    ld de, $050a                                  ; $5910: $11 $0a $05
    ld sp, $050a                                  ; $5913: $31 $0a $05
    inc a                                         ; $5916: $3c
    ld a, [bc]                                    ; $5917: $0a
    dec b                                         ; $5918: $05
    ld c, b                                       ; $5919: $48
    ld a, [bc]                                    ; $591a: $0a
    dec b                                         ; $591b: $05
    ld d, h                                       ; $591c: $54
    ld a, [bc]                                    ; $591d: $0a
    dec b                                         ; $591e: $05
    ld h, b                                       ; $591f: $60
    ld a, [bc]                                    ; $5920: $0a
    dec b                                         ; $5921: $05
    ld l, h                                       ; $5922: $6c
    ld a, [bc]                                    ; $5923: $0a
    dec b                                         ; $5924: $05
    ld a, b                                       ; $5925: $78
    ld a, [bc]                                    ; $5926: $0a
    dec b                                         ; $5927: $05
    add h                                         ; $5928: $84
    ld a, [bc]                                    ; $5929: $0a
    dec b                                         ; $592a: $05
    adc e                                         ; $592b: $8b
    ld a, [bc]                                    ; $592c: $0a
    dec b                                         ; $592d: $05
    sub d                                         ; $592e: $92
    ld a, [bc]                                    ; $592f: $0a
    dec b                                         ; $5930: $05
    sbc c                                         ; $5931: $99
    ld a, [bc]                                    ; $5932: $0a
    dec b                                         ; $5933: $05
    and b                                         ; $5934: $a0
    ld a, [bc]                                    ; $5935: $0a
    dec b                                         ; $5936: $05
    and a                                         ; $5937: $a7
    ld a, [bc]                                    ; $5938: $0a
    dec b                                         ; $5939: $05
    xor [hl]                                      ; $593a: $ae
    ld a, [bc]                                    ; $593b: $0a
    dec b                                         ; $593c: $05
    cp c                                          ; $593d: $b9
    ld a, [bc]                                    ; $593e: $0a
    dec b                                         ; $593f: $05
    push bc                                       ; $5940: $c5
    ld a, [bc]                                    ; $5941: $0a
    dec b                                         ; $5942: $05
    pop de                                        ; $5943: $d1
    ld a, [bc]                                    ; $5944: $0a
    dec b                                         ; $5945: $05
    sbc $0a                                       ; $5946: $de $0a
    dec b                                         ; $5948: $05
    rst $20                                       ; $5949: $e7
    ld a, [bc]                                    ; $594a: $0a
    dec b                                         ; $594b: $05
    pop af                                        ; $594c: $f1
    ld a, [bc]                                    ; $594d: $0a
    dec b                                         ; $594e: $05
    nop                                           ; $594f: $00
    dec bc                                        ; $5950: $0b
    dec b                                         ; $5951: $05
    dec bc                                        ; $5952: $0b
    dec bc                                        ; $5953: $0b
    dec b                                         ; $5954: $05
    add hl, de                                    ; $5955: $19
    dec bc                                        ; $5956: $0b
    dec b                                         ; $5957: $05
    daa                                           ; $5958: $27
    dec bc                                        ; $5959: $0b
    dec b                                         ; $595a: $05
    dec [hl]                                      ; $595b: $35
    dec bc                                        ; $595c: $0b
    dec b                                         ; $595d: $05
    ld b, e                                       ; $595e: $43
    dec bc                                        ; $595f: $0b
    dec b                                         ; $5960: $05
    ld d, c                                       ; $5961: $51
    dec bc                                        ; $5962: $0b
    dec b                                         ; $5963: $05
    ld e, a                                       ; $5964: $5f
    dec bc                                        ; $5965: $0b
    dec b                                         ; $5966: $05
    ld l, l                                       ; $5967: $6d
    dec bc                                        ; $5968: $0b
    dec b                                         ; $5969: $05
    ld [hl], d                                    ; $596a: $72
    dec bc                                        ; $596b: $0b
    dec b                                         ; $596c: $05
    adc b                                         ; $596d: $88
    dec bc                                        ; $596e: $0b
    dec b                                         ; $596f: $05
    sub e                                         ; $5970: $93
    dec bc                                        ; $5971: $0b
    dec b                                         ; $5972: $05
    sbc h                                         ; $5973: $9c
    dec bc                                        ; $5974: $0b
    dec b                                         ; $5975: $05
    and l                                         ; $5976: $a5
    dec bc                                        ; $5977: $0b
    dec b                                         ; $5978: $05
    or d                                          ; $5979: $b2
    dec bc                                        ; $597a: $0b
    dec b                                         ; $597b: $05
    pop bc                                        ; $597c: $c1
    dec bc                                        ; $597d: $0b
    dec b                                         ; $597e: $05
    call z, Call_000_050b                         ; $597f: $cc $0b $05
    rst $18                                       ; $5982: $df
    dec bc                                        ; $5983: $0b
    dec b                                         ; $5984: $05
    jp hl                                         ; $5985: $e9


    dec bc                                        ; $5986: $0b
    dec b                                         ; $5987: $05
    ld a, [c]                                     ; $5988: $f2
    dec bc                                        ; $5989: $0b
    dec b                                         ; $598a: $05
    db $fc                                        ; $598b: $fc
    dec bc                                        ; $598c: $0b
    dec b                                         ; $598d: $05
    inc bc                                        ; $598e: $03
    inc c                                         ; $598f: $0c
    dec b                                         ; $5990: $05
    ld d, $0c                                     ; $5991: $16 $0c
    dec b                                         ; $5993: $05
    rra                                           ; $5994: $1f
    inc c                                         ; $5995: $0c
    dec b                                         ; $5996: $05
    dec l                                         ; $5997: $2d
    inc c                                         ; $5998: $0c
    dec b                                         ; $5999: $05
    scf                                           ; $599a: $37
    inc c                                         ; $599b: $0c
    dec b                                         ; $599c: $05
    inc a                                         ; $599d: $3c
    inc c                                         ; $599e: $0c
    dec b                                         ; $599f: $05
    ld c, l                                       ; $59a0: $4d
    inc c                                         ; $59a1: $0c
    dec b                                         ; $59a2: $05
    ld h, d                                       ; $59a3: $62
    inc c                                         ; $59a4: $0c
    dec b                                         ; $59a5: $05
    ld [hl], a                                    ; $59a6: $77
    inc c                                         ; $59a7: $0c
    dec b                                         ; $59a8: $05
    ld a, a                                       ; $59a9: $7f
    inc c                                         ; $59aa: $0c
    dec b                                         ; $59ab: $05
    adc b                                         ; $59ac: $88
    inc c                                         ; $59ad: $0c
    dec b                                         ; $59ae: $05
    sbc c                                         ; $59af: $99
    inc c                                         ; $59b0: $0c
    dec b                                         ; $59b1: $05
    xor d                                         ; $59b2: $aa
    inc c                                         ; $59b3: $0c
    dec b                                         ; $59b4: $05
    or h                                          ; $59b5: $b4
    inc c                                         ; $59b6: $0c
    dec b                                         ; $59b7: $05
    jp nz, Jump_000_050c                          ; $59b8: $c2 $0c $05

    call z, Call_000_050c                         ; $59bb: $cc $0c $05
    ret c                                         ; $59be: $d8

    inc c                                         ; $59bf: $0c
    dec b                                         ; $59c0: $05
    and $0c                                       ; $59c1: $e6 $0c
    dec b                                         ; $59c3: $05
    or $0c                                        ; $59c4: $f6 $0c
    dec b                                         ; $59c6: $05
    ld b, $0d                                     ; $59c7: $06 $0d
    dec b                                         ; $59c9: $05
    ld d, $0d                                     ; $59ca: $16 $0d
    dec b                                         ; $59cc: $05
    add hl, hl                                    ; $59cd: $29
    dec c                                         ; $59ce: $0d
    dec b                                         ; $59cf: $05
    dec sp                                        ; $59d0: $3b
    dec c                                         ; $59d1: $0d
    dec b                                         ; $59d2: $05
    ld b, a                                       ; $59d3: $47
    dec c                                         ; $59d4: $0d
    dec b                                         ; $59d5: $05
    ld d, a                                       ; $59d6: $57
    dec c                                         ; $59d7: $0d
    dec b                                         ; $59d8: $05
    ld l, c                                       ; $59d9: $69
    dec c                                         ; $59da: $0d

Jump_033_59db:
    dec b                                         ; $59db: $05
    ld [hl], d                                    ; $59dc: $72
    dec c                                         ; $59dd: $0d
    dec b                                         ; $59de: $05
    add h                                         ; $59df: $84
    dec c                                         ; $59e0: $0d
    dec b                                         ; $59e1: $05
    sub [hl]                                      ; $59e2: $96
    dec c                                         ; $59e3: $0d
    dec b                                         ; $59e4: $05
    and b                                         ; $59e5: $a0
    dec c                                         ; $59e6: $0d
    dec b                                         ; $59e7: $05
    or h                                          ; $59e8: $b4
    dec c                                         ; $59e9: $0d
    dec b                                         ; $59ea: $05
    cp h                                          ; $59eb: $bc
    dec c                                         ; $59ec: $0d
    dec b                                         ; $59ed: $05
    ret z                                         ; $59ee: $c8

    dec c                                         ; $59ef: $0d
    dec b                                         ; $59f0: $05
    reti                                          ; $59f1: $d9


    dec c                                         ; $59f2: $0d
    dec b                                         ; $59f3: $05
    add sp, $0d                                   ; $59f4: $e8 $0d
    dec b                                         ; $59f6: $05

Jump_033_59f7:
    or $0d                                        ; $59f7: $f6 $0d
    dec b                                         ; $59f9: $05
    rlca                                          ; $59fa: $07
    ld c, $05                                     ; $59fb: $0e $05
    dec e                                         ; $59fd: $1d
    ld c, $05                                     ; $59fe: $0e $05
    inc l                                         ; $5a00: $2c
    ld c, $05                                     ; $5a01: $0e $05
    ld b, e                                       ; $5a03: $43
    ld c, $05                                     ; $5a04: $0e $05
    ld h, c                                       ; $5a06: $61
    ld c, $05                                     ; $5a07: $0e $05
    ld a, a                                       ; $5a09: $7f
    ld c, $05                                     ; $5a0a: $0e $05
    and d                                         ; $5a0c: $a2
    ld c, $05                                     ; $5a0d: $0e $05
    rst $00                                       ; $5a0f: $c7
    ld c, $05                                     ; $5a10: $0e $05
    ldh [$0e], a                                  ; $5a12: $e0 $0e
    dec b                                         ; $5a14: $05
    ld hl, sp+$0e                                 ; $5a15: $f8 $0e
    dec b                                         ; $5a17: $05
    ld b, $0f                                     ; $5a18: $06 $0f
    dec b                                         ; $5a1a: $05
    dec d                                         ; $5a1b: $15
    rrca                                          ; $5a1c: $0f
    dec b                                         ; $5a1d: $05
    inc h                                         ; $5a1e: $24
    rrca                                          ; $5a1f: $0f
    dec b                                         ; $5a20: $05
    inc sp                                        ; $5a21: $33
    rrca                                          ; $5a22: $0f
    dec b                                         ; $5a23: $05
    ld b, a                                       ; $5a24: $47
    rrca                                          ; $5a25: $0f
    dec b                                         ; $5a26: $05
    ld e, a                                       ; $5a27: $5f
    rrca                                          ; $5a28: $0f
    dec b                                         ; $5a29: $05
    ld [hl], a                                    ; $5a2a: $77
    rrca                                          ; $5a2b: $0f
    dec b                                         ; $5a2c: $05
    adc e                                         ; $5a2d: $8b
    rrca                                          ; $5a2e: $0f
    dec b                                         ; $5a2f: $05
    and e                                         ; $5a30: $a3
    rrca                                          ; $5a31: $0f
    dec b                                         ; $5a32: $05
    or [hl]                                       ; $5a33: $b6
    rrca                                          ; $5a34: $0f
    dec b                                         ; $5a35: $05
    add $0f                                       ; $5a36: $c6 $0f
    dec b                                         ; $5a38: $05
    rst $18                                       ; $5a39: $df
    rrca                                          ; $5a3a: $0f
    dec b                                         ; $5a3b: $05
    ld b, $10                                     ; $5a3c: $06 $10
    dec b                                         ; $5a3e: $05
    dec e                                         ; $5a3f: $1d
    db $10                                        ; $5a40: $10
    dec b                                         ; $5a41: $05
    ld a, [hl-]                                   ; $5a42: $3a
    db $10                                        ; $5a43: $10
    dec b                                         ; $5a44: $05
    ld e, b                                       ; $5a45: $58
    db $10                                        ; $5a46: $10
    dec b                                         ; $5a47: $05
    ld [hl], l                                    ; $5a48: $75
    db $10                                        ; $5a49: $10
    dec b                                         ; $5a4a: $05
    sub e                                         ; $5a4b: $93
    db $10                                        ; $5a4c: $10
    dec b                                         ; $5a4d: $05
    or c                                          ; $5a4e: $b1
    db $10                                        ; $5a4f: $10
    dec b                                         ; $5a50: $05
    rst $08                                       ; $5a51: $cf
    db $10                                        ; $5a52: $10
    dec b                                         ; $5a53: $05
    sbc $10                                       ; $5a54: $de $10
    dec b                                         ; $5a56: $05
    db $ed                                        ; $5a57: $ed
    db $10                                        ; $5a58: $10
    dec b                                         ; $5a59: $05
    db $fc                                        ; $5a5a: $fc
    db $10                                        ; $5a5b: $10
    dec b                                         ; $5a5c: $05
    dec bc                                        ; $5a5d: $0b
    ld de, $1a05                                  ; $5a5e: $11 $05 $1a
    ld de, $2905                                  ; $5a61: $11 $05 $29
    ld de, $4105                                  ; $5a64: $11 $05 $41
    ld de, $5605                                  ; $5a67: $11 $05 $56
    ld de, $6b05                                  ; $5a6a: $11 $05 $6b
    ld de, $7e05                                  ; $5a6d: $11 $05 $7e
    ld de, $8e05                                  ; $5a70: $11 $05 $8e
    ld de, $a105                                  ; $5a73: $11 $05 $a1
    ld de, $bb05                                  ; $5a76: $11 $05 $bb
    ld de, $cb05                                  ; $5a79: $11 $05 $cb
    ld de, $e205                                  ; $5a7c: $11 $05 $e2
    ld de, $fa05                                  ; $5a7f: $11 $05 $fa
    ld de, $1205                                  ; $5a82: $11 $05 $12
    ld [de], a                                    ; $5a85: $12
    dec b                                         ; $5a86: $05
    ld a, [hl+]                                   ; $5a87: $2a
    ld [de], a                                    ; $5a88: $12
    dec b                                         ; $5a89: $05
    ld b, d                                       ; $5a8a: $42
    ld [de], a                                    ; $5a8b: $12
    dec b                                         ; $5a8c: $05
    ld e, d                                       ; $5a8d: $5a
    ld [de], a                                    ; $5a8e: $12
    dec b                                         ; $5a8f: $05
    ld [hl], c                                    ; $5a90: $71
    ld [de], a                                    ; $5a91: $12
    dec b                                         ; $5a92: $05
    add l                                         ; $5a93: $85
    ld [de], a                                    ; $5a94: $12
    dec b                                         ; $5a95: $05
    and d                                         ; $5a96: $a2
    ld [de], a                                    ; $5a97: $12
    dec b                                         ; $5a98: $05
    or h                                          ; $5a99: $b4
    ld [de], a                                    ; $5a9a: $12
    dec b                                         ; $5a9b: $05
    call nz, Call_000_0512                        ; $5a9c: $c4 $12 $05
    call nc, Call_000_0512                        ; $5a9f: $d4 $12 $05
    db $ed                                        ; $5aa2: $ed
    ld [de], a                                    ; $5aa3: $12
    dec b                                         ; $5aa4: $05
    inc bc                                        ; $5aa5: $03
    inc de                                        ; $5aa6: $13
    dec b                                         ; $5aa7: $05
    add hl, de                                    ; $5aa8: $19
    inc de                                        ; $5aa9: $13
    dec b                                         ; $5aaa: $05
    inc sp                                        ; $5aab: $33
    inc de                                        ; $5aac: $13
    dec b                                         ; $5aad: $05
    ld c, d                                       ; $5aae: $4a
    inc de                                        ; $5aaf: $13
    dec b                                         ; $5ab0: $05
    ld h, b                                       ; $5ab1: $60
    inc de                                        ; $5ab2: $13
    dec b                                         ; $5ab3: $05
    halt                                          ; $5ab4: $76
    inc de                                        ; $5ab5: $13
    dec b                                         ; $5ab6: $05
    add a                                         ; $5ab7: $87
    inc de                                        ; $5ab8: $13
    dec b                                         ; $5ab9: $05
    and c                                         ; $5aba: $a1
    inc de                                        ; $5abb: $13
    dec b                                         ; $5abc: $05
    or c                                          ; $5abd: $b1
    inc de                                        ; $5abe: $13
    dec b                                         ; $5abf: $05
    ret                                           ; $5ac0: $c9


    inc de                                        ; $5ac1: $13
    dec b                                         ; $5ac2: $05
    db $dd                                        ; $5ac3: $dd
    inc de                                        ; $5ac4: $13
    dec b                                         ; $5ac5: $05
    db $ed                                        ; $5ac6: $ed
    inc de                                        ; $5ac7: $13
    dec b                                         ; $5ac8: $05
    rlca                                          ; $5ac9: $07
    inc d                                         ; $5aca: $14
    dec b                                         ; $5acb: $05
    inc hl                                        ; $5acc: $23
    inc d                                         ; $5acd: $14
    dec b                                         ; $5ace: $05
    ccf                                           ; $5acf: $3f
    inc d                                         ; $5ad0: $14
    dec b                                         ; $5ad1: $05
    ld d, c                                       ; $5ad2: $51
    inc d                                         ; $5ad3: $14
    dec b                                         ; $5ad4: $05
    ld h, c                                       ; $5ad5: $61
    inc d                                         ; $5ad6: $14
    dec b                                         ; $5ad7: $05
    ld [hl], e                                    ; $5ad8: $73
    inc d                                         ; $5ad9: $14
    dec b                                         ; $5ada: $05
    add e                                         ; $5adb: $83
    inc d                                         ; $5adc: $14
    dec b                                         ; $5add: $05
    sub h                                         ; $5ade: $94
    inc d                                         ; $5adf: $14
    dec b                                         ; $5ae0: $05
    and d                                         ; $5ae1: $a2
    inc d                                         ; $5ae2: $14
    dec b                                         ; $5ae3: $05
    push bc                                       ; $5ae4: $c5
    inc d                                         ; $5ae5: $14
    dec b                                         ; $5ae6: $05
    sub $14                                       ; $5ae7: $d6 $14
    dec b                                         ; $5ae9: $05
    db $eb                                        ; $5aea: $eb
    inc d                                         ; $5aeb: $14
    dec b                                         ; $5aec: $05
    ld [bc], a                                    ; $5aed: $02
    dec d                                         ; $5aee: $15
    dec b                                         ; $5aef: $05
    add hl, de                                    ; $5af0: $19
    dec d                                         ; $5af1: $15
    dec b                                         ; $5af2: $05
    jr nc, jr_033_5b0a                            ; $5af3: $30 $15

    dec b                                         ; $5af5: $05
    ld c, b                                       ; $5af6: $48
    dec d                                         ; $5af7: $15
    dec b                                         ; $5af8: $05
    ld l, c                                       ; $5af9: $69
    dec d                                         ; $5afa: $15
    dec b                                         ; $5afb: $05
    ld a, e                                       ; $5afc: $7b
    dec d                                         ; $5afd: $15
    dec b                                         ; $5afe: $05
    sub b                                         ; $5aff: $90
    dec d                                         ; $5b00: $15
    dec b                                         ; $5b01: $05
    xor e                                         ; $5b02: $ab
    dec d                                         ; $5b03: $15
    dec b                                         ; $5b04: $05
    cp l                                          ; $5b05: $bd
    dec d                                         ; $5b06: $15
    dec b                                         ; $5b07: $05
    db $db                                        ; $5b08: $db
    dec d                                         ; $5b09: $15

jr_033_5b0a:
    dec b                                         ; $5b0a: $05
    ld sp, hl                                     ; $5b0b: $f9
    dec d                                         ; $5b0c: $15
    dec b                                         ; $5b0d: $05
    ld a, [bc]                                    ; $5b0e: $0a
    ld d, $05                                     ; $5b0f: $16 $05
    dec e                                         ; $5b11: $1d
    ld d, $05                                     ; $5b12: $16 $05
    ld [hl-], a                                   ; $5b14: $32
    ld d, $05                                     ; $5b15: $16 $05
    ld b, a                                       ; $5b17: $47
    ld d, $05                                     ; $5b18: $16 $05
    ld h, e                                       ; $5b1a: $63
    ld d, $05                                     ; $5b1b: $16 $05
    ld [hl], l                                    ; $5b1d: $75
    ld d, $05                                     ; $5b1e: $16 $05
    ld a, $17                                     ; $5b20: $3e $17
    dec b                                         ; $5b22: $05
    ld h, d                                       ; $5b23: $62
    rla                                           ; $5b24: $17
    dec b                                         ; $5b25: $05
    ld [hl], b                                    ; $5b26: $70
    rla                                           ; $5b27: $17
    dec b                                         ; $5b28: $05
    ld a, c                                       ; $5b29: $79
    rla                                           ; $5b2a: $17
    dec b                                         ; $5b2b: $05
    adc c                                         ; $5b2c: $89
    rla                                           ; $5b2d: $17
    dec b                                         ; $5b2e: $05
    sbc d                                         ; $5b2f: $9a
    rla                                           ; $5b30: $17
    dec b                                         ; $5b31: $05
    or e                                          ; $5b32: $b3
    rla                                           ; $5b33: $17
    dec b                                         ; $5b34: $05
    cp a                                          ; $5b35: $bf
    rla                                           ; $5b36: $17
    dec b                                         ; $5b37: $05
    pop de                                        ; $5b38: $d1
    rla                                           ; $5b39: $17
    dec b                                         ; $5b3a: $05
    ret c                                         ; $5b3b: $d8

    rla                                           ; $5b3c: $17
    dec b                                         ; $5b3d: $05
    rst $18                                       ; $5b3e: $df
    rla                                           ; $5b3f: $17
    dec b                                         ; $5b40: $05
    and $17                                       ; $5b41: $e6 $17
    dec b                                         ; $5b43: $05
    db $ed                                        ; $5b44: $ed
    rla                                           ; $5b45: $17
    dec b                                         ; $5b46: $05
    db $f4                                        ; $5b47: $f4
    rla                                           ; $5b48: $17
    dec b                                         ; $5b49: $05
    ld [bc], a                                    ; $5b4a: $02
    jr @+$07                                      ; $5b4b: $18 $05

    dec de                                        ; $5b4d: $1b
    jr @+$07                                      ; $5b4e: $18 $05

    dec hl                                        ; $5b50: $2b
    jr @+$07                                      ; $5b51: $18 $05

    inc [hl]                                      ; $5b53: $34
    jr @+$07                                      ; $5b54: $18 $05

    dec a                                         ; $5b56: $3d
    jr @+$07                                      ; $5b57: $18 $05

    ld b, l                                       ; $5b59: $45
    jr @+$07                                      ; $5b5a: $18 $05

    ld d, e                                       ; $5b5c: $53
    jr @+$07                                      ; $5b5d: $18 $05

    ld e, l                                       ; $5b5f: $5d
    jr @+$07                                      ; $5b60: $18 $05

    ld h, e                                       ; $5b62: $63
    jr @+$07                                      ; $5b63: $18 $05

    ld [hl], c                                    ; $5b65: $71
    jr @+$07                                      ; $5b66: $18 $05

    ld [hl], a                                    ; $5b68: $77
    jr @+$07                                      ; $5b69: $18 $05

    ld a, h                                       ; $5b6b: $7c
    jr @+$07                                      ; $5b6c: $18 $05

    add d                                         ; $5b6e: $82
    jr @+$07                                      ; $5b6f: $18 $05

    sub c                                         ; $5b71: $91
    jr @+$07                                      ; $5b72: $18 $05

    and d                                         ; $5b74: $a2
    jr @+$07                                      ; $5b75: $18 $05

    xor a                                         ; $5b77: $af
    jr @+$07                                      ; $5b78: $18 $05

    or [hl]                                       ; $5b7a: $b6
    jr @+$07                                      ; $5b7b: $18 $05

    jp Jump_000_0518                              ; $5b7d: $c3 $18 $05


    call z, Call_000_0518                         ; $5b80: $cc $18 $05
    push de                                       ; $5b83: $d5
    jr jr_033_5b8b                                ; $5b84: $18 $05

    and $18                                       ; $5b86: $e6 $18
    dec b                                         ; $5b88: $05
    xor $18                                       ; $5b89: $ee $18

jr_033_5b8b:
    dec b                                         ; $5b8b: $05
    push af                                       ; $5b8c: $f5
    jr jr_033_5b94                                ; $5b8d: $18 $05

    db $fc                                        ; $5b8f: $fc
    jr jr_033_5b97                                ; $5b90: $18 $05

    ld a, [bc]                                    ; $5b92: $0a
    add hl, de                                    ; $5b93: $19

jr_033_5b94:
    dec b                                         ; $5b94: $05
    dec de                                        ; $5b95: $1b
    add hl, de                                    ; $5b96: $19

jr_033_5b97:
    dec b                                         ; $5b97: $05
    ld a, [hl+]                                   ; $5b98: $2a
    add hl, de                                    ; $5b99: $19
    dec b                                         ; $5b9a: $05
    add hl, sp                                    ; $5b9b: $39
    add hl, de                                    ; $5b9c: $19
    dec b                                         ; $5b9d: $05
    ld c, d                                       ; $5b9e: $4a
    add hl, de                                    ; $5b9f: $19
    dec b                                         ; $5ba0: $05
    ld h, a                                       ; $5ba1: $67
    add hl, de                                    ; $5ba2: $19
    dec b                                         ; $5ba3: $05
    ld l, [hl]                                    ; $5ba4: $6e
    add hl, de                                    ; $5ba5: $19
    dec b                                         ; $5ba6: $05
    ld a, e                                       ; $5ba7: $7b
    add hl, de                                    ; $5ba8: $19
    dec b                                         ; $5ba9: $05
    add l                                         ; $5baa: $85
    add hl, de                                    ; $5bab: $19
    dec b                                         ; $5bac: $05
    adc e                                         ; $5bad: $8b
    add hl, de                                    ; $5bae: $19
    dec b                                         ; $5baf: $05
    sub c                                         ; $5bb0: $91
    add hl, de                                    ; $5bb1: $19
    dec b                                         ; $5bb2: $05
    sbc a                                         ; $5bb3: $9f
    add hl, de                                    ; $5bb4: $19
    dec b                                         ; $5bb5: $05
    rr c                                          ; $5bb6: $cb $19
    dec b                                         ; $5bb8: $05
    ret c                                         ; $5bb9: $d8

    add hl, de                                    ; $5bba: $19
    dec b                                         ; $5bbb: $05
    push hl                                       ; $5bbc: $e5
    add hl, de                                    ; $5bbd: $19
    dec b                                         ; $5bbe: $05
    db $10                                        ; $5bbf: $10
    ld a, [de]                                    ; $5bc0: $1a
    dec b                                         ; $5bc1: $05
    ld l, $1a                                     ; $5bc2: $2e $1a
    dec b                                         ; $5bc4: $05
    ld c, c                                       ; $5bc5: $49
    ld a, [de]                                    ; $5bc6: $1a
    dec b                                         ; $5bc7: $05
    ld h, h                                       ; $5bc8: $64
    ld a, [de]                                    ; $5bc9: $1a
    dec b                                         ; $5bca: $05
    ld a, a                                       ; $5bcb: $7f
    ld a, [de]                                    ; $5bcc: $1a
    dec b                                         ; $5bcd: $05
    sbc c                                         ; $5bce: $99
    ld a, [de]                                    ; $5bcf: $1a
    dec b                                         ; $5bd0: $05
    or l                                          ; $5bd1: $b5
    ld a, [de]                                    ; $5bd2: $1a
    dec b                                         ; $5bd3: $05
    reti                                          ; $5bd4: $d9


    ld a, [de]                                    ; $5bd5: $1a
    dec b                                         ; $5bd6: $05
    ld hl, sp+$1a                                 ; $5bd7: $f8 $1a
    dec b                                         ; $5bd9: $05
    inc e                                         ; $5bda: $1c
    dec de                                        ; $5bdb: $1b
    dec b                                         ; $5bdc: $05
    ld l, $1b                                     ; $5bdd: $2e $1b
    dec b                                         ; $5bdf: $05
    ld a, [hl-]                                   ; $5be0: $3a
    dec de                                        ; $5be1: $1b
    dec b                                         ; $5be2: $05
    ld c, a                                       ; $5be3: $4f
    dec de                                        ; $5be4: $1b
    dec b                                         ; $5be5: $05
    ld [hl], l                                    ; $5be6: $75
    dec de                                        ; $5be7: $1b
    dec b                                         ; $5be8: $05
    adc l                                         ; $5be9: $8d
    dec de                                        ; $5bea: $1b
    dec b                                         ; $5beb: $05
    xor [hl]                                      ; $5bec: $ae
    dec de                                        ; $5bed: $1b
    dec b                                         ; $5bee: $05
    cp b                                          ; $5bef: $b8
    dec de                                        ; $5bf0: $1b
    dec b                                         ; $5bf1: $05
    push bc                                       ; $5bf2: $c5
    dec de                                        ; $5bf3: $1b
    dec b                                         ; $5bf4: $05
    jp nc, Jump_000_051b                          ; $5bf5: $d2 $1b $05

    pop hl                                        ; $5bf8: $e1
    dec de                                        ; $5bf9: $1b
    dec b                                         ; $5bfa: $05
    rst $28                                       ; $5bfb: $ef
    dec de                                        ; $5bfc: $1b
    dec b                                         ; $5bfd: $05
    ld hl, sp+$1b                                 ; $5bfe: $f8 $1b
    dec b                                         ; $5c00: $05
    dec e                                         ; $5c01: $1d
    inc e                                         ; $5c02: $1c
    dec b                                         ; $5c03: $05
    ld a, [hl-]                                   ; $5c04: $3a
    inc e                                         ; $5c05: $1c
    dec b                                         ; $5c06: $05
    ld [hl], c                                    ; $5c07: $71
    inc e                                         ; $5c08: $1c
    dec b                                         ; $5c09: $05
    xor [hl]                                      ; $5c0a: $ae
    inc e                                         ; $5c0b: $1c
    dec b                                         ; $5c0c: $05
    xor $1c                                       ; $5c0d: $ee $1c
    dec b                                         ; $5c0f: $05
    inc bc                                        ; $5c10: $03
    dec e                                         ; $5c11: $1d
    dec b                                         ; $5c12: $05
    dec d                                         ; $5c13: $15
    dec e                                         ; $5c14: $1d
    dec b                                         ; $5c15: $05
    inc hl                                        ; $5c16: $23
    dec e                                         ; $5c17: $1d
    dec b                                         ; $5c18: $05
    ld sp, $051d                                  ; $5c19: $31 $1d $05
    ld c, a                                       ; $5c1c: $4f
    dec e                                         ; $5c1d: $1d
    dec b                                         ; $5c1e: $05
    ld d, a                                       ; $5c1f: $57
    dec e                                         ; $5c20: $1d
    dec b                                         ; $5c21: $05
    ld h, l                                       ; $5c22: $65
    dec e                                         ; $5c23: $1d
    dec b                                         ; $5c24: $05
    ld [hl], l                                    ; $5c25: $75
    dec e                                         ; $5c26: $1d
    dec b                                         ; $5c27: $05
    or d                                          ; $5c28: $b2
    dec e                                         ; $5c29: $1d
    dec b                                         ; $5c2a: $05
    call c, Call_000_051d                         ; $5c2b: $dc $1d $05
    inc c                                         ; $5c2e: $0c
    ld e, $05                                     ; $5c2f: $1e $05
    ld [hl], $1e                                  ; $5c31: $36 $1e
    dec b                                         ; $5c33: $05
    ld l, b                                       ; $5c34: $68
    ld e, $05                                     ; $5c35: $1e $05
    add $1e                                       ; $5c37: $c6 $1e
    dec b                                         ; $5c39: $05
    db $f4                                        ; $5c3a: $f4
    ld e, $05                                     ; $5c3b: $1e $05
    inc hl                                        ; $5c3d: $23
    rra                                           ; $5c3e: $1f
    dec b                                         ; $5c3f: $05
    ld d, d                                       ; $5c40: $52
    rra                                           ; $5c41: $1f
    dec b                                         ; $5c42: $05
    and b                                         ; $5c43: $a0
    rra                                           ; $5c44: $1f
    dec b                                         ; $5c45: $05
    push af                                       ; $5c46: $f5
    rra                                           ; $5c47: $1f
    dec b                                         ; $5c48: $05
    dec hl                                        ; $5c49: $2b
    jr nz, @+$07                                  ; $5c4a: $20 $05

    ld e, l                                       ; $5c4c: $5d
    jr nz, @+$07                                  ; $5c4d: $20 $05

    ld c, [hl]                                    ; $5c4f: $4e
    ld hl, $5b05                                  ; $5c50: $21 $05 $5b
    ld hl, $6105                                  ; $5c53: $21 $05 $61
    ld hl, $6705                                  ; $5c56: $21 $05 $67
    ld hl, $6f05                                  ; $5c59: $21 $05 $6f
    ld hl, $7a05                                  ; $5c5c: $21 $05 $7a
    ld hl, $8605                                  ; $5c5f: $21 $05 $86
    ld hl, $9005                                  ; $5c62: $21 $05 $90
    ld hl, $a005                                  ; $5c65: $21 $05 $a0
    ld hl, $ab05                                  ; $5c68: $21 $05 $ab
    ld hl, $b505                                  ; $5c6b: $21 $05 $b5
    ld hl, $c005                                  ; $5c6e: $21 $05 $c0
    ld hl, $c505                                  ; $5c71: $21 $05 $c5
    ld hl, $d105                                  ; $5c74: $21 $05 $d1
    ld hl, $d605                                  ; $5c77: $21 $05 $d6
    ld hl, $e005                                  ; $5c7a: $21 $05 $e0
    ld hl, $ef05                                  ; $5c7d: $21 $05 $ef
    ld hl, $f405                                  ; $5c80: $21 $05 $f4
    ld hl, $0405                                  ; $5c83: $21 $05 $04
    ld [hl+], a                                   ; $5c86: $22
    dec b                                         ; $5c87: $05
    ld c, $22                                     ; $5c88: $0e $22
    dec b                                         ; $5c8a: $05
    add hl, de                                    ; $5c8b: $19
    ld [hl+], a                                   ; $5c8c: $22
    dec b                                         ; $5c8d: $05
    ld e, $22                                     ; $5c8e: $1e $22
    dec b                                         ; $5c90: $05
    dec h                                         ; $5c91: $25
    ld [hl+], a                                   ; $5c92: $22
    dec b                                         ; $5c93: $05
    inc l                                         ; $5c94: $2c
    ld [hl+], a                                   ; $5c95: $22
    dec b                                         ; $5c96: $05
    inc [hl]                                      ; $5c97: $34
    ld [hl+], a                                   ; $5c98: $22
    dec b                                         ; $5c99: $05
    ld a, $22                                     ; $5c9a: $3e $22
    dec b                                         ; $5c9c: $05
    ld b, l                                       ; $5c9d: $45
    ld [hl+], a                                   ; $5c9e: $22
    dec b                                         ; $5c9f: $05
    ld c, c                                       ; $5ca0: $49
    ld [hl+], a                                   ; $5ca1: $22
    dec b                                         ; $5ca2: $05
    ld d, l                                       ; $5ca3: $55
    ld [hl+], a                                   ; $5ca4: $22
    dec b                                         ; $5ca5: $05
    ld h, c                                       ; $5ca6: $61
    ld [hl+], a                                   ; $5ca7: $22
    dec b                                         ; $5ca8: $05
    ld l, e                                       ; $5ca9: $6b
    ld [hl+], a                                   ; $5caa: $22
    dec b                                         ; $5cab: $05
    ld [hl], h                                    ; $5cac: $74
    ld [hl+], a                                   ; $5cad: $22
    dec b                                         ; $5cae: $05
    ld a, [hl]                                    ; $5caf: $7e
    ld [hl+], a                                   ; $5cb0: $22
    dec b                                         ; $5cb1: $05
    adc h                                         ; $5cb2: $8c
    ld [hl+], a                                   ; $5cb3: $22
    dec b                                         ; $5cb4: $05
    sub [hl]                                      ; $5cb5: $96
    ld [hl+], a                                   ; $5cb6: $22
    dec b                                         ; $5cb7: $05
    and b                                         ; $5cb8: $a0
    ld [hl+], a                                   ; $5cb9: $22
    dec b                                         ; $5cba: $05
    xor e                                         ; $5cbb: $ab
    ld [hl+], a                                   ; $5cbc: $22
    dec b                                         ; $5cbd: $05
    or l                                          ; $5cbe: $b5
    ld [hl+], a                                   ; $5cbf: $22
    dec b                                         ; $5cc0: $05
    cp d                                          ; $5cc1: $ba
    ld [hl+], a                                   ; $5cc2: $22
    dec b                                         ; $5cc3: $05
    pop bc                                        ; $5cc4: $c1
    ld [hl+], a                                   ; $5cc5: $22
    dec b                                         ; $5cc6: $05
    call z, Call_000_0522                         ; $5cc7: $cc $22 $05
    sub $22                                       ; $5cca: $d6 $22
    dec b                                         ; $5ccc: $05
    sbc $22                                       ; $5ccd: $de $22
    dec b                                         ; $5ccf: $05
    and $22                                       ; $5cd0: $e6 $22
    dec b                                         ; $5cd2: $05
    xor $22                                       ; $5cd3: $ee $22
    dec b                                         ; $5cd5: $05
    ld a, [$0522]                                 ; $5cd6: $fa $22 $05
    ld b, $23                                     ; $5cd9: $06 $23
    dec b                                         ; $5cdb: $05
    dec c                                         ; $5cdc: $0d
    inc hl                                        ; $5cdd: $23
    dec b                                         ; $5cde: $05
    ld d, $23                                     ; $5cdf: $16 $23
    dec b                                         ; $5ce1: $05
    inc hl                                        ; $5ce2: $23
    inc hl                                        ; $5ce3: $23
    dec b                                         ; $5ce4: $05
    ld l, $23                                     ; $5ce5: $2e $23
    dec b                                         ; $5ce7: $05
    add hl, sp                                    ; $5ce8: $39
    inc hl                                        ; $5ce9: $23
    dec b                                         ; $5cea: $05
    ld e, d                                       ; $5ceb: $5a
    inc hl                                        ; $5cec: $23
    dec b                                         ; $5ced: $05
    add d                                         ; $5cee: $82
    inc hl                                        ; $5cef: $23
    dec b                                         ; $5cf0: $05
    add sp, $23                                   ; $5cf1: $e8 $23
    dec b                                         ; $5cf3: $05
    dec l                                         ; $5cf4: $2d
    inc h                                         ; $5cf5: $24
    dec b                                         ; $5cf6: $05
    ld h, b                                       ; $5cf7: $60
    inc h                                         ; $5cf8: $24
    dec b                                         ; $5cf9: $05
    adc b                                         ; $5cfa: $88
    inc h                                         ; $5cfb: $24
    dec b                                         ; $5cfc: $05
    ret z                                         ; $5cfd: $c8

    inc h                                         ; $5cfe: $24
    dec b                                         ; $5cff: $05
    add sp, $24                                   ; $5d00: $e8 $24
    dec b                                         ; $5d02: $05
    dec h                                         ; $5d03: $25
    dec h                                         ; $5d04: $25
    dec b                                         ; $5d05: $05
    ld e, a                                       ; $5d06: $5f
    dec h                                         ; $5d07: $25
    dec b                                         ; $5d08: $05
    add e                                         ; $5d09: $83
    dec h                                         ; $5d0a: $25
    dec b                                         ; $5d0b: $05
    xor e                                         ; $5d0c: $ab
    dec h                                         ; $5d0d: $25
    dec b                                         ; $5d0e: $05
    db $e4                                        ; $5d0f: $e4
    dec h                                         ; $5d10: $25
    dec b                                         ; $5d11: $05
    jr jr_033_5d3a                                ; $5d12: $18 $26

    dec b                                         ; $5d14: $05
    ld d, l                                       ; $5d15: $55
    ld h, $05                                     ; $5d16: $26 $05
    add a                                         ; $5d18: $87
    ld h, $05                                     ; $5d19: $26 $05
    ret c                                         ; $5d1b: $d8

    ld h, $05                                     ; $5d1c: $26 $05
    add hl, bc                                    ; $5d1e: $09
    daa                                           ; $5d1f: $27
    dec b                                         ; $5d20: $05
    ccf                                           ; $5d21: $3f
    daa                                           ; $5d22: $27
    dec b                                         ; $5d23: $05
    ld [hl], b                                    ; $5d24: $70
    daa                                           ; $5d25: $27
    dec b                                         ; $5d26: $05
    xor e                                         ; $5d27: $ab
    daa                                           ; $5d28: $27
    dec b                                         ; $5d29: $05
    jp c, Jump_000_0527                           ; $5d2a: $da $27 $05

    ld [de], a                                    ; $5d2d: $12
    jr z, @+$07                                   ; $5d2e: $28 $05

    ld l, c                                       ; $5d30: $69
    jr z, @+$07                                   ; $5d31: $28 $05

    sub c                                         ; $5d33: $91
    jr z, @+$07                                   ; $5d34: $28 $05

    cp d                                          ; $5d36: $ba
    jr z, jr_033_5d3e                             ; $5d37: $28 $05

    db $ec                                        ; $5d39: $ec

jr_033_5d3a:
    jr z, jr_033_5d41                             ; $5d3a: $28 $05

    ld [de], a                                    ; $5d3c: $12
    add hl, hl                                    ; $5d3d: $29

jr_033_5d3e:
    dec b                                         ; $5d3e: $05
    ld a, [hl-]                                   ; $5d3f: $3a
    add hl, hl                                    ; $5d40: $29

jr_033_5d41:
    dec b                                         ; $5d41: $05
    ld [hl], c                                    ; $5d42: $71
    add hl, hl                                    ; $5d43: $29
    dec b                                         ; $5d44: $05
    and e                                         ; $5d45: $a3
    add hl, hl                                    ; $5d46: $29
    dec b                                         ; $5d47: $05
    pop hl                                        ; $5d48: $e1
    add hl, hl                                    ; $5d49: $29
    dec b                                         ; $5d4a: $05
    dec sp                                        ; $5d4b: $3b
    ld a, [hl+]                                   ; $5d4c: $2a
    dec b                                         ; $5d4d: $05
    sbc d                                         ; $5d4e: $9a
    ld a, [hl+]                                   ; $5d4f: $2a
    dec b                                         ; $5d50: $05
    jp nz, Jump_000_052a                          ; $5d51: $c2 $2a $05

    inc sp                                        ; $5d54: $33
    dec hl                                        ; $5d55: $2b
    dec b                                         ; $5d56: $05
    ld h, a                                       ; $5d57: $67
    dec hl                                        ; $5d58: $2b
    dec b                                         ; $5d59: $05
    add [hl]                                      ; $5d5a: $86
    dec hl                                        ; $5d5b: $2b
    dec b                                         ; $5d5c: $05
    ret c                                         ; $5d5d: $d8

    dec hl                                        ; $5d5e: $2b
    dec b                                         ; $5d5f: $05
    dec d                                         ; $5d60: $15
    inc l                                         ; $5d61: $2c
    dec b                                         ; $5d62: $05
    ld d, [hl]                                    ; $5d63: $56
    inc l                                         ; $5d64: $2c
    dec b                                         ; $5d65: $05
    sub l                                         ; $5d66: $95
    inc l                                         ; $5d67: $2c
    dec b                                         ; $5d68: $05
    push de                                       ; $5d69: $d5
    inc l                                         ; $5d6a: $2c
    dec b                                         ; $5d6b: $05
    push af                                       ; $5d6c: $f5
    inc l                                         ; $5d6d: $2c
    dec b                                         ; $5d6e: $05
    ld h, $2d                                     ; $5d6f: $26 $2d
    dec b                                         ; $5d71: $05
    ld c, a                                       ; $5d72: $4f
    dec l                                         ; $5d73: $2d
    dec b                                         ; $5d74: $05
    adc [hl]                                      ; $5d75: $8e
    dec l                                         ; $5d76: $2d
    dec b                                         ; $5d77: $05
    add $2d                                       ; $5d78: $c6 $2d
    dec b                                         ; $5d7a: $05
    ld b, $2e                                     ; $5d7b: $06 $2e
    dec b                                         ; $5d7d: $05
    dec a                                         ; $5d7e: $3d
    ld l, $05                                     ; $5d7f: $2e $05
    sub c                                         ; $5d81: $91
    ld l, $05                                     ; $5d82: $2e $05
    ld [hl], a                                    ; $5d84: $77
    cpl                                           ; $5d85: $2f
    dec b                                         ; $5d86: $05
    ld a, [$052f]                                 ; $5d87: $fa $2f $05
    add d                                         ; $5d8a: $82
    jr nc, @+$07                                  ; $5d8b: $30 $05

    inc c                                         ; $5d8d: $0c
    ld sp, $7a05                                  ; $5d8e: $31 $05 $7a
    ld sp, $6705                                  ; $5d91: $31 $05 $67
    ld [hl-], a                                   ; $5d94: $32
    dec b                                         ; $5d95: $05
    ld d, $33                                     ; $5d96: $16 $33
    dec b                                         ; $5d98: $05
    jp nc, $0534                                  ; $5d99: $d2 $34 $05

    adc b                                         ; $5d9c: $88
    dec [hl]                                      ; $5d9d: $35
    dec b                                         ; $5d9e: $05
    db $d3                                        ; $5d9f: $d3
    dec [hl]                                      ; $5da0: $35
    dec b                                         ; $5da1: $05
    ld d, d                                       ; $5da2: $52
    ld [hl], $05                                  ; $5da3: $36 $05
    add c                                         ; $5da5: $81
    ld [hl], $05                                  ; $5da6: $36 $05
    pop bc                                        ; $5da8: $c1
    ld [hl], $05                                  ; $5da9: $36 $05
    and $36                                       ; $5dab: $e6 $36
    dec b                                         ; $5dad: $05
    dec h                                         ; $5dae: $25
    scf                                           ; $5daf: $37
    dec b                                         ; $5db0: $05
    ld c, c                                       ; $5db1: $49
    scf                                           ; $5db2: $37
    dec b                                         ; $5db3: $05
    ld a, e                                       ; $5db4: $7b
    scf                                           ; $5db5: $37
    dec b                                         ; $5db6: $05
    ret nz                                        ; $5db7: $c0

    scf                                           ; $5db8: $37
    dec b                                         ; $5db9: $05
    pop af                                        ; $5dba: $f1
    scf                                           ; $5dbb: $37
    dec b                                         ; $5dbc: $05
    rlca                                          ; $5dbd: $07
    jr c, @+$07                                   ; $5dbe: $38 $05

    ccf                                           ; $5dc0: $3f
    jr c, @+$07                                   ; $5dc1: $38 $05

    ld e, e                                       ; $5dc3: $5b
    jr c, @+$07                                   ; $5dc4: $38 $05

    halt                                          ; $5dc6: $76
    jr c, @+$07                                   ; $5dc7: $38 $05

    xor l                                         ; $5dc9: $ad
    jr c, jr_033_5dd1                             ; $5dca: $38 $05

    rst $10                                       ; $5dcc: $d7
    jr c, jr_033_5dd4                             ; $5dcd: $38 $05

    or $38                                        ; $5dcf: $f6 $38

jr_033_5dd1:
    dec b                                         ; $5dd1: $05
    ld a, [de]                                    ; $5dd2: $1a
    add hl, sp                                    ; $5dd3: $39

jr_033_5dd4:
    dec b                                         ; $5dd4: $05
    ld b, a                                       ; $5dd5: $47
    add hl, sp                                    ; $5dd6: $39
    dec b                                         ; $5dd7: $05
    ld h, [hl]                                    ; $5dd8: $66
    add hl, sp                                    ; $5dd9: $39
    dec b                                         ; $5dda: $05
    sub c                                         ; $5ddb: $91
    add hl, sp                                    ; $5ddc: $39
    dec b                                         ; $5ddd: $05
    ret nz                                        ; $5dde: $c0

    add hl, sp                                    ; $5ddf: $39
    dec b                                         ; $5de0: $05
    rst $18                                       ; $5de1: $df
    add hl, sp                                    ; $5de2: $39
    dec b                                         ; $5de3: $05
    dec b                                         ; $5de4: $05
    ld a, [hl-]                                   ; $5de5: $3a
    dec b                                         ; $5de6: $05
    rra                                           ; $5de7: $1f
    ld a, [hl-]                                   ; $5de8: $3a
    dec b                                         ; $5de9: $05
    ld d, c                                       ; $5dea: $51
    ld a, [hl-]                                   ; $5deb: $3a
    dec b                                         ; $5dec: $05
    adc c                                         ; $5ded: $89
    ld a, [hl-]                                   ; $5dee: $3a
    dec b                                         ; $5def: $05
    xor d                                         ; $5df0: $aa
    ld a, [hl-]                                   ; $5df1: $3a
    dec b                                         ; $5df2: $05
    ret c                                         ; $5df3: $d8

    ld a, [hl-]                                   ; $5df4: $3a
    dec b                                         ; $5df5: $05
    db $fc                                        ; $5df6: $fc
    ld a, [hl-]                                   ; $5df7: $3a
    dec b                                         ; $5df8: $05
    dec e                                         ; $5df9: $1d
    dec sp                                        ; $5dfa: $3b
    dec b                                         ; $5dfb: $05
    ld d, e                                       ; $5dfc: $53
    dec sp                                        ; $5dfd: $3b
    dec b                                         ; $5dfe: $05
    ld a, l                                       ; $5dff: $7d
    dec sp                                        ; $5e00: $3b
    dec b                                         ; $5e01: $05
    or l                                          ; $5e02: $b5
    dec sp                                        ; $5e03: $3b
    dec b                                         ; $5e04: $05
    pop hl                                        ; $5e05: $e1
    dec sp                                        ; $5e06: $3b
    dec b                                         ; $5e07: $05
    ld c, $3c                                     ; $5e08: $0e $3c
    dec b                                         ; $5e0a: $05
    inc e                                         ; $5e0b: $1c
    inc a                                         ; $5e0c: $3c
    dec b                                         ; $5e0d: $05
    ld c, d                                       ; $5e0e: $4a
    inc a                                         ; $5e0f: $3c
    dec b                                         ; $5e10: $05
    ld [hl], c                                    ; $5e11: $71
    inc a                                         ; $5e12: $3c
    dec b                                         ; $5e13: $05
    sub d                                         ; $5e14: $92
    inc a                                         ; $5e15: $3c
    dec b                                         ; $5e16: $05
    cp c                                          ; $5e17: $b9
    inc a                                         ; $5e18: $3c
    dec b                                         ; $5e19: $05
    push af                                       ; $5e1a: $f5
    inc a                                         ; $5e1b: $3c
    dec b                                         ; $5e1c: $05
    dec c                                         ; $5e1d: $0d
    dec a                                         ; $5e1e: $3d
    dec b                                         ; $5e1f: $05
    ccf                                           ; $5e20: $3f
    dec a                                         ; $5e21: $3d
    dec b                                         ; $5e22: $05
    ld d, a                                       ; $5e23: $57
    dec a                                         ; $5e24: $3d
    dec b                                         ; $5e25: $05
    cp l                                          ; $5e26: $bd
    dec a                                         ; $5e27: $3d
    dec b                                         ; $5e28: $05
    jp hl                                         ; $5e29: $e9


    dec a                                         ; $5e2a: $3d
    dec b                                         ; $5e2b: $05
    inc h                                         ; $5e2c: $24
    ld a, $05                                     ; $5e2d: $3e $05
    ld e, h                                       ; $5e2f: $5c
    ld a, $05                                     ; $5e30: $3e $05
    adc b                                         ; $5e32: $88
    ld a, $05                                     ; $5e33: $3e $05
    cp [hl]                                       ; $5e35: $be
    ld a, $05                                     ; $5e36: $3e $05
    db $ec                                        ; $5e38: $ec
    ld a, $05                                     ; $5e39: $3e $05
    jr z, @+$41                                   ; $5e3b: $28 $3f

    dec b                                         ; $5e3d: $05
    ld c, a                                       ; $5e3e: $4f
    ccf                                           ; $5e3f: $3f
    dec b                                         ; $5e40: $05
    sub a                                         ; $5e41: $97
    ccf                                           ; $5e42: $3f
    dec b                                         ; $5e43: $05
    ret nz                                        ; $5e44: $c0

    ccf                                           ; $5e45: $3f
    ld b, $01                                     ; $5e46: $06 $01
    nop                                           ; $5e48: $00
    ld b, $2e                                     ; $5e49: $06 $2e
    nop                                           ; $5e4b: $00
    ld b, $71                                     ; $5e4c: $06 $71
    nop                                           ; $5e4e: $00
    ld b, $a4                                     ; $5e4f: $06 $a4
    nop                                           ; $5e51: $00
    ld b, $e3                                     ; $5e52: $06 $e3
    nop                                           ; $5e54: $00
    ld b, $1f                                     ; $5e55: $06 $1f
    ld bc, $3106                                  ; $5e57: $01 $06 $31
    ld bc, $3306                                  ; $5e5a: $01 $06 $33
    ld bc, $4206                                  ; $5e5d: $01 $06 $42
    ld bc, $4b06                                  ; $5e60: $01 $06 $4b
    ld bc, $4d06                                  ; $5e63: $01 $06 $4d
    ld bc, $5906                                  ; $5e66: $01 $06 $59
    ld bc, $6306                                  ; $5e69: $01 $06 $63
    ld bc, $6506                                  ; $5e6c: $01 $06 $65

Call_033_5e6f:
    ld bc, $6f06                                  ; $5e6f: $01 $06 $6f
    ld bc, $7906                                  ; $5e72: $01 $06 $79
    ld bc, $7b06                                  ; $5e75: $01 $06 $7b
    ld bc, $8306                                  ; $5e78: $01 $06 $83
    ld bc, $8c06                                  ; $5e7b: $01 $06 $8c
    ld bc, $9506                                  ; $5e7e: $01 $06 $95
    ld bc, $9f06                                  ; $5e81: $01 $06 $9f
    ld bc, $a806                                  ; $5e84: $01 $06 $a8
    ld bc, $aa06                                  ; $5e87: $01 $06 $aa
    ld bc, $b706                                  ; $5e8a: $01 $06 $b7
    ld bc, $c006                                  ; $5e8d: $01 $06 $c0
    ld bc, $c806                                  ; $5e90: $01 $06 $c8
    ld bc, $d206                                  ; $5e93: $01 $06 $d2
    ld bc, $d406                                  ; $5e96: $01 $06 $d4
    ld bc, $e206                                  ; $5e99: $01 $06 $e2
    ld bc, $eb06                                  ; $5e9c: $01 $06 $eb
    ld bc, $ed06                                  ; $5e9f: $01 $06 $ed
    ld bc, $f706                                  ; $5ea2: $01 $06 $f7
    ld bc, $ff06                                  ; $5ea5: $01 $06 $ff
    ld bc, $0106                                  ; $5ea8: $01 $06 $01
    ld [bc], a                                    ; $5eab: $02
    ld b, $10                                     ; $5eac: $06 $10
    ld [bc], a                                    ; $5eae: $02
    ld b, $18                                     ; $5eaf: $06 $18
    ld [bc], a                                    ; $5eb1: $02
    ld b, $20                                     ; $5eb2: $06 $20
    ld [bc], a                                    ; $5eb4: $02
    ld b, $27                                     ; $5eb5: $06 $27
    ld [bc], a                                    ; $5eb7: $02
    ld b, $29                                     ; $5eb8: $06 $29
    ld [bc], a                                    ; $5eba: $02
    ld b, $2d                                     ; $5ebb: $06 $2d
    ld [bc], a                                    ; $5ebd: $02
    ld b, $37                                     ; $5ebe: $06 $37
    ld [bc], a                                    ; $5ec0: $02
    ld b, $41                                     ; $5ec1: $06 $41
    ld [bc], a                                    ; $5ec3: $02
    ld b, $4b                                     ; $5ec4: $06 $4b
    ld [bc], a                                    ; $5ec6: $02
    ld b, $53                                     ; $5ec7: $06 $53
    ld [bc], a                                    ; $5ec9: $02
    ld b, $55                                     ; $5eca: $06 $55
    ld [bc], a                                    ; $5ecc: $02
    ld b, $57                                     ; $5ecd: $06 $57
    ld [bc], a                                    ; $5ecf: $02
    ld b, $6e                                     ; $5ed0: $06 $6e
    ld [bc], a                                    ; $5ed2: $02
    ld b, $70                                     ; $5ed3: $06 $70
    ld [bc], a                                    ; $5ed5: $02
    ld b, $7f                                     ; $5ed6: $06 $7f
    ld [bc], a                                    ; $5ed8: $02
    ld b, $88                                     ; $5ed9: $06 $88
    ld [bc], a                                    ; $5edb: $02
    ld b, $90                                     ; $5edc: $06 $90
    ld [bc], a                                    ; $5ede: $02
    ld b, $92                                     ; $5edf: $06 $92
    ld [bc], a                                    ; $5ee1: $02
    ld b, $9a                                     ; $5ee2: $06 $9a
    ld [bc], a                                    ; $5ee4: $02
    ld b, $a4                                     ; $5ee5: $06 $a4
    ld [bc], a                                    ; $5ee7: $02
    ld b, $a6                                     ; $5ee8: $06 $a6
    ld [bc], a                                    ; $5eea: $02
    ld b, $b2                                     ; $5eeb: $06 $b2
    ld [bc], a                                    ; $5eed: $02
    ld b, $bb                                     ; $5eee: $06 $bb
    ld [bc], a                                    ; $5ef0: $02
    ld b, $bd                                     ; $5ef1: $06 $bd
    ld [bc], a                                    ; $5ef3: $02
    ld b, $d1                                     ; $5ef4: $06 $d1
    ld [bc], a                                    ; $5ef6: $02
    ld b, $dd                                     ; $5ef7: $06 $dd
    ld [bc], a                                    ; $5ef9: $02
    ld b, $e6                                     ; $5efa: $06 $e6
    ld [bc], a                                    ; $5efc: $02
    ld b, $ed                                     ; $5efd: $06 $ed
    ld [bc], a                                    ; $5eff: $02
    ld b, $f5                                     ; $5f00: $06 $f5
    ld [bc], a                                    ; $5f02: $02
    ld b, $ff                                     ; $5f03: $06 $ff
    ld [bc], a                                    ; $5f05: $02
    ld b, $08                                     ; $5f06: $06 $08
    inc bc                                        ; $5f08: $03
    ld b, $0a                                     ; $5f09: $06 $0a
    inc bc                                        ; $5f0b: $03
    ld b, $0c                                     ; $5f0c: $06 $0c
    inc bc                                        ; $5f0e: $03
    ld b, $0e                                     ; $5f0f: $06 $0e
    inc bc                                        ; $5f11: $03
    ld b, $20                                     ; $5f12: $06 $20
    inc bc                                        ; $5f14: $03
    ld b, $22                                     ; $5f15: $06 $22
    inc bc                                        ; $5f17: $03
    ld b, $2d                                     ; $5f18: $06 $2d
    inc bc                                        ; $5f1a: $03
    ld b, $35                                     ; $5f1b: $06 $35
    inc bc                                        ; $5f1d: $03
    ld b, $40                                     ; $5f1e: $06 $40
    inc bc                                        ; $5f20: $03
    ld b, $48                                     ; $5f21: $06 $48
    inc bc                                        ; $5f23: $03
    ld b, $52                                     ; $5f24: $06 $52
    inc bc                                        ; $5f26: $03
    ld b, $5d                                     ; $5f27: $06 $5d
    inc bc                                        ; $5f29: $03
    ld b, $66                                     ; $5f2a: $06 $66
    inc bc                                        ; $5f2c: $03
    ld b, $6f                                     ; $5f2d: $06 $6f
    inc bc                                        ; $5f2f: $03
    ld b, $71                                     ; $5f30: $06 $71
    inc bc                                        ; $5f32: $03
    ld b, $83                                     ; $5f33: $06 $83
    inc bc                                        ; $5f35: $03
    ld b, $89                                     ; $5f36: $06 $89
    inc bc                                        ; $5f38: $03
    ld b, $8b                                     ; $5f39: $06 $8b
    inc bc                                        ; $5f3b: $03
    ld b, $94                                     ; $5f3c: $06 $94
    inc bc                                        ; $5f3e: $03
    ld b, $9c                                     ; $5f3f: $06 $9c
    inc bc                                        ; $5f41: $03
    ld b, $9e                                     ; $5f42: $06 $9e
    inc bc                                        ; $5f44: $03
    ld b, $a3                                     ; $5f45: $06 $a3
    inc bc                                        ; $5f47: $03
    ld b, $ac                                     ; $5f48: $06 $ac
    inc bc                                        ; $5f4a: $03
    ld b, $b4                                     ; $5f4b: $06 $b4
    inc bc                                        ; $5f4d: $03
    ld b, $bd                                     ; $5f4e: $06 $bd
    inc bc                                        ; $5f50: $03
    ld b, $c7                                     ; $5f51: $06 $c7
    inc bc                                        ; $5f53: $03
    ld b, $c9                                     ; $5f54: $06 $c9
    inc bc                                        ; $5f56: $03
    ld b, $d3                                     ; $5f57: $06 $d3
    inc bc                                        ; $5f59: $03
    ld b, $dc                                     ; $5f5a: $06 $dc
    inc bc                                        ; $5f5c: $03
    ld b, $e6                                     ; $5f5d: $06 $e6
    inc bc                                        ; $5f5f: $03
    ld b, $ed                                     ; $5f60: $06 $ed
    inc bc                                        ; $5f62: $03
    ld b, $f7                                     ; $5f63: $06 $f7
    inc bc                                        ; $5f65: $03
    ld b, $ff                                     ; $5f66: $06 $ff
    inc bc                                        ; $5f68: $03
    ld b, $07                                     ; $5f69: $06 $07
    inc b                                         ; $5f6b: $04
    ld b, $11                                     ; $5f6c: $06 $11
    inc b                                         ; $5f6e: $04
    ld b, $1e                                     ; $5f6f: $06 $1e
    inc b                                         ; $5f71: $04
    ld b, $27                                     ; $5f72: $06 $27
    inc b                                         ; $5f74: $04
    ld b, $30                                     ; $5f75: $06 $30
    inc b                                         ; $5f77: $04
    ld b, $32                                     ; $5f78: $06 $32
    inc b                                         ; $5f7a: $04
    ld b, $3b                                     ; $5f7b: $06 $3b
    inc b                                         ; $5f7d: $04
    ld b, $42                                     ; $5f7e: $06 $42
    inc b                                         ; $5f80: $04
    ld b, $4c                                     ; $5f81: $06 $4c
    inc b                                         ; $5f83: $04
    ld b, $55                                     ; $5f84: $06 $55
    inc b                                         ; $5f86: $04
    ld b, $5d                                     ; $5f87: $06 $5d
    inc b                                         ; $5f89: $04
    ld b, $5f                                     ; $5f8a: $06 $5f
    inc b                                         ; $5f8c: $04
    ld b, $76                                     ; $5f8d: $06 $76
    inc b                                         ; $5f8f: $04
    ld b, $81                                     ; $5f90: $06 $81
    inc b                                         ; $5f92: $04
    ld b, $8b                                     ; $5f93: $06 $8b
    inc b                                         ; $5f95: $04
    ld b, $94                                     ; $5f96: $06 $94
    inc b                                         ; $5f98: $04
    ld b, $9d                                     ; $5f99: $06 $9d
    inc b                                         ; $5f9b: $04
    ld b, $a5                                     ; $5f9c: $06 $a5
    inc b                                         ; $5f9e: $04
    ld b, $ac                                     ; $5f9f: $06 $ac
    inc b                                         ; $5fa1: $04
    ld b, $b6                                     ; $5fa2: $06 $b6
    inc b                                         ; $5fa4: $04
    ld b, $be                                     ; $5fa5: $06 $be
    inc b                                         ; $5fa7: $04
    ld b, $c5                                     ; $5fa8: $06 $c5
    inc b                                         ; $5faa: $04
    ld b, $cd                                     ; $5fab: $06 $cd
    inc b                                         ; $5fad: $04
    ld b, $d6                                     ; $5fae: $06 $d6
    inc b                                         ; $5fb0: $04
    ld b, $e0                                     ; $5fb1: $06 $e0
    inc b                                         ; $5fb3: $04
    ld b, $e2                                     ; $5fb4: $06 $e2
    inc b                                         ; $5fb6: $04
    ld b, $e4                                     ; $5fb7: $06 $e4
    inc b                                         ; $5fb9: $04
    ld b, $e6                                     ; $5fba: $06 $e6
    inc b                                         ; $5fbc: $04
    ld b, $e8                                     ; $5fbd: $06 $e8
    inc b                                         ; $5fbf: $04
    ld b, $ea                                     ; $5fc0: $06 $ea
    inc b                                         ; $5fc2: $04
    ld b, $ec                                     ; $5fc3: $06 $ec
    inc b                                         ; $5fc5: $04
    ld b, $ee                                     ; $5fc6: $06 $ee
    inc b                                         ; $5fc8: $04
    ld b, $f0                                     ; $5fc9: $06 $f0
    inc b                                         ; $5fcb: $04
    ld b, $f2                                     ; $5fcc: $06 $f2
    inc b                                         ; $5fce: $04
    ld b, $f4                                     ; $5fcf: $06 $f4

Jump_033_5fd1:
    inc b                                         ; $5fd1: $04
    ld b, $f6                                     ; $5fd2: $06 $f6
    inc b                                         ; $5fd4: $04
    ld b, $f8                                     ; $5fd5: $06 $f8
    inc b                                         ; $5fd7: $04
    ld b, $fa                                     ; $5fd8: $06 $fa
    inc b                                         ; $5fda: $04
    ld b, $fc                                     ; $5fdb: $06 $fc
    inc b                                         ; $5fdd: $04
    ld b, $fe                                     ; $5fde: $06 $fe
    inc b                                         ; $5fe0: $04
    ld b, $00                                     ; $5fe1: $06 $00
    dec b                                         ; $5fe3: $05
    ld b, $02                                     ; $5fe4: $06 $02
    dec b                                         ; $5fe6: $05
    ld b, $04                                     ; $5fe7: $06 $04
    dec b                                         ; $5fe9: $05
    ld b, $06                                     ; $5fea: $06 $06
    dec b                                         ; $5fec: $05
    ld b, $08                                     ; $5fed: $06 $08
    dec b                                         ; $5fef: $05
    ld b, $0a                                     ; $5ff0: $06 $0a
    dec b                                         ; $5ff2: $05
    ld b, $0c                                     ; $5ff3: $06 $0c
    dec b                                         ; $5ff5: $05
    ld b, $0e                                     ; $5ff6: $06 $0e
    dec b                                         ; $5ff8: $05
    ld b, $10                                     ; $5ff9: $06 $10
    dec b                                         ; $5ffb: $05
    ld b, $12                                     ; $5ffc: $06 $12
    dec b                                         ; $5ffe: $05
    ld b, $14                                     ; $5fff: $06 $14
    dec b                                         ; $6001: $05
    ld b, $16                                     ; $6002: $06 $16
    dec b                                         ; $6004: $05

Call_033_6005:
    ld b, $18                                     ; $6005: $06 $18
    dec b                                         ; $6007: $05
    ld b, $1a                                     ; $6008: $06 $1a
    dec b                                         ; $600a: $05
    ld b, $1c                                     ; $600b: $06 $1c
    dec b                                         ; $600d: $05
    ld b, $1e                                     ; $600e: $06 $1e
    dec b                                         ; $6010: $05
    ld b, $20                                     ; $6011: $06 $20
    dec b                                         ; $6013: $05
    ld b, $22                                     ; $6014: $06 $22
    dec b                                         ; $6016: $05
    ld b, $24                                     ; $6017: $06 $24
    dec b                                         ; $6019: $05
    ld b, $3c                                     ; $601a: $06 $3c
    dec b                                         ; $601c: $05
    ld b, $42                                     ; $601d: $06 $42
    dec b                                         ; $601f: $05
    ld b, $7f                                     ; $6020: $06 $7f
    dec b                                         ; $6022: $05
    ld b, $97                                     ; $6023: $06 $97
    dec b                                         ; $6025: $05
    ld b, $f6                                     ; $6026: $06 $f6
    dec b                                         ; $6028: $05
    ld b, $11                                     ; $6029: $06 $11
    ld b, $06                                     ; $602b: $06 $06
    ld h, [hl]                                    ; $602d: $66
    ld b, $06                                     ; $602e: $06 $06
    sub b                                         ; $6030: $90
    ld b, $06                                     ; $6031: $06 $06
    dec bc                                        ; $6033: $0b
    rlca                                          ; $6034: $07
    ld b, $1f                                     ; $6035: $06 $1f
    rlca                                          ; $6037: $07
    ld b, $5d                                     ; $6038: $06 $5d
    rlca                                          ; $603a: $07
    ld b, $ac                                     ; $603b: $06 $ac
    rlca                                          ; $603d: $07
    ld b, $c8                                     ; $603e: $06 $c8
    rlca                                          ; $6040: $07
    ld b, $10                                     ; $6041: $06 $10
    ld [$3806], sp                                ; $6043: $08 $06 $38
    ld [$6406], sp                                ; $6046: $08 $06 $64
    ld [$b006], sp                                ; $6049: $08 $06 $b0
    ld [$bd06], sp                                ; $604c: $08 $06 $bd
    ld [$d106], sp                                ; $604f: $08 $06 $d1
    ld [$e406], sp                                ; $6052: $08 $06 $e4
    ld [$f706], sp                                ; $6055: $08 $06 $f7
    ld [$0906], sp                                ; $6058: $08 $06 $09
    add hl, bc                                    ; $605b: $09
    ld b, $2c                                     ; $605c: $06 $2c
    add hl, bc                                    ; $605e: $09
    ld b, $7b                                     ; $605f: $06 $7b
    add hl, bc                                    ; $6061: $09
    ld b, $86                                     ; $6062: $06 $86
    add hl, bc                                    ; $6064: $09
    ld b, $d0                                     ; $6065: $06 $d0
    add hl, bc                                    ; $6067: $09
    ld b, $e1                                     ; $6068: $06 $e1
    add hl, bc                                    ; $606a: $09
    ld b, $fa                                     ; $606b: $06 $fa
    add hl, bc                                    ; $606d: $09
    ld b, $47                                     ; $606e: $06 $47
    ld a, [bc]                                    ; $6070: $0a
    ld b, $78                                     ; $6071: $06 $78
    ld a, [bc]                                    ; $6073: $0a
    ld b, $96                                     ; $6074: $06 $96
    ld a, [bc]                                    ; $6076: $0a
    ld b, $ad                                     ; $6077: $06 $ad
    ld a, [bc]                                    ; $6079: $0a
    ld b, $f5                                     ; $607a: $06 $f5
    ld a, [bc]                                    ; $607c: $0a
    ld b, $1f                                     ; $607d: $06 $1f
    dec bc                                        ; $607f: $0b
    ld b, $2d                                     ; $6080: $06 $2d
    dec bc                                        ; $6082: $0b
    ld b, $3c                                     ; $6083: $06 $3c
    dec bc                                        ; $6085: $0b
    ld b, $50                                     ; $6086: $06 $50
    dec bc                                        ; $6088: $0b
    ld b, $68                                     ; $6089: $06 $68
    dec bc                                        ; $608b: $0b
    ld b, $74                                     ; $608c: $06 $74
    dec bc                                        ; $608e: $0b
    ld b, $84                                     ; $608f: $06 $84
    dec bc                                        ; $6091: $0b
    ld b, $99                                     ; $6092: $06 $99
    dec bc                                        ; $6094: $0b
    ld b, $af                                     ; $6095: $06 $af
    dec bc                                        ; $6097: $0b
    ld b, $c5                                     ; $6098: $06 $c5
    dec bc                                        ; $609a: $0b
    ld b, $d6                                     ; $609b: $06 $d6
    dec bc                                        ; $609d: $0b
    ld b, $ed                                     ; $609e: $06 $ed
    dec bc                                        ; $60a0: $0b
    ld b, $0d                                     ; $60a1: $06 $0d
    inc c                                         ; $60a3: $0c
    ld b, $1e                                     ; $60a4: $06 $1e
    inc c                                         ; $60a6: $0c
    ld b, $36                                     ; $60a7: $06 $36
    inc c                                         ; $60a9: $0c
    ld b, $46                                     ; $60aa: $06 $46
    inc c                                         ; $60ac: $0c
    ld b, $5b                                     ; $60ad: $06 $5b
    inc c                                         ; $60af: $0c
    ld b, $70                                     ; $60b0: $06 $70
    inc c                                         ; $60b2: $0c
    ld b, $85                                     ; $60b3: $06 $85
    inc c                                         ; $60b5: $0c
    ld b, $9b                                     ; $60b6: $06 $9b
    inc c                                         ; $60b8: $0c
    ld b, $aa                                     ; $60b9: $06 $aa
    inc c                                         ; $60bb: $0c
    ld b, $d3                                     ; $60bc: $06 $d3
    inc c                                         ; $60be: $0c
    ld b, $e7                                     ; $60bf: $06 $e7
    inc c                                         ; $60c1: $0c
    ld b, $fe                                     ; $60c2: $06 $fe
    inc c                                         ; $60c4: $0c
    ld b, $17                                     ; $60c5: $06 $17
    dec c                                         ; $60c7: $0d
    ld b, $31                                     ; $60c8: $06 $31
    dec c                                         ; $60ca: $0d
    ld b, $68                                     ; $60cb: $06 $68
    dec c                                         ; $60cd: $0d
    ld b, $7c                                     ; $60ce: $06 $7c
    dec c                                         ; $60d0: $0d
    ld b, $b5                                     ; $60d1: $06 $b5
    dec c                                         ; $60d3: $0d
    ld b, $ce                                     ; $60d4: $06 $ce
    dec c                                         ; $60d6: $0d
    ld b, $df                                     ; $60d7: $06 $df
    dec c                                         ; $60d9: $0d
    ld b, $08                                     ; $60da: $06 $08
    ld c, $06                                     ; $60dc: $0e $06
    inc sp                                        ; $60de: $33
    ld c, $06                                     ; $60df: $0e $06
    ld c, a                                       ; $60e1: $4f
    ld c, $06                                     ; $60e2: $0e $06
    ld h, b                                       ; $60e4: $60
    ld c, $06                                     ; $60e5: $0e $06
    halt                                          ; $60e7: $76
    ld c, $06                                     ; $60e8: $0e $06
    adc l                                         ; $60ea: $8d
    ld c, $06                                     ; $60eb: $0e $06
    and e                                         ; $60ed: $a3
    ld c, $06                                     ; $60ee: $0e $06
    cp c                                          ; $60f0: $b9
    ld c, $06                                     ; $60f1: $0e $06
    call nc, Call_000_060e                        ; $60f3: $d4 $0e $06
    ldh a, [$0e]                                  ; $60f6: $f0 $0e
    ld b, $22                                     ; $60f8: $06 $22
    rrca                                          ; $60fa: $0f
    ld b, $35                                     ; $60fb: $06 $35
    rrca                                          ; $60fd: $0f
    ld b, $4d                                     ; $60fe: $06 $4d
    rrca                                          ; $6100: $0f
    ld b, $66                                     ; $6101: $06 $66
    rrca                                          ; $6103: $0f
    ld b, $8b                                     ; $6104: $06 $8b
    rrca                                          ; $6106: $0f
    ld b, $a4                                     ; $6107: $06 $a4
    rrca                                          ; $6109: $0f
    ld b, $c2                                     ; $610a: $06 $c2
    rrca                                          ; $610c: $0f
    ld b, $e1                                     ; $610d: $06 $e1
    rrca                                          ; $610f: $0f
    ld b, $ff                                     ; $6110: $06 $ff
    rrca                                          ; $6112: $0f
    ld b, $7d                                     ; $6113: $06 $7d
    db $10                                        ; $6115: $10
    ld b, $f6                                     ; $6116: $06 $f6
    db $10                                        ; $6118: $10
    ld b, $11                                     ; $6119: $06 $11
    ld de, $4006                                  ; $611b: $11 $06 $40
    ld de, $6906                                  ; $611e: $11 $06 $69
    ld de, $ae06                                  ; $6121: $11 $06 $ae
    ld de, $df06                                  ; $6124: $11 $06 $df
    ld de, $1506                                  ; $6127: $11 $06 $15
    ld [de], a                                    ; $612a: $12
    ld b, $3e                                     ; $612b: $06 $3e
    ld [de], a                                    ; $612d: $12
    ld b, $73                                     ; $612e: $06 $73
    ld [de], a                                    ; $6130: $12
    ld b, $99                                     ; $6131: $06 $99
    ld [de], a                                    ; $6133: $12
    ld b, $c1                                     ; $6134: $06 $c1
    ld [de], a                                    ; $6136: $12
    ld b, $e4                                     ; $6137: $06 $e4
    ld [de], a                                    ; $6139: $12
    ld b, $00                                     ; $613a: $06 $00
    inc de                                        ; $613c: $13
    ld b, $29                                     ; $613d: $06 $29
    inc de                                        ; $613f: $13
    ld b, $60                                     ; $6140: $06 $60
    inc de                                        ; $6142: $13
    ld b, $a1                                     ; $6143: $06 $a1
    inc de                                        ; $6145: $13
    ld b, $24                                     ; $6146: $06 $24
    inc d                                         ; $6148: $14
    ld b, $6e                                     ; $6149: $06 $6e
    inc d                                         ; $614b: $14
    ld b, $b0                                     ; $614c: $06 $b0
    inc d                                         ; $614e: $14
    ld b, $03                                     ; $614f: $06 $03
    dec d                                         ; $6151: $15
    ld b, $4d                                     ; $6152: $06 $4d
    dec d                                         ; $6154: $15
    ld b, $bf                                     ; $6155: $06 $bf
    dec d                                         ; $6157: $15
    ld b, $10                                     ; $6158: $06 $10
    ld d, $06                                     ; $615a: $16 $06
    ld [hl], b                                    ; $615c: $70
    ld d, $06                                     ; $615d: $16 $06
    pop bc                                        ; $615f: $c1
    ld d, $06                                     ; $6160: $16 $06
    ld [hl], $17                                  ; $6162: $36 $17
    ld b, $c2                                     ; $6164: $06 $c2
    rla                                           ; $6166: $17
    ld b, $15                                     ; $6167: $06 $15
    jr jr_033_6171                                ; $6169: $18 $06

    ld a, h                                       ; $616b: $7c
    jr @+$08                                      ; $616c: $18 $06

    db $db                                        ; $616e: $db
    jr @+$08                                      ; $616f: $18 $06

jr_033_6171:
    ld c, d                                       ; $6171: $4a
    add hl, de                                    ; $6172: $19
    ld b, $a2                                     ; $6173: $06 $a2
    add hl, de                                    ; $6175: $19
    ld b, $01                                     ; $6176: $06 $01
    ld a, [de]                                    ; $6178: $1a
    ld b, $3c                                     ; $6179: $06 $3c
    ld a, [de]                                    ; $617b: $1a
    ld b, $93                                     ; $617c: $06 $93
    ld a, [de]                                    ; $617e: $1a
    ld b, $f7                                     ; $617f: $06 $f7
    ld a, [de]                                    ; $6181: $1a
    ld b, $51                                     ; $6182: $06 $51
    dec de                                        ; $6184: $1b
    ld b, $b5                                     ; $6185: $06 $b5
    dec de                                        ; $6187: $1b
    ld b, $1e                                     ; $6188: $06 $1e
    inc e                                         ; $618a: $1c
    ld b, $84                                     ; $618b: $06 $84
    inc e                                         ; $618d: $1c
    ld b, $c6                                     ; $618e: $06 $c6
    inc e                                         ; $6190: $1c
    ld b, $de                                     ; $6191: $06 $de
    inc e                                         ; $6193: $1c
    ld b, $e3                                     ; $6194: $06 $e3
    inc e                                         ; $6196: $1c
    ld b, $e8                                     ; $6197: $06 $e8
    inc e                                         ; $6199: $1c
    ld b, $ef                                     ; $619a: $06 $ef
    inc e                                         ; $619c: $1c
    ld b, $fe                                     ; $619d: $06 $fe
    inc e                                         ; $619f: $1c
    ld b, $0d                                     ; $61a0: $06 $0d
    dec e                                         ; $61a2: $1d
    ld b, $49                                     ; $61a3: $06 $49
    dec e                                         ; $61a5: $1d
    ld b, $91                                     ; $61a6: $06 $91
    dec e                                         ; $61a8: $1d
    ld b, $f8                                     ; $61a9: $06 $f8
    dec e                                         ; $61ab: $1d
    ld b, $48                                     ; $61ac: $06 $48
    ld e, $06                                     ; $61ae: $1e $06
    sbc [hl]                                      ; $61b0: $9e
    ld e, $06                                     ; $61b1: $1e $06
    push de                                       ; $61b3: $d5
    ld e, $06                                     ; $61b4: $1e $06
    daa                                           ; $61b6: $27
    rra                                           ; $61b7: $1f
    ld b, $71                                     ; $61b8: $06 $71
    rra                                           ; $61ba: $1f
    ld b, $ae                                     ; $61bb: $06 $ae
    rra                                           ; $61bd: $1f
    ld b, $e1                                     ; $61be: $06 $e1
    rra                                           ; $61c0: $1f
    ld b, $0e                                     ; $61c1: $06 $0e
    jr nz, jr_033_61cb                            ; $61c3: $20 $06

    ld sp, $0620                                  ; $61c5: $31 $20 $06
    ld e, [hl]                                    ; $61c8: $5e
    jr nz, jr_033_61d1                            ; $61c9: $20 $06

jr_033_61cb:
    add c                                         ; $61cb: $81
    jr nz, jr_033_61d4                            ; $61cc: $20 $06

    xor b                                         ; $61ce: $a8
    jr nz, @+$08                                  ; $61cf: $20 $06

jr_033_61d1:
    call z, $0620                                 ; $61d1: $cc $20 $06

jr_033_61d4:
    rlca                                          ; $61d4: $07
    ld hl, $1f06                                  ; $61d5: $21 $06 $1f
    ld hl, $3506                                  ; $61d8: $21 $06 $35
    ld hl, $4c06                                  ; $61db: $21 $06 $4c
    ld hl, $7a06                                  ; $61de: $21 $06 $7a
    ld hl, $a106                                  ; $61e1: $21 $06 $a1
    ld hl, $c606                                  ; $61e4: $21 $06 $c6
    ld hl, $e006                                  ; $61e7: $21 $06 $e0
    ld hl, $1a06                                  ; $61ea: $21 $06 $1a
    ld [hl+], a                                   ; $61ed: $22
    ld b, $3e                                     ; $61ee: $06 $3e
    ld [hl+], a                                   ; $61f0: $22
    ld b, $82                                     ; $61f1: $06 $82
    ld [hl+], a                                   ; $61f3: $22
    ld b, $ad                                     ; $61f4: $06 $ad
    ld [hl+], a                                   ; $61f6: $22
    ld b, $d3                                     ; $61f7: $06 $d3
    ld [hl+], a                                   ; $61f9: $22
    ld b, $ed                                     ; $61fa: $06 $ed
    ld [hl+], a                                   ; $61fc: $22
    ld b, $09                                     ; $61fd: $06 $09
    inc hl                                        ; $61ff: $23
    ld b, $1e                                     ; $6200: $06 $1e
    inc hl                                        ; $6202: $23
    ld b, $40                                     ; $6203: $06 $40
    inc hl                                        ; $6205: $23
    ld b, $a7                                     ; $6206: $06 $a7
    inc hl                                        ; $6208: $23
    ld b, $d1                                     ; $6209: $06 $d1
    inc hl                                        ; $620b: $23
    ld b, $f9                                     ; $620c: $06 $f9
    inc hl                                        ; $620e: $23
    ld b, $03                                     ; $620f: $06 $03
    inc h                                         ; $6211: $24
    ld b, $11                                     ; $6212: $06 $11
    inc h                                         ; $6214: $24
    ld b, $17                                     ; $6215: $06 $17
    inc h                                         ; $6217: $24
    ld b, $1c                                     ; $6218: $06 $1c
    inc h                                         ; $621a: $24
    ld b, $22                                     ; $621b: $06 $22
    inc h                                         ; $621d: $24
    ld b, $29                                     ; $621e: $06 $29
    inc h                                         ; $6220: $24
    ld b, $33                                     ; $6221: $06 $33
    inc h                                         ; $6223: $24
    ld b, $45                                     ; $6224: $06 $45
    inc h                                         ; $6226: $24
    ld b, $58                                     ; $6227: $06 $58
    inc h                                         ; $6229: $24
    ld b, $6d                                     ; $622a: $06 $6d
    inc h                                         ; $622c: $24
    ld b, $75                                     ; $622d: $06 $75
    inc h                                         ; $622f: $24
    ld b, $83                                     ; $6230: $06 $83
    inc h                                         ; $6232: $24
    ld b, $91                                     ; $6233: $06 $91
    inc h                                         ; $6235: $24
    ld b, $ab                                     ; $6236: $06 $ab
    inc h                                         ; $6238: $24
    ld b, $ca                                     ; $6239: $06 $ca
    inc h                                         ; $623b: $24
    ld b, $f0                                     ; $623c: $06 $f0
    inc h                                         ; $623e: $24
    ld b, $05                                     ; $623f: $06 $05
    dec h                                         ; $6241: $25
    ld b, $23                                     ; $6242: $06 $23
    dec h                                         ; $6244: $25
    ld b, $39                                     ; $6245: $06 $39
    dec h                                         ; $6247: $25
    ld b, $50                                     ; $6248: $06 $50
    dec h                                         ; $624a: $25
    ld b, $7a                                     ; $624b: $06 $7a
    dec h                                         ; $624d: $25
    ld b, $96                                     ; $624e: $06 $96
    dec h                                         ; $6250: $25
    ld b, $c8                                     ; $6251: $06 $c8
    dec h                                         ; $6253: $25
    ld b, $da                                     ; $6254: $06 $da
    dec h                                         ; $6256: $25
    ld b, $0d                                     ; $6257: $06 $0d
    ld h, $06                                     ; $6259: $26 $06
    dec e                                         ; $625b: $1d
    ld h, $06                                     ; $625c: $26 $06
    add hl, hl                                    ; $625e: $29
    ld h, $06                                     ; $625f: $26 $06
    ld a, $26                                     ; $6261: $3e $26
    ld b, $4b                                     ; $6263: $06 $4b
    ld h, $06                                     ; $6265: $26 $06
    ld d, a                                       ; $6267: $57
    ld h, $06                                     ; $6268: $26 $06
    sbc d                                         ; $626a: $9a
    ld h, $06                                     ; $626b: $26 $06
    db $d3                                        ; $626d: $d3
    ld h, $06                                     ; $626e: $26 $06
    ld d, l                                       ; $6270: $55
    daa                                           ; $6271: $27
    ld b, $69                                     ; $6272: $06 $69
    daa                                           ; $6274: $27
    ld b, $76                                     ; $6275: $06 $76
    daa                                           ; $6277: $27
    ld b, $a1                                     ; $6278: $06 $a1
    daa                                           ; $627a: $27
    ld b, $b0                                     ; $627b: $06 $b0
    daa                                           ; $627d: $27
    ld b, $bc                                     ; $627e: $06 $bc
    daa                                           ; $6280: $27
    ld b, $c3                                     ; $6281: $06 $c3
    daa                                           ; $6283: $27
    ld b, $d6                                     ; $6284: $06 $d6
    daa                                           ; $6286: $27
    ld b, $eb                                     ; $6287: $06 $eb
    daa                                           ; $6289: $27
    ld b, $f7                                     ; $628a: $06 $f7
    daa                                           ; $628c: $27
    ld b, $fe                                     ; $628d: $06 $fe
    daa                                           ; $628f: $27
    ld b, $06                                     ; $6290: $06 $06
    jr z, jr_033_629a                             ; $6292: $28 $06

    rrca                                          ; $6294: $0f
    jr z, jr_033_629d                             ; $6295: $28 $06

    dec d                                         ; $6297: $15
    jr z, jr_033_62a0                             ; $6298: $28 $06

jr_033_629a:
    rla                                           ; $629a: $17
    jr z, jr_033_62a3                             ; $629b: $28 $06

jr_033_629d:
    add hl, de                                    ; $629d: $19
    jr z, jr_033_62a6                             ; $629e: $28 $06

jr_033_62a0:
    dec de                                        ; $62a0: $1b
    jr z, jr_033_62a9                             ; $62a1: $28 $06

jr_033_62a3:
    dec e                                         ; $62a3: $1d
    jr z, jr_033_62ac                             ; $62a4: $28 $06

jr_033_62a6:
    rra                                           ; $62a6: $1f
    jr z, jr_033_62af                             ; $62a7: $28 $06

jr_033_62a9:
    ld hl, $0628                                  ; $62a9: $21 $28 $06

jr_033_62ac:
    inc hl                                        ; $62ac: $23
    jr z, jr_033_62b5                             ; $62ad: $28 $06

jr_033_62af:
    dec h                                         ; $62af: $25
    jr z, jr_033_62b8                             ; $62b0: $28 $06

    daa                                           ; $62b2: $27
    jr z, jr_033_62bb                             ; $62b3: $28 $06

jr_033_62b5:
    add hl, hl                                    ; $62b5: $29
    jr z, jr_033_62be                             ; $62b6: $28 $06

jr_033_62b8:
    dec hl                                        ; $62b8: $2b
    jr z, jr_033_62c1                             ; $62b9: $28 $06

jr_033_62bb:
    dec l                                         ; $62bb: $2d
    jr z, jr_033_62c4                             ; $62bc: $28 $06

jr_033_62be:
    cpl                                           ; $62be: $2f
    jr z, jr_033_62c7                             ; $62bf: $28 $06

jr_033_62c1:
    ld sp, $0628                                  ; $62c1: $31 $28 $06

jr_033_62c4:
    inc sp                                        ; $62c4: $33
    jr z, jr_033_62cd                             ; $62c5: $28 $06

jr_033_62c7:
    dec [hl]                                      ; $62c7: $35
    jr z, jr_033_62d0                             ; $62c8: $28 $06

    scf                                           ; $62ca: $37
    jr z, jr_033_62d3                             ; $62cb: $28 $06

jr_033_62cd:
    add hl, sp                                    ; $62cd: $39
    jr z, jr_033_62d6                             ; $62ce: $28 $06

jr_033_62d0:
    dec sp                                        ; $62d0: $3b
    jr z, jr_033_62d9                             ; $62d1: $28 $06

jr_033_62d3:
    dec a                                         ; $62d3: $3d
    jr z, jr_033_62dc                             ; $62d4: $28 $06

jr_033_62d6:
    ccf                                           ; $62d6: $3f
    jr z, jr_033_62df                             ; $62d7: $28 $06

jr_033_62d9:
    ld b, c                                       ; $62d9: $41
    jr z, jr_033_62e2                             ; $62da: $28 $06

jr_033_62dc:
    ld b, e                                       ; $62dc: $43
    jr z, jr_033_62e5                             ; $62dd: $28 $06

jr_033_62df:
    ld b, l                                       ; $62df: $45
    jr z, jr_033_62e8                             ; $62e0: $28 $06

jr_033_62e2:
    ld b, a                                       ; $62e2: $47
    jr z, jr_033_62eb                             ; $62e3: $28 $06

jr_033_62e5:
    ld c, c                                       ; $62e5: $49
    jr z, jr_033_62ee                             ; $62e6: $28 $06

jr_033_62e8:
    ld c, e                                       ; $62e8: $4b
    jr z, jr_033_62f1                             ; $62e9: $28 $06

jr_033_62eb:
    ld c, l                                       ; $62eb: $4d
    jr z, jr_033_62f4                             ; $62ec: $28 $06

jr_033_62ee:
    ld c, a                                       ; $62ee: $4f
    jr z, jr_033_62f7                             ; $62ef: $28 $06

jr_033_62f1:
    ld d, c                                       ; $62f1: $51
    jr z, jr_033_62fa                             ; $62f2: $28 $06

jr_033_62f4:
    ld d, e                                       ; $62f4: $53
    jr z, jr_033_62fd                             ; $62f5: $28 $06

jr_033_62f7:
    ld d, l                                       ; $62f7: $55
    jr z, jr_033_6300                             ; $62f8: $28 $06

jr_033_62fa:
    ld d, a                                       ; $62fa: $57
    jr z, jr_033_6303                             ; $62fb: $28 $06

jr_033_62fd:
    ld e, c                                       ; $62fd: $59
    jr z, jr_033_6306                             ; $62fe: $28 $06

jr_033_6300:
    ld e, e                                       ; $6300: $5b
    jr z, jr_033_6309                             ; $6301: $28 $06

jr_033_6303:
    ld e, l                                       ; $6303: $5d
    jr z, jr_033_630c                             ; $6304: $28 $06

jr_033_6306:
    ld e, a                                       ; $6306: $5f
    jr z, jr_033_630f                             ; $6307: $28 $06

jr_033_6309:
    ld h, c                                       ; $6309: $61
    jr z, jr_033_6312                             ; $630a: $28 $06

jr_033_630c:
    ld h, e                                       ; $630c: $63
    jr z, jr_033_6315                             ; $630d: $28 $06

jr_033_630f:
    ld h, l                                       ; $630f: $65
    jr z, jr_033_6318                             ; $6310: $28 $06

jr_033_6312:
    ld h, a                                       ; $6312: $67
    jr z, jr_033_631b                             ; $6313: $28 $06

jr_033_6315:
    ld l, c                                       ; $6315: $69
    jr z, jr_033_631e                             ; $6316: $28 $06

jr_033_6318:
    ld [hl], b                                    ; $6318: $70
    jr z, jr_033_6321                             ; $6319: $28 $06

jr_033_631b:
    ld a, l                                       ; $631b: $7d
    jr z, jr_033_6324                             ; $631c: $28 $06

jr_033_631e:
    adc [hl]                                      ; $631e: $8e
    jr z, jr_033_6327                             ; $631f: $28 $06

jr_033_6321:
    sbc l                                         ; $6321: $9d
    jr z, jr_033_632a                             ; $6322: $28 $06

jr_033_6324:
    xor h                                         ; $6324: $ac
    jr z, jr_033_632d                             ; $6325: $28 $06

jr_033_6327:
    cp b                                          ; $6327: $b8
    jr z, jr_033_6330                             ; $6328: $28 $06

jr_033_632a:
    ret z                                         ; $632a: $c8

    jr z, jr_033_6333                             ; $632b: $28 $06

jr_033_632d:
    jp z, $0628                                   ; $632d: $ca $28 $06

jr_033_6330:
    call z, $0628                                 ; $6330: $cc $28 $06

jr_033_6333:
    adc $28                                       ; $6333: $ce $28
    ld b, $d0                                     ; $6335: $06 $d0
    jr z, jr_033_633f                             ; $6337: $28 $06

    jp nc, $0628                                  ; $6339: $d2 $28 $06

    call nc, $0628                                ; $633c: $d4 $28 $06

jr_033_633f:
    sub $28                                       ; $633f: $d6 $28
    ld b, $d8                                     ; $6341: $06 $d8
    jr z, jr_033_634b                             ; $6343: $28 $06

    jp c, $0628                                   ; $6345: $da $28 $06

    call c, $0628                                 ; $6348: $dc $28 $06

jr_033_634b:
    sbc $28                                       ; $634b: $de $28
    ld b, $e8                                     ; $634d: $06 $e8
    jr z, jr_033_6357                             ; $634f: $28 $06

    ld [$0628], a                                 ; $6351: $ea $28 $06
    db $ec                                        ; $6354: $ec
    jr z, jr_033_635d                             ; $6355: $28 $06

jr_033_6357:
    xor $28                                       ; $6357: $ee $28
    ld b, $f0                                     ; $6359: $06 $f0
    jr z, jr_033_6363                             ; $635b: $28 $06

jr_033_635d:
    ld a, [c]                                     ; $635d: $f2
    jr z, @+$08                                   ; $635e: $28 $06

    db $f4                                        ; $6360: $f4
    jr z, jr_033_6369                             ; $6361: $28 $06

jr_033_6363:
    or $28                                        ; $6363: $f6 $28
    ld b, $f8                                     ; $6365: $06 $f8
    jr z, jr_033_636f                             ; $6367: $28 $06

jr_033_6369:
    ld a, [$0628]                                 ; $6369: $fa $28 $06
    db $fc                                        ; $636c: $fc
    jr z, @+$08                                   ; $636d: $28 $06

jr_033_636f:
    cp $28                                        ; $636f: $fe $28
    ld b, $00                                     ; $6371: $06 $00
    add hl, hl                                    ; $6373: $29
    ld b, $02                                     ; $6374: $06 $02
    add hl, hl                                    ; $6376: $29
    ld b, $04                                     ; $6377: $06 $04
    add hl, hl                                    ; $6379: $29
    ld b, $06                                     ; $637a: $06 $06
    add hl, hl                                    ; $637c: $29
    ld b, $08                                     ; $637d: $06 $08
    add hl, hl                                    ; $637f: $29
    ld b, $0a                                     ; $6380: $06 $0a
    add hl, hl                                    ; $6382: $29
    ld b, $0c                                     ; $6383: $06 $0c
    add hl, hl                                    ; $6385: $29
    ld b, $0e                                     ; $6386: $06 $0e
    add hl, hl                                    ; $6388: $29
    ld b, $10                                     ; $6389: $06 $10
    add hl, hl                                    ; $638b: $29
    ld b, $12                                     ; $638c: $06 $12
    add hl, hl                                    ; $638e: $29
    ld b, $22                                     ; $638f: $06 $22
    add hl, hl                                    ; $6391: $29
    ld b, $24                                     ; $6392: $06 $24
    add hl, hl                                    ; $6394: $29
    ld b, $32                                     ; $6395: $06 $32
    add hl, hl                                    ; $6397: $29
    ld b, $3c                                     ; $6398: $06 $3c
    add hl, hl                                    ; $639a: $29
    ld b, $44                                     ; $639b: $06 $44
    add hl, hl                                    ; $639d: $29
    ld b, $53                                     ; $639e: $06 $53
    add hl, hl                                    ; $63a0: $29
    ld b, $55                                     ; $63a1: $06 $55
    add hl, hl                                    ; $63a3: $29
    ld b, $57                                     ; $63a4: $06 $57
    add hl, hl                                    ; $63a6: $29
    ld b, $59                                     ; $63a7: $06 $59
    add hl, hl                                    ; $63a9: $29
    ld b, $5b                                     ; $63aa: $06 $5b
    add hl, hl                                    ; $63ac: $29
    ld b, $5d                                     ; $63ad: $06 $5d
    add hl, hl                                    ; $63af: $29
    ld b, $5f                                     ; $63b0: $06 $5f
    add hl, hl                                    ; $63b2: $29
    ld b, $61                                     ; $63b3: $06 $61
    add hl, hl                                    ; $63b5: $29
    ld b, $63                                     ; $63b6: $06 $63
    add hl, hl                                    ; $63b8: $29
    ld b, $65                                     ; $63b9: $06 $65
    add hl, hl                                    ; $63bb: $29
    ld b, $67                                     ; $63bc: $06 $67
    add hl, hl                                    ; $63be: $29
    ld b, $69                                     ; $63bf: $06 $69
    add hl, hl                                    ; $63c1: $29
    ld b, $6b                                     ; $63c2: $06 $6b
    add hl, hl                                    ; $63c4: $29
    ld b, $6d                                     ; $63c5: $06 $6d
    add hl, hl                                    ; $63c7: $29
    ld b, $6f                                     ; $63c8: $06 $6f
    add hl, hl                                    ; $63ca: $29
    ld b, $71                                     ; $63cb: $06 $71
    add hl, hl                                    ; $63cd: $29
    ld b, $73                                     ; $63ce: $06 $73
    add hl, hl                                    ; $63d0: $29
    ld b, $75                                     ; $63d1: $06 $75
    add hl, hl                                    ; $63d3: $29
    ld b, $77                                     ; $63d4: $06 $77
    add hl, hl                                    ; $63d6: $29
    ld b, $7c                                     ; $63d7: $06 $7c

jr_033_63d9:
    add hl, hl                                    ; $63d9: $29
    ld b, $7e                                     ; $63da: $06 $7e
    add hl, hl                                    ; $63dc: $29
    ld b, $80                                     ; $63dd: $06 $80
    add hl, hl                                    ; $63df: $29
    ld b, $82                                     ; $63e0: $06 $82
    add hl, hl                                    ; $63e2: $29
    ld b, $84                                     ; $63e3: $06 $84
    add hl, hl                                    ; $63e5: $29
    ld e, c                                       ; $63e6: $59
    ld d, a                                       ; $63e7: $57
    ld e, b                                       ; $63e8: $58
    add c                                         ; $63e9: $81
    add e                                         ; $63ea: $83
    adc [hl]                                      ; $63eb: $8e
    and l                                         ; $63ec: $a5
    and [hl]                                      ; $63ed: $a6
    and a                                         ; $63ee: $a7
    xor b                                         ; $63ef: $a8
    xor c                                         ; $63f0: $a9
    xor e                                         ; $63f1: $ab
    xor l                                         ; $63f2: $ad
    xor a                                         ; $63f3: $af
    or b                                          ; $63f4: $b0
    or c                                          ; $63f5: $b1
    or d                                          ; $63f6: $b2
    or e                                          ; $63f7: $b3
    or h                                          ; $63f8: $b4
    or l                                          ; $63f9: $b5
    or [hl]                                       ; $63fa: $b6
    or a                                          ; $63fb: $b7
    cp b                                          ; $63fc: $b8

Jump_033_63fd:
    cp c                                          ; $63fd: $b9
    cp d                                          ; $63fe: $ba
    cp e                                          ; $63ff: $bb
    cp a                                          ; $6400: $bf
    ret nz                                        ; $6401: $c0

jr_033_6402:
    jp $cac6                                      ; $6402: $c3 $c6 $ca


    call z, $cfce                                 ; $6405: $cc $ce $cf
    pop de                                        ; $6408: $d1
    jp nc, $d5d4                                  ; $6409: $d2 $d4 $d5

    sub $d8                                       ; $640c: $d6 $d8
    reti                                          ; $640e: $d9


    jp c, $dedc                                   ; $640f: $da $dc $de

    rst $18                                       ; $6412: $df
    ldh [$ea], a                                  ; $6413: $e0 $ea
    pop af                                        ; $6415: $f1
    ld hl, sp-$02                                 ; $6416: $f8 $fe
    nop                                           ; $6418: $00
    and c                                         ; $6419: $a1
    pop bc                                        ; $641a: $c1
    jp nz, $cbc5                                  ; $641b: $c2 $c5 $cb

    call $d7d0                                    ; $641e: $cd $d0 $d7
    ld sp, hl                                     ; $6421: $f9
    ld bc, $0302                                  ; $6422: $01 $02 $03
    inc b                                         ; $6425: $04
    dec b                                         ; $6426: $05
    ld b, $07                                     ; $6427: $06 $07
    ld [$0a09], sp                                ; $6429: $08 $09 $0a
    dec bc                                        ; $642c: $0b
    inc c                                         ; $642d: $0c
    dec c                                         ; $642e: $0d
    ld c, $0f                                     ; $642f: $0e $0f
    db $10                                        ; $6431: $10
    ld de, $1312                                  ; $6432: $11 $12 $13
    inc d                                         ; $6435: $14
    dec d                                         ; $6436: $15
    ld d, $17                                     ; $6437: $16 $17
    jr jr_033_6402                                ; $6439: $18 $c7

    ret                                           ; $643b: $c9


    db $fd                                        ; $643c: $fd
    call nz, $f0c8                                ; $643d: $c4 $c8 $f0
    or $19                                        ; $6440: $f6 $19
    ld a, [de]                                    ; $6442: $1a
    dec de                                        ; $6443: $1b
    inc e                                         ; $6444: $1c
    dec e                                         ; $6445: $1d
    ld e, $1f                                     ; $6446: $1e $1f
    jr nz, jr_033_646b                            ; $6448: $20 $21

    ld [hl+], a                                   ; $644a: $22
    inc hl                                        ; $644b: $23
    inc h                                         ; $644c: $24
    dec h                                         ; $644d: $25
    ld h, $27                                     ; $644e: $26 $27
    jr z, jr_033_63d9                             ; $6450: $28 $87

    ld a, [$d329]                                 ; $6452: $fa $29 $d3
    ld a, [hl+]                                   ; $6455: $2a
    dec hl                                        ; $6456: $2b
    inc l                                         ; $6457: $2c
    dec l                                         ; $6458: $2d
    ld l, $2f                                     ; $6459: $2e $2f
    jr nc, jr_033_648e                            ; $645b: $30 $31

    ld [hl-], a                                   ; $645d: $32
    inc sp                                        ; $645e: $33
    inc [hl]                                      ; $645f: $34
    xor h                                         ; $6460: $ac
    db $eb                                        ; $6461: $eb
    rst $30                                       ; $6462: $f7
    and $35                                       ; $6463: $e6 $35
    ld [hl], $e2                                  ; $6465: $36 $e2
    scf                                           ; $6467: $37
    xor [hl]                                      ; $6468: $ae
    rst $20                                       ; $6469: $e7
    rst $38                                       ; $646a: $ff

jr_033_646b:
    jr c, jr_033_64a6                             ; $646b: $38 $39

    ld a, [hl-]                                   ; $646d: $3a
    dec sp                                        ; $646e: $3b
    db $ed                                        ; $646f: $ed
    inc a                                         ; $6470: $3c
    rst $28                                       ; $6471: $ef
    dec a                                         ; $6472: $3d
    ld a, $ec                                     ; $6473: $3e $ec
    ccf                                           ; $6475: $3f
    db $e3                                        ; $6476: $e3
    push af                                       ; $6477: $f5
    db $e4                                        ; $6478: $e4
    ld b, b                                       ; $6479: $40
    ld b, c                                       ; $647a: $41
    ld b, d                                       ; $647b: $42
    ld b, e                                       ; $647c: $43
    ld b, h                                       ; $647d: $44
    ld b, l                                       ; $647e: $45
    add sp, -$1f                                  ; $647f: $e8 $e1
    db $f4                                        ; $6481: $f4
    di                                            ; $6482: $f3
    ld b, [hl]                                    ; $6483: $46
    ld b, a                                       ; $6484: $47
    ld a, [c]                                     ; $6485: $f2
    ld c, b                                       ; $6486: $48
    jp hl                                         ; $6487: $e9


    ld c, c                                       ; $6488: $49
    ld c, d                                       ; $6489: $4a
    xor $4b                                       ; $648a: $ee $4b
    ld c, h                                       ; $648c: $4c
    ld c, l                                       ; $648d: $4d

jr_033_648e:
    ld c, [hl]                                    ; $648e: $4e
    ld c, a                                       ; $648f: $4f
    push hl                                       ; $6490: $e5
    ld d, b                                       ; $6491: $50
    and b                                         ; $6492: $a0
    ld d, c                                       ; $6493: $51
    ld d, d                                       ; $6494: $52
    ld d, e                                       ; $6495: $53
    ld d, h                                       ; $6496: $54
    ld d, l                                       ; $6497: $55
    ld d, [hl]                                    ; $6498: $56
    sub e                                         ; $6499: $93
    ld c, [hl]                                    ; $649a: $4e
    dec sp                                        ; $649b: $3b
    ret                                           ; $649c: $c9


    db $e4                                        ; $649d: $e4
    db $d3                                        ; $649e: $d3
    ld c, [hl]                                    ; $649f: $4e
    ld [hl-], a                                   ; $64a0: $32
    ld sp, hl                                     ; $64a1: $f9
    and h                                         ; $64a2: $a4
    sub e                                         ; $64a3: $93
    ld c, [hl]                                    ; $64a4: $4e
    sub [hl]                                      ; $64a5: $96

jr_033_64a6:
    inc bc                                        ; $64a6: $03
    adc h                                         ; $64a7: $8c
    sub [hl]                                      ; $64a8: $96
    db $e3                                        ; $64a9: $e3
    ld l, a                                       ; $64aa: $6f
    daa                                           ; $64ab: $27
    ld l, [hl]                                    ; $64ac: $6e
    sub d                                         ; $64ad: $92
    dec d                                         ; $64ae: $15
    jr nz, jr_033_6530                            ; $64af: $20 $7f

    add hl, sp                                    ; $64b1: $39
    or e                                          ; $64b2: $b3
    ld a, l                                       ; $64b3: $7d

Call_033_64b4:
Jump_033_64b4:
    jr nc, jr_033_64f8                            ; $64b4: $30 $42

    rst $20                                       ; $64b6: $e7
    or $e9                                        ; $64b7: $f6 $e9
    ret nc                                        ; $64b9: $d0

    ld a, c                                       ; $64ba: $79
    ld b, $f4                                     ; $64bb: $06 $f4
    rlca                                          ; $64bd: $07
    ld c, a                                       ; $64be: $4f
    rst $18                                       ; $64bf: $df
    ld c, c                                       ; $64c0: $49
    and a                                         ; $64c1: $a7
    sbc l                                         ; $64c2: $9d
    ld h, h                                       ; $64c3: $64
    ld a, [c]                                     ; $64c4: $f2
    ld l, c                                       ; $64c5: $69
    ld h, $99                                     ; $64c6: $26 $99
    ld a, h                                       ; $64c8: $7c
    jp nc, $2749                                  ; $64c9: $d2 $49 $27

    rlc c                                         ; $64cc: $cb $01
    daa                                           ; $64ce: $27
    ld a, h                                       ; $64cf: $7c
    push bc                                       ; $64d0: $c5
    ld e, d                                       ; $64d1: $5a
    ld [hl], b                                    ; $64d2: $70
    ld b, b                                       ; $64d3: $40
    inc d                                         ; $64d4: $14
    ld a, a                                       ; $64d5: $7f
    add hl, sp                                    ; $64d6: $39
    inc hl                                        ; $64d7: $23
    cp [hl]                                       ; $64d8: $be
    add b                                         ; $64d9: $80
    ld [hl], e                                    ; $64da: $73
    adc h                                         ; $64db: $8c
    adc $bc                                       ; $64dc: $ce $bc
    ld [$757f], sp                                ; $64de: $08 $7f $75
    ld c, $b3                                     ; $64e1: $0e $b3
    ret nc                                        ; $64e3: $d0

    ldh a, [$f3]                                  ; $64e4: $f0 $f3
    and $49                                       ; $64e6: $e6 $49
    and e                                         ; $64e8: $a3
    and [hl]                                      ; $64e9: $a6
    rst $28                                       ; $64ea: $ef
    ld c, h                                       ; $64eb: $4c
    sub e                                         ; $64ec: $93
    ld c, l                                       ; $64ed: $4d
    ld [hl-], a                                   ; $64ee: $32
    db $d3                                        ; $64ef: $d3
    db $e4                                        ; $64f0: $e4
    call $2301                                    ; $64f1: $cd $01 $23
    ld b, a                                       ; $64f4: $47
    ld c, l                                       ; $64f5: $4d
    rst $18                                       ; $64f6: $df
    sbc c                                         ; $64f7: $99

jr_033_64f8:
    ld h, $9b                                     ; $64f8: $26 $9b
    ld h, h                                       ; $64fa: $64
    and [hl]                                      ; $64fb: $a6
    ret                                           ; $64fc: $c9


jr_033_64fd:
    sbc e                                         ; $64fd: $9b
    inc bc                                        ; $64fe: $03
    or e                                          ; $64ff: $b3
    ret nc                                        ; $6500: $d0

    jr @-$0e                                      ; $6501: $18 $f0

    ld [$f3ab], a                                 ; $6503: $ea $ab $f3
    db $ec                                        ; $6506: $ec

jr_033_6507:
    sub l                                         ; $6507: $95
    inc bc                                        ; $6508: $03
    or e                                          ; $6509: $b3
    ret nc                                        ; $650a: $d0

    jr jr_033_64fd                                ; $650b: $18 $f0

    ld [$49ab], a                                 ; $650d: $ea $ab $49
    ld [$01ca], a                                 ; $6510: $ea $ca $01
    or e                                          ; $6513: $b3
    ret nc                                        ; $6514: $d0

    jr jr_033_6507                                ; $6515: $18 $f0

    ld [$73ab], a                                 ; $6517: $ea $ab $73
    ld c, e                                       ; $651a: $4b
    db $fc                                        ; $651b: $fc
    inc e                                         ; $651c: $1c
    di                                            ; $651d: $f3
    ld e, d                                       ; $651e: $5a
    adc [hl]                                      ; $651f: $8e
    and b                                         ; $6520: $a0
    inc [hl]                                      ; $6521: $34
    ld l, $85                                     ; $6522: $2e $85
    sbc l                                         ; $6524: $9d
    ld h, a                                       ; $6525: $67
    xor a                                         ; $6526: $af
    inc e                                         ; $6527: $1c
    di                                            ; $6528: $f3
    ld e, d                                       ; $6529: $5a
    adc [hl]                                      ; $652a: $8e
    and b                                         ; $652b: $a0
    inc [hl]                                      ; $652c: $34
    ld l, $85                                     ; $652d: $2e $85
    ld c, l                                       ; $652f: $4d

jr_033_6530:
    ld d, d                                       ; $6530: $52
    ld d, a                                       ; $6531: $57
    ld c, $f3                                     ; $6532: $0e $f3
    ld e, d                                       ; $6534: $5a
    adc [hl]                                      ; $6535: $8e
    and b                                         ; $6536: $a0
    inc [hl]                                      ; $6537: $34
    ld l, $85                                     ; $6538: $2e $85
    sbc l                                         ; $653a: $9d
    ld e, e                                       ; $653b: $5b
    ld [c], a                                     ; $653c: $e2
    rst $20                                       ; $653d: $e7
    di                                            ; $653e: $f3
    ld e, d                                       ; $653f: $5a
    ld [hl], h                                    ; $6540: $74
    inc e                                         ; $6541: $1c
    ld b, c                                       ; $6542: $41
    ld l, c                                       ; $6543: $69
    ld e, h                                       ; $6544: $5c
    ld a, [bc]                                    ; $6545: $0a
    dec sp                                        ; $6546: $3b
    rst $08                                       ; $6547: $cf
    ld e, [hl]                                    ; $6548: $5e
    add hl, sp                                    ; $6549: $39
    di                                            ; $654a: $f3
    ld e, d                                       ; $654b: $5a
    ld [hl], h                                    ; $654c: $74
    inc e                                         ; $654d: $1c
    ld b, c                                       ; $654e: $41
    ld l, c                                       ; $654f: $69
    ld e, h                                       ; $6550: $5c
    ld a, [bc]                                    ; $6551: $0a
    sbc e                                         ; $6552: $9b
    and h                                         ; $6553: $a4
    xor [hl]                                      ; $6554: $ae
    inc e                                         ; $6555: $1c
    di                                            ; $6556: $f3
    ld e, d                                       ; $6557: $5a
    ld [hl], h                                    ; $6558: $74
    inc e                                         ; $6559: $1c
    ld b, c                                       ; $655a: $41
    ld l, c                                       ; $655b: $69
    ld e, h                                       ; $655c: $5c
    ld a, [bc]                                    ; $655d: $0a
    dec sp                                        ; $655e: $3b
    or a                                          ; $655f: $b7
    call nz, $01cf                                ; $6560: $c4 $cf $01
    add hl, bc                                    ; $6563: $09
    res 7, l                                      ; $6564: $cb $bd
    ld a, [hl-]                                   ; $6566: $3a
    xor [hl]                                      ; $6567: $ae
    adc $b3                                       ; $6568: $ce $b3
    ld d, a                                       ; $656a: $57
    ld c, $09                                     ; $656b: $0e $09
    res 7, l                                      ; $656d: $cb $bd
    ld a, [hl-]                                   ; $656f: $3a
    xor [hl]                                      ; $6570: $ae
    ld h, $a9                                     ; $6571: $26 $a9
    dec hl                                        ; $6573: $2b
    rlca                                          ; $6574: $07
    add hl, bc                                    ; $6575: $09
    res 7, l                                      ; $6576: $cb $bd
    ld a, [hl-]                                   ; $6578: $3a
    xor [hl]                                      ; $6579: $ae
    adc $2d                                       ; $657a: $ce $2d
    pop af                                        ; $657c: $f1
    ld [hl], e                                    ; $657d: $73
    and e                                         ; $657e: $a3
    ld h, e                                       ; $657f: $63
    or e                                          ; $6580: $b3
    cpl                                           ; $6581: $2f
    ld a, [hl-]                                   ; $6582: $3a
    call nc, $d9d1                                ; $6583: $d4 $d1 $d9
    inc a                                         ; $6586: $3c
    jr jr_033_65a0                                ; $6587: $18 $17

    cp $1c                                        ; $6589: $fe $1c
    or e                                          ; $658b: $b3
    ld e, l                                       ; $658c: $5d
    db $fc                                        ; $658d: $fc
    ld a, [hl-]                                   ; $658e: $3a
    ld l, $b8                                     ; $658f: $2e $b8
    and h                                         ; $6591: $a4
    and e                                         ; $6592: $a3
    add e                                         ; $6593: $83
    ld h, l                                       ; $6594: $65
    jp hl                                         ; $6595: $e9


    sbc b                                         ; $6596: $98
    inc e                                         ; $6597: $1c
    or e                                          ; $6598: $b3
    ld e, l                                       ; $6599: $5d
    db $fc                                        ; $659a: $fc
    ld a, [hl-]                                   ; $659b: $3a
    ld l, $b8                                     ; $659c: $2e $b8
    and h                                         ; $659e: $a4
    inc hl                                        ; $659f: $23

jr_033_65a0:
    cpl                                           ; $65a0: $2f
    add c                                         ; $65a1: $81
    ret nz                                        ; $65a2: $c0

    inc e                                         ; $65a3: $1c
    and e                                         ; $65a4: $a3
    inc c                                         ; $65a5: $0c
    ld [de], a                                    ; $65a6: $12
    ld b, h                                       ; $65a7: $44
    ld [hl], b                                    ; $65a8: $70
    add l                                         ; $65a9: $85
    sbc l                                         ; $65aa: $9d
    ei                                            ; $65ab: $fb
    add d                                         ; $65ac: $82
    ld c, a                                       ; $65ad: $4f
    dec d                                         ; $65ae: $15
    and $23                                       ; $65af: $e6 $23
    dec d                                         ; $65b1: $15

jr_033_65b2:
    ld d, a                                       ; $65b2: $57
    ret c                                         ; $65b3: $d8

    and c                                         ; $65b4: $a1
    cp d                                          ; $65b5: $ba
    or e                                          ; $65b6: $b3
    ld a, a                                       ; $65b7: $7f
    add l                                         ; $65b8: $85
    cp $47                                        ; $65b9: $fe $47
    ld c, $49                                     ; $65bb: $0e $49
    xor d                                         ; $65bd: $aa
    rst $28                                       ; $65be: $ef
    inc hl                                        ; $65bf: $23
    sub h                                         ; $65c0: $94
    dec c                                         ; $65c1: $0d
    db $ec                                        ; $65c2: $ec
    xor c                                         ; $65c3: $a9
    ld b, $32                                     ; $65c4: $06 $32
    ld [hl], h                                    ; $65c6: $74
    cpl                                           ; $65c7: $2f
    cp $7a                                        ; $65c8: $fe $7a
    ld [hl], e                                    ; $65ca: $73
    xor h                                         ; $65cb: $ac
    or a                                          ; $65cc: $b7
    daa                                           ; $65cd: $27
    ld a, h                                       ; $65ce: $7c
    push bc                                       ; $65cf: $c5
    ld e, d                                       ; $65d0: $5a
    ld [hl], b                                    ; $65d1: $70
    ld b, b                                       ; $65d2: $40
    inc d                                         ; $65d3: $14
    ld a, a                                       ; $65d4: $7f
    call $2d4c                                    ; $65d5: $cd $4c $2d
    dec bc                                        ; $65d8: $0b
    ld b, e                                       ; $65d9: $43
    ld [hl], d                                    ; $65da: $72
    ld c, c                                       ; $65db: $49
    xor d                                         ; $65dc: $aa
    rst $28                                       ; $65dd: $ef
    inc hl                                        ; $65de: $23
    ld [hl], h                                    ; $65df: $74
    add e                                         ; $65e0: $83
    ccf                                           ; $65e1: $3f
    ld l, b                                       ; $65e2: $68
    and $25                                       ; $65e3: $e6 $25
    ld h, l                                       ; $65e5: $65
    ld e, [hl]                                    ; $65e6: $5e
    db $dd                                        ; $65e7: $dd
    sub c                                         ; $65e8: $91
    ccf                                           ; $65e9: $3f
    dec bc                                        ; $65ea: $0b
    rrca                                          ; $65eb: $0f
    xor b                                         ; $65ec: $a8
    cp l                                          ; $65ed: $bd
    add c                                         ; $65ee: $81
    rst $08                                       ; $65ef: $cf
    ld d, l                                       ; $65f0: $55
    ld b, a                                       ; $65f1: $47
    ld [hl], l                                    ; $65f2: $75
    jr jr_033_65b2                                ; $65f3: $18 $bd

    dec a                                         ; $65f5: $3d
    pop hl                                        ; $65f6: $e1
    dec hl                                        ; $65f7: $2b
    sub $d2                                       ; $65f8: $d6 $d2
    cp a                                          ; $65fa: $bf
    ld h, h                                       ; $65fb: $64
    ld [hl], l                                    ; $65fc: $75
    rst $30                                       ; $65fd: $f7
    ld l, d                                       ; $65fe: $6a
    rst $28                                       ; $65ff: $ef
    sub b                                         ; $6600: $90
    inc e                                         ; $6601: $1c
    ld c, c                                       ; $6602: $49
    xor d                                         ; $6603: $aa
    or a                                          ; $6604: $b7
    cp a                                          ; $6605: $bf
    adc e                                         ; $6606: $8b
    ret nc                                        ; $6607: $d0

    dec c                                         ; $6608: $0d
    cp $a0                                        ; $6609: $fe $a0
    ld e, [hl]                                    ; $660b: $5e
    cp b                                          ; $660c: $b8
    ld e, l                                       ; $660d: $5d
    rst $00                                       ; $660e: $c7
    pop hl                                        ; $660f: $e1
    ld c, l                                       ; $6610: $4d
    ld [hl], e                                    ; $6611: $73
    and e                                         ; $6612: $a3
    add e                                         ; $6613: $83
    jp nc, Jump_033_75db                          ; $6614: $d2 $db $75

    inc e                                         ; $6617: $1c
    sbc $c6                                       ; $6618: $de $c6
    ld d, [hl]                                    ; $661a: $56
    ld e, e                                       ; $661b: $5b
    ld a, [hl-]                                   ; $661c: $3a
    ld a, [hl-]                                   ; $661d: $3a
    or $66                                        ; $661e: $f6 $66
    sbc d                                         ; $6620: $9a
    ld a, l                                       ; $6621: $7d
    ld b, h                                       ; $6622: $44
    sbc a                                         ; $6623: $9f
    sbc e                                         ; $6624: $9b
    db $fc                                        ; $6625: $fc
    ld b, l                                       ; $6626: $45
    add $a4                                       ; $6627: $c6 $a4
    add hl, sp                                    ; $6629: $39
    add hl, bc                                    ; $662a: $09
    db $fc                                        ; $662b: $fc
    push af                                       ; $662c: $f5
    cp $a5                                        ; $662d: $fe $a5
    ld a, e                                       ; $662f: $7b
    pop af                                        ; $6630: $f1
    rst $10                                       ; $6631: $d7
    dec c                                         ; $6632: $0d
    rst $30                                       ; $6633: $f7
    ld l, a                                       ; $6634: $6f
    pop af                                        ; $6635: $f1
    and d                                         ; $6636: $a2
    db $fc                                        ; $6637: $fc
    push de                                       ; $6638: $d5
    or c                                          ; $6639: $b1
    ld a, $3a                                     ; $663a: $3e $3a
    add a                                         ; $663c: $87
    ret nz                                        ; $663d: $c0

    sub b                                         ; $663e: $90
    inc e                                         ; $663f: $1c
    or e                                          ; $6640: $b3
    ld e, l                                       ; $6641: $5d
    ld e, c                                       ; $6642: $59
    jr nz, @+$81                                  ; $6643: $20 $7f

    rst $20                                       ; $6645: $e7
    ld [$5a30], a                                 ; $6646: $ea $30 $5a
    ld a, [hl-]                                   ; $6649: $3a
    add a                                         ; $664a: $87
    ld b, b                                       ; $664b: $40
    inc bc                                        ; $664c: $03
    and c                                         ; $664d: $a1
    and a                                         ; $664e: $a7
    cp $7e                                        ; $664f: $fe $7e
    push bc                                       ; $6651: $c5
    ld e, a                                       ; $6652: $5f
    dec e                                         ; $6653: $1d
    ld c, e                                       ; $6654: $4b
    adc [hl]                                      ; $6655: $8e
    db $ec                                        ; $6656: $ec
    dec bc                                        ; $6657: $0b
    ld b, h                                       ; $6658: $44
    sub [hl]                                      ; $6659: $96
    ld [hl], $e9                                  ; $665a: $36 $e9
    ld h, e                                       ; $665c: $63
    inc bc                                        ; $665d: $03
    and c                                         ; $665e: $a1
    ld [hl], e                                    ; $665f: $73
    ld d, b                                       ; $6660: $50
    ld a, [de]                                    ; $6661: $1a
    add e                                         ; $6662: $83
    ld a, a                                       ; $6663: $7f
    or l                                          ; $6664: $b5
    push hl                                       ; $6665: $e5
    ld e, h                                       ; $6666: $5c
    rst $00                                       ; $6667: $c7
    halt                                          ; $6668: $76
    or [hl]                                       ; $6669: $b6
    xor a                                         ; $666a: $af
    cp l                                          ; $666b: $bd
    dec h                                         ; $666c: $25
    ld c, b                                       ; $666d: $48
    jp nc, $be13                                  ; $666e: $d2 $13 $be

    ld h, d                                       ; $6671: $62
    dec l                                         ; $6672: $2d
    ld [$ac89], sp                                ; $6673: $08 $89 $ac
    db $d3                                        ; $6676: $d3
    ld [hl-], a                                   ; $6677: $32
    pop bc                                        ; $6678: $c1
    rrca                                          ; $6679: $0f
    ld a, d                                       ; $667a: $7a
    ld [$57ef], a                                 ; $667b: $ea $ef $57
    db $fc                                        ; $667e: $fc
    push af                                       ; $667f: $f5
    dec hl                                        ; $6680: $2b
    and d                                         ; $6681: $a2
    jp c, $9947                                   ; $6682: $da $47 $99

    db $fc                                        ; $6685: $fc
    dec b                                         ; $6686: $05
    push de                                       ; $6687: $d5
    ld l, c                                       ; $6688: $69
    dec sp                                        ; $6689: $3b
    jp c, Jump_033_7ba2                           ; $668a: $da $a2 $7b

    ld a, h                                       ; $668d: $7c
    ld e, d                                       ; $668e: $5a
    ld [hl], c                                    ; $668f: $71
    ld l, h                                       ; $6690: $6c
    and $e7                                       ; $6691: $e6 $e7
    xor l                                         ; $6693: $ad
    ld e, d                                       ; $6694: $5a
    db $dd                                        ; $6695: $dd
    db $fd                                        ; $6696: $fd
    db $fc                                        ; $6697: $fc
    push de                                       ; $6698: $d5
    or c                                          ; $6699: $b1
    ld a, $7a                                     ; $669a: $3e $7a
    jp nz, $ac57                                  ; $669c: $c2 $57 $ac

    dec b                                         ; $669f: $05
    pop hl                                        ; $66a0: $e1
    or e                                          ; $66a1: $b3
    dec h                                         ; $66a2: $25
    ld c, b                                       ; $66a3: $48
    ld d, d                                       ; $66a4: $52
    dec e                                         ; $66a5: $1d

jr_033_66a6:
    db $fc                                        ; $66a6: $fc
    dec d                                         ; $66a7: $15
    db $fd                                        ; $66a8: $fd
    cp h                                          ; $66a9: $bc
    ld l, c                                       ; $66aa: $69

jr_033_66ab:
    ld b, a                                       ; $66ab: $47
    db $fc                                        ; $66ac: $fc
    ld e, l                                       ; $66ad: $5d
    add h                                         ; $66ae: $84
    ld [$afe0], a                                 ; $66af: $ea $e0 $af
    and a                                         ; $66b2: $a7
    cp $3a                                        ; $66b3: $fe $3a
    or [hl]                                       ; $66b5: $b6
    ld l, h                                       ; $66b6: $6c
    jr nz, jr_033_66ab                            ; $66b7: $20 $f2

    rst $20                                       ; $66b9: $e7
    db $ed                                        ; $66ba: $ed
    dec bc                                        ; $66bb: $0b
    ld c, e                                       ; $66bc: $4b
    or l                                          ; $66bd: $b5
    ld a, h                                       ; $66be: $7c
    dec [hl]                                      ; $66bf: $35
    adc [hl]                                      ; $66c0: $8e
    or a                                          ; $66c1: $b7
    ld [$14c8], a                                 ; $66c2: $ea $c8 $14
    cp a                                          ; $66c5: $bf
    ld a, c                                       ; $66c6: $79
    xor e                                         ; $66c7: $ab
    ld d, [hl]                                    ; $66c8: $56
    ld d, a                                       ; $66c9: $57
    rst $38                                       ; $66ca: $ff

jr_033_66cb:
    db $dd                                        ; $66cb: $dd
    xor $e7                                       ; $66cc: $ee $e7
    rst $28                                       ; $66ce: $ef
    halt                                          ; $66cf: $76
    dec e                                         ; $66d0: $1d
    add a                                         ; $66d1: $87
    scf                                           ; $66d2: $37
    call $c901                                    ; $66d3: $cd $01 $c9
    sbc a                                         ; $66d6: $9f
    jp nc, $dceb                                  ; $66d7: $d2 $eb $dc

    db $e4                                        ; $66da: $e4
    cpl                                           ; $66db: $2f
    ld [hl-], a                                   ; $66dc: $32
    ld h, $6d                                     ; $66dd: $26 $6d
    jp nc, $06c7                                  ; $66df: $d2 $c7 $06

    ld b, d                                       ; $66e2: $42
    ld b, a                                       ; $66e3: $47
    ld c, d                                       ; $66e4: $4a
    jp c, $2839                                   ; $66e5: $da $39 $28

    adc l                                         ; $66e8: $8d
    pop bc                                        ; $66e9: $c1
    cp a                                          ; $66ea: $bf
    jp c, $b692                                   ; $66eb: $da $92 $b6

    jp $f7a5                                      ; $66ee: $c3 $a5 $f7


    db $10                                        ; $66f1: $10
    ld e, l                                       ; $66f2: $5d
    dec e                                         ; $66f3: $1d
    jp nc, Jump_033_4a67                          ; $66f4: $d2 $67 $4a

    ld a, b                                       ; $66f7: $78
    rst $08                                       ; $66f8: $cf
    ld [hl], l                                    ; $66f9: $75
    xor h                                         ; $66fa: $ac
    or a                                          ; $66fb: $b7
    daa                                           ; $66fc: $27
    ld a, h                                       ; $66fd: $7c
    push bc                                       ; $66fe: $c5
    ld e, d                                       ; $66ff: $5a
    db $10                                        ; $6700: $10
    ld a, $db                                     ; $6701: $3e $db
    xor a                                         ; $6703: $af
    sub b                                         ; $6704: $90
    xor h                                         ; $6705: $ac
    ld d, b                                       ; $6706: $50
    pop af                                        ; $6707: $f1
    rst $20                                       ; $6708: $e7
    ld c, l                                       ; $6709: $4d
    dec sp                                        ; $670a: $3b
    or a                                          ; $670b: $b7
    sbc b                                         ; $670c: $98
    jr nz, jr_033_66cb                            ; $670d: $20 $bc

    ld d, l                                       ; $670f: $55
    adc e                                         ; $6710: $8b
    push de                                       ; $6711: $d5
    ld a, a                                       ; $6712: $7f
    or a                                          ; $6713: $b7
    jr c, jr_033_66a6                             ; $6714: $38 $90

    ld [$b296], sp                                ; $6716: $08 $96 $b2
    adc [hl]                                      ; $6719: $8e
    ld [hl-], a                                   ; $671a: $32
    ld c, d                                       ; $671b: $4a
    ld l, h                                       ; $671c: $6c
    halt                                          ; $671d: $76
    ld bc, $9a60                                  ; $671e: $01 $60 $9a
    inc bc                                        ; $6721: $03
    ld c, c                                       ; $6722: $49
    cp a                                          ; $6723: $bf
    ld [$507e], sp                                ; $6724: $08 $7e $50
    jp Jump_033_63fd                              ; $6727: $c3 $fd $63


    cp a                                          ; $672a: $bf
    ld [hl+], a                                   ; $672b: $22
    xor d                                         ; $672c: $aa
    dec l                                         ; $672d: $2d
    sbc l                                         ; $672e: $9d
    sbc e                                         ; $672f: $9b
    inc h                                         ; $6730: $24
    ld c, l                                       ; $6731: $4d
    db $d3                                        ; $6732: $d3
    inc [hl]                                      ; $6733: $34
    rlca                                          ; $6734: $07
    or e                                          ; $6735: $b3
    adc b                                         ; $6736: $88
    rrca                                          ; $6737: $0f
    ld l, l                                       ; $6738: $6d
    add hl, sp                                    ; $6739: $39
    rst $30                                       ; $673a: $f7
    halt                                          ; $673b: $76
    dec e                                         ; $673c: $1d
    ld b, a                                       ; $673d: $47
    or l                                          ; $673e: $b5
    ld [$e92a], a                                 ; $673f: $ea $2a $e9
    or e                                          ; $6742: $b3
    jr c, jr_033_677b                             ; $6743: $38 $36

    ld l, l                                       ; $6745: $6d
    ld a, [c]                                     ; $6746: $f2
    ld h, a                                       ; $6747: $67
    dec sp                                        ; $6748: $3b
    sub h                                         ; $6749: $94
    ccf                                           ; $674a: $3f
    add sp, -$57                                  ; $674b: $e8 $a9
    sub $17                                       ; $674d: $d6 $17
    ld a, a                                       ; $674f: $7f
    rst $20                                       ; $6750: $e7
    inc e                                         ; $6751: $1c
    ld l, d                                       ; $6752: $6a
    ld [hl], l                                    ; $6753: $75
    ld e, c                                       ; $6754: $59
    sbc d                                         ; $6755: $9a
    xor b                                         ; $6756: $a8
    add $c7                                       ; $6757: $c6 $c7
    ld [$3a90], a                                 ; $6759: $ea $90 $3a
    or $9c                                        ; $675c: $f6 $9c
    inc bc                                        ; $675e: $03
    and e                                         ; $675f: $a3
    dec l                                         ; $6760: $2d
    push de                                       ; $6761: $d5
    sub [hl]                                      ; $6762: $96
    ld [hl-], a                                   ; $6763: $32
    ld c, c                                       ; $6764: $49
    xor e                                         ; $6765: $ab
    ld e, l                                       ; $6766: $5d
    add $b0                                       ; $6767: $c6 $b0
    db $f4                                        ; $6769: $f4
    ld e, $94                                     ; $676a: $1e $94
    ld d, [hl]                                    ; $676c: $56
    add a                                         ; $676d: $87
    rst $10                                       ; $676e: $d7
    ld a, e                                       ; $676f: $7b
    xor $3c                                       ; $6770: $ee $3c
    xor e                                         ; $6772: $ab
    ld a, e                                       ; $6773: $7b
    rrca                                          ; $6774: $0f
    ld c, d                                       ; $6775: $4a
    cp e                                          ; $6776: $bb
    ld a, [hl]                                    ; $6777: $7e
    add a                                         ; $6778: $87
    or a                                          ; $6779: $b7
    dec de                                        ; $677a: $1b

jr_033_677b:
    db $fc                                        ; $677b: $fc
    ld b, c                                       ; $677c: $41
    rlca                                          ; $677d: $07
    dec l                                         ; $677e: $2d
    ld a, [hl-]                                   ; $677f: $3a
    cp h                                          ; $6780: $bc
    sbc $73                                       ; $6781: $de $73
    ld c, $49                                     ; $6783: $0e $49
    sub [hl]                                      ; $6785: $96
    sbc $43                                       ; $6786: $de $43
    ld [hl], h                                    ; $6788: $74
    rlca                                          ; $6789: $07
    cpl                                           ; $678a: $2f
    ld c, d                                       ; $678b: $4a
    dec l                                         ; $678c: $2d
    dec e                                         ; $678d: $1d
    push hl                                       ; $678e: $e5
    ret c                                         ; $678f: $d8

    ld c, $5a                                     ; $6790: $0e $5a
    ld l, b                                       ; $6792: $68
    ld e, b                                       ; $6793: $58
    cp h                                          ; $6794: $bc
    ld l, c                                       ; $6795: $69
    ld c, $cc                                     ; $6796: $0e $cc
    ld [hl], b                                    ; $6798: $70
    ld l, a                                       ; $6799: $6f
    ld h, e                                       ; $679a: $63
    rst $28                                       ; $679b: $ef
    ld a, d                                       ; $679c: $7a
    xor e                                         ; $679d: $ab
    ccf                                           ; $679e: $3f
    halt                                          ; $679f: $76
    ld e, [hl]                                    ; $67a0: $5e
    dec bc                                        ; $67a1: $0b
    dec c                                         ; $67a2: $0d
    ld h, e                                       ; $67a3: $63
    dec l                                         ; $67a4: $2d
    ld [$0d65], sp                                ; $67a5: $08 $65 $0d
    ld h, d                                       ; $67a8: $62
    ldh a, [$9e]                                  ; $67a9: $f0 $9e
    ld a, e                                       ; $67ab: $7b
    rst $30                                       ; $67ac: $f7
    ld l, [hl]                                    ; $67ad: $6e
    sbc c                                         ; $67ae: $99
    pop hl                                        ; $67af: $e1
    ld a, [hl-]                                   ; $67b0: $3a
    sub $5b                                       ; $67b1: $d6 $5b
    ld h, $7f                                     ; $67b3: $26 $7f
    sub h                                         ; $67b5: $94
    add h                                         ; $67b6: $84
    ld l, b                                       ; $67b7: $68
    jp c, Jump_033_59f7                           ; $67b8: $da $f7 $59

    ld l, a                                       ; $67bb: $6f
    sbc d                                         ; $67bc: $9a
    inc bc                                        ; $67bd: $03
    inc hl                                        ; $67be: $23
    dec h                                         ; $67bf: $25
    db $ed                                        ; $67c0: $ed
    xor b                                         ; $67c1: $a8
    dec bc                                        ; $67c2: $0b
    ret nz                                        ; $67c3: $c0

    ld [hl-], a                                   ; $67c4: $32
    ld h, e                                       ; $67c5: $63
    sbc c                                         ; $67c6: $99
    pop hl                                        ; $67c7: $e1
    sbc $2d                                       ; $67c8: $de $2d
    jp c, $d8db                                   ; $67ca: $da $db $d8

    ld l, d                                       ; $67cd: $6a
    ld c, e                                       ; $67ce: $4b
    add a                                         ; $67cf: $87
    rst $00                                       ; $67d0: $c7
    ld h, [hl]                                    ; $67d1: $66
    ld a, a                                       ; $67d2: $7f
    inc sp                                        ; $67d3: $33
    ld a, h                                       ; $67d4: $7c
    sbc a                                         ; $67d5: $9f
    ld d, d                                       ; $67d6: $52
    rst $10                                       ; $67d7: $d7
    ld [hl], d                                    ; $67d8: $72
    rst $38                                       ; $67d9: $ff
    ld [bc], a                                    ; $67da: $02
    add [hl]                                      ; $67db: $86
    inc [hl]                                      ; $67dc: $34
    rlca                                          ; $67dd: $07
    ld c, h                                       ; $67de: $4c
    push bc                                       ; $67df: $c5
    sbc a                                         ; $67e0: $9f
    or a                                          ; $67e1: $b7
    call z, Call_033_4770                         ; $67e2: $cc $70 $47
    ld c, d                                       ; $67e5: $4a
    jp c, $9fe4                                   ; $67e6: $da $e4 $9f

    ld c, c                                       ; $67e9: $49
    add sp, $19                                   ; $67ea: $e8 $19
    dec sp                                        ; $67ec: $3b
    ld e, h                                       ; $67ed: $5c
    ld a, [de]                                    ; $67ee: $1a
    ld [$ad8d], sp                                ; $67ef: $08 $8d $ad
    or [hl]                                       ; $67f2: $b6
    ld [hl], h                                    ; $67f3: $74
    or $c4                                        ; $67f4: $f6 $c4
    rst $20                                       ; $67f6: $e7
    ld l, d                                       ; $67f7: $6a
    ld c, e                                       ; $67f8: $4b
    rst $20                                       ; $67f9: $e7
    or l                                          ; $67fa: $b5
    ret nc                                        ; $67fb: $d0

    jr nc, @+$3c                                  ; $67fc: $30 $3a

    call $2301                                    ; $67fe: $cd $01 $23
    dec h                                         ; $6801: $25
    ld l, l                                       ; $6802: $6d
    ld a, [c]                                     ; $6803: $f2
    rst $08                                       ; $6804: $cf
    inc h                                         ; $6805: $24
    ld [hl], h                                    ; $6806: $74
    rst $28                                       ; $6807: $ef
    ld e, a                                       ; $6808: $5f
    ret nz                                        ; $6809: $c0

    ret nc                                        ; $680a: $d0

    ld a, a                                       ; $680b: $7f
    db $f4                                        ; $680c: $f4
    push bc                                       ; $680d: $c5
    add d                                         ; $680e: $82
    dec b                                         ; $680f: $05
    pop bc                                        ; $6810: $c1
    db $db                                        ; $6811: $db
    pop hl                                        ; $6812: $e1
    xor e                                         ; $6813: $ab
    ld e, l                                       ; $6814: $5d
    ld l, l                                       ; $6815: $6d
    inc l                                         ; $6816: $2c
    and e                                         ; $6817: $a3
    reti                                          ; $6818: $d9


    ld b, h                                       ; $6819: $44
    and l                                         ; $681a: $a5
    adc l                                         ; $681b: $8d
    db $fd                                        ; $681c: $fd
    adc d                                         ; $681d: $8a
    jr z, jr_033_6853                             ; $681e: $28 $33

    sbc h                                         ; $6820: $9c
    and $23                                       ; $6821: $e6 $23
    dec h                                         ; $6823: $25
    ld l, l                                       ; $6824: $6d
    ld a, [c]                                     ; $6825: $f2
    rst $08                                       ; $6826: $cf
    inc h                                         ; $6827: $24
    ld [hl], h                                    ; $6828: $74
    push de                                       ; $6829: $d5
    ld [$948e], a                                 ; $682a: $ea $8e $94
    or h                                          ; $682d: $b4
    adc h                                         ; $682e: $8c
    ld [de], a                                    ; $682f: $12
    inc bc                                        ; $6830: $03
    rst $28                                       ; $6831: $ef
    cp d                                          ; $6832: $ba
    ld l, [hl]                                    ; $6833: $6e
    ld a, l                                       ; $6834: $7d
    sbc a                                         ; $6835: $9f
    push af                                       ; $6836: $f5
    ld d, $f9                                     ; $6837: $16 $f9
    cp e                                          ; $6839: $bb
    or [hl]                                       ; $683a: $b6
    ld e, a                                       ; $683b: $5f
    ld de, $8665                                  ; $683c: $11 $65 $86
    sbc e                                         ; $683f: $9b
    ld sp, hl                                     ; $6840: $f9
    cp $05                                        ; $6841: $fe $05
    inc c                                         ; $6843: $0c
    ld l, c                                       ; $6844: $69
    ld c, $c9                                     ; $6845: $0e $c9
    sbc a                                         ; $6847: $9f
    jp nc, $dceb                                  ; $6848: $d2 $eb $dc

    db $e4                                        ; $684b: $e4
    cpl                                           ; $684c: $2f
    ld [hl-], a                                   ; $684d: $32
    ld h, [hl]                                    ; $684e: $66
    ld c, b                                       ; $684f: $48
    ld c, $8c                                     ; $6850: $0e $8c
    ld a, [bc]                                    ; $6852: $0a

jr_033_6853:
    cp h                                          ; $6853: $bc
    dec e                                         ; $6854: $1d
    ld a, c                                       ; $6855: $79
    ld c, c                                       ; $6856: $49
    and $3d                                       ; $6857: $e6 $3d
    ld [hl], a                                    ; $6859: $77
    and h                                         ; $685a: $a4

jr_033_685b:
    and h                                         ; $685b: $a4
    dec e                                         ; $685c: $1d
    ld [hl], l                                    ; $685d: $75
    ld bc, $d258                                  ; $685e: $01 $58 $d2
    halt                                          ; $6861: $76
    and h                                         ; $6862: $a4
    ld h, e                                       ; $6863: $63
    dec sp                                        ; $6864: $3b
    ei                                            ; $6865: $fb
    ccf                                           ; $6866: $3f
    call c, Call_000_2840                         ; $6867: $dc $40 $28
    and e                                         ; $686a: $a3
    call nz, $bbc0                                ; $686b: $c4 $c0 $bb
    xor [hl]                                      ; $686e: $ae
    ld e, e                                       ; $686f: $5b
    sbc d                                         ; $6870: $9a
    inc bc                                        ; $6871: $03
    and e                                         ; $6872: $a3
    ld b, e                                       ; $6873: $43
    ld a, d                                       ; $6874: $7a
    cp a                                          ; $6875: $bf
    jr z, @-$09                                   ; $6876: $28 $f5

    or $54                                        ; $6878: $f6 $54
    inc bc                                        ; $687a: $03
    add hl, de                                    ; $687b: $19
    ld c, d                                       ; $687c: $4a
    ld d, [hl]                                    ; $687d: $56
    ld c, l                                       ; $687e: $4d
    cp $22                                        ; $687f: $fe $22
    ld h, e                                       ; $6881: $63
    or b                                          ; $6882: $b0
    di                                            ; $6883: $f3
    ld e, d                                       ; $6884: $5a
    ld l, b                                       ; $6885: $68
    jr jr_033_685b                                ; $6886: $18 $d3

    inc e                                         ; $6888: $1c
    call z, $df70                                 ; $6889: $cc $70 $df
    ld h, a                                       ; $688c: $67
    cp l                                          ; $688d: $bd
    push de                                       ; $688e: $d5
    sbc $32                                       ; $688f: $de $32
    ld sp, hl                                     ; $6891: $f9
    and e                                         ; $6892: $a3
    inc h                                         ; $6893: $24
    ld b, h                                       ; $6894: $44
    db $d3                                        ; $6895: $d3
    ld [hl], e                                    ; $6896: $73
    sbc c                                         ; $6897: $99
    ld hl, $e633                                  ; $6898: $21 $33 $e6
    or e                                          ; $689b: $b3
    cp $73                                        ; $689c: $fe $73
    rst $18                                       ; $689e: $df
    ld h, a                                       ; $689f: $67
    dec de                                        ; $68a0: $1b
    ld l, a                                       ; $68a1: $6f
    ei                                            ; $68a2: $fb
    jp nz, Jump_033_7692                          ; $68a3: $c2 $92 $76

    xor b                                         ; $68a6: $a8
    ld a, [de]                                    ; $68a7: $1a
    rst $00                                       ; $68a8: $c7
    and d                                         ; $68a9: $a2
    ld a, l                                       ; $68aa: $7d
    inc d                                         ; $68ab: $14
    ld h, e                                       ; $68ac: $63
    ld [hl], l                                    ; $68ad: $75
    rst $28                                       ; $68ae: $ef
    ld hl, $8bdd                                  ; $68af: $21 $dd $8b
    cp a                                          ; $68b2: $bf
    sbc $9d                                       ; $68b3: $de $9d
    ld a, c                                       ; $68b5: $79
    xor e                                         ; $68b6: $ab
    ld a, l                                       ; $68b7: $7d
    inc [hl]                                      ; $68b8: $34
    ld c, c                                       ; $68b9: $49
    ld c, l                                       ; $68ba: $4d
    ld a, h                                       ; $68bb: $7c
    ld [hl], a                                    ; $68bc: $77
    adc h                                         ; $68bd: $8c
    inc bc                                        ; $68be: $03
    inc de                                        ; $68bf: $13
    inc hl                                        ; $68c0: $23
    ld a, a                                       ; $68c1: $7f
    rst $10                                       ; $68c2: $d7
    ld c, [hl]                                    ; $68c3: $4e
    ld a, h                                       ; $68c4: $7c
    rst $38                                       ; $68c5: $ff
    ret c                                         ; $68c6: $d8

    rla                                           ; $68c7: $17
    sub [hl]                                      ; $68c8: $96
    ld [hl], e                                    ; $68c9: $73
    ld c, c                                       ; $68ca: $49
    xor h                                         ; $68cb: $ac
    and l                                         ; $68cc: $a5
    jp c, Jump_033_7bdb                           ; $68cd: $da $db $7b

    ld c, b                                       ; $68d0: $48
    ld c, a                                       ; $68d1: $4f
    db $fd                                        ; $68d2: $fd
    ld b, l                                       ; $68d3: $45
    cp $ae                                        ; $68d4: $fe $ae

jr_033_68d6:
    ld l, l                                       ; $68d6: $6d
    ld h, [hl]                                    ; $68d7: $66
    inc e                                         ; $68d8: $1c
    sub b                                         ; $68d9: $90
    adc e                                         ; $68da: $8b
    ccf                                           ; $68db: $3f
    ld l, a                                       ; $68dc: $6f
    rst $18                                       ; $68dd: $df
    ld h, a                                       ; $68de: $67
    cp l                                          ; $68df: $bd
    ld l, c                                       ; $68e0: $69
    ld c, $43                                     ; $68e1: $0e $43
    add hl, hl                                    ; $68e3: $29
    dec [hl]                                      ; $68e4: $35
    ld d, $f9                                     ; $68e5: $16 $f9
    ld [hl], e                                    ; $68e7: $73
    inc l                                         ; $68e8: $2c
    inc d                                         ; $68e9: $14
    dec e                                         ; $68ea: $1d
    db $eb                                        ; $68eb: $eb
    adc $15                                       ; $68ec: $ce $15
    db $fc                                        ; $68ee: $fc
    ld b, c                                       ; $68ef: $41
    ld h, h                                       ; $68f0: $64
    scf                                           ; $68f1: $37
    rlca                                          ; $68f2: $07
    sub h                                         ; $68f3: $94
    xor h                                         ; $68f4: $ac
    ld a, [$eb3e]                                 ; $68f5: $fa $3e $eb
    ld c, l                                       ; $68f8: $4d
    db $db                                        ; $68f9: $db
    ld e, c                                       ; $68fa: $59
    ld l, $9a                                     ; $68fb: $2e $9a
    ld a, c                                       ; $68fd: $79
    rrc h                                         ; $68fe: $cb $0c
    rst $30                                       ; $6900: $f7
    ld [$7349], sp                                ; $6901: $08 $49 $73
    daa                                           ; $6904: $27
    jr z, @-$02                                   ; $6905: $28 $fc

    rst $00                                       ; $6907: $c7
    pop hl                                        ; $6908: $e1
    ld h, l                                       ; $6909: $65
    xor c                                         ; $690a: $a9
    add e                                         ; $690b: $83
    push af                                       ; $690c: $f5
    sbc [hl]                                      ; $690d: $9e
    rlc [hl]                                      ; $690e: $cb $06
    add b                                         ; $6910: $80
    db $d3                                        ; $6911: $d3
    inc e                                         ; $6912: $1c
    or e                                          ; $6913: $b3
    xor e                                         ; $6914: $ab
    db $ed                                        ; $6915: $ed
    db $ed                                        ; $6916: $ed
    ld a, [hl-]                                   ; $6917: $3a
    adc [hl]                                      ; $6918: $8e
    ld [hl+], a                                   ; $6919: $22
    ld a, a                                       ; $691a: $7f
    rst $10                                       ; $691b: $d7
    sbc [hl]                                      ; $691c: $9e
    sbc e                                         ; $691d: $9b
    db $fc                                        ; $691e: $fc
    ld b, l                                       ; $691f: $45
    add $a4                                       ; $6920: $c6 $a4
    add hl, sp                                    ; $6922: $39
    ret                                           ; $6923: $c9


Call_033_6924:
    ccf                                           ; $6924: $3f
    sub e                                         ; $6925: $93
    ret nc                                        ; $6926: $d0

    ld b, e                                       ; $6927: $43
    jp c, Jump_033_5fd1                           ; $6928: $da $d1 $5f

    ret nz                                        ; $692b: $c0

    push de                                       ; $692c: $d5
    rla                                           ; $692d: $17
    ld a, a                                       ; $692e: $7f
    db $fd                                        ; $692f: $fd
    adc d                                         ; $6930: $8a
    add sp, $11                                   ; $6931: $e8 $11
    db $fc                                        ; $6933: $fc
    dec c                                         ; $6934: $0d
    ret                                           ; $6935: $c9


    ld bc, $6149                                  ; $6936: $01 $49 $61
    or h                                          ; $6939: $b4
    sub h                                         ; $693a: $94
    ret                                           ; $693b: $c9


    rst $18                                       ; $693c: $df
    and a                                         ; $693d: $a7
    ld h, b                                       ; $693e: $60
    ld l, c                                       ; $693f: $69
    jr nz, jr_033_68d6                            ; $6940: $20 $94

    ld a, [hl-]                                   ; $6942: $3a
    or h                                          ; $6943: $b4
    and l                                         ; $6944: $a5
    sbc c                                         ; $6945: $99
    sub c                                         ; $6946: $91
    ccf                                           ; $6947: $3f
    ld a, d                                       ; $6948: $7a
    ld hl, $d37a                                  ; $6949: $21 $7a $d3
    inc e                                         ; $694c: $1c
    jp $a0b1                                      ; $694d: $c3 $b1 $a0


    and b                                         ; $6950: $a0
    ld b, a                                       ; $6951: $47
    ld c, b                                       ; $6952: $48
    ld h, a                                       ; $6953: $67
    ld [hl], e                                    ; $6954: $73
    add sp, $73                                   ; $6955: $e8 $73
    ccf                                           ; $6957: $3f
    ld l, e                                       ; $6958: $6b
    ld l, c                                       ; $6959: $69
    ldh a, [$d7]                                  ; $695a: $f0 $d7
    db $db                                        ; $695c: $db
    rst $18                                       ; $695d: $df
    db $ed                                        ; $695e: $ed
    ld [$0eb1], sp                                ; $695f: $08 $b1 $0e
    ld [hl], b                                    ; $6962: $70
    ld d, a                                       ; $6963: $57
    ld c, c                                       ; $6964: $49
    rst $38                                       ; $6965: $ff
    ld d, [hl]                                    ; $6966: $56
    add a                                         ; $6967: $87
    pop de                                        ; $6968: $d1
    ld b, a                                       ; $6969: $47
    sbc c                                         ; $696a: $99
    db $fc                                        ; $696b: $fc
    ld a, l                                       ; $696c: $7d
    ld a, [bc]                                    ; $696d: $0a
    sub [hl]                                      ; $696e: $96
    or d                                          ; $696f: $b2
    cp $c2                                        ; $6970: $fe $c2
    ld a, [hl-]                                   ; $6972: $3a
    ret nz                                        ; $6973: $c0

    sbc e                                         ; $6974: $9b
    and $d3                                       ; $6975: $e6 $d3
    ld c, l                                       ; $6977: $4d
    ld a, c                                       ; $6978: $79
    xor $74                                       ; $6979: $ee $74
    ld d, e                                       ; $697b: $53
    sbc l                                         ; $697c: $9d
    dec sp                                        ; $697d: $3b
    db $dd                                        ; $697e: $dd
    call nc, $d34d                                ; $697f: $d4 $4d $d3
    or h                                          ; $6982: $b4
    jp $bd63                                      ; $6983: $c3 $63 $bd


    dec e                                         ; $6986: $1d
    ld a, c                                       ; $6987: $79
    dec e                                         ; $6988: $1d
    ld e, [hl]                                    ; $6989: $5e
    jr c, @+$39                                   ; $698a: $38 $37

    ld hl, sp+$2b                                 ; $698c: $f8 $2b
    add hl, sp                                    ; $698e: $39
    pop af                                        ; $698f: $f1
    ld d, c                                       ; $6990: $51
    ld [hl], a                                    ; $6991: $77
    cpl                                           ; $6992: $2f
    cp $6a                                        ; $6993: $fe $6a
    sub $5b                                       ; $6995: $d6 $5b
    dec e                                         ; $6997: $1d
    ld b, [hl]                                    ; $6998: $46
    ld l, a                                       ; $6999: $6f
    dec h                                         ; $699a: $25
    adc h                                         ; $699b: $8c
    sub c                                         ; $699c: $91
    ld a, c                                       ; $699d: $79
    dec sp                                        ; $699e: $3b
    call z, Call_033_7592                         ; $699f: $cc $92 $75
    ld l, $c5                                     ; $69a2: $2e $c5
    add $ba                                       ; $69a4: $c6 $ba
    ld h, h                                       ; $69a6: $64
    push de                                       ; $69a7: $d5
    pop hl                                        ; $69a8: $e1
    xor e                                         ; $69a9: $ab
    db $dd                                        ; $69aa: $dd
    inc [hl]                                      ; $69ab: $34
    ld c, l                                       ; $69ac: $4d
    dec sp                                        ; $69ad: $3b
    db $dd                                        ; $69ae: $dd
    inc [hl]                                      ; $69af: $34
    rst $20                                       ; $69b0: $e7
    ld c, [hl]                                    ; $69b1: $4e
    scf                                           ; $69b2: $37
    db $ed                                        ; $69b3: $ed
    cp c                                          ; $69b4: $b9
    db $d3                                        ; $69b5: $d3
    ld c, l                                       ; $69b6: $4d
    rst $10                                       ; $69b7: $d7
    inc [hl]                                      ; $69b8: $34
    ld c, l                                       ; $69b9: $4d
    ld [hl], e                                    ; $69ba: $73
    call z, $1170                                 ; $69bb: $cc $70 $11
    add $16                                       ; $69be: $c6 $16
    ld l, a                                       ; $69c0: $6f
    adc a                                         ; $69c1: $8f
    ldh [$af], a                                  ; $69c2: $e0 $af
    xor h                                         ; $69c4: $ac
    db $e3                                        ; $69c5: $e3
    add sp, $09                                   ; $69c6: $e8 $09
    adc c                                         ; $69c8: $89
    adc a                                         ; $69c9: $8f
    ld a, d                                       ; $69ca: $7a
    add a                                         ; $69cb: $87
    or h                                          ; $69cc: $b4
    jp $c002                                      ; $69cd: $c3 $02 $c0


    cp l                                          ; $69d0: $bd
    ld e, l                                       ; $69d1: $5d
    rst $00                                       ; $69d2: $c7
    pop hl                                        ; $69d3: $e1
    dec l                                         ; $69d4: $2d
    inc sp                                        ; $69d5: $33
    ld e, h                                       ; $69d6: $5c
    or d                                          ; $69d7: $b2
    ld [de], a                                    ; $69d8: $12
    ld [de], a                                    ; $69d9: $12
    cp a                                          ; $69da: $bf
    sbc l                                         ; $69db: $9d
    ld a, e                                       ; $69dc: $7b
    rst $30                                       ; $69dd: $f7
    ld l, [hl]                                    ; $69de: $6e
    add e                                         ; $69df: $83
    cp a                                          ; $69e0: $bf
    ld [de], a                                    ; $69e1: $12
    ld d, $88                                     ; $69e2: $16 $88
    xor h                                         ; $69e4: $ac
    sbc c                                         ; $69e5: $99
    ret                                           ; $69e6: $c9


    adc c                                         ; $69e7: $89
    adc a                                         ; $69e8: $8f
    ld b, d                                       ; $69e9: $42
    rst $18                                       ; $69ea: $df
    ld h, a                                       ; $69eb: $67
    sbc l                                         ; $69ec: $9d
    and $73                                       ; $69ed: $e6 $73
    dec hl                                        ; $69ef: $2b
    add sp, $11                                   ; $69f0: $e8 $11
    jp nc, Jump_000_1cd9                          ; $69f2: $d2 $d9 $1c

    ld a, [$cfdc]                                 ; $69f5: $fa $dc $cf
    ld e, d                                       ; $69f8: $5a
    ld a, [de]                                    ; $69f9: $1a
    db $fc                                        ; $69fa: $fc
    push af                                       ; $69fb: $f5
    ld hl, sp-$04                                 ; $69fc: $f8 $fc
    cp c                                          ; $69fe: $b9
    sbc c                                         ; $69ff: $99
    push hl                                       ; $6a00: $e5
    ld l, e                                       ; $6a01: $6b
    ld [hl], a                                    ; $6a02: $77
    call nc, $e857                                ; $6a03: $d4 $57 $e8
    inc [hl]                                      ; $6a06: $34
    rlca                                          ; $6a07: $07
    add hl, bc                                    ; $6a08: $09
    db $fc                                        ; $6a09: $fc
    push af                                       ; $6a0a: $f5
    or $77                                        ; $6a0b: $f6 $77
    ld a, e                                       ; $6a0d: $7b
    inc b                                         ; $6a0e: $04
    ld a, a                                       ; $6a0f: $7f
    dec a                                         ; $6a10: $3d
    push de                                       ; $6a11: $d5
    ld b, b                                       ; $6a12: $40
    add [hl]                                      ; $6a13: $86
    ld l, [hl]                                    ; $6a14: $6e
    ldh a, [rTAC]                                 ; $6a15: $f0 $07
    dec a                                         ; $6a17: $3d
    ld [bc], a                                    ; $6a18: $02
    sbc d                                         ; $6a19: $9a
    ldh a, [$d6]                                  ; $6a1a: $f0 $d6
    ld e, e                                       ; $6a1c: $5b
    or l                                          ; $6a1d: $b5
    ld h, b                                       ; $6a1e: $60
    ld a, c                                       ; $6a1f: $79
    sbc a                                         ; $6a20: $9f
    add d                                         ; $6a21: $82
    scf                                           ; $6a22: $37
    ld l, l                                       ; $6a23: $6d
    ld [bc], a                                    ; $6a24: $02
    ld a, a                                       ; $6a25: $7f
    cp l                                          ; $6a26: $bd
    ld a, a                                       ; $6a27: $7f
    ld bc, $2bf7                                  ; $6a28: $01 $f7 $2b
    and d                                         ; $6a2b: $a2
    adc [hl]                                      ; $6a2c: $8e
    ld [hl], l                                    ; $6a2d: $75
    add a                                         ; $6a2e: $87
    dec hl                                        ; $6a2f: $2b
    ld [$011e], a                                 ; $6a30: $ea $1e $01
    ld [hl], l                                    ; $6a33: $75
    xor h                                         ; $6a34: $ac
    and l                                         ; $6a35: $a5
    rst $30                                       ; $6a36: $f7
    ldh [rIF], a                                  ; $6a37: $e0 $0f
    ld [hl+], a                                   ; $6a39: $22
    di                                            ; $6a3a: $f3
    halt                                          ; $6a3b: $76
    or $cf                                        ; $6a3c: $f6 $cf
    sbc a                                         ; $6a3e: $9f
    inc b                                         ; $6a3f: $04
    ld a, a                                       ; $6a40: $7f
    sub b                                         ; $6a41: $90
    and $a3                                       ; $6a42: $e6 $a3
    cp a                                          ; $6a44: $bf
    xor b                                         ; $6a45: $a8
    and e                                         ; $6a46: $a3
    db $f4                                        ; $6a47: $f4
    dec hl                                        ; $6a48: $2b
    jp nz, $665b                                  ; $6a49: $c2 $5b $66

    cp b                                          ; $6a4c: $b8
    cpl                                           ; $6a4d: $2f
    inc l                                         ; $6a4e: $2c
    push bc                                       ; $6a4f: $c5
    xor e                                         ; $6a50: $ab
    reti                                          ; $6a51: $d9


    ld e, a                                       ; $6a52: $5f
    ld [hl], d                                    ; $6a53: $72
    ccf                                           ; $6a54: $3f
    and l                                         ; $6a55: $a5
    adc [hl]                                      ; $6a56: $8e
    ld [hl], l                                    ; $6a57: $75
    ld b, l                                       ; $6a58: $45
    dec e                                         ; $6a59: $1d
    inc sp                                        ; $6a5a: $33
    or [hl]                                       ; $6a5b: $b6
    ld c, c                                       ; $6a5c: $49
    rra                                           ; $6a5d: $1f
    dec de                                        ; $6a5e: $1b
    ld [$8725], sp                                ; $6a5f: $08 $25 $87
    rrca                                          ; $6a62: $0f
    ld a, [de]                                    ; $6a63: $1a
    db $fc                                        ; $6a64: $fc
    dec [hl]                                      ; $6a65: $35
    inc sp                                        ; $6a66: $33
    sub c                                         ; $6a67: $91
    ld hl, sp-$7c                                 ; $6a68: $f8 $84
    ld b, $7f                                     ; $6a6a: $06 $7f
    ld l, c                                       ; $6a6c: $69
    ld c, $09                                     ; $6a6d: $0e $09
    db $fc                                        ; $6a6f: $fc
    ld d, l                                       ; $6a70: $55
    ld a, a                                       ; $6a71: $7f
    cp $c0                                        ; $6a72: $fe $c0
    rst $20                                       ; $6a74: $e7
    ld [hl-], a                                   ; $6a75: $32
    ld c, d                                       ; $6a76: $4a
    inc c                                         ; $6a77: $0c
    cp h                                          ; $6a78: $bc
    db $eb                                        ; $6a79: $eb
    cp d                                          ; $6a7a: $ba
    push af                                       ; $6a7b: $f5
    ld c, [hl]                                    ; $6a7c: $4e
    ld [de], a                                    ; $6a7d: $12
    db $ed                                        ; $6a7e: $ed
    ld h, d                                       ; $6a7f: $62
    ldh a, [$57]                                  ; $6a80: $f0 $57
    ld [hl], l                                    ; $6a82: $75
    sub h                                         ; $6a83: $94
    add hl, de                                    ; $6a84: $19
    xor $8d                                       ; $6a85: $ee $8d
    ld [hl], h                                    ; $6a87: $74
    inc e                                         ; $6a88: $1c
    sub [hl]                                      ; $6a89: $96
    ld c, l                                       ; $6a8a: $4d
    ld e, e                                       ; $6a8b: $5b
    ld h, [hl]                                    ; $6a8c: $66
    cp b                                          ; $6a8d: $b8
    ld a, b                                       ; $6a8e: $78
    ld d, c                                       ; $6a8f: $51
    ld a, [bc]                                    ; $6a90: $0a
    sbc $c6                                       ; $6a91: $de $c6
    db $db                                        ; $6a93: $db
    or d                                          ; $6a94: $b2
    ld b, [hl]                                    ; $6a95: $46
    or h                                          ; $6a96: $b4
    inc d                                         ; $6a97: $14
    dec d                                         ; $6a98: $15
    ld a, a                                       ; $6a99: $7f
    sbc $66                                       ; $6a9a: $de $66
    ld a, [hl]                                    ; $6a9c: $7e
    sbc $34                                       ; $6a9d: $de $34
    rlca                                          ; $6a9f: $07
    ld c, c                                       ; $6aa0: $49
    cp a                                          ; $6aa1: $bf
    ld l, h                                       ; $6aa2: $6c
    jr nz, @+$56                                  ; $6aa3: $20 $54

    xor e                                         ; $6aa5: $ab
    sbc [hl]                                      ; $6aa6: $9e
    ld a, [$96d3]                                 ; $6aa7: $fa $d3 $96
    ld a, c                                       ; $6aaa: $79
    ld d, c                                       ; $6aab: $51
    ld a, [bc]                                    ; $6aac: $0a
    ld b, [hl]                                    ; $6aad: $46
    add sp, $06                                   ; $6aae: $e8 $06
    ld a, a                                       ; $6ab0: $7f
    ld d, b                                       ; $6ab1: $50
    cp h                                          ; $6ab2: $bc
    ld a, [hl+]                                   ; $6ab3: $2a
    ld [$1900], a                                 ; $6ab4: $ea $00 $19
    ld e, e                                       ; $6ab7: $5b
    sbc e                                         ; $6ab8: $9b
    ld l, [hl]                                    ; $6ab9: $6e
    sbc d                                         ; $6aba: $9a
    inc bc                                        ; $6abb: $03
    add hl, bc                                    ; $6abc: $09
    db $fc                                        ; $6abd: $fc
    push af                                       ; $6abe: $f5
    ld a, l                                       ; $6abf: $7d
    sub $d5                                       ; $6ac0: $d6 $d5
    pop bc                                        ; $6ac2: $c1
    ld e, a                                       ; $6ac3: $5f
    ld c, c                                       ; $6ac4: $49
    xor h                                         ; $6ac5: $ac
    push hl                                       ; $6ac6: $e5
    ld d, e                                       ; $6ac7: $53
    jp c, $a8cc                                   ; $6ac8: $da $cc $a8

    ld hl, sp-$7d                                 ; $6acb: $f8 $83
    ld hl, $c339                                  ; $6acd: $21 $39 $c3
    ld h, d                                       ; $6ad0: $62
    ei                                            ; $6ad1: $fb
    ld e, c                                       ; $6ad2: $59
    ld c, e                                       ; $6ad3: $4b
    scf                                           ; $6ad4: $37
    inc h                                         ; $6ad5: $24
    di                                            ; $6ad6: $f3
    ld [$d5fb], a                                 ; $6ad7: $ea $fb $d5
    rla                                           ; $6ada: $17
    sbc e                                         ; $6adb: $9b
    add hl, sp                                    ; $6adc: $39
    ei                                            ; $6add: $fb
    sbc e                                         ; $6ade: $9b
    ld a, c                                       ; $6adf: $79
    db $d3                                        ; $6ae0: $d3
    halt                                          ; $6ae1: $76
    db $f4                                        ; $6ae2: $f4
    sub a                                         ; $6ae3: $97
    ld [$b370], a                                 ; $6ae4: $ea $70 $b3
    cp a                                          ; $6ae7: $bf
    ld h, h                                       ; $6ae8: $64
    rst $30                                       ; $6ae9: $f7
    inc b                                         ; $6aea: $04
    rlca                                          ; $6aeb: $07
    db $f4                                        ; $6aec: $f4
    add l                                         ; $6aed: $85
    and l                                         ; $6aee: $a5
    xor h                                         ; $6aef: $ac
    and e                                         ; $6af0: $a3
    jp c, $3eb1                                   ; $6af1: $da $b1 $3e

    ld a, [hl-]                                   ; $6af4: $3a
    xor a                                         ; $6af5: $af
    add l                                         ; $6af6: $85
    add [hl]                                      ; $6af7: $86
    ld sp, $01cd                                  ; $6af8: $31 $cd $01
    ld c, c                                       ; $6afb: $49
    rra                                           ; $6afc: $1f
    sbc e                                         ; $6afd: $9b
    and [hl]                                      ; $6afe: $a6
    ld l, c                                       ; $6aff: $69
    push af                                       ; $6b00: $f5
    rst $00                                       ; $6b01: $c7
    ld h, [hl]                                    ; $6b02: $66
    ld a, [hl]                                    ; $6b03: $7e
    ld h, e                                       ; $6b04: $63
    dec bc                                        ; $6b05: $0b
    db $f4                                        ; $6b06: $f4
    ld d, e                                       ; $6b07: $53
    ld l, d                                       ; $6b08: $6a
    db $ec                                        ; $6b09: $ec
    ld de, $6332                                  ; $6b0a: $11 $32 $63
    ld c, $43                                     ; $6b0d: $0e $43
    add hl, hl                                    ; $6b0f: $29
    dec [hl]                                      ; $6b10: $35
    ld d, [hl]                                    ; $6b11: $56
    dec sp                                        ; $6b12: $3b
    ld [hl], $6d                                  ; $6b13: $36 $6d
    sub e                                         ; $6b15: $93
    cpl                                           ; $6b16: $2f
    ld [$e66d], a                                 ; $6b17: $ea $6d $e6
    ld d, l                                       ; $6b1a: $55
    ld e, c                                       ; $6b1b: $59
    sbc c                                         ; $6b1c: $99
    ld b, c                                       ; $6b1d: $41
    ld e, c                                       ; $6b1e: $59
    dec bc                                        ; $6b1f: $0b
    ld b, $bf                                     ; $6b20: $06 $bf
    sbc c                                         ; $6b22: $99
    sbc [hl]                                      ; $6b23: $9e
    xor e                                         ; $6b24: $ab
    ccf                                           ; $6b25: $3f
    ld [hl], $10                                  ; $6b26: $36 $10
    ld a, d                                       ; $6b28: $7a
    jp nz, $ac57                                  ; $6b29: $c2 $57 $ac

    push bc                                       ; $6b2c: $c5
    sub d                                         ; $6b2d: $92
    sbc c                                         ; $6b2e: $99
    ld [$d573], a                                 ; $6b2f: $ea $73 $d5
    ld d, c                                       ; $6b32: $51
    dec e                                         ; $6b33: $1d
    db $fc                                        ; $6b34: $fc
    sub l                                         ; $6b35: $95
    jr nz, jr_033_6b81                            ; $6b36: $20 $49

    ld [hl], l                                    ; $6b38: $75
    cp b                                          ; $6b39: $b8
    ld c, h                                       ; $6b3a: $4c
    cp $14                                        ; $6b3b: $fe $14
    ld [hl], l                                    ; $6b3d: $75
    cp a                                          ; $6b3e: $bf
    ld b, d                                       ; $6b3f: $42
    or d                                          ; $6b40: $b2
    ld b, d                                       ; $6b41: $42
    ld hl, sp+$00                                 ; $6b42: $f8 $00
    sbc $34                                       ; $6b44: $de $34
    rlca                                          ; $6b46: $07
    inc hl                                        ; $6b47: $23
    rst $00                                       ; $6b48: $c7
    and $0f                                       ; $6b49: $e6 $0f
    cp h                                          ; $6b4b: $bc
    ld h, l                                       ; $6b4c: $65
    add [hl]                                      ; $6b4d: $86
    cp e                                          ; $6b4e: $bb
    ld l, d                                       ; $6b4f: $6a
    ld c, e                                       ; $6b50: $4b
    ld d, [hl]                                    ; $6b51: $56
    ld b, a                                       ; $6b52: $47

jr_033_6b53:
    scf                                           ; $6b53: $37
    sub c                                         ; $6b54: $91
    ccf                                           ; $6b55: $3f
    inc b                                         ; $6b56: $04
    ld l, a                                       ; $6b57: $6f
    rst $20                                       ; $6b58: $e7
    or l                                          ; $6b59: $b5
    ret nc                                        ; $6b5a: $d0

    jr nc, jr_033_6b53                            ; $6b5b: $30 $f6

    dec hl                                        ; $6b5d: $2b
    add d                                         ; $6b5e: $82
    dec d                                         ; $6b5f: $15
    di                                            ; $6b60: $f3
    rst $20                                       ; $6b61: $e7
    dec a                                         ; $6b62: $3d
    sub a                                         ; $6b63: $97
    add hl, de                                    ; $6b64: $19
    ld [hl-], a                                   ; $6b65: $32
    ld h, e                                       ; $6b66: $63
    ld c, $23                                     ; $6b67: $0e $23
    add sp, -$69                                  ; $6b69: $e8 $97
    ld [hl], e                                    ; $6b6b: $73
    pop af                                        ; $6b6c: $f1
    and d                                         ; $6b6d: $a2
    inc d                                         ; $6b6e: $14
    cp h                                          ; $6b6f: $bc
    ld d, l                                       ; $6b70: $55
    adc e                                         ; $6b71: $8b
    ld h, l                                       ; $6b72: $65
    db $ed                                        ; $6b73: $ed
    and b                                         ; $6b74: $a0
    sbc $b4                                       ; $6b75: $de $b4
    ld c, l                                       ; $6b77: $4d
    cp $22                                        ; $6b78: $fe $22
    ld h, e                                       ; $6b7a: $63
    adc $7d                                       ; $6b7b: $ce $7d
    ld h, c                                       ; $6b7d: $61
    ld l, c                                       ; $6b7e: $69
    jr nz, jr_033_6bd5                            ; $6b7f: $20 $54

jr_033_6b81:
    dec sp                                        ; $6b81: $3b
    or [hl]                                       ; $6b82: $b6
    adc h                                         ; $6b83: $8c
    and [hl]                                      ; $6b84: $a6
    cp d                                          ; $6b85: $ba
    ld l, d                                       ; $6b86: $6a
    ld [hl], l                                    ; $6b87: $75
    ld [hl], l                                    ; $6b88: $75
    cp b                                          ; $6b89: $b8
    or e                                          ; $6b8a: $b3
    dec b                                         ; $6b8b: $05
    add d                                         ; $6b8c: $82
    ld a, e                                       ; $6b8d: $7b

jr_033_6b8e:
    inc b                                         ; $6b8e: $04
    ld d, h                                       ; $6b8f: $54
    ld a, e                                       ; $6b90: $7b
    set 7, h                                      ; $6b91: $cb $fc
    db $fc                                        ; $6b93: $fc
    ld a, c                                       ; $6b94: $79
    rst $08                                       ; $6b95: $cf
    push de                                       ; $6b96: $d5
    pop hl                                        ; $6b97: $e1
    ld l, d                                       ; $6b98: $6a
    ld d, l                                       ; $6b99: $55
    ld d, [hl]                                    ; $6b9a: $56
    cp [hl]                                       ; $6b9b: $be
    ld [c], a                                     ; $6b9c: $e2
    rrca                                          ; $6b9d: $0f
    ld hl, $476d                                  ; $6b9e: $21 $6d $47
    ld a, h                                       ; $6ba1: $7c
    ld b, l                                       ; $6ba2: $45
    db $f4                                        ; $6ba3: $f4
    ld d, e                                       ; $6ba4: $53
    ld l, d                                       ; $6ba5: $6a
    inc a                                         ; $6ba6: $3c
    rst $30                                       ; $6ba7: $f7
    cp $b1                                        ; $6ba8: $fe $b1
    ld e, a                                       ; $6baa: $5f
    ld de, $96d5                                  ; $6bab: $11 $d5 $96
    adc $16                                       ; $6bae: $ce $16
    ld [$822e], sp                                ; $6bb0: $08 $2e $82
    rra                                           ; $6bb3: $1f
    and h                                         ; $6bb4: $a4
    ld c, l                                       ; $6bb5: $4d
    ldh [$af], a                                  ; $6bb6: $e0 $af
    rst $28                                       ; $6bb8: $ef
    and d                                         ; $6bb9: $a2
    db $dd                                        ; $6bba: $dd
    adc e                                         ; $6bbb: $8b
    cp a                                          ; $6bbc: $bf
    ld l, d                                       ; $6bbd: $6a
    ld l, a                                       ; $6bbe: $6f
    sub e                                         ; $6bbf: $93
    call nc, Call_033_77c4                        ; $6bc0: $d4 $c4 $77
    rst $00                                       ; $6bc3: $c7
    jr c, @+$32                                   ; $6bc4: $38 $30

    ld sp, $77f2                                  ; $6bc6: $31 $f2 $77
    db $ed                                        ; $6bc9: $ed
    call nz, $8ff7                                ; $6bca: $c4 $f7 $8f
    rst $20                                       ; $6bcd: $e7
    add d                                         ; $6bce: $82
    sbc b                                         ; $6bcf: $98
    jr nz, jr_033_6b8e                            ; $6bd0: $20 $bc

    ld d, l                                       ; $6bd2: $55
    adc e                                         ; $6bd3: $8b
    push de                                       ; $6bd4: $d5

jr_033_6bd5:
    ld a, a                                       ; $6bd5: $7f
    or a                                          ; $6bd6: $b7
    add e                                         ; $6bd7: $83
    sub a                                         ; $6bd8: $97
    sub h                                         ; $6bd9: $94
    ld d, c                                       ; $6bda: $51
    ld h, d                                       ; $6bdb: $62
    or e                                          ; $6bdc: $b3
    dec bc                                        ; $6bdd: $0b
    nop                                           ; $6bde: $00
    db $d3                                        ; $6bdf: $d3
    inc e                                         ; $6be0: $1c
    and e                                         ; $6be1: $a3
    ccf                                           ; $6be2: $3f
    ld [hl], $10                                  ; $6be3: $36 $10
    xor d                                         ; $6be5: $aa
    dec l                                         ; $6be6: $2d
    ld c, l                                       ; $6be7: $4d
    ld d, d                                       ; $6be8: $52
    inc de                                        ; $6be9: $13
    rst $18                                       ; $6bea: $df
    dec e                                         ; $6beb: $1d
    db $e3                                        ; $6bec: $e3
    ret nz                                        ; $6bed: $c0

    call nz, $dfc8                                ; $6bee: $c4 $c8 $df
    or l                                          ; $6bf1: $b5
    inc de                                        ; $6bf2: $13
    rst $18                                       ; $6bf3: $df
    ccf                                           ; $6bf4: $3f
    adc $98                                       ; $6bf5: $ce $98
    inc bc                                        ; $6bf7: $03
    ld c, c                                       ; $6bf8: $49
    ld e, a                                       ; $6bf9: $5f
    adc b                                         ; $6bfa: $88
    ld b, $7f                                     ; $6bfb: $06 $7f
    db $dd                                        ; $6bfd: $dd
    ldh [rIF], a                                  ; $6bfe: $e0 $0f
    adc d                                         ; $6c00: $8a
    ccf                                           ; $6c01: $3f
    di                                            ; $6c02: $f3
    and [hl]                                      ; $6c03: $a6
    ld l, l                                       ; $6c04: $6d
    ld a, [c]                                     ; $6c05: $f2
    add a                                         ; $6c06: $87
    ld e, $01                                     ; $6c07: $1e $01
    ld c, l                                       ; $6c09: $4d
    cp [hl]                                       ; $6c0a: $be
    or d                                          ; $6c0b: $b2
    ei                                            ; $6c0c: $fb
    rla                                           ; $6c0d: $17
    ret nz                                        ; $6c0e: $c0

    sub d                                         ; $6c0f: $92
    ld d, l                                       ; $6c10: $55
    ld b, c                                       ; $6c11: $41
    ld l, l                                       ; $6c12: $6d
    jp c, $2dce                                   ; $6c13: $da $ce $2d

    ld h, $08                                     ; $6c16: $26 $08
    ld l, a                                       ; $6c18: $6f
    push de                                       ; $6c19: $d5
    ld h, d                                       ; $6c1a: $62
    push af                                       ; $6c1b: $f5
    rst $18                                       ; $6c1c: $df
    xor l                                         ; $6c1d: $ad
    sub [hl]                                      ; $6c1e: $96
    xor a                                         ; $6c1f: $af
    add $f1                                       ; $6c20: $c6 $f1
    sbc [hl]                                      ; $6c22: $9e
    sbc e                                         ; $6c23: $9b
    db $fc                                        ; $6c24: $fc
    ld b, l                                       ; $6c25: $45
    add $a4                                       ; $6c26: $c6 $a4
    add hl, sp                                    ; $6c28: $39
    di                                            ; $6c29: $f3
    add [hl]                                      ; $6c2a: $86
    xor c                                         ; $6c2b: $a9
    or a                                          ; $6c2c: $b7
    ld c, c                                       ; $6c2d: $49
    ld a, a                                       ; $6c2e: $7f
    ld l, a                                       ; $6c2f: $6f
    dec h                                         ; $6c30: $25
    ld c, b                                       ; $6c31: $48
    jp nc, Jump_000_2784                          ; $6c32: $d2 $84 $27

    sbc $0e                                       ; $6c35: $de $0e
    inc sp                                        ; $6c37: $33
    ld a, [hl+]                                   ; $6c38: $2a

jr_033_6c39:
    cp $d2                                        ; $6c39: $fe $d2
    inc e                                         ; $6c3b: $1c
    jp Jump_000_27ec                              ; $6c3c: $c3 $ec $27


    sbc $32                                       ; $6c3f: $de $32
    jp $8b55                                      ; $6c41: $c3 $55 $8b


    ld h, l                                       ; $6c44: $65
    ccf                                           ; $6c45: $3f
    push de                                       ; $6c46: $d5
    cp l                                          ; $6c47: $bd
    add a                                         ; $6c48: $87
    or l                                          ; $6c49: $b5
    dec h                                         ; $6c4a: $25
    call Call_000_2701                            ; $6c4b: $cd $01 $27
    jr z, jr_033_6c39                             ; $6c4e: $28 $e9

    call c, Call_033_6924                         ; $6c50: $dc $24 $69
    and $07                                       ; $6c53: $e6 $07
    dec [hl]                                      ; $6c55: $35
    ld d, [hl]                                    ; $6c56: $56
    ld e, a                                       ; $6c57: $5f
    ld [bc], a                                    ; $6c58: $02
    push af                                       ; $6c59: $f5
    ld [bc], a                                    ; $6c5a: $02
    db $fd                                        ; $6c5b: $fd
    sbc e                                         ; $6c5c: $9b
    sbc l                                         ; $6c5d: $9d
    rrc h                                         ; $6c5e: $cb $0c
    ld c, c                                       ; $6c60: $49
    ld [hl], e                                    ; $6c61: $73
    and e                                         ; $6c62: $a3
    ld b, e                                       ; $6c63: $43
    ld a, [$eb3e]                                 ; $6c64: $fa $3e $eb
    db $ed                                        ; $6c67: $ed
    xor c                                         ; $6c68: $a9
    ld b, $32                                     ; $6c69: $06 $32
    inc [hl]                                      ; $6c6b: $34
    and e                                         ; $6c6c: $a3
    ld c, $fe                                     ; $6c6d: $0e $fe
    ld a, [hl-]                                   ; $6c6f: $3a
    ld [hl-], a                                   ; $6c70: $32
    nop                                           ; $6c71: $00
    ld a, [hl]                                    ; $6c72: $7e
    add [hl]                                      ; $6c73: $86
    inc bc                                        ; $6c74: $03
    ld e, a                                       ; $6c75: $5f
    and c                                         ; $6c76: $a1
    rst $08                                       ; $6c77: $cf
    ld h, l                                       ; $6c78: $65
    add [hl]                                      ; $6c79: $86
    and h                                         ; $6c7a: $a4
    dec l                                         ; $6c7b: $2d
    inc sp                                        ; $6c7c: $33
    call c, Call_033_45fb                         ; $6c7d: $dc $fb $45
    xor c                                         ; $6c80: $a9
    or a                                          ; $6c81: $b7
    ld l, d                                       ; $6c82: $6a
    or c                                          ; $6c83: $b1
    ld a, [$afe2]                                 ; $6c84: $fa $e2 $af
    jr @-$02                                      ; $6c87: $18 $fc

    ld e, c                                       ; $6c89: $59
    ld l, b                                       ; $6c8a: $68
    ldh a, [$d7]                                  ; $6c8b: $f0 $d7
    dec c                                         ; $6c8d: $0d
    cp $a0                                        ; $6c8e: $fe $a0
    xor h                                         ; $6c90: $ac
    db $e3                                        ; $6c91: $e3
    add sp, $70                                   ; $6c92: $e8 $70
    ld b, h                                       ; $6c94: $44
    ld l, a                                       ; $6c95: $6f
    ret                                           ; $6c96: $c9


    ld a, [bc]                                    ; $6c97: $0a
    db $fd                                        ; $6c98: $fd
    cp h                                          ; $6c99: $bc
    rst $20                                       ; $6c9a: $e7
    ld e, [hl]                                    ; $6c9b: $5e
    jp c, $6332                                   ; $6c9c: $da $32 $63

    ld c, $f3                                     ; $6c9f: $0e $f3
    add [hl]                                      ; $6ca1: $86
    xor c                                         ; $6ca2: $a9
    or a                                          ; $6ca3: $b7
    ld c, c                                       ; $6ca4: $49
    ld a, a                                       ; $6ca5: $7f
    ld l, a                                       ; $6ca6: $6f
    dec h                                         ; $6ca7: $25
    ld c, b                                       ; $6ca8: $48
    jp nc, Jump_000_2784                          ; $6ca9: $d2 $84 $27

    sbc l                                         ; $6cac: $9d
    rst $10                                       ; $6cad: $d7
    ld [bc], a                                    ; $6cae: $02
    ld a, [c]                                     ; $6caf: $f2
    sub l                                         ; $6cb0: $95
    or a                                          ; $6cb1: $b7
    or c                                          ; $6cb2: $b1
    ld h, l                                       ; $6cb3: $65
    sub h                                         ; $6cb4: $94
    ret c                                         ; $6cb5: $d8

    db $ec                                        ; $6cb6: $ec
    ld [bc], a                                    ; $6cb7: $02
    ret nz                                        ; $6cb8: $c0

    inc [hl]                                      ; $6cb9: $34
    rlca                                          ; $6cba: $07
    ld [hl], e                                    ; $6cbb: $73
    adc h                                         ; $6cbc: $8c
    ld c, b                                       ; $6cbd: $48
    ld [hl], e                                    ; $6cbe: $73
    ret                                           ; $6cbf: $c9


    sbc a                                         ; $6cc0: $9f
    jp nc, $cd2b                                  ; $6cc1: $d2 $2b $cd

    ld bc, $86f3                                  ; $6cc4: $01 $f3 $86
    xor c                                         ; $6cc7: $a9
    or a                                          ; $6cc8: $b7
    ld c, c                                       ; $6cc9: $49
    ld a, a                                       ; $6cca: $7f
    ld l, a                                       ; $6ccb: $6f
    ld l, c                                       ; $6ccc: $69
    ld c, $49                                     ; $6ccd: $0e $49
    xor d                                         ; $6ccf: $aa
    or a                                          ; $6cd0: $b7
    cp a                                          ; $6cd1: $bf
    adc e                                         ; $6cd2: $8b
    ld d, b                                       ; $6cd3: $50
    or d                                          ; $6cd4: $b2
    ld a, [de]                                    ; $6cd5: $1a
    cp h                                          ; $6cd6: $bc
    and h                                         ; $6cd7: $a4
    sub [hl]                                      ; $6cd8: $96
    ei                                            ; $6cd9: $fb
    dec h                                         ; $6cda: $25
    xor h                                         ; $6cdb: $ac
    rst $10                                       ; $6cdc: $d7
    ld h, l                                       ; $6cdd: $65
    ld [hl], h                                    ; $6cde: $74
    and $45                                       ; $6cdf: $e6 $45
    ld c, b                                       ; $6ce1: $48
    ld e, h                                       ; $6ce2: $5c
    db $ed                                        ; $6ce3: $ed
    sbc $c3                                       ; $6ce4: $de $c3
    jp c, $bfd2                                   ; $6ce6: $da $d2 $bf

    push de                                       ; $6ce9: $d5
    pop hl                                        ; $6cea: $e1
    ld [hl-], a                                   ; $6ceb: $32
    ld a, [de]                                    ; $6cec: $1a
    ld sp, hl                                     ; $6ced: $f9
    ld c, e                                       ; $6cee: $4b
    inc h                                         ; $6cef: $24
    ret nz                                        ; $6cf0: $c0

    dec h                                         ; $6cf1: $25
    dec hl                                        ; $6cf2: $2b
    ld hl, $dbf1                                  ; $6cf3: $21 $f1 $db
    and b                                         ; $6cf6: $a0
    push hl                                       ; $6cf7: $e5
    or $15                                        ; $6cf8: $f6 $15
    pop hl                                        ; $6cfa: $e1
    ld c, l                                       ; $6cfb: $4d
    rrc h                                         ; $6cfc: $cb $0c
    sub a                                         ; $6cfe: $97
    db $fc                                        ; $6cff: $fc
    rra                                           ; $6d00: $1f
    push af                                       ; $6d01: $f5
    ld d, [hl]                                    ; $6d02: $56
    add a                                         ; $6d03: $87
    ld [hl], h                                    ; $6d04: $74
    ccf                                           ; $6d05: $3f
    sub b                                         ; $6d06: $90
    add h                                         ; $6d07: $84
    ld b, $7f                                     ; $6d08: $06 $7f
    cp l                                          ; $6d0a: $bd
    ld a, e                                       ; $6d0b: $7b
    inc hl                                        ; $6d0c: $23
    or e                                          ; $6d0d: $b3
    sbc h                                         ; $6d0e: $9c
    ei                                            ; $6d0f: $fb
    add hl, hl                                    ; $6d10: $29
    ld d, [hl]                                    ; $6d11: $56
    xor e                                         ; $6d12: $ab
    ld a, [hl+]                                   ; $6d13: $2a
    pop bc                                        ; $6d14: $c1
    ld bc, $6d21                                  ; $6d15: $01 $21 $6d
    ld b, [hl]                                    ; $6d18: $46
    add e                                         ; $6d19: $83
    cp a                                          ; $6d1a: $bf
    or d                                          ; $6d1b: $b2
    ld h, $ff                                     ; $6d1c: $26 $ff
    ld b, a                                       ; $6d1e: $47
    and c                                         ; $6d1f: $a1
    rst $28                                       ; $6d20: $ef
    inc hl                                        ; $6d21: $23
    and h                                         ; $6d22: $a4
    add hl, sp                                    ; $6d23: $39
    ld c, c                                       ; $6d24: $49
    xor d                                         ; $6d25: $aa
    ld l, h                                       ; $6d26: $6c
    jr nz, @-$2a                                  ; $6d27: $20 $d4

    ld [hl-], a                                   ; $6d29: $32
    and h                                         ; $6d2a: $a4
    add hl, bc                                    ; $6d2b: $09
    db $fc                                        ; $6d2c: $fc
    push af                                       ; $6d2d: $f5
    ld [hl], b                                    ; $6d2e: $70
    xor h                                         ; $6d2f: $ac
    sbc e                                         ; $6d30: $9b
    and [hl]                                      ; $6d31: $a6
    ld l, c                                       ; $6d32: $69
    or l                                          ; $6d33: $b5
    ld a, [hl+]                                   ; $6d34: $2a
    dec de                                        ; $6d35: $1b
    ld [$6ad5], sp                                ; $6d36: $08 $d5 $6a
    ld c, b                                       ; $6d39: $48
    inc de                                        ; $6d3a: $13
    ld hl, sp-$15                                 ; $6d3b: $f8 $eb
    pop hl                                        ; $6d3d: $e1
    ld e, b                                       ; $6d3e: $58
    scf                                           ; $6d3f: $37
    ld c, l                                       ; $6d40: $4d
    db $d3                                        ; $6d41: $d3
    ld l, d                                       ; $6d42: $6a
    ld d, l                                       ; $6d43: $55
    ld [hl], $10                                  ; $6d44: $36 $10
    sbc d                                         ; $6d46: $9a
    db $fc                                        ; $6d47: $fc
    ld b, l                                       ; $6d48: $45
    add $74                                       ; $6d49: $c6 $74
    call nc, Call_033_6005                        ; $6d4b: $d4 $05 $60
    add hl, de                                    ; $6d4e: $19
    sub d                                         ; $6d4f: $92
    inc bc                                        ; $6d50: $03
    di                                            ; $6d51: $f3
    ld e, [hl]                                    ; $6d52: $5e
    add d                                         ; $6d53: $82
    pop bc                                        ; $6d54: $c1
    rra                                           ; $6d55: $1f
    inc [hl]                                      ; $6d56: $34
    or [hl]                                       ; $6d57: $b6
    jp c, $a65b                                   ; $6d58: $da $5b $a6

    inc bc                                        ; $6d5b: $03
    cp h                                          ; $6d5c: $bc
    ld [$c7f2], sp                                ; $6d5d: $08 $f2 $c7
    pop af                                        ; $6d60: $f1
    sbc [hl]                                      ; $6d61: $9e
    xor e                                         ; $6d62: $ab
    cpl                                           ; $6d63: $2f
    add c                                         ; $6d64: $81
    ld h, [hl]                                    ; $6d65: $66
    pop bc                                        ; $6d66: $c1
    ld b, d                                       ; $6d67: $42
    adc l                                         ; $6d68: $8d
    dec h                                         ; $6d69: $25
    inc c                                         ; $6d6a: $0c
    ldh [$ce], a                                  ; $6d6b: $e0 $ce
    push af                                       ; $6d6d: $f5
    ld bc, $69bc                                  ; $6d6e: $01 $bc $69
    ld c, $b3                                     ; $6d71: $0e $b3
    ld a, l                                       ; $6d73: $7d
    ld b, l                                       ; $6d74: $45
    ld [hl], h                                    ; $6d75: $74
    add e                                         ; $6d76: $83
    ccf                                           ; $6d77: $3f
    add sp, -$20                                  ; $6d78: $e8 $e0
    dec h                                         ; $6d7a: $25
    dec a                                         ; $6d7b: $3d
    push de                                       ; $6d7c: $d5
    jp c, Jump_000_11d2                           ; $6d7d: $da $d2 $11

    ld [c], a                                     ; $6d80: $e2
    rrca                                          ; $6d81: $0f
    ld c, d                                       ; $6d82: $4a
    ld a, d                                       ; $6d83: $7a
    ld [hl], a                                    ; $6d84: $77
    halt                                          ; $6d85: $76
    xor [hl]                                      ; $6d86: $ae
    or [hl]                                       ; $6d87: $b6
    ld d, h                                       ; $6d88: $54
    xor e                                         ; $6d89: $ab
    or d                                          ; $6d8a: $b2
    adc $9c                                       ; $6d8b: $ce $9c
    xor l                                         ; $6d8d: $ad
    ld de, $26d2                                  ; $6d8e: $11 $d2 $26

jr_033_6d91:
    xor c                                         ; $6d91: $a9
    sbc $fe                                       ; $6d92: $de $fe
    ld l, $42                                     ; $6d94: $2e $42
    ld de, $e512                                  ; $6d96: $11 $12 $e5
    ld h, [hl]                                    ; $6d99: $66
    ld [hl], c                                    ; $6d9a: $71
    ld b, a                                       ; $6d9b: $47
    adc b                                         ; $6d9c: $88
    ccf                                           ; $6d9d: $3f
    jr z, jr_033_6d91                             ; $6d9e: $28 $f1

    halt                                          ; $6da0: $76
    sub l                                         ; $6da1: $95
    sub h                                         ; $6da2: $94
    dec [hl]                                      ; $6da3: $35
    add [hl]                                      ; $6da4: $86
    inc sp                                        ; $6da5: $33
    rst $28                                       ; $6da6: $ef
    cp c                                          ; $6da7: $b9
    ld [hl], a                                    ; $6da8: $77
    rst $28                                       ; $6da9: $ef
    ld d, [hl]                                    ; $6daa: $56
    xor e                                         ; $6dab: $ab
    sbc [hl]                                      ; $6dac: $9e
    ld l, d                                       ; $6dad: $6a
    jr nz, jr_033_6df3                            ; $6dae: $20 $43

    cp a                                          ; $6db0: $bf
    ld [c], a                                     ; $6db1: $e2
    xor a                                         ; $6db2: $af
    ret z                                         ; $6db3: $c8

    rst $18                                       ; $6db4: $df
    dec a                                         ; $6db5: $3d
    sub c                                         ; $6db6: $91
    ccf                                           ; $6db7: $3f
    adc e                                         ; $6db8: $8b
    dec sp                                        ; $6db9: $3b
    ld b, d                                       ; $6dba: $42
    db $fc                                        ; $6dbb: $fc
    ld b, c                                       ; $6dbc: $41
    adc c                                         ; $6dbd: $89
    or a                                          ; $6dbe: $b7
    xor h                                         ; $6dbf: $ac
    ld l, a                                       ; $6dc0: $6f
    adc c                                         ; $6dc1: $89
    rst $00                                       ; $6dc2: $c7
    nop                                           ; $6dc3: $00
    add c                                         ; $6dc4: $81
    sub b                                         ; $6dc5: $90
    and $09                                       ; $6dc6: $e6 $09
    ld e, e                                       ; $6dc8: $5b
    ld l, l                                       ; $6dc9: $6d
    jp hl                                         ; $6dca: $e9


    add sp, -$28                                  ; $6dcb: $e8 $d8
    sbc e                                         ; $6dcd: $9b
    ld l, c                                       ; $6dce: $69
    or $11                                        ; $6dcf: $f6 $11
    db $dd                                        ; $6dd1: $dd
    inc l                                         ; $6dd2: $2c
    ld e, b                                       ; $6dd3: $58
    xor b                                         ; $6dd4: $a8
    or c                                          ; $6dd5: $b1
    add e                                         ; $6dd6: $83
    ld h, c                                       ; $6dd7: $61
    ld [$1a32], a                                 ; $6dd8: $ea $32 $1a
    ld sp, hl                                     ; $6ddb: $f9
    ld c, e                                       ; $6ddc: $4b
    inc h                                         ; $6ddd: $24
    ret nz                                        ; $6dde: $c0

    ld l, c                                       ; $6ddf: $69
    ld b, a                                       ; $6de0: $47
    cp $ed                                        ; $6de1: $fe $ed
    ei                                            ; $6de3: $fb
    ld d, b                                       ; $6de4: $50
    db $e4                                        ; $6de5: $e4
    ld l, a                                       ; $6de6: $6f
    ld c, l                                       ; $6de7: $4d
    ld l, c                                       ; $6de8: $69
    rlca                                          ; $6de9: $07
    jp Jump_033_64b4                              ; $6dea: $c3 $b4 $64


    push de                                       ; $6ded: $d5
    pop bc                                        ; $6dee: $c1
    jr nc, jr_033_6e1e                            ; $6def: $30 $2d

    and e                                         ; $6df1: $a3
    xor c                                         ; $6df2: $a9

jr_033_6df3:
    xor $57                                       ; $6df3: $ee $57
    sbc b                                         ; $6df5: $98
    add hl, sp                                    ; $6df6: $39
    inc sp                                        ; $6df7: $33
    db $eb                                        ; $6df8: $eb
    ld l, l                                       ; $6df9: $6d
    sbc d                                         ; $6dfa: $9a
    and [hl]                                      ; $6dfb: $a6
    add hl, sp                                    ; $6dfc: $39
    di                                            ; $6dfd: $f3
    ld e, d                                       ; $6dfe: $5a
    ld [hl], $f8                                  ; $6dff: $36 $f8
    inc bc                                        ; $6e01: $03
    ld [hl], a                                    ; $6e02: $77
    push de                                       ; $6e03: $d5
    ld d, $f9                                     ; $6e04: $16 $f9
    cp e                                          ; $6e06: $bb
    daa                                           ; $6e07: $27
    ld a, [c]                                     ; $6e08: $f2
    ld h, a                                       ; $6e09: $67
    ld [hl], c                                    ; $6e0a: $71
    ld b, a                                       ; $6e0b: $47
    ld e, [hl]                                    ; $6e0c: $5e
    adc e                                         ; $6e0d: $8b
    ld h, b                                       ; $6e0e: $60
    add hl, sp                                    ; $6e0f: $39
    ld d, a                                       ; $6e10: $57
    rst $38                                       ; $6e11: $ff
    inc hl                                        ; $6e12: $23
    and b                                         ; $6e13: $a0
    ld e, d                                       ; $6e14: $5a
    dec d                                         ; $6e15: $15
    rlca                                          ; $6e16: $07
    ld [de], a                                    ; $6e17: $12
    pop bc                                        ; $6e18: $c1
    jp nc, $6ad8                                  ; $6e19: $d2 $d8 $6a

    ld c, e                                       ; $6e1c: $4b
    ld h, a                                       ; $6e1d: $67

jr_033_6e1e:
    ei                                            ; $6e1e: $fb
    sbc c                                         ; $6e1f: $99
    rlc [hl]                                      ; $6e20: $cb $06
    jp nz, $08b9                                  ; $6e22: $c2 $b9 $08

    adc c                                         ; $6e25: $89
    ld [hl], d                                    ; $6e26: $72
    or e                                          ; $6e27: $b3
    cp b                                          ; $6e28: $b8
    inc hl                                        ; $6e29: $23
    xor a                                         ; $6e2a: $af
    ld b, l                                       ; $6e2b: $45
    or b                                          ; $6e2c: $b0
    sub h                                         ; $6e2d: $94
    xor h                                         ; $6e2e: $ac
    jp z, $c31a                                   ; $6e2f: $ca $1a $c3

    sbc c                                         ; $6e32: $99
    scf                                           ; $6e33: $37
    call $c301                                    ; $6e34: $cd $01 $c3
    adc h                                         ; $6e37: $8c
    adc d                                         ; $6e38: $8a
    ccf                                           ; $6e39: $3f
    ld d, a                                       ; $6e3a: $57
    ld a, e                                       ; $6e3b: $7b
    sbc e                                         ; $6e3c: $9b
    db $ec                                        ; $6e3d: $ec
    and b                                         ; $6e3e: $a0
    sub [hl]                                      ; $6e3f: $96
    ld [hl], e                                    ; $6e40: $73
    rst $28                                       ; $6e41: $ef
    sbc $ad                                       ; $6e42: $de $ad
    ld d, [hl]                                    ; $6e44: $56
    push de                                       ; $6e45: $d5
    ld hl, $ac75                                  ; $6e46: $21 $75 $ac
    or a                                          ; $6e49: $b7
    daa                                           ; $6e4a: $27
    ld hl, sp+$15                                 ; $6e4b: $f8 $15
    ld h, c                                       ; $6e4d: $61
    db $ec                                        ; $6e4e: $ec
    ld [hl], c                                    ; $6e4f: $71
    and b                                         ; $6e50: $a0
    sub a                                         ; $6e51: $97
    or [hl]                                       ; $6e52: $b6
    call nc, $eeb1                                ; $6e53: $d4 $b1 $ee
    ld e, h                                       ; $6e56: $5c
    rra                                           ; $6e57: $1f
    ret nz                                        ; $6e58: $c0

    push de                                       ; $6e59: $d5
    pop bc                                        ; $6e5a: $c1
    ld e, a                                       ; $6e5b: $5f
    rlca                                          ; $6e5c: $07
    dec l                                         ; $6e5d: $2d
    call nc, $8640                                ; $6e5e: $d4 $40 $86
    inc [hl]                                      ; $6e61: $34
    rlca                                          ; $6e62: $07
    ld c, c                                       ; $6e63: $49
    rra                                           ; $6e64: $1f
    adc e                                         ; $6e65: $8b
    db $fc                                        ; $6e66: $fc
    adc l                                         ; $6e67: $8d
    cp l                                          ; $6e68: $bd
    xor $df                                       ; $6e69: $ee $df
    ld l, d                                       ; $6e6b: $6a
    ld l, a                                       ; $6e6c: $6f
    ld h, a                                       ; $6e6d: $67
    ei                                            ; $6e6e: $fb
    jp c, Jump_000_1acb                           ; $6e6f: $da $cb $1a

    inc bc                                        ; $6e72: $03
    ret z                                         ; $6e73: $c8

    sub [hl]                                      ; $6e74: $96
    db $ed                                        ; $6e75: $ed
    dec bc                                        ; $6e76: $0b
    ld c, e                                       ; $6e77: $4b
    inc bc                                        ; $6e78: $03
    pop hl                                        ; $6e79: $e1
    ld e, h                                       ; $6e7a: $5c
    db $fd                                        ; $6e7b: $fd
    ld de, $e18b                                  ; $6e7c: $11 $8b $e1
    ld a, [hl]                                    ; $6e7f: $7e
    ld c, d                                       ; $6e80: $4a
    db $dd                                        ; $6e81: $dd
    ld c, h                                       ; $6e82: $4c
    call nc, $3f6a                                ; $6e83: $d4 $6a $3f
    and c                                         ; $6e86: $a1
    pop bc                                        ; $6e87: $c1
    ld e, a                                       ; $6e88: $5f
    ld sp, $a756                                  ; $6e89: $31 $56 $a7
    add hl, sp                                    ; $6e8c: $39
    ret                                           ; $6e8d: $c9


    rra                                           ; $6e8e: $1f
    and c                                         ; $6e8f: $a1
    ld e, d                                       ; $6e90: $5a
    dec d                                         ; $6e91: $15
    ld sp, hl                                     ; $6e92: $f9
    cp e                                          ; $6e93: $bb
    or [hl]                                       ; $6e94: $b6
    adc [hl]                                      ; $6e95: $8e
    db $ed                                        ; $6e96: $ed
    ret nz                                        ; $6e97: $c0

    rst $38                                       ; $6e98: $ff
    jp nc, $0b41                                  ; $6e99: $d2 $41 $0b

    add d                                         ; $6e9c: $82
    ld sp, hl                                     ; $6e9d: $f9
    dec c                                         ; $6e9e: $0d
    ld e, h                                       ; $6e9f: $5c
    ld b, [hl]                                    ; $6ea0: $46
    ld h, a                                       ; $6ea1: $67
    ld e, [hl]                                    ; $6ea2: $5e
    add h                                         ; $6ea3: $84
    call nz, Call_033_6ed5                        ; $6ea4: $c4 $d5 $6e
    ld h, [hl]                                    ; $6ea7: $66
    ld b, d                                       ; $6ea8: $42
    xor l                                         ; $6ea9: $ad
    or $ce                                        ; $6eaa: $f6 $ce
    ret c                                         ; $6eac: $d8

    ld h, $fd                                     ; $6ead: $26 $fd
    pop bc                                        ; $6eaf: $c1
    ld l, e                                       ; $6eb0: $6b
    sbc e                                         ; $6eb1: $9b
    dec b                                         ; $6eb2: $05
    dec bc                                        ; $6eb3: $0b
    dec [hl]                                      ; $6eb4: $35
    or $85                                        ; $6eb5: $f6 $85
    and l                                         ; $6eb7: $a5
    add sp, $27                                   ; $6eb8: $e8 $27
    dec e                                         ; $6eba: $1d
    inc c                                         ; $6ebb: $0c
    ld d, e                                       ; $6ebc: $53
    and a                                         ; $6ebd: $a7
    ld l, l                                       ; $6ebe: $6d
    ld [bc], a                                    ; $6ebf: $02
    ld a, a                                       ; $6ec0: $7f
    call Call_033_57e8                            ; $6ec1: $cd $e8 $57
    xor h                                         ; $6ec4: $ac
    rst $08                                       ; $6ec5: $cf
    dec [hl]                                      ; $6ec6: $35
    ld [hl], $10                                  ; $6ec7: $36 $10
    adc d                                         ; $6ec9: $8a
    ld d, a                                       ; $6eca: $57
    or $a5                                        ; $6ecb: $f6 $a5
    adc [hl]                                      ; $6ecd: $8e
    or l                                          ; $6ece: $b5
    inc [hl]                                      ; $6ecf: $34
    or [hl]                                       ; $6ed0: $b6
    ld a, [hl-]                                   ; $6ed1: $3a
    adc h                                         ; $6ed2: $8c
    ld a, $3a                                     ; $6ed3: $3e $3a

Call_033_6ed5:
    bit 0, a                                      ; $6ed5: $cb $47
    db $ec                                        ; $6ed7: $ec
    dec bc                                        ; $6ed8: $0b
    ld c, e                                       ; $6ed9: $4b
    rlca                                          ; $6eda: $07
    dec l                                         ; $6edb: $2d
    db $ec                                        ; $6edc: $ec
    dec h                                         ; $6edd: $25
    sbc c                                         ; $6ede: $99
    scf                                           ; $6edf: $37
    call $a301                                    ; $6ee0: $cd $01 $a3
    cp [hl]                                       ; $6ee3: $be
    ld b, d                                       ; $6ee4: $42
    sub a                                         ; $6ee5: $97
    ret                                           ; $6ee6: $c9


    push bc                                       ; $6ee7: $c5
    sbc $26                                       ; $6ee8: $de $26
    ld e, e                                       ; $6eea: $5b
    sbc h                                         ; $6eeb: $9c
    inc bc                                        ; $6eec: $03
    and e                                         ; $6eed: $a3
    add e                                         ; $6eee: $83
    jp nc, Jump_033_75db                          ; $6eef: $d2 $db $75

    inc e                                         ; $6ef2: $1c
    sbc $c6                                       ; $6ef3: $de $c6
    halt                                          ; $6ef5: $76
    cp b                                          ; $6ef6: $b8
    rst $00                                       ; $6ef7: $c7
    ret nc                                        ; $6ef8: $d0

    ld l, e                                       ; $6ef9: $6b
    nop                                           ; $6efa: $00
    dec sp                                        ; $6efb: $3b
    ld e, h                                       ; $6efc: $5c
    ld d, c                                       ; $6efd: $51
    rst $28                                       ; $6efe: $ef
    db $ed                                        ; $6eff: $ed
    dec hl                                        ; $6f00: $2b
    ld [c], a                                     ; $6f01: $e2
    ld a, l                                       ; $6f02: $7d
    add l                                         ; $6f03: $85
    ld l, c                                       ; $6f04: $69
    ld b, a                                       ; $6f05: $47
    sbc e                                         ; $6f06: $9b
    ld a, [c]                                     ; $6f07: $f2
    ld h, a                                       ; $6f08: $67
    db $ec                                        ; $6f09: $ec
    xor h                                         ; $6f0a: $ac
    rst $38                                       ; $6f0b: $ff
    ret                                           ; $6f0c: $c9


    cp c                                          ; $6f0d: $b9
    ld l, h                                       ; $6f0e: $6c
    nop                                           ; $6f0f: $00
    ld a, b                                       ; $6f10: $78
    add $1c                                       ; $6f11: $c6 $1c
    and e                                         ; $6f13: $a3
    ld c, l                                       ; $6f14: $4d
    ld sp, hl                                     ; $6f15: $f9
    inc sp                                        ; $6f16: $33
    halt                                          ; $6f17: $76
    sub $ff                                       ; $6f18: $d6 $ff
    ld h, h                                       ; $6f1a: $64
    add $8e                                       ; $6f1b: $c6 $8e
    cp $d8                                        ; $6f1d: $fe $d8
    jp $deb1                                      ; $6f1f: $c3 $b1 $de


    ld [hl-], a                                   ; $6f22: $32
    jp $e633                                      ; $6f23: $c3 $33 $e6


    add hl, bc                                    ; $6f26: $09
    db $db                                        ; $6f27: $db
    cp e                                          ; $6f28: $bb
    add hl, hl                                    ; $6f29: $29
    ld a, a                                       ; $6f2a: $7f
    ld a, $ca                                     ; $6f2b: $3e $ca
    db $e4                                        ; $6f2d: $e4
    ld c, a                                       ; $6f2e: $4f

jr_033_6f2f:
    pop de                                        ; $6f2f: $d1
    ld d, e                                       ; $6f30: $53
    rst $38                                       ; $6f31: $ff
    sub e                                         ; $6f32: $93
    ld h, d                                       ; $6f33: $62
    xor h                                         ; $6f34: $ac
    ld l, $33                                     ; $6f35: $2e $33
    call c, Call_000_26d8                         ; $6f37: $dc $d8 $26
    ld e, a                                       ; $6f3a: $5f
    reti                                          ; $6f3b: $d9


    db $fd                                        ; $6f3c: $fd
    dec bc                                        ; $6f3d: $0b
    ldh [$8c], a                                  ; $6f3e: $e0 $8c
    ld c, l                                       ; $6f40: $4d
    jr c, jr_033_6fad                             ; $6f41: $38 $6a

    ld b, c                                       ; $6f43: $41
    ldh a, [$ce]                                  ; $6f44: $f0 $ce
    ret c                                         ; $6f46: $d8

    add h                                         ; $6f47: $84
    and e                                         ; $6f48: $a3
    db $e4                                        ; $6f49: $e4
    cp e                                          ; $6f4a: $bb
    inc bc                                        ; $6f4b: $03
    cp h                                          ; $6f4c: $bc
    inc sp                                        ; $6f4d: $33
    and $09                                       ; $6f4e: $e6 $09
    db $fc                                        ; $6f50: $fc
    sub l                                         ; $6f51: $95
    adc l                                         ; $6f52: $8d
    db $ed                                        ; $6f53: $ed
    ld e, [hl]                                    ; $6f54: $5e
    db $fc                                        ; $6f55: $fc
    ld [hl], l                                    ; $6f56: $75
    add e                                         ; $6f57: $83
    ccf                                           ; $6f58: $3f
    ld l, b                                       ; $6f59: $68
    ld l, h                                       ; $6f5a: $6c

Jump_033_6f5b:
    sub e                                         ; $6f5b: $93
    xor a                                         ; $6f5c: $af
    db $ec                                        ; $6f5d: $ec
    cp $05                                        ; $6f5e: $fe $05
    jr nc, jr_033_6f2f                            ; $6f60: $30 $cd

    ld bc, $7f49                                  ; $6f62: $01 $49 $7f
    or a                                          ; $6f65: $b7
    and b                                         ; $6f66: $a0
    and b                                         ; $6f67: $a0
    add $1e                                       ; $6f68: $c6 $1e
    ld hl, $cd9d                                  ; $6f6a: $21 $9d $cd
    and c                                         ; $6f6d: $a1
    db $d3                                        ; $6f6e: $d3
    adc [hl]                                      ; $6f6f: $8e

Call_033_6f70:
    ld c, $a9                                     ; $6f70: $0e $a9
    ld h, $09                                     ; $6f72: $26 $09
    pop hl                                        ; $6f74: $e1
    ld l, l                                       ; $6f75: $6d
    jp nz, Jump_033_6f5b                          ; $6f76: $c2 $5b $6f

    ld e, a                                       ; $6f79: $5f
    ld e, b                                       ; $6f7a: $58
    cp d                                          ; $6f7b: $ba
    pop bc                                        ; $6f7c: $c1
    rra                                           ; $6f7d: $1f
    ld h, b                                       ; $6f7e: $60
    rlca                                          ; $6f7f: $07
    dec l                                         ; $6f80: $2d
    or a                                          ; $6f81: $b7
    xor a                                         ; $6f82: $af
    ld [$5a6f], sp                                ; $6f83: $08 $6f $5a
    ld h, [hl]                                    ; $6f86: $66
    cp b                                          ; $6f87: $b8
    or a                                          ; $6f88: $b7
    or c                                          ; $6f89: $b1
    ld [hl], a                                    ; $6f8a: $77
    cp l                                          ; $6f8b: $bd
    push bc                                       ; $6f8c: $c5
    ldh [$af], a                                  ; $6f8d: $e0 $af
    sbc a                                         ; $6f8f: $9f
    or l                                          ; $6f90: $b5
    inc [hl]                                      ; $6f91: $34
    or e                                          ; $6f92: $b3
    xor h                                         ; $6f93: $ac
    ld a, e                                       ; $6f94: $7b
    ld [hl], a                                    ; $6f95: $77
    add b                                         ; $6f96: $80
    and l                                         ; $6f97: $a5
    ld [$3f40], a                                 ; $6f98: $ea $40 $3f
    rst $28                                       ; $6f9b: $ef
    cp c                                          ; $6f9c: $b9
    ld [hl], a                                    ; $6f9d: $77
    rst $28                                       ; $6f9e: $ef
    sub [hl]                                      ; $6f9f: $96
    add hl, de                                    ; $6fa0: $19
    xor $31                                       ; $6fa1: $ee $31
    ld [hl], $7f                                  ; $6fa3: $36 $7f
    ldh [rKEY1], a                                ; $6fa5: $e0 $4d
    dec sp                                        ; $6fa7: $3b
    inc a                                         ; $6fa8: $3c
    sub $5b                                       ; $6fa9: $d6 $5b
    db $e4                                        ; $6fab: $e4
    ld l, a                                       ; $6fac: $6f

jr_033_6fad:
    db $ec                                        ; $6fad: $ec
    push af                                       ; $6fae: $f5
    halt                                          ; $6faf: $76
    xor $9f                                       ; $6fb0: $ee $9f
    ld [hl], l                                    ; $6fb2: $75
    cpl                                           ; $6fb3: $2f
    cp $d2                                        ; $6fb4: $fe $d2
    inc e                                         ; $6fb6: $1c
    or e                                          ; $6fb7: $b3
    sub b                                         ; $6fb8: $90
    and h                                         ; $6fb9: $a4
    and a                                         ; $6fba: $a7
    ld e, d                                       ; $6fbb: $5a
    ld a, e                                       ; $6fbc: $7b
    ld a, e                                       ; $6fbd: $7b
    jp nz, $ac57                                  ; $6fbe: $c2 $57 $ac

    push bc                                       ; $6fc1: $c5
    jp nc, Jump_033_582c                          ; $6fc2: $d2 $2c $58

    xor b                                         ; $6fc5: $a8
    or c                                          ; $6fc6: $b1
    xor e                                         ; $6fc7: $ab

jr_033_6fc8:
    and h                                         ; $6fc8: $a4
    adc [hl]                                      ; $6fc9: $8e
    push af                                       ; $6fca: $f5
    sub $b1                                       ; $6fcb: $d6 $b1
    db $e4                                        ; $6fcd: $e4
    ret z                                         ; $6fce: $c8

    cp h                                          ; $6fcf: $bc
    call $c8ec                                    ; $6fd0: $cd $ec $c8
    sub $e0                                       ; $6fd3: $d6 $e0
    db $ed                                        ; $6fd5: $ed
    add hl, bc                                    ; $6fd6: $09
    ld e, a                                       ; $6fd7: $5f
    or c                                          ; $6fd8: $b1
    ld d, $84                                     ; $6fd9: $16 $84
    rst $08                                       ; $6fdb: $cf
    and [hl]                                      ; $6fdc: $a6
    dec e                                         ; $6fdd: $1d
    dec e                                         ; $6fde: $1d
    jp nc, $8483                                  ; $6fdf: $d2 $83 $84

    add sp, -$53                                  ; $6fe2: $e8 $ad
    ld h, e                                       ; $6fe4: $63
    inc hl                                        ; $6fe5: $23
    ld [hl], e                                    ; $6fe6: $73
    cp a                                          ; $6fe7: $bf
    jp nz, $b901                                  ; $6fe8: $c2 $01 $b9

    ret c                                         ; $6feb: $d8

    or b                                          ; $6fec: $b0
    ld a, b                                       ; $6fed: $78
    rst $08                                       ; $6fee: $cf
    ld h, l                                       ; $6fef: $65
    dec a                                         ; $6ff0: $3d
    ld a, b                                       ; $6ff1: $78
    ld c, c                                       ; $6ff2: $49
    rst $28                                       ; $6ff3: $ef
    ld hl, $ded5                                  ; $6ff4: $21 $d5 $de
    ld c, d                                       ; $6ff7: $4a
    ldh a, [rTAC]                                 ; $6ff8: $f0 $07
    sub c                                         ; $6ffa: $91
    ld a, c                                       ; $6ffb: $79
    ld c, e                                       ; $6ffc: $4b
    sub b                                         ; $6ffd: $90
    and h                                         ; $6ffe: $a4
    call z, $8970                                 ; $6fff: $cc $70 $89
    ld e, b                                       ; $7002: $58
    db $ed                                        ; $7003: $ed
    ld c, l                                       ; $7004: $4d
    dec sp                                        ; $7005: $3b
    ld c, d                                       ; $7006: $4a
    ld l, $36                                     ; $7007: $2e $36
    inc l                                         ; $7009: $2c
    sbc $32                                       ; $700a: $de $32
    jp $3e3d                                      ; $700c: $c3 $3d $3e


    xor l                                         ; $700f: $ad
    ld c, $a3                                     ; $7010: $0e $a3
    scf                                           ; $7012: $37
    call Call_033_7301                            ; $7013: $cd $01 $73
    db $10                                        ; $7016: $10
    add h                                         ; $7017: $84
    rla                                           ; $7018: $17
    add e                                         ; $7019: $83
    ccf                                           ; $701a: $3f
    and b                                         ; $701b: $a0
    pop bc                                        ; $701c: $c1
    ld e, a                                       ; $701d: $5f
    scf                                           ; $701e: $37
    ld hl, sp-$7d                                 ; $701f: $f8 $83
    ld l, d                                       ; $7021: $6a
    ld c, e                                       ; $7022: $4b
    rst $20                                       ; $7023: $e7
    ld a, [bc]                                    ; $7024: $0a
    cp $20                                        ; $7025: $fe $20
    ld [hl-], a                                   ; $7027: $32
    sub a                                         ; $7028: $97
    jr nz, jr_033_7074                            ; $7029: $20 $49

    sbc c                                         ; $702b: $99
    pop hl                                        ; $702c: $e1
    or h                                          ; $702d: $b4
    di                                            ; $702e: $f3
    ld e, d                                       ; $702f: $5a
    ld d, b                                       ; $7030: $50
    pop af                                        ; $7031: $f1
    rst $20                                       ; $7032: $e7
    dec l                                         ; $7033: $2d
    inc sp                                        ; $7034: $33
    ld e, h                                       ; $7035: $5c
    ld a, [de]                                    ; $7036: $1a
    ld h, [hl]                                    ; $7037: $66
    dec l                                         ; $7038: $2d
    dec a                                         ; $7039: $3d
    ld a, $ad                                     ; $703a: $3e $ad
    ld c, $a3                                     ; $703c: $0e $a3
    or a                                          ; $703e: $b7
    cpl                                           ; $703f: $2f
    inc l                                         ; $7040: $2c
    ld l, c                                       ; $7041: $69
    ld c, $23                                     ; $7042: $0e $23
    add sp, $1f                                   ; $7044: $e8 $1f
    jr jr_033_6fc8                                ; $7046: $18 $80

    ld a, [de]                                    ; $7048: $1a
    dec de                                        ; $7049: $1b
    rst $00                                       ; $704a: $c7
    ld h, c                                       ; $704b: $61
    jp hl                                         ; $704c: $e9


    ld e, [hl]                                    ; $704d: $5e
    db $fc                                        ; $704e: $fc
    ld [hl], l                                    ; $704f: $75
    add e                                         ; $7050: $83
    ccf                                           ; $7051: $3f
    sbc b                                         ; $7052: $98
    or c                                          ; $7053: $b1
    sbc l                                         ; $7054: $9d
    scf                                           ; $7055: $37
    ld c, h                                       ; $7056: $4c
    xor c                                         ; $7057: $a9
    add e                                         ; $7058: $83
    ccf                                           ; $7059: $3f
    jr z, jr_033_7087                             ; $705a: $28 $2b

    ld e, a                                       ; $705c: $5f
    pop af                                        ; $705d: $f1
    rst $20                                       ; $705e: $e7
    dec l                                         ; $705f: $2d
    inc sp                                        ; $7060: $33
    ld e, h                                       ; $7061: $5c
    rst $00                                       ; $7062: $c7
    ld a, d                                       ; $7063: $7a
    sbc e                                         ; $7064: $9b
    db $fd                                        ; $7065: $fd
    dec h                                         ; $7066: $25
    sub a                                         ; $7067: $97
    dec [hl]                                      ; $7068: $35
    ld e, [hl]                                    ; $7069: $5e
    xor e                                         ; $706a: $ab
    dec l                                         ; $706b: $2d
    sbc $9e                                       ; $706c: $de $9e
    ldh a, [$15]                                  ; $706e: $f0 $15
    ld l, e                                       ; $7070: $6b
    ld b, c                                       ; $7071: $41
    ld hl, sp+$6c                                 ; $7072: $f8 $6c

jr_033_7074:
    jp c, Jump_000_1f26                           ; $7074: $da $26 $1f

    rst $20                                       ; $7077: $e7
    ld b, $7f                                     ; $7078: $06 $7f
    ld a, l                                       ; $707a: $7d
    sbc a                                         ; $707b: $9f
    ld [hl], l                                    ; $707c: $75
    push af                                       ; $707d: $f5
    xor a                                         ; $707e: $af
    ld h, e                                       ; $707f: $63
    db $dd                                        ; $7080: $dd
    inc b                                         ; $7081: $04
    ld l, l                                       ; $7082: $6d
    scf                                           ; $7083: $37
    ld c, l                                       ; $7084: $4d
    db $d3                                        ; $7085: $d3
    inc e                                         ; $7086: $1c

jr_033_7087:
    add hl, bc                                    ; $7087: $09
    db $fc                                        ; $7088: $fc
    dec [hl]                                      ; $7089: $35
    and e                                         ; $708a: $a3
    ld e, a                                       ; $708b: $5f
    or c                                          ; $708c: $b1
    ld a, $37                                     ; $708d: $3e $37
    ld hl, sp-$15                                 ; $708f: $f8 $eb
    ei                                            ; $7091: $fb
    xor h                                         ; $7092: $ac
    xor e                                         ; $7093: $ab
    cp l                                          ; $7094: $bd
    sub l                                         ; $7095: $95
    ldh [rIF], a                                  ; $7096: $e0 $0f
    ld [hl+], a                                   ; $7098: $22
    di                                            ; $7099: $f3
    or $84                                        ; $709a: $f6 $84
    xor a                                         ; $709c: $af
    ld e, b                                       ; $709d: $58
    dec bc                                        ; $709e: $0b
    jp nz, Jump_033_4b67                          ; $709f: $c2 $67 $4b

    sub b                                         ; $70a2: $90
    and h                                         ; $70a3: $a4
    call z, $3370                                 ; $70a4: $cc $70 $33
    inc de                                        ; $70a7: $13
    ld l, d                                       ; $70a8: $6a
    or l                                          ; $70a9: $b5
    rst $30                                       ; $70aa: $f7
    call c, $9291                                 ; $70ab: $dc $91 $92
    halt                                          ; $70ae: $76
    call nc, Call_033_6005                        ; $70af: $d4 $05 $60
    ld c, c                                       ; $70b2: $49
    dec sp                                        ; $70b3: $3b
    ld e, h                                       ; $70b4: $5c
    ld a, [hl-]                                   ; $70b5: $3a
    ld l, b                                       ; $70b6: $68
    ld hl, $1948                                  ; $70b7: $21 $48 $19
    inc d                                         ; $70ba: $14
    xor a                                         ; $70bb: $af
    ei                                            ; $70bc: $fb
    push af                                       ; $70bd: $f5
    ld l, b                                       ; $70be: $68
    ld c, c                                       ; $70bf: $49
    xor h                                         ; $70c0: $ac
    and l                                         ; $70c1: $a5
    jp c, Jump_033_59db                           ; $70c2: $da $db $59

    ld l, b                                       ; $70c5: $68
    inc c                                         ; $70c6: $0c
    ld a, b                                       ; $70c7: $78
    push af                                       ; $70c8: $f5
    dec [hl]                                      ; $70c9: $35
    ld [hl], c                                    ; $70ca: $71
    ccf                                           ; $70cb: $3f
    push bc                                       ; $70cc: $c5
    ld a, [hl]                                    ; $70cd: $7e
    push bc                                       ; $70ce: $c5
    ld e, a                                       ; $70cf: $5f
    ld c, c                                       ; $70d0: $49
    xor h                                         ; $70d1: $ac
    and l                                         ; $70d2: $a5
    jp c, Jump_033_79db                           ; $70d3: $da $db $79

    dec l                                         ; $70d6: $2d
    ld b, a                                       ; $70d7: $47
    ld d, b                                       ; $70d8: $50
    ld a, [de]                                    ; $70d9: $1a
    sub a                                         ; $70da: $97
    jp nz, $b3ce                                  ; $70db: $c2 $ce $b3

    rst $10                                       ; $70de: $d7
    call nz, Call_033_7c27                        ; $70df: $c4 $27 $7c
    push bc                                       ; $70e2: $c5
    ld e, d                                       ; $70e3: $5a
    adc $d5                                       ; $70e4: $ce $d5
    sub [hl]                                      ; $70e6: $96
    or d                                          ; $70e7: $b2
    adc [hl]                                      ; $70e8: $8e
    sbc [hl]                                      ; $70e9: $9e
    ldh a, [$15]                                  ; $70ea: $f0 $15
    ld l, e                                       ; $70ec: $6b
    or c                                          ; $70ed: $b1
    ld l, b                                       ; $70ee: $68
    ld h, l                                       ; $70ef: $65
    ld c, d                                       ; $70f0: $4a
    cp l                                          ; $70f1: $bd
    ld b, l                                       ; $70f2: $45
    ccf                                           ; $70f3: $3f
    jp hl                                         ; $70f4: $e9


    sub d                                         ; $70f5: $92
    add b                                         ; $70f6: $80
    ld c, h                                       ; $70f7: $4c
    add e                                         ; $70f8: $83
    cp a                                          ; $70f9: $bf
    and d                                         ; $70fa: $a2
    ld h, e                                       ; $70fb: $63
    ld a, e                                       ; $70fc: $7b
    ei                                            ; $70fd: $fb
    cp e                                          ; $70fe: $bb
    ld l, c                                       ; $70ff: $69
    ld c, $09                                     ; $7100: $0e $09
    db $fc                                        ; $7102: $fc
    push af                                       ; $7103: $f5
    ld a, l                                       ; $7104: $7d
    sub $a5                                       ; $7105: $d6 $a5
    ld c, $6d                                     ; $7107: $0e $6d
    jp hl                                         ; $7109: $e9


    ld b, $7f                                     ; $710a: $06 $7f
    ret nc                                        ; $710c: $d0

    call z, $b2ab                                 ; $710d: $cc $ab $b2
    ld [hl-], a                                   ; $7110: $32
    sbc d                                         ; $7111: $9a
    ld [$d573], a                                 ; $7112: $ea $73 $d5
    pop de                                        ; $7115: $d1
    ld a, b                                       ; $7116: $78
    ld e, e                                       ; $7117: $5b
    or d                                          ; $7118: $b2
    ld [$2bed], a                                 ; $7119: $ea $ed $2b
    jp nz, $e69b                                  ; $711c: $c2 $9b $e6

    ret                                           ; $711f: $c9


    ccf                                           ; $7120: $3f
    sub e                                         ; $7121: $93
    ret nc                                        ; $7122: $d0

    ld a, l                                       ; $7123: $7d
    rra                                           ; $7124: $1f
    sbc d                                         ; $7125: $9a
    ldh a, [$d6]                                  ; $7126: $f0 $d6
    db $db                                        ; $7128: $db
    ret                                           ; $7129: $c9


    ld h, $9b                                     ; $712a: $26 $9b
    xor [hl]                                      ; $712c: $ae
    call z, Call_000_37e0                         ; $712d: $cc $e0 $37
    db $d3                                        ; $7130: $d3
    ld a, [hl]                                    ; $7131: $7e
    ld b, l                                       ; $7132: $45
    inc [hl]                                      ; $7133: $34
    pop hl                                        ; $7134: $e1
    adc c                                         ; $7135: $89
    adc a                                         ; $7136: $8f
    adc [hl]                                      ; $7137: $8e
    cp b                                          ; $7138: $b8
    ld d, $ae                                     ; $7139: $16 $ae
    or d                                          ; $713b: $b2
    adc [hl]                                      ; $713c: $8e
    ld [hl-], a                                   ; $713d: $32
    ld c, d                                       ; $713e: $4a
    ld l, h                                       ; $713f: $6c
    halt                                          ; $7140: $76
    ld bc, $3360                                  ; $7141: $01 $60 $33
    dec b                                         ; $7144: $05
    ret z                                         ; $7145: $c8

    sbc a                                         ; $7146: $9f
    jr c, jr_033_71a1                             ; $7147: $38 $58

    ld l, a                                       ; $7149: $6f
    jp hl                                         ; $714a: $e9


    ld b, a                                       ; $714b: $47
    db $f4                                        ; $714c: $f4
    and [hl]                                      ; $714d: $a6
    sbc l                                         ; $714e: $9d
    scf                                           ; $714f: $37
    ld c, h                                       ; $7150: $4c
    cp l                                          ; $7151: $bd
    ld c, l                                       ; $7152: $4d
    ld a, [$2b7b]                                 ; $7153: $fa $7b $2b
    ld b, c                                       ; $7156: $41

jr_033_7157:
    sub d                                         ; $7157: $92
    ld h, $3c                                     ; $7158: $26 $3c
    pop af                                        ; $715a: $f1
    halt                                          ; $715b: $76
    ld a, b                                       ; $715c: $78
    db $ec                                        ; $715d: $ec
    db $ed                                        ; $715e: $ed
    dec hl                                        ; $715f: $2b
    ld [hl+], a                                   ; $7160: $22
    ld l, l                                       ; $7161: $6d
    ld [bc], a                                    ; $7162: $02
    ld a, a                                       ; $7163: $7f
    ld h, l                                       ; $7164: $65
    ld h, e                                       ; $7165: $63
    adc e                                         ; $7166: $8b
    pop bc                                        ; $7167: $c1
    sbc a                                         ; $7168: $9f
    push hl                                       ; $7169: $e5
    ld e, h                                       ; $716a: $5c
    db $fd                                        ; $716b: $fd
    ld de, $2dab                                  ; $716c: $11 $ab $2d
    dec a                                         ; $716f: $3d
    pop hl                                        ; $7170: $e1
    dec hl                                        ; $7171: $2b
    sub $82                                       ; $7172: $d6 $82
    ldh a, [$d9]                                  ; $7174: $f0 $d9
    or d                                          ; $7176: $b2
    adc [hl]                                      ; $7177: $8e
    ld h, $bc                                     ; $7178: $26 $bc
    push af                                       ; $717a: $f5
    ld [hl], $b6                                  ; $717b: $36 $b6
    sbc c                                         ; $717d: $99
    ld [bc], a                                    ; $717e: $02
    ld l, a                                       ; $717f: $6f
    sub e                                         ; $7180: $93
    inc de                                        ; $7181: $13
    ld d, a                                       ; $7182: $57
    ld a, e                                       ; $7183: $7b
    dec de                                        ; $7184: $1b
    ld [$0e69], sp                                ; $7185: $08 $69 $0e
    add hl, bc                                    ; $7188: $09
    db $fc                                        ; $7189: $fc
    ld d, l                                       ; $718a: $55
    rst $38                                       ; $718b: $ff
    cp l                                          ; $718c: $bd
    cp c                                          ; $718d: $b9
    add hl, bc                                    ; $718e: $09
    ld l, a                                       ; $718f: $6f
    cp l                                          ; $7190: $bd
    rst $20                                       ; $7191: $e7
    adc [hl]                                      ; $7192: $8e
    sub h                                         ; $7193: $94
    or h                                          ; $7194: $b4
    and e                                         ; $7195: $a3
    ld l, $00                                     ; $7196: $2e $00
    ld c, e                                       ; $7198: $4b
    sbc d                                         ; $7199: $9a
    inc bc                                        ; $719a: $03
    di                                            ; $719b: $f3
    ld e, d                                       ; $719c: $5a
    ld d, b                                       ; $719d: $50
    pop af                                        ; $719e: $f1
    rst $20                                       ; $719f: $e7
    dec l                                         ; $71a0: $2d

jr_033_71a1:
    inc sp                                        ; $71a1: $33
    ld e, h                                       ; $71a2: $5c
    rst $00                                       ; $71a3: $c7
    ld e, $9f                                     ; $71a4: $1e $9f
    ld d, [hl]                                    ; $71a6: $56
    add a                                         ; $71a7: $87
    pop de                                        ; $71a8: $d1
    db $db                                        ; $71a9: $db
    adc c                                         ; $71aa: $89
    rlc h                                         ; $71ab: $cb $04
    di                                            ; $71ad: $f3
    scf                                           ; $71ae: $37
    ldh a, [$e9]                                  ; $71af: $f0 $e9
    pop hl                                        ; $71b1: $e1
    xor d                                         ; $71b2: $aa
    push de                                       ; $71b3: $d5
    dec e                                         ; $71b4: $1d
    push af                                       ; $71b5: $f5
    add $de                                       ; $71b6: $c6 $de
    jr c, jr_033_7157                             ; $71b8: $38 $9d

    or b                                          ; $71ba: $b0
    or [hl]                                       ; $71bb: $b6
    and h                                         ; $71bc: $a4
    add hl, sp                                    ; $71bd: $39
    ret                                           ; $71be: $c9


    sbc a                                         ; $71bf: $9f
    jp nc, $dceb                                  ; $71c0: $d2 $eb $dc

    ld d, e                                       ; $71c3: $53
    push de                                       ; $71c4: $d5
    ld h, [hl]                                    ; $71c5: $66
    sub [hl]                                      ; $71c6: $96
    adc [hl]                                      ; $71c7: $8e
    db $fc                                        ; $71c8: $fc
    cp e                                          ; $71c9: $bb
    ld l, c                                       ; $71ca: $69
    sbc c                                         ; $71cb: $99
    or c                                          ; $71cc: $b1
    cp d                                          ; $71cd: $ba
    call z, $e370                                 ; $71ce: $cc $70 $e3
    xor b                                         ; $71d1: $a8
    dec b                                         ; $71d2: $05
    pop bc                                        ; $71d3: $c1
    db $db                                        ; $71d4: $db
    ld e, c                                       ; $71d5: $59
    rst $38                                       ; $71d6: $ff
    sub e                                         ; $71d7: $93
    add $36                                       ; $71d8: $c6 $36
    ld sp, hl                                     ; $71da: $f9
    jp z, $5fee                                   ; $71db: $ca $ee $5f

    nop                                           ; $71de: $00
    ld h, a                                       ; $71df: $67
    call z, Call_000_0901                         ; $71e0: $cc $01 $09
    db $fc                                        ; $71e3: $fc
    push af                                       ; $71e4: $f5
    ld l, [hl]                                    ; $71e5: $6e
    pop de                                        ; $71e6: $d1
    ld l, $fb                                     ; $71e7: $2e $fb
    xor c                                         ; $71e9: $a9
    xor $7e                                       ; $71ea: $ee $7e
    cp $9a                                        ; $71ec: $fe $9a
    ld a, h                                       ; $71ee: $7c
    ld h, l                                       ; $71ef: $65
    rst $30                                       ; $71f0: $f7
    cpl                                           ; $71f1: $2f
    add b                                         ; $71f2: $80
    call $bcfc                                    ; $71f3: $cd $fc $bc
    ld l, c                                       ; $71f6: $69
    ld c, $cc                                     ; $71f7: $0e $cc
    ld [hl], b                                    ; $71f9: $70
    rst $28                                       ; $71fa: $ef
    add c                                         ; $71fb: $81
    add sp, $2d                                   ; $71fc: $e8 $2d
    ld b, $7f                                     ; $71fe: $06 $7f

Call_033_7200:
    sub [hl]                                      ; $7200: $96
    ld [hl], e                                    ; $7201: $73
    push af                                       ; $7202: $f5
    ld b, a                                       ; $7203: $47
    ld l, h                                       ; $7204: $6c
    ldh a, [$d7]                                  ; $7205: $f0 $d7
    add h                                         ; $7207: $84
    or a                                          ; $7208: $b7
    sbc $6e                                       ; $7209: $de $6e
    ldh a, [rTAC]                                 ; $720b: $f0 $07

jr_033_720d:
    ret c                                         ; $720d: $d8

    ld b, c                                       ; $720e: $41
    set 5, l                                      ; $720f: $cb $ed
    dec hl                                        ; $7211: $2b
    jp nz, $dbdb                                  ; $7212: $c2 $db $db

    rst $18                                       ; $7215: $df
    ld c, l                                       ; $7216: $4d
    set 6, h                                      ; $7217: $cb $f4
    di                                            ; $7219: $f3
    sub [hl]                                      ; $721a: $96
    add hl, de                                    ; $721b: $19
    ld l, $06                                     ; $721c: $2e $06
    ld a, a                                       ; $721e: $7f
    dec a                                         ; $721f: $3d
    push de                                       ; $7220: $d5
    ld a, [$afe2]                                 ; $7221: $fa $e2 $af
    and d                                         ; $7224: $a2
    ld e, [hl]                                    ; $7225: $5e
    ld h, h                                       ; $7226: $64
    ld [hl], l                                    ; $7227: $75
    ld l, h                                       ; $7228: $6c
    rst $28                                       ; $7229: $ef
    sbc $c8                                       ; $722a: $de $c8
    xor d                                         ; $722c: $aa
    adc [hl]                                      ; $722d: $8e
    inc [hl]                                      ; $722e: $34
    rlca                                          ; $722f: $07
    ld b, e                                       ; $7230: $43
    rst $18                                       ; $7231: $df
    cp c                                          ; $7232: $b9
    adc [hl]                                      ; $7233: $8e
    db $ed                                        ; $7234: $ed
    xor c                                         ; $7235: $a9
    ld l, d                                       ; $7236: $6a
    inc sp                                        ; $7237: $33
    ld c, e                                       ; $7238: $4b
    add hl, de                                    ; $7239: $19
    ld c, l                                       ; $723a: $4d
    db $fd                                        ; $723b: $fd
    inc b                                         ; $723c: $04
    inc l                                         ; $723d: $2c
    ld l, c                                       ; $723e: $69
    sbc c                                         ; $723f: $99
    pop hl                                        ; $7240: $e1
    ld h, d                                       ; $7241: $62
    xor h                                         ; $7242: $ac
    ld l, $eb                                     ; $7243: $2e $eb
    add sp, $2c                                   ; $7245: $e8 $2c
    db $f4                                        ; $7247: $f4
    ld d, d                                       ; $7248: $52
    ld [de], a                                    ; $7249: $12
    ld hl, sp-$06                                 ; $724a: $f8 $fa
    ld d, a                                       ; $724c: $57
    ld [hl], a                                    ; $724d: $77
    jr jr_033_720d                                ; $724e: $18 $bd

    nop                                           ; $7250: $00
    or b                                          ; $7251: $b0
    ld [hl], c                                    ; $7252: $71
    inc e                                         ; $7253: $1c
    sub [hl]                                      ; $7254: $96
    sbc $83                                       ; $7255: $de $83
    jp nc, Jump_033_75db                          ; $7257: $d2 $db $75

    inc e                                         ; $725a: $1c
    sbc $b4                                       ; $725b: $de $b4
    ld c, l                                       ; $725d: $4d
    cp [hl]                                       ; $725e: $be
    or d                                          ; $725f: $b2
    ei                                            ; $7260: $fb
    rla                                           ; $7261: $17
    ret nz                                        ; $7262: $c0

    ld [hl], e                                    ; $7263: $73
    dec l                                         ; $7264: $2d
    ld [$cec6], sp                                ; $7265: $08 $c6 $ce
    ld a, [$cc9f]                                 ; $7268: $fa $9f $cc
    sbc b                                         ; $726b: $98
    inc bc                                        ; $726c: $03
    or e                                          ; $726d: $b3
    cp $34                                        ; $726e: $fe $34
    rlca                                          ; $7270: $07
    ret                                           ; $7271: $c9


    ld h, c                                       ; $7272: $61
    add hl, hl                                    ; $7273: $29
    add $ea                                       ; $7274: $c6 $ea
    ld h, $3c                                     ; $7276: $26 $3c
    ld [hl], c                                    ; $7278: $71
    add a                                         ; $7279: $87
    sub c                                         ; $727a: $91
    ld hl, sp-$4d                                 ; $727b: $f8 $b3
    sbc h                                         ; $727d: $9c
    bit 3, d                                      ; $727e: $cb $5a
    inc e                                         ; $7280: $1c
    add b                                         ; $7281: $80
    push bc                                       ; $7282: $c5
    ld c, e                                       ; $7283: $4b
    jr nz, jr_033_72b2                            ; $7284: $20 $2c

    sub b                                         ; $7286: $90
    or [hl]                                       ; $7287: $b6
    ld c, c                                       ; $7288: $49
    rra                                           ; $7289: $1f
    ld a, e                                       ; $728a: $7b
    ld a, h                                       ; $728b: $7c
    cp $a0                                        ; $728c: $fe $a0
    sub e                                         ; $728e: $93
    ld c, l                                       ; $728f: $4d
    add hl, sp                                    ; $7290: $39
    ld b, l                                       ; $7291: $45
    sbc c                                         ; $7292: $99
    pop bc                                        ; $7293: $c1
    ld l, a                                       ; $7294: $6f
    and [hl]                                      ; $7295: $a6
    ld l, c                                       ; $7296: $69
    ld c, $f3                                     ; $7297: $0e $f3
    add [hl]                                      ; $7299: $86
    xor c                                         ; $729a: $a9
    or a                                          ; $729b: $b7
    ld c, c                                       ; $729c: $49
    ld a, a                                       ; $729d: $7f
    ld l, a                                       ; $729e: $6f
    rst $20                                       ; $729f: $e7
    ld [$588f], a                                 ; $72a0: $ea $8f $58
    ld h, [hl]                                    ; $72a3: $66
    cp b                                          ; $72a4: $b8
    xor h                                         ; $72a5: $ac
    and e                                         ; $72a6: $a3
    or e                                          ; $72a7: $b3
    ret nc                                        ; $72a8: $d0

    ld c, e                                       ; $72a9: $4b
    ld c, c                                       ; $72aa: $49
    ldh [$ab], a                                  ; $72ab: $e0 $ab
    ld e, d                                       ; $72ad: $5a
    db $dd                                        ; $72ae: $dd
    ld h, c                                       ; $72af: $61
    db $f4                                        ; $72b0: $f4
    ld [bc], a                                    ; $72b1: $02

jr_033_72b2:
    ret nz                                        ; $72b2: $c0

    ld a, [hl-]                                   ; $72b3: $3a
    ld [hl], $f3                                  ; $72b4: $36 $f3
    db $ed                                        ; $72b6: $ed
    dec hl                                        ; $72b7: $2b
    ld [bc], a                                    ; $72b8: $02
    ld a, [$eb3e]                                 ; $72b9: $fa $3e $eb
    ld c, l                                       ; $72bc: $4d
    db $db                                        ; $72bd: $db
    ld a, c                                       ; $72be: $79
    jp $ccb4                                      ; $72bf: $c3 $b4 $cc


    add c                                         ; $72c2: $81
    ccf                                           ; $72c3: $3f
    ld c, [hl]                                    ; $72c4: $4e
    ld e, c                                       ; $72c5: $59
    rst $00                                       ; $72c6: $c7
    pop de                                        ; $72c7: $d1
    reti                                          ; $72c8: $d9


    adc h                                         ; $72c9: $8c
    sbc $21                                       ; $72ca: $de $21
    add hl, sp                                    ; $72cc: $39
    add hl, bc                                    ; $72cd: $09
    db $fc                                        ; $72ce: $fc
    push af                                       ; $72cf: $f5
    ld a, l                                       ; $72d0: $7d
    sub $dd                                       ; $72d1: $d6 $dd
    ldh [rIF], a                                  ; $72d3: $e0 $0f
    adc d                                         ; $72d5: $8a
    ld d, a                                       ; $72d6: $57
    rlca                                          ; $72d7: $07
    jp $8cb4                                      ; $72d8: $c3 $b4 $8c


    and [hl]                                      ; $72db: $a6
    ld a, [hl-]                                   ; $72dc: $3a
    call Call_033_4c01                            ; $72dd: $cd $01 $4c
    cp $be                                        ; $72e0: $fe $be
    halt                                          ; $72e2: $76
    jp c, $f026                                   ; $72e3: $da $26 $f0

    ld d, a                                       ; $72e6: $57
    ld [hl], $b6                                  ; $72e7: $36 $b6
    ld b, a                                       ; $72e9: $47
    ld c, b                                       ; $72ea: $48
    ld c, a                                       ; $72eb: $4f
    or l                                          ; $72ec: $b5
    cp [hl]                                       ; $72ed: $be
    ld hl, sp+$2b                                 ; $72ee: $f8 $2b
    ld b, $7f                                     ; $72f0: $06 $7f
    sub [hl]                                      ; $72f2: $96
    ld [hl], e                                    ; $72f3: $73
    push af                                       ; $72f4: $f5
    ld b, a                                       ; $72f5: $47
    inc l                                         ; $72f6: $2c
    inc sp                                        ; $72f7: $33
    call c, Call_033_587b                         ; $72f8: $dc $7b $58
    ld e, e                                       ; $72fb: $5b
    ld l, [hl]                                    ; $72fc: $6e
    rst $10                                       ; $72fd: $d7
    ld [hl], c                                    ; $72fe: $71
    ld a, b                                       ; $72ff: $78
    ld a, e                                       ; $7300: $7b

Call_033_7301:
    or a                                          ; $7301: $b7
    ld l, b                                       ; $7302: $68
    ld l, a                                       ; $7303: $6f
    sbc d                                         ; $7304: $9a
    inc bc                                        ; $7305: $03
    and e                                         ; $7306: $a3
    ld c, c                                       ; $7307: $49
    and d                                         ; $7308: $a2
    cp l                                          ; $7309: $bd
    ld h, l                                       ; $730a: $65
    add [hl]                                      ; $730b: $86
    ld a, e                                       ; $730c: $7b
    add h                                         ; $730d: $84
    ld d, h                                       ; $730e: $54
    add a                                         ; $730f: $87
    pop de                                        ; $7310: $d1
    dec e                                         ; $7311: $1d
    ld b, [hl]                                    ; $7312: $46
    ld [c], a                                     ; $7313: $e2
    rst $08                                       ; $7314: $cf
    jp nc, Jump_033_587b                          ; $7315: $d2 $7b $58

    ld e, e                                       ; $7318: $5b
    ld a, [$dbd9]                                 ; $7319: $fa $d9 $db
    ld d, a                                       ; $731c: $57
    add h                                         ; $731d: $84
    ld [hl], a                                    ; $731e: $77
    add $1c                                       ; $731f: $c6 $1c
    jp $a0b1                                      ; $7321: $c3 $b1 $a0


    and b                                         ; $7324: $a0
    ld b, a                                       ; $7325: $47
    ld c, b                                       ; $7326: $48
    ld h, a                                       ; $7327: $67
    ld [hl], e                                    ; $7328: $73
    add sp, $73                                   ; $7329: $e8 $73
    ccf                                           ; $732b: $3f
    ld l, e                                       ; $732c: $6b
    jp hl                                         ; $732d: $e9


    dec a                                         ; $732e: $3d
    and h                                         ; $732f: $a4
    or a                                          ; $7330: $b7
    or c                                          ; $7331: $b1
    ld [hl], a                                    ; $7332: $77
    cp l                                          ; $7333: $bd
    ld c, l                                       ; $7334: $4d
    ld a, b                                       ; $7335: $78
    db $eb                                        ; $7336: $eb
    dec l                                         ; $7337: $2d
    ld [hl], l                                    ; $7338: $75
    ld l, b                                       ; $7339: $68
    ld c, e                                       ; $733a: $4b
    ld d, a                                       ; $733b: $57
    ld c, c                                       ; $733c: $49
    daa                                           ; $733d: $27
    sbc e                                         ; $733e: $9b
    ld a, h                                       ; $733f: $7c
    adc d                                         ; $7340: $8a
    ld [hl-], a                                   ; $7341: $32
    add e                                         ; $7342: $83
    rst $18                                       ; $7343: $df
    ld c, h                                       ; $7344: $4c
    xor e                                         ; $7345: $ab
    ccf                                           ; $7346: $3f
    ld b, c                                       ; $7347: $41
    sub d                                         ; $7348: $92
    ld h, [hl]                                    ; $7349: $66
    ld h, [hl]                                    ; $734a: $66
    cp l                                          ; $734b: $bd
    ld l, c                                       ; $734c: $69
    ld c, $23                                     ; $734d: $0e $23
    rst $00                                       ; $734f: $c7
    and $0f                                       ; $7350: $e6 $0f
    cp h                                          ; $7352: $bc
    ld h, l                                       ; $7353: $65
    add [hl]                                      ; $7354: $86
    xor e                                         ; $7355: $ab
    jp $0ee8                                      ; $7356: $c3 $e8 $0e


    inc hl                                        ; $7359: $23
    pop af                                        ; $735a: $f1
    ld h, a                                       ; $735b: $67
    jp hl                                         ; $735c: $e9


    db $ed                                        ; $735d: $ed
    dec hl                                        ; $735e: $2b
    jp nz, $633b                                  ; $735f: $c2 $3b $63

    ld c, $a3                                     ; $7362: $0e $a3
    add e                                         ; $7364: $83
    jp nc, Jump_033_75db                          ; $7365: $d2 $db $75

    inc e                                         ; $7368: $1c
    sbc $c6                                       ; $7369: $de $c6
    ld d, [hl]                                    ; $736b: $56
    ld e, e                                       ; $736c: $5b
    ld a, [hl-]                                   ; $736d: $3a
    ld c, h                                       ; $736e: $4c
    pop af                                        ; $736f: $f1
    rst $30                                       ; $7370: $f7
    cp $6a                                        ; $7371: $fe $6a
    xor d                                         ; $7373: $aa
    ld [hl], $eb                                  ; $7374: $36 $eb
    inc l                                         ; $7376: $2c
    db $f4                                        ; $7377: $f4
    ld d, d                                       ; $7378: $52
    ld [de], a                                    ; $7379: $12
    ld hl, sp+$3a                                 ; $737a: $f8 $3a
    ld e, [hl]                                    ; $737c: $5e
    add a                                         ; $737d: $87
    pop de                                        ; $737e: $d1
    dec bc                                        ; $737f: $0b
    nop                                           ; $7380: $00
    db $d3                                        ; $7381: $d3
    adc $b3                                       ; $7382: $ce $b3
    ld l, b                                       ; $7384: $68
    add hl, hl                                    ; $7385: $29
    and e                                         ; $7386: $a3
    sub c                                         ; $7387: $91
    cp a                                          ; $7388: $bf
    ld b, h                                       ; $7389: $44
    ld [bc], a                                    ; $738a: $02
    ld a, [de]                                    ; $738b: $1a
    ld [$2b25], sp                                ; $738c: $08 $25 $2b
    jp hl                                         ; $738f: $e9


    add hl, bc                                    ; $7390: $09
    ld c, $28                                     ; $7391: $0e $28
    ld [hl], l                                    ; $7393: $75
    ld l, b                                       ; $7394: $68
    ld c, e                                       ; $7395: $4b
    inc sp                                        ; $7396: $33
    inc hl                                        ; $7397: $23
    ld a, a                                       ; $7398: $7f
    db $f4                                        ; $7399: $f4
    ld b, d                                       ; $739a: $42
    db $f4                                        ; $739b: $f4
    sbc [hl]                                      ; $739c: $9e
    xor e                                         ; $739d: $ab
    ld a, a                                       ; $739e: $7f
    push de                                       ; $739f: $d5
    and d                                         ; $73a0: $a2
    push bc                                       ; $73a1: $c5
    dec e                                         ; $73a2: $1d
    ld b, [hl]                                    ; $73a3: $46
    ld [c], a                                     ; $73a4: $e2
    rst $08                                       ; $73a5: $cf
    jp nc, $6bc1                                  ; $73a6: $d2 $c1 $6b

    db $eb                                        ; $73a9: $eb
    ld e, b                                       ; $73aa: $58
    ld c, e                                       ; $73ab: $4b
    add a                                         ; $73ac: $87
    sub c                                         ; $73ad: $91
    ld hl, sp-$4d                                 ; $73ae: $f8 $b3
    call c, Call_000_1c95                         ; $73b0: $dc $95 $1c
    inc bc                                        ; $73b3: $03
    db $f4                                        ; $73b4: $f4
    ld h, a                                       ; $73b5: $67
    ld l, $6b                                     ; $73b6: $2e $6b
    ld [c], a                                     ; $73b8: $e2
    ld d, e                                       ; $73b9: $53
    ld [$c62d], a                                 ; $73ba: $ea $2d $c6
    ld [$1db4], a                                 ; $73bd: $ea $b4 $1d
    ld d, $00                                     ; $73c0: $16 $00
    ld l, $6b                                     ; $73c2: $2e $6b
    ccf                                           ; $73c4: $3f
    pop af                                        ; $73c5: $f1
    sub [hl]                                      ; $73c6: $96
    add hl, de                                    ; $73c7: $19
    xor [hl]                                      ; $73c8: $ae
    ld e, d                                       ; $73c9: $5a
    inc l                                         ; $73ca: $2c
    ei                                            ; $73cb: $fb
    xor c                                         ; $73cc: $a9
    xor $3d                                       ; $73cd: $ee $3d
    xor h                                         ; $73cf: $ac
    dec l                                         ; $73d0: $2d
    ld l, c                                       ; $73d1: $69
    ld c, $c9                                     ; $73d2: $0e $c9
    sbc a                                         ; $73d4: $9f
    jp nc, $dceb                                  ; $73d5: $d2 $eb $dc

    ldh [$af], a                                  ; $73d8: $e0 $af
    rst $08                                       ; $73da: $cf
    ld sp, $9b8e                                  ; $73db: $31 $8e $9b
    inc h                                         ; $73de: $24
    sbc a                                         ; $73df: $9f
    ld e, a                                       ; $73e0: $5f
    dec e                                         ; $73e1: $1d
    ld sp, hl                                     ; $73e2: $f9
    add hl, hl                                    ; $73e3: $29
    ld [hl], c                                    ; $73e4: $71
    adc l                                         ; $73e5: $8d
    ld c, c                                       ; $73e6: $49
    db $db                                        ; $73e7: $db
    ld h, c                                       ; $73e8: $61
    add c                                         ; $73e9: $81
    ld d, b                                       ; $73ea: $50
    xor l                                         ; $73eb: $ad
    ld a, [$7f15]                                 ; $73ec: $fa $15 $7f
    adc l                                         ; $73ef: $8d
    ld l, l                                       ; $73f0: $6d
    ld a, [c]                                     ; $73f1: $f2
    sub l                                         ; $73f2: $95
    db $dd                                        ; $73f3: $dd
    cp a                                          ; $73f4: $bf
    nop                                           ; $73f5: $00
    adc $98                                       ; $73f6: $ce $98
    inc bc                                        ; $73f8: $03
    add hl, bc                                    ; $73f9: $09
    db $fc                                        ; $73fa: $fc
    sub l                                         ; $73fb: $95
    ld hl, sp-$65                                 ; $73fc: $f8 $9b
    cp c                                          ; $73fe: $b9
    db $ec                                        ; $73ff: $ec
    and a                                         ; $7400: $a7
    cp d                                          ; $7401: $ba
    ld a, [$e812]                                 ; $7402: $fa $12 $e8
    rst $18                                       ; $7405: $df
    inc [hl]                                      ; $7406: $34
    rlca                                          ; $7407: $07
    add hl, bc                                    ; $7408: $09
    db $fc                                        ; $7409: $fc
    push af                                       ; $740a: $f5
    dec hl                                        ; $740b: $2b
    cp $d2                                        ; $740c: $fe $d2
    ld [hl], $81                                  ; $740e: $36 $81
    cp a                                          ; $7410: $bf
    cp [hl]                                       ; $7411: $be
    rst $08                                       ; $7412: $cf
    cp d                                          ; $7413: $ba
    ld a, [hl-]                                   ; $7414: $3a
    ld hl, sp-$55                                 ; $7415: $f8 $ab
    ld e, c                                       ; $7417: $59
    ld l, a                                       ; $7418: $6f
    ret                                           ; $7419: $c9


    ld a, [bc]                                    ; $741a: $0a
    rst $38                                       ; $741b: $ff
    ld [hl], c                                    ; $741c: $71
    ld a, b                                       ; $741d: $78
    ld a, e                                       ; $741e: $7b
    inc b                                         ; $741f: $04
    ld d, h                                       ; $7420: $54
    ei                                            ; $7421: $fb
    jr z, jr_033_7435                             ; $7422: $28 $11

    ld b, [hl]                                    ; $7424: $46
    ld l, a                                       ; $7425: $6f
    ld b, a                                       ; $7426: $47
    xor h                                         ; $7427: $ac
    ld sp, hl                                     ; $7428: $f9
    add e                                         ; $7429: $83
    ld h, $ff                                     ; $742a: $26 $ff
    ld c, h                                       ; $742c: $4c
    ld b, d                                       ; $742d: $42
    scf                                           ; $742e: $37
    inc sp                                        ; $742f: $33
    ld a, [$d379]                                 ; $7430: $fa $79 $d3
    inc e                                         ; $7433: $1c
    add hl, bc                                    ; $7434: $09

jr_033_7435:
    db $fc                                        ; $7435: $fc
    push af                                       ; $7436: $f5
    ld hl, sp+$59                                 ; $7437: $f8 $59
    sub e                                         ; $7439: $93
    ld a, a                                       ; $743a: $7f
    ld h, $a1                                     ; $743b: $26 $a1
    db $d3                                        ; $743d: $d3
    inc e                                         ; $743e: $1c
    and e                                         ; $743f: $a3
    ld b, e                                       ; $7440: $43
    ld l, [hl]                                    ; $7441: $6e
    inc [hl]                                      ; $7442: $34
    ld hl, sp-$65                                 ; $7443: $f8 $9b
    or c                                          ; $7445: $b1
    dec e                                         ; $7446: $1d
    ld l, $0d                                     ; $7447: $2e $0d
    add h                                         ; $7449: $84
    sbc $1c                                       ; $744a: $de $1c
    ld l, e                                       ; $744c: $6b
    jp hl                                         ; $744d: $e9


    ldh [$b5], a                                  ; $744e: $e0 $b5
    ld d, l                                       ; $7450: $55
    adc e                                         ; $7451: $8b
    ld l, c                                       ; $7452: $69
    dec sp                                        ; $7453: $3b
    ld e, h                                       ; $7454: $5c
    ld a, [de]                                    ; $7455: $1a
    ld [$bccd], sp                                ; $7456: $08 $cd $bc
    ld e, a                                       ; $7459: $5f
    pop hl                                        ; $745a: $e1
    ld d, l                                       ; $745b: $55
    db $e4                                        ; $745c: $e4
    adc a                                         ; $745d: $8f
    add $71                                       ; $745e: $c6 $71
    db $f4                                        ; $7460: $f4
    ld e, $ae                                     ; $7461: $1e $ae
    ld c, $77                                     ; $7463: $0e $77
    and h                                         ; $7465: $a4
    jp z, Jump_033_5332                           ; $7466: $ca $32 $53

    ld c, h                                       ; $7469: $4c
    db $db                                        ; $746a: $db
    ld a, c                                       ; $746b: $79
    jp Jump_000_3a94                              ; $746c: $c3 $94 $3a


    ld hl, sp-$7d                                 ; $746f: $f8 $83
    xor $c5                                       ; $7471: $ee $c5
    ld e, a                                       ; $7473: $5f
    sub c                                         ; $7474: $91
    ccf                                           ; $7475: $3f
    ld a, [de]                                    ; $7476: $1a
    rst $00                                       ; $7477: $c7
    ld h, c                                       ; $7478: $61

jr_033_7479:
    ld c, c                                       ; $7479: $49
    db $db                                        ; $747a: $db
    pop de                                        ; $747b: $d1
    pop hl                                        ; $747c: $e1
    ld a, [hl]                                    ; $747d: $7e
    push bc                                       ; $747e: $c5
    ld e, a                                       ; $747f: $5f
    db $e3                                        ; $7480: $e3
    jr c, jr_033_74af                             ; $7481: $38 $2c

    rst $20                                       ; $7483: $e7
    sbc $43                                       ; $7484: $de $43
    adc d                                         ; $7486: $8a
    ld a, [hl]                                    ; $7487: $7e
    sbc $aa                                       ; $7488: $de $aa
    push bc                                       ; $748a: $c5
    ld [c], a                                     ; $748b: $e2
    ld b, b                                       ; $748c: $40
    ld [hl+], a                                   ; $748d: $22
    ld e, b                                       ; $748e: $58
    jp nc, $a31c                                  ; $748f: $d2 $1c $a3

    add e                                         ; $7492: $83
    jp nc, Jump_033_75db                          ; $7493: $d2 $db $75

    inc e                                         ; $7496: $1c
    sbc $b2                                       ; $7497: $de $b2
    adc [hl]                                      ; $7499: $8e
    and e                                         ; $749a: $a3
    ret                                           ; $749b: $c9


    ld c, $6a                                     ; $749c: $0e $6a
    add hl, sp                                    ; $749e: $39
    rst $30                                       ; $749f: $f7
    dec hl                                        ; $74a0: $2b
    cp $7a                                        ; $74a1: $fe $7a
    rst $30                                       ; $74a3: $f7
    ld l, [hl]                                    ; $74a4: $6e
    sbc c                                         ; $74a5: $99
    pop hl                                        ; $74a6: $e1
    ld h, [hl]                                    ; $74a7: $66
    ld e, a                                       ; $74a8: $5f
    cp d                                          ; $74a9: $ba
    pop bc                                        ; $74aa: $c1
    rra                                           ; $74ab: $1f
    ld [hl], h                                    ; $74ac: $74
    ret nc                                        ; $74ad: $d0

    ld b, d                                       ; $74ae: $42

jr_033_74af:
    dec c                                         ; $74af: $0d
    ld h, h                                       ; $74b0: $64
    jr z, jr_033_7479                             ; $74b1: $28 $c6

    ld [$0734], a                                 ; $74b3: $ea $34 $07
    and e                                         ; $74b6: $a3
    ccf                                           ; $74b7: $3f
    or $7d                                        ; $74b8: $f6 $7d
    sub $5b                                       ; $74ba: $d6 $5b
    ld h, [hl]                                    ; $74bc: $66
    cp b                                          ; $74bd: $b8
    jp c, $d5bb                                   ; $74be: $da $bb $d5

    ld a, a                                       ; $74c1: $7f
    add $1c                                       ; $74c2: $c6 $1c
    add hl, bc                                    ; $74c4: $09
    db $fc                                        ; $74c5: $fc
    push af                                       ; $74c6: $f5
    add hl, sp                                    ; $74c7: $39
    xor b                                         ; $74c8: $a8
    ei                                            ; $74c9: $fb
    add hl, hl                                    ; $74ca: $29
    push af                                       ; $74cb: $f5
    cp c                                          ; $74cc: $b9
    ld a, [hl-]                                   ; $74cd: $3a
    call c, $6ad8                                 ; $74ce: $dc $d8 $6a
    ld c, e                                       ; $74d1: $4b
    ld b, a                                       ; $74d2: $47
    rst $00                                       ; $74d3: $c7
    sbc $4c                                       ; $74d4: $de $4c
    or e                                          ; $74d6: $b3
    adc a                                         ; $74d7: $8f
    add sp, $0e                                   ; $74d8: $e8 $0e
    ld e, d                                       ; $74da: $5a
    xor b                                         ; $74db: $a8
    add c                                         ; $74dc: $81
    inc c                                         ; $74dd: $0c
    cp l                                          ; $74de: $bd
    ld e, e                                       ; $74df: $5b
    or h                                          ; $74e0: $b4
    scf                                           ; $74e1: $37
    call $cc01                                    ; $74e2: $cd $01 $cc
    ld [hl], b                                    ; $74e5: $70
    ld l, a                                       ; $74e6: $6f
    ld h, e                                       ; $74e7: $63
    rst $28                                       ; $74e8: $ef
    ld a, d                                       ; $74e9: $7a
    ld a, e                                       ; $74ea: $7b
    xor d                                         ; $74eb: $aa
    or l                                          ; $74ec: $b5
    add l                                         ; $74ed: $85
    db $ec                                        ; $74ee: $ec
    add b                                         ; $74ef: $80
    sbc $c3                                       ; $74f0: $de $c3
    jp c, $c1d2                                   ; $74f2: $da $d2 $c1

    ld c, e                                       ; $74f5: $4b
    ld e, b                                       ; $74f6: $58
    rst $00                                       ; $74f7: $c7
    db $ed                                        ; $74f8: $ed
    ld a, [hl-]                                   ; $74f9: $3a
    ld c, $6f                                     ; $74fa: $0e $6f
    sbc d                                         ; $74fc: $9a
    inc bc                                        ; $74fd: $03
    add hl, bc                                    ; $74fe: $09
    db $fc                                        ; $74ff: $fc
    dec d                                         ; $7500: $15
    db $fd                                        ; $7501: $fd
    ld a, h                                       ; $7502: $7c
    xor [hl]                                      ; $7503: $ae
    cp $88                                        ; $7504: $fe $88
    ld h, l                                       ; $7506: $65
    add [hl]                                      ; $7507: $86
    dec sp                                        ; $7508: $3b
    ld l, b                                       ; $7509: $68
    and c                                         ; $750a: $a1
    ld b, $32                                     ; $750b: $06 $32
    inc d                                         ; $750d: $14
    ld h, e                                       ; $750e: $63
    ld [hl], l                                    ; $750f: $75
    ld e, d                                       ; $7510: $5a
    and $45                                       ; $7511: $e6 $45
    ld l, c                                       ; $7513: $69
    add e                                         ; $7514: $83
    cp a                                          ; $7515: $bf
    ld [hl-], a                                   ; $7516: $32
    jp Jump_000_0e7d                              ; $7517: $c3 $7d $0e


    ld [$319d], a                                 ; $751a: $ea $9d $31
    rlca                                          ; $751d: $07
    or e                                          ; $751e: $b3
    cp $73                                        ; $751f: $fe $73
    reti                                          ; $7521: $d9


    nop                                           ; $7522: $00
    ld [hl], b                                    ; $7523: $70
    jp c, $fe8e                                   ; $7524: $da $8e $fe

    ld e, b                                       ; $7527: $58
    ld [hl], $b6                                  ; $7528: $36 $b6
    pop bc                                        ; $752a: $c1
    ld e, a                                       ; $752b: $5f
    sub c                                         ; $752c: $91
    ccf                                           ; $752d: $3f
    ld b, l                                       ; $752e: $45
    ld [hl], l                                    ; $752f: $75
    ld h, h                                       ; $7530: $64
    inc sp                                        ; $7531: $33
    and $b3                                       ; $7532: $e6 $b3
    rlca                                          ; $7534: $07
    ld a, a                                       ; $7535: $7f
    add b                                         ; $7536: $80
    rst $20                                       ; $7537: $e7
    ld b, $7f                                     ; $7538: $06 $7f
    db $fd                                        ; $753a: $fd
    jp nz, $c03a                                  ; $753b: $c2 $3a $c0

    cp l                                          ; $753e: $bd
    sbc $ba                                       ; $753f: $de $ba
    jp $fe4c                                      ; $7541: $c3 $4c $fe


    adc a                                         ; $7544: $8f
    xor d                                         ; $7545: $aa
    call Call_000_36d2                            ; $7546: $cd $d2 $36
    add c                                         ; $7549: $81
    cp a                                          ; $754a: $bf
    or d                                          ; $754b: $b2
    ld b, $f9                                     ; $754c: $06 $f9
    db $fc                                        ; $754e: $fc
    add c                                         ; $754f: $81
    ld l, e                                       ; $7550: $6b
    db $ec                                        ; $7551: $ec
    and a                                         ; $7552: $a7
    ret c                                         ; $7553: $d8

    jp $eeb1                                      ; $7554: $c3 $b1 $ee


    ld d, b                                       ; $7557: $50
    ld b, l                                       ; $7558: $45
    ld h, h                                       ; $7559: $64
    sbc a                                         ; $755a: $9f
    push af                                       ; $755b: $f5
    cp c                                          ; $755c: $b9
    sbc a                                         ; $755d: $9f
    ld d, d                                       ; $755e: $52
    ld l, a                                       ; $755f: $6f
    ret                                           ; $7560: $c9


    xor d                                         ; $7561: $aa
    rst $08                                       ; $7562: $cf
    sub h                                         ; $7563: $94
    ldh a, [$9e]                                  ; $7564: $f0 $9e
    xor e                                         ; $7566: $ab
    jp $823d                                      ; $7567: $c3 $3d $82


    cp a                                          ; $756a: $bf
    ld [$ea2f], a                                 ; $756b: $ea $2f $ea
    jr z, @+$1d                                   ; $756e: $28 $1b

    nop                                           ; $7570: $00
    sbc $34                                       ; $7571: $de $34
    rlca                                          ; $7573: $07
    or e                                          ; $7574: $b3
    cp $73                                        ; $7575: $fe $73
    reti                                          ; $7577: $d9


    nop                                           ; $7578: $00
    ldh a, [$90]                                  ; $7579: $f0 $90
    inc e                                         ; $757b: $1c
    call z, $dceb                                 ; $757c: $cc $eb $dc
    ld d, e                                       ; $757f: $53
    dec c                                         ; $7580: $0d
    ld h, h                                       ; $7581: $64
    add sp, $41                                   ; $7582: $e8 $41
    ld b, d                                       ; $7584: $42
    inc b                                         ; $7585: $04
    rst $10                                       ; $7586: $d7
    ld e, b                                       ; $7587: $58
    db $e4                                        ; $7588: $e4
    rst $28                                       ; $7589: $ef
    jp c, Jump_033_46b2                           ; $758a: $da $b2 $46

    or h                                          ; $758d: $b4
    inc [hl]                                      ; $758e: $34
    di                                            ; $758f: $f3
    di                                            ; $7590: $f3
    and [hl]                                      ; $7591: $a6

Call_033_7592:
    add hl, sp                                    ; $7592: $39
    ld d, e                                       ; $7593: $53
    ld [hl], h                                    ; $7594: $74
    sbc [hl]                                      ; $7595: $9e
    db $e3                                        ; $7596: $e3
    dec h                                         ; $7597: $25
    ld l, [hl]                                    ; $7598: $6e
    and $1c                                       ; $7599: $e6 $1c
    sub e                                         ; $759b: $93
    ld [hl], l                                    ; $759c: $75
    ld [hl], h                                    ; $759d: $74
    inc l                                         ; $759e: $2c
    ld e, b                                       ; $759f: $58
    call nc, $fef1                                ; $75a0: $d4 $f1 $fe
    ld h, [hl]                                    ; $75a3: $66
    add hl, sp                                    ; $75a4: $39
    sub e                                         ; $75a5: $93
    sub l                                         ; $75a6: $95
    add hl, sp                                    ; $75a7: $39
    db $10                                        ; $75a8: $10
    ld b, b                                       ; $75a9: $40
    ld a, [hl]                                    ; $75aa: $7e
    ld a, [bc]                                    ; $75ab: $0a
    ld [hl], d                                    ; $75ac: $72
    sub e                                         ; $75ad: $93
    ld [hl], l                                    ; $75ae: $75
    call nc, Call_033_52ff                        ; $75af: $d4 $ff $52
    ld h, $7f                                     ; $75b2: $26 $7f
    ld a, [bc]                                    ; $75b4: $0a
    ret z                                         ; $75b5: $c8

    rst $28                                       ; $75b6: $ef
    xor a                                         ; $75b7: $af
    ld b, [hl]                                    ; $75b8: $46
    cp $d4                                        ; $75b9: $fe $d4
    ld [hl], e                                    ; $75bb: $73
    ld c, $93                                     ; $75bc: $0e $93
    ld [hl], l                                    ; $75be: $75
    ld d, h                                       ; $75bf: $54
    ld [hl+], a                                   ; $75c0: $22
    cp a                                          ; $75c1: $bf
    pop af                                        ; $75c2: $f1
    rst $20                                       ; $75c3: $e7
    db $ed                                        ; $75c4: $ed
    db $ec                                        ; $75c5: $ec
    rst $38                                       ; $75c6: $ff
    ldh a, [$a2]                                  ; $75c7: $f0 $a2
    ld hl, $066e                                  ; $75c9: $21 $6e $06
    ldh a, [$e6]                                  ; $75cc: $f0 $e6
    sub e                                         ; $75ce: $93
    push af                                       ; $75cf: $f5
    add h                                         ; $75d0: $84
    xor a                                         ; $75d1: $af
    ld e, b                                       ; $75d2: $58
    dec bc                                        ; $75d3: $0b
    ret z                                         ; $75d4: $c8

    rst $18                                       ; $75d5: $df
    db $db                                        ; $75d6: $db
    call nz, $4fc3                                ; $75d7: $c4 $c3 $4f
    rra                                           ; $75da: $1f

Jump_033_75db:
    ld c, b                                       ; $75db: $48
    ld l, a                                       ; $75dc: $6f
    rra                                           ; $75dd: $1f
    pop bc                                        ; $75de: $c1
    sbc e                                         ; $75df: $9b
    inc bc                                        ; $75e0: $03
    sub e                                         ; $75e1: $93
    push af                                       ; $75e2: $f5
    db $f4                                        ; $75e3: $f4
    adc $e6                                       ; $75e4: $ce $e6
    daa                                           ; $75e6: $27
    inc l                                         ; $75e7: $2c
    adc c                                         ; $75e8: $89
    ccf                                           ; $75e9: $3f
    ld c, e                                       ; $75ea: $4b
    daa                                           ; $75eb: $27
    ld c, e                                       ; $75ec: $4b
    dec sp                                        ; $75ed: $3b
    db $eb                                        ; $75ee: $eb
    ld a, a                                       ; $75ef: $7f
    sub d                                         ; $75f0: $92
    inc bc                                        ; $75f1: $03
    sub e                                         ; $75f2: $93
    ld [hl], l                                    ; $75f3: $75
    add h                                         ; $75f4: $84
    ld de, $734d                                  ; $75f5: $11 $4d $73
    sub e                                         ; $75f8: $93
    push af                                       ; $75f9: $f5
    add h                                         ; $75fa: $84
    xor a                                         ; $75fb: $af
    ld e, b                                       ; $75fc: $58
    dec bc                                        ; $75fd: $0b
    jp nz, $7367                                  ; $75fe: $c2 $67 $73

    call z, Call_000_1c7f                         ; $7601: $cc $7f $1c
    and [hl]                                      ; $7604: $a6
    ld e, e                                       ; $7605: $5b
    ld h, [hl]                                    ; $7606: $66
    cp b                                          ; $7607: $b8
    inc hl                                        ; $7608: $23
    cp [hl]                                       ; $7609: $be
    add b                                         ; $760a: $80
    ld [hl], a                                    ; $760b: $77
    add $36                                       ; $760c: $c6 $36
    add c                                         ; $760e: $81
    cp a                                          ; $760f: $bf
    cp [hl]                                       ; $7610: $be
    rst $08                                       ; $7611: $cf
    cp d                                          ; $7612: $ba
    cpl                                           ; $7613: $2f
    inc l                                         ; $7614: $2c
    ld [hl], l                                    ; $7615: $75
    xor h                                         ; $7616: $ac
    dec sp                                        ; $7617: $3b
    ld [c], a                                     ; $7618: $e2
    dec bc                                        ; $7619: $0b
    ld hl, sp+$5c                                 ; $761a: $f8 $5c
    dec e                                         ; $761c: $1d
    ld l, $33                                     ; $761d: $2e $33
    call c, $b058                                 ; $761f: $dc $58 $b0
    jr jr_033_7655                                ; $7622: $18 $31

    inc l                                         ; $7624: $2c
    sbc $de                                       ; $7625: $de $de
    add $de                                       ; $7627: $c6 $de
    dec b                                         ; $7629: $05
    and a                                         ; $762a: $a7
    add hl, sp                                    ; $762b: $39
    inc hl                                        ; $762c: $23
    dec e                                         ; $762d: $1d
    db $eb                                        ; $762e: $eb
    dec l                                         ; $762f: $2d
    inc sp                                        ; $7630: $33
    ld e, h                                       ; $7631: $5c
    jp $d7fd                                      ; $7632: $c3 $fd $d7


    or c                                          ; $7635: $b1
    xor $b0                                       ; $7636: $ee $b0
    and b                                         ; $7638: $a0
    ld a, [$05f6]                                 ; $7639: $fa $f6 $05
    call c, $6bc1                                 ; $763c: $dc $c1 $6b
    bit 3, d                                      ; $763f: $cb $5a
    ld c, b                                       ; $7641: $48
    rst $28                                       ; $7642: $ef
    nop                                           ; $7643: $00
    ld l, a                                       ; $7644: $6f
    sub e                                         ; $7645: $93
    ld a, l                                       ; $7646: $7d
    cp d                                          ; $7647: $ba
    or a                                          ; $7648: $b7
    ld l, d                                       ; $7649: $6a
    ld [hl], l                                    ; $764a: $75
    ld c, a                                       ; $764b: $4f
    ld hl, sp-$76                                 ; $764c: $f8 $8a
    or l                                          ; $764e: $b5
    ld e, b                                       ; $764f: $58
    halt                                          ; $7650: $76
    add $76                                       ; $7651: $c6 $76
    halt                                          ; $7653: $76
    or l                                          ; $7654: $b5

jr_033_7655:
    rst $20                                       ; $7655: $e7
    ld c, $86                                     ; $7656: $0e $86
    add hl, hl                                    ; $7658: $29
    ld [hl], l                                    ; $7659: $75
    ldh a, [rTAC]                                 ; $765a: $f0 $07
    ld l, c                                       ; $765c: $69
    dec sp                                        ; $765d: $3b
    jp nc, Jump_000_2eb1                          ; $765e: $d2 $b1 $2e

    di                                            ; $7661: $f3
    rra                                           ; $7662: $1f
    rlca                                          ; $7663: $07
    ld d, l                                       ; $7664: $55
    sbc e                                         ; $7665: $9b
    dec [hl]                                      ; $7666: $35
    db $10                                        ; $7667: $10
    xor d                                         ; $7668: $aa
    dec l                                         ; $7669: $2d
    ld h, h                                       ; $766a: $64
    rlca                                          ; $766b: $07
    ld [hl], h                                    ; $766c: $74
    add e                                         ; $766d: $83
    ccf                                           ; $766e: $3f
    ld l, b                                       ; $766f: $68
    ld h, [hl]                                    ; $7670: $66
    ld sp, hl                                     ; $7671: $f9
    jp c, Jump_000_0755                           ; $7672: $da $55 $07

    pop af                                        ; $7675: $f1
    scf                                           ; $7676: $37
    inc de                                        ; $7677: $13
    rlca                                          ; $7678: $07
    ld a, a                                       ; $7679: $7f
    ld l, c                                       ; $767a: $69
    ld c, $49                                     ; $767b: $0e $49
    ld h, c                                       ; $767d: $61
    ld [hl], h                                    ; $767e: $74
    ld b, a                                       ; $767f: $47
    ld a, h                                       ; $7680: $7c
    ld bc, $1037                                  ; $7681: $01 $37 $10
    adc d                                         ; $7684: $8a
    ld a, [hl]                                    ; $7685: $7e
    ld d, d                                       ; $7686: $52
    inc [hl]                                      ; $7687: $34
    dec b                                         ; $7688: $05
    ld l, a                                       ; $7689: $6f
    db $d3                                        ; $768a: $d3
    inc [hl]                                      ; $768b: $34
    xor l                                         ; $768c: $ad
    or c                                          ; $768d: $b1
    add c                                         ; $768e: $81
    ret nc                                        ; $768f: $d0

    sbc c                                         ; $7690: $99
    ld b, e                                       ; $7691: $43

Jump_033_7692:
    cp b                                          ; $7692: $b8
    ei                                            ; $7693: $fb
    add $e6                                       ; $7694: $c6 $e6
    rrca                                          ; $7696: $0f
    ld h, c                                       ; $7697: $61
    ret nz                                        ; $7698: $c0

    add d                                         ; $7699: $82
    ld h, e                                       ; $769a: $63
    cpl                                           ; $769b: $2f
    dec c                                         ; $769c: $0d
    cp $86                                        ; $769d: $fe $86
    or h                                          ; $769f: $b4
    inc hl                                        ; $76a0: $23
    rst $00                                       ; $76a1: $c7
    and $0f                                       ; $76a2: $e6 $0f
    cp h                                          ; $76a4: $bc
    ld h, l                                       ; $76a5: $65
    add [hl]                                      ; $76a6: $86
    dec bc                                        ; $76a7: $0b
    ld e, a                                       ; $76a8: $5f
    ld hl, $de7f                                  ; $76a9: $21 $7f $de
    add hl, de                                    ; $76ac: $19
    ld [hl], e                                    ; $76ad: $73
    and e                                         ; $76ae: $a3
    ccf                                           ; $76af: $3f
    or $7e                                        ; $76b0: $f6 $7e
    ld d, c                                       ; $76b2: $51
    ld [$332d], a                                 ; $76b3: $ea $2d $33
    ld e, h                                       ; $76b6: $5c
    db $fd                                        ; $76b7: $fd
    add hl, bc                                    ; $76b8: $09
    sub d                                         ; $76b9: $92
    db $f4                                        ; $76ba: $f4
    ld a, l                                       ; $76bb: $7d
    sub $3b                                       ; $76bc: $d6 $3b
    ld h, e                                       ; $76be: $63
    ld c, $c3                                     ; $76bf: $0e $c3
    ld h, e                                       ; $76c1: $63
    cp l                                          ; $76c2: $bd
    dec e                                         ; $76c3: $1d
    ld h, [hl]                                    ; $76c4: $66
    ld a, [c]                                     ; $76c5: $f2
    push af                                       ; $76c6: $f5
    dec h                                         ; $76c7: $25
    ld l, l                                       ; $76c8: $6d
    ld h, a                                       ; $76c9: $67
    rst $38                                       ; $76ca: $ff
    rst $20                                       ; $76cb: $e7
    add $82                                       ; $76cc: $c6 $82
    push bc                                       ; $76ce: $c5
    adc b                                         ; $76cf: $88
    ld h, c                                       ; $76d0: $61
    add c                                         ; $76d1: $81
    add hl, de                                    ; $76d2: $19
    ld [hl], e                                    ; $76d3: $73
    add hl, bc                                    ; $76d4: $09
    db $fc                                        ; $76d5: $fc
    push af                                       ; $76d6: $f5
    xor $18                                       ; $76d7: $ee $18
    and a                                         ; $76d9: $a7
    ld a, [$afe2]                                 ; $76da: $fa $e2 $af
    ld a, e                                       ; $76dd: $7b
    pop af                                        ; $76de: $f1
    rst $10                                       ; $76df: $d7
    dec c                                         ; $76e0: $0d
    cp $a0                                        ; $76e1: $fe $a0
    adc [hl]                                      ; $76e3: $8e
    dec a                                         ; $76e4: $3d
    ld a, $3d                                     ; $76e5: $3e $3d
    rst $30                                       ; $76e7: $f7
    cp $b1                                        ; $76e8: $fe $b1
    ld a, [$0363]                                 ; $76ea: $fa $63 $03
    ld hl, $01cd                                  ; $76ed: $21 $cd $01
    ret                                           ; $76f0: $c9


    rst $00                                       ; $76f1: $c7

jr_033_76f2:
    cp c                                          ; $76f2: $b9
    call z, Call_000_3170                         ; $76f3: $cc $70 $31
    ld d, [hl]                                    ; $76f6: $56
    rst $30                                       ; $76f7: $f7
    ld a, [hl]                                    ; $76f8: $7e
    dec a                                         ; $76f9: $3d
    ld e, d                                       ; $76fa: $5a
    rst $00                                       ; $76fb: $c7
    halt                                          ; $76fc: $76
    cp b                                          ; $76fd: $b8
    jr nz, @-$22                                  ; $76fe: $20 $dc

    ld l, b                                       ; $7700: $68
    ld [hl+], a                                   ; $7701: $22
    ld [hl+], a                                   ; $7702: $22
    or l                                          ; $7703: $b5
    and h                                         ; $7704: $a4
    db $ed                                        ; $7705: $ed
    ld [hl], b                                    ; $7706: $70
    inc l                                         ; $7707: $2c
    jr z, jr_033_76f2                             ; $7708: $28 $e8

    ld de, $d9d2                                  ; $770a: $11 $d2 $d9
    inc e                                         ; $770d: $1c
    ld a, [$bbdc]                                 ; $770e: $fa $dc $bb
    ld [hl], a                                    ; $7711: $77
    dec de                                        ; $7712: $1b
    db $fc                                        ; $7713: $fc
    sub l                                         ; $7714: $95
    add hl, de                                    ; $7715: $19
    ld l, $6b                                     ; $7716: $2e $6b
    sbc d                                         ; $7718: $9a
    adc b                                         ; $7719: $88
    db $10                                        ; $771a: $10
    add hl, de                                    ; $771b: $19
    db $f4                                        ; $771c: $f4
    ld a, l                                       ; $771d: $7d
    sub $69                                       ; $771e: $d6 $69
    ld c, $8c                                     ; $7720: $0e $8c
    ld a, [bc]                                    ; $7722: $0a
    sbc d                                         ; $7723: $9a
    ld sp, hl                                     ; $7724: $f9
    ld hl, sp-$04                                 ; $7725: $f8 $fc
    pop bc                                        ; $7727: $c1
    cp c                                          ; $7728: $b9
    ret                                           ; $7729: $c9


    ld e, a                                       ; $772a: $5f
    ld h, h                                       ; $772b: $64
    ld c, h                                       ; $772c: $4c
    jp c, $fd26                                   ; $772d: $da $26 $fd

    ld b, $42                                     ; $7730: $06 $42
    rst $30                                       ; $7732: $f7
    ld [c], a                                     ; $7733: $e2
    xor a                                         ; $7734: $af
    adc [hl]                                      ; $7735: $8e
    ld [hl], l                                    ; $7736: $75
    sbc c                                         ; $7737: $99
    sbc a                                         ; $7738: $9f
    ccf                                           ; $7739: $3f
    sbc a                                         ; $773a: $9f
    xor e                                         ; $773b: $ab
    jp $fe0d                                      ; $773c: $c3 $0d $fe


    xor d                                         ; $773f: $aa
    ld b, e                                       ; $7740: $43
    adc d                                         ; $7741: $8a
    ccf                                           ; $7742: $3f
    di                                            ; $7743: $f3
    or $50                                        ; $7744: $f6 $50
    adc b                                         ; $7746: $88
    db $d3                                        ; $7747: $d3
    ld [hl], a                                    ; $7748: $77
    db $fc                                        ; $7749: $fc
    ld h, h                                       ; $774a: $64
    dec bc                                        ; $774b: $0b
    sbc c                                         ; $774c: $99
    ld b, $7f                                     ; $774d: $06 $7f
    sbc $32                                       ; $774f: $de $32
    ld d, d                                       ; $7751: $52
    ld [de], a                                    ; $7752: $12
    cp a                                          ; $7753: $bf
    db $dd                                        ; $7754: $dd
    push de                                       ; $7755: $d5
    ld [hl+], a                                   ; $7756: $22
    ld a, a                                       ; $7757: $7f
    dec h                                         ; $7758: $25
    xor e                                         ; $7759: $ab
    and e                                         ; $775a: $a3
    adc h                                         ; $775b: $8c
    ld h, [hl]                                    ; $775c: $66
    sub l                                         ; $775d: $95
    nop                                           ; $775e: $00
    jp nz, $86cf                                  ; $775f: $c2 $cf $86

    adc h                                         ; $7762: $8c
    sbc a                                         ; $7763: $9f
    inc bc                                        ; $7764: $03
    call z, Call_000_0370                         ; $7765: $cc $70 $03
    and c                                         ; $7768: $a1
    add sp, $27                                   ; $7769: $e8 $27
    rst $20                                       ; $776b: $e7
    and d                                         ; $776c: $a2
    sbc a                                         ; $776d: $9f
    inc d                                         ; $776e: $14
    ld sp, hl                                     ; $776f: $f9
    dec de                                        ; $7770: $1b
    ld a, e                                       ; $7771: $7b
    db $d3                                        ; $7772: $d3
    halt                                          ; $7773: $76
    ld [hl], h                                    ; $7774: $74
    cp b                                          ; $7775: $b8
    rst $08                                       ; $7776: $cf
    ld sp, $140e                                  ; $7777: $31 $0e $14
    jp $ded5                                      ; $777a: $c3 $d5 $de


    sbc l                                         ; $777d: $9d
    ld sp, $c907                                  ; $777e: $31 $07 $c9
    sub $f7                                       ; $7781: $d6 $f7
    ret z                                         ; $7783: $c8

    jp nc, $2876                                  ; $7784: $d2 $76 $28

    and l                                         ; $7787: $a5
    xor $88                                       ; $7788: $ee $88
    ld e, b                                       ; $778a: $58
    ld l, l                                       ; $778b: $6d
    jp hl                                         ; $778c: $e9


    db $fd                                        ; $778d: $fd
    and d                                         ; $778e: $a2
    call nc, $e1db                                ; $778f: $d4 $db $e1
    adc d                                         ; $7792: $8a
    ld a, d                                       ; $7793: $7a
    rst $08                                       ; $7794: $cf
    push de                                       ; $7795: $d5
    pop hl                                        ; $7796: $e1
    ld h, d                                       ; $7797: $62
    xor h                                         ; $7798: $ac
    xor [hl]                                      ; $7799: $ae
    jp c, Jump_000_38e7                           ; $779a: $da $e7 $38

    ld l, b                                       ; $779d: $68
    ldh a, [$d7]                                  ; $779e: $f0 $d7
    dec h                                         ; $77a0: $25
    ld bc, $0699                                  ; $77a1: $01 $99 $06
    ld a, a                                       ; $77a4: $7f
    rst $20                                       ; $77a5: $e7
    or d                                          ; $77a6: $b2
    add $4b                                       ; $77a7: $c6 $4b
    ld [hl-], a                                   ; $77a9: $32
    ld l, a                                       ; $77aa: $6f
    or l                                          ; $77ab: $b5
    ld h, e                                       ; $77ac: $63
    db $dd                                        ; $77ad: $dd
    ld d, c                                       ; $77ae: $51
    rla                                           ; $77af: $17
    ld b, d                                       ; $77b0: $42
    push de                                       ; $77b1: $d5
    ld [$d5e2], a                                 ; $77b2: $ea $e2 $d5
    cp e                                          ; $77b5: $bb
    inc bc                                        ; $77b6: $03
    inc l                                         ; $77b7: $2c
    ld l, c                                       ; $77b8: $69
    ld c, $f3                                     ; $77b9: $0e $f3

Call_033_77bb:
    add [hl]                                      ; $77bb: $86
    xor c                                         ; $77bc: $a9
    or a                                          ; $77bd: $b7
    ld c, c                                       ; $77be: $49
    ld a, a                                       ; $77bf: $7f

jr_033_77c0:
    ld l, a                                       ; $77c0: $6f
    ld b, e                                       ; $77c1: $43
    ld [hl], d                                    ; $77c2: $72
    or e                                          ; $77c3: $b3

Call_033_77c4:
    xor e                                         ; $77c4: $ab
    ld l, l                                       ; $77c5: $6d
    jr nz, @-$2a                                  ; $77c6: $20 $d4

    ret c                                         ; $77c8: $d8

    rst $08                                       ; $77c9: $cf
    ld e, d                                       ; $77ca: $5a
    ld a, d                                       ; $77cb: $7a
    add d                                         ; $77cc: $82
    inc bc                                        ; $77cd: $03
    adc $d5                                       ; $77ce: $ce $d5
    rra                                           ; $77d0: $1f
    or c                                          ; $77d1: $b1
    rst $30                                       ; $77d2: $f7
    sub b                                         ; $77d3: $90
    xor d                                         ; $77d4: $aa
    push bc                                       ; $77d5: $c5
    ld a, [hl]                                    ; $77d6: $7e
    ld b, l                                       ; $77d7: $45
    ld d, h                                       ; $77d8: $54
    ld a, e                                       ; $77d9: $7b
    dec sp                                        ; $77da: $3b
    jp c, $8f59                                   ; $77db: $da $59 $8f

    rst $08                                       ; $77de: $cf
    sbc a                                         ; $77df: $9f
    scf                                           ; $77e0: $37
    call $8c01                                    ; $77e1: $cd $01 $8c
    ld e, a                                       ; $77e4: $5f
    ld a, d                                       ; $77e5: $7a
    ld [hl], e                                    ; $77e6: $73
    ld l, h                                       ; $77e7: $6c
    sub c                                         ; $77e8: $91
    ccf                                           ; $77e9: $3f
    ld l, d                                       ; $77ea: $6a
    cp $c0                                        ; $77eb: $fe $c0
    jp nc, Jump_033_4ba1                          ; $77ed: $d2 $a1 $4b

    db $fc                                        ; $77f0: $fc
    call $4dce                                    ; $77f1: $cd $ce $4d
    cp $22                                        ; $77f4: $fe $22
    ld h, e                                       ; $77f6: $63
    jp nc, Jump_000_1996                          ; $77f7: $d2 $96 $19

    ld a, [hl]                                    ; $77fa: $7e
    push de                                       ; $77fb: $d5
    ld hl, $8bdd                                  ; $77fc: $21 $dd $8b
    cp a                                          ; $77ff: $bf
    ld e, $9f                                     ; $7800: $1e $9f
    ld d, [hl]                                    ; $7802: $56
    add a                                         ; $7803: $87
    dec sp                                        ; $7804: $3b
    ld e, e                                       ; $7805: $5b
    jr nz, jr_033_77c0                            ; $7806: $20 $b8

    ld a, a                                       ; $7808: $7f
    rst $08                                       ; $7809: $cf
    push de                                       ; $780a: $d5
    pop hl                                        ; $780b: $e1
    ld b, $7f                                     ; $780c: $06 $7f
    push de                                       ; $780e: $d5
    ld hl, $9ccd                                  ; $780f: $21 $cd $9c
    sbc c                                         ; $7812: $99
    push af                                       ; $7813: $f5
    or $7d                                        ; $7814: $f6 $7d
    or [hl]                                       ; $7816: $b6
    ld l, d                                       ; $7817: $6a
    ld [hl], l                                    ; $7818: $75
    ld e, c                                       ; $7819: $59
    db $e3                                        ; $781a: $e3
    dec h                                         ; $781b: $25
    ld e, c                                       ; $781c: $59
    ld [hl], l                                    ; $781d: $75
    ld c, b                                       ; $781e: $48
    or l                                          ; $781f: $b5
    or a                                          ; $7820: $b7
    ld h, d                                       ; $7821: $62
    inc b                                         ; $7822: $04
    ld a, [de]                                    ; $7823: $1a
    db $fc                                        ; $7824: $fc
    ld a, c                                       ; $7825: $79
    dec sp                                        ; $7826: $3b
    ld b, d                                       ; $7827: $42
    cp $91                                        ; $7828: $fe $91
    and $c9                                       ; $782a: $e6 $c9
    sbc a                                         ; $782c: $9f
    jp nc, $dceb                                  ; $782d: $d2 $eb $dc

    ld b, b                                       ; $7830: $40
    xor b                                         ; $7831: $a8
    cp $58                                        ; $7832: $fe $58
    ld l, l                                       ; $7834: $6d
    ld l, c                                       ; $7835: $69
    ld a, [c]                                     ; $7836: $f2
    sub l                                         ; $7837: $95
    db $dd                                        ; $7838: $dd
    cp a                                          ; $7839: $bf
    nop                                           ; $783a: $00
    ld c, [hl]                                    ; $783b: $4e
    inc a                                         ; $783c: $3c
    db $fc                                        ; $783d: $fc
    db $f4                                        ; $783e: $f4
    ld bc, $e231                                  ; $783f: $01 $31 $e2
    adc h                                         ; $7842: $8c
    add hl, sp                                    ; $7843: $39
    or e                                          ; $7844: $b3
    cp $b4                                        ; $7845: $fe $b4
    and e                                         ; $7847: $a3
    ccf                                           ; $7848: $3f
    or $7d                                        ; $7849: $f6 $7d
    add h                                         ; $784b: $84
    ld l, d                                       ; $784c: $6a
    ld d, l                                       ; $784d: $55
    db $ed                                        ; $784e: $ed
    db $dd                                        ; $784f: $dd
    ld [$afdf], a                                 ; $7850: $ea $df $af
    adc b                                         ; $7853: $88
    ld l, d                                       ; $7854: $6a
    rst $00                                       ; $7855: $c7
    ld e, d                                       ; $7856: $5a
    jp z, $9084                                   ; $7857: $ca $84 $90

    sbc l                                         ; $785a: $9d
    or c                                          ; $785b: $b1
    jp $a102                                      ; $785c: $c3 $02 $a1


    ld e, d                                       ; $785f: $5a
    push de                                       ; $7860: $d5
    ld [hl], b                                    ; $7861: $70
    rst $38                                       ; $7862: $ff
    ld c, l                                       ; $7863: $4d
    db $d3                                        ; $7864: $d3
    ld [hl], h                                    ; $7865: $74
    add $1c                                       ; $7866: $c6 $1c
    adc h                                         ; $7868: $8c
    cp [hl]                                       ; $7869: $be
    inc h                                         ; $786a: $24
    ld [hl], e                                    ; $786b: $73
    push de                                       ; $786c: $d5
    ld [$22ce], a                                 ; $786d: $ea $ce $22
    sub $e7                                       ; $7870: $d6 $e7
    cp [hl]                                       ; $7872: $be
    rst $08                                       ; $7873: $cf
    ld b, d                                       ; $7874: $42
    db $e3                                        ; $7875: $e3
    ld c, c                                       ; $7876: $49
    ld b, a                                       ; $7877: $47
    ld e, c                                       ; $7878: $59
    ld hl, sp-$68                                 ; $7879: $f8 $98
    ld h, [hl]                                    ; $787b: $66
    ld b, [hl]                                    ; $787c: $46
    ccf                                           ; $787d: $3f
    rst $28                                       ; $787e: $ef
    adc h                                         ; $787f: $8c
    add hl, sp                                    ; $7880: $39
    or e                                          ; $7881: $b3
    cp $73                                        ; $7882: $fe $73
    dec l                                         ; $7884: $2d
    dec c                                         ; $7885: $0d
    add h                                         ; $7886: $84
    ld c, $5e                                     ; $7887: $0e $5e
    or d                                          ; $7889: $b2
    ld l, $eb                                     ; $788a: $2e $eb
    xor b                                         ; $788c: $a8
    or $f6                                        ; $788d: $f6 $f6
    xor a                                         ; $788f: $af
    or [hl]                                       ; $7890: $b6
    ld a, b                                       ; $7891: $78
    dec sp                                        ; $7892: $3b
    xor a                                         ; $7893: $af
    dec b                                         ; $7894: $05
    db $e4                                        ; $7895: $e4
    dec hl                                        ; $7896: $2b
    cpl                                           ; $7897: $2f
    ld [hl+], a                                   ; $7898: $22
    ld a, a                                       ; $7899: $7f
    inc h                                         ; $789a: $24
    ld l, d                                       ; $789b: $6a
    reti                                          ; $789c: $d9


    inc [hl]                                      ; $789d: $34
    rlca                                          ; $789e: $07
    ret                                           ; $789f: $c9


    ld e, $73                                     ; $78a0: $1e $73
    xor $5c                                       ; $78a2: $ee $5c
    rst $10                                       ; $78a4: $d7
    sbc [hl]                                      ; $78a5: $9e
    ld a, e                                       ; $78a6: $7b
    ld [hl], a                                    ; $78a7: $77
    adc h                                         ; $78a8: $8c
    inc bc                                        ; $78a9: $03
    push de                                       ; $78aa: $d5
    xor d                                         ; $78ab: $aa
    ld [hl], a                                    ; $78ac: $77
    ld c, e                                       ; $78ad: $4b
    push af                                       ; $78ae: $f5
    rst $00                                       ; $78af: $c7
    ld b, $c2                                     ; $78b0: $06 $c2
    adc h                                         ; $78b2: $8c
    add hl, sp                                    ; $78b3: $39
    adc h                                         ; $78b4: $8c
    cp [hl]                                       ; $78b5: $be
    inc h                                         ; $78b6: $24
    di                                            ; $78b7: $f3
    cp c                                          ; $78b8: $b9
    add $06                                       ; $78b9: $c6 $06
    ld b, d                                       ; $78bb: $42
    push de                                       ; $78bc: $d5
    cp [hl]                                       ; $78bd: $be
    or c                                          ; $78be: $b1
    add hl, bc                                    ; $78bf: $09
    add d                                         ; $78c0: $82
    ld b, $7f                                     ; $78c1: $06 $7f
    rst $20                                       ; $78c3: $e7
    cp $d5                                        ; $78c4: $fe $d5
    ld d, $77                                     ; $78c6: $16 $77
    ld [hl], $2b                                  ; $78c8: $36 $2b
    ld [hl], b                                    ; $78ca: $70
    rst $38                                       ; $78cb: $ff
    sub d                                         ; $78cc: $92
    dec d                                         ; $78cd: $15
    jp nz, $f117                                  ; $78ce: $c2 $17 $f1

    ld c, $c9                                     ; $78d1: $0e $c9
    ld bc, $2da3                                  ; $78d3: $01 $a3 $2d
    dec c                                         ; $78d6: $0d
    add h                                         ; $78d7: $84
    ld e, d                                       ; $78d8: $5a
    ld h, [hl]                                    ; $78d9: $66
    call z, Call_033_4c01                         ; $78da: $cc $01 $4c
    ld [hl], b                                    ; $78dd: $70
    ld h, h                                       ; $78de: $64
    ld d, b                                       ; $78df: $50
    sub $88                                       ; $78e0: $d6 $88
    sub [hl]                                      ; $78e2: $96
    ld a, [hl-]                                   ; $78e3: $3a
    or $5c                                        ; $78e4: $f6 $5c
    ld l, l                                       ; $78e6: $6d
    jp hl                                         ; $78e7: $e9


    add hl, bc                                    ; $78e8: $09
    ld a, [hl+]                                   ; $78e9: $2a
    db $eb                                        ; $78ea: $eb
    dec a                                         ; $78eb: $3d
    ld b, h                                       ; $78ec: $44
    sub a                                         ; $78ed: $97
    db $fd                                        ; $78ee: $fd
    ld d, h                                       ; $78ef: $54
    rst $30                                       ; $78f0: $f7
    or e                                          ; $78f1: $b3
    call nz, $e27f                                ; $78f2: $c4 $7f $e2
    ld c, l                                       ; $78f5: $4d
    ld [hl], e                                    ; $78f6: $73
    adc h                                         ; $78f7: $8c
    ld a, [hl]                                    ; $78f8: $7e
    ret nc                                        ; $78f9: $d0

    dec c                                         ; $78fa: $0d
    cp $a0                                        ; $78fb: $fe $a0
    add a                                         ; $78fd: $87
    sbc a                                         ; $78fe: $9f
    sub h                                         ; $78ff: $94
    xor h                                         ; $7900: $ac
    ld a, d                                       ; $7901: $7a
    ld [hl], a                                    ; $7902: $77
    ld b, b                                       ; $7903: $40
    rst $28                                       ; $7904: $ef
    adc $ce                                       ; $7905: $ce $ce
    push de                                       ; $7907: $d5
    sub [hl]                                      ; $7908: $96
    sbc [hl]                                      ; $7909: $9e
    and b                                         ; $790a: $a0
    or d                                          ; $790b: $b2
    sbc $43                                       ; $790c: $de $43
    ld [hl], h                                    ; $790e: $74
    reti                                          ; $790f: $d9


    ld c, a                                       ; $7910: $4f
    ld [hl], l                                    ; $7911: $75
    ccf                                           ; $7912: $3f
    ld c, e                                       ; $7913: $4b
    db $fc                                        ; $7914: $fc
    daa                                           ; $7915: $27
    sbc $34                                       ; $7916: $de $34
    rlca                                          ; $7918: $07
    ld b, e                                       ; $7919: $43
    add hl, hl                                    ; $791a: $29
    dec [hl]                                      ; $791b: $35
    sub $b1                                       ; $791c: $d6 $b1
    ld [$cc8e], sp                                ; $791e: $08 $8e $cc
    dec sp                                        ; $7921: $3b
    inc h                                         ; $7922: $24
    rlca                                          ; $7923: $07
    or e                                          ; $7924: $b3
    dec de                                        ; $7925: $1b
    ret nz                                        ; $7926: $c0

    ld h, l                                       ; $7927: $65
    ld a, [c]                                     ; $7928: $f2
    ld b, a                                       ; $7929: $47
    and d                                         ; $792a: $a2
    sub [hl]                                      ; $792b: $96
    ld [$1a30], a                                 ; $792c: $ea $30 $1a
    dec sp                                        ; $792f: $3b
    ld a, [c]                                     ; $7930: $f2
    db $d3                                        ; $7931: $d3
    ld [hl], e                                    ; $7932: $73
    scf                                           ; $7933: $37
    ld hl, sp-$7d                                 ; $7934: $f8 $83
    sbc $ff                                       ; $7936: $de $ff
    sub e                                         ; $7938: $93
    add hl, de                                    ; $7939: $19
    ld [hl], e                                    ; $793a: $73
    and e                                         ; $793b: $a3
    ld b, e                                       ; $793c: $43
    adc d                                         ; $793d: $8a
    rla                                           ; $793e: $17
    and l                                         ; $793f: $a5
    ldh [$ad], a                                  ; $7940: $e0 $ad
    ld e, d                                       ; $7942: $5a
    db $ec                                        ; $7943: $ec
    xor c                                         ; $7944: $a9
    ld b, $32                                     ; $7945: $06 $32
    db $f4                                        ; $7947: $f4
    dec hl                                        ; $7948: $2b
    and d                                         ; $7949: $a2
    jp c, $d1db                                   ; $794a: $da $db $d1

    adc $7a                                       ; $794d: $ce $7a
    ld a, h                                       ; $794f: $7c
    cp $bc                                        ; $7950: $fe $bc
    ld l, c                                       ; $7952: $69
    ld c, $09                                     ; $7953: $0e $09
    db $fc                                        ; $7955: $fc
    sub l                                         ; $7956: $95
    adc l                                         ; $7957: $8d
    db $ed                                        ; $7958: $ed
    dec bc                                        ; $7959: $0b
    res 7, c                                      ; $795a: $cb $b9
    ld [$e1e8], a                                 ; $795c: $ea $e8 $e1
    ld e, b                                       ; $795f: $58
    ld l, a                                       ; $7960: $6f
    add a                                         ; $7961: $87
    rst $28                                       ; $7962: $ef
    call Call_033_64b4                            ; $7963: $cd $b4 $64
    push de                                       ; $7966: $d5
    ld b, c                                       ; $7967: $41
    bit 4, a                                      ; $7968: $cb $67
    sub c                                         ; $796a: $91
    cp a                                          ; $796b: $bf
    or b                                          ; $796c: $b0
    or $9e                                        ; $796d: $f6 $9e
    xor e                                         ; $796f: $ab
    dec l                                         ; $7970: $2d
    db $dd                                        ; $7971: $dd
    rst $08                                       ; $7972: $cf
    ld e, a                                       ; $7973: $5f
    sbc e                                         ; $7974: $9b
    ld a, h                                       ; $7975: $7c
    ld h, l                                       ; $7976: $65
    rst $30                                       ; $7977: $f7
    cpl                                           ; $7978: $2f
    add b                                         ; $7979: $80
    dec h                                         ; $797a: $25
    ld [de], a                                    ; $797b: $12
    sbc a                                         ; $797c: $9f
    ld b, b                                       ; $797d: $40
    sbc d                                         ; $797e: $9a
    inc bc                                        ; $797f: $03
    ld [hl], e                                    ; $7980: $73
    or b                                          ; $7981: $b0
    rst $30                                       ; $7982: $f7
    db $eb                                        ; $7983: $eb
    pop de                                        ; $7984: $d1
    ld [$4770], a                                 ; $7985: $ea $70 $47
    xor d                                         ; $7988: $aa
    inc l                                         ; $7989: $2c
    inc sp                                        ; $798a: $33
    push bc                                       ; $798b: $c5
    sbc $1c                                       ; $798c: $de $1c
    db $eb                                        ; $798e: $eb
    ld c, $7d                                     ; $798f: $0e $7d
    xor e                                         ; $7991: $ab
    ld [hl], $eb                                  ; $7992: $36 $eb
    ldh [$b5], a                                  ; $7994: $e0 $b5
    dec e                                         ; $7996: $1d
    ld sp, hl                                     ; $7997: $f9
    or e                                          ; $7998: $b3
    ld [hl], b                                    ; $7999: $70
    rst $18                                       ; $799a: $df
    ld h, a                                       ; $799b: $67
    cp l                                          ; $799c: $bd
    rst $20                                       ; $799d: $e7
    or d                                          ; $799e: $b2
    ld e, a                                       ; $799f: $5f
    ld a, c                                       ; $79a0: $79
    adc e                                         ; $79a1: $8b
    pop hl                                        ; $79a2: $e1
    sbc $43                                       ; $79a3: $de $43
    ld l, [hl]                                    ; $79a5: $6e
    inc [hl]                                      ; $79a6: $34
    ld hl, sp+$6b                                 ; $79a7: $f8 $6b
    ld h, $d7                                     ; $79a9: $26 $d7
    jr c, jr_033_7a0c                             ; $79ab: $38 $5f

    jr nz, jr_033_79e1                            ; $79ad: $20 $32

    rst $30                                       ; $79af: $f7
    inc b                                         ; $79b0: $04
    ld d, d                                       ; $79b1: $52
    and $34                                       ; $79b2: $e6 $34
    rlca                                          ; $79b4: $07
    add hl, bc                                    ; $79b5: $09
    db $fc                                        ; $79b6: $fc
    sub l                                         ; $79b7: $95
    adc l                                         ; $79b8: $8d
    dec l                                         ; $79b9: $2d
    ld hl, $3bd7                                  ; $79ba: $21 $d7 $3b
    rst $30                                       ; $79bd: $f7
    xor $dd                                       ; $79be: $ee $dd
    ld b, $7f                                     ; $79c0: $06 $7f
    push af                                       ; $79c2: $f5
    ld l, d                                       ; $79c3: $6a
    ld a, [de]                                    ; $79c4: $1a
    db $fc                                        ; $79c5: $fc
    sub l                                         ; $79c6: $95
    xor h                                         ; $79c7: $ac
    sbc d                                         ; $79c8: $9a
    db $fc                                        ; $79c9: $fc
    dec d                                         ; $79ca: $15
    cp d                                          ; $79cb: $ba
    ld l, h                                       ; $79cc: $6c
    ld l, h                                       ; $79cd: $6c
    push de                                       ; $79ce: $d5
    ld [$30ea], a                                 ; $79cf: $ea $ea $30
    cp d                                          ; $79d2: $ba
    ld l, d                                       ; $79d3: $6a
    ld e, c                                       ; $79d4: $59
    sbc a                                         ; $79d5: $9f
    and [hl]                                      ; $79d6: $a6
    ld a, h                                       ; $79d7: $7c
    ld a, b                                       ; $79d8: $78
    dec sp                                        ; $79d9: $3b
    ld d, d                                       ; $79da: $52

Jump_033_79db:
    ld h, l                                       ; $79db: $65
    sbc c                                         ; $79dc: $99
    jp hl                                         ; $79dd: $e9


    adc l                                         ; $79de: $8d
    ld a, [hl-]                                   ; $79df: $3a
    or h                                          ; $79e0: $b4

jr_033_79e1:
    and l                                         ; $79e1: $a5
    ld e, a                                       ; $79e2: $5f
    ld hl, $fc39                                  ; $79e3: $21 $39 $fc
    cp h                                          ; $79e6: $bc
    cp l                                          ; $79e7: $bd
    db $fd                                        ; $79e8: $fd
    db $dd                                        ; $79e9: $dd
    or h                                          ; $79ea: $b4
    call z, Call_033_6f70                         ; $79eb: $cc $70 $6f
    ld a, [c]                                     ; $79ee: $f2
    add c                                         ; $79ef: $81
    db $ec                                        ; $79f0: $ec
    dec l                                         ; $79f1: $2d
    ld e, [hl]                                    ; $79f2: $5e
    ld b, l                                       ; $79f3: $45
    ccf                                           ; $79f4: $3f
    add hl, de                                    ; $79f5: $19
    sub d                                         ; $79f6: $92
    inc bc                                        ; $79f7: $03
    add hl, bc                                    ; $79f8: $09
    db $fc                                        ; $79f9: $fc
    push af                                       ; $79fa: $f5
    ld a, l                                       ; $79fb: $7d
    ld b, h                                       ; $79fc: $44
    ld d, a                                       ; $79fd: $57
    add a                                         ; $79fe: $87
    pop de                                        ; $79ff: $d1
    dec e                                         ; $7a00: $1d
    xor c                                         ; $7a01: $a9
    or d                                          ; $7a02: $b2
    call z, Call_033_46f4                         ; $7a03: $cc $f4 $46
    dec e                                         ; $7a06: $1d
    jp c, $ee72                                   ; $7a07: $da $72 $ee

    ld h, a                                       ; $7a0a: $67
    dec l                                         ; $7a0b: $2d

jr_033_7a0c:
    push de                                       ; $7a0c: $d5
    pop hl                                        ; $7a0d: $e1
    ld [hl-], a                                   ; $7a0e: $32
    ld sp, hl                                     ; $7a0f: $f9
    ld d, e                                       ; $7a10: $53
    rst $08                                       ; $7a11: $cf
    push bc                                       ; $7a12: $c5
    ld e, b                                       ; $7a13: $58
    db $dd                                        ; $7a14: $dd
    ld a, e                                       ; $7a15: $7b
    ret z                                         ; $7a16: $c8

    adc l                                         ; $7a17: $8d
    ld b, $7f                                     ; $7a18: $06 $7f
    push af                                       ; $7a1a: $f5
    ld [bc], a                                    ; $7a1b: $02
    sbc c                                         ; $7a1c: $99
    call nz, Call_033_5e6f                        ; $7a1d: $c4 $6f $5e
    dec a                                         ; $7a20: $3d
    inc h                                         ; $7a21: $24
    rlca                                          ; $7a22: $07
    add hl, bc                                    ; $7a23: $09
    db $fc                                        ; $7a24: $fc

jr_033_7a25:
    push af                                       ; $7a25: $f5
    ld e, l                                       ; $7a26: $5d
    inc b                                         ; $7a27: $04
    pop hl                                        ; $7a28: $e1
    ld [hl], e                                    ; $7a29: $73
    push af                                       ; $7a2a: $f5
    ld b, a                                       ; $7a2b: $47
    db $ec                                        ; $7a2c: $ec
    pop hl                                        ; $7a2d: $e1
    ret c                                         ; $7a2e: $d8

    adc [hl]                                      ; $7a2f: $8e
    cp d                                          ; $7a30: $ba
    ld a, [de]                                    ; $7a31: $1a
    ld e, e                                       ; $7a32: $5b
    dec e                                         ; $7a33: $1d
    ld b, [hl]                                    ; $7a34: $46
    ld l, a                                       ; $7a35: $6f
    ld b, a                                       ; $7a36: $47
    xor d                                         ; $7a37: $aa
    inc l                                         ; $7a38: $2c
    inc sp                                        ; $7a39: $33
    cp l                                          ; $7a3a: $bd
    ld d, c                                       ; $7a3b: $51
    add a                                         ; $7a3c: $87
    or [hl]                                       ; $7a3d: $b6
    ld l, h                                       ; $7a3e: $6c
    scf                                           ; $7a3f: $37
    ld hl, sp-$7d                                 ; $7a40: $f8 $83
    xor d                                         ; $7a42: $aa
    dec e                                         ; $7a43: $1d
    cp h                                          ; $7a44: $bc
    inc b                                         ; $7a45: $04
    inc e                                         ; $7a46: $1c
    db $f4                                        ; $7a47: $f4
    ld a, l                                       ; $7a48: $7d
    ld [bc], a                                    ; $7a49: $02
    ld a, [$6215]                                 ; $7a4a: $fa $15 $62
    ld hl, sp+$41                                 ; $7a4d: $f8 $41
    sbc d                                         ; $7a4f: $9a
    inc bc                                        ; $7a50: $03
    ret                                           ; $7a51: $c9


    ld h, c                                       ; $7a52: $61
    jp hl                                         ; $7a53: $e9


    ld b, c                                       ; $7a54: $41
    ld b, d                                       ; $7a55: $42
    inc b                                         ; $7a56: $04
    rst $10                                       ; $7a57: $d7
    ret c                                         ; $7a58: $d8

    ld a, e                                       ; $7a59: $7b
    ret z                                         ; $7a5a: $c8

    adc l                                         ; $7a5b: $8d
    ld b, $7f                                     ; $7a5c: $06 $7f
    dec a                                         ; $7a5e: $3d
    db $fc                                        ; $7a5f: $fc
    and h                                         ; $7a60: $a4
    call z, Call_033_7200                         ; $7a61: $cc $00 $72
    ld h, [hl]                                    ; $7a64: $66
    ld [$fbcc], a                                 ; $7a65: $ea $cc $fb
    inc e                                         ; $7a68: $1c
    ldh [$6d], a                                  ; $7a69: $e0 $6d
    ld h, [hl]                                    ; $7a6b: $66
    sub $9b                                       ; $7a6c: $d6 $9b
    and $cc                                       ; $7a6e: $e6 $cc
    adc e                                         ; $7a70: $8b
    jp nc, Jump_033_7f06                          ; $7a71: $d2 $06 $7f

    push de                                       ; $7a74: $d5
    sbc $8e                                       ; $7a75: $de $8e
    ld d, h                                       ; $7a77: $54
    ld e, c                                       ; $7a78: $59
    ld h, [hl]                                    ; $7a79: $66
    adc d                                         ; $7a7a: $8a
    dec a                                         ; $7a7b: $3d
    ld a, $2d                                     ; $7a7c: $3e $2d
    ld e, c                                       ; $7a7e: $59
    db $dd                                        ; $7a7f: $dd
    ld h, e                                       ; $7a80: $63
    ld l, a                                       ; $7a81: $6f
    sbc $19                                       ; $7a82: $de $19
    ld [hl], e                                    ; $7a84: $73
    add hl, bc                                    ; $7a85: $09
    db $fc                                        ; $7a86: $fc
    push af                                       ; $7a87: $f5
    jr jr_033_7a25                                ; $7a88: $18 $9b

    ccf                                           ; $7a8a: $3f
    ld [hl], b                                    ; $7a8b: $70
    sub e                                         ; $7a8c: $93
    xor a                                         ; $7a8d: $af
    db $ec                                        ; $7a8e: $ec
    cp $05                                        ; $7a8f: $fe $05
    or b                                          ; $7a91: $b0
    sbc a                                         ; $7a92: $9f
    ld h, d                                       ; $7a93: $62
    add a                                         ; $7a94: $87
    dec bc                                        ; $7a95: $0b
    add d                                         ; $7a96: $82
    and l                                         ; $7a97: $a5
    add sp, -$19                                  ; $7a98: $e8 $e7
    ld c, l                                       ; $7a9a: $4d
    ld [hl], e                                    ; $7a9b: $73
    add hl, bc                                    ; $7a9c: $09
    db $fc                                        ; $7a9d: $fc
    push af                                       ; $7a9e: $f5
    ld a, l                                       ; $7a9f: $7d
    sub $75                                       ; $7aa0: $d6 $75
    xor h                                         ; $7aa2: $ac
    ld a, e                                       ; $7aa3: $7b
    ld [hl], a                                    ; $7aa4: $77
    add b                                         ; $7aa5: $80
    rlc h                                         ; $7aa6: $cb $04
    ld sp, $b9bf                                  ; $7aa8: $31 $bf $b9
    ld h, h                                       ; $7aab: $64
    dec h                                         ; $7aac: $25
    inc h                                         ; $7aad: $24
    ld a, [hl]                                    ; $7aae: $7e
    bit 1, h                                      ; $7aaf: $cb $4c
    sbc l                                         ; $7ab1: $9d
    pop bc                                        ; $7ab2: $c1
    cp c                                          ; $7ab3: $b9
    ld [$7ee8], a                                 ; $7ab4: $ea $e8 $7e
    cp $9a                                        ; $7ab7: $fe $9a
    ld a, h                                       ; $7ab9: $7c
    ld h, l                                       ; $7aba: $65
    rst $30                                       ; $7abb: $f7
    cpl                                           ; $7abc: $2f
    add b                                         ; $7abd: $80
    dec h                                         ; $7abe: $25
    xor e                                         ; $7abf: $ab
    sbc $ae                                       ; $7ac0: $de $ae
    db $e3                                        ; $7ac2: $e3
    ldh a, [$a6]                                  ; $7ac3: $f0 $a6
    add hl, sp                                    ; $7ac5: $39
    ret                                           ; $7ac6: $c9


    rla                                           ; $7ac7: $17
    ld b, c                                       ; $7ac8: $41
    ld a, b                                       ; $7ac9: $78
    add c                                         ; $7aca: $81
    ld b, $7f                                     ; $7acb: $06 $7f
    cp l                                          ; $7acd: $bd
    add a                                         ; $7ace: $87
    add sp, $1e                                   ; $7acf: $e8 $1e
    ld hl, $e0dd                                  ; $7ad1: $21 $dd $e0
    rrca                                          ; $7ad4: $0f
    adc d                                         ; $7ad5: $8a
    db $fc                                        ; $7ad6: $fc
    ld d, c                                       ; $7ad7: $51
    di                                            ; $7ad8: $f3
    rlca                                          ; $7ad9: $07
    ld l, c                                       ; $7ada: $69
    ld c, $09                                     ; $7adb: $0e $09
    db $fc                                        ; $7add: $fc
    push af                                       ; $7ade: $f5
    ld c, [hl]                                    ; $7adf: $4e
    ld e, d                                       ; $7ae0: $5a
    db $e4                                        ; $7ae1: $e4
    rrca                                          ; $7ae2: $0f
    ld a, h                                       ; $7ae3: $7c
    ld l, [hl]                                    ; $7ae4: $6e
    ldh a, [$57]                                  ; $7ae5: $f0 $57
    ld c, l                                       ; $7ae7: $4d
    ld [de], a                                    ; $7ae8: $12
    ld [bc], a                                    ; $7ae9: $02
    ld e, h                                       ; $7aea: $5c
    xor a                                         ; $7aeb: $af
    and [hl]                                      ; $7aec: $a6
    pop bc                                        ; $7aed: $c1
    ld e, a                                       ; $7aee: $5f
    rst $38                                       ; $7aef: $ff
    sub d                                         ; $7af0: $92
    jp $dbcf                                      ; $7af1: $c3 $cf $db


    ei                                            ; $7af4: $fb
    rst $00                                       ; $7af5: $c7
    ld b, $7f                                     ; $7af6: $06 $7f
    cp l                                          ; $7af8: $bd
    rlca                                          ; $7af9: $07
    and l                                         ; $7afa: $a5
    ld l, c                                       ; $7afb: $69
    ld c, $a3                                     ; $7afc: $0e $a3
    dec l                                         ; $7afe: $2d
    jp c, $0c5b                                   ; $7aff: $da $5b $0c

    ld d, a                                       ; $7b02: $57
    dec l                                         ; $7b03: $2d
    sub $b1                                       ; $7b04: $d6 $b1
    sbc $ce                                       ; $7b06: $de $ce
    ld [de], a                                    ; $7b08: $12
    db $f4                                        ; $7b09: $f4
    add sp, -$20                                  ; $7b0a: $e8 $e0
    dec h                                         ; $7b0c: $25
    inc b                                         ; $7b0d: $04
    jp hl                                         ; $7b0e: $e9


    adc c                                         ; $7b0f: $89
    ld [hl], a                                    ; $7b10: $77
    add $1c                                       ; $7b11: $c6 $1c
    add hl, bc                                    ; $7b13: $09
    db $fc                                        ; $7b14: $fc
    push af                                       ; $7b15: $f5
    ld e, l                                       ; $7b16: $5d
    inc b                                         ; $7b17: $04
    pop hl                                        ; $7b18: $e1
    ld [hl], e                                    ; $7b19: $73
    add e                                         ; $7b1a: $83
    cp a                                          ; $7b1b: $bf
    sbc $ae                                       ; $7b1c: $de $ae

jr_033_7b1e:
    db $e3                                        ; $7b1e: $e3
    ld [hl], b                                    ; $7b1f: $70
    rst $30                                       ; $7b20: $f7
    di                                            ; $7b21: $f3
    rst $10                                       ; $7b22: $d7
    ld h, h                                       ; $7b23: $64
    ld b, l                                       ; $7b24: $45
    db $10                                        ; $7b25: $10
    call nc, $8a03                                ; $7b26: $d4 $03 $8a
    jr nz, @-$2c                                  ; $7b29: $20 $d2

    halt                                          ; $7b2b: $76
    and h                                         ; $7b2c: $a4
    ld h, e                                       ; $7b2d: $63
    dec sp                                        ; $7b2e: $3b
    rst $28                                       ; $7b2f: $ef
    rlca                                          ; $7b30: $07
    ld c, e                                       ; $7b31: $4b
    rst $28                                       ; $7b32: $ef
    ld e, a                                       ; $7b33: $5f
    ld a, [$7f15]                                 ; $7b34: $fa $15 $7f
    push de                                       ; $7b37: $d5
    ccf                                           ; $7b38: $3f
    call Call_033_7301                            ; $7b39: $cd $01 $73
    dec hl                                        ; $7b3c: $2b
    add sp, $11                                   ; $7b3d: $e8 $11
    jp nc, Jump_000_1cd9                          ; $7b3f: $d2 $d9 $1c

    ld a, [$cfdc]                                 ; $7b42: $fa $dc $cf
    ld e, d                                       ; $7b45: $5a
    ld a, [de]                                    ; $7b46: $1a
    db $fc                                        ; $7b47: $fc
    sub l                                         ; $7b48: $95
    adc l                                         ; $7b49: $8d
    ld l, l                                       ; $7b4a: $6d
    ld h, [hl]                                    ; $7b4b: $66
    ld sp, hl                                     ; $7b4c: $f9
    jp c, Jump_000_023d                           ; $7b4d: $da $3d $02

    ret nz                                        ; $7b50: $c0

    db $db                                        ; $7b51: $db
    jr c, jr_033_7b1e                             ; $7b52: $38 $ca

    inc e                                         ; $7b54: $1c
    ld [$34d3], sp                                ; $7b55: $08 $d3 $34
    rlca                                          ; $7b58: $07
    or e                                          ; $7b59: $b3
    rlca                                          ; $7b5a: $07
    ld a, a                                       ; $7b5b: $7f
    ret nc                                        ; $7b5c: $d0

    ld d, e                                       ; $7b5d: $53
    dec c                                         ; $7b5e: $0d
    ld h, h                                       ; $7b5f: $64
    jr c, @+$39                                   ; $7b60: $38 $37

    ld hl, sp-$15                                 ; $7b62: $f8 $eb
    pop af                                        ; $7b64: $f1
    ld sp, hl                                     ; $7b65: $f9
    ld [hl], e                                    ; $7b66: $73
    inc sp                                        ; $7b67: $33
    set 2, a                                      ; $7b68: $cb $d7
    xor [hl]                                      ; $7b6a: $ae
    or $36                                        ; $7b6b: $f6 $36
    add hl, sp                                    ; $7b6d: $39
    or d                                          ; $7b6e: $b2
    add a                                         ; $7b6f: $87
    db $fc                                        ; $7b70: $fc
    ld [de], a                                    ; $7b71: $12
    and a                                         ; $7b72: $a7
    add hl, sp                                    ; $7b73: $39
    add hl, bc                                    ; $7b74: $09
    db $fc                                        ; $7b75: $fc
    sub l                                         ; $7b76: $95
    adc l                                         ; $7b77: $8d
    db $ed                                        ; $7b78: $ed
    ld e, [hl]                                    ; $7b79: $5e
    db $fc                                        ; $7b7a: $fc
    ld [hl], l                                    ; $7b7b: $75
    jp Jump_000_023d                              ; $7b7c: $c3 $3d $02


    ld [$1f58], a                                 ; $7b7f: $ea $58 $1f
    dec a                                         ; $7b82: $3d
    ld b, c                                       ; $7b83: $41
    ld h, l                                       ; $7b84: $65
    call $fc4c                                    ; $7b85: $cd $4c $fc
    daa                                           ; $7b88: $27
    sbc $21                                       ; $7b89: $de $21
    add hl, sp                                    ; $7b8b: $39
    inc hl                                        ; $7b8c: $23
    dec e                                         ; $7b8d: $1d
    db $db                                        ; $7b8e: $db
    ld e, c                                       ; $7b8f: $59
    cp h                                          ; $7b90: $bc
    ld [$de96], sp                                ; $7b91: $08 $96 $de
    xor b                                         ; $7b94: $a8
    adc a                                         ; $7b95: $8f
    inc bc                                        ; $7b96: $03
    jp nc, $a31c                                  ; $7b97: $d2 $1c $a3

    xor a                                         ; $7b9a: $af
    ld b, $42                                     ; $7b9b: $06 $42
    or l                                          ; $7b9d: $b5
    and l                                         ; $7b9e: $a5
    call z, $0701                                 ; $7b9f: $cc $01 $07

Jump_033_7ba2:
    ld a, [$33fe]                                 ; $7ba2: $fa $fe $33
    rst $28                                       ; $7ba5: $ef
    adc h                                         ; $7ba6: $8c
    add hl, sp                                    ; $7ba7: $39
    and e                                         ; $7ba8: $a3
    xor a                                         ; $7ba9: $af
    ld b, $42                                     ; $7baa: $06 $42
    or l                                          ; $7bac: $b5
    and l                                         ; $7bad: $a5
    inc hl                                        ; $7bae: $23
    cpl                                           ; $7baf: $2f
    cp b                                          ; $7bb0: $b8
    ld h, h                                       ; $7bb1: $64
    add $1c                                       ; $7bb2: $c6 $1c
    jp $81b1                                      ; $7bb4: $c3 $b1 $81


    ret nc                                        ; $7bb7: $d0

    ld a, e                                       ; $7bb8: $7b
    ret z                                         ; $7bb9: $c8

    adc l                                         ; $7bba: $8d
    ld b, $7f                                     ; $7bbb: $06 $7f
    ld [hl], l                                    ; $7bbd: $75
    xor h                                         ; $7bbe: $ac
    dec sp                                        ; $7bbf: $3b
    db $fc                                        ; $7bc0: $fc
    adc c                                         ; $7bc1: $89
    rrc h                                         ; $7bc2: $cb $0c
    rst $30                                       ; $7bc4: $f7
    and $5d                                       ; $7bc5: $e6 $5d
    ld l, a                                       ; $7bc7: $6f
    ret                                           ; $7bc8: $c9


    xor d                                         ; $7bc9: $aa
    call nc, $deb2                                ; $7bca: $d4 $b2 $de
    ld [hl], e                                    ; $7bcd: $73
    ld b, a                                       ; $7bce: $47
    ld c, d                                       ; $7bcf: $4a
    jp c, Jump_000_1751                           ; $7bd0: $da $51 $17

    add b                                         ; $7bd3: $80
    push hl                                       ; $7bd4: $e5
    ld e, h                                       ; $7bd5: $5c
    ld h, [hl]                                    ; $7bd6: $66
    ld c, b                                       ; $7bd7: $48
    sbc d                                         ; $7bd8: $9a
    inc bc                                        ; $7bd9: $03
    add hl, bc                                    ; $7bda: $09

Jump_033_7bdb:
    db $fc                                        ; $7bdb: $fc
    push af                                       ; $7bdc: $f5
    or $77                                        ; $7bdd: $f6 $77
    ld l, e                                       ; $7bdf: $6b
    db $ec                                        ; $7be0: $ec
    db $ed                                        ; $7be1: $ed
    xor e                                         ; $7be2: $ab
    and e                                         ; $7be3: $a3
    sub [hl]                                      ; $7be4: $96
    ei                                            ; $7be5: $fb
    rla                                           ; $7be6: $17
    ldh a, [$9e]                                  ; $7be7: $f0 $9e
    xor e                                         ; $7be9: $ab
    ld a, l                                       ; $7bea: $7d
    inc [hl]                                      ; $7beb: $34
    ld sp, hl                                     ; $7bec: $f9
    jp z, $5fee                                   ; $7bed: $ca $ee $5f

    nop                                           ; $7bf0: $00
    daa                                           ; $7bf1: $27
    ld h, [hl]                                    ; $7bf2: $66
    cp $e3                                        ; $7bf3: $fe $e3
    and b                                         ; $7bf5: $a0
    sub [hl]                                      ; $7bf6: $96
    ld b, c                                       ; $7bf7: $41
    adc e                                         ; $7bf8: $8b
    ld h, e                                       ; $7bf9: $63
    ld c, e                                       ; $7bfa: $4b
    sub b                                         ; $7bfb: $90
    and h                                         ; $7bfc: $a4
    jp $ea82                                      ; $7bfd: $c3 $82 $ea


    db $db                                        ; $7c00: $db
    rla                                           ; $7c01: $17
    ldh a, [rPCM12]                               ; $7c02: $f0 $76
    ldh a, [$da]                                  ; $7c04: $f0 $da
    or d                                          ; $7c06: $b2
    ld d, $d2                                     ; $7c07: $16 $d2
    dec sp                                        ; $7c09: $3b
    ret nz                                        ; $7c0a: $c0

    db $db                                        ; $7c0b: $db
    ld h, h                                       ; $7c0c: $64
    sbc a                                         ; $7c0d: $9f
    xor $ad                                       ; $7c0e: $ee $ad
    ld e, d                                       ; $7c10: $5a
    db $dd                                        ; $7c11: $dd
    inc de                                        ; $7c12: $13
    cp [hl]                                       ; $7c13: $be
    ld h, d                                       ; $7c14: $62
    dec l                                         ; $7c15: $2d
    sub [hl]                                      ; $7c16: $96
    dec l                                         ; $7c17: $2d
    db $eb                                        ; $7c18: $eb
    jr nz, jr_033_7c46                            ; $7c19: $20 $2b

    db $10                                        ; $7c1b: $10
    add e                                         ; $7c1c: $83
    ld [hl], a                                    ; $7c1d: $77
    ld c, b                                       ; $7c1e: $48
    ld c, $73                                     ; $7c1f: $0e $73
    inc hl                                        ; $7c21: $23
    ld a, a                                       ; $7c22: $7f
    dec b                                         ; $7c23: $05
    db $e4                                        ; $7c24: $e4
    rst $28                                       ; $7c25: $ef
    ld e, h                                       ; $7c26: $5c

Call_033_7c27:
    ld b, b                                       ; $7c27: $40
    cp $0a                                        ; $7c28: $fe $0a
    ret z                                         ; $7c2a: $c8

    rst $18                                       ; $7c2b: $df
    cp c                                          ; $7c2c: $b9
    add b                                         ; $7c2d: $80
    db $fc                                        ; $7c2e: $fc
    dec d                                         ; $7c2f: $15
    sub b                                         ; $7c30: $90
    cp a                                          ; $7c31: $bf
    ld [hl], e                                    ; $7c32: $73
    ld bc, $2bf9                                  ; $7c33: $01 $f9 $2b
    jr nz, jr_033_7cb7                            ; $7c36: $20 $7f

    rst $20                                       ; $7c38: $e7
    sbc $af                                       ; $7c39: $de $af
    xor e                                         ; $7c3b: $ab
    rst $30                                       ; $7c3c: $f7
    db $eb                                        ; $7c3d: $eb
    ld a, [de]                                    ; $7c3e: $1a
    sub d                                         ; $7c3f: $92
    inc bc                                        ; $7c40: $03
    add hl, bc                                    ; $7c41: $09
    db $fc                                        ; $7c42: $fc
    sub l                                         ; $7c43: $95
    db $10                                        ; $7c44: $10
    dec hl                                        ; $7c45: $2b

jr_033_7c46:
    rst $30                                       ; $7c46: $f7
    ld [$8afe], sp                                ; $7c47: $08 $fe $8a
    db $fc                                        ; $7c4a: $fc
    ld e, l                                       ; $7c4b: $5d
    db $db                                        ; $7c4c: $db
    xor a                                         ; $7c4d: $af
    adc b                                         ; $7c4e: $88
    ld [hl-], a                                   ; $7c4f: $32
    ld a, [$7e3a]                                 ; $7c50: $fa $3a $7e
    ld d, $4e                                     ; $7c53: $16 $4e
    sbc e                                         ; $7c55: $9b
    ret nz                                        ; $7c56: $c0

    ld e, a                                       ; $7c57: $5f
    ld l, c                                       ; $7c58: $69
    sbc b                                         ; $7c59: $98
    ld [hl], l                                    ; $7c5a: $75
    adc l                                         ; $7c5b: $8d
    rst $20                                       ; $7c5c: $e7
    sub d                                         ; $7c5d: $92
    ld d, l                                       ; $7c5e: $55
    inc sp                                        ; $7c5f: $33
    ld sp, hl                                     ; $7c60: $f9
    xor h                                         ; $7c61: $ac
    scf                                           ; $7c62: $37
    call $a301                                    ; $7c63: $cd $01 $a3
    ccf                                           ; $7c66: $3f
    ld d, $c3                                     ; $7c67: $16 $c3
    rrca                                          ; $7c69: $0f
    and c                                         ; $7c6a: $a1
    ld e, d                                       ; $7c6b: $5a
    ld d, l                                       ; $7c6c: $55
    add a                                         ; $7c6d: $87
    ld d, h                                       ; $7c6e: $54
    ld a, e                                       ; $7c6f: $7b
    or a                                          ; $7c70: $b7
    ld a, [$eff7]                                 ; $7c71: $fa $f7 $ef
    adc h                                         ; $7c74: $8c
    add hl, sp                                    ; $7c75: $39
    ld c, c                                       ; $7c76: $49
    sub [hl]                                      ; $7c77: $96
    sbc [hl]                                      ; $7c78: $9e
    and b                                         ; $7c79: $a0
    ld [hl-], a                                   ; $7c7a: $32
    add d                                         ; $7c7b: $82
    db $f4                                        ; $7c7c: $f4
    call nz, Call_000_0952                        ; $7c7d: $c4 $52 $09
    di                                            ; $7c80: $f3
    rlca                                          ; $7c81: $07
    cp l                                          ; $7c82: $bd
    ld e, l                                       ; $7c83: $5d
    ld b, a                                       ; $7c84: $47
    jr nz, @+$81                                  ; $7c85: $20 $7f

    ld l, c                                       ; $7c87: $69
    ld c, $c3                                     ; $7c88: $0e $c3
    or c                                          ; $7c8a: $b1
    add c                                         ; $7c8b: $81
    ld d, b                                       ; $7c8c: $50
    db $f4                                        ; $7c8d: $f4
    sub e                                         ; $7c8e: $93
    sbc $63                                       ; $7c8f: $de $63
    ld [hl], l                                    ; $7c91: $75
    ld h, h                                       ; $7c92: $64
    ld a, l                                       ; $7c93: $7d
    ld d, [hl]                                    ; $7c94: $56
    ldh [$34], a                                  ; $7c95: $e0 $34
    rlca                                          ; $7c97: $07
    ld c, c                                       ; $7c98: $49
    pop hl                                        ; $7c99: $e1
    adc $e2                                       ; $7c9a: $ce $e2
    ld b, l                                       ; $7c9c: $45
    or b                                          ; $7c9d: $b0
    db $f4                                        ; $7c9e: $f4
    ld [hl], $f6                                  ; $7c9f: $36 $f6
    ld l, $78                                     ; $7ca1: $2e $78
    ei                                            ; $7ca3: $fb
    dec d                                         ; $7ca4: $15
    ld a, a                                       ; $7ca5: $7f
    db $dd                                        ; $7ca6: $dd
    adc e                                         ; $7ca7: $8b
    cp a                                          ; $7ca8: $bf
    ld e, $9f                                     ; $7ca9: $1e $9f
    ld [hl], $f3                                  ; $7cab: $36 $f3
    add b                                         ; $7cad: $80
    ld [bc], a                                    ; $7cae: $02
    ld [hl-], a                                   ; $7caf: $32
    db $f4                                        ; $7cb0: $f4
    ld l, [hl]                                    ; $7cb1: $6e
    pop de                                        ; $7cb2: $d1
    sbc $34                                       ; $7cb3: $de $34
    rlca                                          ; $7cb5: $07
    add hl, bc                                    ; $7cb6: $09

jr_033_7cb7:
    db $fc                                        ; $7cb7: $fc
    ld d, l                                       ; $7cb8: $55
    ld a, a                                       ; $7cb9: $7f
    cp $c0                                        ; $7cba: $fe $c0
    rst $20                                       ; $7cbc: $e7
    ld b, $7f                                     ; $7cbd: $06 $7f
    ld a, l                                       ; $7cbf: $7d
    adc c                                         ; $7cc0: $89
    nop                                           ; $7cc1: $00
    xor [hl]                                      ; $7cc2: $ae
    ld h, e                                       ; $7cc3: $63
    dec sp                                        ; $7cc4: $3b
    sub h                                         ; $7cc5: $94
    dec b                                         ; $7cc6: $05
    rlca                                          ; $7cc7: $07
    ld l, l                                       ; $7cc8: $6d
    or $97                                        ; $7cc9: $f6 $97
    ld e, h                                       ; $7ccb: $5c
    add d                                         ; $7ccc: $82
    inc h                                         ; $7ccd: $24
    dec a                                         ; $7cce: $3d
    add d                                         ; $7ccf: $82
    cp a                                          ; $7cd0: $bf
    ld a, [hl]                                    ; $7cd1: $7e
    ld c, d                                       ; $7cd2: $4a
    dec e                                         ; $7cd3: $1d
    db $eb                                        ; $7cd4: $eb
    inc [hl]                                      ; $7cd5: $34
    rlca                                          ; $7cd6: $07
    add hl, bc                                    ; $7cd7: $09
    db $fc                                        ; $7cd8: $fc
    sub l                                         ; $7cd9: $95
    adc l                                         ; $7cda: $8d
    dec l                                         ; $7cdb: $2d
    ld e, [hl]                                    ; $7cdc: $5e
    db $fd                                        ; $7cdd: $fd
    adc d                                         ; $7cde: $8a
    ret z                                         ; $7cdf: $c8

    inc l                                         ; $7ce0: $2c
    adc $20                                       ; $7ce1: $ce $20
    ld l, l                                       ; $7ce3: $6d
    ld [bc], a                                    ; $7ce4: $02
    ld a, a                                       ; $7ce5: $7f
    cp l                                          ; $7ce6: $bd
    db $fd                                        ; $7ce7: $fd
    db $dd                                        ; $7ce8: $dd
    ld h, [hl]                                    ; $7ce9: $66
    ld e, a                                       ; $7cea: $5f
    cp d                                          ; $7ceb: $ba
    pop bc                                        ; $7cec: $c1
    rra                                           ; $7ced: $1f
    db $f4                                        ; $7cee: $f4
    ldh a, [$93]                                  ; $7cef: $f0 $93
    ld [hl+], a                                   ; $7cf1: $22
    inc b                                         ; $7cf2: $04
    and l                                         ; $7cf3: $a5
    push bc                                       ; $7cf4: $c5
    nop                                           ; $7cf5: $00
    or d                                          ; $7cf6: $b2
    or a                                          ; $7cf7: $b7
    inc l                                         ; $7cf8: $2c
    ld [hl], l                                    ; $7cf9: $75
    or b                                          ; $7cfa: $b0
    sbc $34                                       ; $7cfb: $de $34
    rlca                                          ; $7cfd: $07
    add hl, bc                                    ; $7cfe: $09
    db $fc                                        ; $7cff: $fc
    sub l                                         ; $7d00: $95
    add [hl]                                      ; $7d01: $86
    ld e, c                                       ; $7d02: $59
    ld [hl], a                                    ; $7d03: $77
    sbc b                                         ; $7d04: $98
    ld de, $94d0                                  ; $7d05: $11 $d0 $94
    ld e, d                                       ; $7d08: $5a
    jp nc, $091c                                  ; $7d09: $d2 $1c $09

    db $fc                                        ; $7d0c: $fc
    push af                                       ; $7d0d: $f5
    ld a, l                                       ; $7d0e: $7d
    sub $45                                       ; $7d0f: $d6 $45
    cp $ae                                        ; $7d11: $fe $ae
    db $ed                                        ; $7d13: $ed
    ld h, b                                       ; $7d14: $60
    sbc b                                         ; $7d15: $98
    sub [hl]                                      ; $7d16: $96
    call nz, $3a5a                                ; $7d17: $c4 $5a $3a
    ld a, [c]                                     ; $7d1a: $f2
    ld h, a                                       ; $7d1b: $67
    pop hl                                        ; $7d1c: $e1
    ld h, [hl]                                    ; $7d1d: $66
    and [hl]                                      ; $7d1e: $a6
    ld b, [hl]                                    ; $7d1f: $46
    rst $28                                       ; $7d20: $ef
    cp c                                          ; $7d21: $b9
    ld a, [$011f]                                 ; $7d22: $fa $1f $01
    dec c                                         ; $7d25: $0d
    cp $fa                                        ; $7d26: $fe $fa
    add hl, hl                                    ; $7d28: $29
    push af                                       ; $7d29: $f5
    or $af                                        ; $7d2a: $f6 $af
    or [hl]                                       ; $7d2c: $b6
    ld a, b                                       ; $7d2d: $78
    dec sp                                        ; $7d2e: $3b
    ld a, b                                       ; $7d2f: $78
    ret                                           ; $7d30: $c9


    ld d, a                                       ; $7d31: $57
    ld e, b                                       ; $7d32: $58
    ld [hl], $f6                                  ; $7d33: $36 $f6
    call c, Call_033_77bb                         ; $7d35: $dc $bb $77
    xor e                                         ; $7d38: $ab
    dec l                                         ; $7d39: $2d
    sbc l                                         ; $7d3a: $9d
    ld h, a                                       ; $7d3b: $67
    pop bc                                        ; $7d3c: $c1
    ld [hl+], a                                   ; $7d3d: $22
    pop bc                                        ; $7d3e: $c1
    rra                                           ; $7d3f: $1f
    sub h                                         ; $7d40: $94
    ld [hl], l                                    ; $7d41: $75
    ld d, $bb                                     ; $7d42: $16 $bb
    sub b                                         ; $7d44: $90
    and $49                                       ; $7d45: $e6 $49
    ld h, c                                       ; $7d47: $61
    ld [hl], h                                    ; $7d48: $74
    sbc c                                         ; $7d49: $99
    ld bc, $1764                                  ; $7d4a: $01 $64 $17
    ld h, e                                       ; $7d4d: $63
    ld [hl], l                                    ; $7d4e: $75
    pop de                                        ; $7d4f: $d1
    ld c, a                                       ; $7d50: $4f
    jp z, Jump_000_34fa                           ; $7d51: $ca $fa $34

    push hl                                       ; $7d54: $e5
    ld h, e                                       ; $7d55: $63
    ld c, b                                       ; $7d56: $48
    ld c, $c9                                     ; $7d57: $0e $c9
    ld e, $73                                     ; $7d59: $1e $73
    ld l, $f2                                     ; $7d5b: $2e $f2
    rst $30                                       ; $7d5d: $f7
    ld d, l                                       ; $7d5e: $55
    adc a                                         ; $7d5f: $8f
    sub b                                         ; $7d60: $90
    ld l, [hl]                                    ; $7d61: $6e
    ldh a, [rTAC]                                 ; $7d62: $f0 $07
    dec h                                         ; $7d64: $25
    or c                                          ; $7d65: $b1
    sub [hl]                                      ; $7d66: $96
    ld [$9970], a                                 ; $7d67: $ea $70 $99
    db $fc                                        ; $7d6a: $fc
    add hl, hl                                    ; $7d6b: $29
    ld a, [bc]                                    ; $7d6c: $0a
    sub [hl]                                      ; $7d6d: $96
    ld hl, $4c39                                  ; $7d6e: $21 $39 $4c
    cp $be                                        ; $7d71: $fe $be
    xor d                                         ; $7d73: $aa
    ld c, $a9                                     ; $7d74: $0e $a9
    cp [hl]                                       ; $7d76: $be
    ld hl, sp-$15                                 ; $7d77: $f8 $eb
    pop af                                        ; $7d79: $f1
    ld l, c                                       ; $7d7a: $69
    or l                                          ; $7d7b: $b5
    or a                                          ; $7d7c: $b7
    ld c, h                                       ; $7d7d: $4c
    jp nc, $9138                                  ; $7d7e: $d2 $38 $91

    db $dd                                        ; $7d81: $dd
    inc e                                         ; $7d82: $1c
    ldh [$9d], a                                  ; $7d83: $e0 $9d
    ld a, b                                       ; $7d85: $78
    db $f4                                        ; $7d86: $f4
    rst $08                                       ; $7d87: $cf
    cp h                                          ; $7d88: $bc
    db $fd                                        ; $7d89: $fd
    ld a, e                                       ; $7d8a: $7b
    xor $dd                                       ; $7d8b: $ee $dd
    cp e                                          ; $7d8d: $bb
    or l                                          ; $7d8e: $b5
    ld [hl], h                                    ; $7d8f: $74
    ldh a, [rNR12]                                ; $7d90: $f0 $12
    sub $71                                       ; $7d92: $d6 $71
    cp e                                          ; $7d94: $bb
    adc [hl]                                      ; $7d95: $8e
    inc bc                                        ; $7d96: $03
    jp nc, Jump_000_1676                          ; $7d97: $d2 $76 $16

    or c                                          ; $7d9a: $b1
    xor [hl]                                      ; $7d9b: $ae
    ld e, d                                       ; $7d9c: $5a
    db $dd                                        ; $7d9d: $dd
    ldh [$af], a                                  ; $7d9e: $e0 $af
    add e                                         ; $7da0: $83
    sub [hl]                                      ; $7da1: $96
    db $db                                        ; $7da2: $db
    ld d, a                                       ; $7da3: $57
    add h                                         ; $7da4: $84
    or a                                          ; $7da5: $b7
    inc h                                         ; $7da6: $24
    ld d, [hl]                                    ; $7da7: $56
    ld [hl+], a                                   ; $7da8: $22
    di                                            ; $7da9: $f3
    ld h, d                                       ; $7daa: $62
    sbc c                                         ; $7dab: $99
    and h                                         ; $7dac: $a4
    ld [hl], c                                    ; $7dad: $71
    ld [hl+], a                                   ; $7dae: $22
    cp e                                          ; $7daf: $bb
    add hl, sp                                    ; $7db0: $39
    ret nz                                        ; $7db1: $c0

    db $db                                        ; $7db2: $db
    cp a                                          ; $7db3: $bf
    push de                                       ; $7db4: $d5
    sub [hl]                                      ; $7db5: $96
    ld [hl-], a                                   ; $7db6: $32
    ld sp, hl                                     ; $7db7: $f9
    ld d, e                                       ; $7db8: $53
    call nc, Call_000_0e69                        ; $7db9: $d4 $69 $0e
    jp $81b1                                      ; $7dbc: $c3 $b1 $81


    ld d, b                                       ; $7dbf: $50
    rst $18                                       ; $7dc0: $df
    ld c, h                                       ; $7dc1: $4c
    rst $18                                       ; $7dc2: $df
    daa                                           ; $7dc3: $27
    and b                                         ; $7dc4: $a0
    ld [$6fc1], sp                                ; $7dc5: $08 $c1 $6f
    sub c                                         ; $7dc8: $91
    push af                                       ; $7dc9: $f5
    add l                                         ; $7dca: $85
    and l                                         ; $7dcb: $a5
    ld e, d                                       ; $7dcc: $5a
    ld h, d                                       ; $7dcd: $62
    db $d3                                        ; $7dce: $d3
    inc e                                         ; $7dcf: $1c
    inc hl                                        ; $7dd0: $23
    inc bc                                        ; $7dd1: $03
    sbc d                                         ; $7dd2: $9a
    inc e                                         ; $7dd3: $1c
    sub h                                         ; $7dd4: $94
    ld [hl], b                                    ; $7dd5: $70
    rlca                                          ; $7dd6: $07
    xor a                                         ; $7dd7: $af
    db $ed                                        ; $7dd8: $ed
    ret z                                         ; $7dd9: $c8

    sbc a                                         ; $7dda: $9f
    add l                                         ; $7ddb: $85
    ld a, e                                       ; $7ddc: $7b
    ld c, a                                       ; $7ddd: $4f
    inc d                                         ; $7dde: $14
    ld l, a                                       ; $7ddf: $6f
    rst $28                                       ; $7de0: $ef
    ld hl, $fe45                                  ; $7de1: $21 $45 $fe
    sub $94                                       ; $7de4: $d6 $94
    ld e, d                                       ; $7de6: $5a
    xor d                                         ; $7de7: $aa
    rst $38                                       ; $7de8: $ff
    cp c                                          ; $7de9: $b9
    dec de                                        ; $7dea: $1b
    db $fc                                        ; $7deb: $fc
    ld b, c                                       ; $7dec: $41
    rst $28                                       ; $7ded: $ef
    rst $38                                       ; $7dee: $ff
    ret                                           ; $7def: $c9


    adc h                                         ; $7df0: $8c
    add hl, sp                                    ; $7df1: $39
    ret                                           ; $7df2: $c9


    rra                                           ; $7df3: $1f
    and c                                         ; $7df4: $a1
    ld e, d                                       ; $7df5: $5a
    push af                                       ; $7df6: $f5
    ld [hl], b                                    ; $7df7: $70
    xor h                                         ; $7df8: $ac
    dec sp                                        ; $7df9: $3b
    ld b, d                                       ; $7dfa: $42
    add $06                                       ; $7dfb: $c6 $06
    scf                                           ; $7dfd: $37
    inc sp                                        ; $7dfe: $33
    ld a, [$6779]                                 ; $7dff: $fa $79 $67
    call z, $b301                                 ; $7e02: $cc $01 $b3
    dec sp                                        ; $7e05: $3b
    or $5c                                        ; $7e06: $f6 $5c
    ld [$96d0], a                                 ; $7e08: $ea $d0 $96
    ld l, [hl]                                    ; $7e0b: $6e
    ldh a, [rTAC]                                 ; $7e0c: $f0 $07
    ld l, c                                       ; $7e0e: $69
    ld c, $b3                                     ; $7e0f: $0e $b3
    rst $38                                       ; $7e11: $ff
    ld h, [hl]                                    ; $7e12: $66
    ld a, [bc]                                    ; $7e13: $0a
    adc $d5                                       ; $7e14: $ce $d5
    ld a, a                                       ; $7e16: $7f
    ld l, a                                       ; $7e17: $6f
    ld c, [hl]                                    ; $7e18: $4e
    db $db                                        ; $7e19: $db
    inc b                                         ; $7e1a: $04
    cp $7a                                        ; $7e1b: $fe $7a
    daa                                           ; $7e1d: $27
    dec l                                         ; $7e1e: $2d
    ld a, [c]                                     ; $7e1f: $f2
    rlca                                          ; $7e20: $07
    ld a, $17                                     ; $7e21: $3e $17
    jp $93bd                                      ; $7e23: $c3 $bd $93


    ld b, h                                       ; $7e26: $44
    cp e                                          ; $7e27: $bb
    dec de                                        ; $7e28: $1b
    db $fc                                        ; $7e29: $fc
    ld b, c                                       ; $7e2a: $41
    db $e3                                        ; $7e2b: $e3
    jr c, jr_033_7e5a                             ; $7e2c: $38 $2c

    db $fd                                        ; $7e2e: $fd
    db $ec                                        ; $7e2f: $ec
    ei                                            ; $7e30: $fb
    jp z, $e69b                                   ; $7e31: $ca $9b $e6

    and e                                         ; $7e34: $a3
    dec e                                         ; $7e35: $1d
    db $e3                                        ; $7e36: $e3
    ld b, b                                       ; $7e37: $40
    or l                                          ; $7e38: $b5
    ld a, [hl+]                                   ; $7e39: $2a
    ld a, [c]                                     ; $7e3a: $f2
    ld [hl], a                                    ; $7e3b: $77
    ld l, l                                       ; $7e3c: $6d
    push af                                       ; $7e3d: $f5
    rst $00                                       ; $7e3e: $c7
    adc $6e                                       ; $7e3f: $ce $6e
    ld h, l                                       ; $7e41: $65
    inc b                                         ; $7e42: $04
    rst $08                                       ; $7e43: $cf
    ret c                                         ; $7e44: $d8

    ld c, $73                                     ; $7e45: $0e $73
    sub h                                         ; $7e47: $94
    ld d, c                                       ; $7e48: $51
    ld h, d                                       ; $7e49: $62
    or e                                          ; $7e4a: $b3
    dec bc                                        ; $7e4b: $0b
    nop                                           ; $7e4c: $00
    ld a, e                                       ; $7e4d: $7b
    ld d, a                                       ; $7e4e: $57
    and d                                         ; $7e4f: $a2
    ld e, l                                       ; $7e50: $5d
    rst $00                                       ; $7e51: $c7
    ld h, [hl]                                    ; $7e52: $66
    ld h, [hl]                                    ; $7e53: $66
    push hl                                       ; $7e54: $e5
    ld [c], a                                     ; $7e55: $e2
    rst $08                                       ; $7e56: $cf
    dec sp                                        ; $7e57: $3b
    and h                                         ; $7e58: $a4
    ld c, l                                       ; $7e59: $4d

jr_033_7e5a:
    ldh [$af], a                                  ; $7e5a: $e0 $af
    rst $28                                       ; $7e5c: $ef
    or e                                          ; $7e5d: $b3
    xor [hl]                                      ; $7e5e: $ae
    or c                                          ; $7e5f: $b1
    ld [hl], c                                    ; $7e60: $71
    ld [hl], h                                    ; $7e61: $74
    xor $9f                                       ; $7e62: $ee $9f
    add hl, de                                    ; $7e64: $19
    rlca                                          ; $7e65: $07
    db $e4                                        ; $7e66: $e4
    ld a, [de]                                    ; $7e67: $1a
    ld a, b                                       ; $7e68: $78
    ld b, $6f                                     ; $7e69: $06 $6f
    inc sp                                        ; $7e6b: $33
    ld d, e                                       ; $7e6c: $53
    and e                                         ; $7e6d: $a3
    scf                                           ; $7e6e: $37
    call $a301                                    ; $7e6f: $cd $01 $a3
    dec l                                         ; $7e72: $2d
    cp l                                          ; $7e73: $bd
    ld a, a                                       ; $7e74: $7f
    xor c                                         ; $7e75: $a9
    ld [hl], c                                    ; $7e76: $71
    add $1c                                       ; $7e77: $c6 $1c
    or e                                          ; $7e79: $b3
    add a                                         ; $7e7a: $87
    adc a                                         ; $7e7b: $8f
    cp a                                          ; $7e7c: $bf
    cp d                                          ; $7e7d: $ba
    ld [hl], a                                    ; $7e7e: $77
    rst $00                                       ; $7e7f: $c7
    jr c, jr_033_7eb7                             ; $7e80: $38 $35

    and [hl]                                      ; $7e82: $a6
    ld l, l                                       ; $7e83: $6d
    sub d                                         ; $7e84: $92
    and l                                         ; $7e85: $a5
    di                                            ; $7e86: $f3
    inc l                                         ; $7e87: $2c
    db $eb                                        ; $7e88: $eb
    db $db                                        ; $7e89: $db
    rst $18                                       ; $7e8a: $df
    dec b                                         ; $7e8b: $05
    rst $30                                       ; $7e8c: $f7
    ld d, b                                       ; $7e8d: $50
    adc b                                         ; $7e8e: $88
    ld b, l                                       ; $7e8f: $45
    cp $ee                                        ; $7e90: $fe $ee
    ld e, a                                       ; $7e92: $5f
    ret z                                         ; $7e93: $c8

    xor $c8                                       ; $7e94: $ee $c8
    sbc a                                         ; $7e96: $9f
    add l                                         ; $7e97: $85
    dec sp                                        ; $7e98: $3b
    ld l, b                                       ; $7e99: $68
    cp c                                          ; $7e9a: $b9
    ld a, e                                       ; $7e9b: $7b
    or l                                          ; $7e9c: $b5
    and c                                         ; $7e9d: $a1
    rst $28                                       ; $7e9e: $ef
    or e                                          ; $7e9f: $b3
    sbc $73                                       ; $7ea0: $de $73
    push de                                       ; $7ea2: $d5
    ld d, c                                       ; $7ea3: $51
    or l                                          ; $7ea4: $b5
    sbc c                                         ; $7ea5: $99
    pop de                                        ; $7ea6: $d1
    rst $08                                       ; $7ea7: $cf
    db $db                                        ; $7ea8: $db
    ld h, a                                       ; $7ea9: $67
    ld [hl], c                                    ; $7eaa: $71
    db $ec                                        ; $7eab: $ec
    call nz, $ab55                                ; $7eac: $c4 $55 $ab
    ei                                            ; $7eaf: $fb
    inc l                                         ; $7eb0: $2c
    ld e, a                                       ; $7eb1: $5f
    ld hl, $dd59                                  ; $7eb2: $21 $59 $dd
    xor [hl]                                      ; $7eb5: $ae
    db $e3                                        ; $7eb6: $e3

jr_033_7eb7:
    ldh a, [$a6]                                  ; $7eb7: $f0 $a6
    add hl, sp                                    ; $7eb9: $39
    ld [hl], e                                    ; $7eba: $73
    rst $38                                       ; $7ebb: $ff
    call z, $2038                                 ; $7ebc: $cc $38 $20
    rst $10                                       ; $7ebf: $d7
    ret nz                                        ; $7ec0: $c0

    inc sp                                        ; $7ec1: $33
    call z, $d1d8                                 ; $7ec2: $cc $d8 $d1
    rra                                           ; $7ec5: $1f
    dec de                                        ; $7ec6: $1b
    ld [$1fd5], sp                                ; $7ec7: $08 $d5 $1f
    xor e                                         ; $7eca: $ab
    cp l                                          ; $7ecb: $bd
    dec sp                                        ; $7ecc: $3b
    ld h, e                                       ; $7ecd: $63
    ld c, $49                                     ; $7ece: $0e $49
    pop hl                                        ; $7ed0: $e1
    sbc [hl]                                      ; $7ed1: $9e
    ldh [rP1], a                                  ; $7ed2: $e0 $00
    or l                                          ; $7ed4: $b5
    ld e, c                                       ; $7ed5: $59
    add hl, bc                                    ; $7ed6: $09
    sub d                                         ; $7ed7: $92
    db $f4                                        ; $7ed8: $f4
    add h                                         ; $7ed9: $84
    xor a                                         ; $7eda: $af
    ld e, b                                       ; $7edb: $58
    adc e                                         ; $7edc: $8b
    and l                                         ; $7edd: $a5
    ld l, d                                       ; $7ede: $6a
    ld [hl], l                                    ; $7edf: $75
    sub e                                         ; $7ee0: $93
    ld a, l                                       ; $7ee1: $7d
    cp d                                          ; $7ee2: $ba
    scf                                           ; $7ee3: $37
    ld l, l                                       ; $7ee4: $6d
    sub e                                         ; $7ee5: $93
    ld l, $81                                     ; $7ee6: $2e $81
    ld [de], a                                    ; $7ee8: $12
    or c                                          ; $7ee9: $b1
    jp c, $d508                                   ; $7eea: $da $08 $d5

    xor d                                         ; $7eed: $aa
    rst $00                                       ; $7eee: $c7
    rst $08                                       ; $7eef: $cf
    ld [bc], a                                    ; $7ef0: $02
    ld sp, hl                                     ; $7ef1: $f9
    ld [hl], e                                    ; $7ef2: $73
    ld h, a                                       ; $7ef3: $67
    or a                                          ; $7ef4: $b7
    adc d                                         ; $7ef5: $8a
    db $ec                                        ; $7ef6: $ec
    and $00                                       ; $7ef7: $e6 $00
    ld l, a                                       ; $7ef9: $6f
    cp a                                          ; $7efa: $bf
    jp nz, Jump_033_4b6a                          ; $7efb: $c2 $6a $4b

    or e                                          ; $7efe: $b3
    cp a                                          ; $7eff: $bf
    ld h, h                                       ; $7f00: $64
    ld l, a                                       ; $7f01: $6f
    ld b, a                                       ; $7f02: $47
    sbc e                                         ; $7f03: $9b
    ld b, d                                       ; $7f04: $42
    push de                                       ; $7f05: $d5

Jump_033_7f06:
    ld [$357e], a                                 ; $7f06: $ea $7e $35
    adc [hl]                                      ; $7f09: $8e
    ld b, l                                       ; $7f0a: $45
    ei                                            ; $7f0b: $fb
    xor b                                         ; $7f0c: $a8
    ld h, e                                       ; $7f0d: $63
    db $dd                                        ; $7f0e: $dd
    db $ec                                        ; $7f0f: $ec
    cpl                                           ; $7f10: $2f
    reti                                          ; $7f11: $d9


    dec e                                         ; $7f12: $1d
    jp hl                                         ; $7f13: $e9


    call Call_000_125c                            ; $7f14: $cd $5c $12
    ld l, e                                       ; $7f17: $6b
    ld l, c                                       ; $7f18: $69
    ld a, [c]                                     ; $7f19: $f2
    sub l                                         ; $7f1a: $95
    db $dd                                        ; $7f1b: $dd
    cp a                                          ; $7f1c: $bf
    nop                                           ; $7f1d: $00
    and [hl]                                      ; $7f1e: $a6
    add hl, sp                                    ; $7f1f: $39
    ret                                           ; $7f20: $c9


    sbc a                                         ; $7f21: $9f
    jp nc, $dceb                                  ; $7f22: $d2 $eb $dc

    ldh [$af], a                                  ; $7f25: $e0 $af
    ld l, h                                       ; $7f27: $6c
    ld l, h                                       ; $7f28: $6c
    rst $20                                       ; $7f29: $e7
    cp d                                          ; $7f2a: $ba
    or [hl]                                       ; $7f2b: $b6
    and e                                         ; $7f2c: $a3
    db $fd                                        ; $7f2d: $fd
    sub c                                         ; $7f2e: $91
    ld a, d                                       ; $7f2f: $7a
    ld c, h                                       ; $7f30: $4c
    jp c, $0b0e                                   ; $7f31: $da $0e $0b

    add h                                         ; $7f34: $84
    ld l, d                                       ; $7f35: $6a
    push de                                       ; $7f36: $d5
    ld a, e                                       ; $7f37: $7b
    ret z                                         ; $7f38: $c8

    adc l                                         ; $7f39: $8d
    ld b, $7f                                     ; $7f3a: $06 $7f
    ld c, l                                       ; $7f3c: $4d
    cp $22                                        ; $7f3d: $fe $22
    ld h, e                                       ; $7f3f: $63
    ld a, [hl-]                                   ; $7f40: $3a
    ld [$b002], a                                 ; $7f41: $ea $02 $b0
    call z, $0398                                 ; $7f44: $cc $98 $03
    or e                                          ; $7f47: $b3
    cp $73                                        ; $7f48: $fe $73
    or l                                          ; $7f4a: $b5
    and l                                         ; $7f4b: $a5
    ld l, h                                       ; $7f4c: $6c
    ld l, h                                       ; $7f4d: $6c
    add e                                         ; $7f4e: $83
    cp a                                          ; $7f4f: $bf
    inc [hl]                                      ; $7f50: $34
    rlca                                          ; $7f51: $07
    ld [hl], e                                    ; $7f52: $73
    cp h                                          ; $7f53: $bc
    ld [hl], e                                    ; $7f54: $73
    add e                                         ; $7f55: $83
    cp a                                          ; $7f56: $bf
    ld [$1fcf], a                                 ; $7f57: $ea $cf $1f
    ld hl, sp-$24                                 ; $7f5a: $f8 $dc
    jp $eeb1                                      ; $7f5c: $c3 $b1 $ee


    jr nc, jr_033_7f82                            ; $7f5f: $30 $21

    ld l, c                                       ; $7f61: $69
    ld c, e                                       ; $7f62: $4b
    ld e, a                                       ; $7f63: $5f
    ld [hl+], a                                   ; $7f64: $22

jr_033_7f65:
    add b                                         ; $7f65: $80
    or a                                          ; $7f66: $b7
    jr jr_033_7f65                                ; $7f67: $18 $fc

    dec d                                         ; $7f69: $15
    ld sp, hl                                     ; $7f6a: $f9
    cp e                                          ; $7f6b: $bb
    or [hl]                                       ; $7f6c: $b6
    rst $30                                       ; $7f6d: $f7
    or b                                          ; $7f6e: $b0
    or [hl]                                       ; $7f6f: $b6
    call nc, $deb1                                ; $7f70: $d4 $b1 $de
    ld [hl+], a                                   ; $7f73: $22
    ld a, a                                       ; $7f74: $7f
    call nc, $81fc                                ; $7f75: $d4 $fc $81
    or a                                          ; $7f78: $b7
    ld c, h                                       ; $7f79: $4c
    cp $2c                                        ; $7f7a: $fe $2c
    db $e4                                        ; $7f7c: $e4
    ld e, d                                       ; $7f7d: $5a
    add sp, $57                                   ; $7f7e: $e8 $57
    inc l                                         ; $7f80: $2c
    and h                                         ; $7f81: $a4

jr_033_7f82:
    add hl, sp                                    ; $7f82: $39
    ret                                           ; $7f83: $c9


    rra                                           ; $7f84: $1f
    and c                                         ; $7f85: $a1
    ld e, d                                       ; $7f86: $5a
    push de                                       ; $7f87: $d5
    or c                                          ; $7f88: $b1
    xor $08                                       ; $7f89: $ee $08
    add hl, de                                    ; $7f8b: $19
    dec de                                        ; $7f8c: $1b
    call c, $e8cc                                 ; $7f8d: $dc $cc $e8
    rst $20                                       ; $7f90: $e7
    sbc l                                         ; $7f91: $9d
    or c                                          ; $7f92: $b1
    ld h, l                                       ; $7f93: $65
    add [hl]                                      ; $7f94: $86
    dec de                                        ; $7f95: $1b
    ld [$ac75], sp                                ; $7f96: $08 $75 $ac
    adc a                                         ; $7f99: $8f
    adc $aa                                       ; $7f9a: $ce $aa
    ld [hl], $f3                                  ; $7f9c: $36 $f3
    halt                                          ; $7f9e: $76
    rst $38                                       ; $7f9f: $ff
    pop hl                                        ; $7fa0: $e1
    push bc                                       ; $7fa1: $c5
    adc $ee                                       ; $7fa2: $ce $ee
    pop bc                                        ; $7fa4: $c1
    and b                                         ; $7fa5: $a0
    call nc, $ecfd                                ; $7fa6: $d4 $fd $ec
    ei                                            ; $7fa9: $fb
    xor e                                         ; $7faa: $ab
    cp l                                          ; $7fab: $bd
    call $bb7c                                    ; $7fac: $cd $7c $bb
    adc [hl]                                      ; $7faf: $8e
    jp $e69b                                      ; $7fb0: $c3 $9b $e6


    or e                                          ; $7fb3: $b3
    dec sp                                        ; $7fb4: $3b
    ld [hl], $cd                                  ; $7fb5: $36 $cd
    ld bc, $61c9                                  ; $7fb7: $01 $c9 $61
    add hl, hl                                    ; $7fba: $29
    add $ea                                       ; $7fbb: $c6 $ea
    xor [hl]                                      ; $7fbd: $ae
    sub d                                         ; $7fbe: $92
    sbc $43                                       ; $7fbf: $de $43
    xor d                                         ; $7fc1: $aa
    ld d, [hl]                                    ; $7fc2: $56
    rst $30                                       ; $7fc3: $f7
    ld [hl], b                                    ; $7fc4: $70
    xor h                                         ; $7fc5: $ac
    dec sp                                        ; $7fc6: $3b
    rst $10                                       ; $7fc7: $d7
    rlca                                          ; $7fc8: $07
    ld [hl], b                                    ; $7fc9: $70
    ld b, a                                       ; $7fca: $47
    ld c, b                                       ; $7fcb: $48
    ld [hl+], a                                   ; $7fcc: $22
    sub b                                         ; $7fcd: $90
    sbc l                                         ; $7fce: $9d
    and $4c                                       ; $7fcf: $e6 $4c
    cp $f6                                        ; $7fd1: $fe $f6
    dec bc                                        ; $7fd3: $0b
    ld a, a                                       ; $7fd4: $7f
    ld c, l                                       ; $7fd5: $4d
    db $d3                                        ; $7fd6: $d3
    inc [hl]                                      ; $7fd7: $34
    rlca                                          ; $7fd8: $07
    add hl, bc                                    ; $7fd9: $09
    db $fc                                        ; $7fda: $fc
    push af                                       ; $7fdb: $f5
    add hl, sp                                    ; $7fdc: $39
    add $71                                       ; $7fdd: $c6 $71
    sub e                                         ; $7fdf: $93
    dec l                                         ; $7fe0: $2d
    ld b, a                                       ; $7fe1: $47
    xor h                                         ; $7fe2: $ac
    sra b                                         ; $7fe3: $cb $28
    ld a, a                                       ; $7fe5: $7f
    inc sp                                        ; $7fe6: $33
    ld c, e                                       ; $7fe7: $4b
    push de                                       ; $7fe8: $d5
    ld [$356a], a                                 ; $7fe9: $ea $6a $35
    ld h, e                                       ; $7fec: $63
    ld c, $73                                     ; $7fed: $0e $73
    ld e, l                                       ; $7fef: $5d
    db $db                                        ; $7ff0: $db
    pop de                                        ; $7ff1: $d1
    cp $48                                        ; $7ff2: $fe $48
    dec a                                         ; $7ff4: $3d
    ld h, $cd                                     ; $7ff5: $26 $cd
    ld bc, $ffff                                  ; $7ff7: $01 $ff $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
